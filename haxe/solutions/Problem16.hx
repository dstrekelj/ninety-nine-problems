package solutions;

/**
 * Drop every Nth element from array.
 */
class Problem16
{
  static public function drop<T>(N : Int, Sequence : Array<T>) : Array<T>
  {
    var drop : Array<T> = new Array<T>();
    var dropIndex : Int = 0;

    var index : Int = 0;

    while (Sequence[index] != null)
    {
      if ((index + 1) % N != 0)
        drop[dropIndex++] = Sequence[index];
      index++;
    }

    return drop;
  }
}