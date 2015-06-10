package solutions;

/**
 * Duplicate array elements.
 */
class Problem14
{
  static public function duplicate<T>(Sequence : Array<T>) : Array<T>
  {
    var duplicate : Array<T> = new Array<T>();
    var duplicateIndex : Int = 0;

    var index : Int = 0;

    while (Sequence[index] != null)
    {
      duplicate[duplicateIndex++] = Sequence[index];
      duplicate[duplicateIndex++] = Sequence[index];
      index++;
    }

    return duplicate;
  }
}