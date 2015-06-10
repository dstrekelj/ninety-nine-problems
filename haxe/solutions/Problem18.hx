package solutions;

/**
 * Extract a slice from array, excluding the last element.
 */
class Problem18
{
  static public function slice<T>(From : Int, To : Int, Sequence : Array<T>) : Array<T>
  {
    var slice : Array<T> = new Array<T>();

    for (i in From...(To - 1)) slice[i - From] = Sequence[i];

    return slice;
  }
}