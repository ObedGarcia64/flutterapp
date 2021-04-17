import 'package:flutter/material.dart';
import 'card_img.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 325,
      width: 350,
      child: ListView(
          padding: EdgeInsets.all(10.0),
          scrollDirection: Axis.horizontal,
          children: [
            CardImage("https://i.blogs.es/8ce823/super-nintendo-worl/1366_2000.jpeg"),
            CardImage("https://www.infobae.com/new-resizer/MmvYCspWUhB7xKOxy6K5BeUvYas=/768x341/filters:format(jpg):quality(85)/cloudfront-us-east-1.images.arcpublishing.com/infobae/Z2NHOIK2JNBBHCLW22LOVWJX5E.jpg"),
            CardImage("https://e00-marca.uecdn.es/assets/multimedia/imagenes/2020/12/26/16089862807105.jpg"),
            CardImage("https://aws.traveler.es/prod/designs/v1/assets/940x603/198524.jpg"),
            CardImage("https://www.jrailpass.com/blog/wp-content/uploads/2020/02/princess-peach-super-nintendo-world-1-768x432.jpg"),
            
          ],
      ),
    );
  }
  
}