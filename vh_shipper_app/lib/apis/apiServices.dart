import 'dart:async';
import 'dart:convert' as convert;
import 'package:vh_shipper_app/models/DriverModel.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const baseURL = 'https://deliveryvhgp-webapi.azurewebsites.net/api/v1';
  static const SHIP = "shipper-management";

//https://deliveryvhgp-webapi.azurewebsites.net/api/v1/shipper-management/shippers/ByShipId?id=1
  static Future<dynamic> getDriver(
    String id,
  ) async {
    var driverModel = Completer<DriverModel>();
    var body;
    try {
      var response = await http.get(
        Uri.parse('${baseURL}/${SHIP}/${"shippers"}/ByShipId?id=${id}'),
      );
      body = convert.jsonDecode(response.body);
      driverModel.complete(DriverModel.fromJson(body['data']));
    } catch (_) {
      driverModel.complete(DriverModel.fromJson(body));
    }
    return driverModel.future;
  }

  //https://deliveryvhgp-webapi.azurewebsites.net/api/v1/shipper-management/shippers/1
  static Future<dynamic> putDriver(DriverModel store, String id) async {
    //12c9cd48-8cb7-4145-8fd9-323e20b329dd
    try {
      Map<String, String> headers = {"Content-type": "application/json"};
      var response = await http.put(
          Uri.parse('${baseURL}/${SHIP}/${"shippers"}/${id}?imgUpdate=false'),
          headers: headers,
          body: convert.jsonEncode({
            "id": store.id,
            "fullName": store.fullName,
            "phone": store.phone,
            "email": store.email,
            "image": store.image,
            "deliveryTeam": store.deliveryTeam,
            "password": store.password,
            "vehicleType": store.vehicleType,
            "licensePlates": store.licensePlates,
            "colour": store.colour
          }));

      if (response.statusCode == 200) {
        var body;
        print("ok ne");
        Completer<DriverModel> store = Completer<DriverModel>();
        body = convert.jsonDecode(response.body);
        store.complete(DriverModel.fromJson(body));

        return store.future;
      } else if (response.statusCode == 404 || response.statusCode == 409) {
        return null;
      }
    } catch (e) {
      print('Error with status code: ${e}');
    }
  }
}
