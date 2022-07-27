import 'package:bet_animals/componants/componants.dart';
import 'package:bet_animals/views/home_screen.dart';
import 'package:bet_animals/views/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 var emailController = TextEditingController();
  var passwordController = TextEditingController();
  String dog1 = 'assets/Eye/Dogpaw-cuate.svg';




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 50) ,
        child: customLoginAppBar(context),
      ),
     
      body: Padding(
        padding: const EdgeInsets.only(
          
          left: 50.0,
          right: 50.0,
          bottom: 20.0
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:400.0),
                child: Stack( alignment: const AlignmentDirectional(0.0,-3.85),
                  
                  children:[SvgPicture.asset(dog1,fit: BoxFit.cover), Container(
                  decoration: BoxDecoration(
                    border:Border.all(
                      color: Colors.black,
                      width: 2.0
                    ) ,
                    borderRadius: BorderRadius.circular(50)
                    ),
                  width: 500,
                  height: 600,
                  child: Column(
                    children: [   
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("Login",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 30.0
                          ),
                        child: Material(  
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5.0,
                          child: defaultFormField(
                            controller: emailController, 
                            type: TextInputType.emailAddress,
                             validate: (){},
                              hint: "Email", 
                             ),
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                        Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 30.0
                          ),
                        child: Material(  
                          borderRadius: BorderRadius.circular(20),
                          elevation: 5.0,
                          child: defaultFormField(
                            controller: passwordController, 
                            type: TextInputType.visiblePassword,
                            isPassword: true,
                             validate: (){},
                              hint: "Password", 
                             ),
                        ),
                      ),
                      const SizedBox(height: 40.0,),
                      defaultButton(width: 400,
                       height: 50, function: (){
                        navigateTo(context,const HomeScreen());
                       }, text: "Login",
                       background:HexColor("#492F24"),
                       radius: 20.0 ,
                       textColor:Color.fromARGB(255, 175, 123, 104)
                       
                       ),
                      
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Row( mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            defaultTextButton(function: (){}, text: "Forget password ?",
                            textColor: HexColor("#492F24") )
                          ],
                         ),
                       ),
                       Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            color: Colors.black,
                            width: 200,
                            height: 1,
                          ),
                          const SizedBox(width: 5.0,),
                          const Text("or"),
                           const SizedBox(width: 5.0,),
                           Container(
                            color: Colors.black,
                            width: 200,
                            height: 1,
                          ),
                        ],
                       ),
                      const SizedBox(height: 20.0,),
                      Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          
                          InkWell( onTap: (() {
                            
                          }),
                            child: Container( height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: HexColor("#2F4582"), 
                          
                            ),
                              child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
                                    
                                    IconButton(
                                      icon: const FaIcon(FontAwesomeIcons.facebookSquare,color:Colors.white,), 
                                                onPressed:(){} ,          
                                    ),
                                     const SizedBox(width: 5,),
                                      Text("Facebok",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                     ),),
                                  ],
                              ),
                            ),
                          ),
                            
                            SizedBox(width: 10,),
                            
                             InkWell( onTap: (() {
                            
                          }),
                            child: Container( height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color:Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.0,
                              )
                          
                            ),
                              child: Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children:  [
                                    
                                    IconButton(
                                      icon: const FaIcon(FontAwesomeIcons.google,), 
                                                onPressed:(){} ,          
                                    ),
                                     const SizedBox(width: 5,),
                                      Text("Google",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                     ),),
                                  ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50,),
                      Row( mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const Text("Don't have an account?"),
                          defaultTextButton(function: (){
                            navigateTo(context, const SignUpScreen());
                          }, text: "Sign up", textColor: Colors.black)
                        ],
                      )


                    ],
                  ),
                ),  ] ),
              ),
             
            const SizedBox(height: 100,),
              buildfooter(context)
            ],
          )),
        ),
      ),   
    );
  }
}