--サポ－トメモリー_地球の地獄
--support_memory_50013
 
--エフェクト指定(演出によって書き換えてください)
SP_01 = 1500024;
SP_02 = 1500025;

------------------------------------------------------
-- 共通部分⭐︎⭐︎
------------------------------------------------------
 
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
SP_101 = 1000000;  --ベースの背景演出-奥
SP_102 = 1000001;  --ベースの背景演出-手前
SP_103 = 1000002;  --終わりのオレンジの光
 
setVisibleUI(0, 0);
 
------------------------------------------------------
-- サポートメモリー演出
------------------------------------------------------
spep_0 = 0;
 
--演出によって書き換えてください。
f = 1036; --終わりのf数を入れてください。
 
-- ** エフェクト等 ** --
--共通部分⭐︎⭐︎
entryEffectLife( spep_0 + 0, SP_101, f +10, 0x80, -1, 0, 0, 0 );  --ベース奥
entryEffectLife( spep_0 + 0, SP_102, f +10, 0x100, -1, 0, 0, 0, 1000 );  --ベース手前
 
--基本的には書き換えない⭐︎⭐︎(場合によっては書き換えてください)
entryEffectLife( spep_0 + 0, SP_01, 185, 0x100, -1, 0, 0, 0 );  --カットイン
entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0, 3000 );  --サポートメモリー映像
 
-- ** SE ** --
--共通部分⭐︎⭐︎
--冒頭
SE_XX1 = playSe( spep_0 + 10, 63 );
setSeVolumeByWorkId( spep_0 + 10, SE_XX1, 79 );
stopSe( spep_0 + 54, SE_XX1, 12 );
 
SE_XX2 = playSe( spep_0 + 10, 44 );
setSeVolumeByWorkId( spep_0 + 10, SE_XX2, 0 );
setSeVolumeByWorkId( spep_0 + 11, SE_XX2, 6.9 );
setSeVolumeByWorkId( spep_0 + 12, SE_XX2, 13.8 );
setSeVolumeByWorkId( spep_0 + 13, SE_XX2, 20.7 );
setSeVolumeByWorkId( spep_0 + 14, SE_XX2, 27.6 );
setSeVolumeByWorkId( spep_0 + 15, SE_XX2, 34.5 );
setSeVolumeByWorkId( spep_0 + 16, SE_XX2, 41.4 );
setSeVolumeByWorkId( spep_0 + 17, SE_XX2, 48.3 );
setSeVolumeByWorkId( spep_0 + 18, SE_XX2, 55.2 );
setSeVolumeByWorkId( spep_0 + 19, SE_XX2, 62.1 );
setSeVolumeByWorkId( spep_0 + 20, SE_XX2, 69 );
setSeVolumeByWorkId( spep_0 + 21, SE_XX2, 75.9 );
setSeVolumeByWorkId( spep_0 + 22, SE_XX2, 82.8 );
 
--メモリー決め
SE_XX3 = playSe( spep_0 + 46, 1062 );
setPitch( spep_0 + 46, SE_XX3, 300 );
setTimeStretch( SE_XX3, 1.2, 10, 1 );
 
SE_XX4 = playSe( spep_0 + 46, 20 );
setSeVolumeByWorkId( spep_0 + 46, SE_XX4, 38 );
 
--映写機音
SE_XX5 = playSe( spep_0 + 98, 70 );
setSeVolumeByWorkId( spep_0 + 98, SE_XX5, 158 );
setSeVolumeByWorkId( spep_0 + 190, SE_XX5, 158 );
setSeVolumeByWorkId( spep_0 + 194, SE_XX5, 148 );
setSeVolumeByWorkId( spep_0 + 198, SE_XX5, 132 );
setSeVolumeByWorkId( spep_0 + 202, SE_XX5, 126 );
setSeVolumeByWorkId( spep_0 + 206, SE_XX5, 115 );
setSeVolumeByWorkId( spep_0 + 210, SE_XX5, 107 );
setSeVolumeByWorkId( spep_0 + 214, SE_XX5, 100 );
setSeVolumeByWorkId( spep_0 + 218, SE_XX5, 96 );
setSeVolumeByWorkId( spep_0 + 222, SE_XX5, 93 );
setSeVolumeByWorkId( spep_0 + 226, SE_XX5, 89 );
setSeVolumeByWorkId( spep_0 + 230, SE_XX5, 85 );
setSeVolumeByWorkId( spep_0 + 234, SE_XX5, 78 );
setSeVolumeByWorkId( spep_0 + 238, SE_XX5, 71 );
setSeVolumeByWorkId( spep_0 + 242, SE_XX5, 64 );
setSeVolumeByWorkId( spep_0 + 246, SE_XX5, 57 );
setSeVolumeByWorkId( spep_0 + 250, SE_XX5, 50 );
setSeVolumeByWorkId( spep_0 + 252, SE_XX5, 45 );
 
--メモリー光る
SE_XX6 = playSe( spep_0 + 156, 46 );
setSeVolumeByWorkId( spep_0 + 156, SE_XX6, 38 );
 
SE_XX7 = playSe( spep_0 + 156, 1115 );
setTimeStretch( SE_XX7, 1.11, 10, 1 );
stopSe( spep_0 + 156 +78, SE_XX7, 92 );
 
--演出によって書き換えてください
-- ** 音 ** --
--キラキラ音
SE001 = playSeVer2( spep_0 + 232, 1315, "",spep_0 + 526, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 232, SE001, 117 );
SE002 = playSeVer2( spep_0 + 270, 1288, "",spep_0 + 724, 0, 78, -1);

--キック
SE003 = playSeVer2( spep_0 + 276, 1182, "",spep_0 + 306, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 276, SE003, 71 );
SE004 = playSeVer2( spep_0 + 276, 1352, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE004, 126 );
setPitch( spep_0 + 276, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );

--スネアグループ１
SE005 = playSeVer2( spep_0 + 298, 1000, "",spep_0 + 314, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 298, SE005, 40 );
SE006 = playSeVer2( spep_0 + 298, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE006, 50 );

SE007 = playSeVer2( spep_0 + 300, 1000, "",spep_0 + 318, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 300, SE007, 45 );
SE008 = playSeVer2( spep_0 + 303, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 303, SE008, 56 );

--キック
SE009 = playSeVer2( spep_0 + 307, 1182, "",spep_0 + 338, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 307, SE009, 71 );
SE010 = playSeVer2( spep_0 + 307, 1352, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 307, SE010, 126 );
setPitch( spep_0 + 307, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );

--スネアグループ１
SE011 = playSeVer2( spep_0 + 310, 1000, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE011, 60 );
SE012 = playSeVer2( spep_0 + 310, 1192, "",spep_0 + 314, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 310, SE012, 224 );

SE013 = playSeVer2( spep_0 + 317, 1000, "",spep_0 + 332, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 317, SE013, 70 );
--SE014 = playSeVer2( spep_0 + 317, 1192, "",spep_0 + 334, 0, 2, -1);
--setSeVolumeByWorkId( spep_0 + 316, SE014, 160 );

SE015 = playSeVer2( spep_0 + 324, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE015, 71 );
SE016 = playSeVer2( spep_0 + 324, 1192, "",spep_0 + 338, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 324, SE016, 160 );

--キラキラ音
SE002_02 = playSeVer2( spep_0 + 324, 1288, "",spep_0 + 724, 0, 78, -1);

--キック
SE017 = playSeVer2( spep_0 + 340, 1182, "",spep_0 + 370, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 340, SE017, 71 );
SE018 = playSeVer2( spep_0 + 340, 1352, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE018, 126 );
setPitch( spep_0 + 340, SE018, -600 );
setTimeStretch( SE018, 0.6, 30, 4 );

--スネアグループ２
--SE019 = playSeVer2( spep_0 + 354, 1029, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 354, SE019, 66 );

--SE020 = playSeVer2( spep_0 + 356, 1192, "",spep_0 + 366, 0, 2, -1);
--setSeVolumeByWorkId( spep_0 + 356, SE020, 224 );
SE021 = playSeVer2( spep_0 + 356, 1000, "",0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 356, SE021, 54 );

SE022 = playSeVer2( spep_0 + 363, 1192, "",spep_0 + 372, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 363, SE022, 224 );
SE023 = playSeVer2( spep_0 + 363, 1000, "",spep_0 + 378, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 363, SE023, 58 ); 

--キック
SE024 = playSeVer2( spep_0 + 371, 1182, "",spep_0 + 402, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 371, SE024, 71 );
SE025 = playSeVer2( spep_0 + 371, 1352, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 371, SE025, 126 );
setPitch( spep_0 + 371, SE025, -600 );
setTimeStretch( SE025, 0.6, 30, 4 );

--スネアグループ２
SE026 = playSeVer2( spep_0 + 370, 1192, "",spep_0 + 384, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 370, SE026, 224 );
SE027 = playSeVer2( spep_0 + 370, 1000, "",spep_0 + 386, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 370, SE027, 50 );

--SE028 = playSeVer2( spep_0 + 380, 1192, "",spep_0 + 394, 0, 2, -1);
--setSeVolumeByWorkId( spep_0 + 380, SE028, 224 );
SE029 = playSeVer2( spep_0 + 380, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE029, 54 );

--SE030 = playSeVer2( spep_0 + 395, 1192, "",spep_0 + 400, 0, 2, -1);
--setSeVolumeByWorkId( spep_0 + 395, SE030, 224 );
SE031 = playSeVer2( spep_0 + 395 ,1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 395, SE031, 53 );

--キラキラ音
SE002_03 = playSeVer2( spep_0 + 396, 1288, "",spep_0 + 724, 0, 78, -1);
setStartTimeMs( SE002_03,  1200 );

--キック
SE032 = playSeVer2( spep_0 + 404, 1182, "",spep_0 + 434, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 404, SE032, 71 );
SE033 = playSeVer2( spep_0 + 404, 1352, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE033, 126 );
setPitch( spep_0 + 404, SE033, -600 );
setTimeStretch( SE033, 0.6, 30, 4 );

--スネアグループ３
SE034 = playSeVer2( spep_0 + 426, 1000, "",spep_0 + 442, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 426, SE034, 38 );
--SE035 = playSeVer2( spep_0 + 426, 1029, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 430, 1000, "",spep_0 + 446, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 430, SE036, 43 );
--SE037 = playSeVer2( spep_0 + 430, 1029, "", 0, 0, 0, -1);

--キック
SE038 = playSeVer2( spep_0 + 434, 1182, "",spep_0 + 466, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 434, SE038, 71 );
SE039 = playSeVer2( spep_0 + 434, 1352, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE039, 126 );
setPitch( spep_0 + 434, SE039, -600 );
setTimeStretch( SE039, 0.6, 30, 4 );

--スネアグループ３
SE040 = playSeVer2( spep_0 + 437, 1000, "",spep_0 + 456, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 437, SE040, 56 );
SE041 = playSeVer2( spep_0 + 437, 1192, "",spep_0 + 442, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 437, SE041, 224 );

SE042 = playSeVer2( spep_0 + 444, 1000, "",spep_0 + 462, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 444, SE042, 75 );
SE043 = playSeVer2( spep_0 + 444, 1192, "",spep_0 + 456, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 444, SE043, 180 );

SE044 = playSeVer2( spep_0 + 452, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE044, 72 );
SE045 = playSeVer2( spep_0 + 452, 1192, "",spep_0 + 462, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 452, SE045, 180 );

--キラキラ音
SE002_04 = playSeVer2( spep_0 + 453, 1288, "",spep_0 + 724, 0, 78, -1);
setStartTimeMs( SE002_03,  1800 );

--キック
SE046 = playSeVer2( spep_0 + 468, 1182, "",spep_0 + 498, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 468, SE046, 71 );
SE047 = playSeVer2( spep_0 + 468, 1352, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE047, 126 );
setPitch( spep_0 + 468, SE047, -600 );
setTimeStretch( SE047, 0.6, 30, 4 );

--スネアグループ４
SE048 = playSeVer2( spep_0 + 482, 1029, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE048, 56 );

--SE049 = playSeVer2( spep_0 + 484, 1192, "",spep_0 + 490, 0, 2, -1);
--setSeVolumeByWorkId( spep_0 + 484, SE049, 224 );
SE050 = playSeVer2( spep_0 + 484, 1000, "",spep_0 + 500, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 484, SE050, 58 );

SE051 = playSeVer2( spep_0 + 491, 1192, "",spep_0 + 498, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 491, SE051, 224 );
SE052 = playSeVer2( spep_0 + 491, 1000, "",spep_0 + 506, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 491, SE052, 53 );

--キック
SE053 = playSeVer2( spep_0 + 500, 1182, "",spep_0 + 530, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 500, SE053, 71 );
SE054 = playSeVer2( spep_0 + 500, 1352, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE054, 126 );
setPitch( spep_0 + 500, SE054, -600 );
setTimeStretch( SE054, 0.6, 30, 4 );

--スネアグループ４
--SE055 = playSeVer2( spep_0 + 499, 1192, "",spep_0 + 516, 0, 2, -1);
--setSeVolumeByWorkId( spep_0 + 499, SE055, 224 );
SE056 = playSeVer2( spep_0 + 499, 1000, "",spep_0 + 520, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 499, SE056, 56 );

--SE057 = playSeVer2( spep_0 + 507, 1192, "",spep_0 + 514, 0, 2, -1);
--setSeVolumeByWorkId( spep_0 + 507, SE057, 224 );
SE058 = playSeVer2( spep_0 + 507, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 507, SE058, 56 );

--SE063 = playSeVer2( spep_0 + 514, 1192, "",spep_0 + 530, 0, 2, -1);
--setSeVolumeByWorkId( spep_0 + 514, SE063, 224 );
SE064 = playSeVer2( spep_0 + 514, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 514, SE064, 57 );

--画面遷移
SE059 = playSeVer2( spep_0 + 510, 44, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_0 + 510, 1115, "",spep_0 + 766, 0, 124, -1);
SE061 = playSeVer2( spep_0 + 510, 1436, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_0 + 518, 1072, "", 0, 0, 0, -1);

--力む
SE065 = playSeVer2( spep_0 + 678, 1397, "",spep_0 + 846, 0, 88, -1);
setSeVolumeByWorkId( spep_0 + 678, SE065, 52 );
SE067 = playSeVer2( spep_0 + 700, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE067, 63 );

--環境音
SE066 = playSeVer2( spep_0 + 700, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE066, 25 );

--ラスト叫ぶ
SE068 = playSeVer2( spep_0 + 780, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 780, SE068, 77 );
SE069 = playSeVer2( spep_0 + 780, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 780, SE069, 53 );
setPitch( spep_0 + 780, SE069, -800 );
setTimeStretch( SE069, 0.47, 30, 4 );
SE070 = playSeVer2( spep_0 + 780, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 780, SE070, 68 );


-- ** 終わり部分 ** --
--共通部分⭐︎⭐︎
entryEffect( spep_0 + f -52, SP_103, 0x100, -1, 0, 0, 0, 5000 );  --最後のオレンジ
entryFadeBg( spep_0 + 0 , 0, f +2 , 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --白背景
entryFade( spep_0 + f -6 , 0, 10, 0,  fcolor_r, fcolor_g, fcolor_b, 255 ); --白
 
--SE
stopSe( spep_0 + f -54, SE_XX5, 54 );
SE_XX8 = playSe( spep_0 + f -54, 63 );
setSeVolumeByWorkId( spep_0 + f -54 +0, SE_XX8, 0 );
setSeVolumeByWorkId( spep_0 + f -54 +1, SE_XX8, 2.7 );
setSeVolumeByWorkId( spep_0 + f -54 +2, SE_XX8, 5.4 );
setSeVolumeByWorkId( spep_0 + f -54 +3, SE_XX8, 8.1 );
setSeVolumeByWorkId( spep_0 + f -54 +4, SE_XX8, 10.8 );
setSeVolumeByWorkId( spep_0 + f -54 +5, SE_XX8, 13.5 );
setSeVolumeByWorkId( spep_0 + f -54 +6, SE_XX8, 16.2 );
setSeVolumeByWorkId( spep_0 + f -54 +7, SE_XX8, 18.9 );
setSeVolumeByWorkId( spep_0 + f -54 +8, SE_XX8, 21.6 );
setSeVolumeByWorkId( spep_0 + f -54 +9, SE_XX8, 24.3 );
setSeVolumeByWorkId( spep_0 + f -54 +10, SE_XX8, 27 );
setSeVolumeByWorkId( spep_0 + f -54 +11, SE_XX8, 29.7 );
setSeVolumeByWorkId( spep_0 + f -54 +12, SE_XX8, 32.4 );
setSeVolumeByWorkId( spep_0 + f -54 +13, SE_XX8, 35.1 );
setSeVolumeByWorkId( spep_0 + f -54 +14, SE_XX8, 37.8 );
setSeVolumeByWorkId( spep_0 + f -54 +15, SE_XX8, 40.5 );
setSeVolumeByWorkId( spep_0 + f -54 +16, SE_XX8, 43.2 );
setSeVolumeByWorkId( spep_0 + f -54 +17, SE_XX8, 45.9 );
setSeVolumeByWorkId( spep_0 + f -54 +18, SE_XX8, 48.6 );
setSeVolumeByWorkId( spep_0 + f -54 +19, SE_XX8, 51.3 );
setSeVolumeByWorkId( spep_0 + f -54 +20, SE_XX8, 54 );
setSeVolumeByWorkId( spep_0 + f -54 +21, SE_XX8, 56.7 );
setSeVolumeByWorkId( spep_0 + f -54 +22, SE_XX8, 59.4 );
setSeVolumeByWorkId( spep_0 + f -54 +23, SE_XX8, 62.1 );
setSeVolumeByWorkId( spep_0 + f -54 +24, SE_XX8, 64.8 );
setSeVolumeByWorkId( spep_0 + f -54 +25, SE_XX8, 67.5 );
setSeVolumeByWorkId( spep_0 + f -54 +26, SE_XX8, 70.2 );
setSeVolumeByWorkId( spep_0 + f -54 +27, SE_XX8, 72.9 );
setSeVolumeByWorkId( spep_0 + f -54 +28, SE_XX8, 75.6 );
setSeVolumeByWorkId( spep_0 + f -54 +29, SE_XX8, 78.3 );
setSeVolumeByWorkId( spep_0 + f -54 +30, SE_XX8, 81 );
setSeVolumeByWorkId( spep_0 + f -54 +31, SE_XX8, 83.7 );
setSeVolumeByWorkId( spep_0 + f -54 +32, SE_XX8, 86.4 );
setStartTimeMs( SE_XX8,  450 );
setTimeStretch( SE_XX8, 1.18, 10, 1 );
 
--終わり
endPhase(spep_0 + f);