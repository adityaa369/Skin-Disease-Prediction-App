import 'package:flutter/material.dart';


class DiseaseCard extends StatelessWidget {
  final String categoryName;


  DiseaseCard({
    required this.categoryName
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.deepPurple[100],
        ),
        child: Row(
          children: [
            Text(categoryName),
          ],
        ),
      ),

    );
  }
}
