import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'implementacao_model.dart';
export 'implementacao_model.dart';

class ImplementacaoWidget extends StatefulWidget {
  const ImplementacaoWidget({Key? key}) : super(key: key);

  @override
  _ImplementacaoWidgetState createState() => _ImplementacaoWidgetState();
}

class _ImplementacaoWidgetState extends State<ImplementacaoWidget> {
  late ImplementacaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImplementacaoModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Color(0xFFFF862F),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'PetMaps',
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
              Stack(
                children: [
                  Container(
                    width: 481.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).info,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Text(
                        'Implementação',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primary,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 490.0,
                height: 549.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).info,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.64),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Text(
                          'A aplicação do microchip é feita com uma seringa, sem a necessidade de  anestesia, como uma injeção comum. Sendo aplicado na parte de trás do pescoço do animal, entre as omoplatas, evitando a migração do dispositivo. Algumas empresas usam uma cobertura que une o tecido fibroso com a capsula do microchip, feita de um estojo de polímetro poroso. Depois de alguns testes, foi visto que as cápsulas permaneceram no local implantado, em ótimas condições de leitura por 18 meses, sem drenagens, crescimentos, tumores ou inflamações. Já a leitura, é conduzida por leitores que contém um digitalizador (scanner), que lê o sinal respondido pelo chip por uma frequência de rádio, após a leitura, as informações são mostradas no visor.  (MATIELI; CURTO, 2009, p. 3).\n',
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 14.0,
                                    lineHeight: 1.5,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, -0.98),
                      child: Container(
                        width: 439.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFBAC8DA),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/veterinrio.jpg',
                            ).image,
                          ),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 464.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFF862F),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
