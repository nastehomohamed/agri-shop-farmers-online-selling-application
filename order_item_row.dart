import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries/model/product_detail_model.dart';

class OrderItemRow extends StatelessWidget {
  final bool showReviewButton;
  final ProductDetailModel pObj;
  final VoidCallback? onWriteReviewPressed;

  const OrderItemRow({
    super.key,
    required this.pObj,
    this.showReviewButton = false,
    this.onWriteReviewPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 2)],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CachedNetworkImage(
                  imageUrl: pObj.image ?? "",
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                  width: 80,
                  height: 65,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        pObj.name ?? "",
                        style: TextStyle(
                          color: Colors.black, // Replace with your color
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "${pObj.unitValue ?? 0}${pObj.unitName ?? ''} Price",
                        style: TextStyle(
                          color: Colors.grey, // Replace with your color
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "QTY :",
                            style: TextStyle(
                              color: Colors.black, // Replace with your color
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Text(
                            (pObj.qty ?? 0).toString(),
                            style: TextStyle(
                              color: Colors.black, // Replace with your color
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "×",
                            style: TextStyle(
                              color: Colors.black, // Replace with your color
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "\$${(pObj.itemPrice ?? 0).toStringAsFixed(2)}",
                            style: TextStyle(
                              color: Colors.black, // Replace with your color
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            "\$${(pObj.totalPrice ?? 0).toStringAsFixed(2)}",
                            style: TextStyle(
                              color: Colors.black, // Replace with your color
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            if (showReviewButton)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: ElevatedButton(
                  onPressed: onWriteReviewPressed,
                  child: const Text("Write A Review"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
