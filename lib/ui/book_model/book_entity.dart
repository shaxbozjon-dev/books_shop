class BookEntity {
  final String id;
  final String name;
  final String author;
  final String? pdf;
  final String? audio;
  final String description;
  final String picture;
  final int star;
  final String bookCategory;

  BookEntity( {  this.pdf, this.audio,
    required this.id,
    required this.name,
    required this.author,
    required this.description,
    required this.picture,
    required this.star,
    required this.bookCategory,
  });
Map<String,Object?>toJson(){
  return{
    'pdf':pdf,
    'audio':audio,
    'id':id,
    'name':name,
    'author':author,
    'description':description,
    'picture':picture,
    'star':star,
    'bookCategory':bookCategory,
  };
}


  factory BookEntity.fromJson(Map<String, Object?> json) {
    return BookEntity(
      pdf:json['pdf'] as String?,
      audio:json['audio'] as String?,
        id: json['id'] as String,
        name: json['name'] as String,
        author: json['author'] as String,
        description: json['description'] as String,
        picture: json['picture'] as String,
        star: json['star'] as int,
        bookCategory: json['bookCategory'] as String);
  }
}
