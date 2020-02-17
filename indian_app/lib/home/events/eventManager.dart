import 'package:flutter/material.dart';
import '../../styles/textStyles.dart';

class Events extends StatelessWidget {
  Widget dataTable(BuildContext context) {
    var rows = eventos
        .map((treino) => DataRow(
              //  selected: selectedRows.contains(treino[0]),
              //  onSelectChanged: (bool selected) {
              //    onSelectedRow(selected, treino[0]);
              //  },
              cells: [
                DataCell(Center(child: Text(treino[0]))),
                DataCell(Center(child: Text(treino[1]))),
                DataCell(Center(child: Text(treino[2]))),
                DataCell(Center(child: Text(treino[3]))),
                DataCell(Center(child: Text(treino[4]))),
                DataCell(Center(child: Text(treino[5]))),
                DataCell(Center(child: Text(""))),
              ],
            ))
        .toList();

    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: DataTable(
        horizontalMargin: 10,
        columnSpacing: 0,
        columns: [
          DataColumn(
              label: Container(
                  width: 50,
                  child: Center(child: dataTableColumnTitleStyle("Inscrito")))),
          DataColumn(
              label: Container(
                  width: 60,
                  child: Center(child: dataTableColumnTitleStyle("Data")))),
          DataColumn(
              label: Container(
                  width: 70,
                  child: Center(child: dataTableColumnTitleStyle("Evento")))),
          DataColumn(
              label: Container(
                  width: 45,
                  child: Center(child: dataTableColumnTitleStyle("Local")))),
          DataColumn(
              label: Container(
                  width: 35,
                  child: Center(child: dataTableColumnTitleStyle("Preco")))),
          DataColumn(
              label: Container(
                  width: 55,
                  child:
                      Center(child: dataTableColumnTitleStyle("Inscritos")))),
          DataColumn(
              label: Container(
                  width: 10,
                  child: Center(child: dataTableColumnTitleStyle(" ")))),
        ],
        rows: rows,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: Center(
                    child: Container(
                        color: Colors.grey,
                        child: eventPageTitleStyle("Eventos Futuros."))),
              ),
            ),
            dataTable(context)
          ],
        ),
      ),
    );
  }
}

List<List<String>> eventos = [
  ["sim", "12-09-2020", "Passeio de Domingo", "Lisboa", "15\$", "15"],
  ["nao", "13-11-2020", "Aniversario", "Bolina", "15\$", "2"],
  ["nao", "10-12-2021", "Leitao", "Bairrada", "15\$", "34"],
  ["nao", "15-02-2021", "Praga", "Praga", "15\$", "17"],
  ["sim", "12-12-2022", "Paris", "Paris", "15\$", "9"],
  ["sim", "17-12-2022", "Cabo Norte", "Noruega", "15\$", "12"],
  ["sim", "14-12-2022", "Alentejo", "Mertola", "15\$", "6"],
  ["nao", "15-12-2022", "Dengue", "Dengue", "15\$", "14"],
];
