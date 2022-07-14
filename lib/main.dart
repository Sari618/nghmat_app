import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MusicWidget());
}

class MusicWidget extends StatelessWidget {
  void playMusic(int musicNumber) {
    final player = AudioPlayer();
       player.setSourceUrl('assets/audios/assets_music-$musicNumber.mp3');
  }

  Expanded myButton(int musicNumber,Color buttonColor,String buttonText) {
        return Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom:10.0),
                child: ElevatedButton( 
                     onPressed: () {
                    playMusic(musicNumber);
                  },
                  style: ElevatedButton.styleFrom(
                  primary:buttonColor,
                  textStyle:  const TextStyle(
                     color :Colors.white,
                  )), child: Padding(
                    padding: const EdgeInsets.only(left:100.0),
                    child: Row(
                      children: [const Icon(
                        Icons.music_note,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 20.0,)
                        ,Text(buttonText),
                      ],
                    ),
                  )
                  
                 
                ),
              ),
            );
  }

  const MusicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purpleAccent,
          title: const Text('نغمات'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1,Colors.deepPurple,'iphone11') ,
            myButton(2,Colors.amber,'iphone12') ,
            myButton(3,Colors.blue,'iphone13') ,
            myButton(4,Colors.blueGrey,'iphone14') ,
            myButton(5,Colors.limeAccent,'iphone11promax') ,  

          ],
        ),
      ),
    );
  }
}
