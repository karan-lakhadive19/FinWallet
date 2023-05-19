import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class News extends StatelessWidget {
  fetchMovies() async {
    var url;
    url = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=stocks&apiKey=f500fa18296143ec9c0976203f65d27a"));
    return json.decode(url.body)['articles'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 28, 26, 55),
      //backgroundColor: Color.fromARGB(255, 130, 202, 122),
      appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
          toolbarHeight: 100,
          centerTitle: false,
          title: Text(
            'NEWS WITH FIN WALLET',
            style: GoogleFonts.lexend(fontSize: 27, color: Colors.white),
          ),
          elevation: 2.0,
          // backgroundColor: Color(0xff191826),
          backgroundColor: Color.fromARGB(255, 34, 135, 101)),
      body: FutureBuilder(
          future: fetchMovies(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
            if (snapshot.hasData) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data.length,
                padding: EdgeInsets.all(8),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        height: 250,
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: Card(
                            child: Image.network(
                              snapshot.data[index]['urlToImage'] == null
                                  ? 'https://corp.smartbrief.com/wp-content/uploads/2020/07/AdobeStock_331489342-scaled.jpeg'
                                  : snapshot.data[index]['urlToImage'],
                              errorBuilder: (context, error, stackTrace) {
                                return Image.network(
                                    'https://corp.smartbrief.com/wp-content/uploads/2020/07/AdobeStock_331489342-scaled.jpeg');
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // SizedBox(width: 22,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              snapshot.data[index]["title"] == null
                                  ? ' '
                                  : snapshot.data[index]["title"],
                              style: GoogleFonts.lexend(
                                  fontSize: 25, color: Colors.white),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              snapshot.data[index]["description"] == null
                                  ? ' '
                                  : snapshot.data[index]["description"],
                              style: GoogleFonts.lexend(
                                  fontSize: 18, color: Color(0xff868597)),
                              // style: TextStyle(color: Color(0xff868597)),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(snapshot.data[index]["source"]["name"],
                                style: GoogleFonts.lexend(
                                    fontSize: 18, color: Colors.white)),
                            SizedBox(
                              height: 15,
                            ),
                            // Text(
                            //   snapshot.data[index]["publishedAt"],
                            //   style: GoogleFonts.lexend(fontSize: 18, color: Colors.white)
                            //   ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
