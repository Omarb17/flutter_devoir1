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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [HomePage(), ProposPage(), ProfilPage()];
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'A Propos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Home')),
        backgroundColor: const Color.fromARGB(255, 78, 149, 255),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text(
                      'Welocme Back',
                      style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Text(
                      'here\'s what\'s happening today:',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 60),
              Container(
                height: 300,
                width: 450,
                margin: const EdgeInsets.all(3),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          'Your Tasks',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 39, 126, 255),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 24.0,
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Meeting with team at 10 AM',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.orange,
                          size: 24.0,
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Submit report by 3 PM',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),

                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.red,
                          size: 24.0,
                        ),
                        SizedBox(height: 50),
                        Text(
                          'Call with client at 5 PM',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 110,
                width: 450,
                margin: const EdgeInsets.all(3),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          'Progress',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 39, 126, 255),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          'You almost there!',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),

              Container(
                height: 60,
                width: 450,
                margin: const EdgeInsets.all(3),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(16.0),
                  color: const Color.fromARGB(110, 209, 192, 255),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Text(
                          'View More Details',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25,
                            color: const Color.fromARGB(181, 209, 192, 255),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProposPage extends StatelessWidget {
  const ProposPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 98, 140, 141),
        body: Center(child: new Text("Welcome To Propos Page")),
      ),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 107, 87, 87),
        body: Center(child: new Text("Welcome To Profile Page")),
      ),
    );
  }
}
