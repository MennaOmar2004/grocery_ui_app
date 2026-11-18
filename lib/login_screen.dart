import 'package:flutter/material.dart';
import 'package:grocery_app/home_screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 28.42),
                  child: Center(child: Image.asset("assets/group.png",width: 47.84, height: 55.64,))
                ),
                
                SizedBox(height: 100.21,),
            
                Text("Login",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
          
                SizedBox(height: 15,),
            
                Text("Enter your emails and password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400 ,color: Color(0xff7C7C7C)),),
          
                SizedBox(height: 40,),
          
                TextFormField(
                  cursorColor: Color(0xffE2E2E2),
                  decoration: InputDecoration(
                    label: Text("Email",style: TextStyle(color: Color(0xff7C7C7C),fontSize: 16,fontWeight: FontWeight.w600),),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE2E2E2)
                      )
                    ),
                  ),
                ),
          
                SizedBox(height: 30,),
                
                TextFormField(
                  cursorColor: Color(0xffE2E2E2),
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Password",style: TextStyle(color: Color(0xff7C7C7C),fontSize: 16,fontWeight: FontWeight.w600),),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffE2E2E2)
                      )
                    ),
                    suffixIcon: IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.visibility_off,color: Color(0xff7C7C7C),)
                    )
                  ),
                ),
          
                SizedBox(height: 20,),
          
                Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forgot Password?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                ),
          
                SizedBox(height: 30,),
          
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff53B175),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Center(child: Text("Login",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600 ,color: Colors.white),)),
                  ),
                ),
          
                SizedBox(height: 25,),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account? " ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),),
                    Text("SignUp",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600 ,color:Color(0xff53B175) ),)
                  ],
                )
          
          
            
              ],
            ),
          ),
        ),
      )
    );
  }
}