import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vh_shipper_app/Colors/color.dart';

class TestFirestore extends StatefulWidget {
  const TestFirestore({Key? key}) : super(key: key);

  @override
  _TestFirestoreState createState() => _TestFirestoreState();
}

class _TestFirestoreState extends State<TestFirestore> {
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('test').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  MaterialColors.primary,
                  MaterialColors.primary.withOpacity(0.99),
                  MaterialColors.primary.withOpacity(0.97),
                  MaterialColors.primary.withOpacity(0.95),
                  MaterialColors.primary.withOpacity(0.9),
                ]),
          ),
        ),
        centerTitle: true,
        shadowColor: MaterialColors.primary,
        title: Text(
          "Test FireStore",
          style: TextStyle(color: Colors.white, fontFamily: "SF Bold"),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          StreamBuilder<QuerySnapshot>(
            stream: _usersStream,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Text("Loading");
              }

              return Column(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return ListTile(
                    title: Text(data['id']),
                    subtitle: Text(data['name']),
                  );
                }).toList(),
              );
            },
          )
        ]),
      ),
    );
  }
}
