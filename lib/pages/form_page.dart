import 'package:flutter/material.dart';
import '../services/supabase_service.dart';

class FormPage extends StatefulWidget {

  final Map? data;

  const FormPage({super.key, this.data});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {

  final service = SupabaseService();

  final platController = TextEditingController();
  final jenisController = TextEditingController();
  final jamController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.data != null) {

      platController.text = widget.data!['plat_nomor'];
      jenisController.text = widget.data!['jenis_kendaraan'];
      jamController.text = widget.data!['jam_masuk'];
    }
  }

  saveData() async {

    final data = {
      "plat_nomor": platController.text,
      "jenis_kendaraan": jenisController.text,
      "jam_masuk": jamController.text
    };

    if (widget.data == null) {

      await service.insertData(data);

    } else {

      await service.updateData(data, widget.data!['id']);
    }

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Kendaraan"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            TextField(
              controller: platController,
              decoration: const InputDecoration(
                labelText: "Plat Nomor",
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: jenisController,
              decoration: const InputDecoration(
                labelText: "Jenis Kendaraan",
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: jamController,
              decoration: const InputDecoration(
                labelText: "Jam Masuk",
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: saveData,
              child: const Text("Simpan"),
            )

          ],
        ),
      ),
    );
  }
}