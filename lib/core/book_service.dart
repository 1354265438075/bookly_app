import 'package:book_app/features/book_home/data/models/books.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
class book_service{
  final Dio dio=Dio();
  book_service();
  Future<List<Books>> getdata()async{
    Response response=await dio.get("https://www.googleapis.com/books/v1/volumes?Filtering=free-ebooks&Sorting=newest%20&q=computer%20science");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic>items=jsonData["items"];
    List<Books>item_list=[];
    for(var i in items){
      item_list.add(Books.fromJson(i));
      print("$item_list[0]");
    }

    return item_list;

  }
}