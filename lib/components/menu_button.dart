import 'package:firexcode/firexcode.dart';

import '../global.dart';

class MenuButton extends StatelessWidget {
  final String name;
  final bool isSelected;
  final Function onTap;

  const MenuButton({Key key, this.name, this.isSelected, this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return name
        .xText(color: isSelected ? Colors.white : Colors.black)
        .xap(value: 5)
        .xhp(value: 5)
        .xContainer(
            rounded: 30, onTap: onTap, color: isSelected ? black : white);
  }
}
