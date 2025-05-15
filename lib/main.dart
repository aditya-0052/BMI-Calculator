import 'package:bmi_project/Main_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyBMI_App(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text('You have pushed the button this many times:'),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

class MyBMI_App extends StatefulWidget{
  @override
  State <MyBMI_App> createState(){
    return _MyBMI_App_State();
  }
}

class _MyBMI_App_State extends State<MyBMI_App>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("BMI APP"),
      //
      // ),
      
      body: Container(
        color: Color(0xFF1D3BB2),
        child: Column(
          children: [
            SizedBox( 
              height: 200,
              
            ),

            Text("BMI CALCULATOR",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold, wordSpacing: 3),),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40)),

                child: Container(
                
                  child:   Image.asset('assests/images/bmi_image.jpg'  ),
                  
                ),
              ),
              
            ),
            
            RichText(text: TextSpan(
              children: <TextSpan>[
                TextSpan(text: "Get Started with \n",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 28,wordSpacing:1,height: 1.4)),
                TextSpan(text: "Tracking Your Health! \n", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 28,wordSpacing:1,height: 1.4)),
                TextSpan(text: "Calculate your Bmi and stay on top of \nyour wellness journey effortlessly.",style: TextStyle(color: Colors.grey,fontSize: 15,height: 2))
              ]
            )),

            SizedBox(
              height: 50,
            ),

            SizedBox(
              width: 300,
              child: ElevatedButton(onPressed: (){
                setState(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return Main_Screen();
                  },
                  )
                  );
                });




                }, child: Text("Get started")
              ),
            )

          ],
        ),
      ),
    );
  }
}