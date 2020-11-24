import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          //image
          Container(
            height: MediaQuery.of(context).size.height*0.4,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/burger.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //details
          Padding(
            padding:  EdgeInsets.all(20.0),
            child: Container(
              height: MediaQuery.of(context).size.height*0.5,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow[500],width: 0.5,),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Column(
                children: [
                  //email
                  Padding(
                    padding: EdgeInsets.only(left:15.0,right: 15.0,top: 20.0,bottom: 10.0,),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.yellow[500],width: 0.5,)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0,),
                        child: TextField(
                          style: TextStyle(color:Colors.white,),
                          decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //password
                  Padding(
                    padding: EdgeInsets.only(left:15.0,right: 15.0,top: 10.0,bottom: 10.0,),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow[500],width: 0.5,)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0,),
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color:Colors.white,),
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //confirm password
                  Padding(
                    padding: EdgeInsets.only(left:15.0,right: 15.0,top: 10.0,bottom: 10.0,),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow[500],width: 0.5,)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0,),
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color:Colors.white,),
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //phone
                  Padding(
                    padding: EdgeInsets.only(left:15.0,right: 15.0,top: 10.0,bottom: 10.0,),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.yellow[500],width: 0.5,)
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.0,),
                        child: TextField(
                          style: TextStyle(color:Colors.white,),
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  //button
                  Spacer(flex: 1,),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){},
                          child: Container(
                            height: MediaQuery.of(context).size.height*0.05,
                            decoration: BoxDecoration(
                              color: Colors.yellow[500],
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25.0),)
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Center(
                              child: Text(
                                'Sign UP',
                                style: TextStyle(color: Colors.black,fontSize: 16.0,),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
