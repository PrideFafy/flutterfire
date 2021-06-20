import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pet_medical/models/pets.dart';
import 'package:pet_medical/repository/dataRepository.dart';
import 'package:test/test.dart';

void main() {
  group('Testing Vaccinations', () async {
    DataRepository repository = DataRepository();
    final CollectionReference collection =
        FirebaseFirestore.instance.collection('pets');

    test('should return data when the call to remote source is successful.',
        () async {});
  });
}
