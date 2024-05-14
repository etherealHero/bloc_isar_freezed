// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTaskDTOCollection on Isar {
  IsarCollection<TaskDTO> get taskDTOs => this.collection();
}

const TaskDTOSchema = CollectionSchema(
  name: r'TaskDTO',
  id: -8856475322235548500,
  properties: {
    r'dateCreateUtc': PropertySchema(
      id: 0,
      name: r'dateCreateUtc',
      type: IsarType.dateTime,
    ),
    r'dateModifyUtc': PropertySchema(
      id: 1,
      name: r'dateModifyUtc',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'isArchived': PropertySchema(
      id: 3,
      name: r'isArchived',
      type: IsarType.bool,
    ),
    r'isDone': PropertySchema(
      id: 4,
      name: r'isDone',
      type: IsarType.bool,
    ),
    r'isTrash': PropertySchema(
      id: 5,
      name: r'isTrash',
      type: IsarType.bool,
    ),
    r'order': PropertySchema(
      id: 6,
      name: r'order',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 7,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _taskDTOEstimateSize,
  serialize: _taskDTOSerialize,
  deserialize: _taskDTODeserialize,
  deserializeProp: _taskDTODeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'group': LinkSchema(
      id: -8147961241362179022,
      name: r'group',
      target: r'Group',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _taskDTOGetId,
  getLinks: _taskDTOGetLinks,
  attach: _taskDTOAttach,
  version: '3.1.0+1',
);

int _taskDTOEstimateSize(
  TaskDTO object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _taskDTOSerialize(
  TaskDTO object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.dateCreateUtc);
  writer.writeDateTime(offsets[1], object.dateModifyUtc);
  writer.writeString(offsets[2], object.description);
  writer.writeBool(offsets[3], object.isArchived);
  writer.writeBool(offsets[4], object.isDone);
  writer.writeBool(offsets[5], object.isTrash);
  writer.writeLong(offsets[6], object.order);
  writer.writeString(offsets[7], object.title);
}

TaskDTO _taskDTODeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TaskDTO(
    dateCreateUtc: reader.readDateTime(offsets[0]),
    dateModifyUtc: reader.readDateTime(offsets[1]),
    description: reader.readString(offsets[2]),
    isArchived: reader.readBool(offsets[3]),
    isDone: reader.readBool(offsets[4]),
    isTrash: reader.readBool(offsets[5]),
    order: reader.readLong(offsets[6]),
    title: reader.readString(offsets[7]),
  );
  object.id = id;
  return object;
}

P _taskDTODeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _taskDTOGetId(TaskDTO object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _taskDTOGetLinks(TaskDTO object) {
  return [object.group];
}

void _taskDTOAttach(IsarCollection<dynamic> col, Id id, TaskDTO object) {
  object.id = id;
  object.group.attach(col, col.isar.collection<Group>(), r'group', id);
}

extension TaskDTOQueryWhereSort on QueryBuilder<TaskDTO, TaskDTO, QWhere> {
  QueryBuilder<TaskDTO, TaskDTO, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TaskDTOQueryWhere on QueryBuilder<TaskDTO, TaskDTO, QWhereClause> {
  QueryBuilder<TaskDTO, TaskDTO, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension TaskDTOQueryFilter
    on QueryBuilder<TaskDTO, TaskDTO, QFilterCondition> {
  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> dateCreateUtcEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreateUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition>
      dateCreateUtcGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateCreateUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> dateCreateUtcLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateCreateUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> dateCreateUtcBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateCreateUtc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> dateModifyUtcEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateModifyUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition>
      dateModifyUtcGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateModifyUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> dateModifyUtcLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateModifyUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> dateModifyUtcBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateModifyUtc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> isArchivedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isArchived',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> isDoneEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDone',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> isTrashEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTrash',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> orderEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> orderGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> orderLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> orderBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'order',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension TaskDTOQueryObject
    on QueryBuilder<TaskDTO, TaskDTO, QFilterCondition> {}

extension TaskDTOQueryLinks
    on QueryBuilder<TaskDTO, TaskDTO, QFilterCondition> {
  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> group(
      FilterQuery<Group> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'group');
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterFilterCondition> groupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'group', 0, true, 0, true);
    });
  }
}

extension TaskDTOQuerySortBy on QueryBuilder<TaskDTO, TaskDTO, QSortBy> {
  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByDateCreateUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreateUtc', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByDateCreateUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreateUtc', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByDateModifyUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModifyUtc', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByDateModifyUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModifyUtc', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByIsArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isArchived', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByIsArchivedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isArchived', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByIsDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByIsTrash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrash', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByIsTrashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrash', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension TaskDTOQuerySortThenBy
    on QueryBuilder<TaskDTO, TaskDTO, QSortThenBy> {
  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByDateCreateUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreateUtc', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByDateCreateUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreateUtc', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByDateModifyUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModifyUtc', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByDateModifyUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModifyUtc', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByIsArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isArchived', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByIsArchivedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isArchived', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByIsDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByIsTrash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrash', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByIsTrashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrash', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.desc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension TaskDTOQueryWhereDistinct
    on QueryBuilder<TaskDTO, TaskDTO, QDistinct> {
  QueryBuilder<TaskDTO, TaskDTO, QDistinct> distinctByDateCreateUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreateUtc');
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QDistinct> distinctByDateModifyUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateModifyUtc');
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QDistinct> distinctByIsArchived() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isArchived');
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QDistinct> distinctByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDone');
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QDistinct> distinctByIsTrash() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTrash');
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QDistinct> distinctByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'order');
    });
  }

  QueryBuilder<TaskDTO, TaskDTO, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension TaskDTOQueryProperty
    on QueryBuilder<TaskDTO, TaskDTO, QQueryProperty> {
  QueryBuilder<TaskDTO, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TaskDTO, DateTime, QQueryOperations> dateCreateUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreateUtc');
    });
  }

  QueryBuilder<TaskDTO, DateTime, QQueryOperations> dateModifyUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateModifyUtc');
    });
  }

  QueryBuilder<TaskDTO, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<TaskDTO, bool, QQueryOperations> isArchivedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isArchived');
    });
  }

  QueryBuilder<TaskDTO, bool, QQueryOperations> isDoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDone');
    });
  }

  QueryBuilder<TaskDTO, bool, QQueryOperations> isTrashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTrash');
    });
  }

  QueryBuilder<TaskDTO, int, QQueryOperations> orderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'order');
    });
  }

  QueryBuilder<TaskDTO, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: (json['id'] as num).toInt(),
      isDone: json['isDone'] as bool,
      isArchived: json['isArchived'] as bool,
      isTrash: json['isTrash'] as bool,
      title: json['title'] as String,
      description: json['description'] as String,
      dateCreateUtc: DateTime.parse(json['dateCreateUtc'] as String),
      dateModifyUtc: DateTime.parse(json['dateModifyUtc'] as String),
      order: (json['order'] as num).toInt(),
      groupId: (json['groupId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isDone': instance.isDone,
      'isArchived': instance.isArchived,
      'isTrash': instance.isTrash,
      'title': instance.title,
      'description': instance.description,
      'dateCreateUtc': instance.dateCreateUtc.toIso8601String(),
      'dateModifyUtc': instance.dateModifyUtc.toIso8601String(),
      'order': instance.order,
      'groupId': instance.groupId,
    };
