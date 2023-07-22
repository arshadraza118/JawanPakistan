import 'dart:io';

List<Map<String, dynamic>> students = [];

void addStudent() {
  print('Enter student name:');
  String name = stdin.readLineSync()!;

  print('Enter student class:');
  int clas = int.parse(stdin.readLineSync()!);

  print('Enter student roll number:');
  int rollNo = int.parse(stdin.readLineSync()!);

  if ((students.any((student) => student['rollNo'] == rollNo)) &&
      (students.any((student) => student['Class'] == clas))) {
    print('Student with roll number $rollNo already exists.');
  } else {
    print('Enter student grade:');
    String grade = stdin.readLineSync()!;

    Map<String, dynamic> student = {
      'name': name,
      'Class': clas,
      'rollNo': rollNo,
      'grade': grade,
    };
    students.add(student);

    print('Student added successfully!');
  }
}

List<Map<String, dynamic>> teachers = [];
void addTeacher() {
  print('Enter teacher name:');
  String teacherName = stdin.readLineSync()!;

  print('Enter teacher sub:');
  String sub = stdin.readLineSync()!;

  print('Enter teacher id :');
  int id = int.parse(stdin.readLineSync()!);

  if (teachers.any((teacher) => teacher['iden'] == id)) {
    print('teacher with id $id already exists.');
  } else {
    Map<String, dynamic> teacher = {
      'name': teacherName,
      'subject': sub,
      'iden': id,
    };
    teachers.add(teacher);

    print('Teacher added successfully!');
  }
}

void displayStudents() {
  if (students.isEmpty == true) {
    print('No students found.');
  } else {
    print('List of students:');
    for (var student in students) {
      print('Name: ${student['name']}');
      print('Class: ${student['class']}');
      print('Roll No: ${student['rollNo']}');
      print('Grade: ${student['grade']}');
      print('------------------------');
    }
  }
}

void displayTeachers() {
  if (students.isEmpty == true) {
    print('No teacher found.');
  } else {
    print('List of teacher:');
    for (var teacher in teachers) {
      print('Name: ${teacher['name']}');
      print('Class: ${teacher['sub']}');
      print('Roll No: ${teacher['iden']}');
      print('------------------------');
    }
  }
}

void main() {
  print('Student Management System');
  print("=========================");
  print('1. Add Student');
  print('2. Add Teacher');
  print('3. Display Students');
  print('4. Display Teacher');
  print('5. Exit');
  print('Enter your choice:');

  String? input = stdin.readLineSync();

  switch (input) {
    case '1':
      addStudent();
      break;
    case '2':
      addTeacher();
      break;
    case '3':
      displayStudents();
      break;
    case '4':
      displayTeachers();
      break;
    case '5':
      exit(0);

    default:
      print('Invalid choice. Please try again.');
  }
}
