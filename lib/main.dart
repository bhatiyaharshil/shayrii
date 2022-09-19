
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shayri/sp.dart';

void main() {
  runApp(MaterialApp(
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List l = [
    "शुभकामना शायरी",
    "दोस्ती शायरी",
    "मजेदार शायरी",
    "भगवन शायरी",
    "प्रेरणा शायरी",
    "जीवन शायरी",
    "प्रेम शायरी",
    "राजनीति शायरी",
    "बेवफा शायरी",
    "दर्द शायरी",
    "शराब शायरी",
    "जन्मदिन शायरी",
    "होली शायरी"
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    forpermission();
  }
  Future<void> forpermission() async {
    var status = await Permission.storage.status;
    if (status.isDenied ) {
      await[
        Permission.storage,
      ].request();
      // We didn't ask for permission yet or the permission has been denied before but not permanently.
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.yellow[200],
        title: Text("Shayari",style: TextStyle(color: Colors.black)),
        elevation: 20,
      ),
      body: ListView.builder(
        itemCount: l.length,
        itemBuilder: (context, index) {
          return Card(
              elevation: 10,
              margin: EdgeInsets.all(10),
              child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return secondpage(l,index);
                    },));
                  },
                  tileColor: Colors.yellow[50],
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  leading: Container(
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("img/p${index + 1}.jpg"))),
                  ),
                  title: Text(
                    "${l[index]}",
                    style: TextStyle(
                        color: Colors.teal[800],
                        fontSize: 20),
                  )));
        },
      ),
    );
  }
}
