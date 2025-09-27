import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

///This is the instance of our service locator [GetIt].
final GetIt serviceLocator = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
void initDependencyInjection(String env) {
  serviceLocator.init(environment: env);
}
