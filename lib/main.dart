import 'package:flutter/material.dart';
import 'model/post.dart';
import 'demo/listView_demo.dart';
import 'demo/hello_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/BottomNav_demo.dart';


void main() => runApp(APP());

class APP extends StatelessWidget {
  // final Widget child;

  // name({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),

    );
  }
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('Kevin'),
          actions: <Widget>[//actions小部件可以添加多个button
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: () => debugPrint('search button is seleced'),
            ), 
            // IconButton(
            //   icon: Icon(Icons.scanner),
            //   tooltip: 'Scanner',
            //   onPressed: () => debugPrint('scanner button is seleced'),
            // ), 
          ],
          elevation: 0.0,//设置tabbar底部阴影值
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,///设置未选择的颜色
            indicatorColor:  Colors.black54,///设置标签的滑块的颜色
            indicatorSize:  TabBarIndicatorSize.label,///设置顶部标签滑块的size
            indicatorWeight: 1.0,///设置顶部滑块的宽度
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.local_gas_station)),
              Tab(icon: Icon(Icons.local_activity)),
            ],
          ),
          
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            // Icon(Icons.local_activity, size:128.0, color: Colors.black12),
            Icon(Icons.donut_small, size:128.0, color: Colors.black12),
            Icon(Icons.file_download, size:128.0, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavDemo(),
        //  Container(
        //   color: Colors.white,
        //   padding: EdgeInsets.all(100.0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       Text('This is drawer')
        //     ],
        //   ),
        // ),
      ),
    );
  }
}


