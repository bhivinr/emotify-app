import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../note_page/note_page_widget.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentViewingPageWidget extends StatefulWidget {
  const ContentViewingPageWidget({
    Key key,
    this.moodBefore,
    this.ratingBefore,
    this.contentType,
  }) : super(key: key);

  final String moodBefore;
  final int ratingBefore;
  final String contentType;

  @override
  _ContentViewingPageWidgetState createState() =>
      _ContentViewingPageWidgetState();
}

class _ContentViewingPageWidgetState extends State<ContentViewingPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MoodContentRecord>>(
      stream: queryMoodContentRecord(
        queryBuilder: (moodContentRecord) => moodContentRecord
            .where('mood', isEqualTo: widget.moodBefore)
            .where('content_type', isEqualTo: widget.contentType)
            .where('rank', isEqualTo: functions.getRank(3)),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.primaryColor,
              ),
            ),
          );
        }
        List<MoodContentRecord> contentViewingPageMoodContentRecordList =
            snapshot.data;
        // Return an empty Container when the document does not exist.
        if (snapshot.data.isEmpty) {
          return Container();
        }
        final contentViewingPageMoodContentRecord =
            contentViewingPageMoodContentRecordList.isNotEmpty
                ? contentViewingPageMoodContentRecordList.first
                : null;
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
                  alignment: AlignmentDirectional(0, 0.05),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                    child: Text(
                      'Here\'s something to brighten your day',
                      style: FlutterFlowTheme.bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    await launchURL(contentViewingPageMoodContentRecord.url);
                  },
                  text: 'Show Me the Content',
                  options: FFButtonOptions(
                    width: 200,
                    height: 40,
                    color: Color(0xFFFDD835),
                    textStyle: FlutterFlowTheme.subtitle2.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotePageWidget(
                            contentType: widget.contentType,
                            moodBefore: widget.moodBefore,
                            ratingBefore: widget.ratingBefore,
                          ),
                        ),
                      );
                    },
                    text: 'I\'m Done Viewing',
                    options: FFButtonOptions(
                      width: 200,
                      height: 40,
                      color: Color(0xFFFDD835),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
