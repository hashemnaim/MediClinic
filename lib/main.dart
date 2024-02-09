import 'package:flutter/material.dart';
import 'package:learn_cubit/core/di/dependency_injection.dart';
import 'package:learn_cubit/core/routing/app_router.dart';
import 'package:learn_cubit/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
