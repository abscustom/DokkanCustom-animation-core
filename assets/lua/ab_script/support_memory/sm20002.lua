--サポートメモリー　密かな想い

--エフェクト指定(演出によって書き換えてください)
SP_01 = 1200002;
SP_02 = 1200003;

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
f = 806; --終わりのf数を入れてください。

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
--SE
--飛行中
SE001 = playSe( spep_0 + 224, 1019 );
setSeVolumeByWorkId( spep_0 + 224, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 225, SE001, 2.7 );
setSeVolumeByWorkId( spep_0 + 226, SE001, 5.4 );
setSeVolumeByWorkId( spep_0 + 227, SE001, 8.1 );
setSeVolumeByWorkId( spep_0 + 228, SE001, 10.8 );
setSeVolumeByWorkId( spep_0 + 229, SE001, 13.5 );
setSeVolumeByWorkId( spep_0 + 230, SE001, 16.2 );
setSeVolumeByWorkId( spep_0 + 231, SE001, 18.9 );
setSeVolumeByWorkId( spep_0 + 232, SE001, 21.6 );
setSeVolumeByWorkId( spep_0 + 233, SE001, 24.3 );
setSeVolumeByWorkId( spep_0 + 234, SE001, 27 );
setSeVolumeByWorkId( spep_0 + 235, SE001, 29.7 );
setSeVolumeByWorkId( spep_0 + 236, SE001, 32.4 );
setSeVolumeByWorkId( spep_0 + 237, SE001, 35.1 );
setSeVolumeByWorkId( spep_0 + 238, SE001, 37.8 );
setSeVolumeByWorkId( spep_0 + 239, SE001, 40.5 );
setSeVolumeByWorkId( spep_0 + 240, SE001, 43.2 );
setSeVolumeByWorkId( spep_0 + 241, SE001, 45.9 );
setSeVolumeByWorkId( spep_0 + 242, SE001, 48.6 );
setSeVolumeByWorkId( spep_0 + 243, SE001, 51.3 );
setSeVolumeByWorkId( spep_0 + 244, SE001, 54 );
setSeVolumeByWorkId( spep_0 + 245, SE001, 56.7 );
setSeVolumeByWorkId( spep_0 + 246, SE001, 59.4 );
setSeVolumeByWorkId( spep_0 + 247, SE001, 62.1 );
setSeVolumeByWorkId( spep_0 + 248, SE001, 64.8 );
setSeVolumeByWorkId( spep_0 + 249, SE001, 67.5 );
setSeVolumeByWorkId( spep_0 + 250, SE001, 70.2 );
setSeVolumeByWorkId( spep_0 + 251, SE001, 72.9 );
setSeVolumeByWorkId( spep_0 + 252, SE001, 75.6 );
setSeVolumeByWorkId( spep_0 + 253, SE001, 78.3 );
setSeVolumeByWorkId( spep_0 + 254, SE001, 81 );
setSeVolumeByWorkId( spep_0 + 255, SE001, 83.7 );
setSeVolumeByWorkId( spep_0 + 256, SE001, 85 );
setStartTimeMs( SE001,  400 );
stopSe( spep_0 + 414, SE001, 38 );
SE002 = playSe( spep_0 + 264, 1019 );
setSeVolumeByWorkId( spep_0 + 264, SE002, 85 );
SE003 = playSe( spep_0 + 328, 1019 );
setSeVolumeByWorkId( spep_0 + 328, SE003, 85 );

--悟飯の方向く
SE004 = playSe( spep_0 + 342, 1003 );
setBandpassFilter( spep_0 + 342, SE004, 600, 24000 );

--飛行中
SE005 = playSe( spep_0 + 392, 1019 );
setSeVolumeByWorkId( spep_0 + 392, SE005, 85 );
stopSe( spep_0 + 414, SE005, 38 );

--悟飯たち飛んでいく
SE006 = playSe( spep_0 + 426, 1025 );
setSeVolumeByWorkId( spep_0 + 426, SE006, 0 );
setSeVolumeByWorkId( spep_0 + 427, SE006, 12.5 );
setSeVolumeByWorkId( spep_0 + 428, SE006, 25 );
setSeVolumeByWorkId( spep_0 + 429, SE006, 37.5 );
setSeVolumeByWorkId( spep_0 + 430, SE006, 50 );
setSeVolumeByWorkId( spep_0 + 431, SE006, 62.5 );
setSeVolumeByWorkId( spep_0 + 432, SE006, 75 );
setSeVolumeByWorkId( spep_0 + 433, SE006, 87.5 );
setSeVolumeByWorkId( spep_0 + 434, SE006, 100 );
SE007 = playSe( spep_0 + 432, 44 );
setSeVolumeByWorkId( spep_0 + 432, SE007, 72 );

--手を振る
SE008 = playSe( spep_0 + 484, 4 );
setSeVolumeByWorkId( spep_0 + 484, SE008, 74 );
setPitch( spep_0 + 484, SE008, -400 );
setTimeStretch( SE008, 0.73, 10, 1 );
SE009 = playSe( spep_0 + 508, 4 );
setSeVolumeByWorkId( spep_0 + 508, SE009, 77 );
setPitch( spep_0 + 508, SE009, -400 );
setTimeStretch( SE009, 0.73, 10, 1 );

--セリフカットイン
SE010 = playSe( spep_0 + 534, 1018 );

--カメラズーム
SE011 = playSe( spep_0 + 634, 1072 );
setPitch( spep_0 + 634, SE011, 200 );
setTimeStretch( SE011, 1.13, 10, 1 );



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
