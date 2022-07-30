import 'package:bet_animals/componants/componants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {

  var nameController = TextEditingController();
  var categoryController = TextEditingController();
  var yearController = TextEditingController();
  var sizeController = TextEditingController();
  var genderController = TextEditingController();
  var hairLenghtController = TextEditingController();
  var houseTraindController = TextEditingController();
  var locationController = TextEditingController();
  var phoneController = TextEditingController();
  var descriptionController = TextEditingController();
  var monthsController = TextEditingController();
  var breedController = TextEditingController();
  var careController = TextEditingController();
  var colorController = TextEditingController();
 


  @override
  Widget build(BuildContext context) { 

    return Scaffold(
        appBar:PreferredSize( 
        preferredSize: const Size(double.infinity, 50) ,

        child: customSignUpAppBar(context),
      ),     

      body: SingleChildScrollView( 
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
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
              
                    Padding( 
                      padding: const EdgeInsets.only(top: 100,
                      ),
                      child: Center(
                        child: Container( width: 400,
                        height: 1200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,
                          width: 2.0,
                          ), 
                          borderRadius: BorderRadius.circular(20)
                        ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text("Request",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: HexColor("492F24"),
                                  fontSize: 20
                                ),),
                               const SizedBox(height: 30,),
                               SizedBox(
                                height: 150,
                                width: 150,
                                child: Image.asset("assets/photos/victor-dog.png")),
                              const SizedBox(height: 20,),
                                Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.name,
                                   validate: (){},
                                    hint: "Name",
                                     controller: nameController
                                  ),
                                ),
                               const SizedBox(height: 20,),
                                 Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.none,
                                   validate: (){},
                                    hint: "Category",
                                     controller: categoryController
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                 Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      SizedBox( width: 150,
                                        child: Material( 
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.none,
                                   validate: (){},
                                    hint: "Year",
                                     controller: categoryController,
                                    widget: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down))

                                  ),
                                ),
                                      ),
                                      
                               const SizedBox(width: 40,),
                                     SizedBox( width: 150,
                                        child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.none,
                                   validate: (){},
                                    hint: "Months",
                                     controller: categoryController,
                                     widget: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down))
                                  ),
                                ),
                                      ),

                                  ],
                                 ), 
                                const SizedBox(height: 20,),
                                 Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      SizedBox( width: 150,
                                        child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.none,
                                   validate: (){},
                                    hint: "Size",
                                     controller: categoryController,
                                    widget: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down))

                                  ),
                                ),
                                      ),
                                      
                               const SizedBox(width: 40,),
                                     SizedBox( width: 150,
                                        child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.none,
                                   validate: (){},
                                    hint: "Breed",
                                     controller: categoryController,
                                     widget: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down))
                                  ),
                                ),
                                      ),

                                  ],
                                 ),
                                const SizedBox(height: 20,),
                                 Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      SizedBox( width: 150,
                                        child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.none,
                                   validate: (){},
                                    hint: "Gender",
                                     controller: categoryController,
                                    widget: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down))

                                  ),
                                ),
                                      ),
                                      
                               const SizedBox(width: 40,),
                                     SizedBox( width: 150,
                                        child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.none,
                                   validate: (){},
                                    hint: "Care&behavior",
                                     controller: categoryController,
                                     widget:  IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down))
                                  ),
                                ),
                                      ),

                                  ],
                                 ),
                                const SizedBox(height: 20,),
                                 Row( mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                      SizedBox( width: 150,
                                        child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.none,
                                   validate: (){},
                                    hint: "Hair lenght",
                                     controller: categoryController,
                                    widget: IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down))

                                  ),
                                ),
                                      ),
                                      
                               const SizedBox(width: 40,),
                                     SizedBox( width: 150,
                                        child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.none,
                                   validate: (){},
                                    hint: "Color",
                                     controller: categoryController,
                                    
                                  ),
                                ),
                                      ),

                                  ],
                                 ),
                                const SizedBox(height: 20,),
                                 Row( mainAxisAlignment: MainAxisAlignment.start,
                                  children: [ 
                                   const  SizedBox(width: 20,),
                                      SizedBox( width: 150,
                                        child: Material(
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                  child: defaultFormField
                                  (type: TextInputType.none,
                                   validate: (){},
                                    hint: "House Traind",
                                     controller: categoryController,
                                    widget:  IconButton(onPressed: (){}, icon: const Icon(Icons.keyboard_arrow_down))
                                  ),
                                ),
                                      ),
                                  ],
                                 ),
                                 const SizedBox(height: 20,),
                                 Material( 
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                   child: defaultFormField(
                                    controller: locationController,
                                    type: TextInputType.none,
                                     validate: (){}, 
                                     hint: "Location"),
                                 ),
                                  const SizedBox(height: 20,),
                                 Material( 
                                  elevation: 5.0,
                                  borderRadius: BorderRadius.circular(20),
                                   child: defaultFormField(
                                    controller: phoneController,
                                    type: TextInputType.phone,
                                     validate: (){}, 
                                     hint: "phone Number"),
                                 ),
                                  const SizedBox(height: 20,),
                                 SizedBox( height: 100,
                                   child: Material( 
                                    elevation: 5.0,
                                    borderRadius: BorderRadius.circular(20),
                                     child: defaultFormField(
                                      controller: descriptionController,
                                      type: TextInputType.text,
                                       validate: (){}, 
                                       hint: "Description"),
                                   ),
                                 ), 
                                const SizedBox(height: 10,),
                                 Text("Vaccinated (up to date) ",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                  color: HexColor("#492F24"),
                                  fontSize: 20,
                                 ),),
                                 SizedBox(height: 50,),
                                   Center(
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
                                Text("Send",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color:HexColor("FFE3C5"),
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
                    )
              
      
              ],
            ),
        const SizedBox(height: 100,),
         buildfooter(context),
          ],
        ),
      ),  
    );
  }
}