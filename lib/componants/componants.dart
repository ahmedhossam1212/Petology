
import 'dart:js';
import 'package:bet_animals/views/home_screen.dart';
import 'package:bet_animals/views/login_screen.dart';
import 'package:bet_animals/views/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


Widget defaultButton({
required double width ,
required double height ,
Color background = Colors.blue,
Color textColor= Colors.blue,
double radius = 3.0,
required Function function,
required String text,

}) =>
Container(
width: width,
height: height,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(
radius,
),
color: background,

),
child: MaterialButton(  
  

onPressed: (){function();},
child: Text(
 text,
style:  TextStyle(
color: textColor,
),
),
),
);




Widget defaultTextButton({
    required function,
    required String text,
   required Color textColor 
}) => TextButton(onPressed: function , child: Text(text,style:TextStyle(
  color: textColor,
  fontWeight: FontWeight.bold,
  ),
),

 ) ;







Widget defaultFormField({
 TextEditingController? controller,
required TextInputType type,
Function ?onSubmit,
Function ?onChange,
Function ?onTap,
bool isPassword = false,
required Function validate,
required String hint,
 IconData? prefix,
IconData ?suffix,
Function ?suffixPressed,
bool isClickable = true,
Widget? widget,
}) =>
Container(
  clipBehavior: Clip.antiAlias,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12.0),

  ),
  child:   Row(
    children: [
      Expanded(
        child: TextFormField(  
        
          readOnly: widget==null?false:true,
        
        controller: controller,
        
        keyboardType: type,
        
        obscureText: isPassword,
        
        enabled: isClickable,
        
        onFieldSubmitted: (s){ onSubmit!(s); },
        
        onChanged: (s){ onChange!(s); },
        
        validator: (String? s) { return validate(s);},
        
        decoration: InputDecoration( 
        
        
        
          enabledBorder: OutlineInputBorder(
        
            borderSide:  const BorderSide(color: Colors.white,width:2.5 ),
        
            borderRadius: BorderRadius.circular(50.0)
        
          ),
        
          
        
          focusedBorder: OutlineInputBorder(
        
            borderSide:  const BorderSide(color: Colors.white,width:2.5 ),
        
            borderRadius: BorderRadius.circular(50.0),),
        
        
        
            errorBorder:  OutlineInputBorder(
        
            borderSide:  const BorderSide(color: Colors.white,width:2.5 ),
        
            borderRadius: BorderRadius.circular(50.0)),
        
        
        
            focusedErrorBorder:OutlineInputBorder(
        
            borderSide:  const BorderSide(color: Colors.white,width:2.5 ),
        
            borderRadius: BorderRadius.circular(50.0)) ,
        
        
        
          
        
        
        
        hintText: hint,
        
        labelStyle:const TextStyle(
        
          color: Colors.grey,
        
          fontSize: 15.0, 
        
          fontWeight: FontWeight.bold
        
        ) ,
        
        
        
        border: const OutlineInputBorder(),
        
        ),
        
        ),
      ),
      widget??Container( ),
    ],
  ),
);

void navigateTo (context,widget)=> Navigator.push(context,
    MaterialPageRoute(builder: (context)=>widget,
    ),
);



void navigateAndFinish(context,widget)=> Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:
    (context)=>widget),
        (route) {
            return false;
        });


Widget defaultOutLinedButton({
  required double width,
  required  double height,
  required VoidCallback onTap,
  required String text,
  
  Color backgroundColor = Colors.brown,  
  Color textColor = Colors.white,
  double radius= 10.0,
})=> InkWell( 
  onTap: onTap,
  child:Container(
  width: width,
  height: height,
  decoration: BoxDecoration(
    shape: BoxShape.rectangle,
    border: Border.all(
      color: Colors.white,
      width: 1.0,
    ),
  borderRadius: BorderRadius.circular(
  radius,
  ),
  color: backgroundColor,
  ),
  child: Center(
    child: Text(text,
    style: TextStyle( 
      color: textColor,
      fontSize: 15.0,
    )
    ),
  ),
 ),
);




Widget customLoginAppBar(BuildContext context)=>Container( 
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft, 
      colors:<Color>[
       Color.fromARGB(255, 31, 20, 16),
       Color.fromARGB(255, 101, 72, 61)
      ],
    )
  ),
  child:   Row(
    children: [ 
       SvgPicture.asset('assets/logo/logo.svg'),
       const SizedBox(width: 400.0,),
       Row( mainAxisSize: MainAxisSize.max,
            children: [
              defaultTextButton(function: (){
                navigateTo(context,const HomeScreen());
              }, text: "About us", textColor: Colors.white),
              const SizedBox(width: 10.0,),
              defaultTextButton(function: (){}, text: "Categories", textColor: Colors.white),
               const SizedBox(width: 10.0,),
              defaultTextButton(function: (){}, text: "Services", textColor: Colors.white),
               const SizedBox(width: 10.0,),
              defaultTextButton(function: (){}, text: "Request", textColor: Colors.white),
             const SizedBox(width: 400,),
               defaultOutLinedButton(width: 70.0, height: 30.0, onTap: (){
                navigateTo(context, const SignUpScreen());
               }, text: "Sign up",radius: 40),
               const SizedBox(width: 20.0,),
               defaultOutLinedButton(width: 70.0, height: 30.0, onTap: (){
                navigateTo(context,const HomeScreen());
               }, text: "Login",radius: 40,textColor: Colors.black,backgroundColor: Colors.white.withOpacity(0.7)),
 ],
  
  )
  
  ]),
);




Widget customSignUpAppBar(BuildContext context)=>Container( 

  decoration: const BoxDecoration( 
    gradient: LinearGradient(
      begin: Alignment.centerRight,
      end: Alignment.centerLeft, 
      colors:<Color>[
       Color.fromARGB(255, 31, 20, 16),
       Color.fromARGB(255, 101, 72, 61)
      ],
    )
  ),
  child:   Row(
    children: [ 
       SvgPicture.asset('assets/logo/logo.svg'),
       const SizedBox(width: 400.0,),
       Row( mainAxisSize: MainAxisSize.max,
            children: [
              defaultTextButton(function: (){
                navigateTo(context,const HomeScreen());
              }, text: "About us", textColor: Colors.white),
              const SizedBox(width: 10.0,),
              defaultTextButton(function: (){}, text: "Categories", textColor: Colors.white),
               const SizedBox(width: 10.0,),
              defaultTextButton(function: (){}, text: "Services", textColor: Colors.white),
               const SizedBox(width: 10.0,),
              defaultTextButton(function: (){}, text: "Request", textColor: Colors.white),
             const SizedBox(width: 400,),
               defaultOutLinedButton(width: 70.0, height: 30.0, onTap: (){
                navigateTo(context, const HomeScreen());
               }, text: "Sign up",radius: 40,backgroundColor: Colors.white.withOpacity(0.7),
               textColor: Colors.black),
               const SizedBox(width: 20.0,),
               defaultOutLinedButton(width: 70.0, height: 30.0, onTap: (){
               navigateTo(context,const LoginScreen());
               }, text: "Login",radius: 40,),
 ],
  )
  ]),
);




Widget buildfooter(BuildContext context)=>Container(
      width: double.infinity,
      height: 210.0,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors:<Color> [
          Color.fromARGB(255, 31, 20, 16),
       Color.fromARGB(255, 101, 72, 61)
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
         Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: Opacity(
                      opacity: 0.4,
                      child: Image.asset('assets/leg/Iconmaterial-pets.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'For any questions',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: const Color.fromARGB(255, 113, 78, 65),
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/icons/email.png'),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'pop@gmail.com',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.grey,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/icons/phone.png'),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            '01061917210',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: Colors.grey,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                width: 40.0,
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  SizedBox(
                    height: 50.0,
                    width: 50.0,
                    child: Opacity(
                      opacity: 0.3,
                      child: Image.asset('assets/leg/Iconmaterial-pets.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'We are waiting you',
                        style: Theme.of(context).textTheme.headline4!.copyWith(
                              color:  const Color.fromARGB(255, 113, 78, 65),
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/icons/location-on.png'),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Mansoura',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color:Colors.grey,
                                    ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/icons/location-on.png'),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            'Cairo',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color:Colors.grey,
                                    ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
          Image.asset('assets/photos/tamas-pap.png'),
        ],
      ),
          
          );  

bool IsHover =false;

     class BuildPetsList extends StatefulWidget {
  const BuildPetsList({Key? key}) : super(key: key);

  @override
  State<BuildPetsList> createState() => _BuildPetsListState();
}

class _BuildPetsListState extends State<BuildPetsList> {
  bool IsHover =false;
  @override
  Widget build(BuildContext context) {
    return  MouseRegion( 
          onEnter: (_){
            setState(() {
              IsHover =true;
            });
          },
          onExit: (_){
            setState(() {
              IsHover = false;
            });
          },
           child: AnimatedContainer(
            duration: const Duration(seconds: 1),
             child: Material(
              elevation: IsHover ? 2 : 0 ,
               child: Container(
                   height: 400.0,
                   width: 250.0,
                   padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15.0),
                     border: Border.all(
                width: 2,
                color: Colors.brown,
                     ),
                     color: Colors.grey.withOpacity(0.5),
                   ),
                   child: Column(
                     children: [
                SizedBox(
                  width: 300.0,
                  height: 300.0,
                  child: Image.asset(
                    'assets/Photos/Karsten-winegeart.png',
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Dogs',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: Colors.black,
                      ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Read more',
                  style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.black,
                      ),
                ),
                     ],
                   ),
                 ),
             ),
           ),
         );
  }
}