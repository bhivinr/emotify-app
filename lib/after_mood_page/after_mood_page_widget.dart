import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../rating_after/rating_after_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AfterMoodPageWidget extends StatefulWidget {
  const AfterMoodPageWidget({
    Key key,
    this.moodBefore,
    this.ratingBefore,
    this.contentType,
  }) : super(key: key);

  final String moodBefore;
  final int ratingBefore;
  final String contentType;

  @override
  _AfterMoodPageWidgetState createState() => _AfterMoodPageWidgetState();
}

class _AfterMoodPageWidgetState extends State<AfterMoodPageWidget> {
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
          alignment: AlignmentDirectional(0.05, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Text(
                    'How do you feel now?',
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFF850C85),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.05, -0.95),
                              child: Text(
                                'Happy',
                                style: FlutterFlowTheme.bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFFFFE300),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RatingAfterWidget(
                                      moodBefore: widget.moodBefore,
                                      ratingBefore: widget.ratingBefore,
                                      contentType: widget.contentType,
                                      moodAfter: 'happy',
                                    ),
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/Happy.jpg',
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(130, 0, 0, 0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF850C85),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, -0.9),
                            child: Text(
                              'Angry',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFFF0000),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RatingAfterWidget(
                                    moodAfter: 'angry',
                                  ),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/Angry.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF850C85),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, -0.95),
                            child: Text(
                              'Sad',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF00BFFF),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RatingAfterWidget(
                                    moodBefore: widget.moodBefore,
                                    ratingBefore: widget.ratingBefore,
                                    contentType: widget.contentType,
                                    moodAfter: 'sad',
                                  ),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/Sad.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(130, 0, 0, 0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF850C85),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, -0.95),
                            child: Text(
                              'Scared',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFDF73FF),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RatingAfterWidget(
                                    moodAfter: 'scared',
                                    moodBefore: widget.moodBefore,
                                    ratingBefore: widget.ratingBefore,
                                    contentType: widget.contentType,
                                  ),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/Scared.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF850C85),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, -0.95),
                            child: Text(
                              'Tired',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFFC0C0C0),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RatingAfterWidget(
                                    moodBefore: widget.moodBefore,
                                    ratingBefore: widget.ratingBefore,
                                    contentType: widget.contentType,
                                    moodAfter: 'tired',
                                  ),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/Tired.jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(130, 0, 0, 0),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFF850C85),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, -0.95),
                            child: Text(
                              'Stressed',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF61DE2A),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RatingAfterWidget(
                                    moodBefore: widget.moodBefore,
                                    ratingBefore: widget.ratingBefore,
                                    contentType: widget.contentType,
                                    moodAfter: 'stressed',
                                  ),
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/Stressed_(1).jpg',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFF850C85),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.95),
                        child: Text(
                          'Empty',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RatingAfterWidget(
                                moodBefore: widget.moodBefore,
                                ratingBefore: widget.ratingBefore,
                                contentType: widget.contentType,
                                moodAfter: 'empty',
                              ),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/images/Empty.jpg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
