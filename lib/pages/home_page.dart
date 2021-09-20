import 'package:flutter/material.dart';
import '../ui_elements/item_container.dart';

class Homepage extends StatefulWidget {
  var name;
  Homepage(this.name);
  @override
  HomepageState createState() => HomepageState(this.name);
}

class HomepageState extends State<Homepage> {
  var name;
  HomepageState(this.name);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome " + name),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
        color: Colors.grey[200],
        child: ListView(
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blue, width: 2),
                    color: Colors.white),
                child: TextField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      hintText: 'Search doctor by name'),
                ),
              ),
            ),
            ItemContainer(
              color: Colors.orange[800],
              icon: Icons.videocam,
              text: "Live Consultation",
              description: "Live consultation with any provider",
            ),
            ItemContainer(
              color: Colors.green,
              icon: Icons.event_available,
              text: "Book Appointment",
              description: "book your activity with any registered doctor",
            ),
            ItemContainer(
              color: Colors.blue,
              icon: Icons.insert_drive_file,
              text: "My IPS",
              description: "view your IPS file",
            ),
            ItemContainer(
              color: Colors.blue[300],
              icon: Icons.qr_code,
              text: "My OR Code",
              description: "display your QR code to any Provider",
            ),
            ItemContainer(
              color: Colors.grey,
              icon: Icons.cloud_upload,
              text: "Upload Report/file",
              description: "upload clinical documents in your IPS",
            ),
            ItemContainer(
              color: Colors.grey,
              icon: Icons.person,
              text: "Authorize Access",
              description: "give permission to update UMF to any Provider",
            ),
            ItemContainer(
              color: Color(0xff00FFFF),
              icon: Icons.medical_services_rounded,
              text: "My Prescription",
              description: "view all your prescription",
            ),
            ItemContainer(
              color: Colors.orangeAccent[700],
              icon: Icons.insert_drive_file,
              text: "My Clinical Reports",
              description: "view all your past clinical reports",
            ),
            ItemContainer(
              color: Colors.blue[300],
              icon: Icons.date_range,
              text: "My Calender",
              description: "view your upcoming events and prescriptions",
            ),
            ItemContainer(
              color: Colors.blue,
              icon: Icons.credit_card,
              text: "Insurence card",
              description: "view all your insurence details",
            ),
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}
