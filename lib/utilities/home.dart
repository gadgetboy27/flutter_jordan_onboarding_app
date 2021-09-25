import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jordan_onboarding_app/screens/jordan_list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (
            context, innerBoxIsScrolled) =>[
           SliverAppBar(
             expandedHeight: 290,
             floating: true,
             pinned: true,
             flexibleSpace: FlexibleSpaceBar(
             background: Image.asset(
                  'assets/images/jordan-wings-logo.jpeg',
                  fit: BoxFit.fill
             ),
             title: Text(' AIR JORDAN', 
             style: TextStyle(),
             ),
             centerTitle: true,
            ),
           ),
        ],
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.9, 0.9, 0.6, 05],
              colors: [
                Color(0xFF000000),
                Color(0xFF000000),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
                Color(0xFFF111F0)
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              separatorBuilder: (context, _) => Divider(),
              // This code did not work
              // itemBuilder: (context, index) =>buildCard(item: ),
              itemBuilder: (context, index) {
                final item = items[index];
                return buildCard(item: item);
              }, // This code worked finally
            ),
          ),
        ),
      ),
     )
  //  )
 );
}

  Widget buildCard({
    required CardItem item,
  }) =>
      Container(
        width: 320,
        height: 170,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                item.urlImage,
                fit: BoxFit.cover,
              ),
            ),
            // Text(
            //   item.title,
            //   style: TextStyle(),
            // ),
            // Text(
            //   item.subtitle,
            //   style: TextStyle(),
            // ),
          ],
        ),
      );
    }
