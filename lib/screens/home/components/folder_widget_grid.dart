import 'package:flutter/material.dart';
import 'package:spotify_masterclass/model/folder_dto.dart';
import 'package:spotify_masterclass/screens/home/components/folder_widget.dart';
import 'package:spotify_masterclass/shared/get_size.dart';

class FolderGridWidget extends StatelessWidget {
  final String title;
  final List<Folder> folders;
  const FolderGridWidget({Key? key, required this.folders, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25)),
        ),
        InkWell(
          //TODO: NEED TO COMPLETE HERE
          onTap: () {},
          child: SizedBox(
            height: GetSize.width(context) / 2,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return FolderWidget(folder: folders[index]);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 20);
                },
                itemCount: folders.length),
          ),
        ),
      ],
    );
  }
}
