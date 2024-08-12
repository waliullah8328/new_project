import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../login/login_screen.dart';

enum Author {
  Admin,
  User
}

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  _MyFormState(){
    selectedValue = gender[0];
  }
  final gender = ["Male","Female","Other"];
  String selectedValue = "";
   Author? author;

   final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sign Up Screen",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 90, right: 90),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 60,),
                Text("Fillup all Field to sign Up",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter Your Name";
            
                    }
            
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Enter Name",
                  ),
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter Your Email";
            
                    }
            
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Enter Email",
                  ),
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter Your Phone";
            
                    }
                    else if(value.length != 11){
                      return "Enter 11 digit of number";
                    }
                    return null;
            
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Enter Phone Number",
                  ),
                ),
                DropdownButtonFormField(
            
                    items: gender.map((e) {
                  return DropdownMenuItem(child: Text(e),value: e,);
                }).toList(),
                    onChanged: (val){
                  setState(() {
                    selectedValue = val!;
            
                  });
            
                    }),
            
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(value: Author.Admin,
                          title: Text(Author.Admin.name),
                          groupValue: author, onChanged:(val){
                        setState(() {
                          author = val;
                        });
                      }),
                    ),
                    Expanded(
                      child: RadioListTile(value: Author.User,
                          title: Text(Author.User.name),
                          groupValue: author, onChanged:(val){
                            setState(() {
                              author = val;
                            });
                          }),
                    ),
                  ],
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter Your Password";
            
                    }
            
                  },
                  obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
            
                    labelText: "Enter Password",
                    suffix: Icon(Icons.visibility_off)
                  ),
                ),
                TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Please Enter Your Password";
            
                    }
            
                  },
                  obscureText: true,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
            
                      labelText: "Confirm Password",
                      suffix: Icon(Icons.visibility_off)
                  ),
                ),
                SizedBox(height: 50,),
            
                SizedBox(
                  height: 35,
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (){
                      if(formKey.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submitted Successfully")));
            
                      }
                    }, child: Text("Submit"))),
                SizedBox(height: 50,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Alread have account?"),
                    SizedBox(width: 10,),
                    InkWell(
                      onTap: (){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Going to Login Page")));
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));

                      },
                        child: Text("Login Now",style: TextStyle(color: Colors.blue),))
                  ],
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
