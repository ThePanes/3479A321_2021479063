import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:aplication_laboratorio/entity/actividad.dart';

class DatabaseHelper {
  // Singleton
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  // Inicializa la base de datos
  Future<void> initializeDatabase() async {
    await database;
  }

  // Getter para obtener la base de datos
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Método privado para inicializar la base de datos
  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'activity_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  // Creación de la tabla actividades
  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE actividades (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombre TEXT NOT NULL,
        fecha INTEGER NOT NULL
      )
    ''');
  }

  // Insertar actividad
  Future<void> insertActivity(Actividad actividad) async {
    final db = await database;
    await db.insert(
      'actividades',
      actividad.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Recuperar todas las actividades
  Future<List<Actividad>> getActivities() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('actividades');

    return List.generate(maps.length, (i) {
      return Actividad(
        id: maps[i]['id'] as int,
        nombre: maps[i]['nombre'] as String,
        fecha: maps[i]['fecha'] as int,
      );
    });
  }

  // Actualizar actividad
  Future<void> updateActivity(Actividad actividad) async {
    final db = await database;
    await db.update(
      'actividades',
      actividad.toMap(),
      where: 'id = ?',
      whereArgs: [actividad.id],
    );
  }

  // Eliminar actividad
  Future<void> deleteActivity(int id) async {
    final db = await database;
    await db.delete(
      'actividades',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Cerrar la base de datos (opcional pero buena práctica)
  Future<void> close() async {
    final db = await database;
    db.close();
  }
}