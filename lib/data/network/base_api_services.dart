abstract class BaseApiServices {
  Future<dynamic> getApi(String url);
  Future<dynamic> postApi(String url, var data);
  Future<dynamic> postApiWithHeader(String url, var data);
}