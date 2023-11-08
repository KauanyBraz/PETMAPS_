import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'informacoes_model.dart';
export 'informacoes_model.dart';

class InformacoesWidget extends StatefulWidget {
  const InformacoesWidget({Key? key}) : super(key: key);

  @override
  _InformacoesWidgetState createState() => _InformacoesWidgetState();
}

class _InformacoesWidgetState extends State<InformacoesWidget> {
  late InformacoesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InformacoesModel());

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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFF862F),
        appBar: AppBar(
          backgroundColor: Color(0xFFFF862F),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'PetMaps',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/chip-1024x664.webp',
                  width: 631.0,
                  height: 170.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, -0.47),
                child: Container(
                  width: 424.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).info,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Text(
                      'Microchip',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 1.00),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('conclusao');
                  },
                  text: 'Conclusão',
                  options: FFButtonOptions(
                    width: 389.0,
                    height: 67.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFFF862F),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Color(0xFFFF862F),
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.56),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('vantagens');
                  },
                  text: 'Vantagens',
                  options: FFButtonOptions(
                    width: 389.0,
                    height: 67.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFFF862F),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 1.0,
                    borderSide: BorderSide(
                      color: Color(0xFFFF862F),
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.12),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('info');
                  },
                  text: 'Informações',
                  options: FFButtonOptions(
                    width: 389.0,
                    height: 67.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFFF862F),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 1.0,
                    borderSide: BorderSide(
                      color: Color(0xFFFF862F),
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.34),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('implementacao');
                  },
                  text: 'Implementação',
                  options: FFButtonOptions(
                    width: 389.0,
                    height: 67.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFFF862F),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 1.0,
                    borderSide: BorderSide(
                      color: Color(0xFFFF862F),
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.78),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('custo');
                  },
                  text: 'Custo',
                  options: FFButtonOptions(
                    width: 389.0,
                    height: 67.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFFF862F),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 1.0,
                    borderSide: BorderSide(
                      color: Color(0xFFFF862F),
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, -0.20),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('historico');
                  },
                  text: 'Acessar  Históricos',
                  options: FFButtonOptions(
                    width: 273.0,
                    height: 52.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).info,
                    textStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
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
                alignment: AlignmentDirectional(-0.61, -0.19),
                child: Icon(
                  Icons.location_on,
                  color: Color(0xFFE33924),
                  size: 35.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
