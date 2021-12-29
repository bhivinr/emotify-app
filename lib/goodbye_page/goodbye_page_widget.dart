import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoodbyePageWidget extends StatefulWidget {
  const GoodbyePageWidget({Key key}) : super(key: key);

  @override
  _GoodbyePageWidgetState createState() => _GoodbyePageWidgetState();
}

class _GoodbyePageWidgetState extends State<GoodbyePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF850C85)),
          automaticallyImplyLeading: true,
          flexibleSpace: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 20, 0, 0),
                  child: Image.asset(
                    'assets/images/Emotify_Icon.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Emotify',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Color(0xFF850C85),
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          actions: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.home,
                color: Color(0xFF850C85),
                size: 30,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageWidget(),
                  ),
                );
              },
            ),
          ],
          elevation: 4,
        ),
      ),
      backgroundColor: Color(0xFF850C85),
      body: SafeArea(
        child: Align(
          alignment: AlignmentDirectional(0, -0.4),
          child: Text(
            '       Thank You \nHave a Great Day!',
            style: FlutterFlowTheme.bodyText1.override(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        ),
      ),
    );
  }
}
