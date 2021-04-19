import 'package:firexcode/firexcode.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/components/banner_products.dart';
import 'package:food_app/components/products.dart';
import 'package:food_app/pages/view.dart';
import '../components/menu_button.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    xStatusBar(statusBarColor: Colors.white);
    return xStack.list([
      xListView.list([
        ListTile(
          title: 'Delicious Salads'
              .xTextColorBlack(fontsize: 30, fontWeight: FontWeight.bold),
          subtitle: 'We made fresh and healthy food'.xTextColorBlack(),
        ),
        xRowCSB.list([
          xRow.list([
            MenuButton(
              onTap: () {
                setState(() {
                  isSelectedMenu = 'Salads';
                });
              },
              isSelected: isSelectedMenu == 'Salads',
              name: 'Salads',
            ),
            10.0.sizedWidth(),
            MenuButton(
              onTap: () {
                setState(() {
                  isSelectedMenu = 'Soups';
                });
              },
              isSelected: isSelectedMenu == 'Soups',
              name: 'Soups',
            ),
            10.0.sizedWidth(),
            MenuButton(
              onTap: () {
                setState(() {
                  isSelectedMenu = 'Grilled';
                });
              },
              isSelected: isSelectedMenu == 'Grilled',
              name: 'Grilled',
            ),
          ]),
          Icons.filter_list
              .xIcons(color: Colors.black)
              .xIconButton(onPressed: () {})
        ]).xap(value: 10),
        BannerProducts(
          imageUrl: 'assets/banner.png',
          title: 'Chicken Salad',
          price: '\$32.00',
          heroTag: 'banner1',
          subTitle: 'Chicken with Adocado',
        ).xInkWell(onTap: () {
          ViewProducts(
            timeEstimate: '25 Mins',
            des:
                'Fresh and healthy salad made with own chef Recipe. Special healthy and-fat free dish fo those who want to lose weight',
            heroTag: 'banner1',
            imageUrl: 'assets/banner.png',
            title: 'Mediterraneam',
            price: '\$32.00',
            subTitle: 'Qunioa Salad',
          ).xRoutePage(context).materialPagePush();
        }).xap(value: 10),
        xRowSSB.list([
          Products(
            heroTag: 'banner2',
            imageUrl: 'assets/banner.png',
            title: 'Mixed Salad',
            price: '\$32.00',
            subTitle: 'Mixed Vegetables',
          ).xInkWell(onTap: () {
            ViewProducts(
              timeEstimate: '25 Mins',
              des:
                  'Fresh and healthy salad made with own chef Recipe. Special healthy and-fat free dish fo those who want to lose weight',
              heroTag: 'banner2',
              imageUrl: 'assets/banner.png',
              title: 'Mediterraneam',
              price: '\$32.00',
              subTitle: 'Qunioa Salad',
            ).xRoutePage(context).materialPagePush();
          }).xExpanded(),
          Products(
            heroTag: 'banner3',
            imageUrl: 'assets/banner.png',
            title: 'Mixed Salad',
            price: '\$32.00',
            subTitle: 'Mixed Vegetables',
          ).xInkWell(onTap: () {
            ViewProducts(
              timeEstimate: '25 Mins',
              des:
                  'Fresh and healthy salad made with own chef Recipe. Special healthy and-fat free dish fo those who want to lose weight',
              heroTag: 'banner3',
              imageUrl: 'assets/banner.png',
              title: 'Mediterraneam',
              price: '\$32.00',
              subTitle: 'Qunioa Salad',
            ).xRoutePage(context).materialPagePush();
          }).xExpanded(),
        ]).xap(value: 20),
        50.0.sizedHeight(),
      ]),
      xRow
          .list([
            Icons.home_outlined
                .xIcons(color: Colors.white, size: 30)
                .xContainer(
                    color: Colors.black,
                    padding: EdgeInsets.all(5),
                    onTap: () {})
                .xExpanded(),
            FontAwesomeIcons.wallet
                .xIcons(
                  color: Colors.white,
                )
                .xContainer(
                    color: Colors.black,
                    padding: EdgeInsets.all(5),
                    onTap: () {})
                .xExpanded(),
            FontAwesomeIcons.commentDots
                .xIcons(
                  color: Colors.white,
                )
                .xContainer(
                    color: Colors.black,
                    padding: EdgeInsets.all(5),
                    onTap: () {})
                .xExpanded(),
            FontAwesomeIcons.user
                .xIcons(color: Colors.white)
                .xContainer(
                    color: Colors.black,
                    padding: EdgeInsets.all(5),
                    onTap: () {})
                .xExpanded(),
          ])
          .xContainer(
              rounded: 40,
              color: Colors.black,
              width: xwidth(context),
              shadowColor: Colors.black,
              blurRadius: 10,
              offset: Offset(0, 10))
          .xap(value: 10)
          .xBottomCenter()
    ]).xScaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: Icons.menu
              .xIcons(color: Colors.black)
              .xIconButton(onPressed: () {}),
          actions: [
            Icons.search
                .xIcons(color: Colors.black)
                .xIconButton(onPressed: () {})
          ],
        ));
  }

  String isSelectedMenu = 'Salads';
}
