import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/song_catalog.dart';
import '../models/real_catalog.dart';

final _fullCatalog = [...songCatalog, ...realCatalog];

/// Currently selected year.
final selectedYearProvider = StateProvider<int>((ref) => 2000);

/// Currently selected month (1-12).
final selectedMonthProvider = StateProvider<int>((ref) => 1);

/// Whether the user is in year-selection mode (long-press activated).
final yearSelectionModeProvider = StateProvider<bool>((ref) => false);

/// Currently selected mood.
final selectedMoodProvider = StateProvider<String?>((ref) => null);

/// Songs from the catalog matching the selected year & month (and mood if in radio mode).
final catalogSongsProvider = Provider<List<SongEntry>>((ref) {
  final year = ref.watch(selectedYearProvider);
  final month = ref.watch(selectedMonthProvider);
  final mood = ref.watch(selectedMoodProvider);
  final radioMode = ref.watch(radioModeProvider);
  
  return _fullCatalog.where((s) {
    if (s.year != year || s.month != month) return false;
    if (radioMode && mood != null && s.mood != mood) return false;
    return true;
  }).toList();
});

/// All unique years in the catalog (plus 1980 to 2029 for the UI wheel).
final catalogYearsProvider = Provider<List<int>>((ref) {
  return List.generate(50, (i) => 1980 + i);
});

/// Shuffle index — incremented to trigger "换一批".
final shuffleIndexProvider = StateProvider<int>((ref) => 0);

/// Radio mode toggle.
final radioModeProvider = StateProvider<bool>((ref) => false);
