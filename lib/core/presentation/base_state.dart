import 'package:flutter/material.dart';

@immutable
abstract class BaseState {}

class IsLoading extends BaseState {}

class IsLoaded extends BaseState {}

class IsError extends BaseState {}
