import 'package:auto_route/annotations.dart';
import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyWidget(
      packageImage: PackageImage.Image_3,
      title: 'Favorites view',
      subTitle: 'Soon here will be list of your\n favorite restaurants',
      titleTextStyle: const TextStyle(
        fontSize: 22,
        color: Color(0xff9da9c7),
        fontWeight: FontWeight.w500,
      ),
      subtitleTextStyle: const TextStyle(
        fontSize: 14,
        color: Color(0xffabb8d6),
      ),
    );
  }
}
