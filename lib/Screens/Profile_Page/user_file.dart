class User {
  final String imagePath;
  final String name;
  final String email, about;
  final bool isDarkMode;

  const User(
      {required this.name,
      required this.imagePath,
      required this.about,
      required this.email,
      required this.isDarkMode});
}
