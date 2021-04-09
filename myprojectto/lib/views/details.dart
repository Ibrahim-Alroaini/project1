import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myprojectto/data/data.dart';
import 'package:myprojectto/model/country_model.dart';
import 'package:flutter/material.dart';
import 'package:myprojectto/model/popular_tours_model.dart';

class Details extends StatefulWidget {
  final String imgUrl;
  final String placeName;
  final double rating;
  final String aboutPlace;
  final List  imgPlace;
  final String icons;
  final String aboutserv;

  // final PopularTourModel place;

  Details(
      {@required this.rating, @required this.imgUrl, @required this.placeName,@required this.aboutPlace,@required this.imgPlace,@required this.icons,@required this.aboutserv});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<CountryModel> country = new List();
List<PopularTourModel> popularTourModels = new List();
  @override
  void initState() {
    country = getCountrys();
    popularTourModels = getPopularTours();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/map.jpg'))),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    widget.imgUrl,
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 350,
                    color: Colors.black12,
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 24,
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              Image.asset(
                                "assets/heart.png",
                                height: 24,
                                width: 24,
                              )
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.placeName,
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white70,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                   widget.placeName,
                                    style: TextStyle(fontFamily: 'DancingScript',
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  RatingBar(widget.rating.round()),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "${widget.rating}",
                                    style: TextStyle(fontFamily: 'DancingScript',
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          height: 50,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                children: [
                  
                  FeaturesTile(
                    icon: Icon(Icons.wifi, color: Color(0xff5A6C64)),
                    label: "خدمات الانترنت ",
                   
                    
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.location_city ,color: Color(0xff5A6C64)),
                    label: "الموقع",

                  ),
                  FeaturesTile(
                    icon: Icon(Icons.car_rental, color: Color(0xff5A6C64)),
                    label: "المواصلات",
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.local_drink, color: Color(0xff5A6C64)),
                    label: "الوجبات الخفيفة",
                  )
                ],
              ),
              //   ],
                 
                  // FeaturesTile(
                  //   icon: Icon(Icons.wifi, color: Color(0xff5A6C64)),
                    
                   
                    
                  // ),
                  // FeaturesTile(
                  //   icon: Icon(Icons.beach_access, color: Color(0xff5A6C64)),
                  //   label ?? "label",

                  // ),
                  // FeaturesTile(
                  //   icon: Icon(Icons.card_travel, color: Color(0xff5A6C64)),
                    
                  //   label: "",
                    
                  // ),
                  // FeaturesTile(
                  //   icon: Icon(Icons.local_drink, color: Color(0xff5A6C64)),
                  //   label: "$icons",
                  // )
               
              
              // Row(
              //   children: [
              //     Container(
              //         height: 240,
              //       child: ListView.builder(
              //           itemCount: country.length,
              //           shrinkWrap: true,
              //           physics: ClampingScrollPhysics(),
              //           scrollDirection: Axis.horizontal,
              //           itemBuilder: (context, index) {
              //             return ListTileHome(
              //               icons: widget.icons[index],
              //               aboutserv: widget.aboutserv[index]

                            
              //             );
              //           }),
              //     ),
              //   ],
              // ),

              
              Container(
                margin: EdgeInsets.symmetric(vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [DetailsCard(), DetailsCard()],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(

                 widget.aboutPlace ,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontFamily: 'DancingScript',
                      fontSize: 15,
                      height: 1.5,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff123456)),
                ),
              ),
               Container(
                height: 240,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    itemCount: widget.imgPlace.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ImageListTile(
                      
                        imgPlace:widget.imgPlace[index]
                       
                      );
                    }),
              ),
              SizedBox(
                height: 16,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final String title;
  final String noOfReviews;
  final double rating;
  final String placeName;
  DetailsCard({this.rating, this.title, this.noOfReviews,this.placeName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: Color(0xffE9F4F9), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xffD5E6F2),
                    borderRadius: BorderRadius.circular(10)),
                child:Image.network('https://openweathermap.org/img/w/01d.png'),
                
                ),
            
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "حالة الطقس ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5A6C64)),
                  ),
                  Text("$placeName", style: new TextStyle(fontFamily: 'DancingScript',color: Colors.black)),
                  SizedBox(
                    height: 6,
                  ),
                  Text('April 12, 2021', style: new TextStyle(fontFamily: 'DancingScript',color:  Color(0xff123456))),
                    Text('18:30', style: new TextStyle(fontFamily: 'DancingScript',color:  Color(0xff123456))),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: new Icon(Icons.refresh),
                  tooltip: 'Refresh',
                  onPressed: () => null,
                  color:  Color(0xff123456),
                ),)
        ],
      ),
    );
  }
}

class FeaturesTile extends StatelessWidget {
  final Icon icon;
  final String label;
  FeaturesTile({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff5A6C64).withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(40)),
              child: icon,
            ),
            SizedBox(
              height: 9,
            ),
            Container(
                width: 70,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'DancingScript',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff5A6C64)),
                ))
          ],
        ),
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  final int rating;
  RatingBar(this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.star,
              color: rating >= 1 ? Colors.white70 : Colors.white30,
            ),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.star,
              color: rating >= 2 ? Colors.white70 : Colors.white30,
            ),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.star,
              color: rating >= 3 ? Colors.white70 : Colors.white30,
            ),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.star,
              color: rating >= 4 ? Colors.white70 : Colors.white30,
            ),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.star,
              color: rating >= 5 ? Colors.white70 : Colors.white30,
            ),
          ],
        ));
  }
}
class CountryListTile extends StatelessWidget {
  final String label;
  final String countryName;
  final int noOfTours;
  final double rating;
  final String imgUrl;

  CountryListTile(
      {@required this.countryName,
        @required this.label,
        @required this.noOfTours,
        @required this.rating,
        @required this.imgUrl

      });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: CachedNetworkImage(
              imageUrl: imgUrl,
              height: 220,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 200,
            width: 150,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 8, top: 8),
                        padding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white38),
                        child: Text(
                          label ?? "label",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10, left: 8, right: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "$countryName",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "$noOfTours",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                        margin: EdgeInsets.only(bottom: 10, right: 8),
                        padding:
                        EdgeInsets.symmetric(horizontal: 3, vertical: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white38),
                        child: Column(
                          children: [
                            Text(
                              "$rating",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.white,
                              size: 20,
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ImageListTile extends StatelessWidget {
 
  final String imgPlace;
    //     final String imagplace3;

  ImageListTile({@required this.imgPlace});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image(
          image:AssetImage(imgPlace) ,
          height: 220,
          width: 150,
          fit: BoxFit.cover,
        ),
         
         
      ),
    );
  }
}

