part of color;

class RgbaColor extends RgbColor {
  static const int aMin = 0;
  static const int aMax = 1;

  final num a;

  /**
   * Creates a [Color] using a vector describing its red, green, blue and alpha
   * values.
   *
   * The value for [r], [g], and [b] should be in the range between 0 and
   * 255 (inclusive). Values above this range will be assumed to be a value
   * of 255, and values below this range will be assumed to be a value of 0.
   * The value for [a] should be between 0 and 1 (1 means
   * opaque).
   *
   * Note that when converting an [RgbaColor] to a different color model that
   * doesn't provide alpha information, the alpha data [a] will be dropped.
   */
  const RgbaColor(num r, num g, num b, this.a) : super(r, g, b);


  RgbaColor toRgbaColor() => this;

  String toString() => "r: $r, g: $g, b: $b, a: $a";

  String toCssString() => 'rgba($r, $g, $b, $a)';

  Map<String, int> toMap() {
    return {'r': r.toInt(), 'g': g.toInt(), 'b': b.toInt(), 'a': a.toInt()};
  }

  RgbaColor clone() => RgbaColor(this.r, this.g, this.b, this.a);
}