import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StorageMethods {
  final String cloudinaryUrl = "https://api.cloudinary.com/v1_1/dj3g7mtyr/image/upload";
  final String cloudinaryPreset = "holbegram";

  Future<String> uploadImageToStorage(
    bool isPost,
    String childName,
    Uint8List file,
  ) async {
    try {
      String uniqueId = const Uuid().v1();
      var uri = Uri.parse(cloudinaryUrl);
      var request = http.MultipartRequest('POST', uri);

      // Champs obligatoires pour l'Unsigned Upload
      request.fields['upload_preset'] = cloudinaryPreset;
      request.fields['folder'] = childName;

      // CORRECTION : Pour l'unsigned, si ce n'est pas un post, 
      // ne pas envoyer du tout le champ 'public_id' plutôt que de l'envoyer vide.
      if (isPost) {
        request.fields['public_id'] = uniqueId;
      }

      var multipartFile = http.MultipartFile.fromBytes(
        'file',
        file,
        filename: '$uniqueId.jpg',
      );
      request.files.add(multipartFile);

      var response = await request.send();
      
      // On récupère la réponse immédiatement pour le debug
      var responseData = await response.stream.toBytes();
      var responseString = String.fromCharCodes(responseData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        var jsonResponse = jsonDecode(responseString);
        return jsonResponse['secure_url'];
      } else {
        // AFFICHAGE DE L'ERREUR DANS LA CONSOLE
        print("--- CLOUDINARY ERROR ---");
        print("Status Code: ${response.statusCode}");
        print("Response Body: $responseString");
        print("------------------------");
        throw Exception('Cloudinary upload failed: $responseString');
      }
    } catch (e) {
      print("Error during upload: $e");
      rethrow;
    }
  }
}