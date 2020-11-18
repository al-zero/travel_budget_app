import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travel_budget_app/Trip.dart';
import 'Trip.dart';

class HomeView extends StatelessWidget {
  final List<Trip> tripList = [
    Trip("Mutare", DateTime.now(), DateTime.now(), 200.0, "Car"),
    Trip("Harare", DateTime.now(), DateTime.now(), 200.0, "Car"),
    Trip("Bulawayo", DateTime.now(), DateTime.now(), 200.0, "Car"),
    Trip("Gweru", DateTime.now(), DateTime.now(), 200.0, "Car"),
    Trip("Victoria falls", DateTime.now(), DateTime.now(), 200.0, "Car"),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: new ListView.builder(
          itemCount: tripList.length,
          itemBuilder: (BuildContext context, int index) =>
              buildTripCard(context, index)),
    );
  }

  Widget buildTripCard(BuildContext context, int index) {
    final trip = tripList[index];

    return new Container(
      child: new Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: new Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
                child: Row(
                  children: [
                    new Text(trip.title, style: TextStyle(fontSize: 30.0),),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0, bottom: 80.0),
                child: Row(
                  children: [
                    new Text(
                        "${DateFormat('dd/mm/yyyy').format(trip.startDate).toString()} - ${DateFormat('dd/mm/yyyy').format(trip.startDate).toString()}"),
                    Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Row(
                  children: [
                    new Text("\$${trip.budget.toStringAsFixed(2)}", style: TextStyle(fontSize: 35.0),),
                    Spacer(),
                    Icon(Icons.directions_car),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
