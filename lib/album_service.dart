import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:faturas_dojo_112021/album.dart';

class AlbumService {
  Future<Album> fetchAlbum(http.Client client, String id) async {

    final response = await client
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'));

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Falha ao carregar o album.');
    }
  }
}