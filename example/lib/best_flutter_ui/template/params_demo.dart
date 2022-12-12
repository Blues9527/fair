import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

///测试数据
///
//[
//   {
//     'imagePath':
//     'https://pic5.58cdn.com.cn/nowater/frs/n_v31ea165ec1cb846ca89a334fde9b78f2d.png',
//     'titleTxt': 'Grand Royal Hotel',
//     'subTxt': 'Wembley, London',
//     'dist': 2.0,
//     'reviews': 80,
//     'rating': 4.4,
//     'perNight': 180,
//   },
//   {
//     'imagePath':
//     'https://pic6.58cdn.com.cn/nowater/frs/n_v31ffd5c348ceb41f597bdc2063f4669f6.png',
//     'titleTxt': 'Queen Hotel',
//     'subTxt': 'Wembley, London',
//     'dist': 4.0,
//     'reviews': 74,
//     'rating': 4.5,
//     'perNight': 200,
//   },
//   {
//     'imagePath':
//     'https://pic1.58cdn.com.cn/nowater/frs/n_v3069ac48509cf4f728e65bdf91421967c.png',
//     'titleTxt': 'Grand Royal Hotel',
//     'subTxt': 'Wembley, London',
//     'dist': 3.0,
//     'reviews': 62,
//     'rating': 4.0,
//     'perNight': 60,
//   },
//   {
//     'imagePath':
//     'https://pic7.58cdn.com.cn/nowater/frs/n_v36d14627e7aab401fa9b4c7abfacb6dbe.png',
//     'titleTxt': 'Queen Hotel',
//     'subTxt': 'Wembley, London',
//     'dist': 7.0,
//     'reviews': 90,
//     'rating': 4.4,
//     'perNight': 170,
//   },
//   {
//     'imagePath':
//     'https://pic4.58cdn.com.cn/nowater/frs/n_v371796513e3674ca3bba97c98199495d1.png',
//     'titleTxt': 'Grand Royal Hotel',
//     'subTxt': 'Wembley, London',
//     'dist': 2.0,
//     'reviews': 240,
//     'rating': 4.5,
//     'perNight': 200,
//   },
// ];

@FairPatch()
class HotelListView extends StatefulWidget {
  dynamic fairProps;

  HotelListView({Key? key, required this.fairProps}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HotelListViewState();
}

class _HotelListViewState extends State<HotelListView> {
  @FairProps()
  var fairProps;

  String imagePath(index) {
    return fairProps[index].imagePath;
  }

  String titleTxt(index) {
    return fairProps[index].titleTxt;
  }

  String subTxt(index) {
    return fairProps[index].subTxt;
  }

  double rating(index) {
    return fairProps[index].rating;
  }

  String distance(index) {
    return fairProps[index].dist + ' km';
  }

  String reviews(index) {
    return fairProps[index].reviews + ' reviews';
  }

  String perNight(index) {
    return fairProps[index].perNight + '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView.builder模版'),
        ),
        backgroundColor: Color(0xFFFEFEFE),
        body: Container(
          color: Color(0xFFFFFFFF),
          child: Sugar.listBuilder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: 24, right: 24, top: 8, bottom: 16),
              child: Container(
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 2,
                            child:
                                Image.network(imagePath(index), fit: BoxFit.cover),
                          ),
                          Container(
                            color: Color(0xFFFFFFFF),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16, top: 8, bottom: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            titleTxt(index),
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22,
                                            ),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                subTxt(index),
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey),
                                              ),
                                              const SizedBox(
                                                width: 4,
                                              ),
                                              Icon(
                                                Icons.location_on_rounded,
                                                size: 12,
                                                color: Color(0xFF54D3C2),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  distance(index),
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4),
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  // '80 reviews',
                                                  reviews(index),
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 16, top: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        // '180',
                                        perNight(index),
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 22,
                                        ),
                                      ),
                                      Text(
                                        '/per night',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Material(
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.favorite_border,
                                color: Color(0xFF54D3C2),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ));
  }
}
