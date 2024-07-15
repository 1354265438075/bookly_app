import 'package:book_app/core/book_service.dart';
import 'package:book_app/features/book_home/data/models/books.dart';
import 'package:book_app/features/book_home/presentation/views/Book_details_view.dart';
import 'package:book_app/features/book_home/presentation/widgets/book_tile.dart';
import 'package:flutter/material.dart';
class Book_list_view extends StatefulWidget {
  @override
  State<Book_list_view> createState() => _Book_list_viewState();
}

class _Book_list_viewState extends State<Book_list_view> {
  List<Books> data=[];

  @override
  void initState(){
    super.initState();
    getdata();

  }

  Future<void> getdata() async {
    data=await book_service().getdata();
    setState(() {


    });
  }

  @override
  Widget build(BuildContext context) {
    print("ali");

    return SliverList(delegate: SliverChildBuilderDelegate((context,index){
      return InkWell(child: Book_tile(data[index]),onTap: (){
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (context) => Book_details_view(
      data![index],
      // selectedIndex: index,
      ),
      ),
      );
      });



    },childCount: data.length));
  }
}
