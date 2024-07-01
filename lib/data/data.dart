const List<String> areas = <String>[
  'Apple',
  'Mango',
  'Banana',
  'Orange',
  'Pineapple',
  'Strawberry',
];


var selectedCountry = "";
void setSelectedCountry(int choice){
  selectedCountry = areas[choice];
  print(selectedCountry);
}


