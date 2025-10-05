import 'package:flutter/material.dart';
import 'package:demo/custom widget/inputfromfield.dart';
import 'package:demo/screens/signup.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

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
                            clipBehavior:  Clip.antiAlias,
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/logo.jpg",
                              fit: BoxFit.cover,
                               height: MediaQuery.sizeOf(context).height * 0.05,
                              width: MediaQuery.sizeOf(context).width * 0.1,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Log In",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: Colors.black,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      GestureDetector(
                        child: Text(
                          "Don't Have Account? Sign up here.",
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: const Color.fromARGB(255, 3, 81, 133),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup(),),);
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
                                  },
                                ),
                              ),
                              Icon(Icons.navigate_next,color: Colors.white,size: 20,),
                            ],
                          ),
                             SizedBox(height: MediaQuery.sizeOf(context).height * 0.04,),
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
                              SizedBox(height: MediaQuery.sizeOf(context).height * 0.035,),
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
                             SizedBox(height: MediaQuery.sizeOf(context).height * 0.035,),
                            
                              FloatingActionButton.extended(
                                isExtended: true,
                                backgroundColor: Colors.blue,
                                onPressed: (){},
                                label: Text("Log In",style: TextStyle(color: Colors.white,fontSize: 20),),
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

