bool isDoubleContainDecimal(double number) {
  String numberInString = number.toString();
  String decimalPartInString = numberInString.split(".")[1];
  int decimalPartInInt = int.parse(decimalPartInString);
  return decimalPartInInt > 0;
}
