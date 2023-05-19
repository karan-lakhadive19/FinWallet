import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/budget_details/budget_details_widget.dart';
import '/create_budget/create_budget_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_y_budgets_model.dart';
export 'm_y_budgets_model.dart';

class MYBudgetsWidget extends StatefulWidget {
  const MYBudgetsWidget({Key? key}) : super(key: key);

  @override
  _MYBudgetsWidgetState createState() => _MYBudgetsWidgetState();
}

class _MYBudgetsWidgetState extends State<MYBudgetsWidget>
    with TickerProviderStateMixin {
  late MYBudgetsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(0.0, 49.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 1.0,
          end: 1.0,
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 200.ms,
          begin: Offset(0.0, 51.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 200.ms,
          begin: 1.0,
          end: 1.0,
        ),
      ],
    ),
    'listViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 90.ms,
          duration: 150.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 90.ms,
          duration: 150.ms,
          begin: Offset(0.0, 26.0),
          end: Offset(0.0, 0.0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 90.ms,
          duration: 150.ms,
          begin: 1.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MYBudgetsModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            PageTransition(
              type: PageTransitionType.bottomToTop,
              duration: Duration(milliseconds: 220),
              reverseDuration: Duration(milliseconds: 220),
              child: CreateBudgetWidget(),
            ),
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).tertiary,
        elevation: 8.0,
        child: Icon(
          Icons.post_add_rounded,
          color: FlutterFlowTheme.of(context).textColor,
          size: 32.0,
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'cd0zp71n' /* My Budget */,
          ),
          style: FlutterFlowTheme.of(context).displaySmall,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 16.0),
                    child:
                        // Row(
                        //     mainAxisSize: MainAxisSize.max,
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Container(
                        //         width: MediaQuery.of(context).size.width * 0.44,
                        //         height: 140.0,
                        //         decoration: BoxDecoration(
                        //           color: FlutterFlowTheme.of(context)
                        //               .secondaryBackground,
                        //           boxShadow: [
                        //             BoxShadow(
                        //               blurRadius: 4.0,
                        //               color: Color(0x3F14181B),
                        //               offset: Offset(0.0, 3.0),
                        //             )
                        //           ],
                        //           borderRadius: BorderRadius.circular(8.0),
                        //         ),
                        //         child: Padding(
                        //           padding: EdgeInsetsDirectional.fromSTEB(
                        //               12.0, 12.0, 12.0, 12.0),
                        //           child: Column(
                        //             mainAxisSize: MainAxisSize.max,
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               Text(
                        //                 FFLocalizations.of(context).getText(
                        //                   'hfwbiivj' /* Income */,
                        //                 ),
                        //                 textAlign: TextAlign.start,
                        //                 style: FlutterFlowTheme.of(context).bodySmall,
                        //               ),
                        //               Padding(
                        //                 padding: EdgeInsetsDirectional.fromSTEB(
                        //                     0.0, 8.0, 0.0, 12.0),
                        //                 child: Text(
                        //                   FFLocalizations.of(context).getText(
                        //                     'jjj3ydb1' /* +$12,402 */,
                        //                   ),
                        //                   textAlign: TextAlign.start,
                        //                   style: FlutterFlowTheme.of(context)
                        //                       .displaySmall
                        //                       .override(
                        //                         fontFamily: 'Lexend',
                        //                         color: FlutterFlowTheme.of(context)
                        //                             .tertiary,
                        //                         fontSize: 32.0,
                        //                       ),
                        //                 ),
                        //               ),
                        //               Container(
                        //                 width: 80.0,
                        //                 height: 28.0,
                        //                 decoration: BoxDecoration(
                        //                   color: Color(0x4D39D2C0),
                        //                   borderRadius: BorderRadius.circular(8.0),
                        //                 ),
                        //                 child: Row(
                        //                   mainAxisSize: MainAxisSize.max,
                        //                   mainAxisAlignment: MainAxisAlignment.center,
                        //                   children: [
                        //                     Text(
                        //                       FFLocalizations.of(context).getText(
                        //                         'ns4vt604' /* 4.5%  */,
                        //                       ),
                        //                       textAlign: TextAlign.start,
                        //                       style: FlutterFlowTheme.of(context)
                        //                           .bodyMedium
                        //                           .override(
                        //                             fontFamily: 'Lexend',
                        //                             color:
                        //                                 FlutterFlowTheme.of(context)
                        //                                     .tertiary,
                        //                           ),
                        //                     ),
                        //                     Icon(
                        //                       Icons.trending_up_rounded,
                        //                       color: FlutterFlowTheme.of(context)
                        //                           .tertiary,
                        //                       size: 24.0,
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ).animateOnPageLoad(
                        //           animationsMap['containerOnPageLoadAnimation1']!),
                        //       Container(
                        //         width: MediaQuery.of(context).size.width * 0.44,
                        //         height: 140.0,
                        //         decoration: BoxDecoration(
                        //           color: FlutterFlowTheme.of(context)
                        //               .secondaryBackground,
                        //           boxShadow: [
                        //             BoxShadow(
                        //               blurRadius: 4.0,
                        //               color: Color(0x3F14181B),
                        //               offset: Offset(0.0, 3.0),
                        //             )
                        //           ],
                        //           borderRadius: BorderRadius.circular(8.0),
                        //         ),
                        //         child: Padding(
                        //           padding: EdgeInsetsDirectional.fromSTEB(
                        //               12.0, 12.0, 12.0, 12.0),
                        //           child: Column(
                        //             mainAxisSize: MainAxisSize.max,
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //             crossAxisAlignment: CrossAxisAlignment.start,
                        //             children: [
                        //               Text(
                        //                 FFLocalizations.of(context).getText(
                        //                   'wcsc04wg' /* Spending */,
                        //                 ),
                        //                 textAlign: TextAlign.start,
                        //                 style: FlutterFlowTheme.of(context).bodySmall,
                        //               ),
                        //               Padding(
                        //                 padding: EdgeInsetsDirectional.fromSTEB(
                        //                     0.0, 8.0, 0.0, 12.0),
                        //                 child: Text(
                        //                   FFLocalizations.of(context).getText(
                        //                     'a5zzlh8f' /* -$8,392 */,
                        //                   ),
                        //                   textAlign: TextAlign.start,
                        //                   style: FlutterFlowTheme.of(context)
                        //                       .displaySmall
                        //                       .override(
                        //                         fontFamily: 'Lexend',
                        //                         color: FlutterFlowTheme.of(context)
                        //                             .errorRed,
                        //                         fontSize: 32.0,
                        //                       ),
                        //                 ),
                        //               ),
                        //               Container(
                        //                 width: 80.0,
                        //                 height: 28.0,
                        //                 decoration: BoxDecoration(
                        //                   color: Color(0x9AF06A6A),
                        //                   borderRadius: BorderRadius.circular(8.0),
                        //                 ),
                        //                 child: Row(
                        //                   mainAxisSize: MainAxisSize.max,
                        //                   mainAxisAlignment: MainAxisAlignment.center,
                        //                   children: [
                        //                     Text(
                        //                       FFLocalizations.of(context).getText(
                        //                         '8xnbsdnb' /* 4.5%  */,
                        //                       ),
                        //                       textAlign: TextAlign.start,
                        //                       style: FlutterFlowTheme.of(context)
                        //                           .bodyMedium
                        //                           .override(
                        //                             fontFamily: 'Lexend',
                        //                             color:
                        //                                 FlutterFlowTheme.of(context)
                        //                                     .errorRed,
                        //                           ),
                        //                     ),
                        //                     Icon(
                        //                       Icons.trending_up_rounded,
                        //                       color: FlutterFlowTheme.of(context)
                        //                           .errorRed,
                        //                       size: 24.0,
                        //                     ),
                        //                   ],
                        //                 ),
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ).animateOnPageLoad(
                        //           animationsMap['containerOnPageLoadAnimation2']!),
                        //     ],
                        //   ),
                        // ),
                        StreamBuilder<List<BudgetsRecord>>(
                      stream: queryBudgetsRecord(
                        queryBuilder: (budgetsRecord) => budgetsRecord.where(
                            'userBudgets',
                            isEqualTo: currentUserReference),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: SpinKitPumpingHeart(
                                color: FlutterFlowTheme.of(context).primary,
                                size: 40.0,
                              ),
                            ),
                          );
                        }
                        List<BudgetsRecord> listViewBudgetsRecordList =
                            snapshot.data!;
                        if (listViewBudgetsRecordList.isEmpty) {
                          return Center(
                            child: Image.asset(
                              'assets/images/emptyBudgets@2x.png',
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 400.0,
                            ),
                          );
                        }
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewBudgetsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewBudgetsRecord =
                                listViewBudgetsRecordList[listViewIndex];
                            return Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 12.0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BudgetDetailsWidget(
                                        budgetDetails:
                                            listViewBudgetsRecord.reference,
                                      ),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 4.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                listViewBudgetsRecord
                                                    .budetName!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Lexend',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                                size: 16.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          formatNumber(
                                            listViewBudgetsRecord
                                                .budgetAmountNumber!,
                                            formatType: FormatType.decimal,
                                            decimalType: DecimalType.automatic,
                                            currency: '\$',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Lexend',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textColor,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  listViewBudgetsRecord
                                                      .budgetTime,
                                                  '4 Days Left',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily: 'Lexend',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                4.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'c81i1ybg' /* Total Spent */,
                                                      ),
                                                      textAlign: TextAlign.end,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodySmall
                                                          .override(
                                                            fontFamily:
                                                                'Lexend',
                                                            color: Color(
                                                                0xB3FFFFFF),
                                                            fontWeight:
                                                                FontWeight.w300,
                                                          ),
                                                    ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      formatNumber(
                                                        listViewBudgetsRecord
                                                            .budgetSpentNumber,
                                                        formatType:
                                                            FormatType.decimal,
                                                        decimalType: DecimalType
                                                            .periodDecimal,
                                                        currency: '',
                                                      ),
                                                      '\$22,000',
                                                    ),
                                                    textAlign: TextAlign.end,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Lexend',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textColor,
                                                        ),
                                                  ),
                                                ],
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
                          },
                        ).animateOnPageLoad(
                            animationsMap['listViewOnPageLoadAnimation']!);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
