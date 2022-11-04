import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late String _search;

  _getGifs() async {
    http.Response response;
    if (_search == null) {
      //pega os gifs do trending
      response = await http.get("URL DO GIPHY");
    } else {
      //faz a pesquisa
      response = await http.get("URL DO GIPHY ACRESCENTANDO _search");
    }


    @override
    Widget build(BuildContext context) {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.network("url da imagem"),
        centerTitle: true,
      ),
    );
  }

}
