import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  InAppWebViewController? inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Education_Webside"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              if (await inAppWebViewController!.canGoBack()) {
                inAppWebViewController!.goBack();
              }
            },
          ),
          IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () async {
                await inAppWebViewController!.reload();
              }),
          IconButton(
              icon: const Icon(Icons.home),
              onPressed: () async {
                await inAppWebViewController!.reload();
              }),
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () async {
              if (await inAppWebViewController!.canGoForward()) {
                inAppWebViewController!.goForward();
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Container(
              height: 200,
              width: 200,
              child: Column(
                children: [
                  Image.network(
                      "https://tse1.mm.bing.net/th?id=OIP.O0IzlGrXOSOkHPcNV5fS2AAAAA&pid=Api&rs=1&c=1&qlt=95&w=205&h=118"),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('Wikipedia');
                    },
                    child: const Text(
                      "Wikipedia",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 250,
              width: 250,
              child: Column(
                children: [
                  Image.network(
                      "https://tse4.mm.bing.net/th?id=OIP.swPiIq-rGCarPbofX3hVRAHaEK&pid=Api&P=0"),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('W3schools');
                    },
                    child: const Text(
                      "W3schools",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 200,
              width: 200,
              child: Column(
                children: [
                  Image.network(
                      "https://tse1.mm.bing.net/th?id=OIP.zeTvsDLqcDY-5t_BixzkOwHaEK&pid=Api&rs=1&c=1&qlt=95&w=172&h=97"),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('JavaPoint');
                    },
                    child: const Text(
                      "JavaPoint",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.red),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              child: Column(
                children: [
                  Image.network(
                      "https://tse2.mm.bing.net/th?id=OIP.x6-iUkcyWpYTDLRW2KA4wgHaHa&pid=Api&P=0"),
                  const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('TutorialPoints');
                    },
                    child: const Text(
                      "TutorialPoints ",
                      style: TextStyle(fontSize: 18, color: Colors.greenAccent),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
