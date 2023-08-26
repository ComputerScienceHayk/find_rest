import 'package:auto_route/annotations.dart';
import 'package:empty_widget/empty_widget.dart';
import 'package:flutter/cupertino.dart';

@RoutePage()
class TapeView extends StatelessWidget {
  const TapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: EmptyWidget(
        packageImage: PackageImage.Image_1,
        title: 'Tape view',
        subTitle: 'Soon here will be list of restaurants',
        titleTextStyle: const TextStyle(
          fontSize: 22,
          color: Color(0xff9da9c7),
          fontWeight: FontWeight.w500,
        ),
        subtitleTextStyle: const TextStyle(
          fontSize: 14,
          color: Color(0xffabb8d6),
        ),
      ),
    );
  }
}
