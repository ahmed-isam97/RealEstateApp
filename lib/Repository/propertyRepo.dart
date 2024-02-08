import 'package:real_state_app/Data/Models/property_model.dart';
import 'package:real_state_app/WebServices/propertyService.dart';

class PropertyRepo {

  late PropertyService propertyService;

  PropertyRepo(this.propertyService);

  Future<List<PropertyModel>> getAllProperties() async {
    final properties = await propertyService.fetchProperty();
    return properties.map((_properties) => PropertyModel.fromJson(_properties)).toList();
  }
}