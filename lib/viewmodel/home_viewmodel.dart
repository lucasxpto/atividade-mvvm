
import '../model/book.dart';
import '../services/book_service.dart';

class HomeViewModel {
  final BookService _service = BookService();

  List<Book> books = [];

  Future<void> fetchBooks() async {
    books = await _service.getBooks();
  }
}
