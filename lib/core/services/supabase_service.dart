import 'package:my_portfolio/core/services/consts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static Future<void> init() async =>
      await Supabase.initialize(url: url, anonKey: key);
}
