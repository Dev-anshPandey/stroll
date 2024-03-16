import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  String option;
  String text;
  bool selected;
  OptionCard(
      {required this.option, required this.text, required this.selected});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(left: width * 0.04),
      child: Container(
        width: width * 0.438,
        decoration: BoxDecoration(
            color: Color(0xff232A2E),
            border: Border.all(
                width: height * 0.004,
                color: selected ? Color(0xff8D88EF) : Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: EdgeInsets.only(
              left: width * 0.01, top: height * 0.01, bottom: height * 0.01),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height * 0.006),
                child: CircleAvatar(
                  radius: height * 0.016,
                  backgroundColor: selected ? Color(0xff8D88EF) : Colors.white,
                  child: CircleAvatar(
                    radius: height * 0.014,
                    backgroundColor:
                        selected ? Color(0xff8D88EF) : Color(0xff232A2E),
                    child: Text(
                      option,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: height * 0.0, left: width * 0.019),
                child: Container(
                  width: width * 0.32,
                  child: Text(text,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: height * 0.016,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
