// ignore_for_file: unused_import, prefer_const_constructors, sized_box_for_whitespace, avoid_print, unused_local_variable, dead_code
import 'package:calculator/linkpage.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
 void main (){
runApp((MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Calculator',
 home: Calculater (),
 ))
);
 }


 class Calculater extends StatefulWidget {
  const Calculater({super.key});

  @override
  State<Calculater> createState() => _CalculaterState();
}

class _CalculaterState extends State<Calculater> {

var input= '';
var output= '';
var operation = '';
var hideinput =false;
var outputsize=28.0;
onbottonclick (value){
  if (value == "AC"){
 input= '';
 output= '';
  }else if (value =="⌫"){
if (input.isNotEmpty){
  input= input.substring(0,input.length-1);
}
  }else if (value =="="){
if (input.isNotEmpty){
var userinput = input;
 userinput= userinput.replaceAll('÷', '/');
 userinput= userinput.replaceAll('×', '*');

 try{
          Parser p = Parser();
          Expression exp = p.parse(userinput);

          ContextModel cm = ContextModel();
      output = '${exp.evaluate(EvaluationType.REAL, cm)}';    
      output=double.parse(output).toStringAsFixed(2);
        // ignore: empty_catches
        } catch (e){
output="= Error";
        }

if (output.endsWith(".00")){
output=output.substring(0,output.length-3);
}
input= output;
hideinput= true;
outputsize=50.2;
if (output=='69'){
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Link()));
}

}
  }else {
    input= input+value;
    hideinput= false;
outputsize=35.0;
  }
 setState(() {
    
  });
}
 
  Widget numbers ({text='',tcolor=Colors.black,bgcolors,size=28.0, }){


return  Expanded(
  
                child: Row(
            
                  children: [
                    SizedBox(
width: 22,
                    ),
                       MaterialButton(
                   // shape: CircleBorder(),
                    shape: CircleBorder(),
                    minWidth: double.minPositive,
                   color:bgcolors,
                
                         onPressed: ()=>
                         onbottonclick(text),
                         child:Text(text,style: TextStyle(fontWeight: FontWeight.bold,color:tcolor,fontSize: size,
                         ),),
                         ),
                           
                         
                         
                         
                         
                          ],),
                         
                         
                        
                          
              );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
   padding:EdgeInsets.zero,
        color: Colors.white,
        child: Container(
              padding:EdgeInsets.zero,
          color: Colors.white,
          // ignore: prefer_const_literals_to_create_immutables
          child: Column(
               mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment:CrossAxisAlignment.start ,
                 
                
            children: [
              Card(
                child: Container(
                  color: Colors.white,
                  height: 368,
                  width: 391,
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment:CrossAxisAlignment.end ,
                   
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
              Text(hideinput?  "": input,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 35,
                           ),),
              SizedBox(height: 30,),
              Text(output,style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize:outputsize,
                           ),),
              SizedBox(height: 25,),
                  ]),
                ),
              ),
            Row(
                  
              children: [
                numbers(text: 'AC',tcolor: Colors.orange ),
                 numbers(text: '⌫',tcolor: Colors.orange,size:30.0),
                     numbers(text: '%',tcolor: Colors.orange,size:32.0),
                         numbers(text: '÷',tcolor: Colors.orange,size:38.0 ),
              ],
            ),
             SizedBox(
              height:45,
            ),
             Row(
                  
              children: [
               numbers(text: '7'),
                 numbers(text: '8'),
                     numbers(text: '9'),
                         numbers(text: "×",tcolor: Colors.orange,size:38.0),
              ],
            ),
             SizedBox(
              height:45,
            ),
             Row(
                  
              children: [
                  numbers(text: '4'),
                 numbers(text: '5'),
                     numbers(text: '6'),
                         numbers(text: '-',tcolor: Colors.orange,size:45.0),
              ],
            ),
             SizedBox(
              height:45,
            ),
             Row(
                  
              children: [
                 numbers(text: '1'),
                 numbers(text: '2'),
                     numbers(text: '3'),
                         numbers(text: '+',tcolor: Colors.orange,size:38.0),
              ],
            ),
              SizedBox(
              height:45,
            ),
             Row(
                  
              children: [
  numbers(text:'00'),
                 numbers(text: '0'),
                     numbers(text: '.',size:35.0),
                         numbers(text:  '=',tcolor: Colors.white,bgcolors: Colors.orange,size:50.0),
              ],
            ),
            SizedBox(
              height:35,
            )
            ],
          ),
        ),
      ),
    );
  }
}