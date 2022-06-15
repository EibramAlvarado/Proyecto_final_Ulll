import '../auth/auth_util.dart';
import '../cliente/cliente_widget.dart';
import '../crearcunta/crearcunta_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../inicio/inicio_widget.dart';
import '../registro/registro_widget.dart';
import '../terminosy_con/terminosy_con_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController emailAddressController;
  TextEditingController passwordController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFAB6F1F),
        automaticallyImplyLeading: true,
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
                    onPressed: () {
                      print('IconButton pressed ...');
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
      backgroundColor: Color(0xFFFFC98C),
      drawer: Drawer(
        elevation: 16,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.network(
                    'https://irp-cdn.multiscreensite.com/d5f7cd93/MOBILE/images/717f5007-44bd-41c5-a999-75543626dd39.jpg',
                  ).image,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://www.softzone.es/app/uploads/2018/04/guest.png?x=480&quality=20',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 13, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.leftToRight,
                                duration: Duration(milliseconds: 1000),
                                reverseDuration: Duration(milliseconds: 1000),
                                child: ClienteWidget(),
                              ),
                            );
                          },
                          child: Text(
                            'Iniciar secion',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '.....@----.com',
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF141617),
                        ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  duration: Duration(milliseconds: 1000),
                                  reverseDuration: Duration(milliseconds: 1000),
                                  child: HomePageWidget(),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 40,
                              ),
                              title: Text(
                                'Cuenta',
                                style: FlutterFlowTheme.of(context).title3.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                              subtitle: Text(
                                'Gestionar mi cuenta',
                                style: FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x53EEEEEE),
                                    ),
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 1000),
                                  reverseDuration: Duration(milliseconds: 1000),
                                  child: HomePageWidget(),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: FaIcon(
                                FontAwesomeIcons.home,
                                color: Colors.white,
                                size: 35,
                              ),
                              title: Text(
                                'Inicio',
                                style: FlutterFlowTheme.of(context).title3.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 1000),
                                  reverseDuration: Duration(milliseconds: 1000),
                                  child: HomePageWidget(),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 40,
                              ),
                              title: Text(
                                'Ubicacion',
                                style: FlutterFlowTheme.of(context).title3.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                              subtitle: Text(
                                'Mira nuestras tiendas fisicas',
                                style: FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x53EEEEEE),
                                    ),
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 1000),
                                  reverseDuration: Duration(milliseconds: 1000),
                                  child: RegistroWidget(),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.work,
                                color: Colors.white,
                                size: 40,
                              ),
                              title: Text(
                                'Registrate',
                                style: FlutterFlowTheme.of(context).title3.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                              subtitle: Text(
                                'Si buscas empleo llena los requisitos sugeridos y unete',
                                style: FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x53EEEEEE),
                                      fontSize: 13,
                                    ),
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 1000),
                                  reverseDuration: Duration(milliseconds: 1000),
                                  child: HomePageWidget(),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: FaIcon(
                                FontAwesomeIcons.handsHelping,
                                color: Colors.white,
                                size: 35,
                              ),
                              title: Text(
                                'Nosotros',
                                style: FlutterFlowTheme.of(context).title3.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                              subtitle: Text(
                                'Enterate mas de lo que somos',
                                style: FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x53EEEEEE),
                                      fontSize: 13,
                                    ),
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.logout,
                              color: Colors.white,
                              size: 35,
                            ),
                            title: Text(
                              'Salir',
                              style: FlutterFlowTheme.of(context).title3.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                            ),
                            subtitle: Text(
                              'Salir de la cuenta',
                              style: FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0x53EEEEEE),
                                  ),
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            dense: false,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  height: MediaQuery.of(context).size.width * 0.1,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://thumbs.dreamstime.com/b/facebook-logo-vector-original-%C3%BAltimo-color-azul-aislado-f-icono-para-la-aplicaci%C3%B3n-m%C3%B3vil-de-p%C3%A1gina-web-o-materiales-impresi%C3%B3n-204672013.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  height: MediaQuery.of(context).size.width * 0.1,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgWO7_pQLCaxW5syoDqipYMSy3N0GWqYDO73EUG0ln0IJXTDrEGNsY-s2MGSBJ5fBiQfg&usqp=CAU',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.1,
                                  height: MediaQuery.of(context).size.width * 0.1,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'http://assets.stickpng.com/images/580b57fcd9996e24bc43c543.png',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 1,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
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
                          'Inicia sesion',
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
                                onFieldSubmitted: (_) async {
                                  final user = await signInWithEmail(
                                    context,
                                    emailAddressController.text,
                                    passwordController.text,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => InicioWidget(),
                                    ),
                                  );
                                },
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',
                                  labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  hintText: 'Enter your email here...',
                                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
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
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1.override(
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
                                  labelStyle: FlutterFlowTheme.of(context).bodyText1.override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF95A1AC),
                                      ),
                                  hintText: 'Enter your password here...',
                                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
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
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 24),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => passwordVisibility = !passwordVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      passwordVisibility ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                      color: Color(0xFF95A1AC),
                                      size: 22,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF2B343A),
                                    ),
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
                              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Olvidaste la contraseña?',
                                options: FFButtonOptions(
                                  width: 160,
                                  height: 40,
                                  color: Color(0xFFF6FF77),
                                  textStyle: FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Mulish',
                                        color: Colors.black,
                                        fontSize: 5,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: 12,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 5, 0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => InicioWidget(),
                                    ),
                                  );
                                },
                                text: 'Login',
                                options: FFButtonOptions(
                                  width: 60,
                                  height: 40,
                                  color: Color(0xFFAB6F1F),
                                  textStyle: FlutterFlowTheme.of(context).subtitle1.override(
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 1000),
                                reverseDuration: Duration(milliseconds: 1000),
                                child: CrearcuntaWidget(),
                              ),
                            );
                          },
                          text: 'Crear mi cuenta',
                          icon: Icon(
                            Icons.person,
                            size: 15,
                          ),
                          options: FFButtonOptions(
                            width: 190,
                            height: 40,
                            color: Color(0xFFF6FF77),
                            textStyle: FlutterFlowTheme.of(context).title1.override(
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
                            textStyle: FlutterFlowTheme.of(context).title1.override(
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
