class User {
  int id;
  String username;
  String avatartPictureUrl;
  bool isOnline;
  User(
      {required this.id,
      required this.username,
      required this.avatartPictureUrl,
      required this.isOnline});
}

User currentUser = User(
    id: 1,
    username: "Mohamed",
    avatartPictureUrl: "images/profile.jpg",
    isOnline: true);

User taklit = User(
    id: 2,
    username: "Taklit",
    avatartPictureUrl: "images/profile.jpg",
    isOnline: true);

User ahmed = User(
    id: 3,
    username: "Ahmed",
    avatartPictureUrl: "images/profile.jpg",
    isOnline: false);

User faouzi = User(
    id: 4,
    username: "Faouzi",
    avatartPictureUrl: "images/profile.jpg",
    isOnline: false);

List<User> users = [taklit, ahmed, faouzi];
