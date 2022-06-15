import '../flutter_flow/flutter_flow_icon_button.dart';
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

class CarritodeventasWidget extends StatefulWidget {
  const CarritodeventasWidget({Key key}) : super(key: key);

  @override
  _CarritodeventasWidgetState createState() => _CarritodeventasWidgetState();
}

class _CarritodeventasWidgetState extends State<CarritodeventasWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFFFC98C),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
              child: Image.network(
                'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/logo.png?raw=true',
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.05,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Container(
                width: 185,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0x53EEEEEE),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Icon(
                        Icons.search,
                        color: Color(0xFFAB6F1F),
                        size: 20,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: InputDecoration(
                            hintText: 'Escribe lo que buscas',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4.0),
                                topRight: Radius.circular(4.0),
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 50,
                icon: FaIcon(
                  FontAwesomeIcons.ellipsisV,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
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
                                  type: PageTransitionType.rightToLeft,
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
                                  type: PageTransitionType.rightToLeft,
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
                                  type: PageTransitionType.rightToLeft,
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.network(
              'https://i.pinimg.com/originals/90/ae/1b/90ae1b477decba5edd63b326a818223f.jpg',
            ).image,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFF5FF48),
                          elevation: 100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://raw.githubusercontent.com/EibramAlvarado/gpo-6J-Android-UII/main/Taladro.webp',
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                'Taladro \nTruepower \n69703 400 W',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Text(
                                  'Comprar',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFAB6F1F),
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 35,
                                      icon: Icon(
                                        Icons.delete,
                                        color: Color(0xFFFF0000),
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 35,
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Color(0xFFFF0000),
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40, 0, 5, 0),
                                      child: Text(
                                        '\$900',
                                        textAlign: TextAlign.end,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF1E8A00),
                                              fontSize: 12,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 20, 20),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFF5FF48),
                          elevation: 100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://raw.githubusercontent.com/EibramAlvarado/gpo-6J-Android-UII/main/shopping%20(2).webp',
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                'Berel Berelinte \n7 Pintura \nVinilica 19lt',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 17,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Text(
                                  'Comprar',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFAB6F1F),
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 35,
                                      icon: Icon(
                                        Icons.delete,
                                        color: Color(0xFFFF0000),
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 35,
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Color(0xFFFF0000),
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40, 0, 5, 0),
                                      child: Text(
                                        '\$250',
                                        textAlign: TextAlign.end,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF1E8A00),
                                              fontSize: 12,
                                            ),
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                        child: Card(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          color: Color(0xFFF5FF48),
                          elevation: 100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://raw.githubusercontent.com/EibramAlvarado/gpo-6J-Android-UII/main/shopping%20(9).webp',
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Text(
                                'HELMER Cajonera \ncon ruedas, \nNegro, 28x69 cm',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .title1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Text(
                                  'Comprar',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFAB6F1F),
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 35,
                                      icon: Icon(
                                        Icons.delete,
                                        color: Color(0xFFFF0000),
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30,
                                      borderWidth: 1,
                                      buttonSize: 35,
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Color(0xFFFF0000),
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          40, 0, 5, 0),
                                      child: Text(
                                        '\$700',
                                        textAlign: TextAlign.end,
                                        style: FlutterFlowTheme.of(context)
                                            .subtitle1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF1E8A00),
                                              fontSize: 12,
                                            ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
