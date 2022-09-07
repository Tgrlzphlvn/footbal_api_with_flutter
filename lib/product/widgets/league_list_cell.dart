import 'package:flutter/material.dart';
import 'package:football_leagues/features/model/league.dart';
import 'package:football_leagues/product/constants/project_constants.dart';

class LeagueListCell extends StatelessWidget with ProjectConstants, ProjectPaddings {
  LeagueListCell({Key? key, required this.model}) : super(key: key);

  final LeagueResults model;
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
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Text(
                    '${model.rank}',
                    style: ProjectTextStyle.normalStyle,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Padding(
                    padding: EdgeInsets.only(left: normalPaddingValue),
                    child: Text(
                      model.team ?? nullString,
                      style: ProjectTextStyle.normalStyle,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  '${model.play}',
                  style: ProjectTextStyle.normalStyle,
                ),
                const Spacer(),
                Text(
                  '${model.win}',
                  style: ProjectTextStyle.normalStyle,
                ),
                const Spacer(),
                Text(
                  '${model.lose}',
                  style: ProjectTextStyle.normalStyle,
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                  child: Text(
                    '${model.point}',
                    style: ProjectTextStyle.normalStyle,
                  ),
                ),
              ],
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
