import 'package:app_2/core/routes/routes_name.dart';
import 'package:app_2/pages/proudects.dart';
import 'package:app_2/pages/single_product.dart';
import 'package:app_2/widget/prodect_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> generat(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.Proudects:
        return MaterialPageRoute(builder: (_) {
          return Proudects();
        });
      case RoutesName.SingleProduct:
        return MaterialPageRoute(builder: (_) {
          return  const SingleProduct ();
        });
        case RoutesName.ProductsGrid:
        return MaterialPageRoute(builder: (_) {
          return   ProductsGrid();
        });
        
      default:
        throw Exception('ont found');
    }
  }
}
