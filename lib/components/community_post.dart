import 'package:flutter/material.dart';
import 'package:manna_vhack2024/components/community_post_inside.dart';

class CommunityPost extends StatelessWidget {
  final String postImage;
  final String avatarImage;
  final String title;
  final String name;

  CommunityPost({
    this.postImage = 'assets/plant.png',
    this.avatarImage = 'assets/girl.jpeg',
    this.title = 'Got my plant a new pot!',
    this.name = 'Ru Qian Chow',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CommunityPostInside(
                  postImage: postImage,
                  avatarImage: avatarImage,
                  title: title,
                  name: name)),
        );
      },
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: double
                      .infinity, // Set the width to occupy the entire available space
                  height: 50, // Set the desired height for the image
                  child: Image.asset(
                    '$postImage',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 4, 8),
                child: Text(
                  '$title',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 0, 5),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('$avatarImage'),
                    radius: 20,
                  ),
                ),
                Container(
                  color: Colors.red,
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Text(
                    '$name',
                    style: TextStyle(
                      fontSize: 9,
                    ),
                  ),
                ), // add this line
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          child: Text(
                            '3.6k',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.thumb_up,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
