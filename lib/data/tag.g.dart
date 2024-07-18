// GENERATED CODE - DO NOT MODIFY BY HAND

part of "tag.dart";

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTagCollection on Isar {
  IsarCollection<Tag> get tags => this.collection();
}

const TagSchema = CollectionSchema(
  name: r"Tag",
  id: 4007045862261149568,
  properties: {
    r"name": PropertySchema(
      id: 0,
      name: r"name",
      type: IsarType.string,
    )
  },
  estimateSize: _tagEstimateSize,
  serialize: _tagSerialize,
  deserialize: _tagDeserialize,
  deserializeProp: _tagDeserializeProp,
  idName: r"id",
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _tagGetId,
  getLinks: _tagGetLinks,
  attach: _tagAttach,
  version: "3.1.0+1",
);

int _tagEstimateSize(
  Tag object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _tagSerialize(
  Tag object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
}

Tag _tagDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Tag(
    reader.readString(offsets[0]),
  );
  object.id = id;
  return object;
}

P _tagDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError("Unknown property with id $propertyId");
  }
}

Id _tagGetId(Tag object) => object.id;

List<IsarLinkBase<dynamic>> _tagGetLinks(Tag object) => [];

void _tagAttach(IsarCollection<dynamic> col, Id id, Tag object) {
  object.id = id;
}

extension TagQueryWhereSort on QueryBuilder<Tag, Tag, QWhere> {
  QueryBuilder<Tag, Tag, QAfterWhere> anyId() => QueryBuilder.apply(this, (query) => query.addWhereClause(const IdWhereClause.any()));
}

extension TagQueryWhere on QueryBuilder<Tag, Tag, QWhereClause> {
  QueryBuilder<Tag, Tag, QAfterWhereClause> idEqualTo(Id id) => QueryBuilder.apply(this, (query) => query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      )));

  QueryBuilder<Tag, Tag, QAfterWhereClause> idNotEqualTo(Id id) => QueryBuilder.apply(this, (query) {
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

  QueryBuilder<Tag, Tag, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) => QueryBuilder.apply(this, (query) => query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      ));

  QueryBuilder<Tag, Tag, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) => QueryBuilder.apply(this, (query) => query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      ));

  QueryBuilder<Tag, Tag, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) => QueryBuilder.apply(this, (query) => query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      )));
}

extension TagQueryFilter on QueryBuilder<Tag, Tag, QFilterCondition> {
  QueryBuilder<Tag, Tag, QAfterFilterCondition> idEqualTo(Id value) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.equalTo(
        property: r"id",
        value: value,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r"id",
        value: value,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r"id",
        value: value,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.between(
        property: r"id",
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.equalTo(
        property: r"name",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r"name",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r"name",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.between(
        property: r"name",
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.startsWith(
        property: r"name",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.endsWith(
        property: r"name",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.contains(
        property: r"name",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.matches(
        property: r"name",
        wildcard: pattern,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> nameIsEmpty() => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.equalTo(
        property: r"name",
        value: "",
      )));

  QueryBuilder<Tag, Tag, QAfterFilterCondition> nameIsNotEmpty() => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.greaterThan(
        property: r"name",
        value: "",
      )));
}

extension TagQueryObject on QueryBuilder<Tag, Tag, QFilterCondition> {}

extension TagQueryLinks on QueryBuilder<Tag, Tag, QFilterCondition> {}

extension TagQuerySortBy on QueryBuilder<Tag, Tag, QSortBy> {
  QueryBuilder<Tag, Tag, QAfterSortBy> sortByName() => QueryBuilder.apply(this, (query) => query.addSortBy(r"name", Sort.asc));

  QueryBuilder<Tag, Tag, QAfterSortBy> sortByNameDesc() => QueryBuilder.apply(this, (query) => query.addSortBy(r"name", Sort.desc));
}

extension TagQuerySortThenBy on QueryBuilder<Tag, Tag, QSortThenBy> {
  QueryBuilder<Tag, Tag, QAfterSortBy> thenById() => QueryBuilder.apply(this, (query) => query.addSortBy(r"id", Sort.asc));

  QueryBuilder<Tag, Tag, QAfterSortBy> thenByIdDesc() => QueryBuilder.apply(this, (query) => query.addSortBy(r"id", Sort.desc));

  QueryBuilder<Tag, Tag, QAfterSortBy> thenByName() => QueryBuilder.apply(this, (query) => query.addSortBy(r"name", Sort.asc));

  QueryBuilder<Tag, Tag, QAfterSortBy> thenByNameDesc() => QueryBuilder.apply(this, (query) => query.addSortBy(r"name", Sort.desc));
}

extension TagQueryWhereDistinct on QueryBuilder<Tag, Tag, QDistinct> {
  QueryBuilder<Tag, Tag, QDistinct> distinctByName(
      {bool caseSensitive = true}) => QueryBuilder.apply(this, (query) => query.addDistinctBy(r"name", caseSensitive: caseSensitive));
}

extension TagQueryProperty on QueryBuilder<Tag, Tag, QQueryProperty> {
  QueryBuilder<Tag, int, QQueryOperations> idProperty() => QueryBuilder.apply(this, (query) => query.addPropertyName(r"id"));

  QueryBuilder<Tag, String, QQueryOperations> nameProperty() => QueryBuilder.apply(this, (query) => query.addPropertyName(r"name"));
}
