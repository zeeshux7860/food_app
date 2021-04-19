import 'package:firexcode/firexcode.dart';
import 'package:food_app/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home().xMaterialApp(
        //theme: ThemeData(fontFamily: GoogleFonts.montserrat().fontFamily)
        );
  }
}
