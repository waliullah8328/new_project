import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerScreen extends StatefulWidget {
  const TimePickerScreen({super.key});

  @override
  State<TimePickerScreen> createState() => _TimePickerScreenState();
}

class _TimePickerScreenState extends State<TimePickerScreen> {
   final timePicker = TextEditingController();
   final datePicker = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TimePickerScreen"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 150,right: 150),
            child: TextFormField(
              controller: timePicker,
              decoration: InputDecoration(
                labelText: "Select Time",

              ),
              onTap: () async {
                var time = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                setState(() {
                  timePicker.text = time!.format(context);
                });
              },
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 150,right: 150),
            child: TextFormField(
              controller: datePicker,
              decoration: InputDecoration(
                labelText: "Select Date",

              ),
              onTap: () async {
                DateTime? dateTime = await showDatePicker(context: context,initialDate: DateTime.now(), firstDate: DateTime(1995), lastDate: DateTime(2026));

                String formattedDate = DateFormat("yyyy-MMM- dd").format(dateTime!);

                setState(() {
                  datePicker.text =  formattedDate;

                });
              },
            ),
          )
        ],
      )
    );
  }
}
