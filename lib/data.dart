import 'package:my_flutter_curriculum/model/app.dart';

import 'model/category.dart';

enum CategoryType { app, pub, medium, project }

final categories = [
  Category(
    name: 'Flutter Apps',
    description: 'See here the apps that i made using Flutter',
    image:
        'https://cdn.tecnoblog.net/wp-content/uploads/2019/12/apps-mais-populares-apple-2019-2-700x393.jpg',
    categoryType: CategoryType.app,
  ),
  Category(
    name: 'pub.dev Packages',
    description: 'I\'ve done some packages for Flutter too.',
    image:
        'https://flutter.dev/assets/development/packages-and-plugins/FlutterFavoriteLogo-c581613beba0abd3a92fa9d1c86e7b38062f92d104347a3a6bb28841233331fd.png',
    categoryType: CategoryType.pub,
  ),
  Category(
    name: 'Medium Articles',
    description: 'I also produce Flutter related articles on Medium.',
    image:
        'https://res.cloudinary.com/hindscoop/image/upload/v1576760251/medium_ktzjyq.jpg',
    categoryType: CategoryType.medium,
  ),
  Category(
    name: 'Repos',
    description:
        'On my spare time i like to play around and make some side projects with Flutter',
    image:
        'https://www.genexus.com/media/images/github-logo-2-imagen.jpg?timestamp=20190527124425',
    categoryType: CategoryType.project,
  ),
];

final apps = [
  App(
    logo: '',
    name: 'Acta',
    description: 'Dumb',
    playstoreUrl: '',
    stuffUsed: [],
    images: [],
  ),
  App(
    logo: '',
    name: 'Here My Card',
    description: 'Dumb 2',
    playstoreUrl: '',
    stuffUsed: [],
    images: [],
  ),
];

final profileInfo = {
  'name': 'Rodrigo Bastos Vasconcelos',
  'bio':
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a pellentesque ipsum, nec semper justo. Proin ac nunc tincidunt, tempor urna eu, pretium enim. Curabitur feugiat cursus ipsum eu euismod. Maecenas lacinia porttitor ante. Nunc interdum et arcu vel mattis. Pellentesque nulla massa, rhoncus sit amet ligula fringilla, cursus euismod dolor. Maecenas finibus eget lectus a porta. Nullam malesuada lorem et mollis aliquet. Integer at massa vel ex condimentum interdum. Pellentesque pharetra et ante id tempus. Praesent commodo sed turpis id hendrerit. Fusce non leo eget odio pellentesque imperdiet. Vivamus non urna nec augue pretium sagittis et ut turpis. Nunc non congue tortor. Quisque blandit, nunc a tincidunt malesuada, est dolor eleifend nunc, ut pretium quam nulla et quam. Nulla id ante justo. Duis luctus sapien sit amet mi imperdiet facilisis. Fusce pulvinar euismod justo, tempor mattis diam sodales nec. Pellentesque convallis quis ligula quis commodo. Curabitur varius consequat suscipit. Ut placerat eros ipsum. Maecenas vulputate, dolor facilisis ultrices viverra, diam neque consequat augue, ut maximus diam lorem quis nibh. Donec scelerisque placerat pulvinar. Morbi tempor id lectus eget ullamcorper. Nunc tristique, massa vel congue sodales, erat sapien ullamcorper massa, ac commodo arcu magna ac nunc. Donec posuere sagittis condimentum.',
};
