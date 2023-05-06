// هذا هو مثال لصفحة التنبيهات في تطبيق أهل القرآن باستخدام حزمة فلاتر:

// ignore_for_file: depend_on_referenced_packages

// ```dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_screen.dart';
import 'package:intl/intl.dart';
import 'package:qoran_login/global/global.dart';

class NotificationsPage extends StatefulWidget {
  // ignore: c'onstant'_identifier_names, constant_identifier_names
  static const String LoginP = 'Notification_screen';
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat.yMMMEd().format(now);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              'assets/images/notification_background.png',
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: kWhiteColor,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CircleAvatar(
                          backgroundColor: kWhiteColor,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        'التنبيهات',
                        style: GoogleFonts.cairo(
                          fontSize: 25,
                          color: kWhiteColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                        ),
                        child: const Icon(
                          Icons.menu,
                          color: kWhiteColor,
                        ),
                      
                      ),
                        // 
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, idex) => Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                 child: ListTile(
                        leading: const CircleAvatar(
                          backgroundColor: kGreyColor,
                         ),
                         title: const Text("Notification tiiiitle "),
                         subtitle: Text(formattedDate),
                        trailing: IconButton(
                        onPressed: () {
                         Navigator.pushNamed(context, LoginPage.LoginP);
                        },
                        icon: const Icon(
                        Icons.arrow_drop_down,
                      ),
                    ),
                  ),
                ),
                
              ),
            ),
                            
                     ],
        ),
      ),
    );
  }
}
// ```

// في هذا المثال، يتم عرض قائمة من التنبيهات باستخدام ListView.builder. يمكن تعديل عدد التنبيهات المتاحة بتغيير قيمة itemCount.

// ويتضمن كل عنصر في القائمة ListTile الذي يحتوي على الرمز الأيقوني للتنبيه (leading)، وعنوان التنبيه (title)، ونص التنبيه (subtitle)، والتوقيت (trailing). ويمكن تنفيذ إجراء معين عند النقر على التنبيه من خلال استخدام خاصية onTap.

// يمكن تعديل وتخصيص هذه العناصر لتناسب احتياجات التطبيق ومتطلبات العميل.
