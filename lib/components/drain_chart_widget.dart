import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drain_chart_model.dart';
export 'drain_chart_model.dart';

class DrainChartWidget extends StatefulWidget {
  const DrainChartWidget({
    Key? key,
    this.drainIndex,
    this.drainId,
  }) : super(key: key);

  final int? drainIndex;
  final int? drainId;

  @override
  _DrainChartWidgetState createState() => _DrainChartWidgetState();
}

class _DrainChartWidgetState extends State<DrainChartWidget> {
  late DrainChartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrainChartModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Drain  ',
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
            Text(
              valueOrDefault<String>(
                widget.drainId?.toString(),
                '0',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
            Text(
              ' - ',
              style: FlutterFlowTheme.of(context).bodyMedium,
            ),
            AuthUserStreamWidget(
              builder: (context) => Text(
                (currentUserDocument?.drains?.toList() ??
                        [])[widget.drainIndex!]
                    .name!,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
          child: AuthUserStreamWidget(
            builder: (context) => Container(
              width: 300.0,
              height: 300.0,
              child: FlutterFlowBarChart(
                barData: [
                  FFBarChartData(
                    yData: functions.getOutputsForDrain(
                        widget.drainId!,
                        (currentUserDocument?.entries?.toList() ?? []).toList(),
                        currentUserDocument!.surgeryDate!)!,
                    color: Color(0xFF8C1515),
                  )
                ],
                xLabels: functions.getDaysForDrain(
                    widget.drainId!,
                    (currentUserDocument?.entries?.toList() ?? []).toList(),
                    currentUserDocument!.surgeryDate!)!,
                barWidth: 25.0,
                barBorderRadius: BorderRadius.circular(0.0),
                groupSpace: 30.0,
                chartStylingInfo: ChartStylingInfo(
                  backgroundColor: Colors.white,
                  showGrid: true,
                  showBorder: false,
                ),
                axisBounds: AxisBounds(),
                xAxisLabelInfo: AxisLabelInfo(
                  title: 'Day Post Operation',
                  titleTextStyle: TextStyle(
                    fontSize: 14.0,
                  ),
                  showLabels: true,
                  labelInterval: 10.0,
                ),
                yAxisLabelInfo: AxisLabelInfo(
                  title: 'Output (mL)',
                  titleTextStyle: TextStyle(
                    fontSize: 14.0,
                  ),
                  showLabels: true,
                  labelTextStyle: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
