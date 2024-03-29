import 'package:flutter/material.dart';
import 'package:newsapp/Custom/custom_title.dart';
import '../model/model.dart';
import '../services/api_services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Center(
            child: Text("News App",
                style: TextStyle(color: Colors.white, fontSize: 25))),
      ),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article>? articles = snapshot.data;
            return ListView.builder(
              itemCount: articles?.length,
              itemBuilder: (context, index) =>
                  customListTile(articles![index], context),
            );
          }
          return const Center(
            child: CircularProgressIndicator(color: Colors.black),
          );
        },
      ),
    );
  }
}
