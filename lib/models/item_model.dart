import 'package:flutter/material.dart';

class ItemModel {
  bool? expanded;
  String? headerItem;
  String? description;

  ItemModel({
    this.expanded = false,
    this.headerItem,
    this.description,
  });
}

List<ItemModel> generalItems = [
  ItemModel(
    expanded: false,
    headerItem: 'Unblock site',
    description: 'Lorem Ipusm text here will be come in the format to tell you how the things are '
        'going in the current situation and how things are working. ',
  ),
  ItemModel(
    expanded: false,
    headerItem: 'No need registration',
    description: 'Lorem Ipusm text here will be come in the format to tell you how the things are '
        'going in the current situation and how things are working. ',
  ),
  ItemModel(
    expanded: false,
    headerItem: 'Login',
    description: 'Lorem Ipusm text here will be come in the format to tell you how the things are '
        'going in the current situation and how things are working. ',
  ),
  ItemModel(
    expanded: false,
    headerItem: 'Traffic',
    description: 'Lorem Ipusm text here will be come in the format to tell you how the things are '
        'going in the current situation and how things are working. ',
  ),
  ItemModel(
    expanded: false,
    headerItem: 'VPN Servers',
    description: 'Lorem Ipusm text here will be come in the format to tell you how the things are '
        'going in the current situation and how things are working. ',
  ),
];

List<ItemModel> getMoreItems = [
  ItemModel(
    expanded: false,
    headerItem: 'Watch videos',
    description: 'Lorem Ipusm text here will be come in the format to tell you how the things are '
        'going in the current situation and how things are working. ',
  ),
  ItemModel(
    expanded: false,
    headerItem: 'Complete offers',
    description: 'Lorem Ipusm text here will be come in the format to tell you how the things are '
        'going in the current situation and how things are working. ',
  ),
  ItemModel(
    expanded: false,
    headerItem: 'Daily check-in',
    description: 'Lorem Ipusm text here will be come in the format to tell you how the things are '
        'going in the current situation and how things are working. ',
  ),
  ItemModel(
    expanded: false,
    headerItem: 'I’m feeling lucky',
    description: 'Lorem Ipusm text here will be come in the format to tell you how the things are '
        'going in the current situation and how things are working. ',
  ),
  ItemModel(
    expanded: false,
    headerItem: 'Invite friends to get 50GB',
    description: 'Lorem Ipusm text here will be come in the format to tell you how the things are '
        'going in the current situation and how things are working. ',
  ),
];