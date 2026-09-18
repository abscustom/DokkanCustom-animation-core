--サポートメモリー　初めてのてんぷら

--エフェクト指定(演出によって書き換えてください)
SP_01 = 1400000;  
SP_02 = 1400001;  

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
f = 630; --終わりのf数を入れてください。

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
--天ぷら登場
SE001 = playSe( spep_0+10 + 210, 1288 );
setSeVolumeByWorkId( spep_0+10 + 210, SE001, 0 );
setSeVolumeByWorkId( spep_0+10 + 211, SE001, 3.7 );
setSeVolumeByWorkId( spep_0+10 + 212, SE001, 7.4 );
setSeVolumeByWorkId( spep_0+10 + 213, SE001, 11.1 );
setSeVolumeByWorkId( spep_0+10 + 214, SE001, 14.8 );
setSeVolumeByWorkId( spep_0+10 + 215, SE001, 18.5 );
setSeVolumeByWorkId( spep_0+10 + 216, SE001, 22.2 );
setSeVolumeByWorkId( spep_0+10 + 217, SE001, 25.9 );
setSeVolumeByWorkId( spep_0+10 + 218, SE001, 29.6 );
setSeVolumeByWorkId( spep_0+10 + 219, SE001, 33.3 );
setSeVolumeByWorkId( spep_0+10 + 220, SE001, 37 );
setSeVolumeByWorkId( spep_0+10 + 221, SE001, 40.7 );
setSeVolumeByWorkId( spep_0+10 + 222, SE001, 44.4 );
setSeVolumeByWorkId( spep_0+10 + 223, SE001, 48.1 );
setSeVolumeByWorkId( spep_0+10 + 224, SE001, 51.8 );
setSeVolumeByWorkId( spep_0+10 + 225, SE001, 55.5 );
setSeVolumeByWorkId( spep_0+10 + 226, SE001, 59.2 );
setSeVolumeByWorkId( spep_0+10 + 227, SE001, 62.9 );
setSeVolumeByWorkId( spep_0+10 + 228, SE001, 66.6 );
setSeVolumeByWorkId( spep_0+10 + 229, SE001, 70.3 );
setSeVolumeByWorkId( spep_0+10 + 230, SE001, 74 );
setSeVolumeByWorkId( spep_0+10 + 231, SE001, 77.7 );
setSeVolumeByWorkId( spep_0+10 + 232, SE001, 81.4 );
setSeVolumeByWorkId( spep_0+10 + 233, SE001, 85.1 );
setSeVolumeByWorkId( spep_0+10 + 234, SE001, 88.8 );
setSeVolumeByWorkId( spep_0+10 + 235, SE001, 92.5 );
setSeVolumeByWorkId( spep_0+10 + 236, SE001, 96.2 );
setSeVolumeByWorkId( spep_0+10 + 237, SE001, 99.9 );
setSeVolumeByWorkId( spep_0+10 + 238, SE001, 103.6 );
setSeVolumeByWorkId( spep_0+10 + 239, SE001, 107.3 );
setSeVolumeByWorkId( spep_0+10 + 240, SE001, 111 );
setSeVolumeByWorkId( spep_0+10 + 241, SE001, 114.7 );
setSeVolumeByWorkId( spep_0+10 + 242, SE001, 118.4 );
setSeVolumeByWorkId( spep_0+10 + 243, SE001, 122.1 );
setSeVolumeByWorkId( spep_0+10 + 244, SE001, 126 );
setStartTimeMs( SE001,  1917 );
stopSe( spep_0 + 294, SE001, 70 );

--天ぷらたべる
SE002 = playSe( spep_0+26 + 324, 1071 );
setSeVolumeByWorkId( spep_0+26 + 324, SE002, 140 );
SE003 = playSe( spep_0+26 + 326, 1108 );
setSeVolumeByWorkId( spep_0+26 + 326, SE003, 150 );
setPitch( spep_0+26 + 326, SE003, 700 );
setTimeStretch( SE003, 1.47, 10, 1 );
SE004 = playSe( spep_0+26 + 326, 1111 );
setSeVolumeByWorkId( spep_0+26 + 326, SE004, 135 );
setPitch( spep_0+26 + 326, SE004, 600 );
setTimeStretch( SE004, 1.4, 10, 1 );
setBandpassFilter	( spep_0+26 + 326, SE004, 200, 24000 );
stopSe( spep_0+26 + 360, SE004, 40 );

--うっ
SE005 = playSe( spep_0+20 + 430, 31 );
setSeVolumeByWorkId( spep_0+20 + 430, SE005, 70 );
setPitch( spep_0+20 + 430, SE005, 400 );
setTimeStretch( SE005, 1.27, 10, 1 );
stopSe( spep_0+20 + 438, SE005, 12 );
SE006 = playSe( spep_0+20 + 430, 1112 );
setSeVolumeByWorkId( spep_0+20 + 430, SE006, 49 );
setPitch( spep_0+20 + 430, SE006, 400 );
setTimeStretch( SE006, 1.27, 10, 1 );
stopSe( spep_0+20 + 450, SE006, 24 );

--うまい〜	
SE007 = playSe( spep_0+20 + 476, 1115 );
setPitch( spep_0+20 + 476, SE007, 600 );
setTimeStretch( SE007, 1.4, 10, 1 );

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
