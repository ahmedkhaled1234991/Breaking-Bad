import 'package:breaking_bad/data/models/quote.dart';
import 'package:breaking_bad/data/web_services/characters_web_services.dart';

import '../models/characters_model.dart';

class CharactersRepository {

  final CharactersWebServices charactersWebServices;

  CharactersRepository(this.charactersWebServices);

  Future<List<Character>> getAllCharacters() async {
    final characters = await charactersWebServices.getAllCharacters();
    return characters.map((character) => Character.fromMap(character)).toList();
  }

  Future<List<Quote>> getCharacterQuotes(String charName) async {
    final quotes = await charactersWebServices.getCharacterQuotes(charName);
    return quotes.map((charQuotes) => Quote.fromMap(charQuotes)).toList();
  }
}