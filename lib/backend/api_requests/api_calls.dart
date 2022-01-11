import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetRestaurantCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getRestaurant',
      apiUrl:
          'https://alphameal-test.azurewebsites.net/API/v1/customer/home_mostpop_justopen.php',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      bodyType: BodyType.NONE,
      returnBody: true,
    );
  }
}
