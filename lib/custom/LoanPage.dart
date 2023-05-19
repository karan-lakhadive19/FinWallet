import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoanPage extends StatelessWidget {
  fetchMovies() async {
    var url;
    url = await http.get(Uri.parse(
        "https://newsapi.org/v2/everything?q=invest&apiKey=f500fa18296143ec9c0976203f65d27a"));
    return json.decode(url.body)['articles'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191826),
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'FINANCE NEWS WITH FIN WALLET',
          style: TextStyle(fontSize: 25.0, color: Color(0x00968A)),
        ),
        elevation: 0.0,
        backgroundColor: Color(0xff191826),
      ),
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
                  return Row(
                    children: [
                      Container(
                        height: 250,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 500,
                          child: Card(
                            child: Image.network(
                                snapshot.data[index]['urlToImage'],
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.network('https://corp.smartbrief.com/wp-content/uploads/2020/07/AdobeStock_331489342-scaled.jpeg');
                                },
                                
                          ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20.0,
                              ),
                              Text(
                                snapshot.data[index]["title"],
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                snapshot.data[index]["description"],
                                style: TextStyle(color: Color(0xff868597)),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              // Container(
                              //   height: 100,
                              //   child: Text(
                              //     snapshot.data[index]["overview"],
                              //     style: TextStyle(color: Color(0xff868597)),
                              //   ),
                              // ),
                            ],
                          ),
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