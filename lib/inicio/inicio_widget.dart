import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inicio_model.dart';
export 'inicio_model.dart';

class InicioWidget extends StatefulWidget {
  const InicioWidget({Key? key}) : super(key: key);

  @override
  _InicioWidgetState createState() => _InicioWidgetState();
}

class _InicioWidgetState extends State<InicioWidget> {
  late InicioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InicioModel());

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
        backgroundColor: Colors.white,
        body: Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Container(
            width: double.infinity,
            constraints: BoxConstraints(
              maxWidth: 670.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).info,
              border: Border.all(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.00, 1.00),
                        child: Container(
                          width: 380.0,
                          height: 392.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).info,
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: AnimatedContainer(
                                      duration: Duration(milliseconds: 170),
                                      curve: Curves.easeInOut,
                                      width: 228.0,
                                      height: 217.0,
                                      decoration: BoxDecoration(
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: Image.asset(
                                            'assets/images/logolaranja.jpeg',
                                          ).image,
                                        ),
                                        border: Border.all(
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                      alignment:
                                          AlignmentDirectional(0.00, 0.00),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.00, 1.00),
                                  child: Text(
                                    'PETMAPS',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 16.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('createtutor');
                                      },
                                      text: 'Inscreva-se com e-mail',
                                      icon: Icon(
                                        Icons.mail_outline_outlined,
                                        color: Colors.white,
                                        size: 24.0,
                                      ),
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 60.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 12.0, 0.0),
                                        color: Color(0xFFFF862F),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                        elevation: 0.0,
                                        borderSide: BorderSide(
                                          color: Color(0xFFFF862F),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        hoverColor: Color(0xFF101213),
                                        hoverTextColor: Color(0xFFFF862F),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(7.00, -15.00),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  context.pushNamed('login');
                                },
                                text: 'Logar',
                                options: FFButtonOptions(
                                  width: 125.0,
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 10.0,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.00, 1.00),
                              child: Stack(
                                alignment: AlignmentDirectional(0.0, -1.0),
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.00, 0.00),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 64.0),
                                      child: RichText(
                                        textScaleFactor: MediaQuery.of(context)
                                            .textScaleFactor,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'já tem uma conta?',
                                              style: TextStyle(),
                                            ),
                                            TextSpan(
                                              text: '',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily:
                                                        'Plus Jakarta Sans',
                                                    color: Color(0xFF101213),
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                color: Color(0xFF57636C),
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.29, 0.56),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          1.0, 55.0, 55.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed('login');
                                        },
                                        text: 'Logar',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFFFF862F),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
