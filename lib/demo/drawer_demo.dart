
import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Kevin', style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('kevin2world@163.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://avatars3.githubusercontent.com/u/15150546?s=460&v=4'),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage('http://img0.imgtn.bdimg.com/it/u=2190591342,2647349644&fm=26&gp=0.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.yellow[400].withOpacity(0.6),
                    BlendMode.hardLight,
                    )
                  )
                ),
              ),
              // DrawerHeader(///Drawer小控件
              //   child: Text('headerView'.toUpperCase()),
              //   decoration: BoxDecoration(
              //     color: Colors.grey[300],
              //   ),
              // ),
              ListTile(
                title: Text('Message',textAlign: TextAlign.right),
                // leading: Icon(Icons.message,color:Colors.black12,size:22.0),///左边显示
                trailing: Icon(Icons.message, color: Colors.black26, size: 22.0),///右边显示
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Favorite',textAlign: TextAlign.right),
                // leading: Icon(Icons.message,color:Colors.black12,size:22.0),///左边显示
                trailing: Icon(Icons.favorite, color: Colors.black26, size: 22.0),///右边显示
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Setting',textAlign: TextAlign.right),
                // leading: Icon(Icons.message,color:Colors.black12,size:22.0),///左边显示
                trailing: Icon(Icons.settings, color: Colors.black26, size: 22.0),///右边显示
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        );
  }
}