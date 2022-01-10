import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantcardWidget extends StatefulWidget {
  const RestaurantcardWidget({Key key}) : super(key: key);

  @override
  _RestaurantcardWidgetState createState() => _RestaurantcardWidgetState();
}

class _RestaurantcardWidgetState extends State<RestaurantcardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.tertiaryColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            color: Color(0x1F000000),
          )
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://picsum.photos/seed/887/600',
                width: 65,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.utensils,
                      color: FlutterFlowTheme.secondaryColor,
                      size: 10,
                    ),
                    Text(
                      'Restaurant',
                      style: FlutterFlowTheme.bodyText2.override(
                        fontFamily: 'Proxima Nova',
                        color: FlutterFlowTheme.secondaryColor,
                        fontWeight: FontWeight.w100,
                        useGoogleFonts: false,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Pizza Hut',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Proxima Nova',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    useGoogleFonts: false,
                  ),
                ),
                Text(
                  'Parliament St, Westminster, London',
                  style: FlutterFlowTheme.bodyText2,
                ),
              ],
            ),
            Text(
              '1.3 Km',
              style: FlutterFlowTheme.bodyText1.override(
                fontFamily: 'Proxima Nova',
                color: FlutterFlowTheme.secondaryColor,
                fontWeight: FontWeight.bold,
                useGoogleFonts: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
