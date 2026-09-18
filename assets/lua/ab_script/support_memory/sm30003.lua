--サポートメモリー　ブラのショッピング
--support_memory_30003

--エフェクト指定(演出によって書き換えてください)
SP_01 = 1300004;
SP_02 = 1300005;

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
f = 906; --終わりのf数を入れてください。

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
--走行音
SE001 = playSe( spep_0 + 180, 1322 );
setSeVolumeByWorkId( spep_0 + 180, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 181, SE001, 1.1 );
setSeVolumeByWorkId( spep_0 + 182, SE001, 2.2 );
setSeVolumeByWorkId( spep_0 + 183, SE001, 3.3 );
setSeVolumeByWorkId( spep_0 + 184, SE001, 4.4 );
setSeVolumeByWorkId( spep_0 + 185, SE001, 5.5 );
setSeVolumeByWorkId( spep_0 + 186, SE001, 6.6 );
setSeVolumeByWorkId( spep_0 + 187, SE001, 7.7 );
setSeVolumeByWorkId( spep_0 + 188, SE001, 8.8 );
setSeVolumeByWorkId( spep_0 + 189, SE001, 9.9 );
setSeVolumeByWorkId( spep_0 + 190, SE001, 11 );
setSeVolumeByWorkId( spep_0 + 191, SE001, 12.1 );
setSeVolumeByWorkId( spep_0 + 192, SE001, 13.2 );
setSeVolumeByWorkId( spep_0 + 193, SE001, 14.3 );
setSeVolumeByWorkId( spep_0 + 194, SE001, 15.4 );
setSeVolumeByWorkId( spep_0 + 195, SE001, 16.5 );
setSeVolumeByWorkId( spep_0 + 196, SE001, 17.6 );
setSeVolumeByWorkId( spep_0 + 197, SE001, 18.7 );
setSeVolumeByWorkId( spep_0 + 198, SE001, 19.8 );
setSeVolumeByWorkId( spep_0 + 199, SE001, 20.9 );
setSeVolumeByWorkId( spep_0 + 200, SE001, 22 );
setSeVolumeByWorkId( spep_0 + 201, SE001, 23.1 );
setSeVolumeByWorkId( spep_0 + 202, SE001, 24.2 );
setSeVolumeByWorkId( spep_0 + 203, SE001, 25.3 );
setSeVolumeByWorkId( spep_0 + 204, SE001, 26.4 );
setSeVolumeByWorkId( spep_0 + 205, SE001, 27.5 );
setSeVolumeByWorkId( spep_0 + 206, SE001, 28.6 );
setSeVolumeByWorkId( spep_0 + 207, SE001, 29.7 );
setSeVolumeByWorkId( spep_0 + 208, SE001, 30.8 );
setSeVolumeByWorkId( spep_0 + 209, SE001, 31.9 );
setSeVolumeByWorkId( spep_0 + 210, SE001, 33 );
setSeVolumeByWorkId( spep_0 + 211, SE001, 34.1 );
setSeVolumeByWorkId( spep_0 + 212, SE001, 35.2 );
setSeVolumeByWorkId( spep_0 + 213, SE001, 36.3 );
setSeVolumeByWorkId( spep_0 + 214, SE001, 37.4 );
setSeVolumeByWorkId( spep_0 + 215, SE001, 38.5 );
setSeVolumeByWorkId( spep_0 + 216, SE001, 39.6 );
setSeVolumeByWorkId( spep_0 + 217, SE001, 40.7 );
setSeVolumeByWorkId( spep_0 + 218, SE001, 41.8 );
setSeVolumeByWorkId( spep_0 + 219, SE001, 42.9 );
setSeVolumeByWorkId( spep_0 + 220, SE001, 44 );
setSeVolumeByWorkId( spep_0 + 221, SE001, 45.1 );
setSeVolumeByWorkId( spep_0 + 222, SE001, 46.2 );
setSeVolumeByWorkId( spep_0 + 223, SE001, 47.3 );
setSeVolumeByWorkId( spep_0 + 224, SE001, 48.4 );
setSeVolumeByWorkId( spep_0 + 225, SE001, 49.5 );
setSeVolumeByWorkId( spep_0 + 226, SE001, 50.6 );
setSeVolumeByWorkId( spep_0 + 227, SE001, 51.7 );
setSeVolumeByWorkId( spep_0 + 228, SE001, 52.8 );
setSeVolumeByWorkId( spep_0 + 229, SE001, 53.9 );
setSeVolumeByWorkId( spep_0 + 230, SE001, 56 );
stopSe( spep_0 + 858, SE001, 36 );

--ブラ下を向く
SE002 = playSe( spep_0 + 502, 38 );	
stopSe( spep_0 + 514, SE002, 8 );

--セリフカットイン
SE003 = playSe( spep_0 + 582, 1018 );
setSeVolumeByWorkId( spep_0 + 582, SE003, 75 );

--クリーム手に持つ
SE004 = playSe( spep_0 + 592, 37 );
SE005 = playSe( spep_0 + 602, 4 );

--眉毛ぴくぴく
SE006 = playSe( spep_0 + 738, 1113 );
setSeVolumeByWorkId( spep_0 + 738, SE006, 141 );
stopSe( spep_0 + 746, SE006, 0 );
setPitch( spep_0 + 738, SE006, -600 );
setTimeStretch( SE006, 0.6, 10, 1 );

--赤面
SE007 = playSe( spep_0 + 754, 1257 );
setSeVolumeByWorkId( spep_0 + 754, SE007, 141 );
setPitch( spep_0 + 754, SE007, -600 );
setTimeStretch( SE007, 0.6, 10, 1 );

--眉毛ぴくぴく
SE008 = playSe( spep_0 + 770, 1113 );
setSeVolumeByWorkId( spep_0 + 770, SE008, 141 );
stopSe( spep_0 + 778, SE008, 0 );
setPitch( spep_0 + 770, SE008, -600 );
setTimeStretch( SE008, 0.6, 10, 1 );

--ベジータそっぽむく
SE009 = playSe( spep_0 + 836, 1003 );
setSeVolumeByWorkId( spep_0 + 836, SE009, 80 );


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
