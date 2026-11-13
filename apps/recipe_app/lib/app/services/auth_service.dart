import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.g.dart';

/// A signed-in user. Signing in is optional (ENGINEERING.md §10).
@immutable
class const AuthUser({
  required final String id,
  final String? displayName,
  final String? email,
}) {
  @override
  bool operator ==(Object other) =>
      other is AuthUser &&
      other.id == id &&
      other.displayName == displayName &&
      other.email == email;

  @override
  int get hashCode => Object.hash(id, displayName, email);
}

/// Google and Apple sign-in through Firebase Auth.
///
/// [SignedOutAuthService] stands in until the Firebase project exists.
abstract interface class AuthService {
  /// The current user, or null when signed out.
  Stream<AuthUser?> watchUser();

  Future<void> signInWithGoogle();

  Future<void> signInWithApple();

  Future<void> signOut();
}

/// Always signed out. Sign-in reports that it is not available yet.
class const SignedOutAuthService() implements AuthService {
  @override
  Stream<AuthUser?> watchUser() => Stream.value(null);

  @override
  Future<void> signInWithGoogle() =>
      Future.error(UnsupportedError('Google sign-in is not set up yet.'));

  @override
  Future<void> signInWithApple() =>
      Future.error(UnsupportedError('Apple sign-in is not set up yet.'));

  @override
  Future<void> signOut() async {}
}

@Riverpod(keepAlive: true)
AuthService authService(Ref ref) => const SignedOutAuthService();
