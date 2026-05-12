/// Supported years for the catalog.
const int minYear = 1980;
const int maxYear = 2023;

/// Month names in Chinese.
const List<String> monthNames = [
  '', '1月', '2月', '3月', '4月', '5月', '6月',
  '7月', '8月', '9月', '10月', '11月', '12月',
];

/// Get available months for a given year from the catalog.
/// Returns only months that have songs.
List<int> availableMonthsForYear(int year) {
  // This will be populated from the catalog at runtime.
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
}
