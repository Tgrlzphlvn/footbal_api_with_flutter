import 'package:flutter/material.dart';
import 'package:football_leagues/features/model/league.dart';
import 'package:football_leagues/features/model/leagues.dart';
import 'package:football_leagues/features/service/dio/dio_options.dart';
import 'package:football_leagues/features/service/leagues_service.dart';
import 'package:football_leagues/features/viewModel/league_table_view_model.dart';
import 'package:football_leagues/product/constants/project_constants.dart';
import 'package:football_leagues/product/widgets/league_list_cell.dart';
import 'package:provider/provider.dart';

class LeagueTableView extends StatelessWidget
    with ProjectConstants, ProjectPaddings {
  LeagueTableView({
    Key? key,
    required this.leagueKey,
  }) : super(key: key);

  final ResultsOfLeagues leagueKey;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LeagueTableViewModel>(
      create: (context) => LeagueTableViewModel(
          LeaguesService(DioOptions.dioOptions),
          leagueName: leagueKey.key),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(leagueKey.league ?? nullString),
          ),
          body: context.watch<LeagueTableViewModel>().isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Padding(
                  padding: normalPadding,
                  child: ListView.builder(
                    itemCount:
                        context.watch<LeagueTableViewModel>().league?.length ?? 0,
                    itemBuilder: (context, index) {
                      LeagueResults? model =
                          context.read<LeagueTableViewModel>().league?[index];
                      return LeagueListCell(model: model ?? LeagueResults());
                    },
                  ),
                ),
        );
      },
    );
  }
}
