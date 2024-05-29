import 'package:flutter/material.dart';
import 'package:learn/Widgets/listMessages.dart';
import 'package:provider/provider.dart';
import '../Constants/strings.dart';
import '../Constants/textStyle.dart';
import '../Constants/numbers.dart';
import '../providers/messages.dart';

class messagesScreen extends StatefulWidget {
  const messagesScreen({super.key});

  @override
  State<messagesScreen> createState() => _messagesScreenState();
}

class _messagesScreenState extends State<messagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListMessages(),
      appBar: AppBar(
        title: Text(StringConstant.titleMessageScreen),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
          ),
        ],
      ),
    );
  }
}

Widget titleMessage = Container(
  margin: EdgeInsets.only(top: 30, bottom: NumbersConstant.margin),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        StringConstant.titleMessageScreen,
        style: AppTextStyles.titleText,
      ),
      IconButton(
        onPressed: () {
          /*showSearch(
              context: context,
              delegate: CustomSearch()
          );*/
        },
        icon: Icon(Icons.search),
      )
    ],
  ),
);

class CustomSearch extends SearchDelegate {
  List<String> allData = [];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
      itemCount: matchQuery.length,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData) {
      if (item.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          var result = matchQuery[index];
          return ListTile(
            title: Text(result),
          );
        });
  }
}
