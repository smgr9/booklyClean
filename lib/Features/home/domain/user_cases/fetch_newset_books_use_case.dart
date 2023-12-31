import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/erorr/failure.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';

class FetchNewsetBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewsetBooksUseCase(this.homeRepo);

  @override
  // ignore: avoid_renaming_method_parameters
  Future<Either<Failure, List<BookEntity>>> call([NoParam? a]) async {
    return await homeRepo.fetchNewestBooks();
  }
}
