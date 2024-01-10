import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class RiveWaterbar extends StatefulWidget {
  const RiveWaterbar({Key? key}) : super(key: key);

  @override
  State<RiveWaterbar> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<RiveWaterbar> {
  StateMachineController? controller;
  SMIInput<double>? inputValue;

  double currentLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          RiveAnimation.asset(
            "assets/rive/water-bar-demo.riv",
            fit: BoxFit.cover,
            onInit: (artboard) {
              controller = StateMachineController.fromArtboard(
                artboard,
                "State Machine",
              );

              if (controller != null) {
                artboard.addController(controller!);
                inputValue = controller?.findInput("Level");
                inputValue?.change(currentLevel);
              }
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentLevel--;
                    });
                    inputValue?.change(currentLevel);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.red,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentLevel++;
                    });
                    inputValue?.change(currentLevel);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
