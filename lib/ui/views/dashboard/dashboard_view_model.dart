import 'package:drive_time/core/models/drive_info.dart';
import 'package:drive_time/core/services/dialog_service/dialog_service.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  final DialogService _dialogService;

  DashboardViewModel(this._dialogService);

  DriveInfo _info;

  DriveInfo get info => _info;

  set info(DriveInfo info) {
    _info = info;
    notifyListeners();
  }

  onChangeVehicle(value) {}

  void onClickStart() {
    _dialogService.startDriving().then((value) {
      info = value;
    });
  }

  void onClickWork() {}

  void onClickRest() {}

  void onClickEnd() {}
}
