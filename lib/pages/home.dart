import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // const IconData icon = Icons.menu;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _searchField(),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                'Category',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 40,
              margin: const EdgeInsets.all(10),
            ),
          ],
        )
      ]),
    );
  }

  Container _searchField() {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          // shadow of the TextField
          color: Colors.grey.withOpacity(0.23),
          blurRadius: 15,
          spreadRadius: 0,
          offset: const Offset(0, 4),
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: const Text('Search for recipes...').data,
            hintStyle:
                TextStyle(color: Colors.grey[400], fontWeight: FontWeight.w500),
            contentPadding: const EdgeInsets.fromLTRB(30, 10, 10, 10),
            prefixIcon: const Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            suffixIcon: const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 15, 10),
              child: Icon(Icons.settings, color: Colors.grey),
            ), // search icon to the left of the text field
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Breakfast',
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            // color: Colors.grey[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Icon(
              Icons.arrow_back_rounded,
              color: Colors.grey[600],
            ),
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              // width: 35,
              // height: 10,
              decoration: BoxDecoration(
                // color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(
                  Icons.more_horiz_rounded,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
