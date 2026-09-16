import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kalkulator",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.teal
        )
        ),
        
        centerTitle: true,
        ),

      body: Column(
        children: [
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "a1",
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,),
                  ),
                ),
              ),

              SizedBox(width: 20),

              SizedBox(
                width: 100,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "a2",
                    hintStyle: TextStyle(
                      color: Colors.blueGrey,),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("+",
              style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 71, 64),
                  ),
                ),
              ),
              
              SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: Text("-",
              style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 71, 64),
                  ),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: Text("x",
              style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 71, 64),
                  ),
                ),
              ),
              SizedBox(width: 8),
              ElevatedButton(onPressed: () {}, child: Text("/",
              style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 0, 71, 64),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          Text(
            "Hasil",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.teal,
            ),
          ),

          SizedBox(height: 20),

          ElevatedButton(onPressed: () {}, child: Text("Reset",
            style: TextStyle(
              color: const Color.fromARGB(255, 0, 71, 64),
            ),
            )
          )
        ],
      ),
    );
  }
}