import 'package:bmi_project/Main_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI_Result_Screen extends StatefulWidget{
  var BMI_Result;
  var message;
  BMI_Result_Screen(this.BMI_Result,this.message);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BMI_Result_Screen_State();
  }
}

class BMI_Result_Screen_State extends State<BMI_Result_Screen>{


  @override
  Widget build(BuildContext context){
    return Scaffold(

       body: Container(

          margin: EdgeInsets.only(top:100),
          padding: EdgeInsets.only(left: 8.0,right: 8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent.shade400,
                  border: Border.all(
                    color: Colors.black,
                    width: 4
                  ),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(65),bottomRight:Radius.circular(65)),
                  
                ),
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your BMI SCORE is ${widget.BMI_Result}",style: TextStyle(fontSize: 30,color: Colors.grey),),
                    Text("${widget.message}",style: TextStyle(fontSize: 20,color: Colors.grey))
                  ],
                  
                  
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return Main_Screen();
                    }));
                  }
                  , child:Text("Check BMI"))
            ],
          ),
         
         
        ),

    );
  }
}