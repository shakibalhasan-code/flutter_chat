import 'package:chat/core/utils/themes/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat',style: AppStyle.textLarge),
        centerTitle: false,
      ),
      body: Column(
        children: [
          ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
            return ListTile(title: Text('Sadat',style: AppStyle.textMedium),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.arrow_forward_ios_rounded));
          })

        ],
      ),
    );
  }
}
