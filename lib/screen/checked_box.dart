import 'package:flutter/material.dart';

class CheckedBox extends StatefulWidget {
  const CheckedBox({Key? key}) : super(key: key);

  @override
  State<CheckedBox> createState() => _CheckedBoxState();
}

class _CheckedBoxState extends State<CheckedBox> {
  final allChecked  = CheckBoxModal(title: " all Checked");
  final chechBoxList = [
    CheckBoxModal(title: "1"),
    CheckBoxModal(title: "2"),
    CheckBoxModal(title: "3"),
    CheckBoxModal(title: "4"),
  ];
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(title:  Text('example')),
      body: ListView(
        children: [
          ListTile(
            onTap: () =>  onAllclicked(allChecked),
            leading: Checkbox(

              value: allChecked.value,

              onChanged: (value) =>  onAllclicked(allChecked),
            ),
            title: Text(allChecked.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          Divider(),
          ...chechBoxList.map((item) => ListTile(
      onTap: () =>  onItemclicked(item),
                leading: Checkbox(
                value: item.value,
                onChanged: (value) =>  onItemclicked(item),
    ),
    title: Text(item.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
    ),).toList(),
          Text('${count}'),
        ],
      ),
    );
  }

  onAllclicked(CheckBoxModal ckbItem){
    setState(() {
      ckbItem.value = !ckbItem.value;

    });
  }
  onItemclicked(CheckBoxModal ckbItem){
    setState(() {
      ckbItem.value = !ckbItem.value;
      if(ckbItem.value){
        count ++;
      }else {
        count --;
      }
    });
  }
}

class CheckBoxModal{
  String title ;
  bool value ;
  CheckBoxModal( { required this.title,  this.value = false});
}
