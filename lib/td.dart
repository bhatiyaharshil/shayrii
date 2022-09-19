import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayri/fp.dart';

class thirdpage extends StatefulWidget {
  int ind;
  List l1;

  thirdpage(this.l1, this.ind);

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  PageController pc = PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pc = PageController(initialPage: widget.ind);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.yellow[200],
        title: Text("Shayri", style: TextStyle(color: Colors.black)),
      ),
      body: Column(
        children: [
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 2,
              child: PageView.builder(
                itemCount: widget.l1.length,
                onPageChanged: (value){
                  setState(() {
                    widget.ind = value;
                  });
                },
                controller: pc,
                itemBuilder: (context, index) {
                  return Container(
                      color: Colors.yellow[100],
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.yellow[100],
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(20),
                        child: Text("${widget.l1[widget.ind]}",
                            style:
                                TextStyle(color: Colors.black, fontSize: 30)),
                      ));
                },
              )),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            FlutterClipboard.copy("${widget.l1[widget.ind]}")
                                .then((value) {
                              Fluttertoast.showToast(
                                  msg: "Copied",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.red,
                                  textColor: Colors.white,
                                  fontSize: 16.0);
                            });
                          },
                          icon: Icon(
                            Icons.copy_all,
                            size: 40,
                          )),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (widget.ind == 0) {
                                widget.ind = 1;
                                Fluttertoast.showToast(
                                    msg: "No More",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              }
                              widget.ind--;
                            });
                          },
                          icon: Icon(Icons.arrow_back_ios, size: 40)),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return fourthclass(widget.l1, widget.ind);
                              },
                            ));
                          },
                          icon: Icon(Icons.edit, size: 40)),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            setState(() {
                              if (widget.ind == 3) {
                                widget.ind = 2;
                                Fluttertoast.showToast(
                                    msg: "No More",
                                    //toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.CENTER,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.red,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                              }
                              widget.ind++;
                            });
                          },
                          icon: Icon(Icons.arrow_forward_ios, size: 40)),
                    ),
                    Expanded(
                      child: IconButton(
                          onPressed: () {
                            Share.share("${widget.l1[widget.ind]}");
                          },
                          icon: Icon(Icons.share, size: 40)),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
