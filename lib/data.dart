import 'package:my_flutter_curriculum/model/app.dart';
import 'package:my_flutter_curriculum/model/article.dart';
import 'package:my_flutter_curriculum/model/project.dart';
import 'package:my_flutter_curriculum/model/pub_package.dart';

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
    name: 'Projects',
    description:
        'On my spare time i like to play around and make some side projects with Flutter',
    image:
        'https://www.genexus.com/media/images/github-logo-2-imagen.jpg?timestamp=20190527124425',
    categoryType: CategoryType.project,
  ),
];

final apps = [
  App(
    id: 'ACTA',
    logo: 'assets/apps/acta/logo.png',
    name: 'Acta',
    description: 'Dumb',
    playstoreUrl:
        'https://play.google.com/store/apps/details?id=com.gladguys.acta',
    releaseDate: '24/09/2019',
    stuffUsed: [
      'webview_flutter',
      'share',
      'catcher',
      'dio',
      'intl',
      'rxdart',
      'firebase_auth',
      'bloc_pattern'
    ],
    images: [
      'assets/apps/acta/1.webp',
      'assets/apps/acta/2.webp',
      'assets/apps/acta/3.webp',
      'assets/apps/acta/4.webp',
      'assets/apps/acta/5.webp',
      'assets/apps/acta/6.webp',
      'assets/apps/acta/7.webp',
      'assets/apps/acta/8.webp',
    ],
  ),
  App(
    id: 'HEREMYCARD',
    logo: 'assets/apps/heremycard/logo.png',
    name: 'Here My Card',
    description: 'Dumb 2',
    playstoreUrl: '',
    releaseDate: '25/11/2019',
    stuffUsed: [],
    images: [],
  ),
  App(
    id: 'NEVERFORGET',
    logo: 'assets/apps/neverforget/logo.png',
    name: 'Never Forget',
    description: 'Dumb 3',
    playstoreUrl: '',
    releaseDate: '27/12/2019',
    stuffUsed: [],
    images: [],
  ),
  App(
    id: 'ALUCO',
    logo: 'assets/apps/neverforget/logo.png',
    name: 'Aluco',
    description: 'Dumb 4',
    playstoreUrl: '',
    releaseDate: '02/02/2020',
    stuffUsed: [],
    images: [],
  ),
];

final pubPackages = [
  PubPackage(
    name: 'simple_router',
    description: 'aaaaaa',
    url: 'https://pub.dev/packages/simple_router',
    releaseDate: '15/10/2019',
    rating: '44',
  ),
  PubPackage(
    name: 'connectivity_alert_widget',
    description: 'connectivity_alert_widget',
    url: 'https://pub.dev/packages/connectivity_alert_widget',
    releaseDate: '26/11/2019',
    rating: '77',
  ),
  PubPackage(
    name: 'search_cep',
    description: 'search_cep',
    url: 'https://pub.dev/packages/search_cep',
    releaseDate: '29/11/2019',
    rating: '83',
  ),
  PubPackage(
    name: 'fancy_shimmer_image',
    description: 'fancy_shimmer_image',
    url: 'https://pub.dev/packages/fancy_shimmer_image',
    releaseDate: '17/12/2019',
    rating: '75',
  ),
  PubPackage(
    name: 'shared_preferences_monitor',
    description: 'shared_preferences_monitor',
    url: 'https://pub.dev/packages/shared_preferences_monitor',
    releaseDate: '01/02/2020',
    rating: '50',
  ),
];

final articles = [
  Article(
    title: 'Como resolver status de conectividade do dispositivo',
    url:
        'https://medium.com/@rodrigobastosv/como-resolver-status-de-conectividade-do-dispositivo-9ccaa3941d19',
    releaseDate: '15/01/2020',
  ),
  Article(
    title: 'Organize melhor seu código usando BloC',
    url:
        'https://medium.com/@rodrigobastosv/organize-melhor-seu-c%C3%B3digo-usando-bloc-60b3457925d8',
    releaseDate: '27/01/2020',
  ),
  Article(
    title: 'Parte 2 — Testando aplicativo usando flutter_bloc',
    url:
        'https://medium.com/@rodrigobastosv/parte-2-testando-aplicativo-usando-flutter-bloc-57f1601980a3',
    releaseDate: '02/02/2020',
  ),
];

final projects = [
  Project(
    name: 'Tô com fome',
    githubUrl: 'https://github.com/rodrigobastosv/to_com_fome',
    releaseDate: '19/11/2019',
  ),
];

final profileInfo = {
  'name': 'Rodrigo Bastos Vasconcelos',
  'bio':
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut a pellentesque ipsum, nec semper justo. Proin ac nunc tincidunt, tempor urna eu, pretium enim. Curabitur feugiat cursus ipsum eu euismod. Maecenas lacinia porttitor ante. Nunc interdum et arcu vel mattis. Pellentesque nulla massa, rhoncus sit amet ligula fringilla, cursus euismod dolor. Maecenas finibus eget lectus a porta. Nullam malesuada lorem et mollis aliquet. Integer at massa vel ex condimentum interdum. Pellentesque pharetra et ante id tempus. Praesent commodo sed turpis id hendrerit. Fusce non leo eget odio pellentesque imperdiet. Vivamus non urna nec augue pretium sagittis et ut turpis. Nunc non congue tortor. Quisque blandit, nunc a tincidunt malesuada, est dolor eleifend nunc, ut pretium quam nulla et quam. Nulla id ante justo. Duis luctus sapien sit amet mi imperdiet facilisis. Fusce pulvinar euismod justo, tempor mattis diam sodales nec. Pellentesque convallis quis ligula quis commodo. Curabitur varius consequat suscipit. Ut placerat eros ipsum. Maecenas vulputate, dolor facilisis ultrices viverra, diam neque consequat augue, ut maximus diam lorem quis nibh. Donec scelerisque placerat pulvinar. Morbi tempor id lectus eget ullamcorper. Nunc tristique, massa vel congue sodales, erat sapien ullamcorper massa, ac commodo arcu magna ac nunc. Donec posuere sagittis condimentum.',
};
