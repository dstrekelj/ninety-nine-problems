package tests;

class TestCases extends haxe.unit.TestCase
{
  var a1 : Array<String> = ['a', 'b', 'c', 'd'];
  var a2 : Array<Int> = [1, 2, 3, 4, 4, 3, 2, 1];
  var a3 : Array<String> = ['a', 'b', 'b', 'b', 'c', 'c', 'd', 'e', 'e', 'a'];

  public function testProblem01()
  {
    this.assertEquals(solutions.Problem01.myLast(a1), 'd');
    this.assertEquals(solutions.Problem01.myLast(a2),  1);
    this.assertEquals(solutions.Problem01.myLast(a3), 'a');
  }

  public function testProblem02()
  {
    this.assertEquals(solutions.Problem02.myButLast(a1), 'c');
    this.assertEquals(solutions.Problem02.myButLast(a2), 2);
    this.assertEquals(solutions.Problem02.myButLast(a3), 'e');
  }

  public function testProblem03()
  {
    this.assertEquals(solutions.Problem03.elementAt(a1, 2), 'b');
    this.assertEquals(solutions.Problem03.elementAt(a2, 2), 2);
    this.assertEquals(solutions.Problem03.elementAt(a3, 2), 'b');
  }

  public function testProblem04()
  {
    this.assertEquals(solutions.Problem04.myLength(a1), 4);
    this.assertEquals(solutions.Problem04.myLength(a2), 8);
    this.assertEquals(solutions.Problem04.myLength(a3), 10);
  }

  public function testProblem05()
  {
    this.assertEquals(Std.string(solutions.Problem05.myReverse(a1)), '[d,c,b,a]');
    this.assertEquals(Std.string(solutions.Problem05.myReverse(a2)), '[1,2,3,4,4,3,2,1]');
    this.assertEquals(Std.string(solutions.Problem05.myReverse(a3)), '[a,e,e,d,c,c,b,b,b,a]');
  }

  public function testProblem06()
  {
    this.assertEquals(solutions.Problem06.isPalindrome(a1), false);
    this.assertEquals(solutions.Problem06.isPalindrome(a2), true);
    this.assertEquals(solutions.Problem06.isPalindrome(a3), false);
  }

  public function testProblem08()
  {
    this.assertEquals(Std.string(solutions.Problem08.compress(a1)), '[a,b,c,d]');
    this.assertEquals(Std.string(solutions.Problem08.compress(a2)), '[1,2,3,4,3,2,1]');
    this.assertEquals(Std.string(solutions.Problem08.compress(a3)), '[a,b,c,d,e,a]');
  }

  public function testProblem09()
  {
    this.assertEquals(Std.string(solutions.Problem09.pack(a1)), '[[a],[b],[c],[d]]');
    this.assertEquals(Std.string(solutions.Problem09.pack(a2)), '[[1],[2],[3],[4,4],[3],[2],[1]]');
    this.assertEquals(Std.string(solutions.Problem09.pack(a3)), '[[a],[b,b,b],[c,c],[d],[e,e],[a]]');
  }

  public function testProblem10()
  {
    this.assertEquals(Std.string(solutions.Problem10.encode(a1)), '[[1,a],[1,b],[1,c],[1,d]]');
    this.assertEquals(Std.string(solutions.Problem10.encode(a2)), '[[1,1],[1,2],[1,3],[2,4],[1,3],[1,2],[1,1]]');
    this.assertEquals(Std.string(solutions.Problem10.encode(a3)), '[[1,a],[3,b],[2,c],[1,d],[2,e],[1,a]]');
  }

  public function testProblem11()
  {
    this.assertEquals(Std.string(solutions.Problem11.encodeModified(a1)), '[a,b,c,d]');
    this.assertEquals(Std.string(solutions.Problem11.encodeModified(a2)), '[1,2,3,[2,4],3,2,1]');
    this.assertEquals(Std.string(solutions.Problem11.encodeModified(a3)), '[a,[3,b],[2,c],d,[2,e],a]');
  }

  public function testProblem12()
  {
    this.assertEquals(Std.string(solutions.Problem12.decodeModified(['a', [2, 'b'], 'c', [4, 'd'], [2, 'a']])), '[a,b,b,c,d,d,d,d,a,a]');
  }

  public function testProblem14()
  {
    this.assertEquals(Std.string(solutions.Problem14.duplicate(['a', 'b', 'c'])), '[a,a,b,b,c,c]');
  }

  public function testProblem15()
  {
    this.assertEquals(Std.string(solutions.Problem15.duplicateN(['a', 'b', 'c'], 4)), '[a,a,a,a,b,b,b,b,c,c,c,c]');
  }

  public function testProblem16()
  {
    this.assertEquals(Std.string(solutions.Problem16.drop(3, [1, 2, 3, 4, 5, 6, 7])), '[1,2,4,5,7]');
  }

  public function testProblem17()
  {
    this.assertEquals(Std.string(solutions.Problem17.split(2, [1, 2, 3, 4, 5])), '[[1,2],[3,4,5]]');
  }

  public function testProblem18()
  {
    this.assertEquals(Std.string(solutions.Problem18.slice(3,6, [1, 2, 3, 4, 5, 6, 7, 8])), '[4,5]');
  }
}