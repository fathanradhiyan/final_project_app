part of 'view.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  static String route = 'main_page';

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pc = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Image.asset(R.assets.icQuiz, height: 30,),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomNavigation(),
      body: PageView(
        controller: _pc,
        physics: NeverScrollableScrollPhysics(),
        children: [
          HomeScreen(),
          //ChatScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }

  Container _buildBottomNavigation() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.06)
          )
        ]
      ),
      child: BottomAppBar(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.only(top: 8.0),
          height: 60,
          child: Row(
            children: [
              Expanded(
                child: Material(
                  child: InkWell(
                    onTap: () {
                      debugPrint('Home');
                      index = 0;
                      _pc.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
                      setState(() {

                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(R.assets.icHome, height: 20,),
                        Text('Home')
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  child: InkWell(
                    child: Column(
                      children: [
                        Image.asset(R.assets.icQuiz, height: 20,),
                        Text('Diskusi')
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  child: InkWell(
                    onTap: () {
                      debugPrint('Profile');
                      index = 1;
                      _pc.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
                      setState(() {

                      });
                    },
                    child: Column(
                      children: [
                        Image.asset(R.assets.icProfile, height: 20,),
                        Text('Profile')
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
