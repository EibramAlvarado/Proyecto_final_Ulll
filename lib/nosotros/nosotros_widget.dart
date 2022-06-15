import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../inicio/inicio_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NosotrosWidget extends StatefulWidget {
  const NosotrosWidget({Key key}) : super(key: key);

  @override
  _NosotrosWidgetState createState() => _NosotrosWidgetState();
}

class _NosotrosWidgetState extends State<NosotrosWidget>
    with TickerProviderStateMixin {
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'pageViewOnPageLoadAnimation': AnimationInfo(
      curve: Curves.linear,
      trigger: AnimationTrigger.onPageLoad,
      duration: 1000,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 0,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.93,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                          child: PageView(
                            controller: pageViewController ??=
                                PageController(initialPage: 0),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Image.network(
                                'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/Nosotros1.png?raw=true',
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                              Image.network(
                                'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/Nosotros2.png?raw=true',
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                              Image.network(
                                'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/Nosotros3.png?raw=true',
                                width: 100,
                                height: 100,
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 1),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                            child: SmoothPageIndicator(
                              controller: pageViewController ??=
                                  PageController(initialPage: 0),
                              count: 3,
                              axisDirection: Axis.horizontal,
                              onDotClicked: (i) {
                                pageViewController.animateToPage(
                                  i,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              effect: ExpandingDotsEffect(
                                expansionFactor: 2,
                                spacing: 8,
                                radius: 16,
                                dotWidth: 16,
                                dotHeight: 16,
                                dotColor: Color(0xFF9E9E9E),
                                activeDotColor: Color(0xFFAB6F1F),
                                paintStyle: PaintingStyle.stroke,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ).animated([animationsMap['pageViewOnPageLoadAnimation']]),
                ),
              ],
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              buttonSize: 40,
              icon: Icon(
                Icons.home,
                color: Color(0xFFAB6F1F),
                size: 23,
              ),
              onPressed: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.bottomToTop,
                    duration: Duration(milliseconds: 1000),
                    reverseDuration: Duration(milliseconds: 1000),
                    child: InicioWidget(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
