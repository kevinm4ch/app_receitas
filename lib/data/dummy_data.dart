import 'package:app_receitas/models/category.dart';
import 'package:app_receitas/models/meal.dart';
import 'package:flutter/material.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italiana',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Rápido e Fácil',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hambúrgueres',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Alemã',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Leve e Amável',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exótico',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Café da Manhã',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asiática',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'Francesa',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Verão',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Espaguete com Molho de Tomate',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomates',
      '1 Colher de Sopa de Azeite',
      '1 Cebola',
      '250g de Espaguete',
      'Temperos',
      'Queijo (opcional)'
    ],
    steps: [
      'Corte os tomates e a cebola em pedaços pequenos.',
      'Ferva um pouco de água - adicione sal quando ferver.',
      'Coloque o espaguete na água fervente - deve estar pronto em cerca de 10 a 12 minutos.',
      'Enquanto isso, aqueça um pouco de azeite e adicione a cebola picada.',
      'Após 2 minutos, adicione os pedaços de tomate, sal, pimenta e outros temperos.',
      'O molho estará pronto quando o espaguete estiver.',
      'Sinta-se à vontade para adicionar um pouco de queijo sobre o prato finalizado.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Torrada Havaiana',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Fatia de Pão Branco',
      '1 Fatia de Presunto',
      '1 Fatia de Abacaxi',
      '1-2 Fatias de Queijo',
      'Manteiga'
    ],
    steps: [
      'Passe manteiga em um dos lados do pão branco',
      'Coloque o presunto, o abacaxi e o queijo no pão branco',
      'Asse a torrada por cerca de 10 minutos no forno a 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Hambúrguer Clássico',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g de Carne Moída',
      '1 Tomate',
      '1 Pepino',
      '1 Cebola',
      'Ketchup',
      '2 Pães de Hambúrguer'
    ],
    steps: [
      'Forme 2 hambúrgueres',
      'Frite os hambúrgueres por cerca de 4 minutos de cada lado',
      'Frite rapidamente os pães por cerca de 1 minuto de cada lado',
      'Passe ketchup nos pães',
      'Sirva o hambúrguer com tomate, pepino e cebola'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Filés de Vitela',
      '4 Ovos',
      '200g de Farinha de Rosca',
      '100g de Farinha de Trigo',
      '300ml de Manteiga',
      '100g de Óleo Vegetal',
      'Sal',
      'Fatias de Limão'
    ],
    steps: [
      'Bata a carne até ficar com cerca de 2–4mm e tempere com sal dos dois lados.',
      'Em um prato raso, mexa os ovos rapidamente com um garfo.',
      'Passe levemente os filés na farinha de trigo, depois no ovo e, por fim, na farinha de rosca.',
      'Aqueça a manteiga e o óleo em uma frigideira grande (deixe a gordura bem quente) e frite os schnitzels até dourar dos dois lados.',
      'Certifique-se de agitar a frigideira regularmente para que os schnitzels fiquem envoltos no óleo e a cobertura fique “fofa”.',
      'Retire e escorra em papel toalha. Frite a salsinha no óleo restante e escorra.',
      'Coloque os schnitzels em um prato aquecido e sirva decorado com salsinha e fatias de limão.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Salada com Salmão Defumado',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Rúcula',
      'Alface de Cordeiro',
      'Salsa',
      'Funcho',
      '200g de Salmão Defumado',
      'Mostarda',
      'Vinagre Balsâmico',
      'Azeite',
      'Sal e Pimenta'
    ],
    steps: [
      'Lave e corte a salada e as ervas',
      'Corte o salmão em cubos',
      'Misture mostarda, vinagre e azeite em um molho',
      'Prepare a salada',
      'Adicione cubos de salmão e o molho'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Mousse de Laranja',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Folhas de Gelatina',
      '150ml de Suco de Laranja',
      '80g de Açúcar',
      '300g de Iogurte',
      '200g de Creme de Leite',
      'Casca de Laranja',
    ],
    steps: [
      'Dissolva a gelatina em uma panela',
      'Adicione o suco de laranja e o açúcar',
      'Retire a panela do fogo',
      'Adicione 2 colheres de iogurte',
      'Misture a gelatina com o restante do iogurte',
      'Coloque tudo na geladeira',
      'Bata o creme de leite e adicione à mistura resfriada',
      'Coloque de volta na geladeira por pelo menos 4 horas',
      'Decore com casca de laranja'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
];
