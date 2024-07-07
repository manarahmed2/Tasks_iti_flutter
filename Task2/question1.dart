class Book {
  final String title;
  final String author;
  final int numOfPages;

  Book(this.title, this.author, this.numOfPages);

  void displayInfo() {
    print('Title: $title');
    print('Author: $author');
    print('Number of Pages: $numOfPages');
  }
}

void main() {

  Book book = Book('The Great Gatsby', 'F. Scott Fitzgerald', 180);

  book.displayInfo();
}
