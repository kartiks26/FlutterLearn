import 'package:bloc/bloc.dart';

class CounterEvent {
  final int amount;
  CounterEvent({required this.amount});
}

class CounterState {
  final int count;
  CounterState({required this.count});
}

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(super.initialState);

  @override
  CounterState get initialState => CounterState(count: 0);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    yield CounterState(count: state.count + event.amount);
  }
}
