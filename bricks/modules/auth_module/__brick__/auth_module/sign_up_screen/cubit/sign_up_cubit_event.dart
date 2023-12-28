sealed class SignUpCubitEvent {}

class SignUpFailed extends SignUpCubitEvent {}

class AccountAlreadyExists extends SignUpCubitEvent {}

class TooManyRequests extends SignUpCubitEvent {}
