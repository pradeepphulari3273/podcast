import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController? tc;


  @override
  void initState() {
    super.initState();
    tc = TabController(length: 10, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverOverlapAbsorber(
            handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            sliver: SliverAppBar(
             
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: <StretchMode>[],
                collapseMode: CollapseMode.parallax,
                background: Column(
                  children: [
                    AppBar(
                      leading: Icon(Icons.cast, color: Colors.grey[900]),
                      centerTitle: true,
                      backgroundColor: Colors.white,
                      elevation: 0,
                      title: Text("Explore",
                          style: TextStyle(color: Colors.grey[900])),
                      actions: [
                        CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://i.pinimg.com/originals/d4/22/d7/d422d7642f00c404fdb5fea5393590a2.jpg")),
                      ],
                    ),
                   /* Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          labelText: 'Search',
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: const Color(0xFFD1D0CE),
                                width: 2.0,
                              ),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),*/
                  ],

                ),

              ),
              centerTitle: true,
              backgroundColor: Colors.white,
              floating: true,
              bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  isScrollable: true,
                  indicatorWeight: 4,
                  controller: tc,
                  tabs: [
                    Tab(
                        child: Text("Lorem",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text("Ipsum",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text("Dolor",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text("Sit",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text("Amet",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text("Lorem",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text("Ipsum",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text("Dolor",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text("Sit",
                            style: TextStyle(color: Colors.black))),
                    Tab(
                        child: Text("Amet",
                            style: TextStyle(color: Colors.black))),
                  ]),
            ),

          )
        ];
      },
      body: SliverToBoxAdapter(),
    );
  }
}
