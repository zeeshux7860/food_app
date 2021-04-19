import 'package:firexcode/firexcode.dart';
import 'package:food_app/global.dart';

class BannerProducts extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String price;
  final String heroTag;

  const BannerProducts(
      {Key key,
      this.imageUrl,
      this.heroTag,
      this.title,
      this.subTitle,
      this.price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return xRow.list([
      'assets/banner.png'
          .xImageAsset()
          .xHero(tag: heroTag)
          .xContainer(width: 150),
      xColumnSC.list([
        title.xH3Text(color: Colors.black),
        xRowCSB.list([
          subTitle.text(),
          Icons.add
              .xIcons(color: Colors.white)
              .xContainer(
                  rounded: 100, color: Colors.black, padding: EdgeInsets.all(5))
              .xrp(value: 5)
        ]),
        price.xH3Text(color: Colors.black)
      ]).xExpanded()
    ]).xContainer(color: white, rounded: 100, height: 150);
  }
}
