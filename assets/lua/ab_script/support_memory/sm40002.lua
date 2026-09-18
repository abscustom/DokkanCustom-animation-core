--サポートメモリー　師弟の目指す先

--エフェクト指定(演出によって書き換えてください)
SP_01 = 1400002;
SP_02 = 1400003;

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
f = 760; --終わりのf数を入れてください。

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
a = 10;
--環境音
SE001 = playSe( spep_0 + 228 +a, 1269 );
setSeVolumeByWorkId( spep_0 + 228 +a, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 230 +a, SE001, 0.74 );
setSeVolumeByWorkId( spep_0 + 232 +a, SE001, 1.48 );
setSeVolumeByWorkId( spep_0 + 234 +a, SE001, 2.22 );
setSeVolumeByWorkId( spep_0 + 236 +a, SE001, 2.96 );
setSeVolumeByWorkId( spep_0 + 238 +a, SE001, 3.7 );
setSeVolumeByWorkId( spep_0 + 240 +a, SE001, 4.44 );
setSeVolumeByWorkId( spep_0 + 242 +a, SE001, 5.18 );
setSeVolumeByWorkId( spep_0 + 244 +a, SE001, 5.92 );
setSeVolumeByWorkId( spep_0 + 246 +a, SE001, 6.66 );
setSeVolumeByWorkId( spep_0 + 248 +a, SE001, 7.4 );
setSeVolumeByWorkId( spep_0 + 250 +a, SE001, 8.14 );
setSeVolumeByWorkId( spep_0 + 252 +a, SE001, 8.88 );
setSeVolumeByWorkId( spep_0 + 254 +a, SE001, 9.62 );
setSeVolumeByWorkId( spep_0 + 256 +a, SE001, 10.36 );
setSeVolumeByWorkId( spep_0 + 258 +a, SE001, 11.1 );
setSeVolumeByWorkId( spep_0 + 260 +a, SE001, 11.84 );
setSeVolumeByWorkId( spep_0 + 262 +a, SE001, 12.58 );
setSeVolumeByWorkId( spep_0 + 264 +a, SE001, 13.32 );
setSeVolumeByWorkId( spep_0 + 266 +a, SE001, 14.06 );
setSeVolumeByWorkId( spep_0 + 268 +a, SE001, 14.8 );
setSeVolumeByWorkId( spep_0 + 270 +a, SE001, 15.54 );
setSeVolumeByWorkId( spep_0 + 272 +a, SE001, 16.28 );
setSeVolumeByWorkId( spep_0 + 274 +a, SE001, 17.02 );
setSeVolumeByWorkId( spep_0 + 276 +a, SE001, 17.76 );
setSeVolumeByWorkId( spep_0 + 278 +a, SE001, 18.5 );
setSeVolumeByWorkId( spep_0 + 280 +a, SE001, 19.24 );
setSeVolumeByWorkId( spep_0 + 282 +a, SE001, 19.98 );
setSeVolumeByWorkId( spep_0 + 284 +a, SE001, 20.72 );
setSeVolumeByWorkId( spep_0 + 286 +a, SE001, 21.46 );
setSeVolumeByWorkId( spep_0 + 288 +a, SE001, 22 );
stopSe( spep_0 + 724 +a, SE001, 42 );

--ピッコロセリフカットイン
SE002 = playSe( spep_0 + 312 +a, 1018 );
setSeVolumeByWorkId( spep_0 + 312 +a, SE002, 50 );

--ピッコロ手を出す
SE003 = playSe( spep_0 + 503 +a, 1003 );
setSeVolumeByWorkId( spep_0 + 503 +a, SE003, 32 );
setBandpassFilter( spep_0 + 503 +a, SE003, 500, 24000 );

--握手
SE004 = playSe( spep_0 + 656 +a, 1111 );
setSeVolumeByWorkId( spep_0 + 656 +a, SE004, 158 );
stopSe( spep_0 + 666 +a, SE004, 6 );
setPitch( spep_0 + 656 +a, SE004, 400 );
setTimeStretch( SE004, 1.27, 10, 1 );
setBandpassFilter( spep_0 + 656 +a, SE004, 1500, 24000 );

SE005 = playSe( spep_0 + 659 +a, 1108 );
setSeVolumeByWorkId( spep_0 + 659 +a, SE005, 79 );

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
