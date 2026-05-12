import urllib.request
import json
import time
import ssl
from datetime import datetime
import os

# 刚才失败的歌手名单
missing_artists = [
    "李荣浩", "周深", "华晨宇", "许巍", "陈粒", "新裤子", "万能青年旅店", 
    "痛仰乐队", "告五人", "陈绮贞", "蔡健雅", "林志炫", "任贤齐", "周华健", 
    "潘玮柏", "张韶涵", "王心凌", "杨丞琳", "吴青峰", "徐佳莹", "袁娅维", 
    "单依纯", "汪苏泷", "许嵩", "胡彦斌", "张雨生", "陈淑桦", "孟庭苇", "许茹芸"
]

all_entries = []
seen_albums = set()

genre_mood_map = {
    "Pop": "快乐", "Mandopop": "怀旧", "Cantopop": "怀旧",
    "Rock": "激情", "C-Pop": "平静", "Folk": "平静",
    "Singer/Songwriter": "悲伤", "Alternative": "激情",
    "R&B/Soul": "悲伤", "Electronic": "快乐"
}

def get_mood(genre):
    return genre_mood_map.get(genre, "平静")

print(f"Fetching missing data for {len(missing_artists)} artists...")

# 绕过 SSL 验证
ctx = ssl.create_default_context()
ctx.check_hostname = False
ctx.verify_mode = ssl.CERT_NONE

# 尝试不同的 store region，有时 403 是因为地区版权问题。默认尝试 tw，不行再尝试 hk/cn
regions = ['tw', 'hk', 'cn']

for artist in missing_artists:
    success = False
    for region in regions:
        url = f"https://itunes.apple.com/search?term={urllib.parse.quote(artist)}&entity=album&limit=100&country={region}"
        try:
            req = urllib.request.Request(url, headers={'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)'})
            with urllib.request.urlopen(req, timeout=10, context=ctx) as response:
                data = json.loads(response.read().decode())
                results = data.get('results', [])
                if not results:
                    continue
                
                for result in results:
                    collection_name = result.get('collectionName', '').replace("'", "\\'")
                    artist_name = result.get('artistName', '').replace("'", "\\'")
                    release_date = result.get('releaseDate', '')
                    genre = result.get('primaryGenreName', 'Pop')
                    
                    if not collection_name or not release_date: continue
                        
                    album_key = f"{artist_name}-{collection_name}"
                    if album_key in seen_albums: continue
                    seen_albums.add(album_key)
                    
                    try:
                        dt = datetime.strptime(release_date, "%Y-%m-%dT%H:%M:%SZ")
                        if 1980 <= dt.year <= 2029:
                            mood = get_mood(genre)
                            entry = f"  SongEntry(title: '{collection_name}', artist: '{artist_name}', album: '{collection_name}', year: {dt.year}, month: {dt.month}, genre: '{genre}', mood: '{mood}'),"
                            all_entries.append(entry)
                    except Exception: pass
                
                success = True
                print(f"Success: {artist} (from {region})")
                break # 成功获取到数据就跳出地区轮询
                
        except Exception as e:
            # 忽略当前地区的错误，继续尝试下一个地区
            pass
            
        time.sleep(1) # 增加延迟，避免触发 429
        
    if not success:
        print(f"Still failed to fetch: {artist}")
        
    # 增加较长延迟，避免触发 Apple API 封锁
    time.sleep(2)

print(f"Found {len(all_entries)} additional albums.")

if all_entries:
    file_path = 'lib/models/real_catalog.dart'
    if os.path.exists(file_path):
        # 读取现有的并去掉最后一行 "];"
        with open(file_path, 'r', encoding='utf-8') as f:
            lines = f.readlines()
        
        # 移除最后的 "];\n"
        while lines and (lines[-1].strip() == "];" or lines[-1].strip() == ""):
            lines.pop()
            
        with open(file_path, 'w', encoding='utf-8') as f:
            f.writelines(lines)
            f.write("\n")
            f.write("\n".join(all_entries))
            f.write("\n];\n")
            
        print("Appended missing data to lib/models/real_catalog.dart successfully.")
    else:
        print("Error: Could not find lib/models/real_catalog.dart to append to.")
