import 'dart:io';

class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);

  void displayBook() {
    print('Title: $title, Author: $author, Year: $year');
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book ${book.title} has been added.');
  }

  void removeBook(int index) {
    if (index >= 0 && index < books.length) {
      var removedBook = books.removeAt(index);
      print('Book ${removedBook.title} has been removed.');
    } else {
      print('Invalid book number.');
    }
  }

  void displayBooks() {
    if (books.isEmpty) {
      print('No books in the library.');
    } else {
      print('Books in the library:');
      for (var i = 0; i < books.length; i++) {
        stdout.write('${i + 1}. ');
        books[i].displayBook();
      }
    }
  }
}
