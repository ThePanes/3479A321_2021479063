import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Actividad {
  final int id;
  final int fecha;
  final String nombre;
  const Actividad({required this.id, required this.fecha, required this.nombre });
  Map<String, Object?> toMap() {
    return {'id': id,'fecha': fecha, 'nombre': nombre};
  }

  // Implement toString to make it easier to see information about
  // each actividad when using the print statement.
  @override
  String toString() {
    return 'actividad{id: $id, fecha: $fecha, nombre: $nombre}';
  }
}

void main() async {
  // Avoid errors caused by flutter upgrade.
  // Importing 'packfecha:flutter/widgets.dart' is required.
  WidgetsFlutterBinding.ensureInitialized();
  // Open the database and store the reference.
  final database = openDatabase(
    // Set the path to the database. Note: Using the `join` function from the
    // `path` packfecha is best practice to ensure the path is correctly
    // constructed for each platform.
    join(await getDatabasesPath(), 'actividadgie_database.db'),
    // When the database is first created, create a table to store actividades.
    onCreate: (db, version) {
      // Run the CREATE TABLE statement on the database.
      return db.execute(
        'CREATE TABLE actividades(id INTEGER PRIMARY KEY, nombre TEXT, fecha INTEGER)',
      );
    },
    // Set the version. This executes the onCreate function and provides a
    // path to perform database upgrades and downgrades.
    version: 1,
  );

  // Define a function that inserts actividades into the database
  Future<void> insertactividad(Actividad actividad) async {
    // Get a reference to the database.
    final db = await database;

    // Insert the actividad into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same actividad is inserted twice.
    //
    // In this case, replace any previous data.
    await db.insert(
      'actividades',
      actividad.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // A method that retrieves all the actividades from the actividades table.
  Future<List<Actividad>> actividades() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all the actividades.
    final List<Map<String, Object?>> actividadMaps = await db.query('actividades');

    // Convert the list of each actividad's fields into a list of `actividad` objects.
    return [
      for (final {'id': id as int, 'nombre': nombre as String, 'fecha': fecha as int}
          in actividadMaps)
        Actividad(id: id,fecha: fecha, nombre: nombre),
    ];
  }

  Future<void> updateactividad(Actividad actividad) async {
    // Get a reference to the database.
    final db = await database;

    // Update the given actividad.
    await db.update(
      'actividades',
      actividad.toMap(),
      // Ensure that the actividad has a matching id.
      where: 'id = ?',
      // Pass the actividad's id as a whereArg to prevent SQL injection.
      whereArgs: [actividad.id],
    );
  }

  Future<void> deleteactividad(int id) async {
    // Get a reference to the database.
    final db = await database;

    // Remove the actividad from the database.
    await db.delete(
      'actividades',
      // Use a `where` clause to delete a specific actividad.
      where: 'id = ?',
      // Pass the actividad's id as a whereArg to prevent SQL injection.
      whereArgs: [id],
    );
  }

  // Create a actividad and add it to the actividades table
  var primeraActividad = Actividad(id: 0,fecha: 35, nombre: 'primeraActividad', );

  await insertactividad(primeraActividad);

  // Now, use the method above to retrieve all the actividades.
  print(await actividades()); // Prints a list that include primeraActividad.

  // Update primeraActividad's fecha and save it to the database.
  primeraActividad = Actividad(id: primeraActividad.id, fecha: primeraActividad.fecha + 7,nombre: primeraActividad.nombre);
  await updateactividad(primeraActividad);

  // Print the updated results.
  print(await actividades()); // Prints primeraActividad with fecha 42.

  // Delete primeraActividad from the database.
  await deleteactividad(primeraActividad.id);

  // Print the list of actividades (empty).
  print(await actividades());
}

