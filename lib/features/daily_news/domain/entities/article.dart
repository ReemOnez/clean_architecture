import 'package:equatable/equatable.dart';

class Article extends Equatable {
  final int? id;
  final String? author, title, description, url, urlToImage, publishedAt, content;

  const Article(
    this.id,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  );

  @override
  /// props decides which objects we should consider for object comparison
  List<Object?> get props => [id, author, title, description, url, urlToImage, publishedAt, content];
}