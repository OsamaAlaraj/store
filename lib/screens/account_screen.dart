import 'package:flutter/material.dart';
import 'package:testone/widget/account_widget.dart';
import 'package:testone/widget/bottomnavigationbar_widget.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Account", style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Divider(color: Colors.grey,),
                SizedBox(height: 10,),
                AccountWidget(description: 'My Orders', icondescription: Icons.add_task_sharp),
              ],
            ),
          ),
          Divider(color: Colors.grey,thickness: 4),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                AccountWidget(description: 'My Details', icondescription: Icons.person_pin_outlined),
                SizedBox(height: 10,),
                Divider(color: Colors.grey,),
                SizedBox(height: 10,),
                AccountWidget(description: 'Address Book', icondescription: Icons.home_outlined),
                SizedBox(height: 10,),
                Divider(color: Colors.grey,),
                SizedBox(height: 10,),
                AccountWidget(description: 'FAQs', icondescription: Icons.question_answer_sharp),
                SizedBox(height: 10,),
                Divider(color: Colors.grey,),
                SizedBox(height: 10,),
                AccountWidget(description: 'Help Center', icondescription: Icons.help_center),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade400,thickness: 4),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 24.0,left: 24.0,bottom: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.logout_outlined,color:Colors.red,),
                SizedBox(width: 10,),
                Text("Logout",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.red),),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 2),
    );
  }
}
