// ignore_for_file: constant_identifier_names

enum Language{
	EN
}

enum TranslatableTextKey{
	APP_NAME,
	SEARCH_COFFEE,
	LOCATION
}

class TranslatableText {
	static Language selectedLanguage = Language.EN;

	static Map map = {};
	static add(Language language, TranslatableTextKey key, String value){
		if(!map.containsKey(language)){
			map[language] = {};
		}
		map[language][key] = value;
	}

	static String text(TranslatableTextKey key, {Language? language}){
		language ??= selectedLanguage;
		return map[language] == null ? "" : map[language][key];
	}

	static setup(){
		add(Language.EN, TranslatableTextKey.APP_NAME, "Coffee Shop");
		add(Language.EN, TranslatableTextKey.SEARCH_COFFEE, "Search coffee");
		add(Language.EN, TranslatableTextKey.LOCATION, "Location");
	}
}
