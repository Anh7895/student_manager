import 'package:flutter/material.dart';
import 'package:student_manager/screen/product_item.dart';

class StudentListScreenUpdate extends StatefulWidget {
  final ProductItem? item;
  const StudentListScreenUpdate({Key? key, this.item}) : super(key: key);

  @override
  State<StudentListScreenUpdate> createState() => _StudentListScreenUpdateState();
}

class _StudentListScreenUpdateState extends State<StudentListScreenUpdate> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> _initValues = {
    'id': -1,
    'name': '',
    'diemToan': '',
    'diemHoa': '',
    'diemLy': '',
  };
  void initState() {
    if (widget.item != null) {
      initValues(widget.item);
    }
    super.initState();
  }


  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)!.settings.arguments as ProductItem?;
    if (args != null) {
      initValues(args);
    }
    super.didChangeDependencies();
  }

  void initValues(ProductItem? item) {
    _initValues['id'] = item?.id;
    _initValues['name'] = item?.name;
    _initValues['diemToan'] = item?.diemToan;
    _initValues['diemLy'] = item?.diemLy;
    _initValues['diemHoa'] = item?.diemHoa;
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sửa thông tin'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              // Save product
              _saveForm();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  TextFormField(
                    initialValue: _initValues['name'],
                    decoration: const InputDecoration(
                      labelText: 'Họ và Tên',
                    ),
                    validator: (String? value) {
                      if (value?.isEmpty == true) {
                        return 'Title is required';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      _initValues['name'] = value ?? '';
                    },
                  ),
                  TextFormField(
                      initialValue: _initValues['diemToan'],
                      decoration: const InputDecoration(
                        labelText: 'Điểm Toán',
                      ),
                      validator: (value) {
                        if (value?.isEmpty == true) {
                          return 'Please enter a diemToan';
                        }
                        if (double.tryParse(value!) == null) {
                          return 'Please enter a valid number';
                        }
                        if (double.parse(value) <= 0) {
                          return 'Please enter a number greater than zero';
                        }
                        return null;
                      },
                      onSaved: (String? value) {
                        _initValues['diemToan'] = value ?? '';
                      }),
                  TextFormField(
                    initialValue: _initValues['diemLy'],
                    decoration: const InputDecoration(
                      labelText: 'Điểm Lý',
                    ),
                    validator: (value) => (value?.isEmpty == true)
                        ? 'Please enter a diemLy'
                        : null,
                    onSaved: (String? value) {
                      _initValues['diemLy'] = value ?? '';
                    },
                  ),
                  TextFormField(
                    initialValue: _initValues['diemHoa'],
                    decoration: const InputDecoration(
                      labelText: ' Điểm Hóa',
                    ),
                    validator: (value) => (value?.isEmpty == true)
                        ? 'Please enter a diemHoa'
                        : null,
                    onSaved: (String? value) {
                      _initValues['diemHoa'] = value ?? '';
                    },
                  ),
                  const SizedBox(height: 10),

                ]),
              ))),
    );
  }
  void _saveForm() {
    if (_formKey.currentState?.validate() == true) {
      _formKey.currentState?.save();
      Navigator.pop(
          context,
          ProductItem(
              id: _initValues['id'].toString(),
              name: _initValues['name'],
              diemToan:_initValues['diemToan'] ,
              diemLy: _initValues['diemLy'],
              diemHoa: _initValues['diemHoa']));
    }
  }
}
