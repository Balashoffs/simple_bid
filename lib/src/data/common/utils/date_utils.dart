import 'package:intl/intl.dart';

List<String> weekDays = [
  'Пн',
  'Вт',
  'Ср',
  'Чт',
  'Пт',
  'Сб',
  'Вс',
];

List<String> weekDaysFull = [
  'Понедельник',
  'Вторник',
  'Среда',
  'Четверг',
  'Пятница',
  'Суббота',
  'Воскресенье',
];

String dateTimeNow(){
  DateTime now = DateTime.now();
  return DateFormat('yyyy-MM-dd – kk:mm').format(now);
}
