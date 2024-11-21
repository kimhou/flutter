import 'package:flutter/material.dart';

class ShareDataWidget extends InheritedWidget {
  const ShareDataWidget({Key? key, required this.data, required Widget child})
      : super(key: key, child: child);

  final dynamic data;
  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget old) {
    return old.data != data;
  }
}

class Inherited extends StatefulWidget {
  const Inherited({super.key});

  @override
  State<Inherited> createState() => _Inherited();
}

class _Inherited extends State<Inherited> {
  int data = 0;

  @override
  Widget build(BuildContext context) {
    return ShareDataWidget(
        data: data,
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                child: const Text('click'),
                onPressed: () => {setState(() => data++)},
              ),
            ),
            const UiWiget()
          ],
        ));
  }
}

class UiWiget extends StatelessWidget {
  const UiWiget({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(ShareDataWidget.of(context)!.data.toString()))
      ],
    );
  }
}
