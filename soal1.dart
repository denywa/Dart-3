class Student {
  String name;
  String studentID;
  double grade;

  Student(this.name, this.studentID, this.grade);

  void displayInfo() {
    print('Name: $name');
    print('Student ID: $studentID');
    print('Grade: $grade');
  }

  bool isPassing() {
    return grade >= 70;
  }
}

void main() {
  var student1 = Student('Deny', '0806022310009', 90);
  student1.displayInfo();
  print('Is Passing: ${student1.isPassing()}');
}
