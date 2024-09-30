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

  void removeBook(Book book) {
    books.remove(book);
    print('Book ${book.title} has been removed.');
  }

  void displayBooks() {
    if (books.isEmpty) {
      print('No books in the library.');
    } else {
      print('Books in the library:');
      for (var book in books) {
        book.displayBook();
      }
    }
  }
}

void main() {
  var library = Library();

  var book1 = Book('Title1', 'author1', 2001);
  var book2 = Book('Title2', 'author2', 2002);
  var book3 = Book('Title3', 'author3', 2003);

  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);
  print('');
  library.displayBooks();
  print('');
  library.removeBook(book2);
  print('');
  library.displayBooks();
}
