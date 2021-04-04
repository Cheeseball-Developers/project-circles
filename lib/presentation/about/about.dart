import 'package:flutter/material.dart';
import 'package:projectcircles/presentation/about/widgets/github_avatar.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/button_tile.dart';
import 'package:projectcircles/presentation/core/widgets/buttons/my_text_button.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: MyTextButton(
                text: 'Share',
                onTap: () => Share.share(
                    'Hey, checkout this called Circles :)\n'
                    'https://play.google.com/store/apps/details?id=cheeseball.projectcircles'),
                type: ButtonType.primary,
              ),
            ),
            const Padding(padding: EdgeInsets.only(right: 8.0)),
            Expanded(
              child: MyTextButton(
                text: 'Rate on PlayStore',
                onTap: () => launch(
                    'https://play.google.com/store/apps/details?id=cheeseball.projectcircles'),
                type: ButtonType.primary,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 128.0),
                child: Text(
                  'Circles',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Josefin Sans',
                    fontSize: 64.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 16.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Text(
                  "Circles is a peer-to-peer offline file sharing app.\n\n"
                  "Circles let's you create your own circle or join a circle, to share content in a multi-peer group. Be it photos, apps, music, as long as it is a file, it can be shared in circles!\n\n\n"
                  "Circles was developed with a lot of effort and care by\n",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      GitHubAvatar(username: 'abhishekUpmanyu'),
                      Text('Abhishek Upmanyu')
                    ],
                  ),
                  Column(
                    children: const [
                      GitHubAvatar(username: 'OmiWakode'),
                      Text('Omi Wakode'),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 16.0,
                  left: 16.0,
                  right: 16.0,
                ),
                child: Text(
                  "\nWe appreciate the time taken by you to use our app, we'll make sure you love it :)\n\n"
                  "You can support further development of this app by sharing the app with your friends and leaving a review on PlayStore.",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
