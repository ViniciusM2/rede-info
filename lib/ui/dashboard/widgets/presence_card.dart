import 'package:flutter/material.dart';

class PresenceCard extends StatelessWidget {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Presença',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2!
                        .copyWith(color: Colors.white60),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.check,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text('88%', style: Theme.of(context).textTheme.headline4),
          ],
        ),
      ),
    );
  }
}
