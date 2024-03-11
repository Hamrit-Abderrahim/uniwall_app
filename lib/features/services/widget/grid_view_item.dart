import 'package:flutter/material.dart';
import 'package:uniwal_app/features/services/widget/model_service.dart';

class BuidGrideViewItem extends StatefulWidget {
  const BuidGrideViewItem({super.key, required this.data});
  final Service data;
  @override
  State<BuidGrideViewItem> createState() => _BuidGrideViewItemState();
}

class _BuidGrideViewItemState extends State<BuidGrideViewItem> {
  int total = 1;
  double price = 0;
  @override
  void initState() {
    price = widget.data.price;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(widget.data.image),
            width: double.infinity,
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '$price DZD',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            total++;
                            price = widget.data.price * total;
                          });
                        },
                        child: Container(
                            decoration: ShapeDecoration(
                              color: Color(0xFF10B981),
                              shape: OvalBorder(),
                            ),
                            width: 20,
                            height: 20,
                            child: Center(
                                child: Icon(
                              Icons.add,
                              size: 15,
                            )))),
                    Text(
                      '$total',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (total != 0) {
                              total--;
                              price = widget.data.price * total;
                            }
                          });
                        },
                        child: Container(
                            decoration: ShapeDecoration(
                              color: Color(0xFF10B981),
                              shape: OvalBorder(),
                            ),
                            width: 20,
                            height: 20,
                            child: Center(
                                child: Icon(
                              Icons.remove,
                              size: 15,
                            )))),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
