import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pet_medical/models/pets.dart';

class DataRepository {
  // 1
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('pets');
  // 2
  Stream<QuerySnapshot> getStream() {
    return collection.snapshots();
  }

  // 3
  Future<DocumentReference> addPet(Pet pet) {
    return collection.add(pet.toJson());
  }

  // 4
  updatePet(Pet pet) async {
    await collection.doc(pet.reference.id).update(pet.toJson());
  }
}
