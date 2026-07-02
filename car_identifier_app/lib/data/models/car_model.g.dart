// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCarModelCollection on Isar {
  IsarCollection<CarModel> get carModels => this.collection();
}

const CarModelSchema = CollectionSchema(
  name: r'CarModel',
  id: -7339873665292748562,
  properties: {
    r'bodyDoors': PropertySchema(
      id: 0,
      name: r'bodyDoors',
      type: IsarType.long,
    ),
    r'bodySeats': PropertySchema(
      id: 1,
      name: r'bodySeats',
      type: IsarType.long,
    ),
    r'bodyType': PropertySchema(
      id: 2,
      name: r'bodyType',
      type: IsarType.string,
    ),
    r'engineCylinders': PropertySchema(
      id: 3,
      name: r'engineCylinders',
      type: IsarType.string,
    ),
    r'engineDriveType': PropertySchema(
      id: 4,
      name: r'engineDriveType',
      type: IsarType.string,
    ),
    r'engineFuelType': PropertySchema(
      id: 5,
      name: r'engineFuelType',
      type: IsarType.string,
    ),
    r'engineHp': PropertySchema(
      id: 6,
      name: r'engineHp',
      type: IsarType.double,
    ),
    r'engineRpm': PropertySchema(
      id: 7,
      name: r'engineRpm',
      type: IsarType.long,
    ),
    r'engineSize': PropertySchema(
      id: 8,
      name: r'engineSize',
      type: IsarType.double,
    ),
    r'engineTransmission': PropertySchema(
      id: 9,
      name: r'engineTransmission',
      type: IsarType.string,
    ),
    r'make': PropertySchema(
      id: 10,
      name: r'make',
      type: IsarType.string,
    ),
    r'makeId': PropertySchema(
      id: 11,
      name: r'makeId',
      type: IsarType.long,
    ),
    r'makeModel': PropertySchema(
      id: 12,
      name: r'makeModel',
      type: IsarType.string,
    ),
    r'model': PropertySchema(
      id: 13,
      name: r'model',
      type: IsarType.string,
    ),
    r'trimDescription': PropertySchema(
      id: 14,
      name: r'trimDescription',
      type: IsarType.string,
    )
  },
  estimateSize: _carModelEstimateSize,
  serialize: _carModelSerialize,
  deserialize: _carModelDeserialize,
  deserializeProp: _carModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'makeModel': IndexSchema(
      id: 8506206695741287717,
      name: r'makeModel',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'makeModel',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'makeId': IndexSchema(
      id: -3973630332308290205,
      name: r'makeId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'makeId',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'engineDriveType': IndexSchema(
      id: -7502992696587845581,
      name: r'engineDriveType',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'engineDriveType',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'engineTransmission': IndexSchema(
      id: -2879220629094813858,
      name: r'engineTransmission',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'engineTransmission',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    ),
    r'bodyType': IndexSchema(
      id: 270114770552657681,
      name: r'bodyType',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'bodyType',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _carModelGetId,
  getLinks: _carModelGetLinks,
  attach: _carModelAttach,
  version: '3.1.0+1',
);

int _carModelEstimateSize(
  CarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bodyType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.engineCylinders;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.engineDriveType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.engineFuelType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.engineTransmission;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.make;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.makeModel.length * 3;
  {
    final value = object.model;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.trimDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _carModelSerialize(
  CarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bodyDoors);
  writer.writeLong(offsets[1], object.bodySeats);
  writer.writeString(offsets[2], object.bodyType);
  writer.writeString(offsets[3], object.engineCylinders);
  writer.writeString(offsets[4], object.engineDriveType);
  writer.writeString(offsets[5], object.engineFuelType);
  writer.writeDouble(offsets[6], object.engineHp);
  writer.writeLong(offsets[7], object.engineRpm);
  writer.writeDouble(offsets[8], object.engineSize);
  writer.writeString(offsets[9], object.engineTransmission);
  writer.writeString(offsets[10], object.make);
  writer.writeLong(offsets[11], object.makeId);
  writer.writeString(offsets[12], object.makeModel);
  writer.writeString(offsets[13], object.model);
  writer.writeString(offsets[14], object.trimDescription);
}

CarModel _carModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CarModel();
  object.bodyDoors = reader.readLongOrNull(offsets[0]);
  object.bodySeats = reader.readLongOrNull(offsets[1]);
  object.bodyType = reader.readStringOrNull(offsets[2]);
  object.engineCylinders = reader.readStringOrNull(offsets[3]);
  object.engineDriveType = reader.readStringOrNull(offsets[4]);
  object.engineFuelType = reader.readStringOrNull(offsets[5]);
  object.engineHp = reader.readDoubleOrNull(offsets[6]);
  object.engineRpm = reader.readLongOrNull(offsets[7]);
  object.engineSize = reader.readDoubleOrNull(offsets[8]);
  object.engineTransmission = reader.readStringOrNull(offsets[9]);
  object.id = id;
  object.make = reader.readStringOrNull(offsets[10]);
  object.makeId = reader.readLongOrNull(offsets[11]);
  object.makeModel = reader.readString(offsets[12]);
  object.model = reader.readStringOrNull(offsets[13]);
  object.trimDescription = reader.readStringOrNull(offsets[14]);
  return object;
}

P _carModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _carModelGetId(CarModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _carModelGetLinks(CarModel object) {
  return [];
}

void _carModelAttach(IsarCollection<dynamic> col, Id id, CarModel object) {
  object.id = id;
}

extension CarModelQueryWhereSort on QueryBuilder<CarModel, CarModel, QWhere> {
  QueryBuilder<CarModel, CarModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhere> anyMakeModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'makeModel'),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhere> anyMakeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'makeId'),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhere> anyEngineDriveType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'engineDriveType'),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhere> anyEngineTransmission() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'engineTransmission'),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhere> anyBodyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'bodyType'),
      );
    });
  }
}

extension CarModelQueryWhere on QueryBuilder<CarModel, CarModel, QWhereClause> {
  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeModelEqualTo(
      String makeModel) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'makeModel',
        value: [makeModel],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeModelNotEqualTo(
      String makeModel) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'makeModel',
              lower: [],
              upper: [makeModel],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'makeModel',
              lower: [makeModel],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'makeModel',
              lower: [makeModel],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'makeModel',
              lower: [],
              upper: [makeModel],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeModelGreaterThan(
    String makeModel, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'makeModel',
        lower: [makeModel],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeModelLessThan(
    String makeModel, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'makeModel',
        lower: [],
        upper: [makeModel],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeModelBetween(
    String lowerMakeModel,
    String upperMakeModel, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'makeModel',
        lower: [lowerMakeModel],
        includeLower: includeLower,
        upper: [upperMakeModel],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeModelStartsWith(
      String MakeModelPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'makeModel',
        lower: [MakeModelPrefix],
        upper: ['$MakeModelPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeModelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'makeModel',
        value: [''],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeModelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'makeModel',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'makeModel',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'makeModel',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'makeModel',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'makeId',
        value: [null],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'makeId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeIdEqualTo(
      int? makeId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'makeId',
        value: [makeId],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeIdNotEqualTo(
      int? makeId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'makeId',
              lower: [],
              upper: [makeId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'makeId',
              lower: [makeId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'makeId',
              lower: [makeId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'makeId',
              lower: [],
              upper: [makeId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeIdGreaterThan(
    int? makeId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'makeId',
        lower: [makeId],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeIdLessThan(
    int? makeId, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'makeId',
        lower: [],
        upper: [makeId],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> makeIdBetween(
    int? lowerMakeId,
    int? upperMakeId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'makeId',
        lower: [lowerMakeId],
        includeLower: includeLower,
        upper: [upperMakeId],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> engineDriveTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'engineDriveType',
        value: [null],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineDriveTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'engineDriveType',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> engineDriveTypeEqualTo(
      String? engineDriveType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'engineDriveType',
        value: [engineDriveType],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> engineDriveTypeNotEqualTo(
      String? engineDriveType) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'engineDriveType',
              lower: [],
              upper: [engineDriveType],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'engineDriveType',
              lower: [engineDriveType],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'engineDriveType',
              lower: [engineDriveType],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'engineDriveType',
              lower: [],
              upper: [engineDriveType],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineDriveTypeGreaterThan(
    String? engineDriveType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'engineDriveType',
        lower: [engineDriveType],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> engineDriveTypeLessThan(
    String? engineDriveType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'engineDriveType',
        lower: [],
        upper: [engineDriveType],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> engineDriveTypeBetween(
    String? lowerEngineDriveType,
    String? upperEngineDriveType, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'engineDriveType',
        lower: [lowerEngineDriveType],
        includeLower: includeLower,
        upper: [upperEngineDriveType],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> engineDriveTypeStartsWith(
      String EngineDriveTypePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'engineDriveType',
        lower: [EngineDriveTypePrefix],
        upper: ['$EngineDriveTypePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> engineDriveTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'engineDriveType',
        value: [''],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineDriveTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'engineDriveType',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'engineDriveType',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'engineDriveType',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'engineDriveType',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineTransmissionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'engineTransmission',
        value: [null],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineTransmissionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'engineTransmission',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> engineTransmissionEqualTo(
      String? engineTransmission) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'engineTransmission',
        value: [engineTransmission],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineTransmissionNotEqualTo(String? engineTransmission) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'engineTransmission',
              lower: [],
              upper: [engineTransmission],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'engineTransmission',
              lower: [engineTransmission],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'engineTransmission',
              lower: [engineTransmission],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'engineTransmission',
              lower: [],
              upper: [engineTransmission],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineTransmissionGreaterThan(
    String? engineTransmission, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'engineTransmission',
        lower: [engineTransmission],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineTransmissionLessThan(
    String? engineTransmission, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'engineTransmission',
        lower: [],
        upper: [engineTransmission],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> engineTransmissionBetween(
    String? lowerEngineTransmission,
    String? upperEngineTransmission, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'engineTransmission',
        lower: [lowerEngineTransmission],
        includeLower: includeLower,
        upper: [upperEngineTransmission],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineTransmissionStartsWith(String EngineTransmissionPrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'engineTransmission',
        lower: [EngineTransmissionPrefix],
        upper: ['$EngineTransmissionPrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineTransmissionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'engineTransmission',
        value: [''],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause>
      engineTransmissionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'engineTransmission',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'engineTransmission',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'engineTransmission',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'engineTransmission',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> bodyTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'bodyType',
        value: [null],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> bodyTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bodyType',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> bodyTypeEqualTo(
      String? bodyType) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'bodyType',
        value: [bodyType],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> bodyTypeNotEqualTo(
      String? bodyType) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bodyType',
              lower: [],
              upper: [bodyType],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bodyType',
              lower: [bodyType],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bodyType',
              lower: [bodyType],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bodyType',
              lower: [],
              upper: [bodyType],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> bodyTypeGreaterThan(
    String? bodyType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bodyType',
        lower: [bodyType],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> bodyTypeLessThan(
    String? bodyType, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bodyType',
        lower: [],
        upper: [bodyType],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> bodyTypeBetween(
    String? lowerBodyType,
    String? upperBodyType, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bodyType',
        lower: [lowerBodyType],
        includeLower: includeLower,
        upper: [upperBodyType],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> bodyTypeStartsWith(
      String BodyTypePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bodyType',
        lower: [BodyTypePrefix],
        upper: ['$BodyTypePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> bodyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'bodyType',
        value: [''],
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterWhereClause> bodyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'bodyType',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'bodyType',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'bodyType',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'bodyType',
              upper: [''],
            ));
      }
    });
  }
}

extension CarModelQueryFilter
    on QueryBuilder<CarModel, CarModel, QFilterCondition> {
  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyDoorsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bodyDoors',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyDoorsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bodyDoors',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyDoorsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bodyDoors',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyDoorsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bodyDoors',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyDoorsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bodyDoors',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyDoorsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bodyDoors',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodySeatsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bodySeats',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodySeatsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bodySeats',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodySeatsEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bodySeats',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodySeatsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bodySeats',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodySeatsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bodySeats',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodySeatsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bodySeats',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bodyType',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bodyType',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bodyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bodyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bodyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bodyType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bodyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bodyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bodyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bodyType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bodyType',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> bodyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bodyType',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engineCylinders',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engineCylinders',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineCylinders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'engineCylinders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'engineCylinders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'engineCylinders',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'engineCylinders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'engineCylinders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'engineCylinders',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'engineCylinders',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineCylinders',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineCylindersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'engineCylinders',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engineDriveType',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engineDriveType',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineDriveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'engineDriveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'engineDriveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'engineDriveType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'engineDriveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'engineDriveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'engineDriveType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'engineDriveType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineDriveType',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineDriveTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'engineDriveType',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engineFuelType',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engineFuelType',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineFuelTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineFuelTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'engineFuelType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'engineFuelType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineFuelTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'engineFuelType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineFuelType',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineFuelTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'engineFuelType',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engineHp',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engineHp',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineHp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'engineHp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'engineHp',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineHpBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'engineHp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineRpmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engineRpm',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineRpmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engineRpm',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineRpmEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineRpm',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineRpmGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'engineRpm',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineRpmLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'engineRpm',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineRpmBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'engineRpm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineSizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engineSize',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineSizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engineSize',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineSizeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineSize',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineSizeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'engineSize',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineSizeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'engineSize',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> engineSizeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'engineSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'engineTransmission',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'engineTransmission',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineTransmission',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'engineTransmission',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'engineTransmission',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'engineTransmission',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'engineTransmission',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'engineTransmission',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'engineTransmission',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'engineTransmission',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'engineTransmission',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      engineTransmissionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'engineTransmission',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
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

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idLessThan(
    Id value, {
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

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
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

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'make',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'make',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'make',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'make',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'make',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'make',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'make',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'makeId',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'makeId',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'makeId',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'makeId',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'makeId',
        value: value,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'makeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeModelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'makeModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeModelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'makeModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeModelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'makeModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeModelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'makeModel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeModelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'makeModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeModelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'makeModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeModelContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'makeModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeModelMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'makeModel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> makeModelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'makeModel',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      makeModelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'makeModel',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'model',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'model',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'model',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'model',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'model',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'model',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition> modelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'model',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'trimDescription',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'trimDescription',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trimDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trimDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trimDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trimDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'trimDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'trimDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'trimDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'trimDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trimDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterFilterCondition>
      trimDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'trimDescription',
        value: '',
      ));
    });
  }
}

extension CarModelQueryObject
    on QueryBuilder<CarModel, CarModel, QFilterCondition> {}

extension CarModelQueryLinks
    on QueryBuilder<CarModel, CarModel, QFilterCondition> {}

extension CarModelQuerySortBy on QueryBuilder<CarModel, CarModel, QSortBy> {
  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByBodyDoors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyDoors', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByBodyDoorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyDoors', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByBodySeats() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodySeats', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByBodySeatsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodySeats', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByBodyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyType', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByBodyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyType', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineCylinders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineCylinders', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineCylindersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineCylinders', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineDriveType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineDriveType', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineDriveTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineDriveType', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineFuelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineFuelType', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineFuelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineFuelType', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineHp', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineHp', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineRpm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineRpm', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineRpmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineRpm', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineSize', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineSize', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByEngineTransmission() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineTransmission', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy>
      sortByEngineTransmissionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineTransmission', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByMakeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByMakeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'makeId', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByMakeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'makeId', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByMakeModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'makeModel', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByMakeModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'makeModel', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByTrimDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trimDescription', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> sortByTrimDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trimDescription', Sort.desc);
    });
  }
}

extension CarModelQuerySortThenBy
    on QueryBuilder<CarModel, CarModel, QSortThenBy> {
  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByBodyDoors() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyDoors', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByBodyDoorsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyDoors', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByBodySeats() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodySeats', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByBodySeatsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodySeats', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByBodyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyType', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByBodyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyType', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineCylinders() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineCylinders', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineCylindersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineCylinders', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineDriveType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineDriveType', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineDriveTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineDriveType', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineFuelType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineFuelType', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineFuelTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineFuelType', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineHp', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineHp', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineRpm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineRpm', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineRpmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineRpm', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineSize', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineSize', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByEngineTransmission() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineTransmission', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy>
      thenByEngineTransmissionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'engineTransmission', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByMake() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByMakeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'make', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByMakeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'makeId', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByMakeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'makeId', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByMakeModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'makeModel', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByMakeModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'makeModel', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'model', Sort.desc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByTrimDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trimDescription', Sort.asc);
    });
  }

  QueryBuilder<CarModel, CarModel, QAfterSortBy> thenByTrimDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trimDescription', Sort.desc);
    });
  }
}

extension CarModelQueryWhereDistinct
    on QueryBuilder<CarModel, CarModel, QDistinct> {
  QueryBuilder<CarModel, CarModel, QDistinct> distinctByBodyDoors() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bodyDoors');
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByBodySeats() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bodySeats');
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByBodyType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bodyType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByEngineCylinders(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engineCylinders',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByEngineDriveType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engineDriveType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByEngineFuelType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engineFuelType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByEngineHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engineHp');
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByEngineRpm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engineRpm');
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByEngineSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engineSize');
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByEngineTransmission(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'engineTransmission',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByMake(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'make', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByMakeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'makeId');
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByMakeModel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'makeModel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByModel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'model', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarModel, CarModel, QDistinct> distinctByTrimDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trimDescription',
          caseSensitive: caseSensitive);
    });
  }
}

extension CarModelQueryProperty
    on QueryBuilder<CarModel, CarModel, QQueryProperty> {
  QueryBuilder<CarModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CarModel, int?, QQueryOperations> bodyDoorsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bodyDoors');
    });
  }

  QueryBuilder<CarModel, int?, QQueryOperations> bodySeatsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bodySeats');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> bodyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bodyType');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> engineCylindersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engineCylinders');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> engineDriveTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engineDriveType');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> engineFuelTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engineFuelType');
    });
  }

  QueryBuilder<CarModel, double?, QQueryOperations> engineHpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engineHp');
    });
  }

  QueryBuilder<CarModel, int?, QQueryOperations> engineRpmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engineRpm');
    });
  }

  QueryBuilder<CarModel, double?, QQueryOperations> engineSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engineSize');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations>
      engineTransmissionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'engineTransmission');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> makeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'make');
    });
  }

  QueryBuilder<CarModel, int?, QQueryOperations> makeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'makeId');
    });
  }

  QueryBuilder<CarModel, String, QQueryOperations> makeModelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'makeModel');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> modelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'model');
    });
  }

  QueryBuilder<CarModel, String?, QQueryOperations> trimDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trimDescription');
    });
  }
}
