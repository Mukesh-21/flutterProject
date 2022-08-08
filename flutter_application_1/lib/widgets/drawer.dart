import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final imageUrl =
    //   "https://www.freepik.com/free-photo/stylish-handsome-indian-man-tshirt-pastel-wall_18133669.htm#query=man&position=0&from_view=keyword";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Mukesh Pandit",
                    ),
                    accountEmail: Text("mukeshpandit219@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage(
                        "allassets/images/customer.jpg",
                      ),
                    )
                    )
                    )
          ],
        ),
      ),
    );
  }
}
