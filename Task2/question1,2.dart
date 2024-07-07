///////task1
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
////////////task2
class Novel extends Book {
  final String genre;

  Novel(String title, String author, int numOfPages, this.genre): super(title, author, numOfPages);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Genre: $genre');
  }
}


void main() {

  Book book = Book('The Great Gatsby', 'F. Scott Fitzgerald', 180);
  book.displayInfo();
  ////task2
  Novel novel = Novel('To Kill a Mockingbird', 'Harper Lee', 281, 'Fiction');
  novel.displayInfo();
}
