import 'package:flutter/material.dart';
import 'package:football_leagues/features/model/leagues.dart';
import 'package:football_leagues/features/service/dio/dio_options.dart';
import 'package:football_leagues/features/service/leagues_service.dart';
import 'package:football_leagues/features/viewModel/league_table_view_model.dart';
import 'package:football_leagues/product/constants/project_constants.dart';
import 'package:provider/provider.dart';

class LeaguesCard extends StatelessWidget with ProjectPaddings, ProjectConstants {
  LeaguesCard({Key? key, required this.model, this.onTap}) : super(key: key);

  final ResultsOfLeagues? model;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LeagueTableViewModel(
        LeaguesService(DioOptions.dioOptions),
        leagueName: model?.key ?? nullString,
      ),
      builder: (context, child) {
        return GestureDetector(
          onTap: onTap,
          child: Card(
            child: Padding(
              padding: normalPadding,
              child: Text(
                model?.league ?? nullString,
                style: ProjectTextStyle.mediumStyle,
              ),
            ),
          ),
        );
      },
    );
  }
}
