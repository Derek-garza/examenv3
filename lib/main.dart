import 'package:flutter/material.dart';

class Productos {
  final int codigo;
  final String nombre;
  final double peso;
  final double precio;
  final int stock;
  final int idProducto;

  Productos({
    required this.codigo,
    required this.nombre,
    required this.peso,
    required this.precio,
    required this.stock,
    required this.idProducto,
  });
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Productos> productos = [
      Productos(
        codigo: 123,
        nombre: 'Laptop',
        peso: 2.5,
        precio: 1200.0,
        stock: 10,
        idProducto: 1,
      ),
      Productos(
        codigo: 456,
        nombre: 'Teléfono',
        peso: 0.2,
        precio: 800.0,
        stock: 20,
        idProducto: 2,
      ),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de productos \n Derek Garza Martinez'),
          backgroundColor: Colors.blue, // AppBar azul
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildProductoContainer(productos[0], Colors.blue[100]!),
              SizedBox(height: 20),
              _buildProductoContainer(productos[1], Colors.green[100]!),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductoContainer(Productos producto, Color color) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Código: ${producto.codigo}'),
          Text('Nombre: ${producto.nombre}'),
          Text('Peso: ${producto.peso} kg'),
          Text('Precio: \$${producto.precio}'),
          Text('Stock: ${producto.stock}'),
          Text('ID: ${producto.idProducto}'),
        ],
      ),
    );
  }
}
