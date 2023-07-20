
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/error/failure.dart';
import '../../data/repositories/profile.dart';
import '../entities/profile.dart';

abstract class IGetProfileUseCase {
  Future<Either<Failure, ProfileEntity>> call();
}

@Injectable(as: IGetProfileUseCase)
class GetProfileUseCase extends IGetProfileUseCase {
  final IProfileRepository _profileRepository;

  GetProfileUseCase(this._profileRepository);

  @override
  Future<Either<Failure, ProfileEntity>> call() async {
    return await _profileRepository.getProfileData();
  }
}
