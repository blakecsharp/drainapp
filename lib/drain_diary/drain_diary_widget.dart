import '../add_drain_entry/add_drain_entry_widget.dart';
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
import 'drain_diary_model.dart';
export 'drain_diary_model.dart';

class DrainDiaryWidget extends StatefulWidget {
  const DrainDiaryWidget({Key? key}) : super(key: key);

  @override
  _DrainDiaryWidgetState createState() => _DrainDiaryWidgetState();
}

class _DrainDiaryWidgetState extends State<DrainDiaryWidget> {
  late DrainDiaryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrainDiaryModel());
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
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
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
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                    child: Text(
                      'My Drain Diary',
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'Active Drains:',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: InkWell(
                    onTap: () async {
                      FFAppState().update(() {
                        FFAppState().drain1 = _model.switchListTileValue1!;
                        FFAppState().drain2 = _model.switchListTileValue2!;
                      });
                      FFAppState().update(() {
                        FFAppState().drain3 = _model.switchListTileValue3!;
                        FFAppState().drain4 = _model.switchListTileValue4!;
                      });
                      FFAppState().update(() {
                        FFAppState().drain5 = _model.switchListTileValue5!;
                        FFAppState().drain6 = _model.switchListTileValue6!;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(100, 0, 100, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SwitchListTile(
                                value: _model.switchListTileValue1 ??=
                                    FFAppState().drain1,
                                onChanged: (newValue) async {
                                  setState(() =>
                                      _model.switchListTileValue1 = newValue!);
                                },
                                title: Text(
                                  'Drain 1',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                                activeColor: Color(0xFF8C1515),
                                dense: false,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                              ),
                              if (FFAppState().drainnumber >= 2)
                                SwitchListTile(
                                  value: _model.switchListTileValue2 ??=
                                      FFAppState().drain2,
                                  onChanged: (newValue) async {
                                    setState(() => _model.switchListTileValue2 =
                                        newValue!);
                                  },
                                  title: Text(
                                    'Drain 2',
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  activeColor: Color(0xFF8C1515),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              if (FFAppState().drainnumber >= 3)
                                SwitchListTile(
                                  value: _model.switchListTileValue3 ??=
                                      FFAppState().drain3,
                                  onChanged: (newValue) async {
                                    setState(() => _model.switchListTileValue3 =
                                        newValue!);
                                  },
                                  title: Text(
                                    'Drain 3',
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  activeColor: Color(0xFF8C1515),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              if (FFAppState().drainnumber >= 4)
                                SwitchListTile(
                                  value: _model.switchListTileValue4 ??=
                                      FFAppState().drain4,
                                  onChanged: (newValue) async {
                                    setState(() => _model.switchListTileValue4 =
                                        newValue!);
                                  },
                                  title: Text(
                                    'Drain 4',
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  activeColor: Color(0xFF8C1515),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              if (FFAppState().drainnumber >= 5)
                                SwitchListTile(
                                  value: _model.switchListTileValue5 ??=
                                      FFAppState().drain5,
                                  onChanged: (newValue) async {
                                    setState(() => _model.switchListTileValue5 =
                                        newValue!);
                                  },
                                  title: Text(
                                    'Drain 5',
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  activeColor: Color(0xFF8C1515),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                              if (FFAppState().drainnumber >= 6)
                                SwitchListTile(
                                  value: _model.switchListTileValue6 ??=
                                      FFAppState().drain6,
                                  onChanged: (newValue) async {
                                    setState(() => _model.switchListTileValue6 =
                                        newValue!);
                                  },
                                  title: Text(
                                    'Drain 6',
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Outfit',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                  activeColor: Color(0xFF8C1515),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                ),
                            ],
                          ),
                        ),
                        Text(
                          'Once a drain is removed, grey it out!',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            FFAppState().update(() {
                              FFAppState().drain1 =
                                  _model.switchListTileValue1!;
                              FFAppState().drain2 =
                                  _model.switchListTileValue2!;
                            });
                            FFAppState().update(() {
                              FFAppState().drain3 = FFAppState().drain3;
                              FFAppState().drain4 = FFAppState().drain4;
                            });
                            FFAppState().update(() {
                              FFAppState().drain5 = FFAppState().drain5;
                              FFAppState().drain6 =
                                  _model.switchListTileValue6!;
                            });
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddDrainEntryWidget(),
                              ),
                            );
                          },
                          text: 'Add New Entry',
                          icon: FaIcon(
                            FontAwesomeIcons.pencilAlt,
                          ),
                          options: FFButtonOptions(
                            width: 200,
                            height: 40,
                            color: Color(0xFF8C1515),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ViewDrainEntriesWidget(),
                              ),
                            );
                          },
                          text: 'View My Entries',
                          icon: FaIcon(
                            FontAwesomeIcons.eye,
                          ),
                          options: FFButtonOptions(
                            width: 200,
                            height: 40,
                            color: Color(0xFF8C1515),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SummaryWidget(),
                              ),
                            );
                          },
                          text: 'Generate Summary',
                          icon: Icon(
                            Icons.subject,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: 200,
                            height: 40,
                            color: Color(0xFF8C1515),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Outfit',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
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
