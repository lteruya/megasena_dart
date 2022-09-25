class Volante7 {
  int dezena1;
  int dezena2;
  int dezena3;
  int dezena4;
  int dezena5;
  int dezena6;
  int dezena7;

  Volante7({
    required this.dezena1,
    required this.dezena2,
    required this.dezena3,
    required this.dezena4,
    required this.dezena5,
    required this.dezena6,
    required this.dezena7,
  });

  @override
  String toString() {
    return '[$dezena1, $dezena2, $dezena3, $dezena4, $dezena5, $dezena6, $dezena7]';
  }
}
