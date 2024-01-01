import 'package:books_shop/ui/book_model/book_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book.dart';

class BookModel extends StatelessWidget {
  final BookEntity book;
  const BookModel(
      {super.key,required this.book});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white,
        ),
        height: 250,
        width: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.blue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          book.bookCategory,
                          style: TextStyle(
                              fontSize: 14, color: CupertinoColors.white),
                        ),
                      )),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  book.picture,
                  height: 70,
                  width: 70,
                ),
              ),
            ),
            Stack(
              children: [
                Row(
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "${book.name}",
                          style: TextStyle(
                              fontSize: 14, color: CupertinoColors.black),
                        )),
                    SizedBox(
                      width: 18,
                    ),
                    Stack(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => BookObject(
                                            book: book,

                                          )));
                            },
                            child: Icon(
                              Icons.arrow_circle_right_sharp,
                              color: Colors.green,
                              size: 24,
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " ${book.star} hghghghg",
                  style: TextStyle(fontSize: 10),
                )),
          ],
        ),
      ),
    );
  }
}
