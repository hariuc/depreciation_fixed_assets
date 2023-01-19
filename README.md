# Износ ОС

### Code generation

This project uses code generators

**flutter pub run build_runner build --delete-conflicting-outputs**

#### Localizations Integration:

This project uses flutter easy__localization pub in order to localize the
app https://pub.dev/packages/easy_localization

in order to add new localization key:

- add the key-value pair for english language into '/locales/en_us.json';
- run **flutter pub run easy_localization:generate -S assets/i18n/ -s ru-RU.json -f keys -o locale_keys.loc.dart**  to generate the key-constants;