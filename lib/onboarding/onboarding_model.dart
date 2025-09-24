import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'onboarding_widget.dart' show OnboardingWidget;
import 'package:flutter/material.dart';

class OnboardingModel extends FlutterFlowModel<OnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_profilePhoto = false;
  FFUploadedFile uploadedLocalFile_profilePhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_profilePhoto = '';

  // State field(s) for u_name widget.
  FocusNode? uNameFocusNode;
  TextEditingController? uNameTextController;
  String? Function(BuildContext, String?)? uNameTextControllerValidator;
  // State field(s) for s_id widget.
  FocusNode? sIdFocusNode;
  TextEditingController? sIdTextController;
  String? Function(BuildContext, String?)? sIdTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    uNameFocusNode?.dispose();
    uNameTextController?.dispose();

    sIdFocusNode?.dispose();
    sIdTextController?.dispose();
  }
}
