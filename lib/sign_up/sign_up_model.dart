import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../terms_and_conditions/terms_and_conditions_widget.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for passwordLogin widget.
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;
  // State field(s) for confirmPasswordLogin widget.
  TextEditingController? confirmPasswordLoginController;
  late bool confirmPasswordLoginVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordLoginControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLoginVisibility = false;
    confirmPasswordLoginVisibility = false;
  }

  void dispose() {
    emailAddressController?.dispose();
    passwordLoginController?.dispose();
    confirmPasswordLoginController?.dispose();
  }

  /// Additional helper methods are added here.

}
