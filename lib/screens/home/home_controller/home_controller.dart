import 'package:spotify_masterclass/mocks/mock_database.dart';
import 'package:spotify_masterclass/model/folder_dto.dart';

class HomeController {
  final MockDatabase repository;

  List<Folder> getRockFolders() {
    return repository.getRockFolders();
  }

  List<Folder> getCountryFolders() {
    return repository.getCountryFolders();
  }

  final welcomeMessages = [
    'Good Morning',
    'Good Afternoon',
    'Good Evening',
    'Good Night'
  ];
  HomeController({required this.repository});
}
