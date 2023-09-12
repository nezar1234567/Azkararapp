import 'package:azkar2_app/models/categories.dart';
import 'package:flutter/material.dart';


class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _showNotifications = false;

  String? _gender;
  int? _cityValue;

  final List <Category> _categories = <Category>[
    Category("Sports"),
    Category("Casual"),
    Category("Formal"),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
            title: Text('Show Notifications'),
            subtitle: Text('Enable/Disable Notifications'),
            value: _showNotifications,
            onChanged: (bool value){
              setState(() => _showNotifications = value);
            },
        ),
        SizedBox(height: 15),
        Text('Gender',
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 17,
        ),
        ),
        Row(
          children: [
            Expanded(
              child: RadioListTile(
                title: Text('Mala'),
                  value: 'M',
                  groupValue: _gender,
                  onChanged: (String? value) {
                  setState(() => _gender = value);
                  },
              ),
            ),


            Expanded(
              child: RadioListTile(
              title: Text('Femala'),
              value: 'F',
                groupValue: _gender,
                onChanged: (String? value) {
                  setState(() => _gender = value);
                },
            ),
            ),

          ],
        ),

        SizedBox(height: 15),
        Text('Categories',
          style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),

        for(Category c in _categories)
          CheckboxListTile(
            title: Text(c.name),
            value: c.checked,
            onChanged: (bool? value) {
              if(value != null)
              setState(() => c.checked = value);
            },
          ),
        SizedBox(height: 15),
        Text('Cauntre',
          style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        SizedBox(height: 15),
        Container(
          margin:EdgeInsets.symmetric(horizontal: 10) ,
          child: DropdownButton(
            hint: Text('Select City'),
            isExpanded: true,
            onTap: () => print('object'),
            onChanged: (int? value) {
              setState(() => _cityValue = value);
            },
            value: _cityValue,
            elevation: 6,
            dropdownColor: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            itemHeight: 48,
            disabledHint: Text('sssssssssss'),
              items: [
                DropdownMenuItem(
                    child: Text('Gaza'),
                  value: 1,
                ),

                DropdownMenuItem(
                  child: Text('Rafah'),
                  value: 2,
                )
              ],

          ),
        ),


      ],
    );


  }
}
