import 'package:flutter/material.dart';

class DialogList<T> extends StatefulWidget {
  final String title;
  final List<DialogListItem<T>> items;

  const DialogList({Key key, @required this.title, @required this.items})
      : super(key: key);

  @override
  _DialogListState createState() => _DialogListState<T>();
}

class _DialogListState<T> extends State<DialogList> {
  List<DialogListItem<T>> items;

  @override
  void initState() {
    super.initState();
    items = widget.items;
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(color: Theme.of(context).primaryColor),
      ),
      backgroundColor: Colors.white,
      children: items.map((c) => _listItem(c)).toList(),
      title: _title(),
    );
  }

  Widget _title() {
    return Column(
      children: <Widget>[
        Text(
          widget.title,
          style: Theme.of(context)
              .textTheme
              .headline6
              .copyWith(color: Colors.black),
        ),
        SizedBox(
          height: 16.0,
        ),
        TextField(
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Colors.black),
          decoration: InputDecoration.collapsed(
            hintText: 'Search',
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black87, width: 2.0),
            ),
            hintStyle: Theme
                .of(context)
                .textTheme
                .bodyText2
                .copyWith(color: Colors.black54),
          ),
          onChanged: (val) {
            setState(() {
              if (val.isNotEmpty)
                items = widget.items
                    .where((w) =>
                        w.name.toLowerCase().startsWith(val.toLowerCase()))
                    .toList();
              else
                items = widget.items;
            });
          },
        ),
      ],
    );
  }

  Widget _listItem(DialogListItem<T> item) {
    return SimpleDialogOption(
      onPressed: () {
        Navigator.pop(context, item.value);
      },
      child: Text(
        item.name,
        style:
        Theme
            .of(context)
            .textTheme
            .bodyText2
            .copyWith(color: Colors.black),
      ),
    );
  }
}

class DialogListItem<T> {
  final String name;
  final T value;

  DialogListItem(this.name, this.value);
}
