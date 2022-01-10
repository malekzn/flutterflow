import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SortbutWidget extends StatefulWidget {
  const SortbutWidget({Key key}) : super(key: key);

  @override
  _SortbutWidgetState createState() => _SortbutWidgetState();
}

class _SortbutWidgetState extends State<SortbutWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      constraints: BoxConstraints(
        maxWidth: 42,
        maxHeight: 40,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(23),
          topLeft: Radius.circular(0),
          topRight: Radius.circular(23),
        ),
        shape: BoxShape.rectangle,
      ),
      child: FlutterFlowIconButton(
        borderColor: Colors.transparent,
        borderRadius: 0,
        borderWidth: 0,
        buttonSize: 42,
        icon: Icon(
          Icons.sort_outlined,
          color: FlutterFlowTheme.tertiaryColor,
          size: 25,
        ),
        onPressed: () {
          print('IconButton pressed ...');
        },
      ),
    );
  }
}
