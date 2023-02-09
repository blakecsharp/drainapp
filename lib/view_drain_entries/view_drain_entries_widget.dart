import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_drain_entries_model.dart';
export 'view_drain_entries_model.dart';

class ViewDrainEntriesWidget extends StatefulWidget {
  const ViewDrainEntriesWidget({Key? key}) : super(key: key);

  @override
  _ViewDrainEntriesWidgetState createState() => _ViewDrainEntriesWidgetState();
}

class _ViewDrainEntriesWidgetState extends State<ViewDrainEntriesWidget> {
  late ViewDrainEntriesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewDrainEntriesModel());
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
                      'My Entries',
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
                padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.69,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        ListTile(
                          title: Text(
                            '9/1/22 8:00AM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 0mL Drain 2: 4mL Drain 3: 10mL Drain 4: 15mL Drain 5: 11mL Drain 6: 1mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/1/22 9:00PM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 19mL Drain 2: 15mL Drain 3: 17mL Drain 4: 20mL Drain 5: 21mL Drain 6: 13mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/2/22 8:00AM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 11mL Drain 2: 17mL Drain 3: 12mL Drain 4: 13mL Drain 5: 17mL Drain 6: 10mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/2/22 8:30PM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 22mL Drain 2: 23mL Drain 3: 14mL Drain 4: 15mL Drain 5: 16mL Drain 6: 9mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/3/22 9:00AM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 0mL Drain 2: 4mL Drain 6: 1mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/3/22 9:30PM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 0mL Drain 2: 4mL Drain 6: 1mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/4/22 7:00AM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 0mL Drain 2: 4mL Drain 6: 1mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/4/22 4:00PM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 0mL Drain 2: 4mL Drain 6: 1mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/4/22 9:20PM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 0mL Drain 2: 4mL Drain 6: 1mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/5/22 7:00AM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 0mL Drain 2: 4mL Drain 6: 1mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/5/22 5:00PM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 0mL Drain 2: 4mL Drain 6: 1mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/6/22 1:00AM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 0mL Drain 2: 4mL Drain 6: 1mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                        ),
                        ListTile(
                          title: Text(
                            '9/6/22 9:00PM',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                          subtitle: Text(
                            'Drain 1: 0mL Drain 2: 4mL Drain 6: 1mL ',
                            style: FlutterFlowTheme.of(context).subtitle2,
                          ),
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
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
