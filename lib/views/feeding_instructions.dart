import 'package:bet_animals/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class FeedingInstructionsScreen extends StatefulWidget {
  const FeedingInstructionsScreen({Key? key}) : super(key: key);

  @override
  State<FeedingInstructionsScreen> createState() => _FeedingInstructionsScreenState();
}

class _FeedingInstructionsScreenState extends State<FeedingInstructionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:PreferredSize( 
        preferredSize: const Size(double.infinity, 50) ,

        child: customSignUpAppBar(context),
      ),     

      body: SingleChildScrollView( 
        physics: const BouncingScrollPhysics(),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 600,
              decoration: const BoxDecoration(
                 gradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft, 
        colors:<Color>[
         Color.fromARGB(255, 31, 20, 16),
         Color.fromARGB(255, 101, 72, 61)
        ],
           ),
              ),
              child: Stack(children: [
                 Positioned(
                  top: 250 ,
                  right: 500,
                  child: SizedBox(
                    width: 500,
                    height: 500,
                    child: Image.asset("assets/photos/plate1.png"))),
                 Positioned(
                  top: 20,
                  right: 500,
                  child: SizedBox(
                    width: 500,
                    height: 500,
                    child: Image.asset("assets/photos/okeykat-food.png")))

              ]),
            ),
         
           const  SizedBox(height: 30,), 
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Stack(
             children:[ 
              Positioned(
                top: 200,
                right:25 ,
                child: Image.asset("assets/leg/Iconmaterial-pets.png",color: HexColor("FFE3C5"),)),
              
              SizedBox( width: double.infinity,
                child: Column(  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("How you feed Your Dog?",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: HexColor("#492F24"),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 30,),
                   SizedBox( 
                    width: double.infinity,
                    height: 400 ,
                     child: Text("Computer programming is the process of performing a particular computation (or more generally, accomplishing a specific computing result), usually by designing and building an executable computer program. Programming involves tasks such as analysis, generating algorithms, profiling algorithms' accuracy and resource consumption, and the implementation of algorithms (usually in a chosen programming language, commonly referred to as coding).[1][2] The source code of a program is written in one or more languages that are intelligible to programmers, rather than machine code, which is directly executed by the central processing unit. The purpose of programming is to find a sequence of instructions that will automate the performance of a task (which can be as complex as an operating system) on a computer, often for solving a given problem.",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: HexColor("#492F24"),
                      fontSize: 20,
                  ),),
                   ), 
                   const SizedBox(
                    height: 10.0,
                   ),
                   SizedBox( 
                    width: double.infinity,
                    height: 400,
                     child: Text("Computer programming is the process of performing a particular computation (or more generally, accomplishing a specific computing result), usually by designing and building an executable computer program. Programming involves tasks such as analysis, generating algorithms, profiling algorithms' accuracy and resource consumption, and the implementation of algorithms (usually in a chosen programming language, commonly referred to as coding).[1][2] The source code of a program is written in one or more languages that are intelligible to programmers, rather than machine code, which is directly executed by the central processing unit. The purpose of programming is to find a sequence of instructions that will automate the performance of a task (which can be as complex as an operating system) on a computer, often for solving a given problem.",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: HexColor("#492F24"),
                      fontSize: 20,
                  ),),
                   ),
                ],
             ),
              ),
          ]),
         ),  
          
          buildfooter(context),
           
            
          ],
        ),
      ),
    );
  }
}