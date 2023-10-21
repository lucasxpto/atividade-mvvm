
import '../model/book.dart';

class BookService {
  Future<List<Book>> getBooks() async {
    // Simulando uma chamada de API
    await Future.delayed(const Duration(seconds: 2));
    return [
      Book(title: 'Livro 1', author: 'Autor 1'),
      Book(title: 'Livro 2', author: 'Autor 2'), 
    ];
  }
}
