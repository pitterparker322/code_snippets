import 'package:flutter/material.dart';
import 'package:demo/custom widget/inputfromfield.dart';
import 'package:demo/screens/signin.dart';
import 'package:demo/screens/homepage.dart';


class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(100),
                            child: Image.asset(
                              scale: 3,
                              "assets/logo.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Create Account",
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                        ],
                      ),
                       GestureDetector(
                        child: Text(
                          "Already Have Account? Log in here.",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: const Color.fromARGB(255, 3, 81, 133),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          // Navigator.pop(context);
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signin(),),);
                        },
                      ),
                    ],
                  ),
                  
                ),
              ),
          
              Expanded(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                    ),
                    color: Colors.black,
                  ),
                  child: Form(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                alignment: AlignmentDirectional.center,
                                child: GestureDetector(
                                  child: Text("Continue without Account",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                  ),
                                   onTap: () {
                                    Navigator.pop(context);
                                    Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Homepage()));
                                  },
                                ),
                              ),
                              Icon(Icons.navigate_next,color: Colors.white,size: 20,),
                            ],
                          ),
                              SizedBox(height: 40,),
                              Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text("Email",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                
                                ),),
                              ),
                              InputAcceptor(label: "example@gmail.com"),
                              SizedBox(height: 35,),
                               Align(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text("Email",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                
                                ),),
                              ),
                              InputAcceptor(label: "........"),
                              SizedBox(height: 35,),
                            
                              FloatingActionButton.extended(
                                isExtended: true,
                                backgroundColor: Colors.blue,
                                onPressed: (){},
                                label: Text("Register",style: TextStyle(color: Colors.white,fontSize: 20),),
                              )
                            ],
                          
                        
                      ),
                    )),
                ),
              ),
            ],
          ),
        ),
      );
  }
}