// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTodoCollection on Isar {
  IsarCollection<Todo> get todos => getCollection();
}

const TodoSchema = CollectionSchema(
  name: 'Todo',
  schema:
      '{"name":"Todo","idName":"id","properties":[{"name":"created","type":"Long"},{"name":"description","type":"String"},{"name":"finished","type":"Bool"},{"name":"title","type":"String"},{"name":"updated","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'created': 0,
    'description': 1,
    'finished': 2,
    'title': 3,
    'updated': 4
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _todoGetId,
  setId: _todoSetId,
  getLinks: _todoGetLinks,
  attachLinks: _todoAttachLinks,
  serializeNative: _todoSerializeNative,
  deserializeNative: _todoDeserializeNative,
  deserializePropNative: _todoDeserializePropNative,
  serializeWeb: _todoSerializeWeb,
  deserializeWeb: _todoDeserializeWeb,
  deserializePropWeb: _todoDeserializePropWeb,
  version: 3,
);

int? _todoGetId(Todo object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _todoSetId(Todo object, int id) {
  object.id = id;
}

List<IsarLinkBase> _todoGetLinks(Todo object) {
  return [];
}

void _todoSerializeNative(IsarCollection<Todo> collection, IsarRawObject rawObj,
    Todo object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.created;
  final _created = value0;
  final value1 = object.description;
  final _description = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_description.length) as int;
  final value2 = object.finished;
  final _finished = value2;
  final value3 = object.title;
  final _title = IsarBinaryWriter.utf8Encoder.convert(value3);
  dynamicSize += (_title.length) as int;
  final value4 = object.updated;
  final _updated = value4;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _created);
  writer.writeBytes(offsets[1], _description);
  writer.writeBool(offsets[2], _finished);
  writer.writeBytes(offsets[3], _title);
  writer.writeDateTime(offsets[4], _updated);
}

Todo _todoDeserializeNative(IsarCollection<Todo> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Todo();
  object.created = reader.readDateTime(offsets[0]);
  object.description = reader.readString(offsets[1]);
  object.finished = reader.readBool(offsets[2]);
  object.id = id;
  object.title = reader.readString(offsets[3]);
  object.updated = reader.readDateTime(offsets[4]);
  return object;
}

P _todoDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _todoSerializeWeb(IsarCollection<Todo> collection, Todo object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'created', object.created.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'finished', object.finished);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'title', object.title);
  IsarNative.jsObjectSet(
      jsObj, 'updated', object.updated.toUtc().millisecondsSinceEpoch);
  return jsObj;
}

Todo _todoDeserializeWeb(IsarCollection<Todo> collection, dynamic jsObj) {
  final object = Todo();
  object.created = IsarNative.jsObjectGet(jsObj, 'created') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'created'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.description = IsarNative.jsObjectGet(jsObj, 'description') ?? '';
  object.finished = IsarNative.jsObjectGet(jsObj, 'finished') ?? false;
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.title = IsarNative.jsObjectGet(jsObj, 'title') ?? '';
  object.updated = IsarNative.jsObjectGet(jsObj, 'updated') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'updated'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  return object;
}

P _todoDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'created':
      return (IsarNative.jsObjectGet(jsObj, 'created') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'created'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description') ?? '') as P;
    case 'finished':
      return (IsarNative.jsObjectGet(jsObj, 'finished') ?? false) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'title':
      return (IsarNative.jsObjectGet(jsObj, 'title') ?? '') as P;
    case 'updated':
      return (IsarNative.jsObjectGet(jsObj, 'updated') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updated'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _todoAttachLinks(IsarCollection col, int id, Todo object) {}

extension TodoQueryWhereSort on QueryBuilder<Todo, Todo, QWhere> {
  QueryBuilder<Todo, Todo, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension TodoQueryWhere on QueryBuilder<Todo, Todo, QWhereClause> {
  QueryBuilder<Todo, Todo, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<Todo, Todo, QAfterWhereClause> idGreaterThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<Todo, Todo, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<Todo, Todo, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension TodoQueryFilter on QueryBuilder<Todo, Todo, QFilterCondition> {
  QueryBuilder<Todo, Todo, QAfterFilterCondition> createdEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> createdGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> createdLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> createdBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'created',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> finishedEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'finished',
      value: value,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> titleLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'title',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'title',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'title',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> updatedEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updated',
      value: value,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> updatedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updated',
      value: value,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> updatedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updated',
      value: value,
    ));
  }

  QueryBuilder<Todo, Todo, QAfterFilterCondition> updatedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updated',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension TodoQueryLinks on QueryBuilder<Todo, Todo, QFilterCondition> {}

extension TodoQueryWhereSortBy on QueryBuilder<Todo, Todo, QSortBy> {
  QueryBuilder<Todo, Todo, QAfterSortBy> sortByCreated() {
    return addSortByInternal('created', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortByCreatedDesc() {
    return addSortByInternal('created', Sort.desc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortByFinished() {
    return addSortByInternal('finished', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortByFinishedDesc() {
    return addSortByInternal('finished', Sort.desc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortByUpdated() {
    return addSortByInternal('updated', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> sortByUpdatedDesc() {
    return addSortByInternal('updated', Sort.desc);
  }
}

extension TodoQueryWhereSortThenBy on QueryBuilder<Todo, Todo, QSortThenBy> {
  QueryBuilder<Todo, Todo, QAfterSortBy> thenByCreated() {
    return addSortByInternal('created', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenByCreatedDesc() {
    return addSortByInternal('created', Sort.desc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenByFinished() {
    return addSortByInternal('finished', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenByFinishedDesc() {
    return addSortByInternal('finished', Sort.desc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenByTitle() {
    return addSortByInternal('title', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenByTitleDesc() {
    return addSortByInternal('title', Sort.desc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenByUpdated() {
    return addSortByInternal('updated', Sort.asc);
  }

  QueryBuilder<Todo, Todo, QAfterSortBy> thenByUpdatedDesc() {
    return addSortByInternal('updated', Sort.desc);
  }
}

extension TodoQueryWhereDistinct on QueryBuilder<Todo, Todo, QDistinct> {
  QueryBuilder<Todo, Todo, QDistinct> distinctByCreated() {
    return addDistinctByInternal('created');
  }

  QueryBuilder<Todo, Todo, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<Todo, Todo, QDistinct> distinctByFinished() {
    return addDistinctByInternal('finished');
  }

  QueryBuilder<Todo, Todo, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Todo, Todo, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('title', caseSensitive: caseSensitive);
  }

  QueryBuilder<Todo, Todo, QDistinct> distinctByUpdated() {
    return addDistinctByInternal('updated');
  }
}

extension TodoQueryProperty on QueryBuilder<Todo, Todo, QQueryProperty> {
  QueryBuilder<Todo, DateTime, QQueryOperations> createdProperty() {
    return addPropertyNameInternal('created');
  }

  QueryBuilder<Todo, String, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<Todo, bool, QQueryOperations> finishedProperty() {
    return addPropertyNameInternal('finished');
  }

  QueryBuilder<Todo, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Todo, String, QQueryOperations> titleProperty() {
    return addPropertyNameInternal('title');
  }

  QueryBuilder<Todo, DateTime, QQueryOperations> updatedProperty() {
    return addPropertyNameInternal('updated');
  }
}
