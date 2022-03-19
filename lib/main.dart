import 'package:flutter/material.dart';
import 'package:learn_flutter/second.dart';

//C
void main() {
  runApp(const MyApp());
}

//OOPS
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mero Media',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Homepage(),
      debugShowCheckedModeBanner: false,
      routes: {
        Second.routeName: (ctx) => Second(),
      },
    );
  }
}

class Homepage extends StatelessWidget {
  //20 ota country name . Country name -> front country logo
  List<String> _abc = [
    'hello',
    'hi',
    'Lorem ipsum',
    'ipsum Lorem',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (ctx, i) {
                return ListTile(
                  leading: Icon(
                    Icons.add,
                  ),
                  trailing: Icon(
                    Icons.delete,
                  ),
                  title: Text(
                    _abc[i],
                  ),
                );
              },
              itemCount: _abc.length,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(
                Second.routeName,
                // arguments: 'Welcome',
              );
            },
            child: Text('Goto Second page'),
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Image.network(
                  'https://images.unsplash.com/photo-1641135821230-04f53e366336?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80'),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 15,
                ),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text('Add Data'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Icon(Icons.add),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Add Data'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Icon(Icons.login),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Login'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 15,
              ),
              child: Row(
                children: [
                  Icon(Icons.logout),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text('Logout'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
