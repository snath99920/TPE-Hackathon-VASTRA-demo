import 'package:flutter/material.dart';

class OptionTile extends StatefulWidget {
  final String option, optionSelected;
  OptionTile({@required this.optionSelected, @required this.option});

  @override
  _OptionTileState createState() => _OptionTileState();
}

class _OptionTileState extends State<OptionTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
                border: Border.all(
                    color: widget.option == widget.optionSelected
                        // ? widget.optionSelected == widget.correctAns
                        ? Colors.blue.withOpacity(0.7)
                        // : Colors.red.withOpacity(0.7)
                        : Colors.grey,
                    width: 1.5),
                borderRadius: BorderRadius.circular(30)),
            alignment: Alignment.center,
            child: Flexible(
              child: Container(
                child: Text(
                  "${widget.option}",
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: widget.optionSelected == widget.option
                        // ? widget.correctAns == widget.optionSelected
                        ? Colors.blue.withOpacity(0.7)
                        // : Colors.red
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
