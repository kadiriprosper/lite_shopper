import 'dart:async';
import 'dart:convert';

import 'package:lite_shopper/model/product_model.dart';
import 'package:http/http.dart' as http;

String timbuUrl =
    'https://api.timbu.cloud/products?organization_id=$timbuOrgID&Appid=$timbuAppID&Apikey=$timbuAPIkey';

String timbuAppID = 'FTUSP42TP8J4NAF';
String timbuAPIkey = '6ecc1e8e12e246b08a29a67521442b8d20240707003708891882';
String timbuOrgID = '75bb9129c0b64efdbf148d4a28d21191';

class ProductController {
  static Future<dynamic> getProducts() async {
    List<ProductModel>  allProducts = [];
    try {
      http.Response response = await http.get(
        Uri.parse(timbuUrl),
      );
      print(jsonDecode(response.body)['items'][0]);
      if (response.statusCode == 200) {
        final items = jsonDecode(response.body)['items'];
        for (int i = 0; i < items.length; i++){
          allProducts.add(
            ProductModel.fromMap(items[i]),
          );
        }
        for (ProductModel product in allProducts) {
          print(product);
        }
        return allProducts;
      }

      return [];
    } on http.ClientException catch (e) {
      print(e);
      return Error();
    } catch (e) {
      print(e);
      return Error();
    }
  }
}
