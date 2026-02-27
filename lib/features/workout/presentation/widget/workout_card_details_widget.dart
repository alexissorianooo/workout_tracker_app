import 'package:flutter/material.dart';

class WorkoutCardDetailsWidget extends StatefulWidget {
  final String? label;
  final dynamic value;
  final Function(dynamic) callback;
  const WorkoutCardDetailsWidget({
    super.key,
    this.label,
    this.value,
    required this.callback,
  });

  @override
  State<WorkoutCardDetailsWidget> createState() => _WorkoutCardDetailsWidgetState();
}

class _WorkoutCardDetailsWidgetState extends State<WorkoutCardDetailsWidget> {
  late TextEditingController controller;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    // Create controller ONCE in initState, not in build()
    controller = TextEditingController(text: '${widget.value}');
    focusNode = FocusNode();
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        // Clear text on focus so the hint (previous value) shows through
        controller.clear();
      } else {
        // Restore the current value if the field was left empty
        if (controller.text.isEmpty) {
          controller.text = '${widget.value}';
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose(); // Clean up controller
    focusNode.dispose(); // Clean up focus node
    super.dispose();
  }

  TextInputType _getKeyboardType() {
    if (widget.value is int) {
      return TextInputType.number; // Shows number pad (0-9)
    } else if (widget.value is double) {
      return const TextInputType.numberWithOptions(
        decimal: true,
      ); // Shows number pad with decimal point
    } else {
      return TextInputType.text; // Shows regular keyboard for strings
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(widget.label ?? ''),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.grey[200],
            ),
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              onChanged: (stringValue) {
                // Convert string to appropriate type
                if (widget.value is int) {
                  int? callbackValue = int.tryParse(stringValue);
                  if (callbackValue != null) {
                    widget.callback(callbackValue);
                  }
                } else if (widget.value is double) {
                  double? callbackValue = double.tryParse(stringValue);
                  if (callbackValue != null) {
                    widget.callback(callbackValue);
                  }
                }
              },
              keyboardType: _getKeyboardType(),
              maxLines: 1,
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                border: InputBorder.none,
                isDense: true,
                hintText: controller.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
