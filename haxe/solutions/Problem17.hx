package solutions;

/**
 * Split list into two parts.
 */
class Problem17
{
  static public function split<T>(N : Int, Sequence : Array<T>) : Array<Array<T>>
  {
    var split : Array<Array<T>> = [[],[]];

    var index : Int = 0;

    while (Sequence[index] != null)
    {
      if (index < N)
        split[0][index] = Sequence[index];
      else
        split[1][index - N] = Sequence[index];
      index++;
    }

    return split;
  }
}