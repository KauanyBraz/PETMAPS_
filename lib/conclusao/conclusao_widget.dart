import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'conclusao_model.dart';
export 'conclusao_model.dart';

class ConclusaoWidget extends StatefulWidget {
  const ConclusaoWidget({Key? key}) : super(key: key);

  @override
  _ConclusaoWidgetState createState() => _ConclusaoWidgetState();
}

class _ConclusaoWidgetState extends State<ConclusaoWidget> {
  late ConclusaoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConclusaoModel());

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Text(
                        'Conclusão',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFFFF862F),
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
                      alignment: AlignmentDirectional(0.00, 0.57),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Text(
                          'Concluímos que a microchipagem de animais é a forma mais segura de bem-estar do seu pet, possibilitando um cuidado mais preciso em relação ao animal. \n\nApesar de já ter sido provado e garantido a segurança do microchip, ainda é um método pouco usado por tutores de pets.\n\nAinda, considerando que o microchip não interfere na saúde do pet, ele é bem aceito na sociedade científica, possuindo apenas vantagens em sua inserção, pois as desvantagens que a aplicação do microchip apresenta, conforme os autores pesquisados, são irrelevantes comparados à importância do mesmo para a saúde animal. \n',
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, -0.98),
                      child: Container(
                        width: 387.0,
                        height: 161.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/microchip.jpg',
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
