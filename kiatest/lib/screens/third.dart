import 'package:flutter/material.dart';
import 'package:kiatest/screens/navbar.dart';


class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController searchController = TextEditingController();
  bool isSearchFocused = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Ordre de reception',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => StatPage()));
          },
        ),
      ),
      body: Column(
        
        children: [
          
       Align(
  alignment: Alignment.topLeft,
  child: Container(
    padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 1.0),
    color: Colors.white,
    child: TextField(
      controller: searchController,
      decoration: InputDecoration(
        hintText: 'chercher un véhicule',
        hintStyle: TextStyle(color: Colors.white, fontSize: 13),
        filled: true,
        fillColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide.none,
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.search, color: Colors.white),
          onPressed: () {
            searchController.clear();
            setState(() {});
          },
        ),
      ),
      onChanged: (value) {
        // Trigger the rebuild of the FutureBuilder with the new query
        setState(() {});
      },
      style: TextStyle(color: Colors.white),
    ),
  ),
),



          // Expanded ListView for displaying vehicles
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Replace with the actual number of items
              itemBuilder: (context, index) {
                // Replace with the actual data structure

                return Container(
                  margin: EdgeInsets.all(8.0),
                  padding: EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          buildRichText(
                              "Véhicule   " , "120 TU 2080"),
                          buildRichText("Date          " , "23/02/2024"),
                          SizedBox(
                            height: 20,
                          ),
                          buildRichText(
                              "Client        ","khouloud" ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(Icons.visibility,
                            color: Colors.red),
                        onPressed: () {
                          // Replace with the actual navigation logic
                        
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  RichText buildRichText(String label, String value,
      [FontWeight fontWeight = FontWeight.bold]) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(
            text: '$label: ',
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: fontWeight,
                color: Colors.black),
          ),
          TextSpan(
            text: value,
            style: TextStyle(fontSize: 16.0, color: Colors.black87),
          ),
        ],
      ),
    );
  }
}
