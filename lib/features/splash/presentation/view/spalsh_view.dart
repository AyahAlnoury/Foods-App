import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yammy_app/core/utils/assets_manager.dart';
import 'package:yammy_app/features/home/presentation/view/home_view.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_cubit.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_state.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool _showFinalText = false;
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        return Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                AssetsManger.recipe3,
              ),
              fit: BoxFit.cover,
            )),
          ),
          Column(
            children: [
              const SizedBox(
                height: 220,
              ),
              Center(
                  child: SizedBox(
                      width: 250.0,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                        ),
                        child: _showFinalText
                            ? Text('What do you want to COOK today?')
                            : AnimatedTextKit(
                                displayFullTextOnTap: true,
                                totalRepeatCount: 1,
                                pause: Duration(milliseconds: 100),
                                animatedTexts: [
                                  FadeAnimatedText('Wtat do YOU'),
                                  FadeAnimatedText('Wtat do you WANT'),
                                  FadeAnimatedText(
                                      'Wtat do you want \n to COOK today?'),
                                ],
                                onFinished: () {
                                  setState(() {
                                    _showFinalText = true;
                                  });
                                },
                              ),
                      )))
              //   child: AnimatedTextKit(animatedTexts: [
              // TypewriterAnimatedText(
              //   speed: Duration(seconds: 2),
              //   "What do you want \n to cook today?",
              //   textStyle: TextStyle(
              //     fontWeight: FontWeight.bold,
              //     fontSize: 25,
              //     color: Colors.white,
              //   ),
              ,
              // ])),
              const SizedBox(
                height: 60,
              ),
              // const Center(
              //   child: Text(
              //     "Let’s make a delicious dish with \n the best recipe for the family",
              //     style: TextStyle(
              //         fontWeight: FontWeight.w400,
              //         fontSize: 15,
              //         color: Colors.white),
              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.zero,
                width: 250,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeView()));
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(234, 243, 82, 106)),
                    ),
                    child: Center(
                      child: const Text(
                        'Start',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    )),
              ),
            ],
          ),
        ]);
      }),
    );
  }
}
