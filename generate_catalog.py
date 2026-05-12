import json
import random

genres = ['国语流行', '粤语流行', '摇滚', '民谣', 'R&B', '嘻哈', '电子', '爵士']
artists = ['周杰伦', '陈奕迅', '林俊杰', '王菲', '邓紫棋', '张学友', '李宗盛', '罗大佑', '孙燕姿', '五月天']
moods = ['快乐', '悲伤', '平静', '激情', '怀旧']
adjectives = ['快乐', '悲伤', '寂寞', '狂野', '温柔', '安静', '燃烧', '迷茫', '希望', '回忆']
nouns = ['时光', '夜晚', '风', '雨', '海', '城市', '梦', '心', '爱', '路']

entries = []

for year in range(1980, 2030):
    for month in range(1, 13):
        # 3-5 songs per month
        num_songs = random.randint(3, 5)
        for i in range(num_songs):
            artist = random.choice(artists)
            title = random.choice(adjectives) + '的' + random.choice(nouns)
            album = title + ' (专辑)'
            genre = random.choice(genres)
            mood = random.choice(moods)
            
            entries.append(f"  SongEntry(title: '{title}', artist: '{artist}', album: '{album}', year: {year}, month: {month}, genre: '{genre}', mood: '{mood}'),")

with open('lib/models/generated_catalog.dart', 'w', encoding='utf-8') as f:
    f.write("import 'song_catalog.dart';\n\n")
    f.write("const List<SongEntry> generatedCatalog = [\n")
    f.write("\n".join(entries))
    f.write("\n];\n")
