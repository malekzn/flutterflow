import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterbutWidget extends StatefulWidget {
  const FilterbutWidget({Key key}) : super(key: key);

  @override
  _FilterbutWidgetState createState() => _FilterbutWidgetState();
}

class _FilterbutWidgetState extends State<FilterbutWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.tertiaryColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 12,
                  color: Color(0x1A000000),
                  offset: Offset(0, 3),
                )
              ],
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: FlutterFlowTheme.secondaryColor,
                width: 2,
              ),
            ),
            child: FlutterFlowIconButton(
              borderColor: Color(0x00E71D73),
              borderRadius: 30,
              borderWidth: 2,
              buttonSize: 60,
              fillColor: Color(0x00FFFFFF),
              icon: FaIcon(
                FontAwesomeIcons.utensils,
                color: FlutterFlowTheme.secondaryColor,
                size: 18,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: Text(
              'Food & Restaurants',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.bodyText2.override(
                fontFamily: 'Proxima Nova',
                color: Colors.black,
                fontSize: 10,
                useGoogleFonts: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
