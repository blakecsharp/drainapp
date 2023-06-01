import '/auth/firebase_auth/auth_util.dart';
import '/components/drain_name_entry_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/terms/terms_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NameDrainsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Models for drainNameEntry dynamic component.
  late FlutterFlowDynamicModels<DrainNameEntryModel> drainNameEntryModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    drainNameEntryModels =
        FlutterFlowDynamicModels(() => DrainNameEntryModel());
  }

  void dispose() {
    drainNameEntryModels.dispose();
  }

  /// Additional helper methods are added here.

}
