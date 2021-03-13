import 'package:flutter/material.dart';

class GroupsCard extends StatelessWidget {
  final String imageUrl =
      "https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=367&q=80";
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Placeholder(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 0, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Headline 6',
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 1,
                ),
                Text(
                  'Body 2',
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.grey[500],
                      ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
