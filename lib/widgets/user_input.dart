import 'package:flutter/material.dart';
class UserInput extends StatelessWidget {
  final TextEditingController textEditingControllerl;
  final bool isPass;
  final TextInputType textInputType;
  final String hintText;
  dynamic InputIcon;
  Icon? endIcon;
  UserInput({Key? key, required this.textEditingControllerl, required this.textInputType, required this.hintText, this.isPass = false, this.InputIcon,this.endIcon }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextField(
      style: const TextStyle(color: Color.fromRGBO(158, 158, 158, 1),fontSize: 16),
      controller: textEditingControllerl,
      decoration: InputDecoration(


        labelStyle: TextStyle(color: Color.fromRGBO(158, 158, 158, 1)),
        prefixIcon: Icon(InputIcon, color: Color.fromRGBO(158, 158, 158, 1),),
        prefixIconColor: const Color.fromRGBO(158, 158, 158, 1),
        fillColor: const Color.fromRGBO(31, 34, 42, 1),
        hintText: hintText,
        suffixIcon: endIcon,
        suffixIconColor: const Color.fromRGBO(158, 158, 158, 1),

        hintStyle: TextStyle(color: Color.fromRGBO(158, 158, 158, 1)),
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}



class UserInputMultiline extends StatelessWidget {
  final TextEditingController textEditingControllerl;
  final bool isPass;
  final TextInputType textInputType;
  final String hintText;
  //dynamic InputIcon;
  //Icon? endIcon;
  UserInputMultiline({Key? key, required this.textEditingControllerl, required this.textInputType, required this.hintText, this.isPass = false, }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextField(

      style: const TextStyle(color: Color(0xff9e9e9e),
        fontSize: 16,
        fontWeight: FontWeight.bold,),
      controller: textEditingControllerl,
maxLines: 6,
      decoration: InputDecoration(




        labelStyle: TextStyle(color: Color.fromRGBO(158, 158, 158, 1)),
       // prefixIcon: Icon(InputIcon, color: Color.fromRGBO(158, 158, 158, 1),),
       // prefixIconColor: const Color.fromRGBO(158, 158, 158, 1),
        fillColor: const Color.fromRGBO(31, 34, 42, 1),
        hintText: hintText,
        //suffixIcon: endIcon,
       // suffixIconColor: const Color.fromRGBO(158, 158, 158, 1),

        hintStyle: TextStyle(color: Color.fromRGBO(158, 158, 158, 1)),
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        filled: true,
        contentPadding: const EdgeInsets.only(left: 15,right: 8,top: 8,bottom: 8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}

class UserInput2 extends StatelessWidget {
  final TextEditingController textEditingControllerl;
  final bool isPass;
  final TextInputType textInputType;
  final String hintText;
  dynamic endicon;
  UserInput2({Key? key, required this.textEditingControllerl, required this.textInputType, required this.hintText, this.isPass = false,this.endicon}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return TextField(
      style: const TextStyle(
        color: Color(0xff9e9e9e),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      controller: textEditingControllerl,
      decoration: InputDecoration(
        suffixIcon: endicon,


        labelStyle: TextStyle(

        ),
        //prefixIcon: Icon(InputIcon, color: Color.fromRGBO(158, 158, 158, 1),),
        prefixIconColor: const Color.fromRGBO(158, 158, 158, 1),
        fillColor: const Color.fromRGBO(31, 34, 42, 1),
        hintText: hintText,
        //suffixIcon: endIcon,
        suffixIconColor: const Color.fromRGBO(158, 158, 158, 1),

        hintStyle: TextStyle(color: Color.fromRGBO(158, 158, 158, 1)),
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
          borderRadius: BorderRadius.circular(8),
        ),
        filled: true,
        contentPadding: const EdgeInsets.only(left: 15,right: 8,top: 8,bottom: 8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}







