import 'package:flutter/material.dart';
import 'package:vectracom/models/animal_model.dart';

class AnimalWidget extends StatefulWidget {
  final Animal model;
  const AnimalWidget({Key? key, required this.model}) : super(key: key);

  @override
  State<AnimalWidget> createState() => _AnimalWidgetState();
}

class _AnimalWidgetState extends State<AnimalWidget>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        children: [
          Expanded(
            child: Image.network(
              widget.model.imageLink,
              width: constraints.maxWidth,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name: ",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Expanded(
                  child: Text(widget.model.name,
                      style: Theme.of(context).textTheme.bodyText2),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Habitat: ",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Expanded(
                  child: Text(widget.model.habitat,
                      style: Theme.of(context).textTheme.bodyText2),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Diet: ",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Expanded(
                  child: Text(widget.model.diet,
                      style: Theme.of(context).textTheme.bodyText2),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }

  @override
  bool get wantKeepAlive => true;
}
