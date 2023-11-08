import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "nome_sobrenome" field.
  String? _nomeSobrenome;
  String get nomeSobrenome => _nomeSobrenome ?? '';
  bool hasNomeSobrenome() => _nomeSobrenome != null;

  // "nome_do_pet" field.
  String? _nomeDoPet;
  String get nomeDoPet => _nomeDoPet ?? '';
  bool hasNomeDoPet() => _nomeDoPet != null;

  // "id_microchip" field.
  int? _idMicrochip;
  int get idMicrochip => _idMicrochip ?? 0;
  bool hasIdMicrochip() => _idMicrochip != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "senha" field.
  String? _senha;
  String get senha => _senha ?? '';
  bool hasSenha() => _senha != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _nomeSobrenome = snapshotData['nome_sobrenome'] as String?;
    _nomeDoPet = snapshotData['nome_do_pet'] as String?;
    _idMicrochip = castToType<int>(snapshotData['id_microchip']);
    _descricao = snapshotData['descricao'] as String?;
    _senha = snapshotData['senha'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? nomeSobrenome,
  String? nomeDoPet,
  int? idMicrochip,
  String? descricao,
  String? senha,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'nome_sobrenome': nomeSobrenome,
      'nome_do_pet': nomeDoPet,
      'id_microchip': idMicrochip,
      'descricao': descricao,
      'senha': senha,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.nomeSobrenome == e2?.nomeSobrenome &&
        e1?.nomeDoPet == e2?.nomeDoPet &&
        e1?.idMicrochip == e2?.idMicrochip &&
        e1?.descricao == e2?.descricao &&
        e1?.senha == e2?.senha &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.nomeSobrenome,
        e?.nomeDoPet,
        e?.idMicrochip,
        e?.descricao,
        e?.senha,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
