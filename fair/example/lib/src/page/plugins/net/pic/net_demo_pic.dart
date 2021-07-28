import 'package:fair/fair.dart';
import 'package:fair_example/src/page/plugins/net/fair_plugin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@FairPatch()
class PicNetDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PicNetDemoPageStateful();
  }
}

class _PicNetDemoPageStateful extends State {

  PicData _picData = PicData();

  void request() {
    FairNet().request({
      'method': 'GET',
      'url': 'http://www.baidu.com',
    });
  }

  void onClick() {
    FairNet().request({
      'pageName': '#FairKey#',
      'method': 'GET',
      'url': 'https://www.wanandroid.com/banner/json',
      'success': (resp) {
        if (resp == null) {
          return;
        }
        List data = resp['data'];
        String u = data[0]['imagePath'];
        _picData.picUrl = u;
        _picData.title = data[0]['title'];
        // setState(
        //   '#FairKey#',
        //   {
        //     _picData.title: data[0]['title'],
        //     _picData.picUrl: u,
        //   },
        // );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello',
      home: Scaffold(
          appBar: AppBar(
            title: Text('加载网络获取地址的图片'),
          ),
          body: Container(
            child: Column(
              children: [
                Image.network('${_picData.picUrl}', width: 1000),
                Text(
                  '${_picData.title}',
                  maxLines: 3,
                  style: TextStyle(color: Colors.blue, fontSize: 19),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: onClick,
          )),
    );
  }
}

class PicData extends Object {
  String picUrl =
      'https://www.youxinpai.com/public/home/widget/services/4s/img/img_4s_4_0943ac1.jpg';
  String title = '';
  String content = '';
}