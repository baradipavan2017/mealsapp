import 'package:flutter/material.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;
  @override
  Widget build(BuildContext context) {
    Widget _buildSwitchListTile(
      String title,
      String description,
      bool currentValue,
      Function updateValue,
    ) {
      return SwitchListTile(
        title: Text(title),
        subtitle: Text(description),
        value: currentValue,
        onChanged: updateValue,
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text('Filter'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust Your Meal Selection',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  _buildSwitchListTile(
                    'Gluten-Free',
                    'Only include Gluten-free food',
                    _glutenFree,
                    (bool newValue) {
                      setState(() {
                        _glutenFree = newValue;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Loctose-Free',
                    'Only include Lactose-free food',
                    _lactoseFree,
                    (bool newValue) {
                      setState(() {
                        _lactoseFree = newValue;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Vegetarian',
                    'Only include Vegetarian food',
                    _vegetarian,
                    (bool newValue) {
                      setState(() {
                        _vegetarian = newValue;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Vegan',
                    'Only include Vegan food',
                    _vegan,
                    (bool newValue) {
                      setState(() {
                        _vegan = newValue;
                      });
                    },
                  )
                ],
              ),
            )
          ],
        ));
  }
}
