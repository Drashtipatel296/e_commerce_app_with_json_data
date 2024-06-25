import 'package:e_commerce_app_with_json_data/model/data_model.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen(
      {super.key, required this.productIndex, required this.dataModel});

  int productIndex;
  DataModel dataModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 380,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff445A4B),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image:
                      NetworkImage(dataModel.products![productIndex].thumbnail),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 20, top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.favorite_border_outlined),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 40,
                      decoration: const BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: const Icon(Icons.share),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: Row(
                children: [
                  Text(
                    dataModel.products![productIndex].title,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.star,color: Colors.yellow,),
                  Text(
                    dataModel.products![productIndex].rating.toString(),
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
              child: Text(
                'Price :- \$ ${dataModel.products![productIndex].price}',
                style: const TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10),
              child: Text(
                'Description',
                style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
              child: Text(
                dataModel.products![productIndex].description,
                style: TextStyle(fontSize: 16,color: Colors.grey.shade600),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10),
              child: Divider(),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20,right: 20,top: 10),
              child: Text(
                'Product Details',
                style: TextStyle(fontSize: 23,color: Colors.black,fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Text(
                    'Category :-',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    dataModel.products![productIndex].category,
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Text(
                    'Discount :-',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    dataModel.products![productIndex].discountPercentage.toString(),
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Text(
                    'Stock :-',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    dataModel.products![productIndex].stock.toString(),
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Text(
                    'Brand :-',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    dataModel.products![productIndex].brand.toString(),
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Text(
                    'Weight :-',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    dataModel.products![productIndex].weight.toString(),
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Text(
                    'Height :-',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    dataModel.products![productIndex].dimensions.height.toString(),
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Text(
                    'Width :-',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    dataModel.products![productIndex].dimensions.width.toString(),
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Text(
                    'Warranty :-',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    dataModel.products![productIndex].warrantyInformation.toString(),
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Text(
                    'Avaibility Status :-',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    dataModel.products![productIndex].availabilityStatus.toString(),
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                  child: Text(
                    'Return Policy :-',
                    style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    dataModel.products![productIndex].returnPolicy.toString(),
                    style: const TextStyle(fontSize: 20,color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                height: 50,
                width: 280,
                decoration: BoxDecoration(
                  color: const Color(0xff445A4B),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0,right: 20),
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey, width: 0.5),
                  ),
                  child: const Icon(Icons.shopping_bag_sharp),),
            ),
          ],
        ),
      ),
    );
  }
}
