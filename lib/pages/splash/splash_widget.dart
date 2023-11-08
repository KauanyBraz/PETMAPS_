import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'splash_model.dart';
export 'splash_model.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  late SplashModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashModel());

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
      backgroundColor: Color(0xFFFF862F),
      body: SafeArea(
        top: true,
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onDoubleTap: () async {
            context.pushNamed('inicio');
          },
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.06, -0.20),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 430),
                  curve: Curves.easeInOut,
                  width: 219.0,
                  height: 219.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).info,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: Image.asset(
                        'assets/images/logolaranja.jpeg',
                      ).image,
                    ),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).info,
                    ),
                  ),
                  alignment: AlignmentDirectional(0.00, 0.00),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.21),
                child: Text(
                  'PETMAPS',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.86),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('inicio');
                  },
                  text: 'ENTRAR',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).info,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFFFF862F),
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
