import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';

class DataFetcher {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String apiUrl;

  DataFetcher({required this.apiUrl});

  Future<void> fetchAndWriteData() async {
    try {
      // Fetch data from the API
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final apiResponse = response.body;

        // Write data to Firestore
        final docRef = _firestore.collection("facts").doc("wVxqRwCoIVoDsMqWGqHeHe");
        await docRef.set({"current": apiResponse});
      } else {
        print("API Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
