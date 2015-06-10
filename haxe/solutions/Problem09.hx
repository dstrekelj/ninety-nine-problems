package solutions;

/**
 * Pack consecutive duplicates of list elements into sublists.
 */
class Problem09
{
  static public function pack<T>(Sequence : Array<T>) : Array<Array<T>>
  {
    var pack : Array<Array<T>> = new Array<Array<T>>();
    var packIndex : Int = 0;
    
    var subarray : Array<T> = new Array<T>();
    var subarrayIndex : Int = 0;
    
    var index : Int = 0;
    var duplicateIndex : Int = 0;

    while (Sequence[duplicateIndex++] != null)
    {
      subarray[subarrayIndex] = Sequence[index];
      
      if (Sequence[index] == Sequence[duplicateIndex])
      {
        subarrayIndex++;
      }
      else
      {
        index = duplicateIndex;

        pack[packIndex] = subarray;
        packIndex++;

        subarray = [];
        subarrayIndex = 0;
      }
    }

    return pack;
  }
}