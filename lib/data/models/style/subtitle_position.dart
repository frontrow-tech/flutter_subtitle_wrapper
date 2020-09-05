class SubtitlePosition {
  final double left;
  final double right;
  final double top;
  final double bottom;

  const SubtitlePosition(
      {this.left = 0, this.right = 0, this.top, this.bottom = 50});

  SubtitlePosition copyWith({
    double left,
    double right,
    double top,
    double bottom,
  }) {
    return SubtitlePosition(
      left: left ?? this.left,
      right: right ?? this.right,
      top: top ?? this.top,
      bottom: bottom ?? this.bottom,
    );
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is SubtitlePosition &&
        o.left == left &&
        o.right == right &&
        o.top == top &&
        o.bottom == bottom;
  }

  @override
  int get hashCode {
    return left.hashCode ^ right.hashCode ^ top.hashCode ^ bottom.hashCode;
  }
}
