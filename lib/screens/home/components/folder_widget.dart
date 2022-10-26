import 'package:flutter/material.dart';
import 'package:spotify_masterclass/model/folder_dto.dart';
import 'package:spotify_masterclass/shared/get_size.dart';

class FolderWidget extends StatelessWidget {
  final Folder folder;
  const FolderWidget({Key? key, required this.folder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: GetSize.width(context) / 3,
      height: GetSize.width(context) / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: GetSize.width(context) / 3,
            height: GetSize.width(context) / 3,
            decoration: BoxDecoration(
              shape: folder.type == FolderType.group
                  ? BoxShape.circle
                  : BoxShape.rectangle,
              image: DecorationImage(
                  image: NetworkImage(folder.image), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(folder.title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
          Text(folder.description,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.white))
        ],
      ),
    );
  }
}
