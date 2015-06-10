package solutions;

/**
 * Find number of list elements.
 */
class Problem04
{
  static public function myLength<T>(Sequence : Array<T>) : Int
  {
    var index : Int = 0;

    while (Sequence[index] != null) index++;

    return index;
  }
}