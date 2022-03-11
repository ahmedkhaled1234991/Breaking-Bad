class Quote{

  String quote;

  Quote({
    required this.quote,
  });

  Map<String, dynamic> toMap() {
    return {
      'quote': this.quote,
    };
  }

  factory Quote.fromMap(Map<String, dynamic> map) {
    return Quote(
      quote: map['quote'] as String,
    );
  }
}