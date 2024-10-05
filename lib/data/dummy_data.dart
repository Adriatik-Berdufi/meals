import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italiano',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Cinese',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Messicano',
    color: Colors.green,
  ),
  Category(
    id: 'c4',
    title: 'Indiano',
    color: Colors.orange,
  ),
  Category(
    id: 'c5',
    title: 'Giapponese',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Francese',
    color: Colors.teal,
  ),
  Category(
    id: 'c7',
    title: 'Tailandese',
    color: Colors.amber,
  ),
  Category(
    id: 'c8',
    title: 'Greco',
    color: Colors.cyan,
  ),
  Category(
    id: 'c9',
    title: 'Spagnolo',
    color: Colors.deepOrange,
  ),
  Category(
    id: 'c10',
    title: 'Turco',
    color: Colors.brown,
  ),
  Category(
    id: 'c11',
    title: 'Americano',
    color: Colors.indigo,
  ),
  Category(
    id: 'c12',
    title: 'Coreano',
    color: Colors.pink,
  ),
  Category(
    id: 'c13',
    title: 'Portoghese',
    color: Colors.grey,
  ),
  Category(
    id: 'c14',
    title: 'Vietnanita',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c15',
    title: 'Russo',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c16',
    title: 'Albanese',
    color: Color.fromARGB(255, 247, 90, 33),
  ),
];

const availableMeals = [
  // Italiani
  Meal(
    id: 'm1',
    categories: ['c1'], // Italiano
    title: 'Pasta al Pomodoro',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28736/Pasta-al-pomodoro_500x375_wm.jpg',
    duration: 20,
    ingredients: [
      '200g Pasta',
      '400g Pomodori',
      '1 Spicchio d\'Aglio',
      'Olio d\'Oliva',
      'Basilico',
      'Sale',
      'Pepe',
    ],
    steps: [
      'Cuocere la pasta in acqua salata.',
      'Soffriggere l\'aglio nell\'olio e aggiungere i pomodori.',
      'Condire la pasta con la salsa e servire con basilico.',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c1', 'c15'], // Italiano
    title: 'Risotto ai Funghi',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28740/Risotto-ai-funghi_500x375_wm.jpg',
    duration: 40,
    ingredients: [
      '200g Riso Arborio',
      '200g Funghi',
      '1 Cipolla',
      'Brodo Vegetale',
      'Olio d\'Oliva',
      'Parmigiano',
      'Sale',
    ],
    steps: [
      'Soffriggere la cipolla e i funghi.',
      'Aggiungere il riso e tostare.',
      'Versare il brodo gradualmente e cuocere.',
      'Mantecare con parmigiano e servire.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c1'], // Italiano
    title: 'Pizza Margherita',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28744/Pizza-Margherita_500x375_wm.jpg',
    duration: 90,
    ingredients: [
      '250g Farina',
      '150ml Acqua',
      '15g Lievito di Birra',
      '200g Pomodori',
      'Mozzarella',
      'Basilico',
      'Olio d\'Oliva',
    ],
    steps: [
      'Preparare l\'impasto con farina, acqua e lievito.',
      'Far lievitare l\'impasto.',
      'Stendere l\'impasto, aggiungere pomodori e mozzarella.',
      'Cuocere in forno caldo e servire con basilico.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm4',
    categories: ['c1'], // Italiano
    title: 'Lasagna',
    affordability: Affordability.expensive,
    complexity: Complexity.hard,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28748/Lasagna_500x375_wm.jpg',
    duration: 120,
    ingredients: [
      '250g Lasagne',
      '400g Carne Macinata',
      '400g Pomodori',
      '1 Cipolla',
      'Bechamel',
      'Parmigiano',
      'Sale',
    ],
    steps: [
      'Preparare il ragù con carne e pomodori.',
      'Alternare strati di lasagna, ragù e besciamella.',
      'Cuocere in forno e servire.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: ['c1'], // Italiano
    title: 'Bruschette al Pomodoro',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28752/Bruschette-al-pomodoro_500x375_wm.jpg',
    duration: 15,
    ingredients: [
      '4 Fette di Pane',
      '200g Pomodori',
      'Basilico',
      'Olio d\'Oliva',
      'Sale',
    ],
    steps: [
      'Tostare il pane.',
      'Tagliare i pomodori e condire.',
      'Servire il pane con pomodori e basilico.',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c1'], // Italiano
    title: 'Gnocchi di Patate',
    affordability: Affordability.affordable,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28756/Gnocchi-di-patate_500x375_wm.jpg',
    duration: 60,
    ingredients: [
      '1kg Patate',
      '300g Farina',
      '1 Uovo',
      'Sale',
      'Burro',
      'Salvia',
    ],
    steps: [
      'Lessare le patate e schiacciarle.',
      'Aggiungere farina e uovo e impastare.',
      'Formare gli gnocchi e cuocere.',
      'Condire con burro e salvia.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c1'], // Italiano
    title: 'Pesto alla Genovese',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28760/Pesto-alla-genovese_500x375_wm.jpg',
    duration: 10,
    ingredients: [
      '50g Basilico',
      '30g Pinoli',
      '50g Parmigiano',
      '100ml Olio d\'Oliva',
      '1 Spicchio d\'Aglio',
      'Sale',
    ],
    steps: [
      'Frullare basilico, pinoli, aglio e sale.',
      'Aggiungere l\'olio a filo.',
      'Mescolare con la pasta e servire.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm8',
    categories: ['c1'], // Italiano
    title: 'Pollo al Limone',
    affordability: Affordability.expensive,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28764/Pollo-al-limone_500x375_wm.jpg',
    duration: 30,
    ingredients: [
      '4 Petti di Pollo',
      '1 Limone',
      'Olio d\'Oliva',
      'Sale',
      'Pepe',
    ],
    steps: [
      'Marinare il pollo con succo di limone.',
      'Cuocere in padella fino a doratura.',
      'Servire con contorno di verdure.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c1'], // Italiano
    title: 'Tiramisu',
    affordability: Affordability.expensive,
    complexity: Complexity.hard,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28768/Tiramisu_500x375_wm.jpg',
    duration: 30,
    ingredients: [
      '500g Mascarpone',
      '3 Uova',
      '100g Zucchero',
      '200ml Caffè',
      'Cacao in Polvere',
      'Savoiardi',
    ],
    steps: [
      'Montare i tuorli con lo zucchero.',
      'Aggiungere il mascarpone e mescolare.',
      'Inzuppare i savoiardi nel caffè e alternare con crema.',
      'Spolverare con cacao e refrigerare.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: ['c1', 'c13'], // Italiano
    title: 'Arancini di Riso',
    affordability: Affordability.expensive,
    complexity: Complexity.hard,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28772/Arancini-di-riso_500x375_wm.jpg',
    duration: 90,
    ingredients: [
      '300g Riso',
      '200g Mozzarella',
      'Uova',
      'Pan grattato',
      'Olio per friggere',
      'Sale',
    ],
    steps: [
      'Preparare il risotto e farlo raffreddare.',
      'Formare delle palline con riso e mozzarella.',
      'Passare nelle uova e nel pangrattato, quindi friggere.',
      'Servire caldi.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  // Cinesi
  Meal(
    id: 'm11',
    categories: ['c2'], // Cinese
    title: 'Riso Fritto',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28776/Riso-fritto_500x375_wm.jpg',
    duration: 20,
    ingredients: [
      '300g Riso',
      '2 Uova',
      '1 Carota',
      'Piselli',
      'Salsa di Soia',
      'Olio di Sesamo',
    ],
    steps: [
      'Cuocere il riso e farlo raffreddare.',
      'Soffriggere carote e piselli.',
      'Aggiungere le uova e mescolare.',
      'Incorporare il riso e condire con salsa di soia.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm12',
    categories: ['c2'], // Cinese
    title: 'Involtini Primavera',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28780/Involtini-primavera_500x375_wm.jpg',
    duration: 30,
    ingredients: [
      '200g Cavolo',
      'Carota',
      'Funghi',
      'Pasta Fillo',
      'Olio per friggere',
      'Salsa di Soia',
    ],
    steps: [
      'Soffriggere le verdure.',
      'Avvolgere il ripieno nella pasta fillo.',
      'Friggere fino a doratura e servire con salsa di soia.',
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm13',
    categories: ['c2'], // Cinese
    title: 'Pollo al Limone',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28784/Pollo-al-limone_500x375_wm.jpg',
    duration: 30,
    ingredients: [
      '500g Pollo',
      '1 Limone',
      'Olio di Sesamo',
      'Salsa di Soia',
      'Zenzero',
    ],
    steps: [
      'Marinare il pollo con limone e zenzero.',
      'Cuocere in padella e servire con riso.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm14',
    categories: ['c2'], // Cinese
    title: 'Zuppa di Noodles',
    affordability: Affordability.affordable,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28788/Zuppa-di-noodles_500x375_wm.jpg',
    duration: 25,
    ingredients: [
      '200g Noodles',
      'Brodo di Pollo',
      'Verdure',
      'Salsa di Soia',
      'Cipollotto',
    ],
    steps: [
      'Cuocere i noodles nel brodo.',
      'Aggiungere verdure e salsa di soia.',
      'Servire con cipollotto fresco.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm15',
    categories: ['c2'], // Cinese
    title: 'Manzo in Salsa di Soia',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28792/Manzo-in-salsa-di-soia_500x375_wm.jpg',
    duration: 40,
    ingredients: [
      '500g Manzo',
      'Salsa di Soia',
      'Zenzero',
      'Aglio',
      'Verdure',
    ],
    steps: [
      'Marinare il manzo con salsa di soia e zenzero.',
      'Soffriggere con aglio e verdure.',
      'Servire con riso.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm16',
    categories: ['c2'], // Cinese
    title: 'Pasta di Riso con Verdure',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28796/Pasta-di-riso-con-verdure_500x375_wm.jpg',
    duration: 20,
    ingredients: [
      '200g Pasta di Riso',
      'Verdure Miste',
      'Salsa di Soia',
      'Olio di Sesamo',
    ],
    steps: [
      'Cuocere la pasta di riso.',
      'Soffriggere le verdure.',
      'Unire la pasta e condire con salsa di soia.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm17',
    categories: ['c2'], // Cinese
    title: 'Pollo Kung Pao',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28800/Pollo-Kung-Pao_500x375_wm.jpg',
    duration: 30,
    ingredients: [
      '500g Pollo',
      'Peperoni',
      'Arachidi',
      'Salsa di Soia',
      'Peperoncino',
    ],
    steps: [
      'Marinare il pollo e soffriggere con peperoni.',
      'Aggiungere arachidi e salsa di soia.',
      'Servire con riso.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm18',
    categories: ['c2'], // Cinese
    title: 'Noodles di Riso Fritti',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28804/Noodles-di-riso-fritti_500x375_wm.jpg',
    duration: 20,
    ingredients: [
      '200g Noodles di Riso',
      'Verdure',
      'Olio di Sesamo',
      'Salsa di Soia',
    ],
    steps: [
      'Cuocere i noodles e farli raffreddare.',
      'Soffriggere le verdure.',
      'Aggiungere i noodles e condire.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm19',
    categories: ['c2'], // Cinese
    title: 'Tofu Saltato con Verdure',
    affordability: Affordability.affordable,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28808/Tofu-saltato-con-verdure_500x375_wm.jpg',
    duration: 25,
    ingredients: [
      '400g Tofu',
      'Verdure Miste',
      'Salsa di Soia',
      'Olio di Sesamo',
    ],
    steps: [
      'Soffriggere il tofu e le verdure.',
      'Condire con salsa di soia.',
      'Servire caldo.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm20',
    categories: ['c2'], // Cinese
    title: 'Sgombro alla Griglia',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28812/Sgombro-alla-griglia_500x375_wm.jpg',
    duration: 30,
    ingredients: [
      '2 Sgombri',
      'Salsa di Soia',
      'Zenzero',
      'Aglio',
      'Olio di Sesamo',
    ],
    steps: [
      'Marinare gli sgombri con salsa di soia e zenzero.',
      'Grigliare e servire con verdure.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  // Messicani
  Meal(
    id: 'm21',
    categories: ['c3', 'c2'], // Messicano
    title: 'Tacos',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28816/Tacos_500x375_wm.jpg',
    duration: 20,
    ingredients: [
      '8 Tortillas',
      '400g Carne Macinata',
      '1 Cipolla',
      'Pomodori',
      'Lattuga',
      'Salsa',
    ],
    steps: [
      'Cuocere la carne con cipolla e spezie.',
      'Scaldare le tortillas e farcirle.',
      'Servire con salsa e verdure.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm22',
    categories: ['c3'], // Messicano
    title: 'Guacamole',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28820/Guacamole_500x375_wm.jpg',
    duration: 10,
    ingredients: [
      '2 Avocado',
      '1 Limone',
      '1 Cipolla',
      'Pomodori',
      'Coriandolo',
      'Sale',
    ],
    steps: [
      'Schiacciare gli avocado e mescolare con altri ingredienti.',
      'Servire con nachos o tortillas.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm23',
    categories: ['c3'], // Messicano
    title: 'Quesadilla',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28824/Quesadilla_500x375_wm.jpg',
    duration: 15,
    ingredients: [
      '4 Tortillas',
      '200g Formaggio',
      'Peperoni',
      'Salsa',
    ],
    steps: [
      'Far scaldare le tortillas.',
      'Aggiungere formaggio e peperoni.',
      'Chiudere a metà e cuocere fino a scioglimento del formaggio.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm24',
    categories: ['c3'], // Messicano
    title: 'Chili con Carne',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28828/Chili-con-carne_500x375_wm.jpg',
    duration: 60,
    ingredients: [
      '400g Carne Macinata',
      '400g Fagioli',
      'Pomodori',
      'Cipolla',
      'Spezie',
    ],
    steps: [
      'Cuocere la carne e aggiungere cipolla e spezie.',
      'Unire pomodori e fagioli.',
      'Cuocere fino a ottenere una consistenza densa.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm25',
    categories: ['c3'], // Messicano
    title: 'Fajitas',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28832/Fajitas_500x375_wm.jpg',
    duration: 30,
    ingredients: [
      '400g Pollo',
      'Peperoni',
      'Cipolla',
      'Tortillas',
      'Spezie',
    ],
    steps: [
      'Cuocere il pollo e le verdure con spezie.',
      'Servire con tortillas e guacamole.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm26',
    categories: ['c3'], // Messicano
    title: 'Salsa di Pomodoro',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28836/Salsa-di-pomodoro_500x375_wm.jpg',
    duration: 15,
    ingredients: [
      '400g Pomodori',
      '1 Cipolla',
      'Aglio',
      'Basilico',
      'Olio d\'Oliva',
      'Sale',
    ],
    steps: [
      'Soffriggere cipolla e aglio.',
      'Aggiungere pomodori e basilico.',
      'Cuocere e servire.',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm27',
    categories: ['c3'], // Messicano
    title: 'Nachos',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28840/Nachos_500x375_wm.jpg',
    duration: 10,
    ingredients: [
      'Tortilla Chips',
      'Formaggio',
      'Jalapeños',
      'Guacamole',
    ],
    steps: [
      'Disporre le tortilla chips su una teglia.',
      'Aggiungere formaggio e jalapeños.',
      'Cuocere in forno e servire con guacamole.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm28',
    categories: ['c3'], // Messicano
    title: 'Sopes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28844/Sopes_500x375_wm.jpg',
    duration: 30,
    ingredients: [
      'Masa Harina',
      'Carne',
      'Fagioli',
      'Lattuga',
      'Salsa',
    ],
    steps: [
      'Preparare le basi di masa harina.',
      'Farci con carne e fagioli.',
      'Servire con lattuga e salsa.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm29',
    categories: ['c3'], // Messicano
    title: 'Tortilla Soup',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28848/Tortilla-soup_500x375_wm.jpg',
    duration: 45,
    ingredients: [
      '400g Pomodori',
      'Brodo di Pollo',
      'Tortillas',
      'Avocado',
      'Formaggio',
    ],
    steps: [
      'Cuocere pomodori e brodo.',
      'Aggiungere tortillas croccanti e avocado.',
      'Servire caldo con formaggio.',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm30',
    categories: ['c3'], // Messicano
    title: 'Ceviche',
    affordability: Affordability.expensive,
    complexity: Complexity.medium,
    imageUrl:
        'https://www.giallozafferano.it/images/287-28852/Ceviche_500x375_wm.jpg',
    duration: 60,
    ingredients: [
      '500g Pesce Fresco',
      'Limone',
      'Cipolla',
      'Pomodori',
      'Coriandolo',
    ],
    steps: [
      'Marinare il pesce con limone e cipolla.',
      'Aggiungere pomodori e coriandolo.',
      'Servire freddo.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
];
