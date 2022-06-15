import '../carritodeventas/carritodeventas_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TerminosyConWidget extends StatefulWidget {
  const TerminosyConWidget({Key key}) : super(key: key);

  @override
  _TerminosyConWidgetState createState() => _TerminosyConWidgetState();
}

class _TerminosyConWidgetState extends State<TerminosyConWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFAB6F1F),
        automaticallyImplyLeading: true,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/logo.png?raw=true',
              width: 60,
              height: 35,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
              child: Text(
                'Ferrreteria\n\"Los Orta\"',
                style: FlutterFlowTheme.of(context).title1.override(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 17,
                    ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    buttonSize: 35,
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: Duration(milliseconds: 1000),
                          reverseDuration: Duration(milliseconds: 1000),
                          child: CarritodeventasWidget(),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30,
                    buttonSize: 35,
                    icon: FaIcon(
                      FontAwesomeIcons.ellipsisV,
                      color: Colors.white,
                      size: 23,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/fondoferreteriamovil.png?raw=true',
              ).image,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                  child: Text(
                    'Terms and Conditions\nLast updated: June 07, 2022\nPlease read these terms and conditions carefully before using Our Service.\nInterpretation and Definitions',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontSize: 13,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    'Interpretation',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                  child: Text(
                    'The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.\n',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    'Definitions',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                  child: Text(
                    'For the purposes of these Terms and Conditions:\nApplication means the software program provided by the Company downloaded by You on any electronic device, named Ferreteria \"Los Orta\"\nApplication Store means the digital distribution service operated and developed by Apple Inc. (Apple App Store) or Google Inc. (Google Play Store) in which the Application has been downloaded.\nAffiliate means an entity that controls, is controlled by or is under common control with a party, where \"control\" means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.\nCountry refers to: Mexico\nCompany (referred to as either \"the Company\", \"We\", \"Us\" or \"Our\" in this Agreement) refers to Ferreteria \"Los Orta\", CD JUAREZ, CHI 055016.\nDevice means any device that can access the Service such as a computer, a cellphone or a digital tablet.\nService refers to the Application.\nTerms and Conditions (also referred as \"Terms\") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service. This Terms and Conditions agreement has been created with the help of the Terms and Conditions Generator.\nThird-party Social Media Service means any services or content (including data, information, products or services) provided by a third-party that may be displayed, included or made available by the Service.\nYou means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Text(
                    'Service',
                    style: FlutterFlowTheme.of(context).subtitle1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 50),
                  child: Text(
                    'To the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.\nSome states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party\'s liability will be limited to the greatest extent permitted by law.\n\"AS IS\" and \"AS AVAILABLE\" Disclaimer\nThe Service is provided to You \"AS IS\" and \"AS AVAILABLE\" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.\nWithout limiting the foregoing, neither the Company nor any of the company\'s provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.\nSome jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.\nGoverning Law\nThe laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.\nDisputes Resolution\nIf You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.\nFor European Union (EU) Users\nIf You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which you are resident in.\nUnited States Legal Compliance\nYou represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a \"terrorist supporting\" country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.\nSeverability and Waiver\nSeverability\nIf any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.\nWaiver\nExcept as provided herein, the failure to exercise a right or to require performance of an obligation under these Terms shall not effect a party\'s ability to exercise such right or require such performance at any time thereafter nor shall the waiver of a breach constitute a waiver of any subsequent breach.\nTranslation Interpretation\nThese Terms and Conditions may have been translated if We have made them available to You on our Service. You agree that the original English text shall prevail in the case of a dispute.\nChanges to These Terms and Conditions\nWe reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days\' notice prior to any new terms taking effect. What constitutes a material change will be determined at Our sole discretion.\nBy continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.\nContact Us\nIf you have any questions about these Terms and Conditions, You can contact us:\n•\tBy email: oficinasLosOrta@gmail.com',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
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
