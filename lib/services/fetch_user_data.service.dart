import 'package:http/http.dart' as http;
import 'package:linktree_clone/entities/user_data.entity.dart';

class Services {
  static const String url =
      'https://raw.githubusercontent.com/viveeeeeek/swadesh/master/user.data.json?token=APMQCH2VIKVZXTCLP7XDUXDBOKBPS';

  static Future<List<UserData>> getUserData() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (200 == response.statusCode) {
        final List<UserData> usersData = userdataFromJson(response.body);
        return usersData;
      } else {
        print("something went wrong");
        return List<UserData>.empty();
      }
    } catch (e) {
      print(e);
      return List<UserData>.empty();
    }
  }
}
