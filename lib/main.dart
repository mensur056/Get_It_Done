import 'package:flutter/material.dart';
import 'package:get_it_done/models/items_data.dart';
import 'package:provider/provider.dart';
import 'package:splashscreen/splashscreen.dart';
import 'screens/home_page.dart';
import 'models/color_Theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ColorThemeData().createPrefObject();
  await ItemData().createPrefObject();

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ItemData>(
        create: (BuildContext context) => ItemData()),
    ChangeNotifierProvider<ColorThemeData>(
        create: (context) => ColorThemeData()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Provider.of<ColorThemeData>(context).loadThemeFromSharedPref();
    // Provider.of<ItemData>(context).loadItemsFromSharedPref();
    return Consumer2<ItemData, ColorThemeData>(
        builder: (context, itemsData, colorThemeData,child) {
          itemsData.loadItemsFromSharedPref();
          colorThemeData.loadThemeFromSharedPref();

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Provider.of<ColorThemeData>(context).selectedThemeData,
            home: SplashWidget(),
          );}
    );
  }
}
class SplashWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds:1,
        navigateAfterSeconds: HomePage(),
        title:  Text('Get It Done',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        image:  Image.asset('images/splash_image.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader:  TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.green
    );
  }
}
