import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drain_active_model.dart';
export 'drain_active_model.dart';

class DrainActiveWidget extends StatefulWidget {
  const DrainActiveWidget({
    Key? key,
    required this.drainIndex,
    this.active,
    this.drainLabel,
  }) : super(key: key);

  final int? drainIndex;
  final bool? active;
  final String? drainLabel;

  @override
  _DrainActiveWidgetState createState() => _DrainActiveWidgetState();
}

class _DrainActiveWidgetState extends State<DrainActiveWidget> {
  late DrainActiveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrainActiveModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _model.switchListTileValue ??= widget.active!,
      onChanged: (newValue) async {
        setState(() => _model.switchListTileValue = newValue!);
        if (newValue!) {
          await actions.updateActiveDrain(
            widget.drainIndex!,
            true,
          );
        } else {
          await actions.updateActiveDrain(
            widget.drainIndex!,
            false,
          );
        }
      },
      title: Text(
        widget.drainLabel!,
        style: FlutterFlowTheme.of(context).headlineSmall,
      ),
      subtitle: Text(
        widget.drainIndex!.toString(),
        style: FlutterFlowTheme.of(context).titleSmall,
      ),
      tileColor: Color(0xFF8C1515),
      activeColor: Color(0xFF8C1515),
      dense: false,
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
