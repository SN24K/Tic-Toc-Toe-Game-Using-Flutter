import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:tic_toc_toe_game/Widgets/wrapper_container.dart';
import 'package:tic_toc_toe_game/pages/game_base_screen.dart';
import 'package:tic_toc_toe_game/pages/players_names_page.dart';
import 'package:tic_toc_toe_game/theme/colors.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WrapperContainer(
          child: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tic Tac Toe',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.permanentMarker().fontFamily,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15.h),
              MainMenuButtons(
                  btnText: 'Single Player',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const GameBaseScreen(
                                playerOName: "AI",
                                playerXName: "You",
                                isAgainstAI: true)));
                  }),
              SizedBox(
                height: 2.h,
              ),
              MainMenuButtons(
                  btnText: 'MultiPlayer',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PlayerNames()));
                  })
            ],
          ),
        ),
      )),
    );
  }
}

class MainMenuButtons extends StatelessWidget {
  const MainMenuButtons(
      {super.key, required this.btnText, required this.onPressed});

  final String btnText;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: 60.w,
        height: 8.h,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: GameColors.kForeground,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            btnText,
            style: TextStyle(
              color: GameColors.kWhitish,
              fontFamily: GoogleFonts.permanentMarker().fontFamily,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}
