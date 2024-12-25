import 'package:flutter/material.dart';

import '../model/model.dart';
import '../my_theme/my_text.dart';
import '../utils/manager_colors.dart';
import '../utils/manager_strings.dart';

class WidgetItem extends StatelessWidget {
  const WidgetItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: ManagerColors.grey, width: 2),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Center(
                            child: Image.network(product.image,
                                fit: BoxFit.cover))),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(product.title,
                            style: TextStyles.headline,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis)),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('${StringsManager.price} ${product.price}',
                            style: TextStyles.bodyText)),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(children: [
                          Text('${StringsManager.reviews} (${product.rating}) ',
                              style: TextStyles.bodyText),
                          Icon(Icons.star,
                              color: ManagerColors.yellow, size: 16)
                        ]))
                  ]),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: ManagerColors.white),
                      padding: EdgeInsets.all(4),
                      child: Icon(Icons.favorite,
                          color: ManagerColors.blue, size: 20))),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                      backgroundColor: ManagerColors.blue,
                      radius: 20,
                      child: Icon(Icons.add, color: ManagerColors.white)))
            ])));
  }
}
