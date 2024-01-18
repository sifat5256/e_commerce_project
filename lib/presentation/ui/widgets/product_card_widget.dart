


import 'package:crafty_bay/presentation/ui/utility/colors.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 150,
      child: Card(

        child: Column(
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),

                child: Image.asset("assets/images/shoe2.png",height: 120,)),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("Nike Shoes 3R3",style: TextStyle(
                      color: AppColors.primaryColor,
                      overflow: TextOverflow.ellipsis
                  ),),
                  Row(
                    children: [
                      Text("\$120",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),),

                      Icon(Icons.star,color: Colors.amber,),
                      Text("4.4",style: TextStyle(
                          color: AppColors.primaryColor
                      ),),
                      SizedBox(
                        width: 8,
                      ),
                      Card(
                        shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)
                        ),
                        child: Icon(Icons.favorite,color: Colors.red,),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}