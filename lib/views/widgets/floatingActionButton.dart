import 'package:flutter/material.dart';

import 'addNoteButtonSheet.dart';

class floatingActionButton extends StatelessWidget {
  const floatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      child: const Icon(
        Icons.add,
        size: 35,
      ),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const buttomSheet();
          },
        );
      },
    );
  }
}
