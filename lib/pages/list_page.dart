import 'package:flutter/material.dart';
import '../services/supabase_service.dart';
import 'form_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  final service = SupabaseService();
  List data = [];

  getData() async {
    data = await service.getData();
    setState(() {});
  }

  deleteData(int id) async {
    await service.deleteData(id);
    getData();
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Kendaraan"),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {

          await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const FormPage(),
            ),
          );

          getData();
        },
      ),

      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {

          final item = data[index];

          return ListTile(
            title: Text(item['plat_nomor']),
            subtitle: Text(
              "${item['jenis_kendaraan']} - ${item['jam_masuk']}",
            ),

            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [

                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () async {

                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => FormPage(data: item),
                      ),
                    );

                    getData();
                  },
                ),

                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    deleteData(item['id']);
                  },
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}