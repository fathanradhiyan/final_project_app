part of 'view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String route = "login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  R.strings.login,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                )),
            Image.asset(R.assets.imgLogin),
            SizedBox(
              height: 35,
            ),
            Text(
              R.strings.welcome,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
            Text(
              R.strings.loginDesc,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: R.colors.subtitle,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                children: [
                  ButtonLogin(
                    onTap: () => Navigator.of(context).pushNamed(RegisterPage.route),
                    backgroundColor: Colors.white,
                    borderColor: R.colors.buttonBorder,
                    text: R.strings.loginGoogle,
                    textColor: R.colors.blackTextButton,
                    iconButton: R.assets.google,
                  ),
                  SizedBox(height: 12,),
                  ButtonLogin(
                    onTap: (){},
                    backgroundColor: Colors.black,
                    borderColor: Colors.black,
                    text: R.strings.loginApple,
                    textColor: Colors.white,
                    iconButton: R.assets.apple,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


