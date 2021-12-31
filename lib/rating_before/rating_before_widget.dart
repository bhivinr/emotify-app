import '../content_selection/content_selection_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class RatingBeforeWidget extends StatefulWidget {
  const RatingBeforeWidget({
    Key key,
    this.moodBefore,
  }) : super(key: key);

  final String moodBefore;

  @override
  _RatingBeforeWidgetState createState() => _RatingBeforeWidgetState();
}

class _RatingBeforeWidgetState extends State<RatingBeforeWidget> {
  double ratingBarValue;
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
                child: Text(
                  'On a scale of 1-10 how would you rate the intensity of this feeling?',
                  style: FlutterFlowTheme.bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: RatingBar.builder(
                  onRatingUpdate: (newValue) =>
                      setState(() => ratingBarValue = newValue),
                  itemBuilder: (context, index) => Icon(
                    Icons.emoji_emotions,
                    color: FlutterFlowTheme.secondaryColor,
                  ),
                  direction: Axis.horizontal,
                  initialRating: ratingBarValue ??= 0,
                  unratedColor: Color(0xFF9E9E9E),
                  itemCount: 10,
                  itemSize: 40,
                  glowColor: FlutterFlowTheme.secondaryColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 2,
                buttonSize: 70,
                fillColor: Color(0xFFFDD835),
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContentSelectionWidget(
                        moodBefore: widget.moodBefore,
                        ratingBefore: ratingBarValue.round(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
