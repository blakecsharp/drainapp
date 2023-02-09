import '../flutter_flow/flutter_flow_charts.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'summary_model.dart';
export 'summary_model.dart';

class SummaryWidget extends StatefulWidget {
  const SummaryWidget({Key? key}) : super(key: key);

  @override
  _SummaryWidgetState createState() => _SummaryWidgetState();
}

class _SummaryWidgetState extends State<SummaryWidget> {
  late SummaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SummaryModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: Color(0xFF8C1515),
          automaticallyImplyLeading: false,
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 14),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                    child: InkWell(
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 50,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                            child: Text(
                              'Back',
                              style:
                                  FlutterFlowTheme.of(context).title2.override(
                                        fontFamily: 'Outfit',
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                    child: Text(
                      'Summary',
                      style: FlutterFlowTheme.of(context).title2.override(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                            fontSize: 30,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            expandedTitleScale: 1.0,
          ),
          elevation: 2,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.7,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Text(
                              'Drain 1: ',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                              child: Container(
                                width: 300,
                                height: 300,
                                child: FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drain1output,
                                      settings: LineChartBarData(
                                        color: Color(0xFF8C1515),
                                        barWidth: 1,
                                        isCurved: true,
                                        preventCurveOverShooting: true,
                                      ),
                                    ),
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drainouput,
                                      settings: LineChartBarData(
                                        color: Color(0xFF0A0000),
                                        barWidth: 1,
                                        isCurved: true,
                                        dotData: FlDotData(show: false),
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: ChartStylingInfo(
                                    enableTooltip: true,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderColor: Colors.black,
                                    borderWidth: 1,
                                  ),
                                  axisBounds: AxisBounds(
                                    minY: 0,
                                    maxX: 8,
                                    maxY: 50,
                                  ),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Post Op Day',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 1,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Output (mL) ',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 10,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Drain 2: ',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                              child: Container(
                                width: 300,
                                height: 300,
                                child: FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drain2output,
                                      settings: LineChartBarData(
                                        color: Color(0xFF8C1515),
                                        barWidth: 1,
                                        isCurved: true,
                                        preventCurveOverShooting: true,
                                      ),
                                    ),
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drainouput,
                                      settings: LineChartBarData(
                                        color: Color(0xFF0A0000),
                                        barWidth: 1,
                                        isCurved: true,
                                        dotData: FlDotData(show: false),
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderColor: Colors.black,
                                    borderWidth: 1,
                                  ),
                                  axisBounds: AxisBounds(
                                    minY: 0,
                                    maxX: 8,
                                    maxY: 50,
                                  ),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Post Op Day',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 1,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Output (mL) ',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 10,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Drain 3:',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                              child: Container(
                                width: 300,
                                height: 300,
                                child: FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drain1output,
                                      settings: LineChartBarData(
                                        color: Color(0xFF8C1515),
                                        barWidth: 1,
                                        isCurved: true,
                                        preventCurveOverShooting: true,
                                      ),
                                    ),
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drainouput,
                                      settings: LineChartBarData(
                                        color: Color(0xFF0A0000),
                                        barWidth: 1,
                                        isCurved: true,
                                        dotData: FlDotData(show: false),
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderColor: Colors.black,
                                    borderWidth: 1,
                                  ),
                                  axisBounds: AxisBounds(
                                    minY: 0,
                                    maxX: 8,
                                    maxY: 50,
                                  ),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Post Op Day',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 1,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Output (mL) ',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 10,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Drain 4: ',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                              child: Container(
                                width: 300,
                                height: 300,
                                child: FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drain1output,
                                      settings: LineChartBarData(
                                        color: Color(0xFF8C1515),
                                        barWidth: 1,
                                        isCurved: true,
                                        preventCurveOverShooting: true,
                                      ),
                                    ),
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drainouput,
                                      settings: LineChartBarData(
                                        color: Color(0xFF0A0000),
                                        barWidth: 1,
                                        isCurved: true,
                                        dotData: FlDotData(show: false),
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderColor: Colors.black,
                                    borderWidth: 1,
                                  ),
                                  axisBounds: AxisBounds(
                                    minY: 0,
                                    maxX: 8,
                                    maxY: 50,
                                  ),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Post Op Day',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 1,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Output (mL) ',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 10,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Drain 5:',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                              child: Container(
                                width: 300,
                                height: 300,
                                child: FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drain1output,
                                      settings: LineChartBarData(
                                        color: Color(0xFF8C1515),
                                        barWidth: 1,
                                        isCurved: true,
                                        preventCurveOverShooting: true,
                                      ),
                                    ),
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drainouput,
                                      settings: LineChartBarData(
                                        color: Color(0xFF0A0000),
                                        barWidth: 1,
                                        isCurved: true,
                                        dotData: FlDotData(show: false),
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderColor: Colors.black,
                                    borderWidth: 1,
                                  ),
                                  axisBounds: AxisBounds(
                                    minY: 0,
                                    maxX: 8,
                                    maxY: 50,
                                  ),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Post Op Day',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 1,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Output (mL) ',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 10,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Drain 6:',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 10),
                              child: Container(
                                width: 300,
                                height: 300,
                                child: FlutterFlowLineChart(
                                  data: [
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drain1output,
                                      settings: LineChartBarData(
                                        color: Color(0xFF8C1515),
                                        barWidth: 1,
                                        isCurved: true,
                                        preventCurveOverShooting: true,
                                      ),
                                    ),
                                    FFLineChartData(
                                      xData: FFAppState().draintimes,
                                      yData: FFAppState().drainouput,
                                      settings: LineChartBarData(
                                        color: Color(0xFF0A0000),
                                        barWidth: 1,
                                        isCurved: true,
                                        dotData: FlDotData(show: false),
                                      ),
                                    )
                                  ],
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderColor: Colors.black,
                                    borderWidth: 1,
                                  ),
                                  axisBounds: AxisBounds(
                                    minY: 0,
                                    maxX: 8,
                                    maxY: 50,
                                  ),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    title: 'Post Op Day',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 1,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    title: 'Output (mL) ',
                                    titleTextStyle: TextStyle(
                                      fontSize: 14,
                                    ),
                                    showLabels: true,
                                    labelInterval: 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
