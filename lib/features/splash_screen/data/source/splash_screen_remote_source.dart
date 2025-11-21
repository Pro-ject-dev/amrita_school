class SplashScreenRemoteSource {
  Future<String> fetchValue() async {
    await Future.delayed(const Duration(seconds: 5));
    return "Fetched value from API";
  }
}
