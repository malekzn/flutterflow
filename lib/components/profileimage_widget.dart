import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileimageWidget extends StatefulWidget {
  const ProfileimageWidget({Key key}) : super(key: key);

  @override
  _ProfileimageWidgetState createState() => _ProfileimageWidgetState();
}

class _ProfileimageWidgetState extends State<ProfileimageWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: FlutterFlowTheme.tertiaryColor,
            width: 1,
          ),
        ),
        child: Container(
          width: 50,
          height: 50,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.network(
            'https://picsum.photos/seed/841/600',
          ),
        ),
      ),
    );
  }
}
