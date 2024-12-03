import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ForoRecord extends FirestoreRecord {
  ForoRecord._(
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

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _contenido = snapshotData['contenido'] as String?;
    _fechahora = snapshotData['fechahora'] as DateTime?;
    _titulo = snapshotData['titulo'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('foro');

  static Stream<ForoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ForoRecord.fromSnapshot(s));

  static Future<ForoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ForoRecord.fromSnapshot(s));

  static ForoRecord fromSnapshot(DocumentSnapshot snapshot) => ForoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ForoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ForoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ForoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ForoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createForoRecordData({
  String? contenido,
  DateTime? fechahora,
  String? titulo,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'contenido': contenido,
      'fechahora': fechahora,
      'titulo': titulo,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ForoRecordDocumentEquality implements Equality<ForoRecord> {
  const ForoRecordDocumentEquality();

  @override
  bool equals(ForoRecord? e1, ForoRecord? e2) {
    return e1?.contenido == e2?.contenido &&
        e1?.fechahora == e2?.fechahora &&
        e1?.titulo == e2?.titulo &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(ForoRecord? e) => const ListEquality()
      .hash([e?.contenido, e?.fechahora, e?.titulo, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is ForoRecord;
}
