extension Navigation on String {
  String get relativePath => substring(1);
  String get parentModule => '../$this';
  String get toNavigation => replaceAll('//', '/');
  String get modulePath => '..$this';
}
