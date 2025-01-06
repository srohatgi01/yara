import 'package:bloc/bloc.dart';

part 'sidebar_size_cubit_state.dart';

class SidebarSizeCubit extends Cubit<SidebarSizeCubitState> {
  final double initialWidth;
  final double maxWidth;

  SidebarSizeCubit(double screenWidth)
      : initialWidth = (screenWidth * 0.3 > 350 ? 350 : screenWidth * 0.3),
        maxWidth = screenWidth * 0.55,
        super(SidebarSizeCubitState(
        width: (screenWidth * 0.3 > 350 ? 350 : screenWidth * 0.3),
      ));


  /// Update the sidebar width by adding the drag delta
  void updateWidth(double delta) {
    final newWidth = state.width + delta;
    // clamp the width between initial width and 55% of whole width for safety
    final clampedWidth = newWidth.clamp(initialWidth, maxWidth);
    emit(state.copyWith(width: clampedWidth));
  }
}
