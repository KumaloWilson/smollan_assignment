import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../../core/constants/color_constants.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          height: 80,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: LoadingAnimationWidget.hexagonDots(
                    color: Theme.of(context).primaryColor,
                    size: 28
                ),
              ),

              const SizedBox(
                width: 20,
              ),

              Expanded(
                flex: 5,
                child: Text(
                  '$message.....',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
