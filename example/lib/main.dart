import 'package:flutter/material.dart';
import 'package:flutter_horizontal_date_picker/flutter_horizontal_date_picker.dart';

class Example extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

const int _kSampleItemCount = 15;
const Duration _kSampleDurationToEndDay = Duration(days: 40);
const Duration _kSampleDurationToEndHour = Duration(hours: 30);
const Duration _kSampleDurationToEndMinute = Duration(minutes: 100);
const Duration _kSampleDurationToEndSecond = Duration(seconds: 120);

class _ExampleState extends State<Example> {
  DateTime? selected;
  bool use000000 = false;
  DateTime get _now => use000000 ? DateTime.now().to000000 : DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Skip current HH:mm:ss'),
                Checkbox(
                  value: use000000,
                  onChanged: (value) {
                    setState(() {
                      use000000 = value ?? false;
                    });
                  },
                ),
              ],
            ),
            Text('SampleItemCount=$_kSampleItemCount'),
            const SizedBox(height: 20),
            Text("Days"),
            HorizontalDatePicker(
              begin: _now,
              end: _now.add(_kSampleDurationToEndDay),
              selected: selected,
              onSelected: (item) {
                setState(() {
                  selected = item;
                });
              },
              itemBuilder: (DateTime itemValue, DateTime? selected) {
                var isSelected =
                    selected?.difference(itemValue).inMilliseconds == 0;
                return Text(
                  itemValue.formatted(pattern: "EEE\ndd/MM"),
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black54,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                );
              },
              itemCount: _kSampleItemCount,
              itemSpacing: 12,
            ),
            Divider(
              height: 12,
            ),
            Text("Hours"),
            HorizontalDatePicker(
              begin: _now,
              end: _now.add(_kSampleDurationToEndHour),
              selected: selected,
              onSelected: (item) {
                setState(() {
                  selected = item;
                });
              },
              itemBuilder: (DateTime itemValue, DateTime? selected) {
                var isSelected =
                    selected?.difference(itemValue).inMilliseconds == 0;
                return Text(
                  itemValue.formatted(pattern: "dd/MM\n\nHH:mm:ss"),
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black54,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                );
              },
              itemCount: _kSampleItemCount,
              itemSpacing: 12,
            ),
            Divider(
              height: 12,
            ),
            Text("Minutes"),
            HorizontalDatePicker(
              begin: _now,
              end: _now.add(_kSampleDurationToEndMinute),
              selected: selected,
              onSelected: (item) {
                setState(() {
                  selected = item;
                });
              },
              itemBuilder: (DateTime itemValue, DateTime? selected) {
                var isSelected =
                    selected?.difference(itemValue).inMilliseconds == 0;
                return Text(
                  itemValue.formatted(pattern: "dd/MM\n\nHH:mm:ss"),
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black54,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                );
              },
              itemCount: _kSampleItemCount,
              itemSpacing: 12,
            ),
            Divider(
              height: 12,
            ),
            Text("Seconds"),
            HorizontalDatePicker(
              begin: _now,
              end: _now.add(_kSampleDurationToEndSecond),
              selected: selected,
              onSelected: (item) {
                setState(() {
                  selected = item;
                });
              },
              itemBuilder: (DateTime itemValue, DateTime? selected) {
                var isSelected =
                    selected?.difference(itemValue).inMilliseconds == 0;
                return Text(
                  itemValue.formatted(pattern: "dd/MM\n\nHH:mm:ss"),
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.black54,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                );
              },
              itemCount: _kSampleItemCount,
              itemSpacing: 12,
            ),
          ],
        ),
      ),
    );
  }
}
