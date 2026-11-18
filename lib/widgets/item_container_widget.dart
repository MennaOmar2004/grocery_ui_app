import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  final String image;
  final String title;
  final String supTitle;
   final String price;
  const ItemContainer({
    super.key,
    required this.image, 
    required this.title, 
    required this.supTitle, 
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:173,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE2E2E2)),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset(image)),
      
          SizedBox(height: 18),
      
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
      
          SizedBox(height: 5),
      
          Text(
            supTitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color(0xff7C7C7C),
            ),
          ),
      
          SizedBox(height: 20),
      
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
               price,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
      
              Container(
                padding: EdgeInsets.all(14.33),
                decoration: BoxDecoration(
                  color: Color(0xff53B175),
                  borderRadius: BorderRadius.circular(17)
                ),
                child: Icon(Icons.add ,color: Colors.white,),
              )
            ],
          ),
        ],
      ),
    );
  }
}