part of 'view.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  static String route = 'register_page';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

enum Gender { pria, wanita }

class _RegisterPageState extends State<RegisterPage> {
  String gender = 'Laki-laki';
  List<String> classSlta = ['10', '11', '12'];
  String selectedClass = '10';

  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final schoolNameController = TextEditingController();

  onTapGender(Gender genderInput) {
    if (genderInput == Gender.pria) {
      gender = 'Laki-laki';
    } else {
      gender = 'Perempuan';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Yuk isi data diri!',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegisterTextField(
                controller: emailController,
                title: 'Email',
                hintText: 'masukkan email',
              ),
              const SizedBox(
                height: 5,
              ),
              RegisterTextField(
                controller: nameController,
                title: 'Nama Lengkap',
                hintText: 'masukkan nama',
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Jenis Kelamin',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                          onPressed: () => onTapGender(Gender.pria),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: gender == 'Laki-laki'
                                  ? R.colors.primary
                                  : Colors.white,
                              side: BorderSide(
                                  width: 1,
                                  color: gender == 'Laki-laki'
                                      ? R.colors.primary
                                      : R.colors.greyBorder),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: Text(
                            'Laki-Laki',
                            style: TextStyle(
                                fontSize: 14,
                                color: gender == 'Laki-laki'
                                    ? Colors.white
                                    : R.colors.blackText2Button),
                          )),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ElevatedButton(
                          onPressed: () => onTapGender(Gender.wanita),
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: gender == 'Perempuan'
                                  ? R.colors.primary
                                  : Colors.white,
                              side: BorderSide(
                                  width: 1,
                                  color: gender == 'Perempuan'
                                      ? R.colors.primary
                                      : R.colors.greyBorder),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: Text(
                            'Perempuan',
                            style: TextStyle(
                                fontSize: 14,
                                color: gender == 'Perempuan'
                                    ? Colors.white
                                    : R.colors.blackText2Button),
                          )),
                    ),
                  ),
                ],
              ),
              Text(
                'Kelas',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 14),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    border: Border.all(color: R.colors.greyBorder)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                      value: selectedClass,
                      items: classSlta
                          .map((e) => DropdownMenuItem<String>(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (String? val) {
                        selectedClass = val!;
                        setState(() {});
                      }),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              RegisterTextField(
                controller: schoolNameController,
                title: 'Nama Sekolah',
                hintText: 'masukkan nama sekolah',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: BottomButton(
          backgroundColor: R.colors.primary,
          borderColor: R.colors.primary,
          text: R.strings.register.toUpperCase(),
          textColor: Colors.white,
          onTap: (){
            debugPrint(emailController.text);
            Navigator.of(context).pushNamedAndRemoveUntil(MainPage.route, (context) => false);
          },
        ),
      ),
    );
  }
}

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({
    Key? key,
    required this.title,
    required this.hintText, this.controller,
  }) : super(key: key);
  final String title;
  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
              border: Border.all(color: R.colors.greyBorder)),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(color: R.colors.greyHintText)),
          ),
        ),
      ],
    );
  }
}
