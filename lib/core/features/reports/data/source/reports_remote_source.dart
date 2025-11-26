class ReportsRemoteSource {
  Future<String> fetchValue() async {
    await Future.delayed(const Duration(milliseconds: 400));
    return "Fetched value from API";
  }
}
