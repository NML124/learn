import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn/Constants/colors.dart';
import '../Constants/strings.dart';
import '../Constants/textStyle.dart';
import '../Constants/numbers.dart';
import '../Widgets/cardMessage.dart';

class message extends StatefulWidget {
  const message({super.key});

  @override
  State<message> createState() => _messageState();
}

class _messageState extends State<message> {

  final List messages = [
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 0,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 0,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
    {
      'senderProfile':'assets/images/avatar/default.png',
      'senderName':'Stive',
      'message': 'Hello! how are you',
      'unRead': 3,
      'date': '07:31'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return cardMessage(messages);
  }
}

Widget titleMessage = Container(
  margin: EdgeInsets.only(
      top: 30,
      bottom: NumbersConstant.margin
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        StringConstant.titleMessageScreen,
        style: AppTextStyles.titleText,
      ),
      IconButton(
        onPressed: (){
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
          onPressed: (){
            query = '';
          },
          icon: const Icon(Icons.clear)
      )
    ];
  }
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: (){
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back)
    );
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var item in allData){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
        itemBuilder: (context, index){
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
    for (var item in allData){
      if (item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
        itemBuilder: (context, index){
          var result = matchQuery[index];
          return ListTile (
            title: Text(result),
          );
        }
    );
  }
}

