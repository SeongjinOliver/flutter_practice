import 'package:flutter/material.dart';

import 'book.dart';

class BookService extends ChangeNotifier {
  // 책 목록
  List<Book> bookList = [];

  void addBook(Book book) {
    bookList.add(book);
    notifyListeners();
  }

  void clearBooks() {
    bookList.clear();
    notifyListeners();
  }
}
