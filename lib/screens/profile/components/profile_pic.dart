import 'package:ecommerce_ui/const/assetsname.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(AssetsName.profileimage),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                  primary: Theme.of(context).primaryColorLight,
                  backgroundColor:
                      Theme.of(context).primaryColorLight.withOpacity(0.8),
                ),
                onPressed: () {},
                child: SvgPicture.asset(AssetsName.cameraicon),
              ),
            ),
          )
        ],
      ),
    );
  }
}
