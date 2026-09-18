--サポ－トメモリー_悟飯の心
--support_memory_50009

--エフェクト指定(演出によって書き換えてください)
SP_01 = 1500016;
SP_02 = 1500017;

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
-- サポートメモリー演出(990F)
------------------------------------------------------
spep_0 = 0;

--演出によって書き換えてください。
f = 1052; --終わりのf数を入れてください。

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
--悟飯叫ぶ
SE001 = playSeVer2( spep_0 + 214, 1066, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE001, 74 );

--ハイヤードラゴン駆け寄る
SE002 = playSeVer2( spep_0 + 246, 63, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 246, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 256, 1116, "",spep_0 + 292, 0, 16, -1);
SE005 = playSeVer2( spep_0 + 282, 1116, "",spep_0 + 316, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 282, SE005, 68 );
SE006 = playSeVer2( spep_0 + 304, 1116, "",spep_0 + 340, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 304, SE006, 56 );
SE007 = playSeVer2( spep_0 + 322, 1116, "",spep_0 + 356, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 322, SE007, 42 );

--羽ばたく
SE008 = playSeVer2( spep_0 + 396, 1116, "",spep_0 + 428, 0, 16, -1);
setPitch( spep_0 + 396, SE008, 300 );
setTimeStretch( SE008, 1.2, 30, 4 );
setBandpassFilter( spep_0 + 396, SE008, 690, 24000 );
SE010 = playSeVer2( spep_0 + 422, 1116, "",spep_0 + 464, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 422, SE010, 93 );
setPitch( spep_0 + 422, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );
setBandpassFilter( spep_0 + 422, SE010, 690, 24000 );
SE013 = playSeVer2( spep_0 + 448, 1116, "",spep_0 + 482, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 448, SE013, 58 );
setPitch( spep_0 + 448, SE013, 300 );
setTimeStretch( SE013, 1.2, 30, 4 );
setBandpassFilter( spep_0 + 448, SE013, 690, 24000 );
SE015 = playSeVer2( spep_0 + 474, 1116, "",spep_0 + 516, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 474, SE015, 64 );
setPitch( spep_0 + 474, SE015, 200 );
setTimeStretch( SE015, 1.13, 30, 4 );
setBandpassFilter( spep_0 + 474, SE015, 690, 24000 );
SE017 = playSeVer2( spep_0 + 508, 1116, "",spep_0 + 552, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 508, SE017, 37 );
setBandpassFilter( spep_0 + 508, SE017, 690, 24000 );

--悟飯の声
SE009 = playSeVer2( spep_0 + 610, 1125, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE009, 76 );
setStartTimeMs( SE009,  3033 );
SE020 = playSeVer2( spep_0 + 870, 1125, "", 0, 22, 0, -1);
setStartTimeMs( SE020,  3033 );
setPitch( spep_0 + 870, SE020, 500 );
setTimeStretch( SE020, 1.33, 30, 4 );

--ハイヤードラゴン鳴く
SE011 = playSeVer2( spep_0 + 436, 1048, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 438, 38, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE012, 138 );
SE014 = playSeVer2( spep_0 + 488, 1048, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 490, 38, "", 0, 0, 0, -1);

--顔アップ
SE018 = playSeVer2( spep_0 + 596, 1232, "", 0, 0, 0, -1);

--手で受け取る
SE019 = playSeVer2( spep_0 + 650, 1004, "", 0, 0, 0, -1);

--寝転がる
SE021 = playSeVer2( spep_0 + 722, 1011, "",spep_0 + 786, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 722, SE021, 65 );


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
