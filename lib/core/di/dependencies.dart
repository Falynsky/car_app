import 'package:cars_app/core/di/dependencies.config.dart';
import 'package:injecteo/injecteo.dart';

final ServiceLocator getIt = GetItServiceLocator.instance;

@InjecteoConfig(preferRelativeImports: false)
Future<void> configureDependencies(String env) async {
  return $injecteoConfig(getIt, environment: env);
}
