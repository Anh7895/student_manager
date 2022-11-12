import 'package:flutter/material.dart';
import 'package:student_manager/screen/student_list_screen_ulis_update.dart';
import 'package:student_manager/screen/product_item.dart';

class StudentListScreen extends StatefulWidget {
  const StudentListScreen({Key? key}) : super(key: key);

  @override
  State<StudentListScreen> createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {
  final List<ProductItem> items = <ProductItem>[
    ProductItem(
        id: '1',
        name: 'Tạ Thị Hồng Hạnh',
        diemToan: "10",
        diemHoa: "9",
        diemLy: " 7",
        ),
    ProductItem(
      id: '1',
      name: 'Tạ Thị Hồng Hạnh',
      diemToan: "10",
      diemHoa: "9",
      diemLy: " 7",
    ),
    ProductItem(
      id: '1',
      name: 'Tạ Thị Hồng Hạnh',
      diemToan: "10",
      diemHoa: "9",
      diemLy: " 7",
    ),
    ProductItem(
      id: '1',
      name: 'Tạ Thị Hồng Hạnh',
      diemToan: "10",
      diemHoa: "9",
      diemLy: " 7",
    ),
    ProductItem(
      id: '1',
      name: 'Tạ Thị Hồng Hạnh',
      diemToan: "10",
      diemHoa: "9",
      diemLy: " 7",
    ),
    ProductItem(
      id: '1',
      name: 'Tạ Thị Hồng Hạnh',
      diemToan: "10",
      diemHoa: "9",
      diemLy: " 7",
    ),
    ProductItem(
      id: '1',
      name: 'Tạ Thị Hồng Hạnh',
      diemToan: "10",
      diemHoa: "9",
      diemLy: " 7",
    ),
    ProductItem(
      id: '1',
      name: 'Tạ Thị Hồng Hạnh',
      diemToan: "10",
      diemHoa: "9",
      diemLy: " 7",

    ),
    ProductItem(
      id: '1',
      name: 'Tạ Thị Hồng Hạnh',
      diemToan: "10",
      diemHoa: "9",
      diemLy: " 7",
    ),
    ProductItem(
      id: '1',
      name: 'Tạ Thị Hồng Hạnh',
      diemToan: "10",
      diemHoa: "9",
      diemLy: " 7",
    ),
    ProductItem(
      id: '1',
      name: 'Tạ Thị Hồng Hạnh',
      diemToan: "10",
      diemHoa: "9",
      diemLy: " 7",
    ),
    ProductItem(
        id: '2',
        name: 'TQA',
        diemToan: "10",
        diemHoa: "9",
        diemLy: " 7",),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh sách sinh viên",),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () async{
            final result = await Navigator.push(
                context, MaterialPageRoute(builder: (context) => StudentListScreenUpdate()));
            setState(() {
              if(result !=null){
                items.add(result as ProductItem);
                items.sort((a, b) => b.name.compareTo(a.name));
              }
            });
          }, icon: Icon(Icons.edit,), ),
        ],
      ),
     body: ListView(

    children: [
         DataTable(columns: _createColumns(), rows: _createRows()),
    ],),
    );
  }


  List<DataColumn> _createColumns() {
    return [
      DataColumn(label: Container(
        width: 30,
        child: Text('Tên',style: TextStyle(fontSize: 12), ),)),
      DataColumn(label: Container(
        width: 30,
        child: Text('Toán',style: TextStyle(fontSize: 12), ),)),
      DataColumn(label: Container(
        width: 30,
        child: Text('Lý',style: TextStyle(fontSize: 12), ),)),
      DataColumn(label: Container(
        width: 30,
        child: Text('Hóa',style: TextStyle(fontSize: 12), ),)),
    ];
  }

  List<DataRow> _createRows() {
    return items
        .map((item) => DataRow(cells: [
      DataCell(
          Container(
            width: 80,
            child: Text(item.name.toString(), style: TextStyle(fontSize: 10),),
          ),
      ),
      DataCell(
        Container(
          width: 15,
          child: Text(item.diemToan.toString(), style: TextStyle(fontSize: 10),),
        ),
      ),DataCell(
        Container(
          width: 15,
          child: Text(item.diemLy.toString(), style: TextStyle(fontSize: 10),),
        ),
      ),DataCell(
        Container(
          width: 15,
          child: Text(item.diemHoa.toString(), style: TextStyle(fontSize: 10),),
        ),
      ),

    ]),).toList();
  }

}
