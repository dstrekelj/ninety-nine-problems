package solutions;

/**
 * Find out whether a list is a palindrome.
 */
class Problem06
{
  static public function isPalindrome<T>(Sequence : Array<T>) : Bool
  {
    var index : Int = 0;

    while (Sequence[index] != null) index++;

    var lastIndex : Int = index - 1;
    var distance : Int = index;

    while (distance-- > 0)
    {
      var fromLeft : T = Sequence[lastIndex - distance];
      var fromRight : T = Sequence[distance];
      if (fromLeft != fromRight) return false;
    }
      
    return true;
  }
}