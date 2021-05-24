import 'package:e2e_arch/features/user/domain/models/address_model.dart';
import 'package:e2e_arch/features/user/domain/models/geo_model.dart';
import 'package:e2e_arch/features/user/domain/models/user_model.dart';

const UserModel userModel = UserModel(
  id: 2,
  name: 'User X',
  username: 'Bret',
  address: AddressModel(
    street: 'Kulas Light',
    suite: 'Apt. 556',
    city: 'Gwenborough',
    zipcode: '92998-3874',
    geo: GeoModel(lat: '-37.3159', lng: '81.1496'),
  ),
  points: 0,
);

const userJson = <String, dynamic>{
  "id": 2,
  "name": "User X",
  "username": "Bret",
  "address": {
    "street": "Kulas Light",
    "suite": "Apt. 556",
    "city": "Gwenborough",
    "zipcode": "92998-3874",
    "geo": {"lat": "-37.3159", "lng": "81.1496"},
  },
  "points": 0,
};
