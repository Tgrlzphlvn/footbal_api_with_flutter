import 'package:flutter/material.dart';
import 'package:football_leagues/features/model/leagues.dart';
import 'package:football_leagues/features/service/dio/dio_options.dart';
import 'package:football_leagues/features/service/leagues_service.dart';
import 'package:football_leagues/features/view/league_table_view.dart';
import 'package:football_leagues/features/view/match_results_view.dart';
import 'package:football_leagues/features/viewModel/leagues_view_model.dart';
import 'package:football_leagues/product/constants/project_constants.dart';
import 'package:football_leagues/product/widgets/leagues_card.dart';
import 'package:provider/provider.dart';

class LeaguesView extends StatelessWidget with ProjectConstants {
  LeaguesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LeaguesViewModel>(
      create: (context) => LeaguesViewModel(LeaguesService(DioOptions.dioOptions)),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              leaguesViewTitle,
              style: ProjectTextStyle.titleStyle,
            ),
            centerTitle: false,
            actions: [
              IconButton(
                icon: const Icon(Icons.list_alt),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MatchResultsView(),
                    ),
                  );
                },
              ),
            ],
          ),
          body: context.watch<LeaguesViewModel>().isLoading
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: context.watch<LeaguesViewModel>().leagues?.length ?? 0,
                  itemBuilder: (context, index) {
                    ResultsOfLeagues? model =
                        context.read<LeaguesViewModel>().leagues?[index];
                    return LeaguesCard(
                      model: model,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LeagueTableView(
                                leagueKey: model ?? ResultsOfLeagues()),
                          ),
                        );
                      },
                    );
                  },
                ),
        );
      },
    );
  }
}
