import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import 'class.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Shopping Cart'),
          ),
          SliverFillRemaining(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                CupertinoTextFormFieldRow(
                  prefix: const Icon(
                    CupertinoIcons.person_alt,
                    color: CupertinoColors.lightBackgroundGray,
                  ),
                  placeholder: "Name",
                ),
                const Divider(),
                CupertinoTextFormFieldRow(
                  prefix: const Icon(
                    CupertinoIcons.mail_solid,
                    color: CupertinoColors.lightBackgroundGray,
                  ),
                  placeholder: "Email",
                ),
                const Divider(
                  height: 1,
                ),
                CupertinoTextFormFieldRow(
                  prefix: const Icon(
                    CupertinoIcons.mail_solid,
                    color: CupertinoColors.lightBackgroundGray,
                  ),
                  placeholder: "Location",
                ),
                const Divider(),
                Container(
                  padding: EdgeInsets.all(5),
                  child: TimeandDate(context),
                ),
                Column(
                  children: [
                    for (var i = 0; i < Global.addList.length; i++)
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
                                        "${Global.addList[i].image}"),
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
                                    "${Global.addList[i].name}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: CupertinoColors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "₹${Global.addList[i].price}",
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: CupertinoColors.systemGrey,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                "₹${Global.addList[i].price}",
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: CupertinoColors.black,
                                ),
                              ),
                              SizedBox(
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
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget TimeandDate(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  CupertinoIcons.clock,
                  color: CupertinoColors.lightBackgroundGray,
                  size: 28,
                ),
                SizedBox(width: 6),
                Text(
                  'Delivery time',
                ),
              ],
            ),
            Text(
              DateFormat.yMMMd().add_jm().format(dateTime),
            ),
          ],
        ),
        SizedBox(
          height: 200,
          //216
          child: CupertinoDatePicker(
            mode: CupertinoDatePickerMode.dateAndTime,
            initialDateTime: dateTime,
            onDateTimeChanged: (currentDateTime) {
              setState(() {
                dateTime = currentDateTime;
              });
            },
          ),
        ),
      ],
    );
  }
}
