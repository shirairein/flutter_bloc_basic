
import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CustomFilledButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: Colors.blueGrey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.yellowAccent
          ),
        ),
      ),
    );
  }
}

class CostumTextButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CostumTextButton(
      {super.key,
      required this.title,
      this.width = double.infinity,
      this.height = 40,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.purple,
            )
          ),
        ));
  }
}

class CustomInputButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  const CustomInputButton({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blueGrey,
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color:Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class CostumFromField extends StatelessWidget {
  final String title;
  final String? hintText;
  final TextEditingController? controller;
  final bool obscureText;
  
  const CostumFromField(
      {super.key,
      required this.title,
       this.obscureText = false,
      this.controller, this.hintText});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        title,
        style:TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black87
        )
      ),
      const SizedBox(
        height: 8,
      ),
      TextFormField(
        controller: controller,
        obscureText: obscureText,
        obscuringCharacter: obscureText ? '*' : ' ',
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            )),
      ),
    ]);
  }
}

