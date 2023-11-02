import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Estudiante.dart';
import 'Materias.dart';

class Materias extends StatefulWidget {
  @override
  _MateriasState createState() => _MateriasState();
}

class _MateriasState extends State<Materias> {
  List<String> dropdownList = ['Estudiantes', 'Materias'];
  List<String> dropdownList2 = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5'
  ];

  Map<String, Function> screenMap = {
    'Estudiantes': () => Materia(),
    'Materias': () => Materias(),
  };

  int _selectedIndex = 2;
  int _selectedIndex2 = -1;
  bool _isDropdownOpen = false;

  void handleSelection(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void toggleDropdown() {
    setState(() {
      _isDropdownOpen = !_isDropdownOpen;
    });
  }

  void _navigateToNuevaPantalla(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Materia()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Materias'),
      ),
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  height: 80,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width - 100,
                  margin: EdgeInsets.only(
                      left: 25, right: 25, bottom: 20, top: 20),
                  color: Colors.white,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Grado'),
                            ),
                            DropdownButton(
                              value: _selectedIndex2 == -1
                                  ? null
                                  : dropdownList2[_selectedIndex2],
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              underline: Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedIndex2 =
                                      dropdownList2.indexOf(newValue!);
                                });
                              },
                              items: dropdownList2.map<
                                  DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Grupo'),
                            ),
                            DropdownButton(
                              value: _selectedIndex2 == -1
                                  ? null
                                  : dropdownList2[_selectedIndex2],
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              underline: Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedIndex2 =
                                      dropdownList2.indexOf(newValue!);
                                });
                              },
                              items: dropdownList2.map<
                                  DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Materia'),
                            ),
                            DropdownButton(
                              value: _selectedIndex2 == -1
                                  ? null
                                  : dropdownList2[_selectedIndex2],
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              underline: Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedIndex2 =
                                      dropdownList2.indexOf(newValue!);
                                });
                              },
                              items: dropdownList2.map<
                                  DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Profesor'),
                            ),
                            DropdownButton(
                              value: _selectedIndex2 == -1
                                  ? null
                                  : dropdownList2[_selectedIndex2],
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                              underline: Container(
                                height: 2,
                                color: Colors.black,
                              ),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedIndex2 =
                                      dropdownList2.indexOf(newValue!);
                                });
                              },
                              items: dropdownList2.map<
                                  DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),

                        ElevatedButton(
                          onPressed: () {

                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,

                            onPrimary: Colors.white,

                            textStyle: TextStyle(fontSize: 16),

                            padding: EdgeInsets.symmetric(horizontal: 30,
                                vertical: 15),
                          ),
                          child: Text('Buscar'),
                        ),

                        GestureDetector(
                          onTap: () {

                          },
                          child: Text(
                            'Limpiar filtros',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration
                                  .underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    child:
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
                      height: MediaQuery
                          .of(context)
                          .size
                          .height - 200,
                      margin: EdgeInsets.only(left: 25, right: 25, bottom: 70),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, bottom: 20, top: 20),
                            child: Text(
                              'Resultados',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),

                          Table(
                            columnWidths: {
                              0: FlexColumnWidth(1.0),
                              1: FlexColumnWidth(2.0),
                              2: FlexColumnWidth(3.0),
                              3: FlexColumnWidth(2.0),
                              4: FlexColumnWidth(1.0),
                            },
                            border: TableBorder.all(color: Colors.white),
                            defaultVerticalAlignment: TableCellVerticalAlignment
                                .middle,
                            children: [
                              TableRow(
                                decoration: BoxDecoration(
                                  color: Color(0xFF016691),
                                ),
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Código',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Materia',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Profesor',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Grado',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        'Acciones',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                decoration: BoxDecoration(color: Colors.white),
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('SOC001'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('Geografía'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('Fabio León Restrepo'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('6, 7, 8, 9, 10, 11'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          IconButton(
                                            icon: SvgPicture.asset(
                                              'assets/images/ic-show.svg',
                                              semanticsLabel: 'Show',),
                                            onPressed: () {
                                              _navigateToNuevaPantalla(context);
                                            },
                                          ),
                                          IconButton(
                                            icon: SvgPicture.asset(
                                                'assets/images/ic-trash.svg',
                                                semanticsLabel: 'Trash'),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (
                                                    BuildContext context) {
                                                  return AlertDialog(
                                                    backgroundColor: Colors
                                                        .white,

                                                    content: Text(
                                                        "¿Estás seguro de que deseas eliminar la materia?"),

                                                    actions: <Widget>[
                                                      TextButton(
                                                        child: Text('Sí'),
                                                        onPressed: () {

                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: Text('No'),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                decoration: BoxDecoration(color: Colors.white),
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('SOC002'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('Historia'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('Jaime Alberto Giraldo'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('6, 7, 8'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          IconButton(
                                            icon: SvgPicture.asset(
                                              'assets/images/ic-show.svg',
                                              semanticsLabel: 'Show',),
                                            onPressed: () {

                                            },
                                          ),
                                          IconButton(
                                            icon: SvgPicture.asset(
                                                'assets/images/ic-trash.svg',
                                                semanticsLabel: 'Trash'),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (
                                                    BuildContext context) {
                                                  return AlertDialog(
                                                    backgroundColor: Colors
                                                        .white,

                                                    content: Text(
                                                        "¿Estás seguro de que deseas eliminar la materia?"),

                                                    actions: <Widget>[
                                                      TextButton(
                                                        child: Text('Sí'),
                                                        onPressed: () {

                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: Text('No'),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                decoration: BoxDecoration(color: Colors.white),
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('SOC003'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('Filosofia'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('Adriana María Zuluaga'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('9, 10, 11'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          IconButton(
                                            icon: SvgPicture.asset(
                                              'assets/images/ic-show.svg',
                                              semanticsLabel: 'Show',),
                                            onPressed: () {

                                            },
                                          ),
                                          IconButton(
                                            icon: SvgPicture.asset(
                                                'assets/images/ic-trash.svg',
                                                semanticsLabel: 'Trash'),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (
                                                    BuildContext context) {
                                                  return AlertDialog(
                                                    backgroundColor: Colors
                                                        .white,

                                                    content: Text(
                                                        "¿Estás seguro de que deseas eliminar la materia?"),

                                                    actions: <Widget>[
                                                      TextButton(
                                                        child: Text('Sí'),
                                                        onPressed: () {

                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: Text('No'),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                decoration: BoxDecoration(color: Colors.white),
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('IDM001'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('Español'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('Fabiola Ramírez'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('6, 7, 8, 9, 10, 11'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          IconButton(
                                            icon: SvgPicture.asset(
                                              'assets/images/ic-show.svg',
                                              semanticsLabel: 'Show',),
                                            onPressed: () {

                                            },
                                          ),
                                          IconButton(
                                            icon: SvgPicture.asset(
                                                'assets/images/ic-trash.svg',
                                                semanticsLabel: 'Trash'),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (
                                                    BuildContext context) {
                                                  return AlertDialog(
                                                    backgroundColor: Colors
                                                        .white,

                                                    content: Text(
                                                        "¿Estás seguro de que deseas eliminar la materia?"),

                                                    actions: <Widget>[
                                                      TextButton(
                                                        child: Text('Sí'),
                                                        onPressed: () {

                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: Text('No'),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              TableRow(
                                decoration: BoxDecoration(color: Colors.white),
                                children: [
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('IDM003'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('Inglés'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('María Dolores Smicth'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text('6, 7, 8, 9, 10, 11'),
                                    ),
                                  ),
                                  TableCell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        children: [
                                          IconButton(
                                            icon: SvgPicture.asset(
                                              'assets/images/ic-show.svg',
                                              semanticsLabel: 'Show',),
                                            onPressed: () {

                                            },
                                          ),
                                          IconButton(
                                            icon: SvgPicture.asset(
                                                'assets/images/ic-trash.svg',
                                                semanticsLabel: 'Trash'),
                                            onPressed: () {
                                              showDialog(
                                                context: context,
                                                builder: (
                                                    BuildContext context) {
                                                  return AlertDialog(
                                                    backgroundColor: Colors
                                                        .white,

                                                    content: Text(
                                                        "¿Estás seguro de que deseas eliminar la materia?"),

                                                    actions: <Widget>[
                                                      TextButton(
                                                        child: Text('Sí'),
                                                        onPressed: () {

                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: Text('No'),
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_isDropdownOpen)
            Positioned(
              top: 50,
              left: 0,
              child: Container(
                width: 200,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                color: Color(0xFF6A737C),
                child: ListView(
                  children: dropdownList
                      .asMap()
                      .entries
                      .map((entry) {
                    int index = entry.key;
                    String value = entry.value;
                    return Container(
                      color: _selectedIndex == index
                          ? Color(0xFFC8CCD0)
                          : Color(0xFF6A737C),
                      child: ListTile(
                        title: Text(
                          value,
                          style: TextStyle(
                            color: _selectedIndex == index
                                ? Color(0xFF555A5E)
                                : Colors.white,
                          ),
                        ),
                        onTap: () {
                          handleSelection(index);
                          String selectedValue = dropdownList[index];
                          Function? screenType = screenMap[selectedValue];

                          if (screenType != null) {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => screenType(),
                            ));
                          }
                        },
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Icon(Icons.menu),
              onPressed: toggleDropdown,
            ),
          ),
        ],
      ),
    );
  }
}
