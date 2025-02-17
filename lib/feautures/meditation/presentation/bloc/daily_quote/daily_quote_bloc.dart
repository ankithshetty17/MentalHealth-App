import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'daily_quote_event.dart';
part 'daily_quote_state.dart';

class DailyQuoteBloc extends Bloc<DailyQuoteEvent, DailyQuoteState> {
  DailyQuoteBloc() : super(DailyQuoteInitial()) {
    on<DailyQuoteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
