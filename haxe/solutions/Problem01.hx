package solutions;

/**
 * Find last element of list.
 */
class Problem01
{
  static public function myLast<T>(Sequence : Array<T>) : T
  {
    var index : Int = 0;

    while (Sequence[index] != null) index++;

    return Sequence[index - 1];
  }
}