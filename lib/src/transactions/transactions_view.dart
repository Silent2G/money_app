import 'package:flutter/cupertino.dart';

import '../scaffold.dart';
import 'components/body.dart';
import 'components/header.dart';
import 'components/navigation_panel.dart';

class TransactionsView extends StatelessWidget {
  const TransactionsView({
    Key? key,
  }) : super(key: key);

  Widget getBody() {
    final body = Stack(
      children: [
        Column(
          children: const [
            Expanded(
              flex: 5,
              child: Header(),
            ),
            Expanded(
              flex: 10,
              child: Body(),
            )
          ],
        ),
        const Align(
          alignment: Alignment(0, -0.39),
          child: NavigationPanel(),
        )
      ],
    );
    return body;
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: getBody(),
    );
  }
}
