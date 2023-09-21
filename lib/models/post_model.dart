import 'package:nha_hang_flutter/models/user_model.dart';

class PostModel {
  UserMosel? user;
  String? cuissineType;
  String? desription;
  List<String>? images;

  PostModel();
}

List<PostModel> posts = [
  PostModel()
    ..user = user1
    ..cuissineType = 'Da Nang City'
    ..desription =
        'sdfadsfbhasdvfasvasjvhbas hvbasv hasgvhnaewvasjvhsavbaiuejrkk jvhabshdvbiuabvskv iavbadbv'
    ..images = [
      'assets/images/avt7.jpg',
      'assets/images/avt6.jpg',
      'assets/images/avt5.jpg',
    ],

    PostModel()
    ..user = user2
    ..cuissineType = 'Hoi An City'
    ..desription =
        'sdfadsfbhasdvfasvasjvhbas hvbasv hasgvhnaewvasjvhsavbaiuejrkk jvhabshdvbiuabvskv iavbadbv'
    ..images = [
      'assets/images/avt1.jpg',
     
    ],


    PostModel()
    ..user = user3
    ..cuissineType = 'Quang Nam City'
    ..desription =
        'sdfadsfbhasdvfasvasjvhbas hvbasv hasgvhnaewvasjvhsavbaiuejrkk jvhabshdvbiuabvskv iavbadbv'
    ..images = [
      'assets/images/avt7.jpg',
      'assets/images/avt6.jpg',
      'assets/images/avt5.jpg',
    ],


    PostModel()
    ..user = user4
    ..cuissineType = 'Ha Lam City'
    ..desription =
        'sdfadsfbhasdvfasvasjvhbas hvbasv hasgvhnaewvasjvhsavbaiuejrkk jvhabshdvbiuabvskv iavbadbv'
    ..images = [
      'assets/images/avt7.jpg',
      'assets/images/avt6.jpg',
      'assets/images/avt5.jpg',
    ],
];


