

import 'package:flutter/material.dart';
import 'package:get_it_done/models/items_data.dart';
import 'package:get_it_done/widget/items_card.dart';
import 'package:provider/provider.dart';
import 'setting_page.dart';
import 'ItemAdder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
                icon: Icon(Icons.settings)),
          )
        ],
        title: Center(child: Text('Get It Done')),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  '${Provider.of<ItemData>(context).items.length} Items',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Consumer<ItemData>(
                    builder: (context, child, itemData) {
                      return Align(alignment: Alignment.topCenter,
                        child: ListView.builder(shrinkWrap: true,
                          reverse: true,
                          itemCount: Provider.of<ItemData>(context).items.length,
                          itemBuilder: (context, index) {
                            return ItemCard(
                              deleteItem: (_) {
                                Provider.of<ItemData>(context, listen: false)
                                    .deleteItem(index);
                              },
                              toggle: (_) {
                                Provider.of<ItemData>(context, listen: false)
                                    .toggleStatus(index);
                              },
                              title: Provider.of<ItemData>(context)
                                  .items[index]
                                  .title,
                              isDone: Provider.of<ItemData>(context)
                                  .items[index]
                                  .isDone,
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              context: context,
              builder: (context) => ItemAdder());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}