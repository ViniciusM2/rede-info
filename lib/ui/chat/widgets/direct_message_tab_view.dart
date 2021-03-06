import 'package:flutter/material.dart';
import 'package:redeinfo/ui/chat/widgets/conversation_tile.dart';

class DirectMessageTabView extends StatelessWidget {
  final List<ConversationTile> tilesEllipsis = [
    ConversationTile(color: Colors.amber),
    ConversationTile(color: Colors.cyan),
    ConversationTile(color: Colors.transparent),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ConversationTile(color: Colors.amber),
        ConversationTile(color: Theme.of(context).colorScheme.error),
        ConversationTile(color: Colors.cyan),
        ConversationTile(color: Colors.transparent),
        ConversationTile(color: Colors.amber),
        ConversationTile(color: Colors.transparent),
        ConversationTile(color: Colors.cyan),
        ConversationTile(color: Theme.of(context).colorScheme.error),
        ConversationTile(color: Colors.amber),
        ConversationTile(color: Colors.amber),
        ConversationTile(color: Colors.cyan),
        ConversationTile(color: Colors.transparent),
        ...tilesEllipsis,
        ...tilesEllipsis.reversed,
        ...tilesEllipsis.reversed,
        ...tilesEllipsis,
      ],
    );
  }
}
