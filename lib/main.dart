import 'package:flutter/material.dart';
import 'package:live_test_7/second_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _counter = 0;
void _increment(){
  setState(() {
    _counter++;
    if(_counter == 5){
      _dialoge();
    }else if(_counter == 10){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> second_page()));
    }
  });
}
void _dialoge(){
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      title: Text('Counter Alert'),
      content: Text("Counter value is 5!"),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Ok'))
      ],
    );
  });
}
void _decrement(){
  setState(() {
    _counter--;
  });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter Value: ',
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
            ),
            Text('$_counter'),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){_increment();}, child: Icon(Icons.add),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Set the desired color here
                      ),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){_decrement();}, child: Icon(Icons.minimize)
                      , style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.red), // Set the desired color here
                      ),),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

