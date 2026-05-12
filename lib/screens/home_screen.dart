import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/time_provider.dart';
import '../providers/music_provider.dart';
import '../widgets/mini_player.dart';
import '../theme/app_theme.dart';
import '../models/song_catalog.dart';
import '../models/music_track.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late FixedExtentScrollController _monthController;
  late FixedExtentScrollController _yearController;
  bool _isYearMode = false;
  final List<String> _moods = ['快乐', '悲伤', '平静', '激情', '怀旧'];

  @override
  void initState() {
    super.initState();
    final month = ref.read(selectedMonthProvider);
    final year = ref.read(selectedYearProvider);
    final years = ref.read(catalogYearsProvider);
    _monthController = FixedExtentScrollController(initialItem: month - 1);
    _yearController = FixedExtentScrollController(
      initialItem: years.indexOf(year).clamp(0, years.length - 1),
    );
  }

  @override
  void dispose() {
    _monthController.dispose();
    _yearController.dispose();
    super.dispose();
  }

  void _onMonthChanged(int page) {
    final newMonth = page + 1;
    if (newMonth != ref.read(selectedMonthProvider)) {
      HapticFeedback.lightImpact();
      ref.read(selectedMonthProvider.notifier).state = newMonth;
      ref.read(playingIndexProvider.notifier).state = -1;
    }
  }

  void _onYearChanged(int page) {
    final years = ref.read(catalogYearsProvider);
    if (page >= 0 && page < years.length) {
      final newYear = years[page];
      if (newYear != ref.read(selectedYearProvider)) {
        HapticFeedback.lightImpact();
        ref.read(selectedYearProvider.notifier).state = newYear;
        ref.read(playingIndexProvider.notifier).state = -1;
      }
    }
  }

  void _toggleYearMode(bool value) {
    HapticFeedback.mediumImpact();
    setState(() => _isYearMode = value);
    ref.read(yearSelectionModeProvider.notifier).state = value;
  }

  @override
  Widget build(BuildContext context) {
    final year = ref.watch(selectedYearProvider);
    final month = ref.watch(selectedMonthProvider);
    final matchedAsync = ref.watch(matchedTracksProvider);
    final playingIndex = ref.watch(playingIndexProvider);
    final radioMode = ref.watch(radioModeProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            _buildHeader(radioMode),
            const SizedBox(height: 12),
            // Time selector with month swiping
            _buildTimeSelector(year, month),
            const SizedBox(height: 16),
            // Section header
            _buildSectionHeader(year, month, matchedAsync, radioMode),
            const SizedBox(height: 8),
            // Mood selector (only in radio mode)
            if (radioMode) ...[
              _buildMoodSelector(),
              const SizedBox(height: 8),
            ],
            // Track list
            Expanded(
              child: matchedAsync.when(
                data: (matched) => _buildTrackList(matched, playingIndex, year, month),
                loading: () => const Center(
                  child: CircularProgressIndicator(
                      color: AppColors.accent, strokeWidth: 2),
                ),
                error: (e, _) => Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.error_outline_rounded,
                          size: 48, color: Colors.redAccent),
                      const SizedBox(height: 12),
                      Text('加载失败: $e',
                          style: const TextStyle(
                              color: AppColors.textSecondary, fontSize: 13)),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MiniPlayer(),
    );
  }

  Widget _buildHeader(bool radioMode) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
      child: Row(
        children: [
          const Text(
            'TimeTravel',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
              letterSpacing: -0.5,
            ),
          ),
          const Spacer(),
          // Radio mode toggle
          GestureDetector(
            onTap: () {
              HapticFeedback.lightImpact();
              ref.read(radioModeProvider.notifier).state = !radioMode;
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: radioMode
                    ? AppColors.accent.withOpacity(0.2)
                    : AppColors.card,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.radio_rounded,
                      size: 16,
                      color: radioMode ? AppColors.accent : AppColors.textSecondary),
                  const SizedBox(width: 4),
                  Text('电台',
                      style: TextStyle(
                        fontSize: 12,
                        color: radioMode ? AppColors.accent : AppColors.textSecondary,
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeSelector(int year, int month) {
    return Column(
      children: [
        // Year display (tap to toggle year mode)
        GestureDetector(
          onTap: () => _toggleYearMode(!_isYearMode),
          onLongPress: () => _toggleYearMode(true),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: _isYearMode
                  ? AppColors.accent.withOpacity(0.15)
                  : Colors.transparent,
              border: _isYearMode
                  ? Border.all(color: AppColors.accent.withOpacity(0.3))
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_isYearMode) ...[
                  const Icon(Icons.keyboard_arrow_up_rounded,
                      size: 16, color: AppColors.accent),
                  const SizedBox(width: 4),
                ],
                Text(
                  '$year',
                  style: TextStyle(
                    fontSize: _isYearMode ? 20 : 16,
                    fontWeight: FontWeight.w700,
                    color: _isYearMode ? AppColors.accent : AppColors.textSecondary,
                    letterSpacing: 2,
                  ),
                ),
                if (_isYearMode) ...[
                  const SizedBox(width: 4),
                  const Icon(Icons.keyboard_arrow_down_rounded,
                      size: 16, color: AppColors.accent),
                ],
              ],
            ),
          ),
        ),
        const SizedBox(height: 8),
        // Swipeable area: year or month
        SizedBox(
          height: 52,
          child: _isYearMode ? _buildYearSwiper(year) : _buildMonthSwiper(month),
        ),
      ],
    );
  }

  Widget _buildMonthSwiper(int month) {
    return GestureDetector(
      onLongPressStart: (_) => _toggleYearMode(true),
      child: RotatedBox(
        quarterTurns: -1,
        child: ListWheelScrollView.useDelegate(
          controller: _monthController,
          itemExtent: 80,
          physics: const FixedExtentScrollPhysics(),
          onSelectedItemChanged: _onMonthChanged,
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, index) {
              final m = index + 1;
              final isSelected = m == month;
              return RotatedBox(
                quarterTurns: 1,
                child: Center(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: isSelected
                          ? AppColors.accent.withOpacity(0.2)
                          : AppColors.card,
                      border: isSelected
                          ? Border.all(color: AppColors.accent.withOpacity(0.5))
                          : null,
                    ),
                    child: Text(
                      '$m月',
                      style: TextStyle(
                        fontSize: isSelected ? 18 : 15,
                        fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                        color: isSelected ? AppColors.accent : AppColors.textSecondary,
                      ),
                    ),
                  ),
                ),
              );
            },
            childCount: 12,
          ),
        ),
      ),
    );
  }

  Widget _buildYearSwiper(int year) {
    final years = ref.watch(catalogYearsProvider);
    return RotatedBox(
      quarterTurns: -1,
      child: ListWheelScrollView.useDelegate(
        controller: _yearController,
        itemExtent: 100,
        physics: const FixedExtentScrollPhysics(),
        onSelectedItemChanged: _onYearChanged,
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            final y = years[index];
            final isSelected = y == year;
            return RotatedBox(
              quarterTurns: 1,
              child: Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: isSelected
                        ? AppColors.accent.withOpacity(0.2)
                        : AppColors.card,
                    border: isSelected
                        ? Border.all(color: AppColors.accent.withOpacity(0.5))
                        : null,
                  ),
                  child: Text(
                    '$y',
                    style: TextStyle(
                      fontSize: isSelected ? 20 : 16,
                      fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
                      color: isSelected ? AppColors.accent : AppColors.textSecondary,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ),
            );
          },
          childCount: years.length,
        ),
      ),
    );
  }

  Widget _buildSectionHeader(
      int year, int month, AsyncValue<List<(SongEntry, MusicTrack?)>> matchedAsync, bool radioMode) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            '$year年${month}月',
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(width: 8),
          matchedAsync.when(
            data: (matched) {
              final playable = matched.where((m) => m.$2 != null).length;
              return Text(
                '$playable/${matched.length}',
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              );
            },
            loading: () => const SizedBox.shrink(),
            error: (_, __) => const SizedBox.shrink(),
          ),
          const Spacer(),
          // Refresh button
          GestureDetector(
            onTap: () {
              HapticFeedback.mediumImpact();
              ref.read(shuffleIndexProvider.notifier).state++;
              ref.read(playingIndexProvider.notifier).state = -1;
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.accent.withOpacity(0.4)),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.refresh_rounded, size: 16, color: AppColors.accent),
                  SizedBox(width: 4),
                  Text('换一批',
                      style: TextStyle(fontSize: 12, color: AppColors.accent)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMoodSelector() {
    final selectedMood = ref.watch(selectedMoodProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildMoodChip('全部', null, selectedMood == null),
            for (final mood in _moods)
              _buildMoodChip(mood, mood, selectedMood == mood),
          ],
        ),
      ),
    );
  }

  Widget _buildMoodChip(String label, String? mood, bool isSelected) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        ref.read(selectedMoodProvider.notifier).state = mood;
        ref.read(playingIndexProvider.notifier).state = -1;
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? AppColors.accent : AppColors.card,
          border: isSelected ? null : Border.all(color: AppColors.divider),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 13,
            color: isSelected ? AppColors.background : AppColors.textSecondary,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildTrackList(
      List<(SongEntry, MusicTrack?)> matched, int playingIndex, int year, int month) {
    if (matched.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.music_off_rounded,
                size: 48, color: AppColors.textSecondary.withOpacity(0.5)),
            const SizedBox(height: 12),
            Text('$year年$month月 暂无收录',
                style: const TextStyle(color: AppColors.textSecondary, fontSize: 16)),
            const SizedBox(height: 4),
            const Text('试试其他月份',
                style: TextStyle(color: AppColors.textSecondary, fontSize: 13)),
          ],
        ),
      );
    }
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      itemCount: matched.length,
      itemBuilder: (context, index) {
        final (song, track) = matched[index];
        final isPlaying = index == playingIndex;
        final hasMatch = track != null;
        return _TrackCard(
          song: song,
          track: track,
          index: index,
          isPlaying: isPlaying,
          hasMatch: hasMatch,
          onTap: () {
            if (!hasMatch) return;
            HapticFeedback.lightImpact();
            ref.read(playingIndexProvider.notifier).state = index;
          },
        );
      },
    );
  }
}

class _TrackCard extends StatelessWidget {
  final SongEntry song;
  final dynamic track; // MusicTrack?
  final int index;
  final bool isPlaying;
  final bool hasMatch;
  final VoidCallback onTap;

  const _TrackCard({
    required this.song,
    required this.track,
    required this.index,
    required this.isPlaying,
    required this.hasMatch,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: hasMatch ? onTap : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: isPlaying ? AppColors.card : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // Number
            SizedBox(
              width: 28,
              child: Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 14,
                  color: isPlaying ? AppColors.accent : AppColors.textSecondary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            // Artwork or placeholder
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: hasMatch
                  ? Image.network(
                      track.artworkUrl,
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => _artworkPlaceholder(),
                    )
                  : _artworkPlaceholder(),
            ),
            const SizedBox(width: 16),
            // Track info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    song.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: hasMatch
                          ? (isPlaying ? AppColors.accent : AppColors.textPrimary)
                          : AppColors.textSecondary.withOpacity(0.5),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    '${song.artist}${song.album != null ? ' · ${song.album}' : ''}',
                    style: TextStyle(
                      fontSize: 13,
                      color: hasMatch
                          ? AppColors.textSecondary
                          : AppColors.textSecondary.withOpacity(0.4),
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            // Status indicator
            if (!hasMatch)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.orange.withOpacity(0.15),
                ),
                child: const Text('未匹配',
                    style: TextStyle(fontSize: 10, color: Colors.orange)),
              )
            else if (isPlaying)
              const Icon(Icons.equalizer, color: AppColors.accent, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _artworkPlaceholder() {
    return Container(
      width: 48,
      height: 48,
      color: AppColors.card,
      child: const Icon(Icons.music_note_rounded,
          color: AppColors.textSecondary, size: 24),
    );
  }
}
