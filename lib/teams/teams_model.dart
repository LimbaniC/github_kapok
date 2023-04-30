import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeamsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TeamName widget.
  TextEditingController? teamNameController;
  String? Function(BuildContext, String?)? teamNameControllerValidator;
  // State field(s) for Location widget.
  TextEditingController? locationController;
  String? Function(BuildContext, String?)? locationControllerValidator;
  // State field(s) for Enter_TeamNum widget.
  TextEditingController? enterTeamNumController;
  String? Function(BuildContext, String?)? enterTeamNumControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    teamNameController?.dispose();
    locationController?.dispose();
    enterTeamNumController?.dispose();
  }

  /// Additional helper methods are added here.

}
