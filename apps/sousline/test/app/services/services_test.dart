import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart' show ProviderListenable;
import 'package:flutter_test/flutter_test.dart';
import 'package:sousline/app/providers/repositories.dart';
import 'package:sousline/app/services/auth_service.dart';
import 'package:sousline/app/services/entitlements.dart';
import 'package:sousline/app/services/error_reporter.dart';
import 'package:sousline/app/services/nutrition_api.dart';

void main() {
  late ProviderContainer container;

  setUp(() => container = ProviderContainer.test());

  group('stub services', () {
    test('auth is always signed out', () async {
      final auth = container.read(authServiceProvider);

      expect(await auth.watchUser().first, isNull);
      await expectLater(auth.signInWithGoogle(), throwsUnsupportedError);
      await expectLater(auth.signInWithApple(), throwsUnsupportedError);
      await auth.signOut();
    });

    test('entitlements are never Pro', () async {
      expect(
        await container.read(entitlementsProvider).watchIsPro().first,
        isFalse,
      );
    });

    test('the nutrition API finds nothing', () async {
      final api = container.read(nutritionApiProvider);

      expect(await api.search('oats'), isEmpty);
      expect(await api.lookupBarcode('0123'), isNull);
    });

    test('the error reporter prints to the console', () async {
      final printed = <String?>[];
      final previous = debugPrint;
      debugPrint = (message, {wrapWidth}) => printed.add(message);
      addTearDown(() => debugPrint = previous);

      await container
          .read(errorReporterProvider)
          .report(StateError('boom'), StackTrace.empty);

      expect(printed.single, contains('boom'));
    });
  });

  group(AuthUser, () {
    test('has value equality', () {
      const user = AuthUser(id: '1', displayName: 'Tyler');

      expect(user, const AuthUser(id: '1', displayName: 'Tyler'));
      expect(
        user.hashCode,
        const AuthUser(id: '1', displayName: 'Tyler').hashCode,
      );
      expect(user, isNot(const AuthUser(id: '2')));
    });
  });

  group('repository providers', () {
    test('throw until a data task implements them', () {
      for (final provider in <ProviderListenable<Object>>[
        recipeRepositoryProvider,
        folderRepositoryProvider,
        foodRepositoryProvider,
        experimentRepositoryProvider,
        groceryRepositoryProvider,
        measuringToolRepositoryProvider,
        userRecipePrefsRepositoryProvider,
      ]) {
        expect(() => container.read(provider), throwsA(anything));
      }
    });
  });
}
