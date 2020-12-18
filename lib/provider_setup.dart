import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'core/services/dialog_service/dialog_service.dart';
import 'core/services/general_service.dart';

List<SingleChildWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumableProviders,
];

List<SingleChildWidget> independentServices = [
  Provider.value(value: DialogService()),
];

List<SingleChildWidget> dependentServices = [
  ProxyProvider<DialogService, GeneralService>(
    update: (context, dialog, service) => GeneralService(dialog),
  ),
];

List<SingleChildWidget> uiConsumableProviders = [];
