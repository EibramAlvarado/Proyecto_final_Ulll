import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../inicio/inicio_widget.dart';
import '../terminosy_con/terminosy_con_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CrearcuntaWidget extends StatefulWidget {
  const CrearcuntaWidget({Key key}) : super(key: key);

  @override
  _CrearcuntaWidgetState createState() => _CrearcuntaWidgetState();
}

class _CrearcuntaWidgetState extends State<CrearcuntaWidget> {
  TextEditingController cellphoneController;
  TextEditingController dateController;
  TextEditingController emailAddressController;
  TextEditingController passwordController;
  bool passwordVisibility;
  TextEditingController nameController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    cellphoneController = TextEditingController();
    dateController = TextEditingController();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
    nameController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.network(
              'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/fondo.jpg?raw=true',
            ).image,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 50, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 45,
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: Row(
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
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    color: Color(0xFFF6FF77),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                        child: Text(
                          'Crear cuenta',
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: emailAddressController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  hintText: 'Enter your email here...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 24, 0, 24),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF2B343A),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: !passwordVisibility,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  hintText: 'Enter your password here...',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 24, 0, 24),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordVisibility =
                                          !passwordVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF95A1AC),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF2B343A),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: dateController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Fecha de nacimiento',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  hintText: 'dd/mm/aaaa',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 24, 0, 24),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF2B343A),
                                    ),
                                keyboardType: TextInputType.datetime,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: nameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Nombre de usuario',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  hintText: 'Ingresa tu nombre de ususario',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 24, 0, 24),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF2B343A),
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 16, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: cellphoneController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Numero de Celular',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  hintText: 'Opcional',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 24, 0, 24),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF2B343A),
                                    ),
                                keyboardType: TextInputType.phone,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 5, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final user = await createAccountWithEmail(
                                    context,
                                    emailAddressController.text,
                                    passwordController.text,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  final usuariosCreateData =
                                      createUsuariosRecordData(
                                    displayName: nameController.text,
                                  );
                                  await UsuariosRecord.collection
                                      .doc(user.uid)
                                      .update(usuariosCreateData);

                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => InicioWidget(),
                                    ),
                                  );
                                },
                                text: 'Login',
                                options: FFButtonOptions(
                                  width: 70,
                                  height: 40,
                                  color: Color(0xFFAB6F1F),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 10,
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
                      Divider(
                        height: 2,
                        thickness: 2,
                        indent: 20,
                        endIndent: 20,
                        color: Color(0xFFAB6F1F),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.bottomToTop,
                                duration: Duration(milliseconds: 1000),
                                reverseDuration: Duration(milliseconds: 1000),
                                child: TerminosyConWidget(),
                              ),
                            );
                          },
                          text: 'Termino y condiciones',
                          options: FFButtonOptions(
                            width: 190,
                            height: 40,
                            color: Color(0xFFF6FF77),
                            textStyle:
                                FlutterFlowTheme.of(context).title1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFAB6F1F),
                                      fontSize: 14,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: 12,
                          ),
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
