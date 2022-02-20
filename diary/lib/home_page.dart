import 'package:diary/diary_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // create text controller
  TextEditingController createTextController = TextEditingController();
  // update text controller
  TextEditingController updateTextController = TextEditingController();
  // 달력 보여주는 형식
  CalendarFormat _calendarFormat = CalendarFormat.month;
  // 선택된 날짜
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Consumer<DiaryService>(
      builder: (context, diaryService, child) {
        // DiaryService의 Diary 가져오기
        List<Diary> diaryList = diaryService.getByDate(selectedDate);
        return Builder(
          builder: (context) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: SafeArea(
                child: Column(
                  children: [
                    TableCalendar(
                      firstDay: DateTime.utc(2010, 10, 16),
                      lastDay: DateTime.utc(2030, 3, 14),
                      focusedDay: selectedDate,
                      selectedDayPredicate: (day) {
                        return isSameDay(selectedDate, day);
                      },
                      onDaySelected: (_, focusedDay) {
                        setState(() {
                          selectedDate = focusedDay;
                        });
                      },
                      // // 달력 형식을 동적으로 업데이트하려면 필요
                      calendarFormat: _calendarFormat,
                      onFormatChanged: (format) {
                        if (_calendarFormat != format) {
                          // Call `setState()` when updating calendar format
                          setState(() {
                            _calendarFormat = format;
                          });
                        }
                      },
                      calendarStyle: CalendarStyle(
                        // today 색상 제거
                        todayTextStyle: TextStyle(color: Colors.black),
                        todayDecoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),

                      // calendarBuilders: CalendarBuilders(
                      //   dowBuilder: (context, day) {
                      //     if (day.weekday == DateTime.sunday) {
                      //       final text = DateFormat.E().format(day);

                      //       return Center(
                      //         child: Text(
                      //           text,
                      //           style: TextStyle(color: Colors.red),
                      //         ),
                      //       );
                      //     }
                      //   },
                      // ),

                      // eventLoader: getEventsfromDay,
                      eventLoader: (date) {
                        return diaryService.getByDate(date);
                      },
                    ),
                    Divider(height: 1),
                    Expanded(
                      child: diaryList.isEmpty
                          ? Center(
                              child: Text(
                                "한 줄 일기를 작성해주세요.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          : ListView.separated(
                              itemCount: diaryList.length,
                              itemBuilder: (context, index) {
                                // 역순으로 보여주기
                                int i = diaryList.length - index - 1;
                                Diary diary = diaryList[i];
                                return ListTile(
                                  title: Text(
                                    diary.text,
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.black,
                                    ),
                                  ),

                                  // createdAt
                                  trailing: Text(
                                    DateFormat('kk:mm').format(diary.createdAt),
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),

                                  // 클릭하여 update
                                  onTap: () {
                                    showUpdateDialog(diaryService, diary);
                                  },

                                  onLongPress: () {
                                    showDeleteDialog(diaryService, diary);
                                  },
                                );
                              },
                              separatorBuilder: (context, index) {
                                // item 사이에 Divider 추가
                                return Divider(height: 1);
                              },
                            ),
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                backgroundColor: const Color.fromARGB(255, 95, 107, 186),
                onPressed: () => showCreateDialog(diaryService),
                child: const Icon(Icons.create),
              ),
            );
          },
        );
      },
    );
  }

  /// 작성하기
  /// 엔터를 누르거나 작성 버튼을 누르는 경우 호출
  void createDiary(DiaryService diaryService) {
    // 앞뒤 공백 삭제
    String newText = createTextController.text.trim();
    if (newText.isNotEmpty) {
      diaryService.create(newText, selectedDate);
      createTextController.text = "";
    }
  }

  /// 수정하기
  /// 엔터를 누르거나 수정 버튼을 누르는 경우 호출
  void updateDiary(DiaryService diaryService, Diary diary) {
    // 앞뒤 공백 삭제
    String updatedText = updateTextController.text.trim();
    if (updatedText.isNotEmpty) {
      diaryService.update(diary.createdAt, updatedText);
    }
  }

  /// 작성 다이얼로그 보여주기
  void showCreateDialog(DiaryService diaryService) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("일기 작성"),
        content: TextField(
          controller: createTextController,
          // autofocus: true,
          // 커서 색상
          cursorColor: Colors.indigo,
          decoration: InputDecoration(
            hintText: "한줄 일기를 작성해주세요.",
            // 포커스 되었을  때 밑줄 색상
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.indigo,
            )),
            // errorText: error,
          ),
          onSubmitted: (_) {
            // 엔터 누를 때 작성하기
            createDiary(diaryService);
            Navigator.pop(context);
          },
        ),
        actions: [
          // 취소 버튼
          TextButton(
            child: Text(
              "취소",
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
            onPressed: () => Navigator.pop(context),
          ),
          // 작성 버튼
          TextButton(
            child: Text(
              "작성",
              style: TextStyle(
                color: Colors.indigo,
              ),
            ),
            onPressed: () {
              createDiary(diaryService);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  /// 수정 다이얼로그 보여주기
  void showUpdateDialog(DiaryService diaryService, Diary diary) {
    showDialog(
        context: context,
        builder: (context) {
          updateTextController.text = diary.text;
          return AlertDialog(
            title: Text("일기 수정"),
            content: TextField(
              autofocus: true,
              controller: updateTextController,
              // 커서 색상
              cursorColor: Colors.indigo,
              decoration: InputDecoration(
                hintText: "한 줄 일기를 작성해 주세요.",
                // 포커스 되었을 때 밑줄 색상
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.indigo,
                  ),
                ),
              ),
              onSubmitted: (v) {
                // 엔터 누를 때 수정하기
                updateDiary(diaryService, diary);
                Navigator.pop(context);
              },
            ),
            actions: [
              // 취소 버튼
              TextButton(
                child: Text(
                  "취소",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.indigo,
                  ),
                ),
                onPressed: () => Navigator.pop(context),
              ),
              // 수정 버튼
              TextButton(
                child: Text(
                  "수정",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.indigo,
                  ),
                ),
                onPressed: () {
                  // 수정하기
                  updateDiary(diaryService, diary);
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

  /// 삭제 다이얼로그 보여주기
  void showDeleteDialog(DiaryService diaryService, Diary diary) {
    showDialog(
      context: context,
      builder: (context) {
        updateTextController.text = diary.text;
        return AlertDialog(
          title: Text("일기 삭제"),
          content: Text(
            diary.text + "를 삭제하시겠습니까?",
          ),
          actions: [
            // 취소 버튼
            TextButton(
              child: Text(
                "취소",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.indigo,
                ),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            // 삭제 버튼
            TextButton(
              child: Text(
                "삭제",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.indigo,
                ),
              ),
              onPressed: () {
                // 삭제하기
                diaryService.delete(diary.createdAt);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
