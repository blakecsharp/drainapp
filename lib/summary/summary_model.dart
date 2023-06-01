import '/auth/firebase_auth/auth_util.dart';
import '/components/drain_chart_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SummaryModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Models for DrainChart dynamic component.
  late FlutterFlowDynamicModels<DrainChartModel> drainChartModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    drainChartModels = FlutterFlowDynamicModels(() => DrainChartModel());
  }

  void dispose() {
    drainChartModels.dispose();
  }

  /// Additional helper methods are added here.

}
