import 'package:flutter/material.dart';

class ConversationTile extends StatelessWidget {
  ConversationTile({Color color = Colors.white70}) : color = color;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white70,
            radius: 25,
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: Text(
              'Lorem Ipsum',
              //style: Theme.of(context).textTheme.subtitle1,
            ),
          ),
          subtitle: Text(
            'dolor sit amet, consectetur elit amet amet',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'HÁ X MIN',
                style: Theme.of(context).textTheme.overline!.copyWith(
                      color: color,
                    ),
              ),
              CircleAvatar(
                backgroundColor: color,
                radius: 8,
              ),
            ],
          ),
        ),
        Divider(
          height: 0,
          indent: 70,
        )
      ],
    );
  }
}
