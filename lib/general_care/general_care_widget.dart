import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'general_care_model.dart';
export 'general_care_model.dart';

class GeneralCareWidget extends StatefulWidget {
  const GeneralCareWidget({Key? key}) : super(key: key);

  @override
  _GeneralCareWidgetState createState() => _GeneralCareWidgetState();
}

class _GeneralCareWidgetState extends State<GeneralCareWidget> {
  late GeneralCareModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GeneralCareModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      'General Care',
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
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 20),
                        child: Text(
                          'Please care for your drains as you\'ve been taught by your nurse in the hospital. See the instructions below for a reminder on how to manage drains.\n \nPlease record your drain output for each drain in the “Drain Diary” section until all drains are removed. This will help determine when they can be removed (typically once the output is less than 25-30 cc per 24 hours for two days in a row). Make sure you bring your phone with the app to clinic with you so we can see the drain summary. \n\nEmpty your drains at least twice a day or when they become half full as needed. See below for steps to emptying your drains!',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 40, 20, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xFF95A1AC),
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValue1 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.checkboxListTileValue1 = newValue!);
                            },
                            title: Text(
                              '1:  Emptying Drains',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Outfit',
                                      ),
                            ),
                            subtitle: Text(
                              'Unplug the bulb cap to allow the bulb to expand. Pour the fluid from the bulb into the measuring cup that was provided upon discharge and record the output in ml into the “Drain Diary” section of the app. DO NOT add the output from all drains together. EACH DRAIN should have its own separate output recorded. ',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: Color(0xFF8C1515),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xFF95A1AC),
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValue2 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.checkboxListTileValue2 = newValue!);
                            },
                            title: Text(
                              '2: Discarding Output',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Outfit',
                                      ),
                            ),
                            subtitle: Text(
                              'Discard the drainage into the toilet after measuring the amount. Do not save it.',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: Color(0xFF8C1515),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xFF95A1AC),
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValue3 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.checkboxListTileValue3 = newValue!);
                            },
                            title: Text(
                              '3:  Check Drains',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Outfit',
                                      ),
                            ),
                            subtitle: Text(
                              'The amount and color of the drainage will vary. It may start as a bloody (red) color and eventually become more pink and into a yellow or straw color. It is common to have strings of blood clots and white fibrous material coming out from the drain, which is normal and expected. Do not attempt to put anything into the bulb or tube to dislodge them. As long as the bulb is holding suction and the fluid is coming out, the drain is functioning.',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: Color(0xFF8C1515),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xFF95A1AC),
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValue4 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.checkboxListTileValue4 = newValue!);
                            },
                            title: Text(
                              '4: Recap Drains',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Outfit',
                                      ),
                            ),
                            subtitle: Text(
                              'Once the drain is emptied, compress the bulb until it is completely deflated, then recap it. This will recreate suction in the bulb.',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: Color(0xFF8C1515),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xFF95A1AC),
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValue5 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.checkboxListTileValue5 = newValue!);
                            },
                            title: Text(
                              '5: Strip the Tube',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Outfit',
                                      ),
                            ),
                            subtitle: Text(
                              'Strip the drain tubing every time you empty the drains to remove any clots or fibers in the tubing. Hold the tube securely at the drain exit site with two fingers of one hand. Then, take two fingers of your other hand and squeeze the tube gently together while pulling down the tube towards the bulb.',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: Color(0xFF8C1515),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xFF95A1AC),
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValue6 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.checkboxListTileValue6 = newValue!);
                            },
                            title: Text(
                              '6: Drain Hygiene ',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Outfit',
                                      ),
                            ),
                            subtitle: Text(
                              'A small amount of drainage at the drain exit site is normal. Keep a dry dressing over the drain site to absorb any drainage and to prevent the drain from rubbing against your clothing. You may shower even with your drains 72-hours (3 days) after surgery. Remove all dressings around the drains and replace with new dressings over the drain exit sites after washing. No baths, tub soaks, or swimming until cleared by your surgeon.',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: Color(0xFF8C1515),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Color(0xFF95A1AC),
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValue7 ??= false,
                            onChanged: (newValue) async {
                              setState(() =>
                                  _model.checkboxListTileValue7 = newValue!);
                            },
                            title: Text(
                              '7: Secure the Drain',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Outfit',
                                      ),
                            ),
                            subtitle: Text(
                              'Secure the drains to your garment with safety pins or use a surgical drain belt to keep the drains from dangling.',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            activeColor: Color(0xFF8C1515),
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Text(
                      'DO NOT: Allow the drainage tubing to kink or twist or Pull on the drain tube. Keep a slight laxity in the drain tube at all times.\n \nIf you have any questions regarding drain care, please read the “Frequently Asked Questions” page. If your questions are not answered or it is advised to call us, please find the appropriate call number via the “Contact Information” page',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Outfit',
                            fontWeight: FontWeight.normal,
                          ),
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
