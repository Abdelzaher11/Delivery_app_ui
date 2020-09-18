import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_project_delivery/main.dart';
import 'package:training_project_delivery/navigation.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.yellow[600],
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          //name
          Row(
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          //price
          Row(
            children: <Widget>[
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Price',
                style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.red[400],
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          //size , delivery time and image
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey[100],
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Row(
                children: <Widget>[
                  //details
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 50.0,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Size',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Size',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Delivery',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Delivery Time',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                  //image
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.local_dining,
                          size: 100.0,
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
          // components
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Text('Components'),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 50.0,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[300],
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Center(child: Text('1st')),
                        ),
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[300],
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Center(child: Text('1st')),
                        ),
                      ),
                    ],
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[300],
                          ),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Center(child: Text('1st')),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),
          // order button
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>Done(),
                      ));
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              topLeft: Radius.circular(30.0)),
                          color: Colors.yellow[600],
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Place an Order',
                              style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 13.0,
                            ),
                          ],
                        ))),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Done extends StatefulWidget {
  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.yellow[600],
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 45.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        'Thanks',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Icon(
                      Icons.tag_faces,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Text(
                    'your order is done',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),

                ),
                Spacer(flex: 1,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> Navigations(),
                    ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Back to Home'),
                      Icon(Icons.home,color: Colors.black,)
                    ],
                  ),
                ),
                SizedBox(height: 5.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

