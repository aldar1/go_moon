import 'package:flutter/material.dart';
class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key, 
    required this.values, 
    required this.width
  });

  final List<String> values;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width*0.05),
      width: width,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(53,53,53,1.0),
        borderRadius: BorderRadius.circular(10)
      ),
      child: DropdownButton(
        onChanged: (_){},
        value: values.first,
        items: values.map( 
          (e) => DropdownMenuItem(
            value: e, 
            child: Text(e)
          )
        ).toList(),
         underline: Container(),
         dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
         style: TextStyle(
          color: Colors.white
         ),
      ),
    );
  }
}