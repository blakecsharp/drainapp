import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drain_name_entry_model.dart';
export 'drain_name_entry_model.dart';

class DrainNameEntryWidget extends StatefulWidget {
  const DrainNameEntryWidget({
    Key? key,
    required this.drainId,
  }) : super(key: key);

  final int? drainId;

  @override
  _DrainNameEntryWidgetState createState() => _DrainNameEntryWidgetState();
}

class _DrainNameEntryWidgetState extends State<DrainNameEntryWidget> {
  late DrainNameEntryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrainNameEntryModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Align(
            alignment: AlignmentDirectional(0.05, 0.05),
            child: TextFormField(
              controller: _model.textController,
              onChanged: (_) => EasyDebounce.debounce(
                '_model.textController',
                Duration(milliseconds: 2000),
                () async {
                  await actions.addDrainName(
                    widget.drainId!,
                    _model.textController.text,
                  );
                },
              ),
              autofocus: true,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Enter a label for your drain.',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0x00000000),
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0),
                  ),
                ),
                suffixIcon: _model.textController!.text.isNotEmpty
                    ? InkWell(
                        onTap: () async {
                          _model.textController?.clear();
                          await actions.addDrainName(
                            widget.drainId!,
                            _model.textController.text,
                          );
                          setState(() {});
                        },
                        child: Icon(
                          Icons.clear,
                          color: Color(0xFF0A0000),
                          size: 22.0,
                        ),
                      )
                    : null,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                  ),
              textAlign: TextAlign.start,
              validator: _model.textControllerValidator.asValidator(context),
            ),
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            await actions.addDrainName(
              widget.drainId!,
              _model.textController.text,
            );
          },
          text: 'Add',
          options: FFButtonOptions(
            width: 60.0,
            height: 30.0,
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: Color(0xFF8C1515),
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 10.0,
                ),
            elevation: 2.0,
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ],
    );
  }
}
