import 'package:http/http.dart' as http;
import 'package:linktree_clone/models/linktree_data.model.dart';
import 'package:linktree_clone/utils/constants.utils.dart';

class Services {

  static Future<List<LinktreeData>> getLinkTreeData() async {
    try {
      final response = await http.get(Uri.parse(LINKTREE_DATA_URL));
      if (200 == response.statusCode) {
        final List<LinktreeData> linktreeData = linktreedataFromJson(response.body);
        return linktreeData;
      } else {
        print("something went wrong");
        return List<LinktreeData>.empty();
      }
    } catch (e) {
      print(e);
      return List<LinktreeData>.empty();
    }
  }
}

