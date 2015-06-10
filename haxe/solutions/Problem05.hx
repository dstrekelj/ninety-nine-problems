package solutions;

/**
 * Reverse a list.
 */
class Problem05
{
  static public function myReverse<T>(Sequence : Array<T>) : Array<T>
  {
    var index : Int = 0;

    while (Sequence[index] != null) index++;

    var lastIndex : Int = index - 1;
    var reverse : Array<T> = new Array<T>();

    while (index-- > 0) reverse[lastIndex - index] = Sequence[index];

    return reverse;
  }
}