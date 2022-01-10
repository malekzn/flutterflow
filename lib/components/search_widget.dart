import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.61,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(20),
          topRight: Radius.circular(0),
        ),
        border: Border.all(
          color: Color(0xFFCECECE),
          width: 1,
        ),
      ),
      child: TextFormField(
        onChanged: (_) => EasyDebounce.debounce(
          'textController',
          Duration(milliseconds: 2000),
          () => setState(() {}),
        ),
        controller: textController,
        obscureText: false,
        decoration: InputDecoration(
          hintText: 'Search ...',
          hintStyle: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Proxima Nova',
            color: Color(0x34303030),
            fontWeight: FontWeight.bold,
            useGoogleFonts: false,
          ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Icon(
            Icons.search_outlined,
            color: FlutterFlowTheme.unselected,
          ),
          suffixIcon: textController.text.isNotEmpty
              ? InkWell(
                  onTap: () => setState(
                    () => textController.clear(),
                  ),
                  child: Icon(
                    Icons.clear,
                    color: FlutterFlowTheme.secondaryColor,
                    size: 22,
                  ),
                )
              : null,
        ),
        style: FlutterFlowTheme.bodyText1.override(
          fontFamily: 'Proxima Nova',
          color: Color(0x34303030),
          fontWeight: FontWeight.bold,
          useGoogleFonts: false,
        ),
      ),
    );
  }
}
