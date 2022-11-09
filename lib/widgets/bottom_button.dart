part of 'widget.dart';

class BottomButton extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final Color textColor;
  final Function()? onTap;
  const BottomButton({Key? key, required this.backgroundColor, required this.borderColor, required this.text, required this.textColor, this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          fixedSize: Size(size.width, 56),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide(color: borderColor)),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
