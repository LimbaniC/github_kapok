import '/components/new_task_widget.dart';
import '/create_task_final_copy/create_task_final_copy_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewViewTasksManagerModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for newTask component.
  late NewTaskModel newTaskModel1;
  // Model for newTask component.
  late NewTaskModel newTaskModel2;
  // Model for newTask component.
  late NewTaskModel newTaskModel3;
  // Model for newTask component.
  late NewTaskModel newTaskModel4;
  // Model for newTask component.
  late NewTaskModel newTaskModel5;
  // Model for newTask component.
  late NewTaskModel newTaskModel6;
  // Model for newTask component.
  late NewTaskModel newTaskModel7;
  // Model for newTask component.
  late NewTaskModel newTaskModel8;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    newTaskModel1 = createModel(context, () => NewTaskModel());
    newTaskModel2 = createModel(context, () => NewTaskModel());
    newTaskModel3 = createModel(context, () => NewTaskModel());
    newTaskModel4 = createModel(context, () => NewTaskModel());
    newTaskModel5 = createModel(context, () => NewTaskModel());
    newTaskModel6 = createModel(context, () => NewTaskModel());
    newTaskModel7 = createModel(context, () => NewTaskModel());
    newTaskModel8 = createModel(context, () => NewTaskModel());
  }

  void dispose() {
    newTaskModel1.dispose();
    newTaskModel2.dispose();
    newTaskModel3.dispose();
    newTaskModel4.dispose();
    newTaskModel5.dispose();
    newTaskModel6.dispose();
    newTaskModel7.dispose();
    newTaskModel8.dispose();
  }

  /// Additional helper methods are added here.

}
