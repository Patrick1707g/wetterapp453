import 'package:flutter/material.dart';
import 'package:wetterapp453/weatherRepository.dart';
import 'nextpage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: const WeatherApp(),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle:true
        title: Center(
          child: Text(
            'my Weather App',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/clouds.jpg'), fit: BoxFit.cover)),
        // BoxFit.cover fpügt das Bild ganzseitig allerdings mit angepassten Abmessungen ein, contain fügt das Bild in original Abmessungen ein
        child: Column(
          /* mainAxisAlignment: MainAxisAlignment.center,*/
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              //width: 100,
              height: 150,
            ),
            Center(
              child: Text(
                'Willkommen \n\n \t\t\t in der \n\n Wetter-App!',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ),
            SizedBox(
              //width: 100,
              height: 400,
            ),
            //Text('Willkommen in der Wetter-App!', style: TextStyle(fontSize:24.0, fontWeight:FontWeight.bold,color: Colors.blue,),),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page2(weatherData: WeatherData("München", 8.0, WeatherCondition.sunny))),
                  );
                },
                child: Text("NextPage")),
          ],
        ),
      ),
    );
  }
}
