import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Welcome", 
                style: TextStyle(
                  fontSize: 32, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(height: 5),
              Text(
                "You want play ?",
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.white,
                ),
              )
            ],
          ),
          CircleAvatar(
            radius: 50,
            child: Image.asset(
              "assets/images/avatar.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      )
    );
  }
}