import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/core/injection/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependancies() async {
  getIt.init();
}
