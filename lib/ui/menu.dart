import 'package:books_shop/ui/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../common/database.dart';
import '../common/servise/fire_store/firestore_servise.dart';
import 'book_model/book_entity.dart';

class Homes extends StatefulWidget {
  const Homes({super.key});

  @override
  State<Homes> createState() => _HomesState();
}

class _HomesState extends State<Homes> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List baza = [
      Image.asset('img/lamborgini.jpg'),
    ];
    final searchController = TextEditingController();
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Stack(
              children: [
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          height: 406,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 266,
                                    color: Colors.blue.shade700,
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 24,
                                        ),
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: Text(
                                                'Popular Book',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white),
                                              ),
                                            )),
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: TextField(
                                            controller: searchController,
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Search book",
                                              filled: true,
                                              suffixIcon: Icon(
                                                Icons.display_settings_outlined,
                                                color: Colors.orange,
                                                size: 30,
                                              ),
                                              fillColor: Colors.white30,
                                              prefixIcon: Icon(
                                                Icons.search,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 200),
                                      child: SizedBox(
                                        height: 120,
                                        width: 300,
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(14)),
                                            color: Colors.brown,
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 54,
                                              ),
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 4),
                                                    child: Icon(
                                                      Icons
                                                          .arrow_circle_left_outlined,
                                                      color: Colors.white,
                                                      size: 30,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 230,
                                                  ),
                                                  Icon(
                                                    Icons
                                                        .arrow_circle_right_outlined,
                                                    color: Colors.white,
                                                    size: 30,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 50,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 50,
                                          width: 160,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                                color: Colors.orange),
                                            child: Center(
                                                child: Text(
                                              "sarguzasht",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 50,
                                          width: 160,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                                color: Colors.orange),
                                            child: Center(
                                                child: Text(
                                              "Adabiy",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 50,
                                          width: 160,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                                color: Colors.orange),
                                            child: Center(
                                                child: Text(
                                              "Badiy",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 50,
                                          width: 160,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Colors.orange,
                                            ),
                                            child: Center(
                                                child: Text(
                                              "Detektiv",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 50,
                                          width: 160,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Colors.orange,
                                            ),
                                            child: Center(
                                                child: Text(
                                              "Tarixiy",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          height: 50,
                                          width: 160,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              color: Colors.orange,
                                            ),
                                            child: Center(
                                                child: Text(
                                              "Ilmiy ",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ])),
          FutureBuilder<List<BookEntity>>(
              future: FireStoreServise.readAllBook(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final data = snapshot.data!;

                  return SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 1.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final book = data.elementAt(index);
                        return BookModel(book: book,);
                      },
                      childCount: data.length,
                    ),
                  );
                } else {
                  print(snapshot.hasData);
                  print(snapshot.error);
                  return SliverFillRemaining(

                    child: Center(child: CircularProgressIndicator()),
                  );
                }
              }),
        ],
      ),
    );
  }
}
