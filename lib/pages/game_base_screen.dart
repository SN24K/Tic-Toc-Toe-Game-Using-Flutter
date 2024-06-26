import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tic_toc_toe_game/Widgets/history_modle.dart';
import 'package:tic_toc_toe_game/pages/game_screen.dart';
import 'package:tic_toc_toe_game/theme/colors.dart';

class GameBaseScreen extends HookWidget {
  const GameBaseScreen({
    Key? key,
    required this.isAgainstAI,
    required this.playerXName,
    required this.playerOName,
  }) : super(key: key);

  final String playerXName;
  final String playerOName;
  final bool isAgainstAI;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: GameColors.kGradient1,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_outlined,
              color: GameColors.kWhitish,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                buildHistoryBottomSheet(context);
              },
              icon: const Icon(
                Icons.history_outlined,
                color: GameColors.kWhitish,
              ),
            ),
          ],
        ),
        body: GameScreen(
          playerXName: playerXName,
          playerOName: playerOName,
          isAgainstAI: isAgainstAI,
        ),
      );
}
