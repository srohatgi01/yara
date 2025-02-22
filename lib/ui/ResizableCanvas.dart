import 'package:flutter/material.dart';
import 'package:yara/blocs/cubit/sidebar_size_cubit_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yara/ui/MainBoard.dart';
import 'package:yara/ui/Sidebar.dart';

class ResizableCanvas extends StatelessWidget {
  const ResizableCanvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          BlocBuilder<SidebarSizeCubit, SidebarSizeCubitState>(
            builder: (context, sidebarState) {
              return Container(
                width: sidebarState.width,
                color: Colors.blueGrey[50],
                child: Sidebar()
              );
            },
          ),
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onHorizontalDragUpdate: (DragUpdateDetails details) {
              context.read<SidebarSizeCubit>().updateWidth(details.delta.dx);
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.resizeColumn,
              child: Container(
                width: 5,
                color: Colors.grey[300],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              alignment: Alignment.topCenter,
              child: MainBoard()
            ),
          ),
        ],
      ),
    );
  }
}
