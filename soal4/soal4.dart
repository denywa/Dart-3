import 'dart:io';
import 'class4.dart';

void main() {
  var library = Library();

  while (true) {
    print('Choose an option:');
    print('1. Add a book');
    print('2. Remove a book');
    print('3. Display all books');
    print('4. Exit');
    var choice = stdin.readLineSync();

    if (choice == '1') {
      print('Enter book title:');
      var title = stdin.readLineSync()!;
      print('Enter book author:');
      var author = stdin.readLineSync()!;
      print('Enter book year:');
      var year = int.parse(stdin.readLineSync()!);
      var book = Book(title, author, year);
      library.addBook(book);
    } else if (choice == '2') {
      library.displayBooks();
      print('Enter the number of the book to remove:');
      var bookNumber = int.parse(stdin.readLineSync()!);
      library.removeBook(bookNumber - 1);
    } else if (choice == '3') {
      library.displayBooks();
    } else if (choice == '4') {
      break;
    } else {
      print('Invalid choice. Please try again.');
    }
    print('');
  }
}
