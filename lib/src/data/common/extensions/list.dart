import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

extension ListExtension<E> on List<E> {
  List<E> separate(E separator) {
    if (isEmpty) return [];
    var result = <E>[
      for (var i = 0; i < length - 1; i++) ...[this[i], separator],
      this[length - 1]
    ];

    return result;
  }

  List<E> separateWithEdges(E separator) {
    var result = <E>[
      separator,
      for (var i = 0; i < length; i++) ...[this[i], separator]
    ];

    return result;
  }

  List<Widget> separateWithPadding(EdgeInsets insets) {
    assert(this is List<Widget>);
    var result = <Widget>[
      for (var i = 0; i < length - 1; i++) ...[
        Padding(
          padding: insets,
          child: this[i] as Widget,
        )
      ],
      this[length - 1] as Widget,
    ];

    return result;
  }

  List<Widget> coverWithPadding(EdgeInsets insets) {
    assert(this is List<Widget>);
    var result = <Widget>[
      for (var i = 0; i < length; i++) ...[
        Padding(
          padding: insets,
          child: this[i] as Widget,
        )
      ]
    ];

    return result;
  }

  bool compare(List<E>? other) {
    Function eq = const ListEquality().equals;
    return eq(this, other);
  }

  bool compareR(List<E>? other) {
    Function eq = const ListEquality().equals;
    return !eq(this, other);
  }

  bool deepCompare(List<E>? other) {
    Function eq = const DeepCollectionEquality().equals;
    return eq(this, other);
  }

  bool deepCompareR(List<E>? other) {
    Function eq = const DeepCollectionEquality().equals;
    return !eq(this, other);
  }

  List<T> removeNull<T>() {
    List<T> result = [];
    for (var i = 0; i < length; i++) {
      if (this[i] != null) result.add(this[i] as T);
    }

    return result;
  }
}
