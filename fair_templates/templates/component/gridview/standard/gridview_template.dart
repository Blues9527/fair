import 'package:fair/fair.dart';
import 'package:flutter/material.dart';

@FairPatch()
class GridViewTemplate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _GridViewTemplateState();
}

class _GridViewTemplateState extends State<GridViewTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GridView模版'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic5.58cdn.com.cn/nowater/frs/n_v31ea165ec1cb846ca89a334fde9b78f2d.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic6.58cdn.com.cn/nowater/frs/n_v31ffd5c348ceb41f597bdc2063f4669f6.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic1.58cdn.com.cn/nowater/frs/n_v3069ac48509cf4f728e65bdf91421967c.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic7.58cdn.com.cn/nowater/frs/n_v36d14627e7aab401fa9b4c7abfacb6dbe.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic4.58cdn.com.cn/nowater/frs/n_v371796513e3674ca3bba97c98199495d1.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic5.58cdn.com.cn/nowater/frs/n_v31ea165ec1cb846ca89a334fde9b78f2d.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic6.58cdn.com.cn/nowater/frs/n_v31ffd5c348ceb41f597bdc2063f4669f6.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic1.58cdn.com.cn/nowater/frs/n_v3069ac48509cf4f728e65bdf91421967c.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic7.58cdn.com.cn/nowater/frs/n_v36d14627e7aab401fa9b4c7abfacb6dbe.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic4.58cdn.com.cn/nowater/frs/n_v371796513e3674ca3bba97c98199495d1.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic5.58cdn.com.cn/nowater/frs/n_v31ea165ec1cb846ca89a334fde9b78f2d.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic6.58cdn.com.cn/nowater/frs/n_v31ffd5c348ceb41f597bdc2063f4669f6.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic1.58cdn.com.cn/nowater/frs/n_v3069ac48509cf4f728e65bdf91421967c.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic7.58cdn.com.cn/nowater/frs/n_v36d14627e7aab401fa9b4c7abfacb6dbe.png',
                    fit: BoxFit.cover),
              ),
            ),
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                child: Image.network(
                    'https://pic4.58cdn.com.cn/nowater/frs/n_v371796513e3674ca3bba97c98199495d1.png',
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ));
  }
}
