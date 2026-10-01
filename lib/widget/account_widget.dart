import 'package:flutter/material.dart';

class AccountWidget extends StatefulWidget {
  late String description;
  late IconData icondescription;


  AccountWidget({super.key,required this.description,required this.icondescription});

  @override
  State<AccountWidget> createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(widget.icondescription),
            SizedBox(width: 10,),
            Text("${widget.description}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
          ],
        ),
        Icon(Icons.arrow_forward_ios,size: 24,color: Colors.grey,),
      ],
    );
  }
}
