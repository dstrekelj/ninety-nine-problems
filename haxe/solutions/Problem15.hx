package solutions;

/**
 * Duplicate array elements a given number of times.
 */
class Problem15
{
  static public function duplicateN<T>(Sequence : Array<T>, Times : Int) : Array<T>
  {
    var duplicate : Array<T> = new Array<T>();
    var duplicateIndex : Int = 0;
    var index : Int = 0;

    while (Sequence[index] != null)
    {
      for (i in 0...Times)
        duplicate[duplicateIndex++] = Sequence[index];
      index++;
    }

    return duplicate;
  }
}