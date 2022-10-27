import 'dart:convert';

import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

import 'test_data.dart';

@FairPatch()
class HomeScrollView extends StatefulWidget {
  const HomeScrollView({Key? key}) : super(key: key);

  @override
  State<HomeScrollView> createState() => _HomeScrollViewState();
}

class _HomeScrollViewState extends State<HomeScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('CustomScrollView模版'),
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('CustomScrollView模版'),
          ),
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic5.58cdn.com.cn/nowater/frs/n_v31ea165ec1cb846ca89a334fde9b78f2d.png',
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                'Flutter Best UI x Fair 最佳实践',
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 24),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic6.58cdn.com.cn/nowater/frs/n_v31ffd5c348ceb41f597bdc2063f4669f6.png',
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic1.58cdn.com.cn/nowater/frs/n_v3069ac48509cf4f728e65bdf91421967c.png',
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic7.58cdn.com.cn/nowater/frs/n_v36d14627e7aab401fa9b4c7abfacb6dbe.png',
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic4.58cdn.com.cn/nowater/frs/n_v371796513e3674ca3bba97c98199495d1.png',
                    fit: BoxFit.cover),
              ),
            ),
          ),

          // SliverList(
          //   delegate: Sugar.sliverChildBuilderDelegate(
          // builder: _listItemBuilder,
          // builder: (context,index){
          //   return Container(color: Colors.yellow, width: 100, height: 100,);
          // },
          // childCount: 3,
          //     (context,index){
          //   return FairWidget(
          //     name:
          //     'assets/bundle/lib_best_flutter_ui_template_home_scrollview_list_item.fair.json',
          //     path:
          //     'assets/bundle/lib_best_flutter_ui_template_home_scrollview_list_item.fair.json',
          //     data: {
          //         'fairProps': jsonEncode({'imagePath': homeDataList[index]}),
          //       },
          //     );
          // },
          //   ),
          // ),
          // SliverGrid(
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     mainAxisSpacing: 10.0,
          //     crossAxisSpacing: 10.0,
          //     childAspectRatio: 2.0,
          //   ),
          //   delegate: SliverChildBuilderDelegate(
          //     _gridItemBuilder,
          //     childCount: 15,
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _listItemBuilder(context, index) {
    return Container();
  }

// Widget _gridItemBuilder(context, index) {
//   return Container();
// }
}
