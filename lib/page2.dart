import 'package:contactlist/page1.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}
class  _page2State extends State<page2> {
  late String number;
  TextEditingController numbercontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();

  SnackBar snac = SnackBar(
    content: Text("Must enter Name and Phone number"),
    duration: Duration(seconds: 5),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 80,
                  width: 370,
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => page()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Icon(Icons.arrow_back_ios),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Create new contact",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                    onPressed: () {
                      numbercontroller.text.isNotEmpty &&
                              namecontroller.text.isNotEmpty
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => page(),
                              ))
                          : ScaffoldMessenger.of(context)
                              .showSnackBar(snac);
      },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Text(
                                "save",
                                style: TextStyle(color: Colors.green, fontSize: 20),
                              ),
                            )),
                  
                    ],
                  ),
                ),
                Container(
                  height: 250,
                  width: 400,
                  color: Color.fromARGB(255, 149, 184, 110),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Row(
                            children: [
                              Image.network(
                                "https://i0.wp.com/www.simrace-blog.com/wp-content/uploads/2018/12/Icone-contact-2.png?ssl=1",
                                height: 180,
                                width: 200,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 130),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
                   Stack(
                    children: [
                      Transform.translate(
                          offset: Offset(0.0, -40 / 2.0),
                          child: Center(
                              child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: 60,
                                    width: 300,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(offset: Offset(0, 5),
                                            color: Colors.black45,
                                            blurRadius: 5,
                                          )
                                        ]),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Icon(
                                            Icons.sim_card_outlined,
                                            size: 40,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Column(
                                            children: [
                                              Text(
                                                "saving to",
                                                style: TextStyle(fontSize: 20),
                                              ),Text("MTN GH",style: TextStyle(fontWeight: FontWeight.w100,fontSize: 20),)
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 100),
                                          child: Icon(
                                            Icons.keyboard_arrow_down_outlined,
                                            size: 40,
                                          ),
                                        )
                                      ],
                                    ),
                                  ))))
                    ],
                  ),
                
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)]),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 220,right: 240),
                    child: Icon(
                      Icons.person,
                      size: 50,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "MORE FIELDS",
                    style: TextStyle(
                        fontSize: 20, color: Color.fromARGB(255, 149, 184, 110)),
                  ),
                ),
                
              ],
            ),
            Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 390,left: 100,right: 70),
                    child: TextField(
                      controller: namecontroller,
                          decoration: InputDecoration( 
                            border: UnderlineInputBorder(),
                            hintText: "Enter your first name",labelStyle: TextStyle(fontWeight: FontWeight.w100,)
                          ),
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 400,left: 290),
                  child: Icon(Icons.keyboard_arrow_down_outlined,size: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 440,left: 100,right: 70),
                  child: TextField(
                           
                            decoration: InputDecoration( 
                              border: UnderlineInputBorder(),
                              labelText: "Last name",labelStyle: TextStyle(fontWeight: FontWeight.w100,)
                            ),
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 500,left: 40),
                  child: Icon(Icons.phone,size: 40,),
                ), 
                Padding(
                  padding: const EdgeInsets.only(top: 480,left: 100,right: 70),
                  child: TextField(keyboardType: TextInputType.number,
                              maxLength: 10,
                              controller: numbercontroller,
                              decoration: InputDecoration( 
                                border: UnderlineInputBorder(),
                                labelText: "Phone",labelStyle: TextStyle(fontWeight: FontWeight.w100,)
                              ),
                            ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 520,right: 150,left: 100),
                  child: TextField(keyboardType: TextInputType.number,
                                maxLength: 10,
                                decoration: InputDecoration( 
                                  border: UnderlineInputBorder(),
                                  labelText: "Mobile",labelStyle: TextStyle(fontWeight: FontWeight.w100,)
                                ),
                              ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 520,left: 170),
                  child: Icon(Icons.arrow_drop_down_outlined,size: 50,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 570,left: 40),
                  child: Icon(Icons.email_outlined,size: 40,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 560,left: 100,right: 70),
                  child: TextField(
                                  
                                  decoration: InputDecoration( 
                                    border: UnderlineInputBorder(),
                                    labelText: "Email",labelStyle: TextStyle(fontWeight: FontWeight.w100,)
                                  ),
                                ),
                ),Padding(
                  padding: const EdgeInsets.only(top: 600,left: 100,right: 150),
                  child: TextField(
                                 
                                  decoration: InputDecoration( 
                                    border: UnderlineInputBorder(),
                                    labelText: "Email",labelStyle: TextStyle(fontWeight: FontWeight.w100,)
                                  ),
                                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 600,left: 170),
                  child: Icon(Icons.arrow_drop_down_outlined,size: 50,),
                ),
          ],
        ),
      ),
    );
  }
}
