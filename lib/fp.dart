import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:share_plus/share_plus.dart';

class fourthclass extends StatefulWidget {
  List l;
  int ind;

  fourthclass(this.l, this.ind);

  @override
  State<fourthclass> createState() => _fourthclassState();
}

class _fourthclassState extends State<fourthclass> {
  List gredientcolor = [
    [Colors.grey, Colors.white],
    [Colors.red, Colors.white],
    [Colors.yellow, Colors.white],
    [Colors.brown, Colors.white]
  ];
  List<Color> gcolor = [Colors.transparent,Colors.transparent];
  List color = [
    Colors.red,
    Colors.red[200],
    Colors.purple,
    Colors.purple[200],
    Colors.black,
    Colors.black,
    Colors.white,
    Colors.yellow,
    Colors.yellow[200],
    Colors.grey,
    Colors.teal,
    Colors.teal[200],
    Colors.blue,
    Colors.blue[200],
    Colors.blue[500],
    Colors.blueGrey,
    Colors.deepOrange,
    Colors.deepOrange[200],
    Colors.brown,
    Colors.green,
    Colors.green[200],
    Colors.pink,
    Colors.pink[200],
    Colors.cyanAccent
  ];
  List fl = ["Noto Sans Gujarati", "Poppins", "Water Brush"];
  Color? bgcolor = Colors.yellow[100];
  Color tcolor = Colors.black;
  String emoji = " ";
  List lemoji = ["👌👌💕💕💕👌👌", "🎆🎆🎆🎇", "✨✨✨✨", "😍😍😍😍😍"];
  String font = "Poppins";
  double ctextsize = 15;
  GlobalKey gb = GlobalKey();
  String folderpath = "";

  Future<Uint8List> _capturePng() async {
    try {
      print('inside');
      RenderRepaintBoundary? boundary =
          gb.currentContext!.findRenderObject() as RenderRepaintBoundary?;
      ui.Image image = await boundary!.toImage(pixelRatio: 3.0);
      ByteData? byteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      var pngBytes = byteData!.buffer.asUint8List();
      var bs64 = base64Encode(pngBytes);
      print(pngBytes);
      print(bs64);
      setState(() {});
      return pngBytes;
    } catch (e) {
      print(e);

      return Future.value();
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createFolder();
  }

  _createFolder() async {
    final folderName = "Shayari_app";
    final path1 = Directory("storage/emulated/0/Download/$folderName");
    if ((await path1.exists())) {
      // TODO:
      print("exist");
    } else {
      // TODO:
      print("not exist");
      path1.create();
    }
    setState(() {
      folderpath = path1.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[200],
        title: Text("Edit Shayari", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: RepaintBoundary(
              key: gb,
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: gcolor,
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Container(
                  decoration: BoxDecoration(
                    color: bgcolor,
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Text("$emoji\n${widget.l[widget.ind]}\n$emoji",
                      style: TextStyle(
                          color: tcolor,
                          fontSize: ctextsize,
                          fontFamily: "$font")),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                bgcolor = Colors.transparent;
                                gcolor = gredientcolor[
                                    Random().nextInt(gredientcolor.length)];
                              });
                            },
                            icon: Icon(Icons.autorenew)),
                        IconButton(
                            onPressed: () {
                              showModalBottomSheet(
                                builder: (context) {
                                  return Container(
                                    height: 200,
                                    color: Colors.white,
                                    child: GridView.builder(
                                      itemCount: gredientcolor.length,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            setState(() {
                                              bgcolor = Colors.transparent;
                                              gcolor = gredientcolor[index];
                                            });
                                          },
                                          child: Container(
                                            height: 200,
                                            width: 100,
                                            margin: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                    colors:
                                                        gredientcolor[index],
                                                    begin: Alignment.topCenter,
                                                    end: Alignment
                                                        .bottomCenter)),
                                            child: Text(
                                                "$emoji\n${widget.l[widget.ind]}\n$emoji",
                                                style: TextStyle(
                                                    fontSize: ctextsize,
                                                    fontFamily: "$font")),
                                          ),
                                        );
                                      },
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2),
                                    ),
                                  );
                                },
                                context: context,
                              );
                            },
                            icon: Icon(Icons.zoom_out_map)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: GridView.builder(
                                      itemCount: color.length,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                            setState(() {
                                              bgcolor = color[index];
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(5),
                                            color: color[index],
                                          ),
                                        );
                                      },
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 6)),
                                );
                              },
                              context: context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.grey,
                          alignment: Alignment.center,
                          child: Text("Background"),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10))),
                                  child: GridView.builder(
                                      itemCount: color.length,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                            setState(() {
                                              tcolor = color[index];
                                            });
                                          },
                                          child: Container(
                                            margin: EdgeInsets.all(5),
                                            color: color[index],
                                          ),
                                        );
                                      },
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 6)),
                                );
                              },
                              context: context);
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.grey,
                          alignment: Alignment.center,
                          child: Text("Text Color"),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          _capturePng().then((value) {
                            String dt = "${DateTime.now()}";
                            String result =
                                dt.replaceAll(RegExp('[^A-Za-z0-9]'), '');
                            String imagename = "Image$result.jpg";
                            String imagepath = "$folderpath/$imagename";
                            File file = File(imagepath);
                            file.writeAsBytes(value);

                            Share.shareFiles(['${file.path}'],
                                text: 'Great picture');
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.grey,
                          alignment: Alignment.center,
                          child: Text("Share"),
                        ),
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                    height: 200,
                                    color: Colors.grey[200],
                                    child: ListView.builder(
                                      itemCount: fl.length,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                            onTap: () {
                                              setState(() {
                                                font = fl[index];
                                                Navigator.pop(context);
                                              });
                                            },
                                            tileColor: Colors.grey[300],
                                            title: Text(
                                              "font",
                                              style: TextStyle(
                                                  fontFamily: "${fl[index]}"),
                                            ));
                                      },
                                    ));
                              });
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.grey,
                          alignment: Alignment.center,
                          child: Text("Font"),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            builder: (BuildContext context) {
                              return Container(
                                height: 250,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10))),
                                child: ListView.builder(
                                  itemCount: lemoji.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      onTap: () {
                                        setState(() {
                                          emoji = lemoji[index];
                                          Navigator.pop(context);
                                        });
                                      },
                                      title: Text("${lemoji[index]}"),
                                    );
                                  },
                                ),
                              );
                            },
                            context: context,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.grey,
                          alignment: Alignment.center,
                          child: Text("Emoji"),
                        ),
                      )),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            builder: (context) {
                              return Container(
                                  height: 200,
                                  child: StatefulBuilder(
                                    builder: (context, setState1) {
                                      return Slider(
                                        onChanged: (value) {
                                          setState1(() {
                                            setState(() {
                                              ctextsize = value;
                                            });
                                          });
                                        },
                                        value: ctextsize,
                                        min: 5,
                                        max: 30,
                                        divisions: 5,
                                        label: "$ctextsize",
                                      );
                                    },
                                  ));
                            },
                            context: context,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          color: Colors.grey,
                          alignment: Alignment.center,
                          child: Text("Text Size"),
                        ),
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
