import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider {
  // Create a singleton
  DBProvider._();

  static final DBProvider db = DBProvider._();

  String _dbName =
      'myDatabase7.db'; //----------------------------------------------------------

  Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await initDB();
    return _database;
  }

  initDB() async {
    // Get the location of our app directory. This is where files for our app,
    // and only our app, are stored. Files in this directory are deleted
    // when the app is deleted.
    Directory documentsDir = await getApplicationDocumentsDirectory();
    String path = join(documentsDir.path,
        _dbName); //doubt---------------------------------------------------------------------------------------------

    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) async {},
      onCreate: (Database db, int version) async {
        var baseTablesCreation = <Future>[
          // BillsModel.createTable(db),
          // StoresModel.createTable(db),
        ];
        await Future.wait(
            baseTablesCreation); //---------------------------------------------------------------------------------
      },
    );
  }
}
