// طبعاً، يمكنني مساعدتك في ذلك! هذا هو الكود الكامل لصفحة تسجيل الدخول في تطبيق "أهل القرآن" باستخدام Flutter، بما في ذلك الصور والشعار والنصوص:

// ignore_for_file: unused_field

// ```
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../global/global.dart';

class LoginPage extends StatefulWidget {
   // ignore: constant_identifier_names
   static const String LoginP = 'Login_screen';
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();
  bool isVisible = false;
  String? _email, _password;

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 50.0,
                ),
                Text(
                  'تسجيل الدخول',
                  style: GoogleFonts.cairo(
                    fontSize: 25,
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: MediaQuery.of(context).size.width - 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                  ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              ' اسم المستخدم ',
                              style: GoogleFonts.cairo(
                                fontSize: 15,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                              controller: email,
                              textAlign: TextAlign.right,
                              validator: (val) =>
                                  val != null && !val.contains('@')
                                      ? ' ادخل اسم المستخدم.'
                                      : null,
                              onSaved: (val) => _email = val,
                              decoration: inputDecoration(
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: kGreyColor,
                                  size: 25,
                                ),
                                labelText: 'ادخل البريد الإلكتروني',
                                hintText: 'example@domain.com',
                                labelStyle: GoogleFonts.cairo(),
                                border: const UnderlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              'كلمة المرور',
                              style: GoogleFonts.cairo(
                                fontSize: 15,
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                            child: TextFormField(
                              controller: password,
                              textAlign: TextAlign.right,
                              validator: (val) => val != null && val.length < 6
                                  ? 'يجب أن تتكون كلمة المرور من 6 أحرف على الأقل.'
                                  : null,
                              onSaved: (val) => _password = val,
                              decoration: inputDecoration2(
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: kGreyColor,
                                  size: 20,
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () => setState(() {
                                    isVisible = !isVisible;
                                  }),
                                  icon: Icon(
                                    isVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: 20,
                                  ),
                                  color: kPrimaryColor,
                                ),
                                labelText: 'ادخل كلمة المرور',
                                labelStyle: GoogleFonts.cairo(),
                                hintText: '********',
                                border: const UnderlineInputBorder(),
                              ),
                              obscureText: true,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            TextButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'نسيت كلمة المرور ؟',
                                style: GoogleFonts.cairo(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'تسجيل الدخول',
                            style: GoogleFonts.cairo(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// ```

// يحتوي هذا الكود على الصور والشعار والنصوص التي تم طلبها، بالإضافة إلى حقلي نص (بريد إلكتروني وكلمة مرور) وزر "تسجيل الدخول".

// لاحظ أني استخدمت صورة خلفية في الخلفية مع تنسيق الواجهة باستخدام عناصر Column و SizedBox و Padding. أيضًا، لا تنسى تغيير مسار الصور والخطوط والألوان لتتناسب مع ملفات الوسائط التي تستخدمها في تطبيقك.

// أتمنى أن يكون هذا مفيدًا بالنسبة لك!
