import 'package:book_store/book_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'book.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => BookService())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<BookService>(builder: (context, bookService, child) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Book Store',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size(0, 60),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      child: Text(
                        'total ${bookService.bookList.length}',
                        textAlign: TextAlign.end,
                      )),
                  TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue)),
                      hintText: '원하시는 책을 검색해주세요.',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.search),
                        onPressed: () async {
                          if (_textEditingController.text.isNotEmpty) {
                            Response response = await Dio().get(
                              'https://www.googleapis.com/books/v1/volumes',
                              queryParameters: {
                                'q': _textEditingController.text
                              },
                            );
                            List<dynamic> searchDataList =
                                response.data['items'];

                            // print(response.data['items'][0]['volumeInfo']
                            //     ['title']);

                            // 기존 bookList 초기화
                            bookService.clearBooks();

                            // book 객체 생성
                            // book 객체를 bookList에 추가
                            for (var data in searchDataList) {
                              if (data == null) continue;

                              String title = data['volumeInfo']['title'];
                              String? subtitle = data['volumeInfo']['subtitle'];
                              String thumbnail =
                                  data['volumeInfo']['imageLinks']['thumbnail'];
                              String previewLink =
                                  data['volumeInfo']['previewLink'];

                              Book? book = Book(
                                  title: title,
                                  subtitle: subtitle ?? '',
                                  thumbnail: thumbnail,
                                  previewLink: previewLink);
                              bookService.addBook(book);
                            }
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: bookService.bookList.length,
            itemBuilder: (context, index) {
              Book book = bookService.bookList[index];
              return ListTile(
                leading: Image.network(book.thumbnail),
                title: Text(book.title),
                subtitle: Text(book.subtitle),
                onTap: () {
                  // 클릭시 previewLink 띄우기
                  print(book.previewLink);
                  launch(book.previewLink);
                },
              );
            }),
      );
    });
  }
}
