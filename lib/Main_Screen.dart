// import 'package:flutter/cupertino.dart';
import 'package:bmi_project/BMI_Result_Screen.dart';
import 'package:flutter/material.dart';

class Main_Screen extends StatefulWidget {
  @override
  State<Main_Screen> createState() {
    return _Main_ScreenState();
  }
}

class _Main_ScreenState extends State<Main_Screen> {
  final TextEditingController AgeController = TextEditingController(text: '0',);
  final TextEditingController WeightController = TextEditingController(text: '0');
  final TextEditingController heightController=TextEditingController(text: '0');
  increment(Controller){
    int current=int.tryParse(Controller.text)??0;

    if(current<100){
      current++;
      setState(() {
        Controller.text=current.toString();
      });
    }
  }

  void decrement(Controller){
    int current=int.tryParse(Controller.text)??0;

    if(current>0){
      current--;
      setState(() {
        Controller.text=current.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: 150,
                      color: Colors.orange.shade50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age"),
                          TextField(
                            controller: AgeController,
                            maxLength: 2,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 32),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.all(8),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: (){increment(AgeController);},

                                child: Icon(
                                  Icons.plus_one_sharp,
                                  color: Colors.white,
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              ElevatedButton(
                                 onPressed: (){decrement(AgeController);},
                                child: Icon(Icons.exposure_minus_1_sharp),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 150,
                      color: Colors.orange.shade50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Weight"),
                          TextField(
                            controller: WeightController,
                            maxLength: 2,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 32),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              contentPadding: EdgeInsets.all(8),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  increment(WeightController);
                                },
                                child: Icon(
                                  Icons.plus_one_sharp,
                                  color: Colors.white,
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  decrement(WeightController);
                                },
                                child: Icon(Icons.exposure_minus_1_sharp),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    foregroundColor: Colors.white
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.orange.shade50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Height (cm)"),
                      TextField(
                        controller: heightController,
                        maxLength: 3,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 32),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          isDense: true,
                          contentPadding: EdgeInsets.all(8),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(

                            onPressed: () {
                              increment(heightController);
                            },
                            child: Icon(
                              Icons.plus_one_sharp,
                              size:20,
                              color: Colors.white,

                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              // minimumSize: Size(26,26),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              decrement(heightController);
                            },
                            child: Icon(Icons.exposure_minus_1_sharp),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                  width: 300,

                  child: ElevatedButton(onPressed: (){
                    var heightInput=int.tryParse(heightController.text);
                    var weightInput=int.tryParse(WeightController.text);
                    var ageInput=int.tryParse(AgeController.text);

                    if(heightInput!="" && weightInput!=""){
                      double height=double.parse(heightInput.toString());
                      double weight=double.parse(weightInput.toString());
                      double heightMeter=height*0.01;

                      var bmi=weight/(heightMeter*heightMeter);

                      var Result=bmi.toStringAsFixed(2);
                      print("Your BMI is "+Result);
                      var msg;
                      if(bmi>25){
                        msg="You are OverWeight";
                        // colorTheme=Colors.red.shade300;
                      }
                      else if(bmi<18){
                        msg="You are UnderWeight";
                        // colorTheme=Colors.orange.shade200;
                      }
                      else{
                        msg="You are Healthy";
                        // colorTheme=Colors.green.shade200;

                      }
                      
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return BMI_Result_Screen(Result.toString(),msg.toString());
                      }));


                    }
                  }, child: Text("Calculate BMI",),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,),)
              ),


            ],
          ),
        ),
      ),
    );
  }
}
