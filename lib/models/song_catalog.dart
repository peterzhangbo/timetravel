/// Curated static catalog of Chinese popular music.
/// Each entry has year, month, and metadata for Apple Music matching.
class SongEntry {
  final String title;
  final String artist;
  final String? album;
  final int year;
  final int month; // 1-12
  final String? genre;
  final String? mood;

  const SongEntry({
    required this.title,
    required this.artist,
    this.album,
    required this.year,
    required this.month,
    this.genre,
    this.mood,
  });

  /// Search term for Apple Music matching.
  String get searchQuery => '$artist $title';
}

/// Full catalog of Chinese popular music, organized chronologically.
/// Sources: major music charts, award shows, and cultural milestones.
const List<SongEntry> songCatalog = [
  // ============================================================
  //  1980s — 谭张梅时代 (Tam, Cheung, Mui era)
  // ============================================================
  SongEntry(title: 'Monica', artist: '张国荣', album: 'Monica', year: 1984, month: 7, genre: '粤语流行'),
  SongEntry(title: '风继续吹', artist: '张国荣', album: '风继续吹', year: 1983, month: 5, genre: '粤语流行'),
  SongEntry(title: '当年情', artist: '张国荣', album: '当年情', year: 1986, month: 10, genre: '粤语流行'),
  SongEntry(title: '沉默是金', artist: '张国荣/许冠杰', album: 'Hot Summer', year: 1988, month: 7, genre: '粤语流行'),
  SongEntry(title: '倩女幽魂', artist: '张国荣', album: '倩女幽魂', year: 1987, month: 7, genre: '粤语流行'),
  SongEntry(title: '我', artist: '张国荣', album: '大热', year: 2000, month: 1, genre: '粤语流行'),
  SongEntry(title: '风再起时', artist: '张国荣', album: 'Final Encounter', year: 1989, month: 9, genre: '粤语流行'),

  SongEntry(title: '水中花', artist: '谭咏麟', album: '迷惑', year: 1988, month: 9, genre: '粤语流行'),
  SongEntry(title: '朋友', artist: '谭咏麟', album: '暴风女神Lorelei', year: 1985, month: 1, genre: '粤语流行'),
  SongEntry(title: '爱在深秋', artist: '谭咏麟', album: '爱的根源', year: 1984, month: 7, genre: '粤语流行'),
  SongEntry(title: '讲不出再见', artist: '谭咏麟', album: '梦幻的笑容', year: 1994, month: 2, genre: '粤语流行'),
  SongEntry(title: '卡拉永远OK', artist: '谭咏麟', album: '梦幻的笑容', year: 1994, month: 2, genre: '粤语流行'),

  SongEntry(title: '似水流年', artist: '梅艳芳', album: '似水流年', year: 1984, month: 1, genre: '粤语流行'),
  SongEntry(title: '女人花', artist: '梅艳芳', album: '女人花', year: 1997, month: 2, genre: '粤语流行'),
  SongEntry(title: '夕阳之歌', artist: '梅艳芳', album: '夕阳之歌', year: 1989, month: 6, genre: '粤语流行'),
  SongEntry(title: '亲密爱人', artist: '梅艳芳', album: '亲密爱人', year: 1991, month: 1, genre: '粤语流行'),
  SongEntry(title: '一生爱你千百回', artist: '梅艳芳', album: 'With', year: 1997, month: 11, genre: '粤语流行'),

  SongEntry(title: '上海滩', artist: '叶丽仪', album: '上海滩', year: 1980, month: 1, genre: '粤语流行'),
  SongEntry(title: '铁血丹心', artist: '罗文/甄妮', album: '射雕英雄传', year: 1983, month: 1, genre: '粤语流行'),
  SongEntry(title: '世间始终你好', artist: '罗文/甄妮', album: '射雕英雄传', year: 1983, month: 1, genre: '粤语流行'),
  SongEntry(title: '偏偏喜欢你', artist: '陈百强', album: '偏偏喜欢你', year: 1983, month: 8, genre: '粤语流行'),
  SongEntry(title: '一生何求', artist: '陈百强', album: '一生何求', year: 1989, month: 7, genre: '粤语流行'),
  SongEntry(title: '浪子心声', artist: '许冠杰', album: '半斤八两', year: 1976, month: 1, genre: '粤语流行'),
  SongEntry(title: '半斤八两', artist: '许冠杰', album: '半斤八两', year: 1976, month: 1, genre: '粤语流行'),
  SongEntry(title: '沧海一声笑', artist: '许冠杰', album: '笑傲江湖', year: 1990, month: 4, genre: '粤语流行'),

  // 台湾80年代
  SongEntry(title: '月亮代表我的心', artist: '邓丽君', album: '岛国之情歌', year: 1977, month: 1, genre: '国语流行'),
  SongEntry(title: '甜蜜蜜', artist: '邓丽君', album: '甜蜜蜜', year: 1979, month: 1, genre: '国语流行'),
  SongEntry(title: '小城故事', artist: '邓丽君', album: '小城故事', year: 1979, month: 3, genre: '国语流行'),
  SongEntry(title: '我只在乎你', artist: '邓丽君', album: '我只在乎你', year: 1987, month: 1, genre: '国语流行'),
  SongEntry(title: '但愿人长久', artist: '邓丽君', album: '淡淡幽情', year: 1983, month: 1, genre: '国语流行'),
  SongEntry(title: '又见炊烟', artist: '邓丽君', album: '岛国之情歌', year: 1978, month: 1, genre: '国语流行'),
  SongEntry(title: '路边的野花不要采', artist: '邓丽君', album: '路边的野花不要采', year: 1973, month: 1, genre: '国语流行'),

  SongEntry(title: '童年', artist: '罗大佑', album: '之乎者也', year: 1982, month: 4, genre: '国语流行'),
  SongEntry(title: '光阴的故事', artist: '罗大佑', album: '之乎者也', year: 1982, month: 4, genre: '国语流行'),
  SongEntry(title: '恋曲1990', artist: '罗大佑', album: '爱人同志', year: 1988, month: 12, genre: '国语流行'),
  SongEntry(title: '东方之珠', artist: '罗大佑', album: '皇后大道东', year: 1991, month: 7, genre: '国语流行'),
  SongEntry(title: '明天会更好', artist: '群星', album: '明天会更好', year: 1985, month: 10, genre: '国语流行'),

  SongEntry(title: '一场游戏一场梦', artist: '王杰', album: '一场游戏一场梦', year: 1987, month: 12, genre: '国语流行'),
  SongEntry(title: '安妮', artist: '王杰', album: '一场游戏一场梦', year: 1987, month: 12, genre: '国语流行'),
  SongEntry(title: '大约在冬季', artist: '齐秦', album: '冬雨', year: 1987, month: 2, genre: '国语流行'),
  SongEntry(title: '外面的世界', artist: '齐秦', album: '出没', year: 1986, month: 1, genre: '国语流行'),
  SongEntry(title: '狼', artist: '齐秦', album: '狼的专辑', year: 1985, month: 1, genre: '国语流行'),
  SongEntry(title: '橄榄树', artist: '齐豫', album: '橄榄树', year: 1979, month: 1, genre: '国语流行'),
  SongEntry(title: '外婆的澎湖湾', artist: '潘安邦', album: '外婆的澎湖湾', year: 1979, month: 1, genre: '国语流行'),
  SongEntry(title: '兰花草', artist: '刘文正', album: '兰花草', year: 1979, month: 1, genre: '国语流行'),
  SongEntry(title: '三月里的小雨', artist: '刘文正', album: '三月里的小雨', year: 1981, month: 1, genre: '国语流行'),
  SongEntry(title: '掌声响起', artist: '凤飞飞', album: '掌声响起', year: 1986, month: 1, genre: '国语流行'),
  SongEntry(title: '追梦人', artist: '凤飞飞', album: '追梦人', year: 1991, month: 1, genre: '国语流行'),
  SongEntry(title: '驿动的心', artist: '姜育恒', album: '驿动的心', year: 1987, month: 1, genre: '国语流行'),
  SongEntry(title: '再回首', artist: '姜育恒', album: '再回首', year: 1989, month: 6, genre: '国语流行'),
  SongEntry(title: '其实你不懂我的心', artist: '童安格', album: '其实你不懂我的心', year: 1989, month: 3, genre: '国语流行'),
  SongEntry(title: '把悲伤留给自己', artist: '陈升', album: '拥挤的乐园', year: 1991, month: 1, genre: '国语流行'),
  SongEntry(title: '我很丑可是我很温柔', artist: '赵传', album: '我很丑可是我很温柔', year: 1988, month: 11, genre: '国语流行'),
  SongEntry(title: '我终于失去了你', artist: '赵传', album: '我终于失去了你', year: 1989, month: 10, genre: '国语流行'),
  SongEntry(title: '爱如潮水', artist: '张信哲', album: '爱如潮水', year: 1993, month: 5, genre: '国语流行'),
  SongEntry(title: '过火', artist: '张信哲', album: '等待', year: 1995, month: 1, genre: '国语流行'),
  SongEntry(title: '别怕我伤心', artist: '张信哲', album: '等待', year: 1995, month: 1, genre: '国语流行'),

  // ============================================================
  //  1990s — 四大天王+摇滚+另类
  // ============================================================
  // 张学友
  SongEntry(title: '吻别', artist: '张学友', album: '吻别', year: 1993, month: 3, genre: '国语流行'),
  SongEntry(title: '一千个伤心的理由', artist: '张学友', album: '真爱', year: 1995, month: 4, genre: '国语流行'),
  SongEntry(title: '只想一生跟你走', artist: '张学友', album: '我与你', year: 1993, month: 7, genre: '粤语流行'),
  SongEntry(title: '每天爱你多一些', artist: '张学友', album: '情不禁', year: 1991, month: 1, genre: '粤语流行'),
  SongEntry(title: '祝福', artist: '张学友', album: '祝福', year: 1993, month: 12, genre: '国语流行'),
  SongEntry(title: '情网', artist: '张学友', album: '真爱', year: 1995, month: 4, genre: '国语流行'),
  SongEntry(title: '你好毒', artist: '张学友', album: '有个人', year: 1999, month: 1, genre: '国语流行'),
  SongEntry(title: '头发乱了', artist: '张学友', album: '有个人', year: 1999, month: 1, genre: '粤语流行'),
  SongEntry(title: '她来听我的演唱会', artist: '张学友', album: '走过1999', year: 1999, month: 11, genre: '国语流行'),
  SongEntry(title: '爱是永恒', artist: '张学友', album: '雪狼湖', year: 1997, month: 1, genre: '粤语流行'),

  // 刘德华
  SongEntry(title: '忘情水', artist: '刘德华', album: '忘情水', year: 1994, month: 4, genre: '国语流行'),
  SongEntry(title: '谢谢你的爱', artist: '刘德华', album: '谢谢你的爱', year: 1992, month: 10, genre: '国语流行'),
  SongEntry(title: '一起走过的日子', artist: '刘德华', album: '一起走过的日子', year: 1991, month: 8, genre: '粤语流行'),
  SongEntry(title: '暗里着迷', artist: '刘德华', album: '答案就是你', year: 1993, month: 1, genre: '粤语流行'),
  SongEntry(title: '中国人', artist: '刘德华', album: '中国人', year: 1997, month: 4, genre: '国语流行'),
  SongEntry(title: '爱你一万年', artist: '刘德华', album: '人间爱', year: 1999, month: 10, genre: '国语流行'),
  SongEntry(title: '冰雨', artist: '刘德华', album: '人间爱', year: 1999, month: 10, genre: '国语流行'),
  SongEntry(title: '今天', artist: '刘德华', album: '真永远', year: 1994, month: 1, genre: '国语流行'),

  // 黎明
  SongEntry(title: '今夜你会不会来', artist: '黎明', album: '是爱是缘', year: 1992, month: 6, genre: '粤语流行'),
  SongEntry(title: '我来自北京', artist: '黎明', album: '我来自北京', year: 1992, month: 1, genre: '粤语流行'),
  SongEntry(title: '那有一天不想你', artist: '黎明', album: '天地情缘', year: 1994, month: 1, genre: '粤语流行'),
  SongEntry(title: '如果可以再见你', artist: '黎明', album: '如果可以再见你', year: 1998, month: 1, genre: '国语流行'),

  // 郭富城
  SongEntry(title: '对你爱不完', artist: '郭富城', album: '对你爱不完', year: 1990, month: 9, genre: '国语流行'),
  SongEntry(title: '我是不是该安静的走开', artist: '郭富城', album: '我是不是该安静的走开', year: 1991, month: 4, genre: '国语流行'),
  SongEntry(title: '狂野之城', artist: '郭富城', album: '狂野之城', year: 1994, month: 1, genre: '粤语流行'),
  SongEntry(title: '唱这歌', artist: '郭富城', album: '唱这歌', year: 1997, month: 1, genre: '粤语流行'),

  // Beyond
  SongEntry(title: '海阔天空', artist: 'Beyond', album: '乐与怒', year: 1993, month: 5, genre: '粤语摇滚'),
  SongEntry(title: '真的爱你', artist: 'Beyond', album: 'Beyond IV', year: 1989, month: 7, genre: '粤语摇滚'),
  SongEntry(title: '光辉岁月', artist: 'Beyond', album: '命运派对', year: 1990, month: 9, genre: '粤语摇滚'),
  SongEntry(title: '不再犹豫', artist: 'Beyond', album: 'DELIBERATE', year: 1991, month: 7, genre: '粤语摇滚'),
  SongEntry(title: '喜欢你', artist: 'Beyond', album: '秘密警察', year: 1988, month: 9, genre: '粤语摇滚'),
  SongEntry(title: '冷雨夜', artist: 'Beyond', album: '真的见证', year: 1989, month: 12, genre: '粤语摇滚'),
  SongEntry(title: '大地', artist: 'Beyond', album: '秘密警察', year: 1988, month: 9, genre: '粤语摇滚'),
  SongEntry(title: '情人', artist: 'Beyond', album: 'Beyond IV', year: 1989, month: 7, genre: '粤语摇滚'),
  SongEntry(title: '长城', artist: 'Beyond', album: '乐与怒', year: 1993, month: 5, genre: '粤语摇滚'),
  SongEntry(title: 'AMANI', artist: 'Beyond', album: 'DELIBERATE', year: 1991, month: 7, genre: '粤语摇滚'),

  // 王菲
  SongEntry(title: '红豆', artist: '王菲', album: '唱游', year: 1998, month: 10, genre: '国语流行'),
  SongEntry(title: '我愿意', artist: '王菲', album: '天空', year: 1994, month: 11, genre: '国语流行'),
  SongEntry(title: '天空', artist: '王菲', album: '天空', year: 1994, month: 11, genre: '国语流行'),
  SongEntry(title: '匆匆那年', artist: '王菲', album: '匆匆那年', year: 2014, month: 11, genre: '国语流行'),
  SongEntry(title: '传奇', artist: '王菲', album: '传奇', year: 2010, month: 2, genre: '国语流行'),
  SongEntry(title: '但愿人长久', artist: '王菲', album: '菲靡靡之音', year: 1995, month: 7, genre: '国语流行'),
  SongEntry(title: '浮躁', artist: '王菲', album: '浮躁', year: 1996, month: 6, genre: '国语流行'),
  SongEntry(title: '暧昧', artist: '王菲', album: 'Di-Dar', year: 1995, month: 12, genre: '粤语流行'),
  SongEntry(title: '容易受伤的女人', artist: '王菲', album: 'Coming Home', year: 1992, month: 8, genre: '粤语流行'),
  SongEntry(title: '流年', artist: '王菲', album: '王菲', year: 2001, month: 10, genre: '国语流行'),
  SongEntry(title: '旋木', artist: '王菲', album: '将爱', year: 2003, month: 11, genre: '国语流行'),

  // 周华健
  SongEntry(title: '朋友', artist: '周华健', album: '朋友', year: 1997, month: 4, genre: '国语流行'),
  SongEntry(title: '花心', artist: '周华健', album: '花心', year: 1993, month: 4, genre: '国语流行'),
  SongEntry(title: '让我欢喜让我忧', artist: '周华健', album: '让我欢喜让我忧', year: 1991, month: 11, genre: '国语流行'),
  SongEntry(title: '刀剑如梦', artist: '周华健', album: '风雨无阻', year: 1994, month: 7, genre: '国语流行'),
  SongEntry(title: '难念的经', artist: '周华健', album: '难念的经', year: 1996, month: 12, genre: '粤语流行'),
  SongEntry(title: '亲亲我的宝贝', artist: '周华健', album: '亲亲我的宝贝', year: 1990, month: 1, genre: '国语流行'),

  // 任贤齐
  SongEntry(title: '心太软', artist: '任贤齐', album: '心太软', year: 1996, month: 12, genre: '国语流行'),
  SongEntry(title: '伤心太平洋', artist: '任贤齐', album: '很受伤', year: 1998, month: 8, genre: '国语流行'),
  SongEntry(title: '对面的女孩看过来', artist: '任贤齐', album: '爱像太平洋', year: 1998, month: 1, genre: '国语流行'),
  SongEntry(title: '浪花一朵朵', artist: '任贤齐', album: '为爱走天涯', year: 2000, month: 1, genre: '国语流行'),

  // 李宗盛
  SongEntry(title: '爱的代价', artist: '李宗盛', album: '作品李宗盛', year: 1992, month: 1, genre: '国语流行'),
  SongEntry(title: '鬼迷心窍', artist: '李宗盛', album: '作品李宗盛', year: 1992, month: 1, genre: '国语流行'),
  SongEntry(title: '当爱已成往事', artist: '李宗盛/林忆莲', album: '霸王别姬', year: 1993, month: 1, genre: '国语流行'),
  SongEntry(title: '山丘', artist: '李宗盛', album: '山丘', year: 2013, month: 9, genre: '国语流行'),

  // 伍佰
  SongEntry(title: '挪威的森林', artist: '伍佰&China Blue', album: '爱情的尽头', year: 1996, month: 6, genre: '台语摇滚'),
  SongEntry(title: '突然的自我', artist: '伍佰&China Blue', album: '浪人情歌', year: 1994, month: 12, genre: '台语摇滚'),
  SongEntry(title: '浪人情歌', artist: '伍佰&China Blue', album: '浪人情歌', year: 1994, month: 12, genre: '台语摇滚'),
  SongEntry(title: 'Last Dance', artist: '伍佰&China Blue', album: '爱情的尽头', year: 1996, month: 6, genre: '台语摇滚'),
  SongEntry(title: '白鸽', artist: '伍佰&China Blue', album: '白鸽', year: 1999, month: 11, genre: '台语摇滚'),
  SongEntry(title: '你是我的花朵', artist: '伍佰&China Blue', album: '梦的河流', year: 2001, month: 12, genre: '台语摇滚'),

  // 张惠妹
  SongEntry(title: '姐妹', artist: '张惠妹', album: '姐妹', year: 1996, month: 12, genre: '国语流行'),
  SongEntry(title: 'Bad Boy', artist: '张惠妹', album: 'Bad Boy', year: 1997, month: 6, genre: '国语流行'),
  SongEntry(title: '听海', artist: '张惠妹', album: 'Bad Boy', year: 1997, month: 6, genre: '国语流行'),
  SongEntry(title: '我可以抱你吗', artist: '张惠妹', album: '我可以抱你吗', year: 1999, month: 6, genre: '国语流行'),
  SongEntry(title: '记得', artist: '张惠妹', album: '真实', year: 2001, month: 9, genre: '国语流行'),
  SongEntry(title: '三天三夜', artist: '张惠妹', album: '牵手', year: 1998, month: 10, genre: '国语流行'),

  // 那英
  SongEntry(title: '征服', artist: '那英', album: '征服', year: 1998, month: 7, genre: '国语流行'),
  SongEntry(title: '白天不懂夜的黑', artist: '那英', album: '白天不懂夜的黑', year: 1995, month: 1, genre: '国语流行'),
  SongEntry(title: '雾里看花', artist: '那英', album: '雾里看花', year: 1994, month: 1, genre: '国语流行'),
  SongEntry(title: '默', artist: '那英', album: '默', year: 2015, month: 6, genre: '国语流行'),

  // 张宇
  SongEntry(title: '雨一直下', artist: '张宇', album: '月亮太阳', year: 1999, month: 9, genre: '国语流行'),
  SongEntry(title: '用心良苦', artist: '张宇', album: '用心良苦', year: 1993, month: 11, genre: '国语流行'),
  SongEntry(title: '小小的太阳', artist: '张宇', album: '整个八月', year: 1998, month: 8, genre: '国语流行'),

  // 动力火车
  SongEntry(title: '当', artist: '动力火车', album: '明天的明天的明天', year: 1998, month: 1, genre: '国语流行'),
  SongEntry(title: '明天的明天的明天', artist: '动力火车', album: '明天的明天的明天', year: 1998, month: 1, genre: '国语流行'),
  SongEntry(title: '忠孝东路走九遍', artist: '动力火车', album: '忠孝东路走九遍', year: 2001, month: 7, genre: '国语流行'),

  // 迪克牛仔
  SongEntry(title: '有多少爱可以重来', artist: '迪克牛仔', album: '有多少爱可以重来', year: 1999, month: 1, genre: '国语流行'),
  SongEntry(title: '三万英尺', artist: '迪克牛仔', album: '三万英尺', year: 1999, month: 1, genre: '国语流行'),

  // 陈奕迅
  SongEntry(title: 'K歌之王', artist: '陈奕迅', album: '打得火热', year: 2000, month: 7, genre: '粤语流行'),
  SongEntry(title: '十年', artist: '陈奕迅', album: '黑白灰', year: 2003, month: 4, genre: '国语流行'),
  SongEntry(title: '富士山下', artist: '陈奕迅', album: 'What\'s Going On...?', year: 2006, month: 11, genre: '粤语流行'),
  SongEntry(title: '浮夸', artist: '陈奕迅', album: 'U87', year: 2005, month: 6, genre: '粤语流行'),
  SongEntry(title: '不要说话', artist: '陈奕迅', album: '不想放手', year: 2008, month: 9, genre: '国语流行'),
  SongEntry(title: '好久不见', artist: '陈奕迅', album: '认了吧', year: 2007, month: 4, genre: '国语流行'),
  SongEntry(title: '淘汰', artist: '陈奕迅', album: '认了吧', year: 2007, month: 4, genre: '国语流行'),
  SongEntry(title: '红玫瑰', artist: '陈奕迅', album: '认了吧', year: 2007, month: 4, genre: '国语流行'),
  SongEntry(title: '孤勇者', artist: '陈奕迅', album: '孤勇者', year: 2021, month: 11, genre: '国语流行'),
  SongEntry(title: 'Shall We Talk', artist: '陈奕迅', album: 'Shall We Dance? Shall We Talk!', year: 2001, month: 4, genre: '粤语流行'),
  SongEntry(title: '单车', artist: '陈奕迅', album: 'Shall We Dance? Shall We Talk!', year: 2001, month: 4, genre: '粤语流行'),
  SongEntry(title: '明年今日', artist: '陈奕迅', album: 'The Line-Up', year: 2002, month: 7, genre: '粤语流行'),
  SongEntry(title: '无条件', artist: '陈奕迅', album: '米·闪', year: 2014, month: 5, genre: '粤语流行'),

  // 周杰伦 — 华语天王
  SongEntry(title: '双截棍', artist: '周杰伦', album: '范特西', year: 2001, month: 9, genre: '国语流行'),
  SongEntry(title: '简单爱', artist: '周杰伦', album: '范特西', year: 2001, month: 9, genre: '国语流行'),
  SongEntry(title: '安静', artist: '周杰伦', album: '范特西', year: 2001, month: 9, genre: '国语流行'),
  SongEntry(title: '开不了口', artist: '周杰伦', album: '范特西', year: 2001, month: 9, genre: '国语流行'),
  SongEntry(title: '龙卷风', artist: '周杰伦', album: 'Jay', year: 2000, month: 11, genre: '国语流行'),
  SongEntry(title: '星晴', artist: '周杰伦', album: 'Jay', year: 2000, month: 11, genre: '国语流行'),
  SongEntry(title: '可爱女人', artist: '周杰伦', album: 'Jay', year: 2000, month: 11, genre: '国语流行'),
  SongEntry(title: '东风破', artist: '周杰伦', album: '叶惠美', year: 2003, month: 7, genre: '国语流行'),
  SongEntry(title: '以父之名', artist: '周杰伦', album: '叶惠美', year: 2003, month: 7, genre: '国语流行'),
  SongEntry(title: '晴天', artist: '周杰伦', album: '叶惠美', year: 2003, month: 7, genre: '国语流行'),
  SongEntry(title: '七里香', artist: '周杰伦', album: '七里香', year: 2004, month: 8, genre: '国语流行'),
  SongEntry(title: '搁浅', artist: '周杰伦', album: '七里香', year: 2004, month: 8, genre: '国语流行'),
  SongEntry(title: '夜曲', artist: '周杰伦', album: '十一月的萧邦', year: 2005, month: 11, genre: '国语流行'),
  SongEntry(title: '发如雪', artist: '周杰伦', album: '十一月的萧邦', year: 2005, month: 11, genre: '国语流行'),
  SongEntry(title: '珊瑚海', artist: '周杰伦/Lara', album: '十一月的萧邦', year: 2005, month: 11, genre: '国语流行'),
  SongEntry(title: '霍元甲', artist: '周杰伦', album: '霍元甲', year: 2006, month: 1, genre: '国语流行'),
  SongEntry(title: '千里之外', artist: '周杰伦/费玉清', album: '依然范特西', year: 2006, month: 9, genre: '国语流行'),
  SongEntry(title: '菊花台', artist: '周杰伦', album: '依然范特西', year: 2006, month: 9, genre: '国语流行'),
  SongEntry(title: '青花瓷', artist: '周杰伦', album: '我很忙', year: 2007, month: 11, genre: '国语流行'),
  SongEntry(title: '彩虹', artist: '周杰伦', album: '我很忙', year: 2007, month: 11, genre: '国语流行'),
  SongEntry(title: '稻香', artist: '周杰伦', album: '魔杰座', year: 2008, month: 10, genre: '国语流行'),
  SongEntry(title: '说好的幸福呢', artist: '周杰伦', album: '魔杰座', year: 2008, month: 10, genre: '国语流行'),
  SongEntry(title: '告白气球', artist: '周杰伦', album: '周杰伦的床边故事', year: 2016, month: 6, genre: '国语流行'),
  SongEntry(title: '等你下课', artist: '周杰伦', album: '等你下课', year: 2018, month: 1, genre: '国语流行'),
  SongEntry(title: 'Mojito', artist: '周杰伦', album: 'Mojito', year: 2020, month: 6, genre: '国语流行'),
  SongEntry(title: '不能说的秘密', artist: '周杰伦', album: '不能说的秘密', year: 2007, month: 8, genre: '国语流行'),
  SongEntry(title: '牛仔很忙', artist: '周杰伦', album: '我很忙', year: 2007, month: 11, genre: '国语流行'),
  SongEntry(title: '听妈妈的话', artist: '周杰伦', album: '依然范特西', year: 2006, month: 9, genre: '国语流行'),
  SongEntry(title: '本草纲目', artist: '周杰伦', album: '依然范特西', year: 2006, month: 9, genre: '国语流行'),
  SongEntry(title: '反方向的钟', artist: '周杰伦', album: 'Jay', year: 2000, month: 11, genre: '国语流行'),
  SongEntry(title: '园游会', artist: '周杰伦', album: '七里香', year: 2004, month: 8, genre: '国语流行'),
  SongEntry(title: '退后', artist: '周杰伦', album: '依然范特西', year: 2006, month: 9, genre: '国语流行'),

  // ============================================================
  //  2000s — 千禧年
  // ============================================================
  // 孙燕姿
  SongEntry(title: '天黑黑', artist: '孙燕姿', album: '孙燕姿', year: 2000, month: 6, genre: '国语流行'),
  SongEntry(title: '遇见', artist: '孙燕姿', album: 'The Moment', year: 2003, month: 8, genre: '国语流行'),
  SongEntry(title: '绿光', artist: '孙燕姿', album: 'Start', year: 2002, month: 1, genre: '国语流行'),
  SongEntry(title: '我怀念的', artist: '孙燕姿', album: '逆光', year: 2007, month: 3, genre: '国语流行'),
  SongEntry(title: '逆光', artist: '孙燕姿', album: '逆光', year: 2007, month: 3, genre: '国语流行'),

  // 梁静茹
  SongEntry(title: '勇气', artist: '梁静茹', album: '勇气', year: 2000, month: 8, genre: '国语流行'),
  SongEntry(title: '宁夏', artist: '梁静茹', album: '燕尾蝶', year: 2004, month: 9, genre: '国语流行'),
  SongEntry(title: '可惜不是你', artist: '梁静茹', album: '丝路', year: 2005, month: 9, genre: '国语流行'),
  SongEntry(title: '分手快乐', artist: '梁静茹', album: 'Sunrise', year: 2002, month: 2, genre: '国语流行'),
  SongEntry(title: '崇拜', artist: '梁静茹', album: '崇拜', year: 2007, month: 11, genre: '国语流行'),
  SongEntry(title: '暖暖', artist: '梁静茹', album: '亲亲', year: 2006, month: 10, genre: '国语流行'),

  // SHE
  SongEntry(title: '恋人未满', artist: 'S.H.E', album: '女生宿舍', year: 2001, month: 9, genre: '国语流行'),
  SongEntry(title: 'Super Star', artist: 'S.H.E', album: 'Super Star', year: 2003, month: 8, genre: '国语流行'),
  SongEntry(title: '不想长大', artist: 'S.H.E', album: '不想长大', year: 2005, month: 11, genre: '国语流行'),
  SongEntry(title: '中国话', artist: 'S.H.E', album: 'Play', year: 2007, month: 5, genre: '国语流行'),
  SongEntry(title: '波斯猫', artist: 'S.H.E', album: '奇幻旅程', year: 2004, month: 2, genre: '国语流行'),
  SongEntry(title: '半糖主义', artist: 'S.H.E', album: 'Super Star', year: 2003, month: 8, genre: '国语流行'),

  // 林俊杰
  SongEntry(title: '江南', artist: '林俊杰', album: '第二天堂', year: 2004, month: 6, genre: '国语流行'),
  SongEntry(title: '曹操', artist: '林俊杰', album: '曹操', year: 2006, month: 2, genre: '国语流行'),
  SongEntry(title: '小酒窝', artist: '林俊杰/蔡卓妍', album: 'JJ陆', year: 2008, month: 10, genre: '国语流行'),
  SongEntry(title: '她说', artist: '林俊杰', album: '她说', year: 2010, month: 12, genre: '国语流行'),
  SongEntry(title: '修炼爱情', artist: '林俊杰', album: '因你而在', year: 2013, month: 3, genre: '国语流行'),
  SongEntry(title: '可惜没如果', artist: '林俊杰', album: '新地球', year: 2014, month: 12, genre: '国语流行'),
  SongEntry(title: '那些你很冒险的梦', artist: '林俊杰', album: '学不会', year: 2011, month: 12, genre: '国语流行'),
  SongEntry(title: '不为谁而作的歌', artist: '林俊杰', album: '和自己对话', year: 2015, month: 12, genre: '国语流行'),
  SongEntry(title: '伟大的渺小', artist: '林俊杰', album: '伟大的渺小', year: 2017, month: 12, genre: '国语流行'),
  SongEntry(title: '醉赤壁', artist: '林俊杰', album: 'JJ陆', year: 2008, month: 10, genre: '国语流行'),

  // 王力宏
  SongEntry(title: '唯一', artist: '王力宏', album: '唯一', year: 2001, month: 9, genre: '国语流行'),
  SongEntry(title: '龙的传人', artist: '王力宏', album: '永远的第一天', year: 2000, month: 6, genre: '国语流行'),
  SongEntry(title: '落叶归根', artist: '王力宏', album: '改变自己', year: 2007, month: 7, genre: '国语流行'),
  SongEntry(title: '你不知道的事', artist: '王力宏', album: '十八般武艺', year: 2010, month: 8, genre: '国语流行'),
  SongEntry(title: '大城小爱', artist: '王力宏', album: '盖世英雄', year: 2005, month: 12, genre: '国语流行'),
  SongEntry(title: '心中的日月', artist: '王力宏', album: '心中的日月', year: 2004, month: 12, genre: '国语流行'),

  // 陶喆
  SongEntry(title: '爱很简单', artist: '陶喆', album: 'I\'m OK', year: 1999, month: 12, genre: '国语流行'),
  SongEntry(title: 'Melody', artist: '陶喆', album: 'Melody', year: 2002, month: 8, genre: '国语流行'),
  SongEntry(title: '普通朋友', artist: '陶喆', album: 'I\'m OK', year: 1999, month: 12, genre: '国语流行'),
  SongEntry(title: '找自己', artist: '陶喆', album: 'I\'m OK', year: 1999, month: 12, genre: '国语流行'),
  SongEntry(title: '黑色柳丁', artist: '陶喆', album: '黑色柳丁', year: 2002, month: 8, genre: '国语流行'),

  // 蔡依林
  SongEntry(title: '日不落', artist: '蔡依林', album: '特务J', year: 2007, month: 9, genre: '国语流行'),
  SongEntry(title: '看我72变', artist: '蔡依林', album: '看我72变', year: 2003, month: 3, genre: '国语流行'),
  SongEntry(title: '爱情36计', artist: '蔡依林', album: 'J-Game', year: 2006, month: 5, genre: '国语流行'),
  SongEntry(title: '舞娘', artist: '蔡依林', album: '舞娘', year: 2006, month: 5, genre: '国语流行'),
  SongEntry(title: '说爱你', artist: '蔡依林', album: '看我72变', year: 2003, month: 3, genre: '国语流行'),
  SongEntry(title: '倒带', artist: '蔡依林', album: '城堡', year: 2004, month: 2, genre: '国语流行'),

  // 潘玮柏
  SongEntry(title: '快乐崇拜', artist: '潘玮柏/张韶涵', album: 'Wu Ha', year: 2004, month: 9, genre: '国语流行'),
  SongEntry(title: '不得不爱', artist: '潘玮柏/弦子', album: '高手', year: 2005, month: 9, genre: '国语流行'),

  // 张韶涵
  SongEntry(title: '隐形的翅膀', artist: '张韶涵', album: '潘朵拉', year: 2006, month: 1, genre: '国语流行'),
  SongEntry(title: '欧若拉', artist: '张韶涵', album: '欧若拉', year: 2004, month: 12, genre: '国语流行'),
  SongEntry(title: '淋雨一直走', artist: '张韶涵', album: '有形的翅膀', year: 2012, month: 10, genre: '国语流行'),

  // 飞儿乐队
  SongEntry(title: 'Lydia', artist: 'F.I.R.', album: 'F.I.R.', year: 2004, month: 4, genre: '国语流行'),
  SongEntry(title: '我们的爱', artist: 'F.I.R.', album: 'F.I.R.', year: 2004, month: 4, genre: '国语流行'),
  SongEntry(title: '月牙湾', artist: 'F.I.R.', album: '爱·歌姬', year: 2007, month: 9, genre: '国语流行'),

  // 杨千嬅
  SongEntry(title: '野孩子', artist: '杨千嬅', album: 'Miriam', year: 2001, month: 9, genre: '粤语流行'),
  SongEntry(title: '可惜我是水瓶座', artist: '杨千嬅', album: 'Miriam', year: 2002, month: 1, genre: '粤语流行'),
  SongEntry(title: '少女的祈祷', artist: '杨千嬅', album: 'Play It Loud, Kiss Me Soft', year: 2000, month: 9, genre: '粤语流行'),

  // 古巨基
  SongEntry(title: '爱得太迟', artist: '古巨基', album: 'Human', year: 2006, month: 8, genre: '粤语流行'),
  SongEntry(title: '必杀技', artist: '古巨基', album: '大雄', year: 2004, month: 7, genre: '粤语流行'),

  // 容祖儿
  SongEntry(title: '我的骄傲', artist: '容祖儿', album: 'Show Up', year: 2003, month: 9, genre: '粤语流行'),
  SongEntry(title: '挥着翅膀的女孩', artist: '容祖儿', album: '独照', year: 2003, month: 12, genre: '国语流行'),

  // Twins
  SongEntry(title: '下一站天后', artist: 'Twins', album: 'Touch Of Love', year: 2003, month: 4, genre: '粤语流行'),
  SongEntry(title: '莫斯科没有眼泪', artist: 'Twins', album: 'Such A Better Day', year: 2004, month: 9, genre: '国语流行'),

  // 薛之谦
  SongEntry(title: '认真的雪', artist: '薛之谦', album: '薛之谦', year: 2006, month: 9, genre: '国语流行'),
  SongEntry(title: '演员', artist: '薛之谦', album: '初学者', year: 2015, month: 6, genre: '国语流行'),
  SongEntry(title: '绅士', artist: '薛之谦', album: '初学者', year: 2015, month: 6, genre: '国语流行'),
  SongEntry(title: '丑八怪', artist: '薛之谦', album: '意外', year: 2013, month: 11, genre: '国语流行'),
  SongEntry(title: '天份', artist: '薛之谦', album: '天份', year: 2018, month: 12, genre: '国语流行'),

  // ============================================================
  //  2010s — 流量时代
  // ============================================================
  // 邓紫棋
  SongEntry(title: '泡沫', artist: '邓紫棋', album: 'Xposed', year: 2012, month: 7, genre: '国语流行'),
  SongEntry(title: '光年之外', artist: '邓紫棋', album: '光年之外', year: 2016, month: 11, genre: '国语流行'),
  SongEntry(title: '句号', artist: '邓紫棋', album: '摩天动物园', year: 2019, month: 12, genre: '国语流行'),
  SongEntry(title: '倒数', artist: '邓紫棋', album: '另一个童话', year: 2018, month: 8, genre: '国语流行'),
  SongEntry(title: '画', artist: '邓紫棋', album: 'Xposed', year: 2012, month: 7, genre: '国语流行'),
  SongEntry(title: '差不多姑娘', artist: '邓紫棋', album: '摩天动物园', year: 2019, month: 12, genre: '国语流行'),
  SongEntry(title: 'A.I.N.Y.', artist: '邓紫棋', album: '18...', year: 2009, month: 10, genre: '国语流行'),

  // 李荣浩
  SongEntry(title: '李白', artist: '李荣浩', album: '模特', year: 2013, month: 9, genre: '国语流行'),
  SongEntry(title: '模特', artist: '李荣浩', album: '模特', year: 2013, month: 9, genre: '国语流行'),
  SongEntry(title: '年少有为', artist: '李荣浩', album: '耳朵', year: 2018, month: 7, genre: '国语流行'),
  SongEntry(title: '不将就', artist: '李荣浩', album: '有理想', year: 2016, month: 1, genre: '国语流行'),
  SongEntry(title: '麻雀', artist: '李荣浩', album: '麻雀', year: 2019, month: 12, genre: '国语流行'),
  SongEntry(title: '戒烟', artist: '李荣浩', album: '嗯', year: 2017, month: 11, genre: '国语流行'),

  // 毛不易
  SongEntry(title: '消愁', artist: '毛不易', album: '平凡的一天', year: 2017, month: 7, genre: '国语流行'),
  SongEntry(title: '像我这样的人', artist: '毛不易', album: '平凡的一天', year: 2017, month: 7, genre: '国语流行'),
  SongEntry(title: '平凡的一天', artist: '毛不易', album: '平凡的一天', year: 2017, month: 9, genre: '国语流行'),
  SongEntry(title: '借', artist: '毛不易', album: '小王', year: 2019, month: 10, genre: '国语流行'),

  // 赵雷
  SongEntry(title: '成都', artist: '赵雷', album: '无法长大', year: 2016, month: 10, genre: '民谣'),
  SongEntry(title: '南方姑娘', artist: '赵雷', album: '赵小雷', year: 2011, month: 8, genre: '民谣'),
  SongEntry(title: '画', artist: '赵雷', album: '赵小雷', year: 2011, month: 8, genre: '民谣'),
  SongEntry(title: '鼓楼', artist: '赵雷', album: '无法长大', year: 2016, month: 10, genre: '民谣'),

  // 五月天
  SongEntry(title: '倔强', artist: '五月天', album: '神的孩子都在跳舞', year: 2004, month: 11, genre: '国语摇滚'),
  SongEntry(title: '知足', artist: '五月天', album: '知足', year: 2005, month: 10, genre: '国语摇滚'),
  SongEntry(title: '突然好想你', artist: '五月天', album: '后青春期的诗', year: 2008, month: 10, genre: '国语摇滚'),
  SongEntry(title: '我不愿让你一个人', artist: '五月天', album: '第二人生', year: 2011, month: 12, genre: '国语摇滚'),
  SongEntry(title: '温柔', artist: '五月天', album: '爱情万岁', year: 2000, month: 7, genre: '国语摇滚'),
  SongEntry(title: '拥抱', artist: '五月天', album: '第一张创作专辑', year: 1999, month: 7, genre: '国语摇滚'),
  SongEntry(title: '你不是真正的快乐', artist: '五月天', album: '后青春期的诗', year: 2008, month: 10, genre: '国语摇滚'),
  SongEntry(title: '干杯', artist: '五月天', album: '第二人生', year: 2011, month: 12, genre: '国语摇滚'),
  SongEntry(title: '后来的我们', artist: '五月天', album: '自传', year: 2016, month: 7, genre: '国语摇滚'),
  SongEntry(title: '好好', artist: '五月天', album: '自传', year: 2016, month: 7, genre: '国语摇滚'),

  // 苏打绿
  SongEntry(title: '小情歌', artist: '苏打绿', album: '小宇宙', year: 2006, month: 10, genre: '国语流行'),
  SongEntry(title: '无与伦比的美丽', artist: '苏打绿', album: '无与伦比的美丽', year: 2007, month: 11, genre: '国语流行'),
  SongEntry(title: '我好想你', artist: '苏打绿', album: '秋：故事', year: 2013, month: 9, genre: '国语流行'),
  SongEntry(title: '频率', artist: '苏打绿', album: '陪我歌唱', year: 2009, month: 5, genre: '国语流行'),

  // 田馥甄
  SongEntry(title: '小幸运', artist: '田馥甄', album: '小幸运', year: 2015, month: 7, genre: '国语流行'),
  SongEntry(title: '寂寞寂寞就好', artist: '田馥甄', album: 'To Hebe', year: 2010, month: 9, genre: '国语流行'),
  SongEntry(title: '还是要幸福', artist: '田馥甄', album: 'My Love', year: 2011, month: 9, genre: '国语流行'),

  // TFBoys
  SongEntry(title: '青春修炼手册', artist: 'TFBoys', album: '青春修炼手册', year: 2014, month: 7, genre: '国语流行'),
  SongEntry(title: '魔法城堡', artist: 'TFBoys', album: '魔法城堡', year: 2014, month: 3, genre: '国语流行'),

  // 华晨宇
  SongEntry(title: '烟火里的尘埃', artist: '华晨宇', album: '卡西莫多的礼物', year: 2014, month: 9, genre: '国语流行'),
  SongEntry(title: '好想爱这个世界啊', artist: '华晨宇', album: '新世界NEW WORLD', year: 2019, month: 12, genre: '国语流行'),
  SongEntry(title: '斗牛', artist: '华晨宇', album: '斗牛', year: 2018, month: 2, genre: '国语流行'),

  // 周深
  SongEntry(title: '大鱼', artist: '周深', album: '大鱼海棠', year: 2016, month: 7, genre: '国语流行'),
  SongEntry(title: '化身孤岛的鲸', artist: '周深', album: '化身孤岛的鲸', year: 2019, month: 10, genre: '国语流行'),
  SongEntry(title: '达拉崩吧', artist: '周深', album: '达拉崩吧', year: 2020, month: 3, genre: '国语流行'),
  SongEntry(title: '小美满', artist: '周深', album: '小美满', year: 2022, month: 2, genre: '国语流行'),

  // 花粥
  SongEntry(title: '出山', artist: '花粥/王胜娚', album: '粥请客（二）', year: 2018, month: 9, genre: '民谣'),
  SongEntry(title: '二十岁的某一天', artist: '花粥', album: '粥请客', year: 2015, month: 10, genre: '民谣'),

  // 陈粒
  SongEntry(title: '奇妙能力歌', artist: '陈粒', album: '如也', year: 2015, month: 2, genre: '民谣'),
  SongEntry(title: '走马', artist: '陈粒', album: '小梦大半', year: 2016, month: 7, genre: '民谣'),

  // 房东的猫
  SongEntry(title: '云烟成雨', artist: '房东的猫', album: '云烟成雨', year: 2017, month: 10, genre: '民谣'),
  SongEntry(title: '下一站茶山刘', artist: '房东的猫', album: '这是你想要的生活吗', year: 2018, month: 5, genre: '民谣'),

  // 马頔
  SongEntry(title: '南山南', artist: '马頔', album: '孤岛', year: 2014, month: 9, genre: '民谣'),
  SongEntry(title: '傲寒', artist: '马頔', album: '孤岛', year: 2014, month: 9, genre: '民谣'),

  // 宋冬野
  SongEntry(title: '董小姐', artist: '宋冬野', album: '安和桥北', year: 2012, month: 12, genre: '民谣'),
  SongEntry(title: '安和桥', artist: '宋冬野', album: '安和桥北', year: 2013, month: 8, genre: '民谣'),
  SongEntry(title: '斑马斑马', artist: '宋冬野', album: '安和桥北', year: 2013, month: 8, genre: '民谣'),

  // TFBoys solo
  SongEntry(title: '样', artist: '王源', album: '源', year: 2019, month: 7, genre: '国语流行'),
  SongEntry(title: '树读', artist: '王俊凯', album: '树读', year: 2018, month: 9, genre: '国语流行'),

  // 吴青峰
  SongEntry(title: '起风了', artist: '吴青峰', album: '起风了', year: 2019, month: 4, genre: '国语流行'),

  // 林宥嘉
  SongEntry(title: '说谎', artist: '林宥嘉', album: '感官/世界', year: 2010, month: 10, genre: '国语流行'),
  SongEntry(title: '成全', artist: '林宥嘉', album: '今日营业中', year: 2016, month: 6, genre: '国语流行'),
  SongEntry(title: '浪费', artist: '林宥嘉', album: '大小说家', year: 2012, month: 6, genre: '国语流行'),

  // 刘若英
  SongEntry(title: '后来', artist: '刘若英', album: '我等你', year: 1999, month: 11, genre: '国语流行'),
  SongEntry(title: '很爱很爱你', artist: '刘若英', album: '很爱很爱你', year: 1998, month: 11, genre: '国语流行'),
  SongEntry(title: '为爱痴狂', artist: '刘若英', album: '少女小渔的美丽与哀愁', year: 1995, month: 5, genre: '国语流行'),

  // 朴树
  SongEntry(title: '平凡之路', artist: '朴树', album: '猎户星座', year: 2014, month: 7, genre: '国语流行'),
  SongEntry(title: '那些花儿', artist: '朴树', album: '我去2000年', year: 1999, month: 1, genre: '国语流行'),
  SongEntry(title: '白桦林', artist: '朴树', album: '我去2000年', year: 1999, month: 1, genre: '国语流行'),
  SongEntry(title: 'Colorful Days', artist: '朴树', album: '生如夏花', year: 2003, month: 11, genre: '国语流行'),

  // 许嵩
  SongEntry(title: '断桥残雪', artist: '许嵩', album: '自定义', year: 2009, month: 1, genre: '国语流行'),
  SongEntry(title: '清明雨上', artist: '许嵩', album: '自定义', year: 2009, month: 1, genre: '国语流行'),
  SongEntry(title: '素颜', artist: '许嵩/何曼婷', album: '素颜', year: 2010, month: 8, genre: '国语流行'),
  SongEntry(title: '灰色头像', artist: '许嵩', album: '寻雾启示', year: 2010, month: 1, genre: '国语流行'),

  // 汪苏泷
  SongEntry(title: '有点甜', artist: '汪苏泷/BY2', album: '万有引力', year: 2012, month: 7, genre: '国语流行'),
  SongEntry(title: '不分手的恋爱', artist: '汪苏泷', album: '不分手的恋爱', year: 2011, month: 3, genre: '国语流行'),

  // 徐佳莹
  SongEntry(title: '身骑白马', artist: '徐佳莹', album: 'LaLa首张创作专辑', year: 2009, month: 5, genre: '国语流行'),
  SongEntry(title: '失落沙洲', artist: '徐佳莹', album: '极限', year: 2010, month: 9, genre: '国语流行'),

  // 谢安琪
  SongEntry(title: '喜帖街', artist: '谢安琪', album: 'Binary', year: 2008, month: 7, genre: '粤语流行'),
  SongEntry(title: '钟无艳', artist: '谢安琪', album: 'Yelling', year: 2009, month: 3, genre: '粤语流行'),

  // 方大同
  SongEntry(title: 'Love Song', artist: '方大同', album: '未来', year: 2007, month: 12, genre: '国语流行'),
  SongEntry(title: '三人游', artist: '方大同', album: '橙月', year: 2008, month: 12, genre: '国语流行'),
  SongEntry(title: '特别的人', artist: '方大同', album: '危险世界', year: 2014, month: 4, genre: '国语流行'),

  // 萧敬腾
  SongEntry(title: '王妃', artist: '萧敬腾', album: '王妃', year: 2009, month: 7, genre: '国语流行'),
  SongEntry(title: '海芋恋', artist: '萧敬腾', album: '萧敬腾', year: 2008, month: 6, genre: '国语流行'),

  // 杨宗纬
  SongEntry(title: '洋葱', artist: '杨宗纬', album: '鸽子', year: 2008, month: 1, genre: '国语流行'),
  SongEntry(title: '其实都没有', artist: '杨宗纬', album: '初·爱', year: 2013, month: 3, genre: '国语流行'),

  // 刘昊霖
  SongEntry(title: '儿时', artist: '刘昊霖', album: '儿时', year: 2016, month: 4, genre: '民谣'),

  // 陈鸿宇
  SongEntry(title: '理想三旬', artist: '陈鸿宇', album: '浓烟下的诗歌电台', year: 2016, month: 3, genre: '民谣'),

  // 陈绮贞
  SongEntry(title: '旅行的意义', artist: '陈绮贞', album: '华丽的冒险', year: 2004, month: 12, genre: '国语流行'),
  SongEntry(title: '鱼', artist: '陈绮贞', album: '太阳', year: 2009, month: 1, genre: '国语流行'),

  // 张震岳
  SongEntry(title: '再见', artist: '张震岳', album: 'OK', year: 2007, month: 7, genre: '国语流行'),
  SongEntry(title: '爱我别走', artist: '张震岳', album: '秘密基地', year: 1998, month: 12, genre: '国语流行'),
  SongEntry(title: '思念是一种病', artist: '张震岳/蔡健雅', album: '思念是一种病', year: 2007, month: 9, genre: '国语流行'),

  // 蔡健雅
  SongEntry(title: '红色高跟鞋', artist: '蔡健雅', album: '若你碰到他', year: 2009, month: 8, genre: '国语流行'),
  SongEntry(title: '达尔文', artist: '蔡健雅', album: 'Goodbye & Hello', year: 2007, month: 10, genre: '国语流行'),

  // 李健
  SongEntry(title: '贝加尔湖畔', artist: '李健', album: '依然', year: 2011, month: 12, genre: '国语流行'),
  SongEntry(title: '传奇', artist: '李健', album: '似水流年', year: 2003, month: 9, genre: '国语流行'),
  SongEntry(title: '风吹麦浪', artist: '李健', album: '为你而来', year: 2007, month: 4, genre: '国语流行'),

  // 胡彦斌
  SongEntry(title: '红颜', artist: '胡彦斌', album: '文武双全', year: 2004, month: 7, genre: '国语流行'),

  // 袁娅维
  SongEntry(title: '说散就散', artist: '袁娅维', album: '说散就散', year: 2017, month: 12, genre: '国语流行'),

  // 于文文
  SongEntry(title: '体面', artist: '于文文', album: '体面', year: 2017, month: 12, genre: '国语流行'),

  // 周兴哲
  SongEntry(title: '以后别做朋友', artist: '周兴哲', album: '学着爱', year: 2014, month: 12, genre: '国语流行'),
  SongEntry(title: '怎么了', artist: '周兴哲', album: '如果雨之后', year: 2017, month: 12, genre: '国语流行'),

  // 陈奕迅 continued
  SongEntry(title: '我们', artist: '陈奕迅', album: '我们', year: 2018, month: 4, genre: '国语流行'),
  SongEntry(title: '让我留在你身边', artist: '陈奕迅', album: '让我留在你身边', year: 2016, month: 11, genre: '国语流行'),

  // ============================================================
  //  2020s — 新生代
  // ============================================================
  // 周深 continued
  SongEntry(title: '花开忘忧', artist: '周深', album: '花开忘忧', year: 2023, month: 1, genre: '国语流行'),
  SongEntry(title: '铃芽之旅', artist: '周深', album: '铃芽之旅', year: 2023, month: 3, genre: '国语流行'),

  // 单依纯
  SongEntry(title: '永不失联的爱', artist: '单依纯', album: '永不失联的爱', year: 2020, month: 11, genre: '国语流行'),
  SongEntry(title: '想见你想见你想见你', artist: '单依纯', album: '想见你想见你想见你', year: 2020, month: 11, genre: '国语流行'),

  // 黄霄云
  SongEntry(title: '星辰大海', artist: '黄霄云', album: '星辰大海', year: 2021, month: 1, genre: '国语流行'),

  // 王靖雯
  SongEntry(title: '沦陷', artist: '王靖雯', album: '沦陷', year: 2021, month: 5, genre: '国语流行'),
  SongEntry(title: '善变', artist: '王靖雯', album: '善变', year: 2020, month: 9, genre: '国语流行'),

  // 刘雨昕
  SongEntry(title: 'U&ME', artist: '刘雨昕', album: 'XANADU', year: 2021, month: 12, genre: '国语流行'),

  // 张杰
  SongEntry(title: '这，就是爱', artist: '张杰', album: '这，就是爱', year: 2010, month: 10, genre: '国语流行'),
  SongEntry(title: '逆战', artist: '张杰', album: '最接近天堂的地方', year: 2012, month: 9, genre: '国语流行'),
  SongEntry(title: '明天过后', artist: '张杰', album: '明天过后', year: 2008, month: 9, genre: '国语流行'),

  // 张碧晨
  SongEntry(title: '凉凉', artist: '张碧晨/杨宗纬', album: '三生三世十里桃花', year: 2017, month: 1, genre: '国语流行'),
  SongEntry(title: '年轮', artist: '张碧晨', album: '年轮', year: 2015, month: 6, genre: '国语流行'),

  // 萨顶顶
  SongEntry(title: '左手指月', artist: '萨顶顶', album: '香蜜沉沉烬如霜', year: 2018, month: 8, genre: '国语流行'),

  // 毛不易 continued
  SongEntry(title: '无问', artist: '毛不易', album: '小王', year: 2020, month: 1, genre: '国语流行'),
  SongEntry(title: '海上日记', artist: '毛不易', album: '小王', year: 2020, month: 1, genre: '国语流行'),

  // 马嘉祺
  SongEntry(title: '在水一方', artist: '马嘉祺', album: '在水一方', year: 2021, month: 4, genre: '国语流行'),

  // 告五人
  SongEntry(title: '披星戴月的想你', artist: '告五人', album: '披星戴月的想你', year: 2019, month: 12, genre: '国语流行'),
  SongEntry(title: '爱人错过', artist: '告五人', album: '运气来得若有似无', year: 2020, month: 12, genre: '国语流行'),
  SongEntry(title: '唯一', artist: '告五人', album: '运气来得若有似无', year: 2020, month: 12, genre: '国语流行'),

  // 五月天 continued
  SongEntry(title: '因为你 所以我', artist: '五月天', album: '因为你 所以我', year: 2020, month: 12, genre: '国语摇滚'),

  // 陈奕迅 continued
  SongEntry(title: '是但求其爱', artist: '陈奕迅', album: '是但求其爱', year: 2021, month: 7, genre: '粤语流行'),

  // 林俊杰 continued
  SongEntry(title: '幸存者', artist: '林俊杰', album: '幸存者 Drifter', year: 2020, month: 10, genre: '国语流行'),
  SongEntry(title: '交换余生', artist: '林俊杰', album: '交换余生', year: 2022, month: 11, genre: '国语流行'),

  // 薛之谦 continued
  SongEntry(title: '变废为宝', artist: '薛之谦', album: '变废为宝', year: 2021, month: 10, genre: '国语流行'),

  // 邓紫棋 continued
  SongEntry(title: '超能力', artist: '邓紫棋', album: '启示录', year: 2022, month: 8, genre: '国语流行'),

  // 单依纯 continued
  SongEntry(title: '你的轮廓', artist: '单依纯', album: '你的轮廓', year: 2022, month: 6, genre: '国语流行'),

  // 希林娜依·高
  SongEntry(title: '最想去的地方', artist: '希林娜依·高', album: '最想去的地方', year: 2021, month: 4, genre: '国语流行'),

  // 张远
  SongEntry(title: '嘉宾', artist: '张远', album: '嘉宾', year: 2022, month: 1, genre: '国语流行'),

  // 胡夏
  SongEntry(title: '那些年', artist: '胡夏', album: '那些年', year: 2011, month: 8, genre: '国语流行'),

  // 王菲 continued
  SongEntry(title: '如愿', artist: '王菲', album: '我和我的父辈', year: 2021, month: 9, genre: '国语流行'),
  SongEntry(title: '归途有风', artist: '王菲', album: '归途有风', year: 2023, month: 1, genre: '国语流行'),

  // 郁可唯
  SongEntry(title: '时间煮雨', artist: '郁可唯', album: '小时代', year: 2013, month: 6, genre: '国语流行'),

  // 张靓颖
  SongEntry(title: '如果这就是爱情', artist: '张靓颖', album: '我相信', year: 2010, month: 2, genre: '国语流行'),
  SongEntry(title: '画心', artist: '张靓颖', album: '画心', year: 2008, month: 10, genre: '国语流行'),

  // 谭维维
  SongEntry(title: '如果有来生', artist: '谭维维', album: '如果有来生', year: 2010, month: 3, genre: '国语流行'),

  // 李宇春
  SongEntry(title: '下个路口见', artist: '李宇春', album: '李宇春', year: 2009, month: 12, genre: '国语流行'),

  // 尚雯婕
  SongEntry(title: '最终信仰', artist: '尚雯婕', album: '最终信仰', year: 2012, month: 12, genre: '国语流行'),

  // 好妹妹乐队
  SongEntry(title: '你曾是少年', artist: '好妹妹乐队', album: '你曾是少年', year: 2015, month: 7, genre: '民谣'),

  // 朴树 continued
  SongEntry(title: 'New Boy', artist: '朴树', album: '我去2000年', year: 1999, month: 1, genre: '国语流行'),
  SongEntry(title: '好好地', artist: '朴树', album: '猎户星座', year: 2017, month: 4, genre: '国语流行'),

  // 二手玫瑰
  SongEntry(title: '仙儿', artist: '二手玫瑰', album: '二手玫瑰', year: 2003, month: 1, genre: '摇滚'),

  // 万能青年旅店
  SongEntry(title: '杀死那个石家庄人', artist: '万能青年旅店', album: '万能青年旅店', year: 2010, month: 11, genre: '摇滚'),
  SongEntry(title: '秦皇岛', artist: '万能青年旅店', album: '万能青年旅店', year: 2010, month: 11, genre: '摇滚'),

  // 新裤子
  SongEntry(title: '没有理想的人不伤心', artist: '新裤子', album: '生命因你而火热', year: 2016, month: 4, genre: '摇滚'),
  SongEntry(title: '你要跳舞吗', artist: '新裤子', album: '生命因你而火热', year: 2016, month: 4, genre: '摇滚'),

  // 痛仰乐队
  SongEntry(title: '公路之歌', artist: '痛仰乐队', album: '不要停止我的音乐', year: 2008, month: 10, genre: '摇滚'),
  SongEntry(title: '再见杰克', artist: '痛仰乐队', album: '不要停止我的音乐', year: 2008, month: 10, genre: '摇滚'),

  // 重塑雕像的权利
  SongEntry(title: 'Sounds for Celebration', artist: '重塑雕像的权利', album: 'Before the Applause', year: 2017, month: 9, genre: '后朋克'),

  // ============================================================
  //  补充经典专辑歌曲 — 豆瓣 Top 250 + 浪潮榜参考
  // ============================================================

  // 陈绮贞
  SongEntry(title: '旅行的意义', artist: '陈绮贞', album: '华丽的冒险', year: 2005, month: 9, genre: '国语流行'),
  SongEntry(title: '躺在你的衣柜', artist: '陈绮贞', album: '华丽的冒险', year: 2005, month: 9, genre: '国语流行'),
  SongEntry(title: '狂恋', artist: '陈绮贞', album: '华丽的冒险', year: 2005, month: 9, genre: '国语流行'),
  SongEntry(title: '还是会寂寞', artist: '陈绮贞', album: '还是会寂寞', year: 2000, month: 4, genre: '国语流行'),
  SongEntry(title: '让我想一想', artist: '陈绮贞', album: '让我想一想', year: 1998, month: 7, genre: '国语流行'),
  SongEntry(title: 'After 17', artist: '陈绮贞', album: 'After 17', year: 2004, month: 1, genre: '国语流行'),
  SongEntry(title: '太阳', artist: '陈绮贞', album: '太阳', year: 2009, month: 1, genre: '国语流行'),
  SongEntry(title: '失败者的飞翔', artist: '陈绮贞', album: '太阳', year: 2009, month: 1, genre: '国语流行'),

  // 孙燕姿
  SongEntry(title: '绿光', artist: '孙燕姿', album: '风筝', year: 2001, month: 10, genre: '国语流行'),
  SongEntry(title: '风筝', artist: '孙燕姿', album: '风筝', year: 2001, month: 10, genre: '国语流行'),
  SongEntry(title: '任性', artist: '孙燕姿', album: '风筝', year: 2001, month: 10, genre: '国语流行'),
  SongEntry(title: '遇见', artist: '孙燕姿', album: 'The Moment', year: 2003, month: 8, genre: '国语流行'),
  SongEntry(title: '我的爱', artist: '孙燕姿', album: 'Stefanie', year: 2004, month: 10, genre: '国语流行'),
  SongEntry(title: '同类', artist: '孙燕姿', album: 'Stefanie', year: 2004, month: 10, genre: '国语流行'),
  SongEntry(title: '完美的一天', artist: '孙燕姿', album: '完美的一天', year: 2005, month: 10, genre: '国语流行'),
  SongEntry(title: '逆光', artist: '孙燕姿', album: '逆光', year: 2007, month: 3, genre: '国语流行'),
  SongEntry(title: '咕叽咕叽', artist: '孙燕姿', album: '逆光', year: 2007, month: 3, genre: '国语流行'),
  SongEntry(title: 'Leave', artist: '孙燕姿', album: 'Leave', year: 2002, month: 5, genre: '国语流行'),
  SongEntry(title: '我不难过', artist: '孙燕姿', album: 'Leave', year: 2002, month: 5, genre: '国语流行'),
  SongEntry(title: '克卜勒', artist: '孙燕姿', album: '克卜勒', year: 2014, month: 2, genre: '国语流行'),

  // 五月天补充
  SongEntry(title: '人生海海', artist: '五月天', album: '人生海海', year: 2001, month: 7, genre: '国语摇滚'),
  SongEntry(title: '倔强', artist: '五月天', album: '神的孩子都在跳舞', year: 2004, month: 11, genre: '国语摇滚'),
  SongEntry(title: '孙悟空', artist: '五月天', album: '神的孩子都在跳舞', year: 2004, month: 11, genre: '国语摇滚'),
  SongEntry(title: '为爱而生', artist: '五月天', album: '为爱而生', year: 2006, month: 12, genre: '国语摇滚'),
  SongEntry(title: '天使', artist: '五月天', album: '为爱而生', year: 2006, month: 12, genre: '国语摇滚'),
  SongEntry(title: '离开地球表面', artist: '五月天', album: '离开地球表面', year: 2007, month: 7, genre: '国语摇滚'),
  SongEntry(title: '突然好想你', artist: '五月天', album: '后青春期的诗', year: 2008, month: 10, genre: '国语摇滚'),
  SongEntry(title: '你不是真正的快乐', artist: '五月天', album: '后青春期的诗', year: 2008, month: 10, genre: '国语摇滚'),
  SongEntry(title: '知足', artist: '五月天', album: '知足', year: 2005, month: 8, genre: '国语摇滚'),
  SongEntry(title: '温柔', artist: '五月天', album: '爱情万岁', year: 2000, month: 7, genre: '国语摇滚'),
  SongEntry(title: '拥抱', artist: '五月天', album: '爱情万岁', year: 2000, month: 7, genre: '国语摇滚'),
  SongEntry(title: 'OAOA', artist: '五月天', album: '第二人生', year: 2011, month: 12, genre: '国语摇滚'),
  SongEntry(title: '干杯', artist: '五月天', album: '第二人生', year: 2011, month: 12, genre: '国语摇滚'),
  SongEntry(title: '后来的我们', artist: '五月天', album: '自传', year: 2016, month: 7, genre: '国语摇滚'),
  SongEntry(title: '成名在望', artist: '五月天', album: '自传', year: 2016, month: 7, genre: '国语摇滚'),

  // 陶喆
  SongEntry(title: 'Melody', artist: '陶喆', album: '黑色柳丁', year: 2002, month: 8, genre: '国语R&B'),
  SongEntry(title: '普通朋友', artist: '陶喆', album: '黑色柳丁', year: 2002, month: 8, genre: '国语R&B'),
  SongEntry(title: '寂寞的季节', artist: '陶喆', album: '黑色柳丁', year: 2002, month: 8, genre: '国语R&B'),
  SongEntry(title: '爱我还是他', artist: '陶喆', album: '太平盛世', year: 2005, month: 1, genre: '国语R&B'),
  SongEntry(title: 'Susan说', artist: '陶喆', album: '太平盛世', year: 2005, month: 1, genre: '国语R&B'),
  SongEntry(title: '今天没回家', artist: '陶喆', album: 'I\'m OK', year: 1999, month: 12, genre: '国语R&B'),
  SongEntry(title: '找自己', artist: '陶喆', album: 'I\'m OK', year: 1999, month: 12, genre: '国语R&B'),
  SongEntry(title: '望春风', artist: '陶喆', album: '陶喆', year: 1997, month: 1, genre: '国语R&B'),
  SongEntry(title: '沙滩', artist: '陶喆', album: '陶喆', year: 1997, month: 1, genre: '国语R&B'),

  // 王菲补充
  SongEntry(title: '香奈儿', artist: '王菲', album: '寓言', year: 2000, month: 10, genre: '国语流行'),
  SongEntry(title: '新房客', artist: '王菲', album: '寓言', year: 2000, month: 10, genre: '国语流行'),
  SongEntry(title: '旋木', artist: '王菲', album: '将爱', year: 2003, month: 11, genre: '国语流行'),
  SongEntry(title: '将爱', artist: '王菲', album: '将爱', year: 2003, month: 11, genre: '国语流行'),
  SongEntry(title: '你王菲所以我王菲', artist: '王菲', album: '你王菲所以我王菲', year: 2002, month: 1, genre: '国语流行'),
  SongEntry(title: '天空', artist: '王菲', album: '天空', year: 1994, month: 11, genre: '国语流行'),
  SongEntry(title: '棋子', artist: '王菲', album: '天空', year: 1994, month: 11, genre: '国语流行'),
  SongEntry(title: '浮躁', artist: '王菲', album: '浮躁', year: 1996, month: 6, genre: '国语流行'),
  SongEntry(title: '红豆', artist: '王菲', album: '唱游', year: 1998, month: 10, genre: '国语流行'),
  SongEntry(title: '催眠', artist: '王菲', album: '唱游', year: 1998, month: 10, genre: '国语流行'),
  SongEntry(title: '传奇', artist: '王菲', album: '传奇', year: 2010, month: 2, genre: '国语流行'),

  // 梁静茹
  SongEntry(title: '崇拜', artist: '梁静茹', album: '崇拜', year: 2007, month: 11, genre: '国语流行'),
  SongEntry(title: '暖暖', artist: '梁静茹', album: '亲亲', year: 2006, month: 10, genre: '国语流行'),
  SongEntry(title: '丝路', artist: '梁静茹', album: '丝路', year: 2005, month: 9, genre: '国语流行'),
  SongEntry(title: '宁夏', artist: '梁静茹', album: '燕尾蝶', year: 2004, month: 9, genre: '国语流行'),
  SongEntry(title: '燕尾蝶', artist: '梁静茹', album: '燕尾蝶', year: 2004, month: 9, genre: '国语流行'),
  SongEntry(title: '可惜不是你', artist: '梁静茹', album: '丝路', year: 2005, month: 9, genre: '国语流行'),
  SongEntry(title: '勇气', artist: '梁静茹', album: '勇气', year: 2000, month: 8, genre: '国语流行'),
  SongEntry(title: '分手快乐', artist: '梁静茹', album: 'Sunrise', year: 2002, month: 2, genre: '国语流行'),
  SongEntry(title: '恋爱的力量', artist: '梁静茹', album: '恋爱的力量', year: 2003, month: 11, genre: '国语流行'),
  SongEntry(title: '没有如果', artist: '梁静茹', album: '静茹&情歌', year: 2009, month: 1, genre: '国语流行'),
  SongEntry(title: '情歌', artist: '梁静茹', album: '静茹&情歌', year: 2009, month: 1, genre: '国语流行'),

  // 蔡依林
  SongEntry(title: '看我72变', artist: '蔡依林', album: '看我72变', year: 2003, month: 3, genre: '国语流行'),
  SongEntry(title: '说爱你', artist: '蔡依林', album: '看我72变', year: 2003, month: 3, genre: '国语流行'),
  SongEntry(title: '舞娘', artist: '蔡依林', album: '舞娘', year: 2006, month: 5, genre: '国语流行'),
  SongEntry(title: 'Mr.Q', artist: '蔡依林', album: '舞娘', year: 2006, month: 5, genre: '国语流行'),
  SongEntry(title: '日不落', artist: '蔡依林', album: '特务J', year: 2007, month: 9, genre: '国语流行'),
  SongEntry(title: '倒带', artist: '蔡依林', album: '城堡', year: 2004, month: 2, genre: '国语流行'),
  SongEntry(title: '爱情36计', artist: '蔡依林', album: 'J-Game', year: 2008, month: 3, genre: '国语流行'),
  SongEntry(title: '野蛮游戏', artist: '蔡依林', album: 'J-Game', year: 2008, month: 3, genre: '国语流行'),
  SongEntry(title: '大艺术家', artist: '蔡依林', album: 'Muse', year: 2012, month: 9, genre: '国语流行'),
  SongEntry(title: 'Play我呸', artist: '蔡依林', album: '呸', year: 2014, month: 11, genre: '国语流行'),

  // 林俊杰补充
  SongEntry(title: '江南', artist: '林俊杰', album: '第二天堂', year: 2004, month: 6, genre: '国语流行'),
  SongEntry(title: '豆浆油条', artist: '林俊杰', album: '第二天堂', year: 2004, month: 6, genre: '国语流行'),
  SongEntry(title: '曹操', artist: '林俊杰', album: '曹操', year: 2006, month: 2, genre: '国语流行'),
  SongEntry(title: '只对你说', artist: '林俊杰', album: '曹操', year: 2006, month: 2, genre: '国语流行'),
  SongEntry(title: '西界', artist: '林俊杰', album: '西界', year: 2007, month: 6, genre: '国语流行'),
  SongEntry(title: '不潮不用花钱', artist: '林俊杰', album: 'JJ陆', year: 2008, month: 10, genre: '国语流行'),
  SongEntry(title: '小酒窝', artist: '林俊杰/蔡卓妍', album: 'JJ陆', year: 2008, month: 10, genre: '国语流行'),
  SongEntry(title: '她说', artist: '林俊杰', album: '她说', year: 2010, month: 12, genre: '国语流行'),
  SongEntry(title: '学不会', artist: '林俊杰', album: '学不会', year: 2011, month: 12, genre: '国语流行'),
  SongEntry(title: '修炼爱情', artist: '林俊杰', album: '因你而在', year: 2013, month: 3, genre: '国语流行'),
  SongEntry(title: '可惜没如果', artist: '林俊杰', album: '新地球', year: 2014, month: 12, genre: '国语流行'),
  SongEntry(title: '不为谁而作的歌', artist: '林俊杰', album: '和自己对话', year: 2015, month: 12, genre: '国语流行'),
  SongEntry(title: '伟大的渺小', artist: '林俊杰', album: '伟大的渺小', year: 2017, month: 12, genre: '国语流行'),
  SongEntry(title: '那些你很冒险的梦', artist: '林俊杰', album: '学不会', year: 2011, month: 12, genre: '国语流行'),

  // 方大同
  SongEntry(title: 'Love Song', artist: '方大同', album: '橙月', year: 2008, month: 12, genre: '国语R&B'),
  SongEntry(title: '三人游', artist: '方大同', album: '橙月', year: 2008, month: 12, genre: '国语R&B'),
  SongEntry(title: '爱爱爱', artist: '方大同', album: '爱爱爱', year: 2006, month: 12, genre: '国语R&B'),
  SongEntry(title: '未来', artist: '方大同', album: '未来', year: 2007, month: 11, genre: '国语R&B'),
  SongEntry(title: 'Nothing\'s Gonna Change My Love For You', artist: '方大同', album: 'Timeless', year: 2009, month: 8, genre: '国语R&B'),

  // 张悬
  SongEntry(title: '宝贝', artist: '张悬', album: 'My Life Will', year: 2006, month: 6, genre: '国语流行'),
  SongEntry(title: '儿歌', artist: '张悬', album: 'My Life Will', year: 2006, month: 6, genre: '国语流行'),
  SongEntry(title: '关于我爱你', artist: '张悬', album: '城市', year: 2009, month: 5, genre: '国语流行'),
  SongEntry(title: '如果你冷', artist: '张悬', album: '如果你冷', year: 2008, month: 10, genre: '国语流行'),
  SongEntry(title: '艳火', artist: '张悬', album: '神的游戏', year: 2012, month: 8, genre: '国语流行'),

  // 苏打绿
  SongEntry(title: '小情歌', artist: '苏打绿', album: '小宇宙', year: 2006, month: 10, genre: '国语流行'),
  SongEntry(title: '无与伦比的美丽', artist: '苏打绿', album: '无与伦比的美丽', year: 2007, month: 11, genre: '国语流行'),
  SongEntry(title: '迟到千年', artist: '苏打绿', album: '迟到千年', year: 2006, month: 5, genre: '国语流行'),
  SongEntry(title: '日光', artist: '苏打绿', album: '春·日光', year: 2009, month: 5, genre: '国语流行'),
  SongEntry(title: '十年一刻', artist: '苏打绿', album: '十年一刻', year: 2010, month: 8, genre: '国语流行'),
  SongEntry(title: '你在烦恼什么', artist: '苏打绿', album: '你在烦恼什么', year: 2011, month: 11, genre: '国语流行'),
  SongEntry(title: '我好想你', artist: '苏打绿', album: '秋：故事', year: 2013, month: 9, genre: '国语流行'),
  SongEntry(title: '陪我歌唱', artist: '苏打绿', album: '陪我歌唱', year: 2008, month: 5, genre: '国语流行'),

  // 朴树
  SongEntry(title: '生如夏花', artist: '朴树', album: '生如夏花', year: 2003, month: 11, genre: '国语流行'),
  SongEntry(title: '白桦林', artist: '朴树', album: '我去2000年', year: 1999, month: 1, genre: '国语流行'),
  SongEntry(title: '那些花儿', artist: '朴树', album: '我去2000年', year: 1999, month: 1, genre: '国语流行'),
  SongEntry(title: '平凡之路', artist: '朴树', album: '猎户星座', year: 2014, month: 7, genre: '国语流行'),
  SongEntry(title: 'Forever Young', artist: '朴树', album: '猎户星座', year: 2017, month: 4, genre: '国语流行'),
  SongEntry(title: 'Colorful Days', artist: '朴树', album: '生如夏花', year: 2003, month: 11, genre: '国语流行'),

  // 王力宏
  SongEntry(title: '心中的日月', artist: '王力宏', album: '心中的日月', year: 2004, month: 12, genre: '国语流行'),
  SongEntry(title: 'Forever Love', artist: '王力宏', album: '心中的日月', year: 2004, month: 12, genre: '国语流行'),
  SongEntry(title: '盖世英雄', artist: '王力宏', album: '盖世英雄', year: 2005, month: 12, genre: '国语流行'),
  SongEntry(title: '花田错', artist: '王力宏', album: '盖世英雄', year: 2005, month: 12, genre: '国语流行'),
  SongEntry(title: '心跳', artist: '王力宏', album: '心跳', year: 2008, month: 12, genre: '国语流行'),
  SongEntry(title: '你不知道的事', artist: '王力宏', album: '十八般武艺', year: 2010, month: 8, genre: '国语流行'),
  SongEntry(title: '需要人陪', artist: '王力宏', album: '十八般武艺', year: 2010, month: 8, genre: '国语流行'),

  // 范晓萱
  SongEntry(title: '我要我们在一起', artist: '范晓萱', album: '我要我们在一起', year: 1999, month: 11, genre: '国语流行'),
  SongEntry(title: '绝世名伶', artist: '范晓萱', album: '绝世名伶', year: 2001, month: 1, genre: '国语流行'),
  SongEntry(title: '还有别的办法吗', artist: '范晓萱', album: '还有别的办法吗', year: 2004, month: 12, genre: '国语流行'),

  // 莫文蔚
  SongEntry(title: '盛夏的果实', artist: '莫文蔚', album: '就是莫文蔚', year: 1999, month: 12, genre: '国语流行'),
  SongEntry(title: '忽然之间', artist: '莫文蔚', album: '就是莫文蔚', year: 1999, month: 12, genre: '国语流行'),
  SongEntry(title: '宝贝', artist: '莫文蔚', album: '宝贝', year: 2010, month: 8, genre: '国语流行'),
  SongEntry(title: '他不爱我', artist: '莫文蔚', album: 'i', year: 2002, month: 4, genre: '国语流行'),
  SongEntry(title: '阴天', artist: '莫文蔚', album: '你可以', year: 1999, month: 1, genre: '国语流行'),
  SongEntry(title: '回蔚', artist: '莫文蔚', album: '回蔚', year: 2009, month: 12, genre: '国语流行'),

  // 张惠妹
  SongEntry(title: '掉了', artist: '张惠妹', album: '阿密特', year: 2009, month: 6, genre: '国语流行'),
  SongEntry(title: '彩虹', artist: '张惠妹', album: '阿密特', year: 2009, month: 6, genre: '国语流行'),
  SongEntry(title: '记得', artist: '张惠妹', album: '真实', year: 2001, month: 10, genre: '国语流行'),
  SongEntry(title: '原来你什么都不要', artist: '张惠妹', album: 'Bad Boy', year: 1997, month: 6, genre: '国语流行'),
  SongEntry(title: '听海', artist: '张惠妹', album: 'Bad Boy', year: 1997, month: 6, genre: '国语流行'),
  SongEntry(title: '三天三夜', artist: '张惠妹', album: '牵手', year: 1998, month: 10, genre: '国语流行'),
  SongEntry(title: '偏执面', artist: '张惠妹', album: '偏执面', year: 2014, month: 7, genre: '国语流行'),
  SongEntry(title: '姐妹', artist: '张惠妹', album: '姐妹', year: 1996, month: 12, genre: '国语流行'),

  // 萧敬腾
  SongEntry(title: '王妃', artist: '萧敬腾', album: '王妃', year: 2009, month: 7, genre: '国语摇滚'),
  SongEntry(title: '原谅我', artist: '萧敬腾', album: '王妃', year: 2009, month: 7, genre: '国语摇滚'),
  SongEntry(title: '海芋恋', artist: '萧敬腾', album: '萧敬腾', year: 2008, month: 6, genre: '国语流行'),
  SongEntry(title: '新不了情', artist: '萧敬腾', album: '萧敬腾', year: 2008, month: 6, genre: '国语流行'),

  // 飞儿乐团
  SongEntry(title: 'Lydia', artist: '飞儿乐团', album: 'F.I.R.', year: 2004, month: 4, genre: '国语流行'),
  SongEntry(title: '我们的爱', artist: '飞儿乐团', album: 'F.I.R.', year: 2004, month: 4, genre: '国语流行'),
  SongEntry(title: '你的微笑', artist: '飞儿乐团', album: 'F.I.R.', year: 2004, month: 4, genre: '国语流行'),

  // 田馥甄
  SongEntry(title: '寂寞寂寞就好', artist: '田馥甄', album: 'To Hebe', year: 2010, month: 9, genre: '国语流行'),
  SongEntry(title: '小幸运', artist: '田馥甄', album: '我的少女时代', year: 2015, month: 7, genre: '国语流行'),
  SongEntry(title: 'My Love', artist: '田馥甄', album: 'My Love', year: 2011, month: 9, genre: '国语流行'),
  SongEntry(title: '你就不要想起我', artist: '田馥甄', album: '渺小', year: 2013, month: 11, genre: '国语流行'),
  SongEntry(title: '魔鬼中的天使', artist: '田馥甄', album: 'To Hebe', year: 2010, month: 9, genre: '国语流行'),

  // 林宥嘉
  SongEntry(title: '说谎', artist: '林宥嘉', album: '感官/世界', year: 2009, month: 10, genre: '国语流行'),
  SongEntry(title: '想自由', artist: '林宥嘉', album: '感官/世界', year: 2009, month: 10, genre: '国语流行'),
  SongEntry(title: '神秘嘉宾', artist: '林宥嘉', album: '神秘嘉宾', year: 2008, month: 6, genre: '国语流行'),
  SongEntry(title: '美妙生活', artist: '林宥嘉', album: '美妙生活', year: 2011, month: 5, genre: '国语流行'),
  SongEntry(title: '自然醒', artist: '林宥嘉', album: '大小说家', year: 2012, month: 6, genre: '国语流行'),
  SongEntry(title: '成全', artist: '林宥嘉', album: '今日营业中', year: 2016, month: 6, genre: '国语流行'),

  // 徐佳莹
  SongEntry(title: '身骑白马', artist: '徐佳莹', album: 'La La首张创作专辑', year: 2009, month: 5, genre: '国语流行'),
  SongEntry(title: '失落沙洲', artist: '徐佳莹', album: 'La La首张创作专辑', year: 2009, month: 5, genre: '国语流行'),
  SongEntry(title: '你敢不敢', artist: '徐佳莹', album: '极限', year: 2012, month: 6, genre: '国语流行'),
  SongEntry(title: '言不由衷', artist: '徐佳莹', album: '心里学', year: 2017, month: 12, genre: '国语流行'),

  // 蔡健雅
  SongEntry(title: '红色高跟鞋', artist: '蔡健雅', album: '若你碰到他', year: 2009, month: 8, genre: '国语流行'),
  SongEntry(title: '达尔文', artist: '蔡健雅', album: 'Goodbye & Hello', year: 2007, month: 10, genre: '国语流行'),
  SongEntry(title: '陌生人', artist: '蔡健雅', album: '陌生人', year: 2003, month: 6, genre: '国语流行'),
  SongEntry(title: '别找我麻烦', artist: '蔡健雅', album: '说到爱', year: 2011, month: 11, genre: '国语流行'),
  SongEntry(title: 'Beautiful Love', artist: '蔡健雅', album: '若你碰到他', year: 2009, month: 8, genre: '国语流行'),

  // 李荣浩
  SongEntry(title: '李白', artist: '李荣浩', album: '模特', year: 2013, month: 9, genre: '国语流行'),
  SongEntry(title: '模特', artist: '李荣浩', album: '模特', year: 2013, month: 9, genre: '国语流行'),
  SongEntry(title: '喜剧之王', artist: '李荣浩', album: '李荣浩', year: 2014, month: 11, genre: '国语流行'),
  SongEntry(title: '不将就', artist: '李荣浩', album: '有理想', year: 2016, month: 1, genre: '国语流行'),
  SongEntry(title: '年少有为', artist: '李荣浩', album: '耳朵', year: 2018, month: 4, genre: '国语流行'),
  SongEntry(title: '麻雀', artist: '李荣浩', album: '麻雀', year: 2019, month: 12, genre: '国语流行'),

  // 赵雷
  SongEntry(title: '成都', artist: '赵雷', album: '无法长大', year: 2016, month: 10, genre: '民谣'),
  SongEntry(title: '南方姑娘', artist: '赵雷', album: '赵小雷', year: 2011, month: 8, genre: '民谣'),
  SongEntry(title: '画', artist: '赵雷', album: '吉姆餐厅', year: 2014, month: 11, genre: '民谣'),
  SongEntry(title: '鼓楼', artist: '赵雷', album: '无法长大', year: 2016, month: 10, genre: '民谣'),

  // 宋冬野
  SongEntry(title: '董小姐', artist: '宋冬野', album: '安和桥北', year: 2013, month: 8, genre: '民谣'),
  SongEntry(title: '安和桥', artist: '宋冬野', album: '安和桥北', year: 2013, month: 8, genre: '民谣'),
  SongEntry(title: '斑马斑马', artist: '宋冬野', album: '安和桥北', year: 2013, month: 8, genre: '民谣'),
  SongEntry(title: '莉莉安', artist: '宋冬野', album: '安和桥北', year: 2013, month: 8, genre: '民谣'),

  // 陈粒
  SongEntry(title: '奇妙能力歌', artist: '陈粒', album: '如也', year: 2015, month: 2, genre: '民谣'),
  SongEntry(title: '走马', artist: '陈粒', album: '如也', year: 2015, month: 2, genre: '民谣'),
  SongEntry(title: '小半', artist: '陈粒', album: '小梦大半', year: 2016, month: 7, genre: '民谣'),
  SongEntry(title: '易燃易爆炸', artist: '陈粒', album: '如也', year: 2015, month: 2, genre: '民谣'),

  // 房东的猫
  SongEntry(title: '云烟成雨', artist: '房东的猫', album: '云烟成雨', year: 2017, month: 10, genre: '民谣'),
  SongEntry(title: '下一站茶山刘', artist: '房东的猫', album: '这是你想要的生活吗', year: 2018, month: 3, genre: '民谣'),

  // 薛之谦
  SongEntry(title: '演员', artist: '薛之谦', album: '绅士', year: 2015, month: 6, genre: '国语流行'),
  SongEntry(title: '认真的雪', artist: '薛之谦', album: '薛之谦', year: 2006, month: 9, genre: '国语流行'),
  SongEntry(title: '丑八怪', artist: '薛之谦', album: '意外', year: 2013, month: 11, genre: '国语流行'),
  SongEntry(title: '绅士', artist: '薛之谦', album: '绅士', year: 2015, month: 6, genre: '国语流行'),
  SongEntry(title: '刚刚好', artist: '薛之谦', album: '初学者', year: 2016, month: 7, genre: '国语流行'),
  SongEntry(title: '天份', artist: '薛之谦', album: '天份', year: 2019, month: 12, genre: '国语流行'),

  // 华晨宇
  SongEntry(title: '烟火里的尘埃', artist: '华晨宇', album: '卡西莫多的礼物', year: 2014, month: 9, genre: '国语流行'),
  SongEntry(title: '好想爱这个世界啊', artist: '华晨宇', album: '好想爱这个世界啊', year: 2019, month: 12, genre: '国语流行'),

  // 李志
  SongEntry(title: '梵高先生', artist: '李志', album: '梵高先生', year: 2007, month: 1, genre: '民谣'),
  SongEntry(title: '关于郑州的记忆', artist: '李志', album: '1701', year: 2014, month: 11, genre: '民谣'),
  SongEntry(title: '热河', artist: '李志', album: '1701', year: 2014, month: 11, genre: '民谣'),
  SongEntry(title: '被禁忌的游戏', artist: '李志', album: '被禁忌的游戏', year: 2004, month: 1, genre: '民谣'),

  // 张靓颖
  SongEntry(title: '如果这就是爱情', artist: '张靓颖', album: '我相信', year: 2010, month: 2, genre: '国语流行'),
  SongEntry(title: '画心', artist: '张靓颖', album: '画心', year: 2008, month: 10, genre: '国语流行'),
  SongEntry(title: '我们说好的', artist: '张靓颖', album: 'Update', year: 2007, month: 8, genre: '国语流行'),
  SongEntry(title: '终于等到你', artist: '张靓颖', album: '终于等到你', year: 2013, month: 6, genre: '国语流行'),

  // 周深
  SongEntry(title: '大鱼', artist: '周深', album: '大鱼海棠', year: 2016, month: 5, genre: '国语流行'),
  SongEntry(title: '化身孤岛的鲸', artist: '周深', album: '化身孤岛的鲸', year: 2020, month: 7, genre: '国语流行'),
  SongEntry(title: '小美满', artist: '周深', album: '小美满', year: 2024, month: 3, genre: '国语流行'),
  SongEntry(title: 'Monsters', artist: '周深', album: 'Monsters', year: 2019, month: 11, genre: '国语流行'),
  SongEntry(title: '起风了', artist: '周深', album: '起风了', year: 2020, month: 3, genre: '国语流行'),

  // 毛不易
  SongEntry(title: '消愁', artist: '毛不易', album: '平凡的一天', year: 2017, month: 9, genre: '国语流行'),
  SongEntry(title: '像我这样的人', artist: '毛不易', album: '平凡的一天', year: 2017, month: 9, genre: '国语流行'),
  SongEntry(title: '平凡的一天', artist: '毛不易', album: '平凡的一天', year: 2017, month: 9, genre: '国语流行'),
  SongEntry(title: '无问', artist: '毛不易', album: '小王', year: 2020, month: 1, genre: '国语流行'),

  // 邓紫棋补充
  SongEntry(title: '光年之外', artist: '邓紫棋', album: '光年之外', year: 2016, month: 11, genre: '国语流行'),
  SongEntry(title: '句号', artist: '邓紫棋', album: '摩天动物园', year: 2019, month: 12, genre: '国语流行'),
  SongEntry(title: '泡沫', artist: '邓紫棋', album: 'Xposed', year: 2012, month: 7, genre: '国语流行'),
  SongEntry(title: '存在', artist: '邓紫棋', album: 'Xposed', year: 2012, month: 7, genre: '国语流行'),
  SongEntry(title: '画', artist: '邓紫棋', album: '新的心跳', year: 2015, month: 11, genre: '国语流行'),

  // 告五人
  SongEntry(title: '披星戴月的想你', artist: '告五人', album: '披星戴月的想你', year: 2019, month: 12, genre: '国语流行'),
  SongEntry(title: '爱人错过', artist: '告五人', album: '运气来得若有似无', year: 2020, month: 12, genre: '国语流行'),
  SongEntry(title: '唯一', artist: '告五人', album: '运气来得若有似无', year: 2020, month: 12, genre: '国语流行'),
  SongEntry(title: '在这座城市遗失了你', artist: '告五人', album: '运气来得若有似无', year: 2020, month: 12, genre: '国语流行'),

  // 卢广仲
  SongEntry(title: '早安晨之美', artist: '卢广仲', album: '100种生活', year: 2008, month: 5, genre: '国语流行'),
  SongEntry(title: '我爱你', artist: '卢广仲', album: '100种生活', year: 2008, month: 5, genre: '国语流行'),

  // 曹方
  SongEntry(title: '遇见我', artist: '曹方', album: '遇见我', year: 2005, month: 11, genre: '民谣'),
  SongEntry(title: '比天空还远', artist: '曹方', album: '比天空还远', year: 2007, month: 11, genre: '民谣'),

  // 大乔小乔
  SongEntry(title: '消失的光年', artist: '大乔小乔', album: '消失的光年', year: 2007, month: 7, genre: '民谣'),

  // 逃跑计划
  SongEntry(title: '夜空中最亮的星', artist: '逃跑计划', album: '世界', year: 2011, month: 12, genre: '国语摇滚'),
  SongEntry(title: '世界', artist: '逃跑计划', album: '世界', year: 2011, month: 12, genre: '国语摇滚'),

  // GALA
  SongEntry(title: 'Young For You', artist: 'GALA', album: 'Young For You', year: 2004, month: 3, genre: '国语摇滚'),
  SongEntry(title: '追梦痴子心', artist: 'GALA', album: '追梦痴子心', year: 2011, month: 3, genre: '国语摇滚'),

  // 卡奇社
  SongEntry(title: '日光倾城', artist: '卡奇社', album: '日光倾城', year: 2007, month: 8, genre: '国语流行'),

  // 牛奶@咖啡
  SongEntry(title: '越长大越孤单', artist: '牛奶@咖啡', album: '越长大越孤单', year: 2008, month: 3, genre: '国语流行'),
  SongEntry(title: '明天你好', artist: '牛奶@咖啡', album: '给你点颜色', year: 2010, month: 8, genre: '国语流行'),

  // 刘若英
  SongEntry(title: '后来', artist: '刘若英', album: '我等你', year: 1999, month: 11, genre: '国语流行'),
  SongEntry(title: '很爱很爱你', artist: '刘若英', album: '很爱很爱你', year: 1998, month: 11, genre: '国语流行'),
  SongEntry(title: '为爱痴狂', artist: '刘若英', album: '少女小渔', year: 1995, month: 5, genre: '国语流行'),
  SongEntry(title: '各自安好', artist: '刘若英', album: '各自安好', year: 2021, month: 4, genre: '国语流行'),
  SongEntry(title: '亲爱的路人', artist: '刘若英', album: '亲爱的路人', year: 2013, month: 5, genre: '国语流行'),

  // 张震岳
  SongEntry(title: '思念是一种病', artist: '张震岳', album: '思念是一种病', year: 2007, month: 7, genre: '国语流行'),
  SongEntry(title: '爱的初体验', artist: '张震岳', album: '这个下午很无聊', year: 1998, month: 10, genre: '国语流行'),
  SongEntry(title: '再见', artist: '张震岳', album: 'OK', year: 2007, month: 7, genre: '国语流行'),

  // 戴佩妮
  SongEntry(title: '怎样', artist: '戴佩妮', album: '怎样', year: 2001, month: 1, genre: '国语流行'),
  SongEntry(title: '原谅我就是这样的女生', artist: '戴佩妮', album: '原谅我就是这样的女生', year: 2009, month: 5, genre: '国语流行'),

  // 雷光夏
  SongEntry(title: '黑暗之光', artist: '雷光夏', album: '黑暗之光', year: 2006, month: 9, genre: '国语流行'),

  // 陈珊妮
  SongEntry(title: '如果有一件事是重要的', artist: '陈珊妮', album: '如果有一件事是重要的', year: 2008, month: 11, genre: '国语流行'),

  // Tizzy Bac
  SongEntry(title: '如果看见地狱我就不怕魔鬼', artist: 'Tizzy Bac', album: '如果看见地狱我就不怕魔鬼', year: 2009, month: 2, genre: '国语摇滚'),

  // 彭坦
  SongEntry(title: '少年故事', artist: '彭坦', album: '少年故事', year: 2007, month: 6, genre: '国语流行'),

  // 郑钧
  SongEntry(title: '赤裸裸', artist: '郑钧', album: '赤裸裸', year: 1994, month: 6, genre: '摇滚'),
  SongEntry(title: '灰姑娘', artist: '郑钧', album: '赤裸裸', year: 1994, month: 6, genre: '摇滚'),

  // 崔健
  SongEntry(title: '一无所有', artist: '崔健', album: '新长征路上的摇滚', year: 1989, month: 3, genre: '摇滚'),
  SongEntry(title: '新长征路上的摇滚', artist: '崔健', album: '新长征路上的摇滚', year: 1989, month: 3, genre: '摇滚'),
  SongEntry(title: '一块红布', artist: '崔健', album: '解决', year: 1991, month: 1, genre: '摇滚'),

  // 窦唯
  SongEntry(title: '黑梦', artist: '窦唯', album: '黑梦', year: 1994, month: 10, genre: '摇滚'),
  SongEntry(title: '噢！乖', artist: '窦唯', album: '黑梦', year: 1994, month: 10, genre: '摇滚'),

  // 黑豹
  SongEntry(title: '无地自容', artist: '黑豹', album: '黑豹', year: 1992, month: 1, genre: '摇滚'),
  SongEntry(title: 'Don\'t Break My Heart', artist: '黑豹', album: '黑豹', year: 1992, month: 1, genre: '摇滚'),

  // 唐朝
  SongEntry(title: '梦回唐朝', artist: '唐朝', album: '唐朝', year: 1992, month: 1, genre: '摇滚'),
  SongEntry(title: '飞翔鸟', artist: '唐朝', album: '唐朝', year: 1992, month: 1, genre: '摇滚'),

  // 张楚
  SongEntry(title: '孤独的人是可耻的', artist: '张楚', album: '孤独的人是可耻的', year: 1994, month: 1, genre: '摇滚'),
  SongEntry(title: '姐姐', artist: '张楚', album: '一颗不肯媚俗的心', year: 1993, month: 1, genre: '摇滚'),

  // 汪峰
  SongEntry(title: '存在', artist: '汪峰', album: '生无所求', year: 2011, month: 11, genre: '摇滚'),
  SongEntry(title: '北京北京', artist: '汪峰', album: '生无所求', year: 2011, month: 11, genre: '摇滚'),
  SongEntry(title: '飞得更高', artist: '汪峰', album: '笑着哭', year: 2004, month: 7, genre: '摇滚'),
  SongEntry(title: '春天里', artist: '汪峰', album: '信仰在空中飘扬', year: 2009, month: 7, genre: '摇滚'),
  SongEntry(title: '信仰在空中飘扬', artist: '汪峰', album: '信仰在空中飘扬', year: 2009, month: 7, genre: '摇滚'),
  SongEntry(title: '当我想你的时候', artist: '汪峰', album: '信仰在空中飘扬', year: 2009, month: 7, genre: '摇滚'),
  SongEntry(title: '一起摇摆', artist: '汪峰', album: '生来彷徨', year: 2013, month: 12, genre: '摇滚'),

  // 许巍
  SongEntry(title: '蓝莲花', artist: '许巍', album: '时光漫步', year: 2002, month: 12, genre: '摇滚'),
  SongEntry(title: '曾经的你', artist: '许巍', album: '时光漫步', year: 2002, month: 12, genre: '摇滚'),
  SongEntry(title: '旅行', artist: '许巍', album: '每一刻都是崭新的', year: 2004, month: 8, genre: '摇滚'),
  SongEntry(title: '像风一样自由', artist: '许巍', album: '那一年', year: 2000, month: 12, genre: '摇滚'),
  SongEntry(title: '故乡', artist: '许巍', album: '那一年', year: 2000, month: 12, genre: '摇滚'),
  SongEntry(title: '执着', artist: '许巍', album: '在别处', year: 1997, month: 1, genre: '摇滚'),

  // 李宗盛
  SongEntry(title: '给自己的歌', artist: '李宗盛', album: '作品李宗盛', year: 2010, month: 1, genre: '国语流行'),
  SongEntry(title: '山丘', artist: '李宗盛', album: '山丘', year: 2013, month: 9, genre: '国语流行'),
  SongEntry(title: '当爱已成往事', artist: '李宗盛/林忆莲', album: '霸王别姬', year: 1992, month: 1, genre: '国语流行'),
  SongEntry(title: '鬼迷心窍', artist: '李宗盛', album: '作品李宗盛', year: 1989, month: 1, genre: '国语流行'),
  SongEntry(title: '爱的代价', artist: '李宗盛', album: '作品李宗盛', year: 1992, month: 1, genre: '国语流行'),

  // 伍佰
  SongEntry(title: '挪威的森林', artist: '伍佰', album: '爱情的尽头', year: 1996, month: 6, genre: '摇滚'),
  SongEntry(title: '突然的自我', artist: '伍佰', album: '泪桥', year: 2003, month: 11, genre: '摇滚'),
  SongEntry(title: '浪人情歌', artist: '伍佰', album: '浪人情歌', year: 1994, month: 12, genre: '摇滚'),
  SongEntry(title: 'Last Dance', artist: '伍佰', album: '爱情的尽头', year: 1996, month: 6, genre: '摇滚'),
  SongEntry(title: '夏夜晚风', artist: '伍佰', album: '爱情的尽头', year: 1996, month: 6, genre: '摇滚'),

  // 周华健
  SongEntry(title: '朋友', artist: '周华健', album: '朋友', year: 1997, month: 4, genre: '国语流行'),
  SongEntry(title: '花心', artist: '周华健', album: '花心', year: 1993, month: 4, genre: '国语流行'),
  SongEntry(title: '让我欢喜让我忧', artist: '周华健', album: '让我欢喜让我忧', year: 1991, month: 11, genre: '国语流行'),
  SongEntry(title: '风雨无阻', artist: '周华健', album: '风雨无阻', year: 1994, month: 7, genre: '国语流行'),
  SongEntry(title: '刀剑如梦', artist: '周华健', album: '风雨无阻', year: 1994, month: 7, genre: '国语流行'),

  // 任贤齐
  SongEntry(title: '心太软', artist: '任贤齐', album: '心太软', year: 1996, month: 12, genre: '国语流行'),
  SongEntry(title: '对面的女孩看过来', artist: '任贤齐', album: '爱像太平洋', year: 1998, month: 8, genre: '国语流行'),
  SongEntry(title: '浪花一朵朵', artist: '任贤齐', album: '为爱走天涯', year: 2000, month: 1, genre: '国语流行'),
  SongEntry(title: '伤心太平洋', artist: '任贤齐', album: '爱像太平洋', year: 1998, month: 8, genre: '国语流行'),

  // 黄品源
  SongEntry(title: '你怎么舍得我难过', artist: '黄品源', album: '你怎么舍得我难过', year: 1990, month: 1, genre: '国语流行'),

  // 赵传
  SongEntry(title: '我终于失去了你', artist: '赵传', album: '我终于失去了你', year: 1989, month: 10, genre: '国语流行'),
  SongEntry(title: '我很丑可是我很温柔', artist: '赵传', album: '我很丑可是我很温柔', year: 1988, month: 11, genre: '国语流行'),
  SongEntry(title: '爱要怎么说出口', artist: '赵传', album: '约定', year: 1993, month: 1, genre: '国语流行'),

  // 曲婉婷
  SongEntry(title: '我的歌声里', artist: '曲婉婷', album: '我的歌声里', year: 2012, month: 4, genre: '国语流行'),

  // 谭维维
  SongEntry(title: '如果有来生', artist: '谭维维', album: '如果有来生', year: 2010, month: 3, genre: '国语流行'),
  SongEntry(title: '乌兰巴托的夜', artist: '谭维维', album: '谭某某', year: 2010, month: 1, genre: '国语流行'),

  // 胡夏
  SongEntry(title: '那些年', artist: '胡夏', album: '那些年', year: 2011, month: 8, genre: '国语流行'),

  // 郁可唯
  SongEntry(title: '时间煮雨', artist: '郁可唯', album: '小时代', year: 2013, month: 6, genre: '国语流行'),
  SongEntry(title: '路过人间', artist: '郁可唯', album: '路过人间', year: 2019, month: 7, genre: '国语流行'),

  // 金玟岐
  SongEntry(title: '岁月神偷', artist: '金玟岐', album: '岁月神偷', year: 2014, month: 2, genre: '国语流行'),

  // 马頔
  SongEntry(title: '南山南', artist: '马頔', album: '孤岛', year: 2014, month: 9, genre: '民谣'),
  SongEntry(title: '傲寒', artist: '马頔', album: '孤岛', year: 2014, month: 9, genre: '民谣'),

  // 程璧
  SongEntry(title: '我想和你虚度时光', artist: '程璧', album: '我想和你虚度时光', year: 2015, month: 3, genre: '民谣'),

  // 陈鸿宇
  SongEntry(title: '理想三旬', artist: '陈鸿宇', album: '浓烟下的诗歌电台', year: 2016, month: 3, genre: '民谣'),

  // 刘昊霖
  SongEntry(title: '儿时', artist: '刘昊霖', album: '鱼干铺里', year: 2016, month: 4, genre: '民谣'),

  // 谢天笑
  SongEntry(title: '向阳花', artist: '谢天笑', album: '谢天笑与冷血动物', year: 2005, month: 5, genre: '摇滚'),

  // 左小祖咒
  SongEntry(title: '我不能悲伤地坐在你身旁', artist: '左小祖咒', album: '我不能悲伤地坐在你身旁', year: 2005, month: 1, genre: '摇滚'),

  // 海龟先生
  SongEntry(title: '男孩别哭', artist: '海龟先生', album: '海龟先生', year: 2012, month: 4, genre: '摇滚'),

  // 旅行团
  SongEntry(title: '于是我不再唱歌', artist: '旅行团', album: '于是我不再唱歌', year: 2013, month: 6, genre: '国语摇滚'),

  // 鹿先森
  SongEntry(title: '春风十里', artist: '鹿先森', album: '春风十里', year: 2016, month: 8, genre: '民谣'),

  // 好妹妹
  SongEntry(title: '你曾是少年', artist: '好妹妹乐队', album: '你曾是少年', year: 2015, month: 7, genre: '民谣'),
  SongEntry(title: '春生', artist: '好妹妹乐队', album: '春生', year: 2012, month: 7, genre: '民谣'),

  // 单依纯
  SongEntry(title: '永不失联的爱', artist: '单依纯', album: '永不失联的爱', year: 2020, month: 5, genre: '国语流行'),
  SongEntry(title: '你的轮廓', artist: '单依纯', album: '你的轮廓', year: 2022, month: 6, genre: '国语流行'),

  // 黄霄云
  SongEntry(title: '星辰大海', artist: '黄霄云', album: '星辰大海', year: 2021, month: 1, genre: '国语流行'),

  // 萨顶顶
  SongEntry(title: '左手指月', artist: '萨顶顶', album: '香蜜沉沉烬如霜', year: 2018, month: 8, genre: '国语流行'),

  // 陈奕迅补充
  SongEntry(title: '人来人往', artist: '陈奕迅', album: 'The Line-Up', year: 2002, month: 7, genre: '粤语流行'),
  SongEntry(title: 'Lonely Christmas', artist: '陈奕迅', album: 'Special Thanks To...', year: 2002, month: 12, genre: '粤语流行'),
  SongEntry(title: '岁月如歌', artist: '陈奕迅', album: 'Live For Today', year: 2003, month: 7, genre: '粤语流行'),
  SongEntry(title: '最佳损友', artist: '陈奕迅', album: 'Life Continues', year: 2006, month: 2, genre: '粤语流行'),
  SongEntry(title: '苦瓜', artist: '陈奕迅', album: 'Stranger Under My Skin', year: 2011, month: 2, genre: '粤语流行'),
  SongEntry(title: '任我行', artist: '陈奕迅', album: 'The Key', year: 2013, month: 7, genre: '粤语流行'),
  SongEntry(title: '沙龙', artist: '陈奕迅', album: 'H3M', year: 2009, month: 3, genre: '粤语流行'),
  SongEntry(title: '陀飞轮', artist: '陈奕迅', album: 'Time Flies', year: 2010, month: 3, genre: '粤语流行'),
  SongEntry(title: '无条件', artist: '陈奕迅', album: '准备中', year: 2015, month: 7, genre: '粤语流行'),

  // 周杰伦补充
  SongEntry(title: '听妈妈的话', artist: '周杰伦', album: '依然范特西', year: 2006, month: 9, genre: '国语流行'),
  SongEntry(title: '牛仔很忙', artist: '周杰伦', album: '我很忙', year: 2007, month: 11, genre: '国语流行'),
  SongEntry(title: '稻香', artist: '周杰伦', album: '魔杰座', year: 2008, month: 10, genre: '国语流行'),
  SongEntry(title: '说好的幸福呢', artist: '周杰伦', album: '魔杰座', year: 2008, month: 10, genre: '国语流行'),
  SongEntry(title: '彩虹', artist: '周杰伦', album: '我很忙', year: 2007, month: 11, genre: '国语流行'),
  SongEntry(title: '给我一首歌的时间', artist: '周杰伦', album: '魔杰座', year: 2008, month: 10, genre: '国语流行'),
  SongEntry(title: '我不配', artist: '周杰伦', album: '我很忙', year: 2007, month: 11, genre: '国语流行'),
  SongEntry(title: '说了再见', artist: '周杰伦', album: '跨时代', year: 2010, month: 5, genre: '国语流行'),
  SongEntry(title: '烟花易冷', artist: '周杰伦', album: '跨时代', year: 2010, month: 5, genre: '国语流行'),
  SongEntry(title: '超人不会飞', artist: '周杰伦', album: '跨时代', year: 2010, month: 5, genre: '国语流行'),
  SongEntry(title: 'Mine Mine', artist: '周杰伦', album: '惊叹号', year: 2011, month: 11, genre: '国语流行'),
  SongEntry(title: '明明就', artist: '周杰伦', album: '十二新作', year: 2012, month: 12, genre: '国语流行'),
  SongEntry(title: '大笨钟', artist: '周杰伦', album: '十二新作', year: 2012, month: 12, genre: '国语流行'),
  SongEntry(title: '算什么男人', artist: '周杰伦', album: '哎呦不错哦', year: 2014, month: 12, genre: '国语流行'),
  SongEntry(title: '告白气球', artist: '周杰伦', album: '周杰伦的床边故事', year: 2016, month: 6, genre: '国语流行'),
  SongEntry(title: '不该', artist: '周杰伦', album: '周杰伦的床边故事', year: 2016, month: 6, genre: '国语流行'),
  SongEntry(title: '等你下课', artist: '周杰伦', album: '等你下课', year: 2018, month: 1, genre: '国语流行'),
  SongEntry(title: '说好不哭', artist: '周杰伦', album: '说好不哭', year: 2019, month: 9, genre: '国语流行'),
  SongEntry(title: 'Mojito', artist: '周杰伦', album: 'Mojito', year: 2020, month: 6, genre: '国语流行'),
  SongEntry(title: '最伟大的作品', artist: '周杰伦', album: '最伟大的作品', year: 2022, month: 7, genre: '国语流行'),
  SongEntry(title: '还在流浪', artist: '周杰伦', album: '最伟大的作品', year: 2022, month: 7, genre: '国语流行'),
  SongEntry(title: '红颜如霜', artist: '周杰伦', album: '最伟大的作品', year: 2022, month: 7, genre: '国语流行'),

  // 张学友补充
  SongEntry(title: '一路上有你', artist: '张学友', album: '吻别', year: 1993, month: 3, genre: '国语流行'),
  SongEntry(title: '李香兰', artist: '张学友', album: '梦中的你', year: 1990, month: 7, genre: '粤语流行'),
  SongEntry(title: '饿狼传说', artist: '张学友', album: '饿狼传说', year: 1994, month: 5, genre: '粤语流行'),
  SongEntry(title: '我等到花儿也谢了', artist: '张学友', album: '真爱', year: 1995, month: 4, genre: '国语流行'),
  SongEntry(title: '心如刀割', artist: '张学友', album: '走过1999', year: 1999, month: 11, genre: '国语流行'),
  SongEntry(title: '如果这都不算爱', artist: '张学友', album: '热', year: 2001, month: 9, genre: '国语流行'),
  SongEntry(title: '真爱', artist: '张学友', album: '真爱', year: 1995, month: 4, genre: '国语流行'),

  // Beyond 补充
  SongEntry(title: '真的爱你', artist: 'Beyond', album: 'Beyond IV', year: 1989, month: 7, genre: '粤语流行'),
  SongEntry(title: '光辉岁月', artist: 'Beyond', album: '命运派对', year: 1990, month: 9, genre: '粤语流行'),
  SongEntry(title: '海阔天空', artist: 'Beyond', album: '乐与怒', year: 1993, month: 5, genre: '粤语流行'),
  SongEntry(title: '不再犹豫', artist: 'Beyond', album: 'DELIBERATE', year: 1991, month: 9, genre: '粤语流行'),
  SongEntry(title: '喜欢你', artist: 'Beyond', album: '秘密警察', year: 1988, month: 9, genre: '粤语流行'),
  SongEntry(title: '冷雨夜', artist: 'Beyond', album: '真的见证', year: 1989, month: 12, genre: '粤语流行'),
  SongEntry(title: '大地', artist: 'Beyond', album: '秘密警察', year: 1988, month: 9, genre: '粤语流行'),
  SongEntry(title: '长城', artist: 'Beyond', album: '乐与怒', year: 1993, month: 5, genre: '粤语流行'),
  SongEntry(title: 'Amani', artist: 'Beyond', album: 'DELIBERATE', year: 1991, month: 9, genre: '粤语流行'),
  SongEntry(title: '灰色轨迹', artist: 'Beyond', album: '命运派对', year: 1990, month: 9, genre: '粤语流行'),

  // 蔡琴
  SongEntry(title: '你的眼神', artist: '蔡琴', album: '你的眼神', year: 1981, month: 1, genre: '国语流行'),
  SongEntry(title: '被遗忘的时光', artist: '蔡琴', album: '出塞曲', year: 1979, month: 1, genre: '国语流行'),
  SongEntry(title: '恰似你的温柔', artist: '蔡琴', album: '你的眼神', year: 1981, month: 1, genre: '国语流行'),
  SongEntry(title: '渡口', artist: '蔡琴', album: '此情可待', year: 1986, month: 1, genre: '国语流行'),

  // 陈百强补充
  SongEntry(title: '一生何求', artist: '陈百强', album: '一生何求', year: 1989, month: 7, genre: '粤语流行'),
  SongEntry(title: '偏偏喜欢你', artist: '陈百强', album: '偏偏喜欢你', year: 1983, month: 8, genre: '粤语流行'),
  SongEntry(title: '今宵多珍重', artist: '陈百强', album: '倾诉', year: 1982, month: 1, genre: '粤语流行'),

  // 张国荣补充
  SongEntry(title: '有谁共鸣', artist: '张国荣', album: '有谁共鸣', year: 1986, month: 10, genre: '粤语流行'),
  SongEntry(title: '无心睡眠', artist: '张国荣', album: 'Summer Romance', year: 1987, month: 7, genre: '粤语流行'),
  SongEntry(title: '怪你过分美丽', artist: '张国荣', album: '红', year: 1996, month: 11, genre: '粤语流行'),
  SongEntry(title: '左右手', artist: '张国荣', album: '陪你倒数', year: 1999, month: 10, genre: '粤语流行'),
  SongEntry(title: '追', artist: '张国荣', album: '宠爱', year: 1995, month: 7, genre: '粤语流行'),
  SongEntry(title: '当爱已成往事', artist: '张国荣', album: '宠爱', year: 1995, month: 7, genre: '粤语流行'),

  // 梅艳芳补充
  SongEntry(title: '梦伴', artist: '梅艳芳', album: '梦伴', year: 1985, month: 1, genre: '粤语流行'),
  SongEntry(title: '坏女孩', artist: '梅艳芳', album: '坏女孩', year: 1986, month: 1, genre: '粤语流行'),
  SongEntry(title: '心债', artist: '梅艳芳', album: '心债', year: 1982, month: 1, genre: '粤语流行'),
  SongEntry(title: '似火探戈', artist: '梅艳芳', album: '似火探戈', year: 1987, month: 1, genre: '粤语流行'),

  // 谭咏麟补充
  SongEntry(title: '雾之恋', artist: '谭咏麟', album: '雾之恋', year: 1984, month: 1, genre: '粤语流行'),
  SongEntry(title: '爱情陷阱', artist: '谭咏麟', album: '爱情陷阱', year: 1985, month: 1, genre: '粤语流行'),
  SongEntry(title: '暴风女神Lorelei', artist: '谭咏麟', album: '暴风女神Lorelei', year: 1985, month: 1, genre: '粤语流行'),
  SongEntry(title: '半梦半醒', artist: '谭咏麟', album: '半梦半醒', year: 1988, month: 1, genre: '粤语流行'),

  // 林忆莲
  SongEntry(title: '至少还有你', artist: '林忆莲', album: '林忆莲\'s', year: 2000, month: 1, genre: '国语流行'),
  SongEntry(title: '伤痕', artist: '林忆莲', album: 'Love, Sandy', year: 1995, month: 1, genre: '国语流行'),
  SongEntry(title: '为你我受冷风吹', artist: '林忆莲', album: 'Love, Sandy', year: 1995, month: 1, genre: '国语流行'),
  SongEntry(title: '听说爱情回来过', artist: '林忆莲', album: 'Love, Sandy', year: 1995, month: 1, genre: '国语流行'),

  // 张宇补充
  SongEntry(title: '月亮惹的祸', artist: '张宇', album: '月亮太阳', year: 1998, month: 1, genre: '国语流行'),
  SongEntry(title: '雨一直下', artist: '张宇', album: '月亮太阳', year: 1998, month: 1, genre: '国语流行'),

  // 杨千嬅
  SongEntry(title: '野孩子', artist: '杨千嬅', album: 'Miriam', year: 2001, month: 9, genre: '粤语流行'),
  SongEntry(title: '少女的祈祷', artist: '杨千嬅', album: 'Play It Loud, Kiss Me Soft', year: 2000, month: 9, genre: '粤语流行'),
  SongEntry(title: '可惜我是水瓶座', artist: '杨千嬅', album: 'Miriam', year: 2001, month: 9, genre: '粤语流行'),
  SongEntry(title: '处处吻', artist: '杨千嬅', album: '电光幻影', year: 2004, month: 1, genre: '粤语流行'),

  // 容祖儿
  SongEntry(title: '我的骄傲', artist: '容祖儿', album: '我的骄傲', year: 2003, month: 3, genre: '粤语流行'),
  SongEntry(title: '挥着翅膀的女孩', artist: '容祖儿', album: '独照', year: 2003, month: 12, genre: '国语流行'),

  // 古巨基
  SongEntry(title: '爱得太迟', artist: '古巨基', album: 'Human', year: 2006, month: 1, genre: '粤语流行'),
  SongEntry(title: '必杀技', artist: '古巨基', album: '大雄', year: 2004, month: 7, genre: '粤语流行'),

  // 李克勤
  SongEntry(title: '红日', artist: '李克勤', album: '红日', year: 1992, month: 1, genre: '粤语流行'),
  SongEntry(title: '月半小夜曲', artist: '李克勤', album: '月半小夜曲', year: 1987, month: 1, genre: '粤语流行'),
  SongEntry(title: '一生不变', artist: '李克勤', album: '一生不变', year: 1989, month: 1, genre: '粤语流行'),

  // 郑秀文
  SongEntry(title: '终身美丽', artist: '郑秀文', album: 'Shocking Pink', year: 2001, month: 7, genre: '粤语流行'),
  SongEntry(title: '舍不得你', artist: '郑秀文', album: '舍不得你', year: 1995, month: 1, genre: '粤语流行'),

  // 侧田
  SongEntry(title: 'Kong', artist: '侧田', album: 'No Protection', year: 2006, month: 1, genre: '粤语流行'),

  // 邓丽君补充
  SongEntry(title: '在水一方', artist: '邓丽君', album: '在水一方', year: 1980, month: 1, genre: '国语流行'),
  SongEntry(title: '小城故事', artist: '邓丽君', album: '小城故事', year: 1979, month: 3, genre: '国语流行'),
  SongEntry(title: '何日君再来', artist: '邓丽君', album: '何日君再来', year: 1978, month: 1, genre: '国语流行'),
  SongEntry(title: '千言万语', artist: '邓丽君', album: '千言万语', year: 1972, month: 1, genre: '国语流行'),

  // 费玉清
  SongEntry(title: '一剪梅', artist: '费玉清', album: '一剪梅', year: 1983, month: 1, genre: '国语流行'),
  SongEntry(title: '千里之外', artist: '费玉清/周杰伦', album: '依然范特西', year: 2006, month: 9, genre: '国语流行'),
];
