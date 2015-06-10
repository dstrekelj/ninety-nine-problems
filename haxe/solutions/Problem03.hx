package solutions;

/**
 * Find the K'th element of list The first element is number 1.
 */
class Problem03
{
  static public function elementAt<T>(Sequence : Array<T>, Index : Int) : T
  {
    return Sequence[Index - 1];
  }
}