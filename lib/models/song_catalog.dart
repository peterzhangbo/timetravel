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
];
