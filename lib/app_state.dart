import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _drainnumber = prefs.getInt('ff_drainnumber') ?? _drainnumber;
    _drainentries = prefs.getStringList('ff_drainentries') ?? _drainentries;
    _drain1 = prefs.getBool('ff_drain1') ?? _drain1;
    _drain2 = prefs.getBool('ff_drain2') ?? _drain2;
    _drain3 = prefs.getBool('ff_drain3') ?? _drain3;
    _drain4 = prefs.getBool('ff_drain4') ?? _drain4;
    _drain5 = prefs.getBool('ff_drain5') ?? _drain5;
    _drain6 = prefs.getBool('ff_drain6') ?? _drain6;
    _drains =
        prefs.getStringList('ff_drains')?.map((x) => x == 'true').toList() ??
            _drains;
    _nonstanford = prefs.getBool('ff_nonstanford') ?? _nonstanford;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _drainnumber = 3;
  int get drainnumber => _drainnumber;
  set drainnumber(int _value) {
    _drainnumber = _value;
    prefs.setInt('ff_drainnumber', _value);
  }

  List<String> _drainentries = [];
  List<String> get drainentries => _drainentries;
  set drainentries(List<String> _value) {
    _drainentries = _value;
    prefs.setStringList('ff_drainentries', _value);
  }

  void addToDrainentries(String _value) {
    _drainentries.add(_value);
    prefs.setStringList('ff_drainentries', _drainentries);
  }

  void removeFromDrainentries(String _value) {
    _drainentries.remove(_value);
    prefs.setStringList('ff_drainentries', _drainentries);
  }

  void removeAtIndexFromDrainentries(int _index) {
    _drainentries.removeAt(_index);
    prefs.setStringList('ff_drainentries', _drainentries);
  }

  bool _drain1 = false;
  bool get drain1 => _drain1;
  set drain1(bool _value) {
    _drain1 = _value;
    prefs.setBool('ff_drain1', _value);
  }

  bool _drain2 = false;
  bool get drain2 => _drain2;
  set drain2(bool _value) {
    _drain2 = _value;
    prefs.setBool('ff_drain2', _value);
  }

  bool _drain3 = false;
  bool get drain3 => _drain3;
  set drain3(bool _value) {
    _drain3 = _value;
    prefs.setBool('ff_drain3', _value);
  }

  bool _drain4 = false;
  bool get drain4 => _drain4;
  set drain4(bool _value) {
    _drain4 = _value;
    prefs.setBool('ff_drain4', _value);
  }

  bool _drain5 = false;
  bool get drain5 => _drain5;
  set drain5(bool _value) {
    _drain5 = _value;
    prefs.setBool('ff_drain5', _value);
  }

  bool _drain6 = false;
  bool get drain6 => _drain6;
  set drain6(bool _value) {
    _drain6 = _value;
    prefs.setBool('ff_drain6', _value);
  }

  List<bool> _drains = [];
  List<bool> get drains => _drains;
  set drains(List<bool> _value) {
    _drains = _value;
    prefs.setStringList('ff_drains', _value.map((x) => x.toString()).toList());
  }

  void addToDrains(bool _value) {
    _drains.add(_value);
    prefs.setStringList('ff_drains', _drains.map((x) => x.toString()).toList());
  }

  void removeFromDrains(bool _value) {
    _drains.remove(_value);
    prefs.setStringList('ff_drains', _drains.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromDrains(int _index) {
    _drains.removeAt(_index);
    prefs.setStringList('ff_drains', _drains.map((x) => x.toString()).toList());
  }

  List<double> _drain1output = [40, 30.5, 36, 26, 39, 26, 27, 25, 23];
  List<double> get drain1output => _drain1output;
  set drain1output(List<double> _value) {
    _drain1output = _value;
  }

  void addToDrain1output(double _value) {
    _drain1output.add(_value);
  }

  void removeFromDrain1output(double _value) {
    _drain1output.remove(_value);
  }

  void removeAtIndexFromDrain1output(int _index) {
    _drain1output.removeAt(_index);
  }

  List<double> _draintimes = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  List<double> get draintimes => _draintimes;
  set draintimes(List<double> _value) {
    _draintimes = _value;
  }

  void addToDraintimes(double _value) {
    _draintimes.add(_value);
  }

  void removeFromDraintimes(double _value) {
    _draintimes.remove(_value);
  }

  void removeAtIndexFromDraintimes(int _index) {
    _draintimes.removeAt(_index);
  }

  List<double> _drainouput = [25, 25, 25, 25, 25, 25, 25, 25, 25];
  List<double> get drainouput => _drainouput;
  set drainouput(List<double> _value) {
    _drainouput = _value;
  }

  void addToDrainouput(double _value) {
    _drainouput.add(_value);
  }

  void removeFromDrainouput(double _value) {
    _drainouput.remove(_value);
  }

  void removeAtIndexFromDrainouput(int _index) {
    _drainouput.removeAt(_index);
  }

  List<double> _drain2output = [50, 40, 42, 45, 46, 41, 32, 31, 29];
  List<double> get drain2output => _drain2output;
  set drain2output(List<double> _value) {
    _drain2output = _value;
  }

  void addToDrain2output(double _value) {
    _drain2output.add(_value);
  }

  void removeFromDrain2output(double _value) {
    _drain2output.remove(_value);
  }

  void removeAtIndexFromDrain2output(int _index) {
    _drain2output.removeAt(_index);
  }

  bool _nonstanford = false;
  bool get nonstanford => _nonstanford;
  set nonstanford(bool _value) {
    _nonstanford = _value;
    prefs.setBool('ff_nonstanford', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
