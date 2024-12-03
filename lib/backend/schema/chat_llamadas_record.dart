import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatLlamadasRecord extends FirestoreRecord {
  ChatLlamadasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "emergencia_id" field.
  DocumentReference? _emergenciaId;
  DocumentReference? get emergenciaId => _emergenciaId;
  bool hasEmergenciaId() => _emergenciaId != null;

  // "fechahora_fin" field.
  DateTime? _fechahoraFin;
  DateTime? get fechahoraFin => _fechahoraFin;
  bool hasFechahoraFin() => _fechahoraFin != null;

  // "fechahora_inicio" field.
  DateTime? _fechahoraInicio;
  DateTime? get fechahoraInicio => _fechahoraInicio;
  bool hasFechahoraInicio() => _fechahoraInicio != null;

  // "tipo_chat" field.
  String? _tipoChat;
  String get tipoChat => _tipoChat ?? '';
  bool hasTipoChat() => _tipoChat != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _emergenciaId = snapshotData['emergencia_id'] as DocumentReference?;
    _fechahoraFin = snapshotData['fechahora_fin'] as DateTime?;
    _fechahoraInicio = snapshotData['fechahora_inicio'] as DateTime?;
    _tipoChat = snapshotData['tipo_chat'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_llamadas');

  static Stream<ChatLlamadasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatLlamadasRecord.fromSnapshot(s));

  static Future<ChatLlamadasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatLlamadasRecord.fromSnapshot(s));

  static ChatLlamadasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatLlamadasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatLlamadasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatLlamadasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatLlamadasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatLlamadasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatLlamadasRecordData({
  DocumentReference? emergenciaId,
  DateTime? fechahoraFin,
  DateTime? fechahoraInicio,
  String? tipoChat,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'emergencia_id': emergenciaId,
      'fechahora_fin': fechahoraFin,
      'fechahora_inicio': fechahoraInicio,
      'tipo_chat': tipoChat,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatLlamadasRecordDocumentEquality
    implements Equality<ChatLlamadasRecord> {
  const ChatLlamadasRecordDocumentEquality();

  @override
  bool equals(ChatLlamadasRecord? e1, ChatLlamadasRecord? e2) {
    return e1?.emergenciaId == e2?.emergenciaId &&
        e1?.fechahoraFin == e2?.fechahoraFin &&
        e1?.fechahoraInicio == e2?.fechahoraInicio &&
        e1?.tipoChat == e2?.tipoChat &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(ChatLlamadasRecord? e) => const ListEquality().hash([
        e?.emergenciaId,
        e?.fechahoraFin,
        e?.fechahoraInicio,
        e?.tipoChat,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatLlamadasRecord;
}
