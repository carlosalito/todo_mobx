import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

final getIt = GetIt.instance;
@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> init() async {
  // aqui vc adiciona suas inicializações de deps
  $initGetIt(getIt);
}
