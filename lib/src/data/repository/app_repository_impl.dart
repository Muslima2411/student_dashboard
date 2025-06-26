import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_repository.dart';

@immutable
class AppRepositoryImpl implements AppRepository {
  factory AppRepositoryImpl() => _impl;

  const AppRepositoryImpl._internal();

  static const AppRepositoryImpl _impl = AppRepositoryImpl._internal();
}
