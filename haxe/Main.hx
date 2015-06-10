class Main
{
  static function main()
  {
    var testRunner = new haxe.unit.TestRunner();
    testRunner.add(new tests.TestCases());
    testRunner.run();
  }
}