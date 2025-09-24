import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for SignEmail widget.
  FocusNode? signEmailFocusNode;
  TextEditingController? signEmailTextController;
  String? Function(BuildContext, String?)? signEmailTextControllerValidator;
  String? _signEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SignPassword widget.
  FocusNode? signPasswordFocusNode;
  TextEditingController? signPasswordTextController;
  late bool signPasswordVisibility;
  String? Function(BuildContext, String?)? signPasswordTextControllerValidator;
  String? _signPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for SignConfirmPassword widget.
  FocusNode? signConfirmPasswordFocusNode;
  TextEditingController? signConfirmPasswordTextController;
  late bool signConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      signConfirmPasswordTextControllerValidator;
  String? _signConfirmPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm Password is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for LogEmail widget.
  FocusNode? logEmailFocusNode;
  TextEditingController? logEmailTextController;
  String? Function(BuildContext, String?)? logEmailTextControllerValidator;
  String? _logEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for LogPassword widget.
  FocusNode? logPasswordFocusNode;
  TextEditingController? logPasswordTextController;
  late bool logPasswordVisibility;
  String? Function(BuildContext, String?)? logPasswordTextControllerValidator;
  String? _logPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password... is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    signEmailTextControllerValidator = _signEmailTextControllerValidator;
    signPasswordVisibility = false;
    signPasswordTextControllerValidator = _signPasswordTextControllerValidator;
    signConfirmPasswordVisibility = false;
    signConfirmPasswordTextControllerValidator =
        _signConfirmPasswordTextControllerValidator;
    logEmailTextControllerValidator = _logEmailTextControllerValidator;
    logPasswordVisibility = false;
    logPasswordTextControllerValidator = _logPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signEmailFocusNode?.dispose();
    signEmailTextController?.dispose();

    signPasswordFocusNode?.dispose();
    signPasswordTextController?.dispose();

    signConfirmPasswordFocusNode?.dispose();
    signConfirmPasswordTextController?.dispose();

    logEmailFocusNode?.dispose();
    logEmailTextController?.dispose();

    logPasswordFocusNode?.dispose();
    logPasswordTextController?.dispose();
  }
}
