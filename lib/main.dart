import 'package:flutter/material.dart';

 main(){
   runApp(const MyApp());
 }
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
return  MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),

    debugShowCheckedModeBanner: false,
    home:HomeActivity());

  }

}
class HomeActivity extends StatelessWidget{
   MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text(message))
     );
   }
  @override

  Widget build(BuildContext context) {
     TextEditingController _numberControoler = TextEditingController();
     TextEditingController _passwordControoler = TextEditingController();
     TextEditingController _emailControoler = TextEditingController();
   return Scaffold(
     appBar: AppBar(
       title: Column(
         children: [
           Text("My Flutter Apk",style: TextStyle(color: Colors.white,fontSize: 25),)
         ],
       ),
       centerTitle: true,

       backgroundColor: Colors.blue,
     ),
     body:Column(
       children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: TextField(
           controller: _passwordControoler,
            obscureText: true,
           decoration: InputDecoration(
             hintText: "Enter your password",
             hintStyle: TextStyle(fontSize: 18,color: Colors.black),
             labelText: "Password",
             labelStyle: TextStyle(fontSize: 15,color: Colors.amber),
             prefixIcon: Icon(Icons.password),
             suffixIcon: Icon(Icons.send  ),
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15),
               borderSide:BorderSide(color: Colors.lightBlue,width: 10)
             )
           ),
         ),
       ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextField(
             controller: _numberControoler,
             keyboardType: TextInputType.number ,
             decoration: InputDecoration(
                 hintText: "Enter your number",
                 hintStyle: TextStyle(fontSize: 18,color: Colors.black),
                 labelText: "Number",
                 labelStyle: TextStyle(fontSize: 15,color: Colors.amber),
                 prefixIcon: Icon(Icons.phone),
                 suffixIcon: Icon(Icons.send  ),
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                     borderSide:BorderSide(color: Colors.lightBlue,width: 10)
                 )
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: TextField(
          controller: _emailControoler,
             decoration: InputDecoration(
                 hintText: "Enter your email",
                 hintStyle: TextStyle(fontSize: 18,color: Colors.black),
                 labelText: "Email",
                 labelStyle: TextStyle(fontSize: 15,color: Colors.amber),
                 prefixIcon: Icon(Icons.email),
                 suffixIcon: Icon(Icons.send  ),
                 border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                     borderSide:BorderSide(color: Colors.lightBlue,width: 10)
                 )
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: ElevatedButton(onPressed: (){MySnackBar("Submitted", context);}, child: Text("Submit"),style:ElevatedButton.styleFrom(backgroundColor: Colors.amber),),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: ElevatedButton(onPressed: (){MySnackBar("Cleared", context);}, child:Text("Clear"),style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),),
         )
       ],

     ) ,
   );
  }


}