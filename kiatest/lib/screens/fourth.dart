import 'package:flutter/material.dart';
import 'package:kiatest/screens/navbar.dart';


class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  List<String> mat = ['ABC123', 'XYZ789']; // Replace with your static data
  String selectedMat = 'ABC123'; // Set default selected value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Historiques',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => StatPage()));
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButtonFormField<String>(
                value: selectedMat,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedMat = newValue!;
                    print(selectedMat);
                  });
                },
                items: mat.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Immatriculation',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.0),
              // Add spacing between dropdown and cards
              // Your other UI elements...
              // ... (remove FutureBuilder part)

              SizedBox(
                height: 322,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                     // Navigator.pushReplacement(
                       // context,
                        //MaterialPageRoute<void>(
                          //builder: (BuildContext context) => Rendezvous(),
                        //),
                     // );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 22, horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                      ),
                      child: const Text(
                        'Prendre un rendez-vous',
                        style: TextStyle(
                          inherit: false,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                    
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black,
                      ),
                      child: const Icon(
                        Icons.chat,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
