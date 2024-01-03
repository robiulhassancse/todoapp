import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoapp/list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xbefdf9fb),
      appBar: AppBar(
        backgroundColor: const Color(0xbefdf9fb),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              size: 30,
              color: Color(0xFF3A3A3A),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.red,
              ),
              child: ClipRect(
                child: Image.asset(
                  'assets/images/mypicture.jpg',fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            searchBox(),
           ToSDoItems(),
          ],
        ),
      ),
    );
  }

  Widget searchBox(){
   return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16,),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search_rounded,size: 25,color: Color(0xbefdf9fb),),
              prefixIconConstraints: BoxConstraints(
                maxHeight: 20,
                minWidth: 35,
              ),
              hintText: 'Search',
              hintStyle: TextStyle(color: Color(0xbefdf9fb)),

            ),
          ),
        ),
      ),
    );
  }
}
