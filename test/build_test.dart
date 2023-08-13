import 'dart:io';

import 'package:test/test.dart';

import '../bin/build.dart';

void main() {
  group('Script Functions', () {
    test('isValidCommand returns true for supported platform', () {
      final args = ['linux'];
      final result = isValidCommand(args);
      expect(result, isTrue);
      expect(platform, 'linux');
    });

    test('isValidCommand returns false for unsupported platform', () {
      final args = ['unsupported'];
      final result = isValidCommand(args);
      expect(result, isFalse);
    });

    test('createBuildDir creates build directory', () async {
      // Set up
      final originalBuildDir = buildTargetOutputDir;
      const buildDirPath = 'test_build_dir';

      // Test
      await createBuildDir(buildDirPath);

      // Verify
      expect(
        buildTargetOutputDir.path,
        endsWith(buildDirPath + Platform.pathSeparator + platform),
      );

      // Tear down
      buildTargetOutputDir = originalBuildDir;
    });

    test(
      'compileScript returns true for successful compilation',
      () async {
        final result = await compileScript('linux');
        expect(result, isTrue);
      },
      timeout: const Timeout(Duration(minutes: 5)),
    );

    test('compileScript returns false for compilation error', () async {
      final result = await compileScript('unsupported_platform');
      expect(result, isFalse);
    });
  });
}
