import '../backend/api_requests/api_calls.dart';
import '../components/filterbut_widget.dart';
import '../components/profileimage_widget.dart';
import '../components/search_widget.dart';
import '../components/sortbut_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF8F8F8),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(0),
          ),
          child: Align(
            alignment: AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SearchWidget(),
                      SortbutWidget(),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.034,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                        ),
                      ),
                      ProfileimageWidget(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 27, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 95,
                    decoration: BoxDecoration(),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FilterbutWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FutureBuilder<ApiCallResponse>(
                    future: GetRestaurantCall.call(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 25,
                            height: 25,
                            child: SpinKitChasingDots(
                              color: FlutterFlowTheme.primaryColor,
                              size: 25,
                            ),
                          ),
                        );
                      }
                      final listViewGetRestaurantResponse = snapshot.data;
                      return Builder(
                        builder: (context) {
                          final restaurantList = getJsonField(
                                listViewGetRestaurantResponse.jsonBody,
                                r'''$.data''',
                              )?.toList() ??
                              [];
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            itemCount: restaurantList.length,
                            itemBuilder: (context, restaurantListIndex) {
                              final restaurantListItem =
                                  restaurantList[restaurantListIndex];
                              return Text(
                                'Hello World',
                                style: FlutterFlowTheme.bodyText1,
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
