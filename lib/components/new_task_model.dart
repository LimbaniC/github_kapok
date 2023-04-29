import '/components/task_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewTaskModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for task component.
  late TaskModel taskModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    taskModel = createModel(context, () => TaskModel());
  }

  void dispose() {
    taskModel.dispose();
  }

  /// Additional helper methods are added here.

}
