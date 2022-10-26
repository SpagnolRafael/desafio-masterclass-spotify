import 'package:spotify_masterclass/model/music.dart';

enum FolderType { album, singer, group }

class Folder {
  FolderType type;
  List<Music> musics;
  String title;
  String description;
  String image;
  Folder(
      {required this.type,
      required this.musics,
      required this.title,
      required this.description,
      required this.image});

  factory Folder.fixture() => Folder(
      type: FolderType.album,
      musics: [Music()],
      title: 'Imagine Dragons',
      description: 'Rock Group',
      image:
          'https://i.pinimg.com/564x/53/7e/c0/537ec065c49a2a3fc4b26d1471ae59e4.jpg');
}
