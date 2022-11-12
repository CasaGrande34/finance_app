import 'package:flutter/material.dart';

class ListViewDataTable extends StatefulWidget {
  
  const ListViewDataTable({Key? key}) : super(key: key);

  @override
  State<ListViewDataTable> createState() => _ListViewDataTableState();
}

class _ListViewDataTableState extends State<ListViewDataTable> {
  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return Container(
      
      height: h,
      width: w,
      color: Colors.red,
      child: ListView.builder(
        
        itemCount: 3,
        itemBuilder: (context, index) {
          
        }),
    );
  }
}