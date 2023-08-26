import 'package:auto_route/annotations.dart';
import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyWidget(
      packageImage: PackageImage.Image_2,
      title: 'Map view',
      subTitle: 'Soon here will be a map\n with restaurants',
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
