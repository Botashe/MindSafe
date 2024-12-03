import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiarioPersonalRecord extends FirestoreRecord {
  DiarioPersonalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  // "estado_emocional" field.
  String? _estadoEmocional;
  String get estadoEmocional => _estadoEmocional ?? '';
  bool hasEstadoEmocional() => _estadoEmocional != null;

  // "fechahora" field.
  DateTime? _fechahora;
  DateTime? get fechahora => _fechahora;
  bool hasFechahora() => _fechahora != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _comentario = snapshotData['comentario'] as String?;
    _estadoEmocional = snapshotData['estado_emocional'] as String?;
    _fechahora = snapshotData['fechahora'] as DateTime?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('diario_personal');

  static Stream<DiarioPersonalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiarioPersonalRecord.fromSnapshot(s));

  static Future<DiarioPersonalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiarioPersonalRecord.fromSnapshot(s));

  static DiarioPersonalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiarioPersonalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiarioPersonalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiarioPersonalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiarioPersonalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiarioPersonalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiarioPersonalRecordData({
  String? comentario,
  String? estadoEmocional,
  DateTime? fechahora,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'comentario': comentario,
      'estado_emocional': estadoEmocional,
      'fechahora': fechahora,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiarioPersonalRecordDocumentEquality
    implements Equality<DiarioPersonalRecord> {
  const DiarioPersonalRecordDocumentEquality();

  @override
  bool equals(DiarioPersonalRecord? e1, DiarioPersonalRecord? e2) {
    return e1?.comentario == e2?.comentario &&
        e1?.estadoEmocional == e2?.estadoEmocional &&
        e1?.fechahora == e2?.fechahora &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(DiarioPersonalRecord? e) => const ListEquality()
      .hash([e?.comentario, e?.estadoEmocional, e?.fechahora, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is DiarioPersonalRecord;
}
