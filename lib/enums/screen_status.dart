import 'package:flutter/material.dart';

enum ScreenStatus {
  normal,
  loading,
  success,
  error,
  empty;

  Widget onlyWhen({
    required Widget onLoading,
    required Widget onSuccess,
    required Widget onError,
    required Widget onEmpty,
  }) {
    switch (this) {
      case ScreenStatus.loading:
        return onLoading;
      case ScreenStatus.success:
        return onSuccess;
      case ScreenStatus.error:
        return onError;
      case ScreenStatus.empty:
        return onEmpty;
      default:
        return const SizedBox();
    }
  }

  Widget when() {
    switch (this) {
      case ScreenStatus.loading:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case ScreenStatus.success:
        return Center(
          child: Text(
            '데이터 가져오기 성공.',
            style: textStyle,
          ),
        );
      case ScreenStatus.error:
        return Center(
          child: Text(
            '에러가 발생했습니다. ❌❌❌❌',
            style: textStyle,
          ),
        );
      case ScreenStatus.empty:
        return Center(
          child: Text(
            '빈 목록입니다.',
            style: textStyle,
          ),
        );
      default:
        return const SizedBox();
    }
  }
}

TextStyle get textStyle => const TextStyle(fontSize: 20, color: Colors.black);
