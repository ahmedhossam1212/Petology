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

bool catIsHover = false;
bool dogIsHover = false;

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
          ),
           SizedBox(
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
              
           ),
           Container(
            color:HexColor("#F1F1F1"),
            width: double.infinity,
            height: 500,
            child: Stack(
              children: [

                Positioned(
                  top: 30,
                  right: 700, 
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/leg/Iconmaterial-pets.png",color: HexColor("#FFe3C5"),)),
                ),
                 Positioned( top:40 ,
                 right: 700,
                   child: Text("Lets get this right ....",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#492F24")
                                 ),),
                 ),
                  Positioned( top: 100,
                  right: 650,
                    child: Text("What kind of friend you looking for?",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: HexColor("#492F24"),
                      fontSize: 25, 
                    ),),
                  ),
                   
                   Positioned( 
                    top: 200,
                    right: 900,
                     child: MouseRegion( 
                      onEnter: (f){
                        setState(() {
                          dogIsHover=true;
                        });
                      },
                      onExit: (f){
                        setState(() {
                          dogIsHover=false; 
                        });
                      },
                       child: AnimatedContainer( 
                        height: 200,
                        width: 200,
                       duration: const Duration(milliseconds: 100 ),
                       decoration: BoxDecoration(
                         color: dogIsHover ? HexColor("FFe3C5") :HexColor("#F1F1F1") ,
                         border: Border.all(
                          color: dogIsHover ? HexColor("#492F24") : Colors.grey,
                           width: dogIsHover ? 2 : 1,
                        ),
                        borderRadius: BorderRadius.circular(20)
                       ),
                       child: Column(
                        children: [ const SizedBox(height: 20,),
                          Image.asset("assets/icons/dog.png"),
                          const SizedBox(height: 10,),
                           Text("Dogs",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: HexColor("#492F24"),
                        fontSize: 15,
                        fontWeight: FontWeight.bold, 
                      ),),
                        ],
                       ),
                        ),
                     ),
                   ),
                

                    Positioned( 
                    top: 200,
                    right: 550,
                     child: MouseRegion( 
                      onEnter: (f){
                        setState(() {
                          catIsHover=true;
                        });
                      },
                      onExit: (f){
                        setState(() {
                          catIsHover=false; 
                        });
                      },
                       child: AnimatedContainer( 
                        height: 200,
                        width: 200,
                       duration: const Duration(milliseconds: 100 ),
                       decoration: BoxDecoration(
                         color: catIsHover ? HexColor("FFe3C5") :HexColor("#F1F1F1") ,
                         border: Border.all(
                          color: catIsHover ? HexColor("#492F24") : Colors.grey,
                           width: catIsHover ? 2 : 1,
                        ),
                        borderRadius: BorderRadius.circular(20)
                       ),
                       child: Column(
                        children: [ const SizedBox(height: 10,), 
                          Image.asset("assets/icons/cat.png"),
                          const SizedBox(height: 10,),
                          Text("Cats",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: HexColor("#492F24"),
                        fontSize: 15,
                        fontWeight: FontWeight.bold, 
                      ),),
                        ],
                       ),
                        ),
                     ),
                   ),
                  
                
                   
                
              ],
            ),
           ),

           SizedBox(width: double.infinity,
           height: 700,
           child: Stack(
            children: [

              Positioned( 
                top: 50,
                right: 700,
                child: SizedBox( 
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/leg/Iconmaterial-pets.png",color: HexColor("#FFE3C5"),)),
              ),
            
            Positioned(
              top: 50,
              right: 700,
              child: SizedBox( width: 250,
              height: 100,
                child: Text("Our friendes who looking for a house",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),),
              ),
            ),
           const SizedBox(height: 100,),
            Center(
              child: SizedBox( width: 1000,
              height: 400,
                child: ListView.separated(itemBuilder: (context,index)=>const BuildPetsList() ,
                 separatorBuilder: (context,index)=> const SizedBox(width:100 ),
                  itemCount: 5,
                   scrollDirection: Axis.horizontal,
                  ),
              ),
            ),
    
            Positioned( 
              top: 350,
              left: 50,
              child: CircleAvatar( 
                backgroundColor: HexColor("#492F24"),
                child: IconButton(onPressed: (){}, icon: const Icon( Icons.arrow_back_ios_new,color: Colors.white,))),
            ),
            Positioned( 
              top: 350,
              right: 50,
              child: CircleAvatar( 
                backgroundColor: HexColor("#492F24"),
                child: IconButton(onPressed: (){}, icon: const Icon( Icons.arrow_forward_ios_rounded, color:Colors.white,))),
            ),

        Positioned( 
          bottom: 50,
          left: 600,
          child: InkWell( onTap: () {},
                           child: Container(
                            width: 300,
                            height: 70,
                            decoration: BoxDecoration(
                              color:  HexColor("#492F24"),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row( mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Show more",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color:  Color.fromARGB(255, 215, 152, 129)
                                
                                ),),
                                const SizedBox(width: 20),
                                const Icon(Icons.arrow_forward_ios_outlined,color: Color.fromARGB(255, 215, 152, 129),)
                              ],
                            ),
                           ),
                         ),
        )


            ],
           ),
          ),
           

     

             buildfooter(context)
         ]),
       ),
    );
  }
}