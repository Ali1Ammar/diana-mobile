import 'package:dartz/dartz.dart';
import 'package:diana/core/errors/failure.dart';
import 'package:diana/data/remote_models/auth/user.dart';
import 'package:diana/domain/repos/auth_repo.dart';

class EditUserUsecase {
  final AuthRepo authRepo;

  EditUserUsecase(this.authRepo);

  Future<Either<Failure, User>> call(
    String firstName,
    String lastName,
    String username,
    String email,
    String birthdate,
    String password,
  ) {
    return authRepo.editUser(
        firstName, lastName, username, email, birthdate, password);
  }
}
