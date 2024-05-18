// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGroupDTOCollection on Isar {
  IsarCollection<GroupDTO> get groupDTOs => this.collection();
}

const GroupDTOSchema = CollectionSchema(
  name: r'GroupDTO',
  id: 4110607273268151599,
  properties: {
    r'color': PropertySchema(
      id: 0,
      name: r'color',
      type: IsarType.long,
    ),
    r'dateCreateUtc': PropertySchema(
      id: 1,
      name: r'dateCreateUtc',
      type: IsarType.dateTime,
    ),
    r'dateModifyUtc': PropertySchema(
      id: 2,
      name: r'dateModifyUtc',
      type: IsarType.dateTime,
    ),
    r'order': PropertySchema(
      id: 3,
      name: r'order',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 4,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _groupDTOEstimateSize,
  serialize: _groupDTOSerialize,
  deserialize: _groupDTODeserialize,
  deserializeProp: _groupDTODeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'tasks': LinkSchema(
      id: -3826584304484999619,
      name: r'tasks',
      target: r'TaskDTO',
      single: false,
      linkName: r'group',
    )
  },
  embeddedSchemas: {},
  getId: _groupDTOGetId,
  getLinks: _groupDTOGetLinks,
  attach: _groupDTOAttach,
  version: '3.1.0+1',
);

int _groupDTOEstimateSize(
  GroupDTO object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _groupDTOSerialize(
  GroupDTO object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.color);
  writer.writeDateTime(offsets[1], object.dateCreateUtc);
  writer.writeDateTime(offsets[2], object.dateModifyUtc);
  writer.writeLong(offsets[3], object.order);
  writer.writeString(offsets[4], object.title);
}

GroupDTO _groupDTODeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GroupDTO(
    color: reader.readLong(offsets[0]),
    dateCreateUtc: reader.readDateTime(offsets[1]),
    dateModifyUtc: reader.readDateTime(offsets[2]),
    id: id,
    order: reader.readLong(offsets[3]),
    title: reader.readString(offsets[4]),
  );
  return object;
}

P _groupDTODeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _groupDTOGetId(GroupDTO object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _groupDTOGetLinks(GroupDTO object) {
  return [object.tasks];
}

void _groupDTOAttach(IsarCollection<dynamic> col, Id id, GroupDTO object) {
  object.id = id;
  object.tasks.attach(col, col.isar.collection<TaskDTO>(), r'tasks', id);
}

extension GroupDTOQueryWhereSort on QueryBuilder<GroupDTO, GroupDTO, QWhere> {
  QueryBuilder<GroupDTO, GroupDTO, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GroupDTOQueryWhere on QueryBuilder<GroupDTO, GroupDTO, QWhereClause> {
  QueryBuilder<GroupDTO, GroupDTO, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterWhereClause> idBetween(
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

extension GroupDTOQueryFilter
    on QueryBuilder<GroupDTO, GroupDTO, QFilterCondition> {
  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> colorEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'color',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> colorGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'color',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> colorLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'color',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> colorBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'color',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> dateCreateUtcEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreateUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition>
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> dateCreateUtcLessThan(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> dateCreateUtcBetween(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> dateModifyUtcEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateModifyUtc',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition>
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> dateModifyUtcLessThan(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> dateModifyUtcBetween(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> idBetween(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> orderEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'order',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> orderGreaterThan(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> orderLessThan(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> orderBetween(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> titleEqualTo(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> titleGreaterThan(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> titleLessThan(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> titleBetween(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> titleStartsWith(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> titleEndsWith(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> titleContains(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> titleMatches(
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

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension GroupDTOQueryObject
    on QueryBuilder<GroupDTO, GroupDTO, QFilterCondition> {}

extension GroupDTOQueryLinks
    on QueryBuilder<GroupDTO, GroupDTO, QFilterCondition> {
  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> tasks(
      FilterQuery<TaskDTO> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'tasks');
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> tasksLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tasks', length, true, length, true);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> tasksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tasks', 0, true, 0, true);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> tasksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tasks', 0, false, 999999, true);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> tasksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tasks', 0, true, length, include);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition>
      tasksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'tasks', length, include, 999999, true);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterFilterCondition> tasksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'tasks', lower, includeLower, upper, includeUpper);
    });
  }
}

extension GroupDTOQuerySortBy on QueryBuilder<GroupDTO, GroupDTO, QSortBy> {
  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> sortByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> sortByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> sortByDateCreateUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreateUtc', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> sortByDateCreateUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreateUtc', Sort.desc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> sortByDateModifyUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModifyUtc', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> sortByDateModifyUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModifyUtc', Sort.desc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> sortByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> sortByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.desc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension GroupDTOQuerySortThenBy
    on QueryBuilder<GroupDTO, GroupDTO, QSortThenBy> {
  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'color', Sort.desc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByDateCreateUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreateUtc', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByDateCreateUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreateUtc', Sort.desc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByDateModifyUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModifyUtc', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByDateModifyUtcDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModifyUtc', Sort.desc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'order', Sort.desc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension GroupDTOQueryWhereDistinct
    on QueryBuilder<GroupDTO, GroupDTO, QDistinct> {
  QueryBuilder<GroupDTO, GroupDTO, QDistinct> distinctByColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'color');
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QDistinct> distinctByDateCreateUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreateUtc');
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QDistinct> distinctByDateModifyUtc() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateModifyUtc');
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QDistinct> distinctByOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'order');
    });
  }

  QueryBuilder<GroupDTO, GroupDTO, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension GroupDTOQueryProperty
    on QueryBuilder<GroupDTO, GroupDTO, QQueryProperty> {
  QueryBuilder<GroupDTO, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GroupDTO, int, QQueryOperations> colorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'color');
    });
  }

  QueryBuilder<GroupDTO, DateTime, QQueryOperations> dateCreateUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreateUtc');
    });
  }

  QueryBuilder<GroupDTO, DateTime, QQueryOperations> dateModifyUtcProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateModifyUtc');
    });
  }

  QueryBuilder<GroupDTO, int, QQueryOperations> orderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'order');
    });
  }

  QueryBuilder<GroupDTO, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      color: (json['color'] as num).toInt(),
      dateCreateUtc: DateTime.parse(json['dateCreateUtc'] as String),
      dateModifyUtc: DateTime.parse(json['dateModifyUtc'] as String),
      order: (json['order'] as num).toInt(),
      tasks: (json['tasks'] as List<dynamic>)
          .map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'color': instance.color,
      'dateCreateUtc': instance.dateCreateUtc.toIso8601String(),
      'dateModifyUtc': instance.dateModifyUtc.toIso8601String(),
      'order': instance.order,
      'tasks': instance.tasks,
    };
