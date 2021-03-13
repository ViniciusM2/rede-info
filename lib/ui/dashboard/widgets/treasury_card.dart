import 'package:flutter/material.dart';

class TreasuryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Tesouraria',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white60),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('R\$ 278', style: Theme.of(context).textTheme.headline4),
          ],
        ),
      ),
    );
  }
}
