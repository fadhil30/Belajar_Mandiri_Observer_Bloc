import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter_event.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void decrement() => emit(state - 1);
  void increment() => emit(state + 1);

  @override
  void onChange(change) {
    print(change);
  }

  @override
  void onError(error, trace) {
    print(error);
    print(trace);
  }

  @override
  void onTransition(transition) {
    print(transition);
  }
}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      if (event == CounterEvent.decrement) {
        emit(state - 1);
      } else {
        emit(state + 1);
      }
    });
  }

  @override
  void onChange(change) {
    print(change);
  }

  @override
  void onError(error, trace) {
    print(error);
    print(trace);
  }

  @override
  void onTransition(transition) {
    print(transition);
  }
}
