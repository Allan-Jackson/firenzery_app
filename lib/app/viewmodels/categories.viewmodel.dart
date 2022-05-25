import 'dart:convert';

import 'package:firenzery/app/interfaces/categories.interface.dart';
import 'package:firenzery/app/models/category.model.dart';
import 'package:flutter/material.dart';

class CategoriesViewModel {
  ICategories service;

  CategoriesViewModel(this.service);

  CategoryModel model = CategoryModel();

  getAllCategories() async {
    try {
      var response = await service.getAllCategories();
      List categories =
          response.data.map((data) => CategoryModel.fromJson(data)).toList();
      return categories;
    } catch (error) {
      return error;
    }
  }
}