import 'package:flutter/material.dart';
import 'package:learn_cubit/core/routing/app_router.dart';
import 'package:learn_cubit/doc_app.dart';

void main() {
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
