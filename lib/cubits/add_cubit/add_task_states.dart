abstract class AddTaskStates {}

class AddTaskStateInitial extends AddTaskStates {}

class AddTaskStateLoading extends AddTaskStates {}

class AddTaskStateSuccess extends AddTaskStates {}

class AddTaskStateFailure extends AddTaskStates {
  final String errorMessage;
  AddTaskStateFailure({required this.errorMessage});
}
