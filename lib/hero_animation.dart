import 'package:flutter/material.dart';

class HeroFirstPage extends StatefulWidget {
  const HeroFirstPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HeroFirstPage> createState() => _HeroFirstPageState();
}

class _HeroFirstPageState extends State<HeroFirstPage> {
  List<String> myList = ["Apple", "Banana", "Strawberry", "Kiwi", "Oranges"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: Text(widget.title),
            ),
            body: ListView.builder(
                itemCount: myList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HeroSecondPage(myList[index])));
                    }),
                    child: Hero(
                      tag: myList[index],
                      child: Card(
                        elevation: 6,
                        child: ListTile(
                          title: Text(myList[index]),
                        ),
                      ),
                    ),
                  );
                })));
  }
}

class HeroSecondPage extends StatefulWidget {
  const HeroSecondPage(this.fruit, {super.key});
  final String fruit;
  @override
  State<HeroSecondPage> createState() => _HeroSecondPageState();
}

class _HeroSecondPageState extends State<HeroSecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange, title: Text(widget.fruit)),
      body: Column(children: [
        Hero(
          tag: widget.fruit,
          child: Card(
            elevation: 6,
            child: ListTile(
              title: Text(widget.fruit),
            ),
          ),
        ),
        Hero(
            tag: '${widget.fruit}.png',
            child: GestureDetector(
                onTap: (() {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          HeroThirdPage('${widget.fruit}.png')));
                }),
                child: Image.asset(
                  'images/${widget.fruit}.png',
                  height: MediaQuery.of(context).size.height * 0.2,
                )))
      ]),
    );
  }
}

class HeroThirdPage extends StatefulWidget {
  const HeroThirdPage(this.fruitImage, {super.key});
  final String fruitImage;
  @override
  State<HeroThirdPage> createState() => _HeroThirdPageState();
}

class _HeroThirdPageState extends State<HeroThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Fruit Image Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Hero(
              tag: widget.fruitImage,
              child: Image.asset('images/${widget.fruitImage}'))
        ],
      ),
    );
  }
}
