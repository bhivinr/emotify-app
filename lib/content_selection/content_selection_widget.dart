import '../content_viewing_page/content_viewing_page_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../note_page/note_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentSelectionWidget extends StatefulWidget {
  const ContentSelectionWidget({
    Key key,
    this.moodBefore,
    this.ratingBefore,
  }) : super(key: key);

  final String moodBefore;
  final int ratingBefore;

  @override
  _ContentSelectionWidgetState createState() => _ContentSelectionWidgetState();
}

class _ContentSelectionWidgetState extends State<ContentSelectionWidget> {
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
              child: Text(
                'Which type of content would you like to view?',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 20, 5, 20),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotePageWidget(
                              contentType: 'nocontent',
                              moodBefore: widget.moodBefore,
                              ratingBefore: widget.ratingBefore,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: Color(0xFF26AB00),
                              spreadRadius: 2,
                            )
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFF00BFFF), Color(0xFF26AB00)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0.05),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotePageWidget(
                                    contentType: 'nocontent',
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'No Content',
                              style: FlutterFlowTheme.bodyText1.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContentViewingPageWidget(
                              moodBefore: widget.moodBefore,
                              ratingBefore: widget.ratingBefore,
                              contentType: 'motivational',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: Color(0xFFFF1100),
                              spreadRadius: 2,
                            )
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFFFF7800), Color(0xFFFF1100)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'Motivational',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ContentViewingPageWidget(
                              moodBefore: widget.moodBefore,
                              ratingBefore: widget.ratingBefore,
                              contentType: 'informative',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2,
                              color: FlutterFlowTheme.primaryColor,
                              spreadRadius: 2,
                            )
                          ],
                          gradient: LinearGradient(
                            colors: [Color(0xFF3E0779), Color(0xFF2929EE)],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0.05),
                          child: Text(
                            'Informative',
                            style: FlutterFlowTheme.bodyText1.override(
                              fontFamily: 'Poppins',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContentViewingPageWidget(
                            moodBefore: widget.moodBefore,
                            ratingBefore: widget.ratingBefore,
                            contentType: 'funny',
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            color: Color(0xFFFDD835),
                            spreadRadius: 2,
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [Color(0xFFFF7800), Color(0xFFF4D936)],
                          stops: [0, 1],
                          begin: AlignmentDirectional(0, -1),
                          end: AlignmentDirectional(0, 1),
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Funny',
                          style: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
