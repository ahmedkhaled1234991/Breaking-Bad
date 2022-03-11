class Character {

  //charId
  int char_id;
  //name
  String name;
  //nickName
  String nickname;
  //image
  String img;
  //jobs
  List<dynamic> occupation;
  //statusIfDeadOrAlive
  String status;
  //appearanceOfSeasons
  List<dynamic> appearance;
  //acotrName
  String portrayed;
  //categoryForTwoSeries
  String category;
  //betterCallSaulAppearance
  List<dynamic> better_call_saul_appearance;

  Character({
    required this.char_id,
    required this.name,
    required this.nickname,
    required this.img,
    required this.occupation,
    required this.status,
    required this.appearance,
    required this.portrayed,
    required this.category,
    required this.better_call_saul_appearance,
  });

  Map<String, dynamic> toMap() {
    return {
      'char_id': this.char_id,
      'name': this.name,
      'nickname': this.nickname,
      'img': this.img,
      'occupation': this.occupation,
      'status': this.status,
      'appearance': this.appearance,
      'portrayed': this.portrayed,
      'category': this.category,
      'better_call_saul_appearance': this.better_call_saul_appearance,
    };
  }

  factory Character.fromMap(Map<String, dynamic> map) {
    return Character(
      char_id: map['char_id'] as int,
      name: map['name'] as String,
      nickname: map['nickname'] as String,
      img: map['img'] as String,
      occupation: map['occupation'] as List<dynamic>,
      status: map['status'] as String,
      appearance: map['appearance'] as List<dynamic>,
      portrayed: map['portrayed'] as String,
      category: map['category'] as String,
      better_call_saul_appearance:
          map['better_call_saul_appearance'] as List<dynamic>,
    );
  }
}