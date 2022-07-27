import 'package:bet_animals/componants/componants.dart';
import 'package:bet_animals/views/home_screen.dart';
import 'package:bet_animals/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

var passwordController =TextEditingController();
var emailController =TextEditingController();
var rePasswordController =TextEditingController();
var fristNameController =TextEditingController();
var lastNameController =TextEditingController();







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(
        preferredSize: const Size(double.infinity, 50) ,
        child: customSignUpAppBar(context),
      ), 
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column( 
            children: [
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Stack( 
                  
                  children:[ 
                  Positioned(
                top: 250.0,
                left: 800,
                child: SizedBox( width: 300,
                height: 300,
                  child: Image.asset(
                    'assets/leg/Iconmaterial-pets.png',
                    color: HexColor("FFE3C5"),
                  ),
                ),
              ),
                   Positioned(
                top: 400.0,
                left: 350.0,
                child: SizedBox( 
                  width: 300,
                height: 300,
                  child: Image.asset(
                    'assets/leg/Iconmaterial-pets.png',
                    color: HexColor("FFE3C5"),
                  ),
                ),
              ),  
               //-----
           
            
                     Center(
                     child: Container(
                  decoration: BoxDecoration(
                      border:Border.all(
                        color: Colors.black,
                        width: 2.0
                      ) ,
                      borderRadius: BorderRadius.circular(50)
                      ),
                  width: 500,
                  height: 900,
                  child: Column(
                      children: [   
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Sign up",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                          ),),
                        ), 
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
                        const SizedBox(height: 10.0,),
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
                              controller: fristNameController, 
                              type: TextInputType.name,
                               validate: (){},
                                hint: "First Name", 
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
                              controller: lastNameController, 
                              type: TextInputType.name,
                               validate: (){},
                                hint: "Last Name", 
                               ),
                          ),
                        ),
                        const SizedBox(height: 40.0,),
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
                               validate: (){},
                                hint: "Password", 
                                isPassword: true
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
                              controller: rePasswordController, 
                              type: TextInputType.visiblePassword,
                               validate: (){},
                                hint: "Re-Enter Password", 
                                isPassword: true,
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
                              type: TextInputType.text,
                               validate: (){},
                                hint: "Country", 
                                isClickable: true,
                               widget: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down),),
                               ),
                          ),
                        ),
                        const SizedBox(height: 40.0,),
                        defaultButton(width: 400,
                         height: 50, function: (){
                          navigateTo(context,const HomeScreen());
                         }, text: "Sign up",
                         background:HexColor("#492F24"),
                         textColor:Color.fromARGB(255, 175, 123, 104) ,
                         radius: 20.0 ),
                        
                        const SizedBox(height: 20.0,),
                        
                       
                        Row( mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            const Text("Already have an account?"),
                            defaultTextButton(function: (){
                              navigateTo(context, const LoginScreen());
                            }, text: "Login", textColor: Colors.black)
                          ],
                        )


                      ],
                  ),
                ),
                   ),
                     Positioned(
                top: 15.0,
                right: 965.0,
                child: Image.asset(
                  'assets/leg/small.png',
                  width: 60.0,
                  height: 60.0,
                ),
              ), 
               Positioned(
                bottom: 15.0,
                left: 965.0,
                child: Image.asset(
                  'assets/leg/small-left.png',
                  width: 50.0,
                  height: 50.0,
                ),
              ),
                 
              ] ),
              ),
             
            const SizedBox(height: 100,),
              buildfooter(context), 
            ],
          ),
        )
        ),
      ),
    );
    
  }
}