--サポートメモリー　シッポを引き出せ！

--エフェクト指定(演出によって書き換えてください)
SP_01 = 1300000;
SP_02 = 1300001;

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
f = 778; --終わりのf数を入れてください。

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

--地面ガリガリ
SE001 = playSe( spep_0 + 268, 1192 );
setSeVolumeByWorkId( spep_0 + 268, SE001, 64 );

--地面ガリガリ
SE002 = playSe( spep_0 + 270, 1044 );
setSeVolumeByWorkId( spep_0 + 270, SE002, 34 );
stopSe( spep_0 + 304, SE002, 16 );

--尻尾引っ張る１
SE003 = playSe( spep_0 + 354, 1294 );
setSeVolumeByWorkId( spep_0 + 354, SE003, 81 );
setStartTimeMs( SE003,  267 );

--尻尾引っ張る１
SE004 = playSe( spep_0 + 354, 1293 );
setPitch( spep_0 + 354, SE004, 900 );
setTimeStretch( SE004, 1.6, 10, 1 );

--尻尾引っ張る１
SE005 = playSe( spep_0 + 354, 1246 );
setSeVolumeByWorkId( spep_0 + 354, SE005, 73 );
stopSe( spep_0 + 364, SE005, 4 );

--尻尾引っ張る２
SE006 = playSe( spep_0 + 388, 1293 );
setPitch( spep_0 + 388, SE006, 900 );
setTimeStretch( SE006, 1.6, 10, 1 );

--尻尾引っ張る２
SE007 = playSe( spep_0 + 388, 1294 );
setSeVolumeByWorkId( spep_0 + 388, SE007, 75 );

--尻尾引っ張る２
SE008 = playSe( spep_0 + 388, 1246 );
setSeVolumeByWorkId( spep_0 + 388, SE008, 81 );
stopSe( spep_0 + 398, SE008, 4 );

--悟空耐える
SE009 = playSe( spep_0 + 394, 1250 );
setSeVolumeByWorkId( spep_0 + 394, SE009, 72 );
setPitch( spep_0 + 394, SE009, 600 );
setTimeStretch( SE009, 1.4, 10, 1 );

--悟空耐える
SE010 = playSe( spep_0 + 564, 1250 );
setSeVolumeByWorkId( spep_0 + 564, SE010, 61 );
setPitch( spep_0 + 564, SE010, 600 );
setTimeStretch( SE010, 1.4, 10, 1 );

--尻尾引っ張る３
SE011 = playSe( spep_0 + 624, 1293 );
setSeVolumeByWorkId( spep_0 + 624, SE011, 56 );
setPitch( spep_0 + 624, SE011, 900 );
setTimeStretch( SE011, 1.6, 10, 1 );

--尻尾引っ張る３
SE012 = playSe( spep_0 + 624, 1294 );
setSeVolumeByWorkId( spep_0 + 624, SE012, 54 );

--尻尾引っ張る３
SE013 = playSe( spep_0 + 624, 1246 );
setSeVolumeByWorkId( spep_0 + 624, SE013, 47 );
stopSe( spep_0 + 634, SE013, 2 );

--尻尾引っ張る４
SE014 = playSe( spep_0 + 686, 1152 );
setSeVolumeByWorkId( spep_0 + 686, SE014, 6 );
setSeVolumeByWorkId( spep_0 + 687, SE014, 12 );
setSeVolumeByWorkId( spep_0 + 688, SE014, 18 );
setSeVolumeByWorkId( spep_0 + 698, SE014, 24 );
setSeVolumeByWorkId( spep_0 + 690, SE014, 29 );
setStartTimeMs( SE014,  333 );

--尻尾引っ張る４
SE015 = playSe( spep_0 + 690, 1293 );
setSeVolumeByWorkId( spep_0 + 690, SE015, 79 );
setPitch( spep_0 + 690, SE015, 900 );
setTimeStretch( SE015, 1.6, 10, 1 );
setBandpassFilter	( spep_0 + 690, SE015, 0, 24000 );

--尻尾引っ張る４
SE016 = playSe( spep_0 + 690, 1294 );
setSeVolumeByWorkId( spep_0 + 690, SE016, 78 );
setBandpassFilter	( spep_0 + 690, SE016, 0, 24000 );

--尻尾引っ張る４
SE017 = playSe( spep_0 + 690, 1246 );
setSeVolumeByWorkId( spep_0 + 690, SE017, 67 );
stopSe( spep_0 + 700, SE017, 4 );
setPitch( spep_0 + 690, SE017, 900 );
setTimeStretch( SE017, 1.6, 10, 1 );

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
