import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:spanish_app/numberaudio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache audioPlayer = AudioCache();
  List<NumberAudio> numberList = [
    NumberAudio('one.wav', Colors.red, 'One'),
    NumberAudio('two.wav', Colors.blue, 'Two'),
    NumberAudio('three.wav', Colors.teal, 'Threee'),
    NumberAudio('four.wav', Colors.green, 'Four'),
    NumberAudio('five.wav', Colors.yellow, 'Five'),
    NumberAudio('six.wav', Colors.orange, 'Six'),
    NumberAudio('seven.wav', Colors.green, 'Seven'),
    NumberAudio('nine.wav', Colors.teal, 'Nine'),
    NumberAudio('eight.wav', Colors.red, 'Eight'),
    NumberAudio('ten.wav', Colors.red, 'Ten'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('spanish number'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            const Image(image: AssetImage('images/logo.png')),
            Expanded(
                child: GridView.builder(
              itemCount: numberList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (contex, i) => SizedBox(
                width: 100,
                height: 50,
                child: ElevatedButton(
                    onPressed: () => audioPlayer.play(numberList[i].audioUri),
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          numberList[i].buttonColor),
                    ),
                    child: Text(
                      numberList[i].buttonText,
                    )),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
