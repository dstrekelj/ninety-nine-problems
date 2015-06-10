package solutions;

/**
 * Run-length encoding of a list.
 */
class Problem10
{
  static public function encode<T>(Sequence : Array<T>) : Array<Array<Dynamic>>
  {
    var encode : Array<Array<Dynamic>> = new Array<Array<Dynamic>>();
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
        subarray[0] = characterCount;
        subarray[1] = Sequence[index];

        characterCount = 1;
        index = duplicateIndex;

        encode[encodeIndex] = subarray;
        encodeIndex++;

        subarray = [];
        subarrayIndex = 0;
      }
    }

    return encode;
  }
}