import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'custo_model.dart';
export 'custo_model.dart';

class CustoWidget extends StatefulWidget {
  const CustoWidget({Key? key}) : super(key: key);

  @override
  _CustoWidgetState createState() => _CustoWidgetState();
}

class _CustoWidgetState extends State<CustoWidget> {
  late CustoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustoModel());

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
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Text(
                        'Custo',
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
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).info,
                  ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, -0.08),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Text(
                          'O custo de implantação de um microchip pode variar entre R\$80,00 e R\$200,00, porém, sua durabilidade chega há 25 anos, ou seja, a vida toda do seu pet.\n\nAlém do fato de que depois que for implantado, o chip não precisa de nenhum cuidado especial.',
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    lineHeight: 1.5,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, -0.98),
                      child: Container(
                        width: 439.0,
                        height: 161.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/chip-1024x664.webp',
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
