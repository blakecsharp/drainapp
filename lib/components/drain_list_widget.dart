import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drain_list_model.dart';
export 'drain_list_model.dart';

class DrainListWidget extends StatefulWidget {
  const DrainListWidget({Key? key}) : super(key: key);

  @override
  _DrainListWidgetState createState() => _DrainListWidgetState();
}

class _DrainListWidgetState extends State<DrainListWidget> {
  late DrainListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrainListModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 0,
      runSpacing: 0,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.start,
      verticalDirection: VerticalDirection.down,
      clipBehavior: Clip.none,
      children: [
        AuthUserStreamWidget(
          builder: (context) => Builder(
            builder: (context) {
              final activeDrains =
                  (currentUserDocument?.drains?.toList() ?? []).toList();
              return ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: activeDrains.length,
                itemBuilder: (context, activeDrainsIndex) {
                  final activeDrainsItem = activeDrains[activeDrainsIndex];
                  return Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: SwitchListTile(
                      value: _model.switchListTileValue ??=
                          activeDrainsItem.active!,
                      onChanged: (newValue) async {
                        setState(() => _model.switchListTileValue = newValue!);
                      },
                      title: Text(
                        'Drain',
                        style: FlutterFlowTheme.of(context).title3,
                      ),
                      subtitle: Text(
                        activeDrainsIndex.toString(),
                        style: FlutterFlowTheme.of(context).subtitle2,
                      ),
                      tileColor: Color(0xFF8C1515),
                      activeColor: Color(0xFF8C1515),
                      dense: false,
                      controlAffinity: ListTileControlAffinity.trailing,
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
