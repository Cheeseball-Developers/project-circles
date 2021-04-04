import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GitHubAvatar extends StatelessWidget {
  final String username;

  const GitHubAvatar({required this.username});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launch('https://github.com/$username'),
      child: Card(
        elevation: 8.0,
        shape: const CircleBorder(),
        child: CircleAvatar(
          radius: MediaQuery.of(context).size.width / 8,
          foregroundImage:
              NetworkImage('https://avatars.githubusercontent.com/$username'),
          child: Text(username.substring(0, 1).toUpperCase()),
        ),
      ),
    );
  }
}
