import 'dart:io';
import 'class1.dart';

void main() {
  print('Enter student name:');
  var name = stdin.readLineSync()!;
  
  print('Enter student ID:');
  var studentID = stdin.readLineSync()!;
  
  print('Enter student grade:');
  var grade = double.parse(stdin.readLineSync()!);
  
  var student1 = Student(name, studentID, grade);
  student1.displayInfo();
  print('Is Passing: ${student1.isPassing()}');
}
