import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'book_entity.dart';

class BookObject extends StatelessWidget {
  final BookEntity book;

  const BookObject({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              width: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Image(image: NetworkImage(book.picture), fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Center(
                        child: Text(
                      book.name,
                      style: TextStyle(fontSize: 24),
                    )),
                    Center(
                        child: Text(
                      book.author,
                      style: TextStyle(fontSize: 16),
                    )),
                    Text(
                      book.description,
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () async{
                            final url=Uri.parse(book.pdf??"");
                            print(url);
                            print(await canLaunchUrl(url));
                            if (await canLaunchUrl(url)) {
                             await launchUrl(url);

                            }
                          },
                          child: SizedBox(
                              height: 50,
                              width: 100,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Colors.deepOrange,
                                ),
                                child: Center(
                                    child: Text(
                                  'READ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 26),
                                )),
                              )),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                            height: 50,
                            width: 100,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.deepOrange,
                              ),
                              child: Center(
                                  child: Text(
                                'LISTEN',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 26),
                              )),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ListView(
                        children: [],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
