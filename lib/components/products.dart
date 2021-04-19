import 'package:firexcode/firexcode.dart';
import 'package:food_app/global.dart';

class Products extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String price;
  final String heroTag;

  const Products(
      {Key key,
      this.heroTag,
      this.imageUrl,
      this.title,
      this.subTitle,
      this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return xStack.list([
      xColumnCC
          .list([
            50.0.sizedHeight(),
            title.xH3Text(color: Colors.black),
            7.0.sizedHeight(),
            subTitle.text(),
            7.0.sizedHeight(),
            price.xH3Text(color: Colors.black)
          ])
          .xContainer(color: white, height: 215, rounded: 100)
          .xtp(value: 45),
      'assets/banner.png'
          .xImageAsset()
          .xHero(tag: heroTag)
          .xContainer(width: 170)
          .xPositioned(top: -25, right: 8),
      Icons.add
          .xIcons(color: Colors.white)
          .xContainer(
              rounded: 100, color: Colors.black, padding: EdgeInsets.all(5))
          .xrp(value: 5)
          .xPositioned(bottom: 10, left: 55),
    ]).xContainer(
      height: 300,
    );
  }
}
