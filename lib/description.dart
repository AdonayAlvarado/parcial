import 'package:flutter/material.dart';
import 'package:movie_app_flutter/utils/text.dart';

class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, launch_on;

  const Description(
      {Key key,
      this.name,
      this.description,
      this.bannerurl,
      this.posterurl,
      this.vote,
      this.launch_on})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 250),
      body: Container(
        child: ListView(children: [
          Container(
              height: 250,
              child: Stack(children: [
                Positioned(
                  child: Container(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10,
                    child:
                        modified_text(text: '⭐ Puntuacion promedio - ' + vote)),
              ])),
          SizedBox(height: 15),
          Container(
              padding: EdgeInsets.all(10),
              child: modified_text(
                text: name != null ? name : 'Not Loaded',
                size: 24,
                color: Color.fromARGB(255, 0, 0, 0),
              )),
          Container(
              padding: EdgeInsets.only(left: 10),
              child: modified_text(
                text: 'Disponible en - ' + launch_on,
                size: 14,
                color: Color.fromARGB(255, 0, 0, 0),
              )),
          Row(
            children: [
              Container(
                height: 200,
                width: 100,
                child: Image.network(posterurl),
              ),
              Flexible(
                child: Container(
                    padding: EdgeInsets.all(10),
                    child: modified_text(
                      text: description,
                      size: 18,
                      color: Color.fromARGB(255, 0, 0, 0),
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
