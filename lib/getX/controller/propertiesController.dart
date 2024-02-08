
import 'package:get/get.dart';
import 'package:real_state_app/Data/Models/property_model.dart';
import 'package:real_state_app/Repository/propertyRepo.dart';
import 'package:real_state_app/WebServices/propertyService.dart';

import '../../Constans/strings.dart';
import '../../Views/homeScreen.dart';
import '../../tools/errorMessage.dart';
import '../../tools/popups.dart';

class PropertiesController extends GetxService {

  RxBool isEnter  = false.obs;
  RxBool isLoaded = false.obs;
  RxList categoryForSale = RxList.empty();
  RxList categoryForRent = RxList.empty();

  PropertyRepo propertyRepo = PropertyRepo(PropertyService());
  late List<PropertyModel> properties = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchData();
  }

  Future <bool> fetchData() async {
    await propertyRepo.getAllProperties().then((_properties) {
      isLoaded(true);
      properties = _properties;
    }
    );
    return true;
  }

  Future loadProprety() async {
    if (await fetchData() ==
        true) {
      categoryForSale.value = properties.where((property) => property.category == 'For sale').toList();
      categoryForRent.value = properties.where((property) => property.category == 'For rent').toList();
      if(categoryForSale.isNotEmpty){
        Get.to(homeScreen());
      }
    }
    else {
      statusCode = 0;
      message(statusCode);
      errorPopup(errorMessage);
    }
  }
}