import 'package:spotify_masterclass/model/folder_dto.dart';
import 'package:spotify_masterclass/model/music.dart';

class MockDatabase {
  List<Folder> getRockFolders() {
    return [
      Folder(
          type: FolderType.album,
          musics: [Music()],
          title: 'Rock 4ever',
          description: 'Love rock',
          image:
              'https://i.pinimg.com/236x/de/d3/0c/ded30cb9356971617434203a7d8e5228.jpg'),
      Folder(
          type: FolderType.album,
          musics: [Music()],
          title: 'Rock leve',
          description: 'To relax',
          image:
              'https://i.pinimg.com/236x/bb/48/04/bb4804fec61274840b7013ee5d61b41a.jpg'),
      Folder(
          type: FolderType.group,
          musics: [Music()],
          title: 'Metalicaaaaaaaaaaaaaaaaaaaaaaaaaa',
          description: 'for fans',
          image:
              'https://i.pinimg.com/236x/95/a7/4c/95a74c58b26285490ec7c5cc7b777525.jpg'),
      Folder(
          type: FolderType.album,
          musics: [Music()],
          title: 'Rock pesado',
          description: 'go party',
          image:
              'https://i.pinimg.com/236x/4f/83/9e/4f839e312ba6c3c21d2d4588e62dfd18.jpg'),
      Folder(
          type: FolderType.album,
          musics: [Music()],
          title: 'This is rock\'n roll',
          description: 'classic musics',
          image:
              'https://i.pinimg.com/236x/fd/0e/89/fd0e8937ccab143c902e3b15ada90085.jpg'),
      Folder(
          type: FolderType.group,
          musics: [Music()],
          title: 'AC/DC',
          description: 'for fans',
          image:
              'https://i.pinimg.com/236x/e9/60/e2/e960e28b8c4347146d7a77ab2f68b1d9.jpg'),
      Folder(
          type: FolderType.singer,
          musics: [Music()],
          title: 'Rock anos 90',
          description: 'flashback',
          image:
              'https://i.pinimg.com/236x/c7/67/b4/c767b493e2f987727035649533d92015.jpg'),
      Folder.fixture(),
    ];
  }

  List<Folder> getCountryFolders() {
    return [
      Folder(
          type: FolderType.album,
          musics: [Music()],
          title: 'Festival Sertanejo',
          description: 'Sofrencia jovem',
          image:
              'https://i.pinimg.com/236x/16/20/e8/1620e8e82d7227c328eec3a2dcdfcfa3.jpg'),
      Folder(
          type: FolderType.album,
          musics: [Music()],
          title: 'Potencia Sertaneja',
          description: 'To relax',
          image:
              'https://i.pinimg.com/236x/2e/21/a4/2e21a4f37ccccb6290306714def3e8a1.jpg'),
      Folder(
          type: FolderType.group,
          musics: [Music()],
          title: 'Zé Neto e Cristiano',
          description: 'for fans',
          image:
              'https://i.pinimg.com/236x/e2/03/92/e203921475c50f61255fffa432cbae79.jpg'),
      Folder(
          type: FolderType.album,
          musics: [Music()],
          title: 'Sertanejo Raiz',
          description: 'Pra curtir no rancho',
          image:
              'https://i.pinimg.com/236x/c5/34/1a/c5341a1b23d17e625e73368d59b1395f.jpg'),
      Folder(
          type: FolderType.album,
          musics: [Music()],
          title: 'As melhores do sertanejo',
          description: 'classic musics',
          image:
              'https://i.pinimg.com/236x/21/d0/09/21d0093e73d4d529cb6667b24b41669c.jpg'),
      Folder(
          type: FolderType.group,
          musics: [Music()],
          title: 'Jorge & Mateus',
          description: 'for fans',
          image:
              'https://i.pinimg.com/236x/4b/bd/8c/4bbd8c18ccc2b1a3103da5e7725f81d1.jpg'),
      Folder(
          type: FolderType.singer,
          musics: [Music()],
          title: 'Mulheres da Sofrencia',
          description: 'Saudades da rainha',
          image:
              'https://i.pinimg.com/236x/a1/3e/d9/a13ed9efe1ebff6ba66320a74e3b381b.jpg'),
    ];
  }

  List<Folder> getEletroFolders() {
    return [];
  }
}
