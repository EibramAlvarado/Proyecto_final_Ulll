import '../carritodeventas/carritodeventas_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../home_page/home_page_widget.dart';
import '../inicio/inicio_widget.dart';
import '../nosotros/nosotros_widget.dart';
import '../registro/registro_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class UbicacionWidget extends StatefulWidget {
  const UbicacionWidget({Key key}) : super(key: key);

  @override
  _UbicacionWidgetState createState() => _UbicacionWidgetState();
}

class _UbicacionWidgetState extends State<UbicacionWidget> {
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 2),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFF5FF48),
                elevation: 100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://www.canalferretero.com/images/galerias/portada/6023cfae89dda.jpg',
                      width: 80,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Text(
                              'Ferreteria \"Los Orta\"',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(50, 0, 10, 0),
                            child: Text(
                              'Cerrado',
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFF0000),
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                      child: Text(
                        '\"Los Orta\" Puerto de palos',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                      child: Text(
                        'La mas novedosa y grande de nuestras ferreterias en la ciudad esta a tu disponibilidad cumpliendo asi tus espectativas.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.watch_later_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Text(
                          '8:00 a.m. - 10:00 p.m.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Text(
                          'Puerto de Palos, \nCD. Juarez chi...',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 2),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFF5FF48),
                elevation: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://images.squarespace-cdn.com/content/v1/53c4566ae4b047b01385cdb6/1539639404637-J536VJKJ6R58Q5KDGZJX/tablon.JPG',
                      width: 80,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Text(
                              'Ferreteria \"Los Orta\"',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(50, 0, 10, 0),
                            child: Text(
                              'Cerrado',
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFF0000),
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                      child: Text(
                        '\"Los Orta\" El mezquital',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                      child: Text(
                        'Una de nuestras sucursales mas visitadas  de nuestras ferreterias en la ciudad, esta a tu disponibilidad cumpliendo asi tus espectativas.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.watch_later_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Text(
                          '6:00 a.m. - 8:00 p.m.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Text(
                          'El Mezquital, \nCD. Juarez chi...',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 20),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFF5FF48),
                elevation: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.network(
                      'https://s03.s3c.es/imag/_v0/770x420/6/a/5/Imagen-sector-espanol-de-ferreteria-y-bricolaje-1.JPG',
                      width: 80,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                            child: Text(
                              'Ferreteria \"Los Orta\"',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(50, 0, 10, 0),
                            child: Text(
                              'Cerrado',
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFFF0000),
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                      child: Text(
                        '\"Los Orta\" Enequen',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                      child: Text(
                        'Una de nuestras sucursales mas vequipadas  de nuestras ferreterias en la ciudad, esta a tu disponibilidad cumpliendo asi tus espectativas.',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.watch_later_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Text(
                          '6:00 a.m. - 8:00 p.m.',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30,
                          borderWidth: 1,
                          buttonSize: 40,
                          icon: Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 20,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        Text(
                          'El Mezquital, \nCD. Juarez chi...',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).bodyText2.override(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
