import 'package:flutter/material.dart';
import 'package:training_project_delivery/details.dart';
import 'package:training_project_delivery/listClass.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Categories getCategory = Categories();
  Popular getPopular = Popular();

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
                      fontSize: 16.0,
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
                      fontSize: 18.0,
                      letterSpacing: 0.5,
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
                      itemCount: getCategory.categoryImages.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => CategoryList(index),
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
              itemCount: getPopular.popularImages.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => PopularList(index),
            ),
          ],
        ),
      ),
    );
  }

  Widget CategoryList(index) => Padding(
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 8,
          left: 8,
        ),
        child: Container(
          height: MediaQuery.of(context).size.width * 0.4,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            color: Colors.yellow[600],
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: <Widget>[
              //images
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(getCategory.categoryImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              //food name
              Text(
                '${getCategory.categoryNames[index]}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
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

  Widget PopularList(index) => Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.grey[200],
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          height: MediaQuery.of(context).size.width * 0.33,
          child: Row(
            children: <Widget>[
              //name and rate
              Expanded(
                child: Column(
                  children: <Widget>[
                    //rate
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
                          '${getPopular.popularNames[index]}',
                          style: TextStyle(
                            fontSize: 18.0,
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
                          '${getPopular.weight[index]}',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    //place order and stars
                    Spacer(flex: 1,),
                    Row(
                      children: <Widget>[
                        //button
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Details(
                                      '${getPopular.popularNames[index]}',
                                      '${getPopular.popularImages[index]}',
                                      '${getPopular.price[index]}',
                                      '${getPopular.size[index]}',
                                      '${getPopular.time[index]}'),
                                ));
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.05,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomLeft: Radius.circular(20.0)),
                                color: Colors.yellow[600]),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
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
                  ],
                ),
              ),
              // image
              Expanded(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(getPopular.popularImages[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
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
