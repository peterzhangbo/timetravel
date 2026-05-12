import urllib.request
import json
import time
from datetime import datetime

# List of top Chinese artists across decades
artists = [
    "周杰伦", "陈奕迅", "林俊杰", "王菲", "张学友", "刘德华", "邓丽君", "罗大佑", "李宗盛", "五月天",
    "孙燕姿", "梁静茹", "蔡依林", "张惠妹", "王力宏", "陶喆", "S.H.E", "Beyond", "张国荣", "梅艳芳",
    "林忆莲", "莫文蔚", "陈百强", "谭咏麟", "张信哲", "齐秦", "伍佰", "动力火车", "信乐团", "F.I.R.",
    "萧敬腾", "杨宗纬", "林宥嘉", "苏打绿", "田馥甄", "邓紫棋", "李荣浩", "薛之谦", "毛不易", "周深",
    "张靓颖", "张杰", "华晨宇", "李宇春", "朴树", "许巍", "赵雷", "宋冬野", "陈粒", "新裤子",
    "万能青年旅店", "痛仰乐队", "告五人", "草东没有派对", "陈绮贞", "张震岳", "蔡健雅", "方大同", "卢广仲",
    "杨千嬅", "容祖儿", "Twins", "谢霆锋", "古巨基", "郑伊健", "黎明", "郭富城", "林志炫", "费玉清",
    "任贤齐", "周华健", "童安格", "张宇", "陈升", "潘玮柏", "张韶涵", "王心凌", "杨丞琳", "吴青峰",
    "徐佳莹", "袁娅维", "单依纯", "汪苏泷", "许嵩", "胡彦斌", "张雨生", "陈淑桦", "孟庭苇", "许茹芸"
]

all_entries = []
seen_albums = set()

# Map genre to mood (simple mapping for demonstration)
genre_mood_map = {
    "Pop": "快乐",
    "Mandopop": "怀旧",
    "Cantopop": "怀旧",
    "Rock": "激情",
    "C-Pop": "平静",
    "Folk": "平静",
    "Singer/Songwriter": "悲伤",
    "Alternative": "激情",
    "R&B/Soul": "悲伤",
    "Electronic": "快乐"
}

def get_mood(genre):
    return genre_mood_map.get(genre, "平静")

print(f"Fetching real data from iTunes API for {len(artists)} artists...")

import ssl

# Bypass SSL verification for macOS Python environments or proxy interceptions
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

for artist in artists:
    url = f"https://itunes.apple.com/search?term={urllib.parse.quote(artist)}&entity=album&limit=100&country=hk"
    try:
        req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0'})
        with urllib.request.urlopen(req, timeout=10, context=ctx) as response:
            data = json.loads(response.read().decode())
            for result in data.get('results', []):
                collection_name = result.get('collectionName', '').replace("'", "\\'")
                artist_name = result.get('artistName', '').replace("'", "\\'")
                release_date = result.get('releaseDate', '')
                genre = result.get('primaryGenreName', 'Pop')
                
                if not collection_name or not release_date:
                    continue
                    
                # Skip duplicate albums
                album_key = f"{artist_name}-{collection_name}"
                if album_key in seen_albums:
                    continue
                seen_albums.add(album_key)
                
                try:
                    dt = datetime.strptime(release_date, "%Y-%m-%dT%H:%M:%SZ")
                    year = dt.year
                    month = dt.month
                    if 1980 <= year <= 2029:
                        mood = get_mood(genre)
                        # We use the album name as both title and album for now, since we searched for albums
                        # To make it a song entry, we'll just represent the album
                        entry = f"  SongEntry(title: '{collection_name}', artist: '{artist_name}', album: '{collection_name}', year: {year}, month: {month}, genre: '{genre}', mood: '{mood}'),"
                        all_entries.append(entry)
                except Exception:
                    pass
    except Exception as e:
        print(f"Failed to fetch {artist}: {e}")
    
    # Slight sleep to avoid rate limits
    time.sleep(0.1)

print(f"Found {len(all_entries)} real albums.")

# Write to Dart file
with open('lib/models/real_catalog.dart', 'w', encoding='utf-8') as f:
    f.write("import 'song_catalog.dart';\n\n")
    f.write("// Real album data fetched dynamically from iTunes API\n")
    f.write("const List<SongEntry> realCatalog = [\n")
    f.write("\n".join(all_entries))
    f.write("\n];\n")

print("Generated lib/models/real_catalog.dart successfully.")
