import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Resume'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://scontent.fphs2-1.fna.fbcdn.net/v/t39.30808-1/373558379_6447620585334227_6063676811317389269_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=107&ccb=1-7&_nc_sid=e99d92&_nc_ohc=d-ftgjd2Mk8Q7kNvgGX2onM&_nc_oc=AdhYZvqHj0F4hTpNoiYXG-k3tWt_V5PtluBwe3wNGQtBnGbaX1-LchabNTH4bYlsmqSfd9bCkVZXhbkURKY1jo4F&_nc_zt=24&_nc_ht=scontent.fphs2-1.fna&_nc_gid=A86W-2POiKvVYyVb6Wkr2CD&oh=00_AYAExcj8keCJgIDRfiMjlZoMtQ7OEXpuA1mRaUC4whMRIQ&oe=67818CB8'),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: Text(
                      "Nattawut Dumrongpongpan",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Center(
                    child: Text(
                      "Frame",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.blueAccent,
                    thickness: 1.5,
                    height: 30,
                  ),
                  _buildSectionTitle("Hobby"),
                  Text("• Trade Crypto", style: _buildTextStyle()),
                  Text("• Watching movies", style: _buildTextStyle()),
                  SizedBox(height: 16),
                  _buildSectionTitle("Food"),
                  Text("• Pizza", style: _buildTextStyle()),
                  Text("• Chicken pop", style: _buildTextStyle()),
                  SizedBox(height: 16),
                  _buildSectionTitle("Birthplace"),
                  Text("Phetchabun, Thailand", style: _buildTextStyle()),
                  Divider(
                    color: Colors.blueAccent,
                    thickness: 1.5,
                    height: 30,
                  ),
                  _buildSectionTitle("Education"),
                  Column(
                    children: [
                      _buildEducationRow("Elementary", "Anubalphetchabun School", 2558),
                      SizedBox(height: 8), 
                      _buildEducationRow("Primary", "Wittayanukulnaree School", 2561),
                      SizedBox(height: 8), 
                      _buildEducationRow("High School", "Wittayanukulnaree School", 2564),
                      SizedBox(height: 8), 
                      _buildEducationRow("Undergrad", "Naresuan University", 2568),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.blueAccent,
      ),
    );
  }

  Widget _buildEducationRow(String level, String school, int year) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              "$level: $school",
              style: _buildTextStyle(),
            ),
          ),
          SizedBox(width: 8),
          Text(
            "Year: $year",
            style: _buildTextStyle(),
          ),
        ],
      ),
    );
  }

  TextStyle _buildTextStyle() {
    return TextStyle(fontSize: 16, color: Colors.grey[800]);
  }
}