import 'package:flutter/material.dart';

class NextClassCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Próxima aula',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.white60),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        '13:30',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                      ),
                    )
                  ],
                ),
                Text(
                  'Sistemas\nOperacionais',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 31,
          ),
          Divider(
            height: 0,
          ),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              expandedAlignment: Alignment.topLeft,
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              childrenPadding: const EdgeInsets.only(left: 16, top: 13),
              title: Text('Detalhes'),
              children: [
                Text(
                  'Professor',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white60),
                ),
                Text(
                  'Sávio',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Prova',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white60),
                ),
                Text(
                  'Não marcada',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Aula passada',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white60),
                ),
                Text(
                  'Ver resumo',
                  style: Theme.of(context)
                      .textTheme
                      .headline5!
                      .copyWith(color: Theme.of(context).colorScheme.primary),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
