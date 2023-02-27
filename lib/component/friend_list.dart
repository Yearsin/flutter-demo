import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutterdemo/component/friend.dart';

class FriendListPage extends StatefulWidget {
  const FriendListPage({super.key});

  @override
  State<FriendListPage> createState() => _FriendListPageState();
}

class _FriendListPageState extends State<FriendListPage> {

  List<Friend> _friends = [];

  @override
  void initState() {
    super.initState();
    _loadFriendsData();
  }

  _loadFriendsData() async {
    HttpClient httpClient = HttpClient();
    HttpClientRequest request = await httpClient.getUrl(Uri.parse('https://randomuser.me/api/?results=30'));
    HttpClientResponse response = await request.close();
    String text = await response.transform(utf8.decoder).join();

    setState(() {
      _friends = Friend.resolveDataFromReponse(text);
    });

    httpClient.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('好友列表'),
      ),
      body: ListView.builder(
        itemCount: _friends.length,
        itemBuilder: _buildItem,
      )
    );
  }

  Widget _buildItem(BuildContext context, int index) {

    var friend = _friends[index];
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(friend.avatar),
      ),
      title: Text(friend.name),
      subtitle: Text(friend.email),
    );
  }
}