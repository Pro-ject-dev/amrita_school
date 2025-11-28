class SplashScreenRemoteSource {
  Future<String> fetchValue() async {
    await Future.delayed(const Duration(milliseconds: 3500));
    return "Fetched value from API";
  }
}
