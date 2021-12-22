import 'package:flutter/cupertino.dart';
import 'package:flutter_catlog/widgets/themes.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/flutter/container.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/src/flutter/sizedbox.dart';

class ProductImage extends StatelessWidget {
  final String? image;

  const ProductImage({Key? key, @required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image!,
    ).box.p8.rounded.color(context.canvasColor).make().p16().w40(context);
  }
}
