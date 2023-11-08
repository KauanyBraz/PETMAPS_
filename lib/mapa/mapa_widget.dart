import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mapa_model.dart';
export 'mapa_model.dart';

class MapaWidget extends StatefulWidget {
  const MapaWidget({Key? key}) : super(key: key);

  @override
  _MapaWidgetState createState() => _MapaWidgetState();
}

class _MapaWidgetState extends State<MapaWidget> {
  late MapaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapaModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                Color(0xFFFF862F),
              ),
            ),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFFFF862F),
        appBar: AppBar(
          backgroundColor: Color(0xFFFF862F),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Color(0xFFFF862F),
            borderRadius: 70.0,
            borderWidth: 5.0,
            buttonSize: 50.0,
            fillColor: FlutterFlowTheme.of(context).info,
            icon: Icon(
              Icons.notifications,
              color: Color(0xFFFF862F),
              size: 20.0,
            ),
            onPressed: () async {
              await showDialog(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text('Pet encontrado!'),
                    content: Text('leitor 1, Rua R. Soraya Gonzales- 3M'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(alertDialogContext),
                        child: Text('Ok'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          title: Text(
            'PetMaps',
            textAlign: TextAlign.start,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: 484.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).info,
                  ),
                  child: Slidable(
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      extentRatio: 0.25,
                      children: [
                        SlidableAction(
                          label: 'Share',
                          backgroundColor: FlutterFlowTheme.of(context).info,
                          icon: Icons.share,
                          onPressed: (_) {
                            print('SlidableActionWidget pressed ...');
                          },
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Text(
                        'Resultados',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              color: Colors.black,
                            ),
                      ),
                      subtitle: Text(
                        'Localize seu pet',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                      tileColor: Color(0xFFFF862F),
                      dense: false,
                    ),
                  ),
                ),
              ),
              Container(
                width: 436.0,
                height: 88.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFF862F),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).info,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.05, -0.20),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('historico');
                        },
                        text: 'Acessar  Históricos',
                        options: FFButtonOptions(
                          width: 258.0,
                          height: 52.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).info,
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 15.0,
                                  ),
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).info,
                            width: 5.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.62, -0.27),
                      child: Icon(
                        Icons.location_on,
                        color: Color(0xFFE33924),
                        size: 35.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 464.0,
                height: 516.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Builder(builder: (context) {
                  final _googleMapMarker = currentUserLocationValue;
                  return FlutterFlowGoogleMap(
                    controller: _model.googleMapsController,
                    onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
                    initialLocation: _model.googleMapsCenter ??=
                        LatLng(-22.7617, -47.1541),
                    markers: [
                      if (_googleMapMarker != null)
                        FlutterFlowMarker(
                          _googleMapMarker.serialize(),
                          _googleMapMarker,
                        ),
                    ],
                    markerColor: GoogleMarkerColor.orange,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.standard,
                    initialZoom: 11.0,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: true,
                    showCompass: false,
                    showMapToolbar: false,
                    showTraffic: false,
                    centerMapOnMarkerTap: true,
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
