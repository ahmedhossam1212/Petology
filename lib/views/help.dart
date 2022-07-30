import 'package:bet_animals/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  var phoneContoller=TextEditingController();
  var locationContoller=TextEditingController();
  var categoryContoller=TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:PreferredSize( 
        preferredSize: const Size(double.infinity, 50) ,

        child: customSignUpAppBar(context),
        ),
        body: SizedBox( width: double.infinity,
        height: double.infinity,
        child: Stack(

          children: [  
            Positioned(top: 50,
            left: 400,
              child: SizedBox(
                 height: 300,
                 width: 300,
                child: Image.asset("assets/leg/Iconmaterial-pets.png",color: HexColor("FFE3C5"),)),
            ),
               Positioned(
                bottom: 50,
                left: 400,
                 child: SizedBox(
                 height: 300,
                 width: 300,
                             child: Image.asset("assets/leg/Iconmaterial-pets.png",color: HexColor("FFE3C5"),)),
               ),
               Positioned(top: 50,
               right: 400,
                 child: SizedBox(
                 height: 300,
                 width: 300,
                             child: Image.asset("assets/leg/Iconmaterial-pets.png",color: HexColor("FFE3C5"),)),
               ),

            Center(
              child: Container( width: 400,
              height: 600,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ const SizedBox(height: 20,),
                      Center(
                        child: Text("Help your friend",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: HexColor("#492F24"),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                      ),
                      Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color:HexColor("#492F24"),size: 50,))),
                      const SizedBox(height: 50),
                        Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: defaultFormField( controller: categoryContoller,
                                    type: TextInputType.text, 
                                  validate: (){},
                                   hint: "Category",
                                  widget: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down),),
                                  
                                   ),
                        ),
                       const SizedBox(height: 20,),
                         Text("Detect your current location",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: HexColor("#492F24")
                        ) ,),
                        Material(elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                          child: defaultFormField(
                            controller: locationContoller,
                            type: TextInputType.url,
                           validate: (){},
                            hint: "Location"),
                        ),
                        const  SizedBox(height: 20,),

                        Material(
                          elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                          child: defaultFormField(
                            controller: phoneContoller,
                            type: TextInputType.number, 
                          validate: (){},
                           hint: "Phone Number"),
                        ),
                       const SizedBox(height: 30,),
                        Center(
                          child: InkWell( onTap: () {},
                           child: Container(
                            width: 300,
                            height: 70,
                            decoration: BoxDecoration(
                              color: HexColor("#492F24"),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row( mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Send",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: HexColor("#FFE3C5")
                                
                                ),)
                              ],
                            ),
                           ),
                       ),
                        ),
                        SizedBox(height: 20,),
                        Center(
                          child: InkWell( onTap: () {},
                           child: Container(
                            width: 300,
                            height: 70,
                            decoration: BoxDecoration(
                              color:  HexColor("#FFE3C5"),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row( mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Call",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color:HexColor("#492F24"),
                                ),)
                              ],
                            ),
                           ),
                       ),
                        )
                    ],
                  ),
                ),
              ),
            ),
         
          
         
          ],
        ),

         
        ),
    );
  }
}