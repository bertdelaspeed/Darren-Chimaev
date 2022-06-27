import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.yellow,
                  Colors.orange,
                  Colors.red,
                ],
                stops: [
                  0.3,
                  0.7,
                  0.9,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Karren Till',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Save yourself from \nawkward situations",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(100),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/Darren.png'),
                      height: size.height / 3.5,
                      width: size.height / 3.5,
                    ),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.only(top: 20),
                //   child: SizedBox(
                //       height: size.height / 4,
                //       child: const Image(
                //         image: AssetImage('assets/Darren.png'),
                //       )),
                // ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: () {
                      final player = AudioCache();
                      player.play('khamzat.mp3');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Start', style: TextStyle(fontSize: 30)),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    )),
              ],
            )),
      ),
    );
  }
}
