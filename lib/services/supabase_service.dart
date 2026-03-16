import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {

  final supabase = Supabase.instance.client;

  Future<List> getData() async {
    final data = await supabase
        .from('kendaraan')
        .select()
        .order('id', ascending: true);

    return data;
  }

  Future insertData(Map data) async {
    await supabase.from('kendaraan').insert(data);
  }

  Future updateData(Map data, int id) async {
    await supabase
        .from('kendaraan')
        .update(data)
        .eq('id', id);
  }

  Future deleteData(int id) async {
    await supabase
        .from('kendaraan')
        .delete()
        .eq('id', id);
  }
}