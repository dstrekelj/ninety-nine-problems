package solutions;

/**
 * Find the last but one element of list.
 */
class Problem02
{
  static public function myButLast<T>(Sequence : Array<T>) : T
  {
    var index : Int = 0;

    while (Sequence[index] != null) index++;

    return Sequence[index - 2];
  }
}