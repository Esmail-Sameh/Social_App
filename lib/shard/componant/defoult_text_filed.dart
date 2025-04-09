import '../../constant/app_import.dart';

class DefoultTextFiled extends StatelessWidget {
  bool obscureText = false;
  TextEditingController controller;
  String hintText;
  Function(String)? onChanged;
  Function(String) onFieldSubmitted;

  DefoultTextFiled({
    super.key,
    required this.obscureText,
    required this.controller,
    required this.hintText,
    this.onChanged,
    required this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextFormField(

        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.orange)),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          //prefixIcon: Icon(Icons.email_outlined),
        ),
      ),
    );
  }
}
