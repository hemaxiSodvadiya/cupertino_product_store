import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global.dart';
import 'card_Page.dart';
import 'class.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  late String _image;
  late String name;
  late int price;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Cupertino Store'),
          ),
          SliverFillRemaining(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                for (var i = 0; i < Global.allProduct.length; i++)
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    "${Global.allProduct[i].image}"),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${Global.allProduct[i].name}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: CupertinoColors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "₹${Global.allProduct[i].price}",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: CupertinoColors.systemGrey,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          CupertinoButton(
                            onPressed: () {
                              print("tapped...");
                              AddList list1 = AddList(
                                price: Global.allProduct[i].price,
                                name: Global.allProduct[i].name,
                                id: Global.allProduct[i].id,
                                image: Global.allProduct[i].image,
                              );
                              setState(() {
                                Global.addList.add(list1);
                              });
                            },
                            child: const Icon(
                              CupertinoIcons.add_circled,
                              color: CupertinoColors.systemBlue,
                              size: 30,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const Divider(
                        height: 14,
                        endIndent: 10,
                        indent: 100,
                        color: CupertinoColors.opaqueSeparator,
                      ),
                    ],
                  ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
