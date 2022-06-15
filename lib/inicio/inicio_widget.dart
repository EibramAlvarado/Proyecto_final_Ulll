import '../articulos/articulos_widget.dart';
import '../carritodeventas/carritodeventas_widget.dart';
import '../cosasparaelhogar/cosasparaelhogar_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../herramientasmanuales/herramientasmanuales_widget.dart';
import '../home_page/home_page_widget.dart';
import '../materialesparaconst/materialesparaconst_widget.dart';
import '../nosotros/nosotros_widget.dart';
import '../pintura/pintura_widget.dart';
import '../registro/registro_widget.dart';
import '../ubicacion/ubicacion_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget>
    with TickerProviderStateMixin {
  PageController pageViewController;
  TextEditingController textController;
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

    textController = TextEditingController();
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
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 210,
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
                        size: 25,
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
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 300,
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                              child: PageView(
                                controller: pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Image.network(
                                    'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/Slidermovl.png?raw=true',
                                    width: MediaQuery.of(context).size.width,
                                    height: 200,
                                    fit: BoxFit.fill,
                                  ),
                                  Image.network(
                                    'https://www.tooltyp.com/wp-content/uploads/2019/01/1900x920-como-y-por-que-hacer-descuentos-en-tu-ecommerce.jpg',
                                    fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 1),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                                child: SmoothPageIndicator(
                                  controller: pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 2,
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
                                    dotWidth: 10,
                                    dotHeight: 10,
                                    dotColor: Color(0xFF9E9E9E),
                                    activeDotColor: Colors.black,
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ).animated(
                          [animationsMap['pageViewOnPageLoadAnimation']]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 1000),
                        reverseDuration: Duration(milliseconds: 1000),
                        child: ArticulosWidget(),
                      ),
                    );
                  },
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5FF48),
                    elevation: 100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ArticulosWidget(),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/Elect.jpg?raw=true',
                              width: MediaQuery.of(context).size.width * 0.7,
                              height: MediaQuery.of(context).size.height * 0.25,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Text(
                            'Herramintas Electricas',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 1000),
                        reverseDuration: Duration(milliseconds: 1000),
                        child: HerramientasmanualesWidget(),
                      ),
                    );
                  },
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5FF48),
                    elevation: 100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/Manuales.jpg?raw=true',
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.25,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Text(
                            'Herramintas Manuales',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 1000),
                        reverseDuration: Duration(milliseconds: 1000),
                        child: PinturaWidget(),
                      ),
                    );
                  },
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5FF48),
                    elevation: 100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/pinturamovil.jpg?raw=true',
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.25,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Text(
                            'Pintura',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 1000),
                        reverseDuration: Duration(milliseconds: 1000),
                        child: MaterialesparaconstWidget(),
                      ),
                    );
                  },
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5FF48),
                    elevation: 100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/construccionmovil.jpg?raw=true',
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.25,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Text(
                            'Material y herramienta\npara contruccion',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        duration: Duration(milliseconds: 1000),
                        reverseDuration: Duration(milliseconds: 1000),
                        child: CosasparaelhogarWidget(),
                      ),
                    );
                  },
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5FF48),
                    elevation: 100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://github.com/EibramAlvarado/gpo-6J-Android-UII/blob/main/cosasparaelhogarmoil.jpg?raw=true',
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.25,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                          child: Text(
                            'Cosas para el hogar',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontStyle: FontStyle.italic,
                                ),
                          ),
                        ),
                      ],
                    ),
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
