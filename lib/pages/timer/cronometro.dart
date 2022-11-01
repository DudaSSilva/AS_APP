import 'dart:async';
import 'package:flutter/material.dart';
import '../../widget/timer.dart';

class Cronometro extends StatefulWidget {
  const Cronometro({Key? key}) : super(key: key);

  @override
  _CronometroState createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {

  static const maxSeconds = 60;
  int seconds = maxSeconds;
  Timer? timer;

  void resetTimer() => setState(() => seconds = maxSeconds);

  void startTimer( {bool reset = false}){
    if(reset){
      resetTimer();
    }

    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0){
        seconds--;
        print('alo! ${seconds} ');
      } else {
        stopTimer(reset: false);
      }

      setState(() {
        seconds;
      });

    });
  }

  void stopTimer({bool reset = true}) {
    if(reset) {
      resetTimer();
    }
    setState(() => timer?.cancel());
  }

  void setState(void Function() param0) {
  }

  @override

  Widget build(BuildContext context) {
  return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildTimer(),
              const SizedBox (height: 80),
              buildButtons(),
            ],
          ),
        ),
  );
  }

  Widget buildButtons() {
    final isRunning = timer == null? false: timer!.isActive;
    final isCompleted = seconds == maxSeconds || seconds == 0;

    return isRunning || !isCompleted
        ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonWidget(
          text: isRunning? 'Pause!' : 'Resume',
          onClicked: (){
            if(isRunning) {
              stopTimer( reset: false);
            } else{
              startTimer(reset: true);
            }

          },
        ),
        const SizedBox(width: 12),
        ButtonWidget(
          text: 'Cancel!',
          onClicked: stopTimer,
        ),
      ],

    )

        : ButtonWidget(
      text: 'Start Timer!',
      color : Colors.black,
      backgroundColor : Colors.white,
      onClicked: () {
        startTimer();
      },
    );
  }

  Widget buildTimer() => SizedBox(
    width: 200,
    height: 200,
    child: Stack(
      fit: StackFit.expand,
      children: [
        CircularProgressIndicator(
          value: 1 - seconds / maxSeconds,
          valueColor: AlwaysStoppedAnimation(Colors.white),
          strokeWidth: 12,
          backgroundColor: Colors.greenAccent,
        ),
        Center(child: buildTime()),
      ],
    ),
  );



  Widget buildTime() {
    if (seconds == 0) {
      return Icon(Icons.done, color: Colors.greenAccent, size: 112);
    } else {
      return Text(
        '${seconds}',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 80,
        ),
      );
    }
  }

}
