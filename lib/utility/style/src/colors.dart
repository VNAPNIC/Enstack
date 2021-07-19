part of style;

const Color mColorNavigationBar = Colors.black;
const Color mColorBackground = Colors.white;
final Color mStatusColor = Colors.white;
final Color mPrimaryColor = HexColor.fromHex('#009FE0');
final Color mAuthBackgroundColor = HexColor.fromHex('#141379');
final Color mTextSecondaryColor = HexColor.fromHex('#BDBDBD');
final Color mTextTitleColor = HexColor.fromHex('#838383');
final Color mBorderColor = HexColor.fromHex('#E8E8E8');
final Color mHintTextColor = HexColor.fromHex('#ABABAB');

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
