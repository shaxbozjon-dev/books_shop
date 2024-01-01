import 'package:books_shop/ui/book_model/book_entity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FireStoreServise {
  static final _instance = FirebaseFirestore.instance;
  static final _bookPath = _instance.collection('books');

  static Future<void> addBook(BookEntity book) async {
    await _bookPath.doc(book.id).set(book.toJson());
  }

  static Future<void> removeBook(String id) async {
    await _bookPath.doc(id).delete();
  }

  static Future<void> updateBook(BookEntity book) async {
    await _bookPath.doc(book.id).update(book.toJson());
  }

  static Future<BookEntity?> readBook(String id) async {
    final book = await _bookPath.doc(id).get();
    if (book.exists) {
      return BookEntity.fromJson(book.data()!.cast<String, Object?>());
    } else {
      return null;
    }
  }

  static Future<List<BookEntity>> readAllBook() async {
    final books = await _bookPath.get();
    final allbooks =
        books.docs.map((e) => BookEntity.fromJson(e.data())).toList();
    return allbooks;
  }
}
