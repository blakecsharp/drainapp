import '../add_drain_entry/add_drain_entry_widget.dart';
import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/drain_list_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../summary/summary_widget.dart';
import '../view_drain_entries/view_drain_entries_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DrainDiaryModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for DrainList component.
  late DrainListModel drainListModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    drainListModel = createModel(context, () => DrainListModel());
  }

  void dispose() {}

  /// Additional helper methods are added here.

}
