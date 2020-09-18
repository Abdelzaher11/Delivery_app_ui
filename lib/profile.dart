import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30.0),
                      bottomLeft: Radius.circular(30.0)),
                  color: Colors.yellow[600],
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(
                              Icons.edit
                          ),
                        label: Text(
                            'Edit Profile'
                        ),
                      ),
                      SizedBox(height: 30,),
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey[200],
                        child: Icon(
                          Icons.person_outline,
                          color: Colors.grey[400],
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                          'Name',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'E-mail',
                          icon: Icon(
                            Icons.email,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        keyboardType:TextInputType.number ,
                        decoration: InputDecoration(
                          hintText: 'Mobile Number',
                          icon: Icon(
                            Icons.phone,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
