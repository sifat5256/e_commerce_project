import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafty_bay/presentation/ui/utility/assets_path.dart';
import 'package:crafty_bay/presentation/ui/utility/colors.dart';
import 'package:crafty_bay/presentation/ui/widgets/catagpry_item_widget.dart';
import 'package:crafty_bay/presentation/ui/widgets/home/circle_icon_button.dart';
import 'package:crafty_bay/presentation/ui/widgets/image_carosel_widget.dart';
import 'package:crafty_bay/presentation/ui/widgets/product_card_widget.dart';
import 'package:crafty_bay/presentation/ui/widgets/section_title_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 8,),
              searchTextField,
              const SizedBox(height: 16,),
              const ImageCaroselWidget(),
              const SizedBox(height: 16,),
              SectionTitleWidget(
                title: "All Categories",
                onTapSeeAll: (){

                },
              ),

              allCatagory(),
              SectionTitleWidget(
                title: "Popular",
                onTapSeeAll: (){

                },
              ),
              popularCatagory(),
              SectionTitleWidget(
                title: "Special",
                onTapSeeAll: (){

                },
              ),
              specialCatagory(),
              SectionTitleWidget(
                title: "New",
                onTapSeeAll: (){

                },
              ),
              specialCatagory(),



              

            ],
          ),
        ),
      ),

    );
  }
  SizedBox allCatagory() {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,index){
          return const CatagoryItemWidget() ;
        }, separatorBuilder: (_,__){
        return const SizedBox(
          height: 8,
        );
      }, itemCount: 8,

      ),
    );
  }
  SizedBox newCatagory() {
    return SizedBox(
              height: 210,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (context,index){
                  return ProductCardWidget() ;
                }, separatorBuilder: (_,__){
                return const SizedBox(
                  height: 8,
                );
              }, itemCount: 8,

              ),
            );
  }
  SizedBox specialCatagory() {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,index){
          return ProductCardWidget() ;
        }, separatorBuilder: (_,__){
        return const SizedBox(
          height: 8,
        );
      }, itemCount: 8,

      ),
    );
  }
  SizedBox popularCatagory() {
    return SizedBox(
      height: 210,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: false,
        itemBuilder: (context,index){
          return ProductCardWidget() ;
        }, separatorBuilder: (_,__){
        return const SizedBox(
          height: 8,
        );
      }, itemCount: 8,

      ),
    );
  }

  TextFormField get searchTextField {
    return TextFormField(
              decoration: InputDecoration(
                hintText: "Search...",
                filled: true,
                fillColor: Colors.grey.shade300,
                prefixIcon: const Icon(Icons.search,color: Colors.grey,),
                enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(16)
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(16)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(16)
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(16)
                )
              ),


            );
  }


  AppBar get appBar=> AppBar(
      automaticallyImplyLeading: false, // Remove the default back button
      title: Image.asset("assets/images/logos/logo_nav (1).png"),
      actions: [
        CircleIcon(
          onTap: (){},
          iconData: Icons.person,

        ),
        const SizedBox(
          width: 8,
        ),
        CircleIcon(
          onTap: (){},
          iconData: Icons.call,
        ),
        const SizedBox(
          width: 8,
        ),
        CircleIcon(
          onTap: (){},
          iconData: Icons.notifications_active_outlined,
        ),
        const SizedBox(
          width: 8,
        ),
      ],
    );
}










