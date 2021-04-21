import 'package:flutter/material.dart';
import '../../configs.dart';

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Configs.profilePicSize,
      height: Configs.profilePicSize,
      padding: const EdgeInsets.all(Configs.defaultSpacing),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Configs.SALMON,
        ),
        child: Container(
          margin: const EdgeInsets.all(Configs.defaultSpacing),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: Configs.defaultSpacing,
            ),
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/profile.png',
              // fit: BoxFit.contain,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
