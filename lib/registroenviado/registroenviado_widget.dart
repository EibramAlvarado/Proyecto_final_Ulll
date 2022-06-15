import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../inicio/inicio_widget.dart';
import '../nosotros/nosotros_widget.dart';
import '../registro/registro_widget.dart';
import '../ubicacion/ubicacion_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistroenviadoWidget extends StatefulWidget {
  const RegistroenviadoWidget({Key key}) : super(key: key);

  @override
  _RegistroenviadoWidgetState createState() => _RegistroenviadoWidgetState();
}

class _RegistroenviadoWidgetState extends State<RegistroenviadoWidget> {
  String dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            padding: EdgeInsetsDirectional.fromSTEB(0, 7, 10, 0),
            child: FlutterFlowDropDown(
              options: ['Ayuda', 'Opciones'],
              onChanged: (val) => setState(() => dropDownValue = val),
              width: 100,
              height: 30,
              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
              icon: FaIcon(
                FontAwesomeIcons.ellipsisV,
                color: Colors.white,
                size: 30,
              ),
              fillColor: Color(0xFFAB6F1F),
              borderColor: Colors.transparent,
              borderRadius: 0,
              margin: EdgeInsetsDirectional.fromSTEB(5, 0, 10, 0),
              hidesUnderline: true,
            ),
          ),
        ],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 40,
                            ),
                            title: Text(
                              'Cuenta',
                              style:
                                  FlutterFlowTheme.of(context).title3.override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                      ),
                            ),
                            subtitle: Text(
                              'Gestionar mi cuenta',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0x53EEEEEE),
                                  ),
                            ),
                            tileColor: Color(0xFFF5F5F5),
                            dense: false,
                          ),
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 1000),
                                  reverseDuration: Duration(milliseconds: 1000),
                                  child: InicioWidget(),
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
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
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
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 1000),
                                  reverseDuration: Duration(milliseconds: 1000),
                                  child: UbicacionWidget(),
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
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                              subtitle: Text(
                                'Mira nuestras tiendas fisicas',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
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
                                  type: PageTransitionType.leftToRight,
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
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                              subtitle: Text(
                                'Si buscas empleo llena los requisitos sugeridos y unete',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
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
                                  type: PageTransitionType.leftToRight,
                                  duration: Duration(milliseconds: 1000),
                                  reverseDuration: Duration(milliseconds: 1000),
                                  child: NosotrosWidget(),
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
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                              subtitle: Text(
                                'Enterate mas de lo que somos',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
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
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 1000),
                                  reverseDuration: Duration(milliseconds: 1000),
                                  child: HomePageWidget(),
                                ),
                              );
                            },
                            child: ListTile(
                              leading: Icon(
                                Icons.logout,
                                color: Colors.white,
                                size: 35,
                              ),
                              title: Text(
                                'Salir',
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                    ),
                              ),
                              subtitle: Text(
                                'Salir de la cuenta',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0x53EEEEEE),
                                    ),
                              ),
                              tileColor: Color(0xFFF5F5F5),
                              dense: false,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
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
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
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
                  padding: EdgeInsetsDirectional.fromSTEB(0, 115, 0, 0),
                  child: Text(
                    'Registro Completado!!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 20,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 13, 15, 15),
                  child: Text(
                    'Tu registro se a completado con normalidad, tus datos seran transferidos a nuestras oficinas para analizarlos y evaluarlos minusiozamente y el termino de esto si eres apto y aprovado para trabajar con nosotros nos pondremos en contacto contigo para llegar a un acuerdo.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: Text(
                    'Gracias!',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title1.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 20,
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
