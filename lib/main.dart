import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_project_delivery/details.dart';
import 'package:training_project_delivery/navigation.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Navigations(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        bottom: PreferredSize(
          preferredSize: Size(50.0, 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: CircleAvatar(
                  radius: 16.0,
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.person,
                    color: Colors.grey[500],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Food',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'Delivery',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            //title 'categories'
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            // scroll list categories
            Container(
              height: 170.0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Category(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            //title'popular'
            Row(
              children: <Widget>[
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            //scroll list popular
            ListView.builder(
              itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context,index)=>Popular(),
            ),
          ],
        ),
      ),
    );
  }

  Widget Category() => Padding(
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 8,
          left: 8,
        ),
        child: Container(
          height: 150.0,
          width: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.yellow[600],
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Icon(
                Icons.local_dining,
                size: 30.0,
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                'Food Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              CircleAvatar(
                radius: 10.0,
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 10.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
      );
  Widget Popular()=>Padding(
    padding: const EdgeInsets.only(left: 8,right: 8,top:5,bottom: 5 ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[200],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: 150.0,
      child: Row(
        children: <Widget>[
          //name and rate
          Expanded(
            child: Column(
              children: <Widget>[
                //rate
                SizedBox(height: 5,),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Icon(
                      Icons.trending_up,
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Top',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
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

                //weight
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Weight',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                //add and stars
                Expanded(
                  child: Row(
                    children: <Widget>[
                      //button
                      Expanded(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context)=>Details(),
                              ));
                            },
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20.0),
                                            bottomLeft:
                                            Radius.circular(20.0)),
                                        color: Colors.yellow[600]),
                                    clipBehavior:
                                    Clip.antiAliasWithSaveLayer,
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      //stars
                      Expanded(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.black,
                                      size: 13.0,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Rate',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // image
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Icon(
                    Icons.local_dining,
                    size: 80.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
