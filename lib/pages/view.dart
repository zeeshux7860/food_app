import 'package:firexcode/firexcode.dart';
import 'package:flutter/cupertino.dart';

class ViewProducts extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String des;
  final String price;
  final String timeEstimate;
  final String heroTag;

  const ViewProducts(
      {Key key,
      this.heroTag,
      this.imageUrl,
      this.title,
      this.subTitle,
      this.des,
      this.price,
      this.timeEstimate})
      : super(key: key);
  @override
  _ViewProductsState createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  @override
  Widget build(BuildContext context) {
    return xListView.list([
      widget.imageUrl.xImageAsset(height: 280).xHero(
            tag: widget.heroTag,
          ),
      xColumn.list([
        widget.title.xText(
            color: Colors.black, fontsize: 18, fontWeight: FontWeight.bold),
        xRowCSB.list([
          widget.subTitle.xH1Text(color: Colors.black),
          xRow.list([
            Icons.add.xIcons(color: Colors.white, size: 15).xContainer(
                padding: EdgeInsets.all(5),
                color: Colors.black,
                rounded: 7,
                onTap: () {
                  setState(() {
                    quantity++;
                  });
                }),
            quantity
                .toString()
                .xH5Text(color: Colors.black)
                .xContainer(padding: EdgeInsets.all(5))
                .xhp(value: 2),
            Icons.remove.xIcons(color: Colors.white, size: 15).xContainer(
                padding: EdgeInsets.all(5),
                color: Colors.black,
                rounded: 7,
                onTap: () {
                  setState(() {
                    if (quantity > 1) {
                      quantity--;
                    }
                  });
                })
          ])
        ]),
        20.0.sizedHeight(),
        widget.des.text(
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            )),
        20.0.sizedHeight(),
        xRowSS.list([
          'Delivery Time'.xTextColorGrey(),
          15.0.sizedWidth(),
          Icons.watch_later_outlined.xIcons(size: 16, color: Colors.black),
          5.0.sizedWidth(),
          widget.timeEstimate.xH5Text(color: Colors.black)
        ]),
        20.0.sizedHeight(),
        "Total Price".xText(fontsize: 16),
        10.0.sizedHeight(),
        widget.price.xH2Text(color: Colors.black)
      ]).xap(value: 20),
    ]).xScaffold(
        floatingActionButton: RotationTransition(
          turns: AlwaysStoppedAnimation(45 / 360),
          child: RotationTransition(
              turns: AlwaysStoppedAnimation(-45 / 360),
              child: xStack.list(
                [
                  Icons.shopping_cart_outlined
                      .xIcons(color: Colors.white)
                      .xap(value: 10),
                  '1'
                      .xTextColorWhite(fontsize: 11)
                      .xhp(value: 3)
                      .xContainer(
                          rounded: 100,
                          padding: EdgeInsets.all(2),
                          color: Colors.red)
                      .xPositioned(right: 1, top: 3)
                ],
              )).xContainer(rounded: 20, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          leading: CupertinoIcons.back.xIcons(color: Colors.black).xIconButton(
              onPressed: () {
            back(context);
          }),
          backgroundColor: Colors.white,
          actions: [
            Icons.more_vert_outlined
                .xIcons(color: Colors.black)
                .xIconButton(onPressed: () {})
          ],
        ));
  }

  int quantity = 1;
}
