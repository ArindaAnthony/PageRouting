import 'package:flutter/material.dart';
import 'package:routing/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Routing Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      /*routes:  {
        '/second':(_)=>const SecondPage(message: 'Anthony'),
      },*/
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Routing App"),
      ),
      body: Center(
        child: Column(
          children: [
            const Flexible(flex: 2,child: SizedBox(height: 0, width: 0,),),
            const Center(child: Text("First Page", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
            const Flexible(flex: 2,child: SizedBox(height: 0, width: 0,),),
            const SizedBox(height: 20,),
            TextButton(
              child: const Text("Go to Second Page"),
                onPressed:(){
                //Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondPage(message: 'Hei, We are from the First Page',)));
                  Navigator.of(context).pushNamed('/second', arguments: 'Anthony Arinda');
            }
            ),

          ],
        ),
      ),
    );
  }
}



class SecondPage extends StatelessWidget {
  final String message;
  const SecondPage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text("Routing App 2"),
      ),
      body: Center(
        child: Column(
          children: [
             Center(child: Text(message, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),)),
            const SizedBox(height: 20,),
            TextButton(
                child: const Text("Go to Third Page"),
                onPressed:(){
                }
            ),

          ],
        ),
      ),
    );
  }
}


