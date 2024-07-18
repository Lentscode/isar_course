// GENERATED CODE - DO NOT MODIFY BY HAND

part of "note.dart";

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNoteCollection on Isar {
  IsarCollection<Note> get notes => this.collection();
}

const NoteSchema = CollectionSchema(
  name: r"Note",
  id: 6284318083599466921,
  properties: {
    r"date": PropertySchema(
      id: 0,
      name: r"date",
      type: IsarType.dateTime,
    ),
    r"text": PropertySchema(
      id: 1,
      name: r"text",
      type: IsarType.string,
    ),
    r"title": PropertySchema(
      id: 2,
      name: r"title",
      type: IsarType.string,
    )
  },
  estimateSize: _noteEstimateSize,
  serialize: _noteSerialize,
  deserialize: _noteDeserialize,
  deserializeProp: _noteDeserializeProp,
  idName: r"id",
  indexes: {},
  links: {
    r"tags": LinkSchema(
      id: -4208456332734556995,
      name: r"tags",
      target: r"Tag",
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _noteGetId,
  getLinks: _noteGetLinks,
  attach: _noteAttach,
  version: "3.1.0+1",
);

int _noteEstimateSize(
  Note object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.text.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _noteSerialize(
  Note object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.date);
  writer.writeString(offsets[1], object.text);
  writer.writeString(offsets[2], object.title);
}

Note _noteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Note(
    date: reader.readDateTime(offsets[0]),
    text: reader.readString(offsets[1]),
    title: reader.readString(offsets[2]),
  );
  object.id = id;
  return object;
}

P _noteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError("Unknown property with id $propertyId");
  }
}

Id _noteGetId(Note object) => object.id;

List<IsarLinkBase<dynamic>> _noteGetLinks(Note object) => [object.tags];

void _noteAttach(IsarCollection<dynamic> col, Id id, Note object) {
  object.id = id;
  object.tags.attach(col, col.isar.collection<Tag>(), r"tags", id);
}

extension NoteQueryWhereSort on QueryBuilder<Note, Note, QWhere> {
  QueryBuilder<Note, Note, QAfterWhere> anyId() => QueryBuilder.apply(this, (query) => query.addWhereClause(const IdWhereClause.any()));
}

extension NoteQueryWhere on QueryBuilder<Note, Note, QWhereClause> {
  QueryBuilder<Note, Note, QAfterWhereClause> idEqualTo(Id id) => QueryBuilder.apply(this, (query) => query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      )));

  QueryBuilder<Note, Note, QAfterWhereClause> idNotEqualTo(Id id) => QueryBuilder.apply(this, (query) {
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

  QueryBuilder<Note, Note, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) => QueryBuilder.apply(this, (query) => query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      ));

  QueryBuilder<Note, Note, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) => QueryBuilder.apply(this, (query) => query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      ));

  QueryBuilder<Note, Note, QAfterWhereClause> idBetween(
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

extension NoteQueryFilter on QueryBuilder<Note, Note, QFilterCondition> {
  QueryBuilder<Note, Note, QAfterFilterCondition> dateEqualTo(DateTime value) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.equalTo(
        property: r"date",
        value: value,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r"date",
        value: value,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> dateLessThan(
    DateTime value, {
    bool include = false,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r"date",
        value: value,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.between(
        property: r"date",
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> idEqualTo(Id value) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.equalTo(
        property: r"id",
        value: value,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r"id",
        value: value,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r"id",
        value: value,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Note, Note, QAfterFilterCondition> textEqualTo(
    String value, {
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.equalTo(
        property: r"text",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> textGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r"text",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> textLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r"text",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> textBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.between(
        property: r"text",
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.startsWith(
        property: r"text",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.endsWith(
        property: r"text",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> textContains(String value,
      {bool caseSensitive = true}) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.contains(
        property: r"text",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> textMatches(String pattern,
      {bool caseSensitive = true}) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.matches(
        property: r"text",
        wildcard: pattern,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> textIsEmpty() => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.equalTo(
        property: r"text",
        value: "",
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> textIsNotEmpty() => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.greaterThan(
        property: r"text",
        value: "",
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.equalTo(
        property: r"title",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r"title",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r"title",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.between(
        property: r"title",
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.startsWith(
        property: r"title",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.endsWith(
        property: r"title",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.contains(
        property: r"title",
        value: value,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.matches(
        property: r"title",
        wildcard: pattern,
        caseSensitive: caseSensitive,
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> titleIsEmpty() => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.equalTo(
        property: r"title",
        value: "",
      )));

  QueryBuilder<Note, Note, QAfterFilterCondition> titleIsNotEmpty() => QueryBuilder.apply(this, (query) => query.addFilterCondition(FilterCondition.greaterThan(
        property: r"title",
        value: "",
      )));
}

extension NoteQueryObject on QueryBuilder<Note, Note, QFilterCondition> {}

extension NoteQueryLinks on QueryBuilder<Note, Note, QFilterCondition> {
  QueryBuilder<Note, Note, QAfterFilterCondition> tags(FilterQuery<Tag> q) => QueryBuilder.apply(this, (query) => query.link(q, r"tags"));

  QueryBuilder<Note, Note, QAfterFilterCondition> tagsLengthEqualTo(
      int length) => QueryBuilder.apply(this, (query) => query.linkLength(r"tags", length, true, length, true));

  QueryBuilder<Note, Note, QAfterFilterCondition> tagsIsEmpty() => QueryBuilder.apply(this, (query) => query.linkLength(r"tags", 0, true, 0, true));

  QueryBuilder<Note, Note, QAfterFilterCondition> tagsIsNotEmpty() => QueryBuilder.apply(this, (query) => query.linkLength(r"tags", 0, false, 999999, true));

  QueryBuilder<Note, Note, QAfterFilterCondition> tagsLengthLessThan(
    int length, {
    bool include = false,
  }) => QueryBuilder.apply(this, (query) => query.linkLength(r"tags", 0, true, length, include));

  QueryBuilder<Note, Note, QAfterFilterCondition> tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) => QueryBuilder.apply(this, (query) => query.linkLength(r"tags", length, include, 999999, true));

  QueryBuilder<Note, Note, QAfterFilterCondition> tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) => QueryBuilder.apply(this, (query) => query.linkLength(
          r"tags", lower, includeLower, upper, includeUpper));
}

extension NoteQuerySortBy on QueryBuilder<Note, Note, QSortBy> {
  QueryBuilder<Note, Note, QAfterSortBy> sortByDate() => QueryBuilder.apply(this, (query) => query.addSortBy(r"date", Sort.asc));

  QueryBuilder<Note, Note, QAfterSortBy> sortByDateDesc() => QueryBuilder.apply(this, (query) => query.addSortBy(r"date", Sort.desc));

  QueryBuilder<Note, Note, QAfterSortBy> sortByText() => QueryBuilder.apply(this, (query) => query.addSortBy(r"text", Sort.asc));

  QueryBuilder<Note, Note, QAfterSortBy> sortByTextDesc() => QueryBuilder.apply(this, (query) => query.addSortBy(r"text", Sort.desc));

  QueryBuilder<Note, Note, QAfterSortBy> sortByTitle() => QueryBuilder.apply(this, (query) => query.addSortBy(r"title", Sort.asc));

  QueryBuilder<Note, Note, QAfterSortBy> sortByTitleDesc() => QueryBuilder.apply(this, (query) => query.addSortBy(r"title", Sort.desc));
}

extension NoteQuerySortThenBy on QueryBuilder<Note, Note, QSortThenBy> {
  QueryBuilder<Note, Note, QAfterSortBy> thenByDate() => QueryBuilder.apply(this, (query) => query.addSortBy(r"date", Sort.asc));

  QueryBuilder<Note, Note, QAfterSortBy> thenByDateDesc() => QueryBuilder.apply(this, (query) => query.addSortBy(r"date", Sort.desc));

  QueryBuilder<Note, Note, QAfterSortBy> thenById() => QueryBuilder.apply(this, (query) => query.addSortBy(r"id", Sort.asc));

  QueryBuilder<Note, Note, QAfterSortBy> thenByIdDesc() => QueryBuilder.apply(this, (query) => query.addSortBy(r"id", Sort.desc));

  QueryBuilder<Note, Note, QAfterSortBy> thenByText() => QueryBuilder.apply(this, (query) => query.addSortBy(r"text", Sort.asc));

  QueryBuilder<Note, Note, QAfterSortBy> thenByTextDesc() => QueryBuilder.apply(this, (query) => query.addSortBy(r"text", Sort.desc));

  QueryBuilder<Note, Note, QAfterSortBy> thenByTitle() => QueryBuilder.apply(this, (query) => query.addSortBy(r"title", Sort.asc));

  QueryBuilder<Note, Note, QAfterSortBy> thenByTitleDesc() => QueryBuilder.apply(this, (query) => query.addSortBy(r"title", Sort.desc));
}

extension NoteQueryWhereDistinct on QueryBuilder<Note, Note, QDistinct> {
  QueryBuilder<Note, Note, QDistinct> distinctByDate() => QueryBuilder.apply(this, (query) => query.addDistinctBy(r"date"));

  QueryBuilder<Note, Note, QDistinct> distinctByText(
      {bool caseSensitive = true}) => QueryBuilder.apply(this, (query) => query.addDistinctBy(r"text", caseSensitive: caseSensitive));

  QueryBuilder<Note, Note, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) => QueryBuilder.apply(this, (query) => query.addDistinctBy(r"title", caseSensitive: caseSensitive));
}

extension NoteQueryProperty on QueryBuilder<Note, Note, QQueryProperty> {
  QueryBuilder<Note, int, QQueryOperations> idProperty() => QueryBuilder.apply(this, (query) => query.addPropertyName(r"id"));

  QueryBuilder<Note, DateTime, QQueryOperations> dateProperty() => QueryBuilder.apply(this, (query) => query.addPropertyName(r"date"));

  QueryBuilder<Note, String, QQueryOperations> textProperty() => QueryBuilder.apply(this, (query) => query.addPropertyName(r"text"));

  QueryBuilder<Note, String, QQueryOperations> titleProperty() => QueryBuilder.apply(this, (query) => query.addPropertyName(r"title"));
}
