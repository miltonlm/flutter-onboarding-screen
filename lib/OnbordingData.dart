import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnbordingData extends StatefulWidget {
  final header;
  final imagePath;
  final title;
  final desc;

  OnbordingData({
    this.header,
    this.imagePath,
    this.title,
    this.desc,
  });

  @override
  _OnbordingDataState createState() => _OnbordingDataState(
        this.header,
        this.imagePath,
        this.title,
        this.desc,
      );
}

class _OnbordingDataState extends State<OnbordingData> {
  final header;
  final imagePath;
  final title;
  final desc;

  _OnbordingDataState(
    this.header,
    this.imagePath,
    this.title,
    this.desc,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          if (header != null) header,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.40,
                  image: AssetImage(imagePath),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      title,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    desc,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
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
