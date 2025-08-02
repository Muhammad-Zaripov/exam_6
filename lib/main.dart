import 'package:flutter/material.dart';
import 'app/main_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://qmtwlwvfizqczvknnvcl.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFtdHdsd3ZmaXpxY3p2a25udmNsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTQxNTE3NTMsImV4cCI6MjA2OTcyNzc1M30.TT4HIVCP6z_FkMjsukW0qPaFgjLA9acNIGk7CTKwTyc',
  );
  runApp(MainApp());
}
