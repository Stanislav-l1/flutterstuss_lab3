import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  FirstScreenState createState() => FirstScreenState();
}

class FirstScreenState extends State<FirstScreen> {
  bool _isImageVisible = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter UI Example'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/lego.jpg', 
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          
          Container(
            color: Colors.black.withOpacity(0.5),
            child: Center(
              child: Text(
                'Stanislav coree',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('SnackBar is shown')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, 
                  fixedSize: Size(200, 50), 
                ),
                child: Text(
                  'Show SnackBar',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.green, 
                  fixedSize: Size(200, 50), 
                ),
                child: Text(
                  'Go to Second Screen',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
                           
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    _isImageVisible = !_isImageVisible; 
                  });
                },
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black, 
                  side: BorderSide(color: Colors.black), 
                  fixedSize: Size(200, 50), 
                ),
                child: Text(
                  'Toggle Image',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),

              if (_isImageVisible)
                Image.asset(
                  'assets/legolaz.jpg', 
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Text('This is the second screen'),
      ),
    );
  }
}
