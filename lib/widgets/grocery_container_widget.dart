import 'package:flutter/material.dart';

class GroceryContainer extends StatelessWidget {
  const GroceryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: Color.fromARGB(255, 242, 213, 182)
      ),
      child: Row(
        children: [
          Image.asset("assets/grocery.png"),
    
          SizedBox(width: 15,),
    
          Text("Pulses",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),
          )
        ],
      ),
    );
  }
}