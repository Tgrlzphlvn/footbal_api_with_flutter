import 'package:flutter/material.dart';
import 'package:football_leagues/features/model/match_results.dart';
import 'package:football_leagues/features/service/dio/dio_options.dart';
import 'package:football_leagues/features/service/leagues_service.dart';
import 'package:football_leagues/features/viewModel/league_table_view_model.dart';
import 'package:football_leagues/product/constants/project_constants.dart';
import 'package:football_leagues/product/widgets/match_results_cell.dart';
import 'package:provider/provider.dart';

class MatchResultsView extends StatelessWidget
    with ProjectConstants, ProjectPaddings {
  MatchResultsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LeagueTableViewModel>(
      create: (context) => LeagueTableViewModel(
        LeaguesService(DioOptions.dioOptions),
      ),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(matchResultsTitle),
          ),
          body: ListView.builder(
            itemCount:
                context.watch<LeagueTableViewModel>().matchResults?.length ?? 0,
            itemBuilder: (context, index) {
              MatchResults model =
                  context.read<LeagueTableViewModel>().matchResults?[index] ??
                      MatchResults();
              return Padding(
                padding: normalPadding,
                child: MatchResultsCell(model: model),
              );
            },
          ),
        );
      },
    );
  }
}
