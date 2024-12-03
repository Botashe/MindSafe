import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RespuestasForoRecord extends FirestoreRecord {
  RespuestasForoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "contenido" field.
  String? _contenido;
  String get contenido => _contenido ?? '';
  bool hasContenido() => _contenido != null;

  // "fechahora" field.
  DateTime? _fechahora;
  DateTime? get fechahora => _fechahora;
  bool hasFechahora() => _fechahora != null;

  // "foro_id" field.
  DocumentReference? _foroId;
  DocumentReference? get foroId => _foroId;
  bool hasForoId() => _foroId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _contenido = snapshotData['contenido'] as String?;
    _fechahora = snapshotData['fechahora'] as DateTime?;
    _foroId = snapshotData['foro_id'] as DocumentReference?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('respuestas_foro');

  static Stream<RespuestasForoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RespuestasForoRecord.fromSnapshot(s));

  static Future<RespuestasForoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RespuestasForoRecord.fromSnapshot(s));

  static RespuestasForoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RespuestasForoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RespuestasForoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RespuestasForoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RespuestasForoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RespuestasForoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRespuestasForoRecordData({
  String? contenido,
  DateTime? fechahora,
  DocumentReference? foroId,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'contenido': contenido,
      'fechahora': fechahora,
      'foro_id': foroId,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class RespuestasForoRecordDocumentEquality
    implements Equality<RespuestasForoRecord> {
  const RespuestasForoRecordDocumentEquality();

  @override
  bool equals(RespuestasForoRecord? e1, RespuestasForoRecord? e2) {
    return e1?.contenido == e2?.contenido &&
        e1?.fechahora == e2?.fechahora &&
        e1?.foroId == e2?.foroId &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(RespuestasForoRecord? e) => const ListEquality()
      .hash([e?.contenido, e?.fechahora, e?.foroId, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is RespuestasForoRecord;
}
