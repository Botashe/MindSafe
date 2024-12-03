import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmergenciasRecord extends FirestoreRecord {
  EmergenciasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "fechahora" field.
  DateTime? _fechahora;
  DateTime? get fechahora => _fechahora;
  bool hasFechahora() => _fechahora != null;

  // "tipo_emergencia" field.
  String? _tipoEmergencia;
  String get tipoEmergencia => _tipoEmergencia ?? '';
  bool hasTipoEmergencia() => _tipoEmergencia != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _estado = snapshotData['estado'] as String?;
    _fechahora = snapshotData['fechahora'] as DateTime?;
    _tipoEmergencia = snapshotData['tipo_emergencia'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('emergencias');

  static Stream<EmergenciasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmergenciasRecord.fromSnapshot(s));

  static Future<EmergenciasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmergenciasRecord.fromSnapshot(s));

  static EmergenciasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmergenciasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmergenciasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmergenciasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmergenciasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmergenciasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmergenciasRecordData({
  String? estado,
  DateTime? fechahora,
  String? tipoEmergencia,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'estado': estado,
      'fechahora': fechahora,
      'tipo_emergencia': tipoEmergencia,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmergenciasRecordDocumentEquality implements Equality<EmergenciasRecord> {
  const EmergenciasRecordDocumentEquality();

  @override
  bool equals(EmergenciasRecord? e1, EmergenciasRecord? e2) {
    return e1?.estado == e2?.estado &&
        e1?.fechahora == e2?.fechahora &&
        e1?.tipoEmergencia == e2?.tipoEmergencia &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(EmergenciasRecord? e) => const ListEquality()
      .hash([e?.estado, e?.fechahora, e?.tipoEmergencia, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is EmergenciasRecord;
}
