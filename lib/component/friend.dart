import 'dart:convert';

import 'package:flutter/material.dart';

class Friend {
  @required final String avatar;
  @required final String name;
  @required final String email;
  
  Friend({required this.avatar, required this.name,  required this.email});
  
  static List<Friend> resolveDataFromReponse(String responseData) {
  
    var results = jsonDecode(responseData)['results'];
  
    var result = results
      .map((item) => Friend.itemMap(item))
      .toList()
      .cast<Friend>();
      return result;
  }

  static Friend itemMap(Map map) {
    var name = map['name'];
    return Friend(
      avatar: map['picture']['large'],
      name: '${name['first']} ${name['last']}',
      email: map['email']
    );
  }
}