import 'package:flutter/material.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() {
    return _NewItemState();
  }
}

class _NewItemState extends State<NewItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a New Item...'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                maxLength: 35,
                decoration: const InputDecoration(
                  label: Text('Name'),
                ),
                validator: (value) {
                  return 'Demo...';
                },
              ),
              Row(
                children: [
                  TextFormField(),
                  const SizedBox(
                    width: 8,
                  ),
                  DropdownButtonFormField(items: items, onChanged: onChanged)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
