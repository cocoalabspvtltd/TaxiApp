// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:dartz/dartz.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/utils/exports.dart';

class WWFailureHandler extends StatelessWidget {
  final Function() onTap;
  final Either<MainFailure, ErrorModel> failure;
  const WWFailureHandler(
      {super.key, required this.failure, required this.onTap});

  @override
  Widget build(BuildContext context) {
    String funFailure() {
      return failure.fold((l) {
        if (failure == const MainFailure.timeout())
          return 'Connection timeout';
        else if (failure == const MainFailure.networkFailure())
          return 'please check internet connection';
        else if (failure == const MainFailure.serverFailure())
          return 'server failure';
        else
          return 'Something went wrong';
      }, (r) => 'Something went wrong');
    }

    return WWErrorRetry(message: funFailure(), onTap: onTap);
  }
}

class WWErrorRetry extends StatelessWidget {
  final Function() onTap;
  final String? message;
  const WWErrorRetry({super.key, required this.onTap, this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message ?? 'Something went wrong',
          style: s6,
        ),
        SizedBox(height: 20),
        customButton(
          txt: 'Try Again',
          height: false,
          color: violetcolor,
          onpressed: onTap,
        )
      ],
    );
  }
}
