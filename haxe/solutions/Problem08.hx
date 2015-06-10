package solutions;

/**
 * Eliminate consecutive duplicates of list elements.
 */
class Problem08
{
  static public function compress<T>(Sequence : Array<T>) : Array<T>
  {
    var compress : Array<T> = new Array<T>();
    var index : Int = 0;
    var duplicateIndex : Int = 0;
    var compressIndex : Int = 0;

    /*
    // I really love how shitty this is. Keeping it as a memento.
    while (Sequence[index] != null)
    {
      while (Sequence[index] == Sequence[duplicateIndex++]) {}
      compress[compressIndex] = Sequence[index];
      index = duplicateIndex - 1;
      compressIndex++;
    }
    */

    while (Sequence[duplicateIndex++] != null)
    {
      if (Sequence[index] != Sequence[duplicateIndex])
      {
        compress[compressIndex] = Sequence[index];
        index = duplicateIndex;
        compressIndex++;
      }
    }

    return compress;
  }
}