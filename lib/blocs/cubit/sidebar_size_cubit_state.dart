part of 'sidebar_size_cubit_cubit.dart';

class SidebarSizeCubitState {
  final double width;

  SidebarSizeCubitState({required this.width});

  /// A helper method to copy the current state with a changed width
  SidebarSizeCubitState copyWith({double? width}) {
    return SidebarSizeCubitState(
      width: width ?? this.width,
    );
  }
}
