import 'package:demo2/model/product_model.dart';
import 'package:demo2/view/detail_screen.dart';
import 'package:flutter/material.dart';

Widget productItem(BuildContext context, ProductModel model) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailScreen(
            model: model,
          ),
        ),
      );
    },
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              SizedBox(
                height: 180, // Adjust the height of the image
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    model.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                child: GestureDetector(
                  onTap: () {
                    print("favorite");
                  },
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: (model.favorite == false)
                            ? const Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                                size: 20,
                              )
                            : const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 20,
                              ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            model.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          // Make the container with a height of 50 rounded
          Container(
            height: 57,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                model.description.toLowerCase(),
                style: const TextStyle(
                  fontSize: 15,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Container(
            height: 20,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '\$${model.price.toStringAsFixed(2)}', // Format double to string
                style: const TextStyle(
                  fontSize: 20,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
