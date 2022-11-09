part of 'widget.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    Key? key,
    required this.backgroundColor,
    required this.borderColor,
    required this.text,
    this.iconButton,
    required this.textColor,
    required this.onTap,
  }) : super(key: key);

  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final String? iconButton;
  final Color textColor;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        elevation: 0,
        fixedSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
            side: BorderSide(color: borderColor)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconButton!,
            width: 26,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
