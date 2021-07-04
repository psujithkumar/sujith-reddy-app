import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'This is sujith fluter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,

        title: Center(child: Text("hello")),
        // leading: Icon(Icons.home), 
         actions: [
             Icon(Icons.login),Icon(Icons.logout)],
      ),

      drawer: Drawer(
        child: ListView(children: [
          Center(child: Text("welcome sujith")),
          ListTile(
            title: Text("login"),
            trailing: Icon(Icons.login),
          ),
          Divider(thickness:2,color:Colors.blue),
          ListTile(
            title: Text("logout"),
            trailing: Icon(Icons.logout),
          ),
          Divider(thickness:2,color:Colors.blue),
          ListTile(
            title: Text("help"),
            trailing: Icon(Icons.help),
            onTap: (){
              print("clicked help button");
            },
          ),
          Divider(thickness:2,color:Colors.blue),
          ListTile(
            title: Text("support"),
            trailing: Icon(Icons.support),
          ),
        ],),
        ),
      body: Center(
      
        child: ListView(
  
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Icon(Icons.home,size: 150,color: Colors.red,),
                Icon(Icons.local_gas_station,size: 150,color: Colors.blue),
                Icon(Icons.money,size: 90,color: Colors.green),
              ],
            ),

            Column(
              children: [
                ElevatedButton(onPressed:(){
                  print("clicked submit button");
                  Fluttertoast.showToast(msg:"clicked");
                }, child: Text("submit")),
              ],
            ),
            Icon(Icons.account_balance,size:150,color: Colors.purple),
            SizedBox(
              height: 200,
              width: 200,
              child: Image.network("https://static3.depositphotos.com/1002188/144/i/600/depositphotos_1448005-stock-photo-smile.jpg",)
              
              ),
              SizedBox(
              height:200,
              width:200,
                child: Image.network("https://images.saymedia-content.com/.image/t_share/MTc2Mjk3ODQ0NTY1NjE1Nzg5/mobile-legends-alucard-build-guide.jpg")),
                Column(
                  children: [
                    Container(
                      height: 100,
                      width: 200,
                      color: Colors.black,
                      child: Center(child: Text("This is container",style: TextStyle(color: Colors.white),)),
                    ),
                  ],
                ),
            Column(
              children: [
                Text("welcome to sujith demo flutter project app",style:TextStyle(color: Colors.green,fontSize: 20)),
  
            Text("You have pushed the button this many times:",style: TextStyle(fontSize: 20)),
             
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
             ]),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
