import 'package:flutter/material.dart';

class FuelCalCualatorField extends StatelessWidget {
  TextEditingController _textEditingController;
  String _label;
  String _hint;
  double _border;
  TextInputType _inputType;
  FuelCalCualatorField(this._textEditingController, this._label, this._hint,
      this._border, this._inputType);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      keyboardType: _inputType,
      decoration: InputDecoration(
          labelText: _label,
          hintText: _hint,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(_border))),
    );
  }
}
