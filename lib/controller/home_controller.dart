import 'package:assignment/Config/api_endpoint.dart';
import 'package:assignment/manager/api_manager.dart';
import 'package:assignment/model/home_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  RxBool isLoading = false.obs;
  List<homedata> data = [];
  Future<void> getHomeData() async {
    isLoading.value = true;
    update();
    var hdata = {};
    var resp;
    try {
      resp =
          await APIProvider().post(AppConfig.home, hdata, false, Get.context);
    } catch (e) {
      // Get.log('[MerchantController.becomMerchant] called $e');
    }
    isLoading.value = false;
    update();
    // print(resp?['data']);
    
    // print(resp['posts']);
    // print("here it is");
    if (resp != null && resp['status'] == true) {
   data.addAll(resp['posts']
            .map<homedata>((e) => homedata.fromJson(e)));
            print(data.first.toJson());
    } else if (resp != null && resp['is_success'] == false) {
      print("failed");
      print(resp);
     
    } else {
     
    }
  }
}