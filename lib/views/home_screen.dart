import 'package:bet_animals/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:PreferredSize( 
        preferredSize: const Size(double.infinity, 50) ,

        child: customSignUpAppBar(context),
      ),       
        
       body: SingleChildScrollView( physics:const BouncingScrollPhysics(),
         child: Column( mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(  width: double.infinity,
          height: 500,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
               begin: Alignment.centerRight,
             end: Alignment.centerLeft, 
             colors:<Color>[
         Color.fromARGB(255, 31, 20, 16),
         Color.fromARGB(255, 101, 72, 61)
             ], )
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
                bottom: 50.0,
                right: 100,
                left: 100.0
              ),
              child: Row( mainAxisAlignment: MainAxisAlignment.start ,
                children: [
                  Container( width: 300,
                  height: 400,
                    child: Column(
                      children: [
                        Center(
                          child: Text("Not only people need a house",style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          )
                          ),
                        ),
                        const SizedBox(height: 10.0,),
                        Center(
                          child: Text("Computer programming is the process of performing a particular computation (or more generally, accomplishing a specific computing result), usually by designing and building an executable computer program. Programming involves tasks such as analysis, generating algorithms, profiling algorithms' accuracy and resource consumption, and the implementation of algorithms (usually in a chosen programming language, commonly referred to as coding).",
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize: 15.0
                          ),),
                        ),
                       const SizedBox(height: 20,),
       
                       InkWell( onTap: () {},
                         child: Container(
                          width: 300,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row( mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Help them",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold
                              
                              ),),
                              const SizedBox(width: 20),
                              const Icon(Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                         ),
                       )
                         
       
                     
                      ],
                    ),
                  ),
                   
                  const Spacer(),
       
                  Column(
                    children: [
                      SizedBox( width: 400,
                      height: 400,
                        child: Stack( alignment: const AlignmentDirectional(0,3.85),
                          children:[
                          Image.asset("assets/background/whitecircle.png",fit: BoxFit.cover),
                          Align( alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 250,
                              height: 150,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 20.0,
                                    offset: Offset(3, 3)
                                  )
                                ]
                              ),
                            ),
                          ),
                          Image.asset("assets/photos/alvan-preview.png",fit: BoxFit.cover),
                        ] )),
                       
                    ],
                  )
               
                ],
              ),
            ),      
          )
          , Container(
            width: double.infinity,
            height: 600,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
                top: 50,
                left: 100,
                right: 100,
              ),
              child: Stack(children: [  
                        Positioned( 
                              left: 30,
                              top: 300,
                               child: Container(
                                width: 300,
                                height: 150,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 50.0,
                                      offset: Offset(3, 3)
                                    )
                                  ]
                                ),
                                                         ),
                             ),
                  Positioned( 
                     top: 150,
                     left: 50,
                    
                    child: SizedBox( height: 200,
                    width: 200,
                      child: Image.asset("assets/photos/Kabo-unsplash.png",fit:BoxFit.cover,)),
                  ),
                 Positioned(
                  left: 30,
                   child: SizedBox( width: 300,
                   height: 400,
                    child: Image.asset("assets/photos/richard.png",fit:BoxFit.cover,)),
                 ),
                  
                 Positioned( 
                  right: 50,
                  top: 100,
                child: SizedBox( 
                  width: 300,
                  height: 300,
                  child: Image.asset("assets/leg/Iconmaterial-pets.png",color: HexColor("FFE3C5"),)),
              ),

                       Positioned(top: 100,
                       right: 150,
                         child: Text("About Petology",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,  
                         ),),
                       ),
                       const Positioned( 
                        top:150 ,
                        right: 50,
                         child: SizedBox( 
                          width: 300,
                          height: 200,
                          child: Text("Computer programming is the process of performing a particular computation (or more generally, accomplishing a specific computing result), usually by designing and building an executable computer program. Programming involves tasks such as analysis, generating algorithms, profiling algorithms' accuracy and resource consumption, and the implementation of algorithms (usually in a chosen programming language, commonly referred to as coding).")),
                       )
                          
             
              ],)
            ),
              
           )
         
         ]),
       ),
    );
  }
}