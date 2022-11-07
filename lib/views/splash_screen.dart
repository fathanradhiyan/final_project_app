part of 'view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String route = "splash_screen"; //diberi penamaan agar tidak typo ketika pushNamed

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), (){
      Navigator.of(context).pushNamed(LoginPage.route);
    });

    return Scaffold(
      backgroundColor: R.colors.primary,
      body: Center(
        child: Image.asset(R.assets.icSplash, fit: BoxFit.contain,),
      )
    );
  }
}
