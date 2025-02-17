import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'mood_message_event.dart';
part 'mood_message_state.dart';

class MoodMessageBloc extends Bloc<MoodMessageEvent, MoodMessageState> {
  MoodMessageBloc() : super(MoodMessageInitial()) {
    on<MoodMessageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
