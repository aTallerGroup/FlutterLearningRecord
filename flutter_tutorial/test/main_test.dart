// import 'package:test/test.dart' as test;
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/main.dart' as App;
import 'package:flutter_test/flutter_test.dart';
// import 'package:test/test.dart' as QiTest;
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

void main() {
  // test('测试', () {
  testWidgets("My First Widget ", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: App.MyApp(),
      ),
    );
    final appBar = find.byKey(Key(App.HomeAppBarKeyString));
    expect(appBar, findsOneWidget);

    final appBarNone = find.byKey(Key('noneKey'));
    expect(appBarNone, findsNothing);
    // expect(appBarNone, findsOneWidget);

    /*
    This was caught by the test expectation on the following line:
  file:///Users/wangyongwang/Documents/GitHub/aTaller/FlutterLearningRecord/flutter_tutorial/test/main_test.dart line 20
The test description was:
  My First Widget
════════════════════════════════════════════════════════════════════════════════════════════════════
00:02 +0 -1: My First Widget  [E]                                                    
  Test failed. See exception logs above.
  The test description was: My First Widget 
  
00:02 +0 -1: Some tests failed.  
     */
  });
}
