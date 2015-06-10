package solutions;

/**
 * Modified run-length encoding. If an element has no duplicates
 * it is simply copied into the result array.
 */
class Problem11
{
  static public function encodeModified<T>(Sequence : Array<T>) : Array<Dynamic>
  {
    var encode : Array<Dynamic> = new Array<Dynamic>();
    var encodeIndex : Int = 0;

    var characterCount : Int = 1;

    var subarray : Array<Dynamic> = new Array<Dynamic>();
    var subarrayIndex : Int = 0;

    var index : Int = 0;
    var duplicateIndex : Int = 0;

    while (Sequence[duplicateIndex++] != null)
    {
      if (Sequence[index] == Sequence[duplicateIndex])
      {
        characterCount++;
        subarrayIndex++;
      }
      else
      {
        if (characterCount > 1)
        {
          subarray[0] = characterCount;
          subarray[1] = Sequence[index];
          encode[encodeIndex] = subarray;
        }
        else
        {
          encode[encodeIndex] = Sequence[index];
        }

        characterCount = 1;
        index = duplicateIndex;
        encodeIndex++;

        subarray = [];
        subarrayIndex = 0;
      }
    }

    return encode;
  }
}