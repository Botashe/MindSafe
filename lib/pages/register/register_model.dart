import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for UserField widget.
  FocusNode? userFieldFocusNode;
  TextEditingController? userFieldTextController;
  String? Function(BuildContext, String?)? userFieldTextControllerValidator;
  // State field(s) for EmailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  // State field(s) for passwordFieldtext widget.
  FocusNode? passwordFieldtextFocusNode;
  TextEditingController? passwordFieldtextTextController;
  late bool passwordFieldtextVisibility;
  String? Function(BuildContext, String?)?
      passwordFieldtextTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? confirmPasswordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordFieldtextVisibility = false;
    passwordVisibility = false;
  }

  @override
  void dispose() {
    userFieldFocusNode?.dispose();
    userFieldTextController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    passwordFieldtextFocusNode?.dispose();
    passwordFieldtextTextController?.dispose();

    textFieldFocusNode?.dispose();
    confirmPasswordTextController?.dispose();
  }
}
