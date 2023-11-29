import '../create_task_final_copy/create_task_final_copy_widget.dart';
import '../kapok_map/kapok_map_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'teams_model.dart';
export 'teams_model.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';

// Buttons are reversed in terms of background color and text color
// Are 'Create Team' and 'Join Team' considered heading? - dont have black color
// Input also seems different

// TODO: Overflow of display

class TeamsWidget extends StatefulWidget {
  const TeamsWidget({Key? key}) : super(key: key);

  @override
  _TeamsWidgetState createState() => _TeamsWidgetState();
}

class _TeamsWidgetState extends State<TeamsWidget> {
  late TeamsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamsModel());

    //??= to only override values if initially null. Normal for set-up
    _model.teamNameController ??= TextEditingController();
    _model.locationController ??= TextEditingController();
    _model.enterTeamNumController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF8F6F6),
      appBar: getAppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        decoration: BoxDecoration(
          color: Color(0xFF14181B),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            getLogoSection(),
            getPageContent(),
          ],
        ),
      ),
    );
  }

  /// Returns the appbar for this page - just a back button that pop's from the navigator stack <br/>
  /// Copied appbar from one of the other pages to maintain consistency
  PreferredSize getAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(60.0),
      child: AppBar(
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
          onPressed: () {
            print('IconButton pressed ...');
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Teams',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Lexend Deca',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
    );
  }

  /// Returns the Kapok logo bar that is at the top of the web page
  Padding getLogoSection() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          color: Color(0xFF14181B),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.width * 0.2,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              'assets/images/Kapok_2-modified.png',
            ),
          ),
        ),
      ),
    );
  }

  /// Returns the page content - creating and joining team input boxes and buttons
  Padding getPageContent() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: MediaQuery.of(context).size.height * 1.0,
        decoration: BoxDecoration(
          color: Color(0xFF013576),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(45.0),
            topRight: Radius.circular(45.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            getCreateTeamInputWidget(),
            getCreateTeamButton(),
            getJoinTeamInputWidget(),
            getJoinTeamButtom(),
          ],
        ),
      ),
    );
  }

  /// Returns the create team button
  Align getCreateTeamButton() {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
        child: FFButtonWidget(
          onPressed: () {
            print('Button pressed ...');
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateTaskFinalCopyWidget()));
          },
          text: 'Create',
          // TODO: Colors for button and text seem to be reversed
          options: FFButtonOptions(
            width: 130.0,
            height: 40.0,
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: Colors.white,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Open Sans',
                  color: Color(0xFF013576),
                ),
            elevation: 2.0,
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(90.0),
          ),
        ),
      ),
    );
  }

  /// Returns the join team button
  Padding getJoinTeamButtom() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => KapokMapWidget()));
        },
        text: 'Join',
        // TODO: Colors for button and text seem to be reversed
        options: FFButtonOptions(
          width: 130.0,
          height: 40.0,
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: Colors.white,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Open Sans',
                color: Color(0xFF013576),
              ),
          elevation: 2.0,
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(90.0),
        ),
      ),
    );
  }

  /// Returns the create team input box
  Align getCreateTeamInputWidget() {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.28,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              getCTWIsHeader(),
              Expanded(child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                double innerWidth = constraints.maxWidth * 0.9;
                double innerHeight = constraints.maxHeight * 0.4;
                return getCTWIsNamebox(innerWidth, innerHeight);
              })),
              Expanded(child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                double innerWidth = constraints.maxWidth * 0.9;
                double innerHeight = constraints.maxHeight * 0.4;
                return getCTWIsLocBox(innerWidth, innerHeight);
              })),
            ],
          ),
        ),
      ),
    );
  }

  /// Returns the join team input box
  Align getJoinTeamInputWidget() {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.18,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              getJTWIsHeader(),
              Expanded(child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                double innerWidth = constraints.maxWidth * 0.9;
                double innerHeight = constraints.maxHeight * 0.8;
                return getJTWIsTeamCodeBox(innerWidth, innerHeight);
              })),
            ],
          ),
        ),
      ),
    );
  }

  /////////////////////////////////////////////////////////////////
  /// Helpers that return sub widgets for create team input box
  /////////////////////////////////////////////////////////////////

  /// gets the name input box for the create team box
  Container getCTWIsNamebox(innerWidth, innerHeight) {
    return Container(
      width: innerWidth,
      height: innerHeight,
      // width: MediaQuery.of(context).size.width * 0.7,
      // height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
        child: TextFormField(
          controller: _model.teamNameController,
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Team Name',
            labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF95A1AC),
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
            hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF95A1AC),
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF013576),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
            prefixIcon: Icon(
              Icons.group,
              color: Color(0xFF013576),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Open Sans',
                color: Color(0xFF14181B),
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
          textAlign: TextAlign.center,
          validator: _model.teamNameControllerValidator.asValidator(context),
        ),
      ),
    );
  }

  /// gets the location input box for the create team box
  Container getCTWIsLocBox(innerWidth, innerHeight) {
    return Container(
      width: innerWidth,
      height: innerHeight,
      // width: MediaQuery.of(context).size.width * 0.7,
      // height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
        child: TextFormField(
          controller: _model.locationController,
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Location',
            labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF95A1AC),
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
            hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF95A1AC),
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF013576),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
            prefixIcon: Icon(
              Icons.map,
              color: Color(0xFF013576),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Open Sans',
                color: Color(0xFF14181B),
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
          textAlign: TextAlign.center,
          validator: _model.locationControllerValidator.asValidator(context),
        ),
      ),
    );
  }

  /// gets the header for the create team box
  Align getCTWIsHeader() {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
        child: Text(
          'Create Team',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Open Sans',
                color: Color(0xFF013576),
                fontSize: 24.0,
              ),
        ),
      ),
    );
  }

  /////////////////////////////////////////////////////////////////
  /// Helpers that return sub widgets for join team input box
  /////////////////////////////////////////////////////////////////

  /// gets the header for the join team box
  Padding getJTWIsHeader() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
      child: Text(
        'Join Team',
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Open Sans',
              color: Color(0xFF013576),
              fontSize: 24.0,
            ),
      ),
    );
  }

  Container getJTWIsTeamCodeBox(innerWidth, innerHeight) {
    return Container(
      width: innerWidth,
      height: innerHeight,
      // width: MediaQuery.of(context).size.width * 0.7,
      // height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
        child: TextFormField(
          controller: _model.enterTeamNumController,
          obscureText: false,
          decoration: InputDecoration(
            labelText: 'Team Code',
            labelStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF95A1AC),
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
            hintStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF95A1AC),
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF013576),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0x00000000),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(90.0),
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
            prefixIcon: Icon(
              Icons.library_add_check_outlined,
              color: Color(0xFF013576),
            ),
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Open Sans',
                color: Color(0xFF14181B),
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
              ),
          textAlign: TextAlign.center,
          validator:
              _model.enterTeamNumControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
