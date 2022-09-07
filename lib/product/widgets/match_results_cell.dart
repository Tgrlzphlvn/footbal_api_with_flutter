import 'package:flutter/material.dart';
import 'package:football_leagues/features/model/match_results.dart';
import 'package:football_leagues/product/constants/project_constants.dart';

class MatchResultsCell extends StatelessWidget
    with ProjectConstants, ProjectPaddings {
  MatchResultsCell({Key? key, required this.model}) : super(key: key);

  final MatchResults model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: normalPaddingValue, left: normalPaddingValue),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(model.home ?? nullString),
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(model.score ?? nullString),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Text(model.away ?? nullString),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
