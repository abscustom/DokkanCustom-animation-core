--サポートメモリー_ベジータのプライド
--support_memory_20012

--エフェクト指定(演出によって書き換えてください)
SP_01 = 1200020;
SP_02 = 1200021;

------------------------------------------------------
-- 共通部分⭐︎⭐︎
------------------------------------------------------

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_101 = 1000000;  --ベースの背景演出-奥
SP_102 = 1000001;  --ベースの背景演出-手前
SP_103 = 1000002;  --終わりのオレンジの光

multi_frm = 2;

setVisibleUI(0, 0);

------------------------------------------------------
-- サポートメモリー演出(338F)
------------------------------------------------------
spep_0 = 0;

--演出によって書き換えてください。
f = 1236; --終わりのf数を入れてください。

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
--セリフカットイン
SE001 = playSeVer2( spep_0 +18 + 248, 1018, "", 0, 0, 0, -1);

--水晶音
SE002 = playSeVer2( spep_0 +18 + 264, 1271, "",spep_0 +18 + 458, 0, 18, -1);
setSeVolumeByWorkId( spep_0 +18 + 264, SE002, 158 );
setPitch( spep_0 +18 + 264, SE002, 500 );
setTimeStretch( SE002, 1.33, 30, 4 );

--赤い光走る
SE003 = playSeVer2( spep_0 +18 + 438 +10, 1266, "",spep_0 +18 + 520, 10, 48, -1);		setStartTimeMs( SE003,  1183 );
SE004 = playSeVer2( spep_0 +18 + 442 +10, 1256, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 +18 + 442 +10, 1126, "",spep_0 +18 + 536, 0, 58, -1);	setSeVolumeByWorkId( spep_0 +18 + 442, SE005, 24 );

--もがく
SE006 = playSeVer2( spep_0 +18 + 482, 1330, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 482, SE006, 75 );

--オーラ
SE007 = playSeVer2( spep_0 +18 + 490, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 490, SE007, 63 );
SE008 = playSeVer2( spep_0 +18 + 514, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 514, SE008, 63 );
SE009 = playSeVer2( spep_0 +18 + 538, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 538, SE009, 63 );
SE010 = playSeVer2( spep_0 +18 + 562, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 562, SE010, 63 );
SE011 = playSeVer2( spep_0 +18 + 586, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 586, SE011, 63 );

--もがく
SE012 = playSeVer2( spep_0 +18 + 598, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 +18 + 598, SE012, 73 );
setPitch( spep_0 +18 + 598, SE012, -400 );
setTimeStretch( SE012, 0.73, 10, 1 );

--オーラ
SE013 = playSeVer2( spep_0 +18 + 610, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 610, SE013, 63 );
SE014 = playSeVer2( spep_0 +18 + 634, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 634, SE014, 63 );
SE015 = playSeVer2( spep_0 +18 + 658, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 658, SE015, 63 );

--落ち着く
SE016 = playSeVer2( spep_0 +18 + 672, 1003, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 672, SE016, 64 );

--オーラ
SE017 = playSeVer2( spep_0 +18 + 682, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 682, SE017, 63 );
SE018 = playSeVer2( spep_0 +18 + 706, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 706, SE018, 63 );
SE019 = playSeVer2( spep_0 +18 + 730, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 730, SE019, 63 );
SE020 = playSeVer2( spep_0 +18 + 754, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 754, SE020, 63 );
SE021 = playSeVer2( spep_0 +18 + 778, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 778, SE021, 63 );
SE022 = playSeVer2( spep_0 +18 + 802, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 802, SE022, 63 );
SE023 = playSeVer2( spep_0 +18 + 826, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 826, SE023, 63 );

--地鳴り
SE026 = playSeVer2( spep_0 +18 + 832, 1044, "",spep_0 +18 + 1068, 0, 26, -1);	setSeVolumeByWorkId( spep_0 +18 + 832, SE026, 55 );

--オーラ
SE024 = playSeVer2( spep_0 +18 + 850, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 850, SE024, 63 );
SE025 = playSeVer2( spep_0 +18 + 874, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 874, SE025, 63 );
SE027 = playSeVer2( spep_0 +18 + 898, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 898, SE027, 63 );
SE028 = playSeVer2( spep_0 +18 + 922, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 922, SE028, 63 );
SE029 = playSeVer2( spep_0 +18 + 946, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 946, SE029, 63 );
SE030 = playSeVer2( spep_0 +18 + 970, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 970, SE030, 63 );

--イナヅマ
SE031 = playSeVer2( spep_0 +18 + 982, 1147, "",spep_0 +18 + 1072, 0, 24, -1);

--オーラ
SE032 = playSeVer2( spep_0 +18 + 994, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 994, SE032, 63 );
SE033 = playSeVer2( spep_0 +18 + 1018, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 1018, SE033, 63 );

--気を爆発させる
SE034 = playSeVer2( spep_0 +18 + 1036, 1024, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 +18 + 1036, 1011, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 1036, SE035, 79 );
SE036 = playSeVer2( spep_0 +18 + 1036, 1068, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 1036, SE036, 76 );

--オーラ
SE037 = playSeVer2( spep_0 +18 + 1042, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 1042, SE037, 63 );

--気を爆発させる
SE038 = playSeVer2( spep_0 +18 + 1048, 1278, "",spep_0 +18 + 1200, 0, 46, -1);	setSeVolumeByWorkId( spep_0 +18 + 1048, SE038, 56 );

--オーラ
SE039 = playSeVer2( spep_0 +18 + 1066, 1036, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 1066, SE039, 63 );

--気を爆発させる
SE040 = playSeVer2( spep_0 +18 + 1086, 1067, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 1086, SE040, 75 );
SE041 = playSeVer2( spep_0 +18 + 1090, 1258, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 +18 + 1090, SE041, 79 );


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
