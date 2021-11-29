import 'dart:convert';

import 'package:faturas_dojo_112021/album.dart';
import 'package:faturas_dojo_112021/album_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  group('fetchAlbum', () {
    test('returns an Album if the http call completes successfully', () async {
      final client = MockClient((request) async {
        final mapJson = {
          "userId": 1,
          "id": 1,
          "title": "quidem molestiae enim"
        };
        return http.Response(json.encode(mapJson), 200);
      });

      var service = AlbumService();
      expect(await service.fetchAlbum(client, "1"), isA<Album>());
    });

    test('throws an exception if the http call completes with an error',
        () async {
      final client = MockClient((request) async {
        return http.Response("", 500);
      });

      var service = AlbumService();
      expect(
          () async => await service.fetchAlbum(client, "1"), throwsException);
    });
  });
}
