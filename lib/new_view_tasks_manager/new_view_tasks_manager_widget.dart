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
import 'new_view_tasks_manager_model.dart';
export 'new_view_tasks_manager_model.dart';

class NewViewTasksManagerWidget extends StatefulWidget {
  const NewViewTasksManagerWidget({Key? key}) : super(key: key);

  @override
  _NewViewTasksManagerWidgetState createState() =>
      _NewViewTasksManagerWidgetState();
}

class _NewViewTasksManagerWidgetState extends State<NewViewTasksManagerWidget> {
  late NewViewTasksManagerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewViewTasksManagerModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateTaskFinalCopyWidget(),
              ),
            );
          },
          backgroundColor: Color(0xFF013576),
          elevation: 10.0,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30.0,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF013576),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Team Or MemberTask',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Open Sans',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0x4E000000),
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Text(
                              'Complete Tasks',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                            ),
                            collapsed: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  'Number of Tasks: #',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.newTaskModel1,
                                  updateCallback: () => setState(() {}),
                                  child: NewTaskWidget(),
                                ),
                                wrapWithModel(
                                  model: _model.newTaskModel2,
                                  updateCallback: () => setState(() {}),
                                  child: NewTaskWidget(),
                                ),
                                wrapWithModel(
                                  model: _model.newTaskModel3,
                                  updateCallback: () => setState(() {}),
                                  child: NewTaskWidget(),
                                ),
                                wrapWithModel(
                                  model: _model.newTaskModel4,
                                  updateCallback: () => setState(() {}),
                                  child: NewTaskWidget(),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0x4E000000),
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: ExpandableNotifier(
                          initialExpanded: false,
                          child: ExpandablePanel(
                            header: Text(
                              'Incomplete Tasks',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Colors.black,
                                  ),
                            ),
                            collapsed: Container(
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  'Number of Tasks: #',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Color(0x8A000000),
                                      ),
                                ),
                              ),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.newTaskModel5,
                                  updateCallback: () => setState(() {}),
                                  child: NewTaskWidget(),
                                ),
                                wrapWithModel(
                                  model: _model.newTaskModel6,
                                  updateCallback: () => setState(() {}),
                                  child: NewTaskWidget(),
                                ),
                                wrapWithModel(
                                  model: _model.newTaskModel7,
                                  updateCallback: () => setState(() {}),
                                  child: NewTaskWidget(),
                                ),
                                wrapWithModel(
                                  model: _model.newTaskModel8,
                                  updateCallback: () => setState(() {}),
                                  child: NewTaskWidget(),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
