import '../../constant/app_import.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenBackGroundColor,
      appBar: AppBar(
        backgroundColor: screenBackGroundColor,
        toolbarHeight: 100,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Welcome",
          style: TextStyle(
            fontSize: 64,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Email Filed ///
                DefoultTextFiled(
                  controller: emailController,
                  hintText: "Email",
                  onFieldSubmitted: (text) {},
                  obscureText: false,
                ),
                SizedBox(
                  height: 10,
                ),

                /// password Filed ///
                DefoultTextFiled(
                  controller: passwordController,
                  hintText: "Password",
                  onFieldSubmitted: (text) {},
                  obscureText: true,
                ),

                /// forget password ///
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          print("Forget Password");
                        },
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 10,
                          ),
                        ))
                  ],
                ),

                /// Login btn ///
                Container(
                  width: double.infinity,

                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: MaterialButton(
                      onPressed: () {print("Btn Login");},
                      height: 48,
                      animationDuration: Duration(minutes: 500),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
