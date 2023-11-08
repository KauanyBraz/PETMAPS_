import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.senhalogController ??= TextEditingController();
    _model.senhalogFocusNode ??= FocusNode();

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

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).info,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).info,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).info,
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Color(0xFFFF862F),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.pop();
                    },
                  ),
                ),
              ],
            ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
      ),
      body: Align(
        alignment: AlignmentDirectional(0.00, 1.00),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, -1.00),
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).info,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/logobranco.jpeg',
                    ).image,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, -1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                child: GradientText(
                  'Login',
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 32.0,
                        fontWeight: FontWeight.w500,
                      ),
                  colors: [Color(0xFFFF862F), Color(0xFFFF862F)],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                      child: Text(
                        'Acesse sua conta fazendo o login abaixo.',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFF57636C),
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 24.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Color(0x4D101213),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextFormField(
                  controller: _model.emailAddressController,
                  focusNode: _model.emailAddressFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF57636C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                    hintText: 'Entre com email  ',
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF57636C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 20.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  maxLines: null,
                  validator: _model.emailAddressControllerValidator
                      .asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 67.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.0,
                      color: Color(0x4D101213),
                      offset: Offset(0.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
                child: TextFormField(
                  controller: _model.senhalogController,
                  focusNode: _model.senhalogFocusNode,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'senha',
                    labelStyle: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'Outfit',
                          color: Color(0xFF57636C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                    hintText: 'senha',
                    hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF57636C),
                          fontSize: 14.0,
                          fontWeight: FontWeight.normal,
                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 0.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 20.0, 24.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF0F1113),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                  maxLines: null,
                  validator:
                      _model.senhalogControllerValidator.asValidator(context),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('mapa');
                },
                text: 'Login',
                options: FFButtonOptions(
                  width: 270.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFFF862F),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30.0, 44.0, 9.0, 0.0),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button-Login pressed ...');
                },
                text: 'Esqueceu a senha?',
                options: FFButtonOptions(
                  width: 170.0,
                  height: 50.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).info,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Outfit',
                        color: Color(0xFF57636C),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.underline,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
