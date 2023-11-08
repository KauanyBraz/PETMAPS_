import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'createpet_widget.dart' show CreatepetWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CreatepetModel extends FlutterFlowModel<CreatepetWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for nome_pet widget.
  FocusNode? nomePetFocusNode;
  TextEditingController? nomePetController;
  String? Function(BuildContext, String?)? nomePetControllerValidator;
  // State field(s) for id_microchip widget.
  FocusNode? idMicrochipFocusNode;
  TextEditingController? idMicrochipController;
  String? Function(BuildContext, String?)? idMicrochipControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoController;
  String? Function(BuildContext, String?)? descricaoControllerValidator;
  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepController;
  String? Function(BuildContext, String?)? cepControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nomePetFocusNode?.dispose();
    nomePetController?.dispose();

    idMicrochipFocusNode?.dispose();
    idMicrochipController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoController?.dispose();

    cepFocusNode?.dispose();
    cepController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
