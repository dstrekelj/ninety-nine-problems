package solutions;

/**
 * Decode a run-length encoded list.
 */
class Problem12
{
  static public function decodeModified<T>(Sequence : Array<Dynamic>) : Array<T>
  {
    var decode : Array<T> = new Array<T>();
    var decodeIndex : Int = 0;

    var index : Int = 0;

    while (Sequence[index] != null)
    {
      if (isArray(Sequence[index]))
      {
        for (i in 0...Sequence[index][0])
        {
          decode[decodeIndex + i] = Sequence[index][1];
        }
        decodeIndex += Sequence[index][0];
      }
      else
      {
        decode[decodeIndex] = Sequence[index];
        decodeIndex++;
      }

      index++;
    }

    return decode;
  }

  static private function isArray<T>(Object : Class<T>) : Bool
  {
    return (Type.getClassName(Type.getClass(Object)) == 'Array');
  }
}