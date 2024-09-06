import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFE3EDFD),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: const Text(
                            "Bonjour",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: "Nunito",
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          child: const Text(
                            "Mr Admin",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontFamily: "Nunito",
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(

                      onTap: (){
                        Navigator.pushNamed(context, "/profil");
                      },
                      child: CircleAvatar(
                        radius: 50,
                        //backgroundColor: Color(0xFFFFFFFF),
                        child:  ClipOval(
                          child: Image.asset(
                            "Assets/Images/profil.png",
                            fit: BoxFit.cover,
                          ),
                        )
                      ),
                    ),
                  ],
                ),
              ),
              /*Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Recent Ticket",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        height: 2
                    ),
                  ),
                  Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      child: SingleChildScrollView (
                        scrollDirection: Axis.vertical,
                        child: DataTable(
                          dividerThickness: 0.0,
                          headingRowHeight: 56,
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                "Cat",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Détails",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                "Statut",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w900
                                ),
                              ),
                            ),
                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(
                                  CircleAvatar(
                                    backgroundColor : Color(0xFF8DDF82),
                                    child: Text(
                                      "Th",
                                      style: TextStyle(
                                          fontSize: 25
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                      "Lorem"
                                  ),
                                ),
                                DataCell(
                                  Text(
                                      "Lorem"
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(
                                  CircleAvatar(
                                    backgroundColor: Color(0xFF1E90FF),
                                    child: Text(
                                      "Te",
                                      style: TextStyle(
                                          fontSize: 25
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                      "Lorem"
                                  ),
                                ),
                                DataCell(
                                  Text(
                                      "Lorem"
                                  ),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(
                                  CircleAvatar(
                                    backgroundColor: Color(0xFFFFD96F),
                                    child: Text(
                                      "Pr",
                                      style: TextStyle(
                                          fontSize: 25
                                      ),
                                    ),
                                  ),
                                ),
                                DataCell(
                                  Text(
                                      "Lorem"
                                  ),
                                ),
                                DataCell(
                                  Text(
                                      "Lorem"
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                  ),
                ],
              ),*/
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 13),
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Statistique",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                          ),
                        ),
                        Container(
                          width: 250,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 80,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFACBDF2),
                                      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      )
                                    ),
                                    onPressed: (){},
                                    child: const Text(
                                      "En cours, %",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Nunito"
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF16DBCC),
                                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        )
                                    ),
                                    onPressed: (){},
                                    child: const Text(
                                      "Résolu, %",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Nunito"
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFFFF74A5),
                                        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        )
                                    ),
                                    onPressed: (){},
                                    child: const Text(
                                      "Attente, %",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Nunito"
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ),
                      ],
                    ),
                  ),
                  //Statistic
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 13),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    width: 155,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                          flex: 1,
                                          child :CircleAvatar(
                                              backgroundColor: Color(0xFF8DDF82),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                              child: Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(10),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      child: const Text(
                                                        "Total",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Color(0xFF17C200),
                                                          fontFamily: "Nunito",
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      child: const Text(
                                                        "12,750",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Color(0xFF000000),
                                                          fontFamily: "Nunito",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    width: 155,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                          flex: 1,
                                          child :CircleAvatar(
                                            backgroundColor: Color(0xFFACBDF2),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                              child: Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(10),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      child: const Text(
                                                        "En cours",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Color(0xFFACBDF2),
                                                          fontFamily: "Nunito",
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      child: const Text(
                                                        "5,600",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Color(0xFF000000),
                                                          fontFamily: "Nunito",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    width: 155,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                          flex: 1,
                                          child :CircleAvatar(
                                            backgroundColor: Color(0xFFFF74A5),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                              child: Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(10),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      child: const Text(
                                                        "Attente",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Color(0xFFFF74A5),
                                                          fontFamily: "Nunito",
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      child: const Text(
                                                        "3,460",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Color(0xFF000000),
                                                          fontFamily: "Nunito",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                            Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    width: 155,
                                    height: 85,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      children: [
                                        const Expanded(
                                          flex: 1,
                                          child :CircleAvatar(
                                            backgroundColor: Color(0xFF16DBCC),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                              child: Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(10),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      child: const Text(
                                                        "Résolu",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Color(0xFF16DBCC),
                                                          fontFamily: "Nunito",
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      child: const Text(
                                                        "7,920",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: Color(0xFF000000),
                                                          fontFamily: "Nunito",
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w900,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            ),
                          ],
                        ),
                      ],
                    )
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 13),
                    width: double.infinity,
                    height: 248.07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.spaceAround,
                          maxY: 100,
                          barGroups: [
                            BarChartGroupData(
                              x: 1,
                              barRods: [
                                BarChartRodData(
                                    toY: 100 * 0.59,
                                    color: Color(0xFFC2CDEE),
                                    width: 45,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 2,
                              barRods: [
                                BarChartRodData(
                                    toY: 100 * 0.90,
                                    color: Color(0xFFC2CDEE),
                                    width: 45,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 3,
                              barRods: [
                                BarChartRodData(
                                    toY: 100 * 0.61,
                                    color: Color(0xFFC2CDEE),
                                    width: 45,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 4,
                              barRods: [
                                BarChartRodData(
                                    toY: 100 * 0.31,
                                    color: Color(0xFFC2CDEE),
                                    width: 45,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 5,
                              barRods: [
                                BarChartRodData(
                                    toY: 100 * 0.82,
                                    color: Color(0xFF16DBCC),
                                    width: 45,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 6,
                              barRods: [
                                BarChartRodData(
                                    toY: 100 * 0.56,
                                    color: Color(0xFFC2CDEE),
                                    width: 45,
                                    borderRadius: BorderRadius.circular(10)
                                ),
                              ],
                            ),
                            BarChartGroupData(
                              x: 7,
                              barRods: [
                                BarChartRodData(
                                  toY: 100 * 0.998,
                                  color: Color(0xFFC2CDEE),
                                  width: 45,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ],
                            ),
                          ],
                          titlesData: FlTitlesData(
                            leftTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: (value, meta) {
                                  switch (value.toInt()) {
                                    case 1:
                                      return const Text('Lun',
                                        style: TextStyle(
                                            color: Color(0xFF718EBF)
                                        ),
                                      );
                                    case 2:
                                      return const Text('Mar',
                                        style: TextStyle(
                                            color: Color(0xFF718EBF)
                                        ),
                                      );
                                    case 3:
                                      return const Text('Mer',
                                        style: TextStyle(
                                            color: Color(0xFF718EBF)
                                        ),
                                      );
                                    case 4:
                                      return const Text('Jeu',
                                        style: TextStyle(
                                            color: Color(0xFF718EBF)
                                        ),);
                                    case 5:
                                      return const Text('Ven',
                                        style: TextStyle(
                                            color: Color(0xFF718EBF)
                                        ),
                                      );
                                    case 6:
                                      return const Text('Sam',
                                        style: TextStyle(
                                            color: Color(0xFF718EBF)
                                        ),
                                      );
                                    case 7:
                                      return const Text('Dim',
                                        style: TextStyle(
                                            color: Color(0xFF718EBF)
                                        ),
                                      );
                                    default:
                                      return const Text('',
                                        style: TextStyle(
                                            color: Color(0xFF718EBF)
                                        ),
                                      );
                                  }
                                },
                              ),
                            ),
                            topTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: const AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                          ),
                          borderData: FlBorderData(show: false),
                          gridData: FlGridData(show: false),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 318,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: LayoutBuilder(
                      builder: ( context, constraints) {
                        double heigth = constraints.maxHeight;
                        double width = constraints.maxWidth;
                        return Column(
                          children: [
                            Expanded(
                              flex: 1,
                              child: PieChart(
                                PieChartData(
                                  sections: [
                                    PieChartSectionData(
                                      color: Color(0xFF16DBCC),
                                      value: 50,
                                      title: '50%',
                                      radius: 70,
                                    ),
                                    PieChartSectionData(
                                      color: Color(0xFF4C78FF),
                                      value: 30,
                                      title: '30%',
                                      radius: 60,
                                    ),
                                    PieChartSectionData(
                                      color: Color(0xFFFF82AC),
                                      value: 20,
                                      title: '20%',
                                      radius: 50,
                                    ),
                                  ],
                                  borderData: FlBorderData(show: true),
                                  sectionsSpace: 0,
                                  centerSpaceRadius: 40,
                                ),
                              ),
                            ),
                            Container(
                              width: width * 0.7,
                              height: 50,
                              child: LayoutBuilder(
                                builder: (context, constraints){
                                  double width1 = constraints.maxWidth;
                                  double height1 = constraints.maxHeight;
                                  return Wrap(
                                    direction: Axis.horizontal,
                                    spacing: width1 * 0.0636,
                                    runSpacing: 8,
                                    children: [
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: width1 * 0.45,
                                        ),
                                        height: 18,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                              width: 20,
                                              child: const CircleAvatar(
                                                radius: 50,
                                                backgroundColor: Color(0xFF4C78FF),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "En cours",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: width1 * 0.45,
                                        ),
                                        height: 18,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                              width: 20,
                                              child: const CircleAvatar(
                                                radius: 50,
                                                backgroundColor: Color(0xFFFF82AC),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "En attente",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: width1 * 0.45,
                                        ),
                                        height: 18,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 20,
                                              margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                              child: const CircleAvatar(
                                                radius: 50,
                                                backgroundColor: Color(0xFF16DBCC),
                                              ),
                                            ),
                                            Container(
                                              child: const Text(
                                                "En cours",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              )
                            )
                          ],
                        );
                      },
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
