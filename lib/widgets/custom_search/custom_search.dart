import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key, required this.onChanged});

  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode focus = FocusScope.of(context);
        if (!focus.hasPrimaryFocus && focus.hasFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(14.0),
          boxShadow: const [
            BoxShadow(
              color: Color(0x29000000),
              offset: Offset(3, 5),
              blurRadius: 12,
            ),
          ],
        ),
        child: TextFormField(
          onChanged: (String val) {
            onChanged(val);
          },
          decoration: const InputDecoration(
            icon: Icon(Icons.search),
            border: InputBorder.none,
            hintText: 'Search client final',
            hintStyle: TextStyle(
              fontSize: 16,
              color: Color(0xff949494),
            ),
          ),
        ),
      ),
    );
  }
}
