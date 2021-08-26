import 'package:flutter/material.dart';
import 'package:shoes_project/theme.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: backgroundColor1,
        elevation: 0,
        centerTitle: true,
        title: Text('Edit Profile'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.check,
                color: primaryColor,
              ),
              onPressed: () {}),
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Name',
            style: secondaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
                hintText: 'Zainal Salamun',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                )),
          )
        ]),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Username',
            style: secondaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
                hintText: '@zainalSalamun',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                )),
          )
        ]),
      );
    }

    Widget emailAddressInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Email Address',
            style: secondaryTextStyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primaryTextStyle,
            decoration: InputDecoration(
                hintText: 'zainalrtf@gmail.com',
                hintStyle: primaryTextStyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: subtitleColor,
                  ),
                )),
          )
        ]),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/image_profile.png'))),
            ),
            nameInput(),
            usernameInput(),
            emailAddressInput(),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: backgroundColor3,
        appBar: header(),
        body: content(),
        resizeToAvoidBottomInset: false);
  }
}
