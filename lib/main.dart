import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Simple Interest Calculator",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p="", t="", r="", result="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
        backgroundColor: Colors.blueAccent.shade200,
        actions: [
          
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView(
            children: [
              SizedBox(height: 25),
              // for Principal
              TextField(
                  onChanged: (val){
                    p=val;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Principal",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 8, 230)),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  )),

                  SizedBox(height:15 ,),

              // For time
              TextField(
                 onChanged: (val){
                    t=val;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Time",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color:  Color.fromARGB(255, 0, 8, 230)),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  )),

                    SizedBox(height:15 ,),
              // for rate
              TextField(
                 onChanged: (val){
                    r=val;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter rate",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color:  Color.fromARGB(255, 0, 8, 230)),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  )),

                  SizedBox(height:15 ,),
                  // for button
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side:BorderSide(color: Colors.blueAccent.shade200)
                      ), 
                      height: 50,
                      color: Colors.blueAccent.shade200,
                      child: Text('calculate', 
                          style: TextStyle(color: Color.fromARGB(255, 236, 221, 221), fontSize: 22),
                      ),
                    onPressed: (){
                        setState(() {
                          result = (double.parse(p)*double.parse(t)*double.parse(r)/100).toString();
                        });
                    }),
                  SizedBox(height:8 ,),

                  Center(
                    child: Text(
                      "The result is $result.",
                      style: TextStyle(fontSize: 22),
                    ),

                  )
                  
            ],
          ),
        ),
      ),
    );
  }
}
