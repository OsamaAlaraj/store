import 'package:flutter/material.dart';

class DetalisPage extends StatefulWidget {
  const DetalisPage({super.key});

  @override
  State<DetalisPage> createState() => _DetalisPageState();
}

class _DetalisPageState extends State<DetalisPage> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Icon(Icons.arrow_back, color: Colors.black),
            SizedBox(width: 180),
            Text("Details", style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    body: Align(
      alignment: AlignmentGeometry.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('${args['urlimage']}',height: 320,width: 300,),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('${args['name']}', style: TextStyle(color: Colors.black, fontSize: 24)),
            ),
          Row(children: [
            Icon(Icons.star,color: const Color.fromARGB(255, 237, 194, 38),),
            SizedBox(width: 10),
            Text("4.0/5", style: TextStyle(color: Colors.black87, fontSize: 16,decoration: TextDecoration.underline)),
            SizedBox(width: 5),
            Text("(45 reviews)", style: TextStyle(color: Colors.black38, fontSize: 16)),

          ],
          ),
            SizedBox(height: 10,),
            Text('${args['detalis']}', style: TextStyle(color: Colors.black45, fontSize: 16),textAlign: TextAlign.justify,),
            Spacer(),
            Divider(color: Colors.grey,thickness: 1),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Price',style: TextStyle(color: Colors.black38,fontSize: 16),),
                Text('\$ ${args['price']}',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight:FontWeight.bold,),),
              ],),
              SizedBox(width: 20,),
                Expanded(
                  child: ElevatedButton(onPressed: () {  },style: ElevatedButton.styleFrom(backgroundColor:Colors.blueAccent ),
                  child:Padding(padding: EdgeInsets.all(10), child: Text("Add to Cart",style: TextStyle(color:Colors.white,fontSize: 16),),)
                )
                ),
            ],),
          ],
        ),
      ),
    ),
    );
  }
}
