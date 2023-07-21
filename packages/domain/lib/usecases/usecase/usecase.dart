abstract class UseCase<Output, Input> {
  Future<Output> call({required Input params});
}

abstract class NoArgUseCase<Output> {
  Future<Output> call();
}
