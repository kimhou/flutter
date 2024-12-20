import 'package:camp_app/common/provider/change_notifier_provider.dart';
import 'package:camp_app/modules/equip-list/list_model.dart';
import 'package:flutter/material.dart';
import 'package:camp_app/common/provider/consumer.dart';

class EquipList extends StatefulWidget {
  const EquipList({Key? key}) : super(key: key);
  @override
  State<EquipList> createState() => _EquipListState();
}

class _EquipListState extends State<EquipList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController nameInputControler = TextEditingController();
    TextEditingController descInputControler = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Provider')),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: ChangeNotifierProvider(
                data: ListModel(),
                child: Builder(
                  builder: (context) {
                    return Consumer<ListModel>(builder: (context, listModel) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 200,
                                height: 50,
                                child: TextField(
                                  controller: nameInputControler,
                                ),
                              ),
                              SizedBox(
                                  width: 200,
                                  height: 50,
                                  child: TextField(
                                    controller: descInputControler,
                                  ))
                            ],
                          ),
                          ElevatedButton(
                              onPressed: () => {
                                    listModel!.add(Item(nameInputControler.text,
                                        descInputControler.text))
                                  },
                              child: const Text('add item')),
                          ListView.builder(
                            shrinkWrap: true,
                            itemCount: listModel!.list.length,
                            itemBuilder: (context, index) {
                              Item item = listModel.list[index];
                              return Row(
                                children: [
                                  Text(item.name),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(item.desc),
                                  )
                                ],
                              );
                            },
                          )
                        ],
                      );
                    });
                  },
                ))),
      ),
    );
  }
}
