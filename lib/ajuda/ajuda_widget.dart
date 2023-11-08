import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'ajuda_model.dart';
export 'ajuda_model.dart';

class AjudaWidget extends StatefulWidget {
  const AjudaWidget({Key? key}) : super(key: key);

  @override
  _AjudaWidgetState createState() => _AjudaWidgetState();
}

class _AjudaWidgetState extends State<AjudaWidget> {
  late AjudaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AjudaModel());

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
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: GradientText(
                        'Está precisando de ajuda?',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                        colors: [
                          FlutterFlowTheme.of(context).primary,
                          FlutterFlowTheme.of(context).primary
                        ],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
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
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).info,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.35),
                      child: Text(
                        '   Faça perguntas e obtenha suas respostas pelo e-mail cadastrado. Ou entre em contato conosco.\n\n\n\n\n\n\n\n\n\n\n\n\n\n',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, -0.71),
                      child: Text(
                        '  A central de ajuda responderá todas suas dúvidas e sobre sua conta do aplicativo.\n',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.29, -1.04),
                      child: Text(
                        'Seja  bem-vindo a central de ajuda do PETMAPS.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16.0,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.51, -0.21),
                      child: Text(
                        '\nPetmaps@gmail.com',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              decoration: TextDecoration.underline,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.89, -0.16),
                      child: Icon(
                        Icons.email_outlined,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
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
