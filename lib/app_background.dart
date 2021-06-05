import 'package:flutter/material.dart';
import 'package:snapping_sheet/snapping_sheet.dart';
import 'package:snappingsheet/grabbing.dart';

class AppBarAndBackground extends StatefulWidget {
  @override
  _AppBarAndBackgroundState createState() => _AppBarAndBackgroundState();
}

class _AppBarAndBackgroundState extends State<AppBarAndBackground> {
  final ScrollController listViewController = new ScrollController();
  int pages = 0;
  @override
  Widget build(BuildContext context) {
    return SnappingSheet(
      child: Padding(
        padding: const EdgeInsets.only(top: 280),
        child: Container(
          color: Colors.white,
          child: AnimatedOpacity(
            opacity: pages == 0 ? 1.0 : 0.0,
            duration: Duration(milliseconds: 1000),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      'https://placeimg.com/160/480/any',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      'https://placeimg.com/160/480/any',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      'https://placeimg.com/160/480/any',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                ),
                Container(
                  width: 160.0,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      'https://placeimg.com/160/480/any',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      lockOverflowDrag: true,
      onSheetMoved: (value) {
        setState(() {
          if (value.relativeToSnappingPositions < 0.5)
            pages = 1;
          else
            pages = 0;
        });
      },
      snappingPositions: [
        SnappingPosition.factor(
          snappingCurve: Curves.elasticOut,
          snappingDuration: Duration(milliseconds: 1750),
          positionFactor: 0.5,
        ),
        SnappingPosition.factor(
          positionFactor: 0.1,
          grabbingContentOffset: GrabbingContentOffset.top,
        ),
      ],
      grabbing: GrabbingWidget(),
      grabbingHeight: 75,
      sheetAbove: SnappingSheetContent(
        draggable: true,
        child: Container(
          color: Colors.indigo,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            reverse: true,
            padding: EdgeInsets.all(10).copyWith(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AnimatedOpacity(
                  opacity: pages == 1 ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Container(
                    height: 300,
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children: List.generate(4, (index) {
                        return Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.cleaning_services_outlined,
                                size: 50.0,
                                color: Colors.white,
                              ),
                              Text(
                                'Informação $index',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                Container(
                  width: 260.0,
                  height: 140.0,
                  color: Colors.indigo,
                  child: Image.asset(
                    'assets/images/fusca.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  'Fusca',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
