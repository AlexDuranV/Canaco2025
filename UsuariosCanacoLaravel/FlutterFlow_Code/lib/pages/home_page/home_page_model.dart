import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  int? currentIndex = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for NombreField widget.
  FocusNode? nombreFieldFocusNode;
  TextEditingController? nombreFieldTextController;
  String? Function(BuildContext, String?)? nombreFieldTextControllerValidator;
  String? _nombreFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    if (!RegExp('^[A-Za-z\\s]+\$').hasMatch(val)) {
      return 'Texto invalido';
    }
    return null;
  }

  // State field(s) for ApellidosField widget.
  FocusNode? apellidosFieldFocusNode;
  TextEditingController? apellidosFieldTextController;
  String? Function(BuildContext, String?)?
      apellidosFieldTextControllerValidator;
  String? _apellidosFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    if (!RegExp('^[A-Za-z\\s]+\$').hasMatch(val)) {
      return 'Texto invalido';
    }
    return null;
  }

  // State field(s) for EmailField widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldTextController;
  String? Function(BuildContext, String?)? emailFieldTextControllerValidator;
  String? _emailFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Texto invalido';
    }
    return null;
  }

  // State field(s) for DireccionField widget.
  FocusNode? direccionFieldFocusNode;
  TextEditingController? direccionFieldTextController;
  String? Function(BuildContext, String?)?
      direccionFieldTextControllerValidator;
  String? _direccionFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    if (!RegExp('^[#.0-9a-zA-Z\\s,-]+\$').hasMatch(val)) {
      return 'Texto invalido';
    }
    return null;
  }

  // State field(s) for EstablecimientoDropDown widget.
  String? establecimientoDropDownValue;
  FormFieldController<String>? establecimientoDropDownValueController;
  // State field(s) for MontoField widget.
  FocusNode? montoFieldFocusNode;
  TextEditingController? montoFieldTextController;
  String? Function(BuildContext, String?)? montoFieldTextControllerValidator;
  String? _montoFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    return null;
  }

  // State field(s) for FechaField widget.
  FocusNode? fechaFieldFocusNode;
  TextEditingController? fechaFieldTextController;
  final fechaFieldMask = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)? fechaFieldTextControllerValidator;
  String? _fechaFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    if (!RegExp('^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}\$')
        .hasMatch(val)) {
      return 'Texto invalido';
    }
    return null;
  }

  // State field(s) for TelefonoField widget.
  FocusNode? telefonoFieldFocusNode;
  TextEditingController? telefonoFieldTextController;
  final telefonoFieldMask = MaskTextInputFormatter(mask: '+## #### ## ## ##');
  String? Function(BuildContext, String?)? telefonoFieldTextControllerValidator;
  String? _telefonoFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Es necesario llenar este campo';
    }

    return null;
  }

  bool isDataUploading_uploadDataYpu = false;
  FFUploadedFile uploadedLocalFile_uploadDataYpu =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataYpu = '';

  @override
  void initState(BuildContext context) {
    nombreFieldTextControllerValidator = _nombreFieldTextControllerValidator;
    apellidosFieldTextControllerValidator =
        _apellidosFieldTextControllerValidator;
    emailFieldTextControllerValidator = _emailFieldTextControllerValidator;
    direccionFieldTextControllerValidator =
        _direccionFieldTextControllerValidator;
    montoFieldTextControllerValidator = _montoFieldTextControllerValidator;
    fechaFieldTextControllerValidator = _fechaFieldTextControllerValidator;
    telefonoFieldTextControllerValidator =
        _telefonoFieldTextControllerValidator;
  }

  @override
  void dispose() {
    nombreFieldFocusNode?.dispose();
    nombreFieldTextController?.dispose();

    apellidosFieldFocusNode?.dispose();
    apellidosFieldTextController?.dispose();

    emailFieldFocusNode?.dispose();
    emailFieldTextController?.dispose();

    direccionFieldFocusNode?.dispose();
    direccionFieldTextController?.dispose();

    montoFieldFocusNode?.dispose();
    montoFieldTextController?.dispose();

    fechaFieldFocusNode?.dispose();
    fechaFieldTextController?.dispose();

    telefonoFieldFocusNode?.dispose();
    telefonoFieldTextController?.dispose();
  }
}
