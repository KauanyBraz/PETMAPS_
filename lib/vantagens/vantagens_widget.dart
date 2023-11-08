import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vantagens_model.dart';
export 'vantagens_model.dart';

class VantagensWidget extends StatefulWidget {
  const VantagensWidget({Key? key}) : super(key: key);

  @override
  _VantagensWidgetState createState() => _VantagensWidgetState();
}

class _VantagensWidgetState extends State<VantagensWidget> {
  late VantagensModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VantagensModel());

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
        backgroundColor: FlutterFlowTheme.of(context).info,
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
                        'Vantagens',
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFFFF862F),
                                  fontSize: 25.0,
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
                      alignment: AlignmentDirectional(0.00, 0.14),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Text(
                          'O microchip não precisa de nenhum tipo de manutenção ou recarga, sendo apenas ativado pelos leitores, por isso eles tem uma longa duração, servindo para toda a vida de seu pet.  Há grande facilidade de identificação do proprietário na circunstância de o cão se encontrar perdido, já que os dados são armazenados em um banco geral para todos os pets, essa mesma identificação  inequívoca do cão em caso de roubo, ainda responsabiliza o dono no caso de ele abandonar o cão.',
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.5,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, -0.98),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: 387.0,
                          height: 161.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                            image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              alignment: AlignmentDirectional(0.00, 1.00),
                              image: Image.asset(
                                'assets/images/06-07-blog.jpg',
                              ).image,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 20.0,
                                color: Color(0xF3939393),
                                offset: Offset(0.0, 2.0),
                                spreadRadius: 5.0,
                              )
                            ],
                            shape: BoxShape.rectangle,
                          ),
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
