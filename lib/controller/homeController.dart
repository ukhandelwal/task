import 'package:get/get.dart';
import 'package:sunarc/model/HomeTodayAppModel.dart';

class HomeController extends GetxController {
  var todayApp = <HomeTodayAppModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    addAppointment();
  }

  void addAppointment() {
    // HomeTodayAppModel model = HomeTodayAppModel("", "", "", "", "", "","");
    //
    // todayApp.add(HomeTodayAppModel("023", "", "", "", "", "",""));
    // todayApp.add();
  }
}
