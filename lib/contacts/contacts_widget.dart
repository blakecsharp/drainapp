import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contacts_model.dart';
export 'contacts_model.dart';

class ContactsWidget extends StatefulWidget {
  const ContactsWidget({Key? key}) : super(key: key);

  @override
  _ContactsWidgetState createState() => _ContactsWidgetState();
}

class _ContactsWidgetState extends State<ContactsWidget> {
  late ContactsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: Color(0xFF8C1515),
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Back',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Contacts',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontSize: 30.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (valueOrDefault<bool>(
                        currentUserDocument?.stanfordAffiliated, false))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 0.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            'Important Phone Numbers ',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 20.0,
                                ),
                          ),
                        ),
                      ),
                    if (valueOrDefault<bool>(
                        currentUserDocument?.stanfordAffiliated, false))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            'If you are calling with questions or concerns during normal work hours (8AM-5PM). Please call the following clinic numbers below.',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ),
                    if (valueOrDefault<bool>(
                        currentUserDocument?.stanfordAffiliated, false))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 20.0, 40.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            '-  Stanford Plastic/Reconstructive Clinic (1000 Welch Road) @650-723-7001\n- Women Cancer Center (900 Blake Wilbur Drive)  @650-498-6004\n- South Bay Clinic (2589 Samaritan Drive) @408-426-4900\n- Redwood City (450 Broadway Street) @650-723-5256\n',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 12.0,
                                ),
                          ),
                        ),
                      ),
                    if (valueOrDefault<bool>(
                        currentUserDocument?.stanfordAffiliated, false))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            'If you are calling after hours (6PM-7AM or weekends) with questions or concerns. Please call 650-723-4000 and ask for the \"Plastic Surgery Resident On-Call\" right away if you\'re experiencing the following things:',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ),
                    if (valueOrDefault<bool>(
                        currentUserDocument?.stanfordAffiliated, false))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            40.0, 10.0, 40.0, 0.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Text(
                            'Fever (more than 101.5F or 38.3C), chills\nExcessive leg swelling (especially if it is unilateral)\n\nExcessive pain, redness, swelling, bruising, bleeding, separation of the skin, fluid drainage, or pus from your surgical incision site\n\nAccidental removal of drain, new fresh bright red blood pouring out from your drain(s), or other issues described in “Frequently Asked Questions” that advise a phone call. ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 12.0,
                                ),
                          ),
                        ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 0.0),
                      child: Text(
                        'For any medical emergencies, call 911:\nSudden shortness of breath, chest pain, or stroke like symptoms (one-sided numbness/weakness, slurred speech/trouble speaking, troubling seeing, difficulty walking)\n',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
