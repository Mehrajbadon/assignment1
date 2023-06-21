import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a=0,b=0,c=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mehraj",
      home: Scaffold(
        appBar: AppBar(title: Text("Calculator"),),
        backgroundColor: Colors.lightBlueAccent,
        body: Container(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Center(
                            child:
                            Text(a.toString(),
                              style: TextStyle(fontSize: 50),),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(b.toString(),style: TextStyle(fontSize: 50)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Center(
                            child:
                            Text(c.toString(),
                              style: TextStyle(fontSize: 80,fontWeight: FontWeight.bold,),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){

                          a++;
                          b++;
                          setState(() {

                          });
                        },
                        child:
                        Text("+",
                          style: TextStyle(fontSize: 60,color: Colors.black,),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){
                          if(a>0){
                            a--;
                            b--;
                            setState(() {

                            });
                          }
                        },
                        child:Text("-",
                          style: TextStyle(fontSize: 80,color: Colors.black,),),
                      ),
                    )

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: GestureDetector(
                        onTap: (){
                          c=a*b;
                          setState(() {

                          });
                        },
                        child:
                        Text("*",
                          style: TextStyle(fontSize: 60,color: Colors.black,),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: GestureDetector(
                        onTap: (){
                          c=a%b;
                          setState(() {

                          });
                        },
                        child:Text("/",
                          style: TextStyle(fontSize: 40,color: Colors.black,),),
                      ),
                    )

                  ],
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
