import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'info_model.dart';
export 'info_model.dart';

class InfoWidget extends StatefulWidget {
  const InfoWidget({Key? key}) : super(key: key);

  @override
  _InfoWidgetState createState() => _InfoWidgetState();
}

class _InfoWidgetState extends State<InfoWidget> {
  late InfoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoModel());

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
        backgroundColor: FlutterFlowTheme.of(context).alternate,
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
                        'Informações',
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
                      alignment: AlignmentDirectional(0.00, 0.47),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Text(
                          'O microchip é um dispositivo menor que um grão de arroz (cerca de 1,25 x 7 mm) que serve para identificar o cachorro. Ele tem um número exclusivo, que o torna único e não pode ser alterado ou falsificado.\n\n\nSão uma forma de tecnologia de identificação automática, usados para armazenar e transmitir informações. Podem ser implantados tanto por meio de injeção ou procedimento cirúrgico. São utilizados sinais de radiofrequência para retransmitir as informações armazenadas.\n',
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
                          width: 355.0,
                          height: 161.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryText,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              alignment: AlignmentDirectional(0.00, 0.00),
                              image: Image.asset(
                                'assets/images/microchip.jpg',
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
              Align(
                alignment: AlignmentDirectional(0.00, 1.00),
                child: Container(
                  width: 428.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF862F),
                  ),
                  alignment: AlignmentDirectional(0.00, 1.00),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
