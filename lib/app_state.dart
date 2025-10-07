import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _quote = prefs.getString('ff_quote') ?? _quote;
    });
    _safeInit(() {
      _auth = prefs.getString('ff_auth') ?? _auth;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _quote = '';
  String get quote => _quote;
  set quote(String value) {
    _quote = value;
    prefs.setString('ff_quote', value);
  }

  String _auth = '';
  String get auth => _auth;
  set auth(String value) {
    _auth = value;
    prefs.setString('ff_auth', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
