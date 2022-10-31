final List<Map<dynamic, dynamic>> hotelListData = [
  {
    'imagePath':
        'https://pic5.58cdn.com.cn/nowater/frs/n_v31ea165ec1cb846ca89a334fde9b78f2d.png',
    'titleTxt': 'Grand Royal Hotel',
    'subTxt': 'Wembley, London',
    'dist': 2.0,
    'reviews': 80,
    'rating': 4.4,
    'perNight': 180,
  },
  {
    'imagePath':
        'https://pic6.58cdn.com.cn/nowater/frs/n_v31ffd5c348ceb41f597bdc2063f4669f6.png',
    'titleTxt': 'Queen Hotel',
    'subTxt': 'Wembley, London',
    'dist': 4.0,
    'reviews': 74,
    'rating': 4.5,
    'perNight': 200,
  },
  {
    'imagePath':
        'https://pic1.58cdn.com.cn/nowater/frs/n_v3069ac48509cf4f728e65bdf91421967c.png',
    'titleTxt': 'Grand Royal Hotel',
    'subTxt': 'Wembley, London',
    'dist': 3.0,
    'reviews': 62,
    'rating': 4.0,
    'perNight': 60,
  },
  {
    'imagePath':
        'https://pic7.58cdn.com.cn/nowater/frs/n_v36d14627e7aab401fa9b4c7abfacb6dbe.png',
    'titleTxt': 'Queen Hotel',
    'subTxt': 'Wembley, London',
    'dist': 7.0,
    'reviews': 90,
    'rating': 4.4,
    'perNight': 170,
  },
  {
    'imagePath':
        'https://pic4.58cdn.com.cn/nowater/frs/n_v371796513e3674ca3bba97c98199495d1.png',
    'titleTxt': 'Grand Royal Hotel',
    'subTxt': 'Wembley, London',
    'dist': 2.0,
    'reviews': 240,
    'rating': 4.5,
    'perNight': 200,
  },
];

final List<String> homeDataList = [
  'https://pic8.58cdn.com.cn/nowater/frs/n_v3385e8a566b81435f84cc05e13c7e085d.png',
  'https://pic2.58cdn.com.cn/nowater/frs/n_v3e16a7445b3564c20864c35d613bdc46b.png',
  'https://pic7.58cdn.com.cn/nowater/frs/n_v3ac1b5d9dc7884e53984fb33e4523a8cd.png',
];

final List<String> homeDataGrid = [
  'https://pic5.58cdn.com.cn/nowater/frs/n_v31ea165ec1cb846ca89a334fde9b78f2d.png',
  'https://pic6.58cdn.com.cn/nowater/frs/n_v31ffd5c348ceb41f597bdc2063f4669f6.png',
  'https://pic1.58cdn.com.cn/nowater/frs/n_v3069ac48509cf4f728e65bdf91421967c.png',
  'https://pic7.58cdn.com.cn/nowater/frs/n_v36d14627e7aab401fa9b4c7abfacb6dbe.png',
  'https://pic4.58cdn.com.cn/nowater/frs/n_v371796513e3674ca3bba97c98199495d1.png',
  'https://pic5.58cdn.com.cn/nowater/frs/n_v31ea165ec1cb846ca89a334fde9b78f2d.png',
  'https://pic6.58cdn.com.cn/nowater/frs/n_v31ffd5c348ceb41f597bdc2063f4669f6.png',
  'https://pic1.58cdn.com.cn/nowater/frs/n_v3069ac48509cf4f728e65bdf91421967c.png',
  'https://pic7.58cdn.com.cn/nowater/frs/n_v36d14627e7aab401fa9b4c7abfacb6dbe.png',
  'https://pic4.58cdn.com.cn/nowater/frs/n_v371796513e3674ca3bba97c98199495d1.png',
  'https://pic5.58cdn.com.cn/nowater/frs/n_v31ea165ec1cb846ca89a334fde9b78f2d.png',
  'https://pic6.58cdn.com.cn/nowater/frs/n_v31ffd5c348ceb41f597bdc2063f4669f6.png',
  'https://pic1.58cdn.com.cn/nowater/frs/n_v3069ac48509cf4f728e65bdf91421967c.png',
  'https://pic7.58cdn.com.cn/nowater/frs/n_v36d14627e7aab401fa9b4c7abfacb6dbe.png',
  'https://pic4.58cdn.com.cn/nowater/frs/n_v371796513e3674ca3bba97c98199495d1.png',
];

///没有动态化item的模版
final List<String> templateWithNoItem = [
  'listview_template',
  'home_scrollview',
  'gridview_template',
];


///item获取数据逻辑绑定map
final Map<String, dynamic> itemLogicMap = {
  'hotel_listview': (index) => hotelListData[index],
  //Function(int index)
  'pageview_template': (index) => {'imagePath': homeDataList[index]},
  //Function(int index)
  'staggeredview_template': (index) {
    var aspectRatio = 1.5;

    switch (index % 3) {
      case 0:
        aspectRatio = 1.5;
        break;
      case 1:
        aspectRatio = 2;
        break;
      case 2:
        aspectRatio = 1;
        break;
      default:
        aspectRatio = 1.5;
    }
    return {'imagePath': homeDataGrid[index], 'aspectRatio': aspectRatio};
  },
  //Function(int index)
  'hotel_listview_item': hotelListData[0],
  //Map<dynamic,dynamic>
  'pageview_item_template': {'imagePath': homeDataList[0]},
  //Map<dynamic,dynamic>
  'staggeredview_template_item': {
    'imagePath': homeDataGrid[0],
    'aspectRatio': 1.5
  },
  //Map<dynamic,dynamic>
};
