import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:tic_toc_toe_game/Widgets/history_list.dart';
import 'package:tic_toc_toe_game/theme/colors.dart';

void buildHistoryBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    backgroundColor: GameColors.kLighterForeground,
    shape: const RoundedRectangleBorder(
      // <-- SEE HERE
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(15.0),
      ),
    ),

    elevation: 0,
    isScrollControlled: true,
    // Enable scroll control for dynamic height
    context: context,
    builder: (context) {
      return SizedBox(
        height: 50.h, // Set the desired height
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: HistoryListView(),
        ),
      );
    },
  );
}
