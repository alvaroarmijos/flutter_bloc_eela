import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  /// Pasamos el valor inicial del contador al super.
  CounterBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      /// La lógica para aumentar el contador
      emit(state + 1);
    });
  }
}

/// Eventos
sealed class CounterEvent {}

/// Evento para aumentar el contador
final class IncrementEvent extends CounterEvent {}

/// Evento para disminuir el contador
final class DecrementEvent extends CounterEvent {}
