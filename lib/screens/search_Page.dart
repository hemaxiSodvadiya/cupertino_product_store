import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'class.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController textController;

  @override
  void initState() {
    super.initState();
    textController = TextEditingController(text: 'shirt');
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Center(
              child: Container(
                height: 45,
                width: double.infinity,
                padding: EdgeInsets.only(left: 5, right: 5),
                child: CupertinoSearchTextField(
                  controller: textController,
                  placeholder: 'Search',
                  backgroundColor: CupertinoColors.lightBackgroundGray,
                ),
              ),
            ),
          ),
          SliverFillRemaining(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                for (var i = 0; i < Global.allSearch.length; i++)
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
                                    "${Global.allSearch[i].image}"),
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
                                "${Global.allSearch[i].name}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: CupertinoColors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "rs ${Global.allSearch[i].price}",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: CupertinoColors.systemGrey,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Icon(
                            CupertinoIcons.add_circled,
                            color: CupertinoColors.link,
                            size: 20,
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
