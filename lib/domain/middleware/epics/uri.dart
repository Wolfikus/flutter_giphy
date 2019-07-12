const API_KEY = '{PUT_YOUR_GIPTHU_TOKE_NERE}';

const String BASE_URL = 'api.giphy.com';

const String SEARCH_URL = '/v1/gifs/search';
const String TRENDING_URL = '/v1/gifs/trending';
const String GIFS_URL = '/v1/gifs';

final Uri fetchImagesUrl = Uri.https(BASE_URL, SEARCH_URL);
final Uri fetchTrendingUrl = Uri.https(BASE_URL, TRENDING_URL);
final Uri fetchFavouritesUrl = Uri.https(BASE_URL, GIFS_URL);