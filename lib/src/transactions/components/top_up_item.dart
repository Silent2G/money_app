import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/assets_paths.dart';

class TopUpItem extends StatefulWidget {
  const TopUpItem({
    Key? key,
    required this.title,
    required this.sum,
  }) : super(key: key);

  final String title;
  final String sum;

  @override
  TopUpItemState createState() {
    return TopUpItemState();
  }
}

class TopUpItemState extends State<TopUpItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Image.asset(
            kTopUpItemPath,
            width: 30,
            height: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              widget.title,
              textAlign: TextAlign.start,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Text(
            "+${widget.sum}",
            style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).primaryColor,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
