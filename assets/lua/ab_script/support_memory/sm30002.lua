--サポートメモリー　パラパラブラザーズ登場！
--support_memory_30002

--エフェクト指定(演出によって書き換えてください)
SP_01 = 1300002;
SP_02 = 1300003;

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
f = 696; --終わりのf数を入れてください。

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
--セリフカットイン
SE001 = playSe( spep_0 + 246, 1018 );

--キック
SE002 = playSe( spep_0+6 + 390, 20 );
setSeVolumeByWorkId( spep_0+6 + 390, SE002, 79 );
stopSe( spep_0+6 + 406, SE002, 4 );
setPitch( spep_0+6 + 390, SE002, -200 );
setTimeStretch( SE002, 0.87, 10, 1 );
setBandpassFilter( spep_0+6 + 390, SE002, 24, 2000 );
SE003 = playSe( spep_0+6 + 390, 1182 );
stopSe( spep_0+6 + 400, SE003, 4 );
SE004 = playSe( spep_0+6 + 420, 20 );
setSeVolumeByWorkId( spep_0+6 + 420, SE004, 79 );
stopSe( spep_0+6 + 436, SE004, 4 );
setPitch( spep_0+6 + 420, SE004, -200 );
setTimeStretch( SE004, 0.87, 10, 1 );
setBandpassFilter( spep_0+6 + 420, SE004, 24, 2000 );
SE005 = playSe( spep_0+6 + 454, 20 );
setSeVolumeByWorkId( spep_0+6 + 454, SE005, 79 );
stopSe( spep_0+6 + 470, SE005, 4 );
setPitch( spep_0+6 + 454, SE005, -200 );
setTimeStretch( SE005, 0.87, 10, 1 );
setBandpassFilter( spep_0+6 + 454, SE005, 24, 2000 );
SE006 = playSe( spep_0+6 + 484, 20 );
setSeVolumeByWorkId( spep_0+6 + 484, SE006, 79 );
stopSe( spep_0+6 + 500, SE006, 4 );
setPitch( spep_0+6 + 484, SE006, -200 );
setTimeStretch( SE006, 0.87, 10, 1 );
setBandpassFilter( spep_0+6 + 484, SE006, 24, 2000 );
SE007 = playSe( spep_0+6 + 518, 20 );
setSeVolumeByWorkId( spep_0+6 + 518, SE007, 79 );
stopSe( spep_0+6 + 534, SE007, 4 );
setPitch( spep_0+6 + 518, SE007, -200 );
setTimeStretch( SE007, 0.87, 10, 1 );
setBandpassFilter( spep_0+6 + 518, SE007, 24, 2000 );
SE008 = playSe( spep_0+6 + 548, 20 );
setSeVolumeByWorkId( spep_0+6 + 548, SE008, 79 );
stopSe( spep_0+6 + 564, SE008, 4 );
setPitch( spep_0+6 + 548, SE008, -200 );
setTimeStretch( SE008, 0.87, 10, 1 );
setBandpassFilter( spep_0+6 + 548, SE008, 24, 2000 );
SE009 = playSe( spep_0+6 + 580, 20 );
setSeVolumeByWorkId( spep_0+6 + 580, SE009, 79 );
stopSe( spep_0+6 + 596, SE009, 4);
setPitch( spep_0+6 + 580, SE009, -200 );
setTimeStretch( SE009, 0.87, 10, 1 );
setBandpassFilter( spep_0+6 + 580, SE009, 24, 2000 );
SE010 = playSe( spep_0+6 + 612, 20 );
setSeVolumeByWorkId( spep_0+6 + 612, SE010, 79 );
stopSe( spep_0+6 + 630, SE010, 4 );
setPitch( spep_0+6 + 614, SE010, -200 );
setTimeStretch( SE010, 0.87, 10, 1 );
setBandpassFilter( spep_0+6 + 612, SE010, 24, 2000 );
SE010_02 = playSe( spep_0+6 + 612, 13 );


--スネア
SE011 = playSe( spep_0+6 + 420, 1110 );
setSeVolumeByWorkId( spep_0+6 + 420, SE011, 79 );
stopSe( spep_0+6 + 434, SE011, 12 );
setPitch( spep_0+6 + 420, SE011, -200 );
setTimeStretch( SE011, 0.87, 10, 1 );
setBandpassFilter( spep_0+6 + 420, SE011, 300, 24000 );
SE012 = playSe( spep_0+6 + 484, 1110 );
setSeVolumeByWorkId( spep_0+6 + 484, SE012, 79 );
stopSe( spep_0+6 + 500, SE012, 12 );
setBandpassFilter( spep_0+6 + 486, SE012, 300, 24000 );
SE013 = playSe( spep_0+6 + 550, 1110 );
setSeVolumeByWorkId( spep_0+6 + 550, SE013, 79 );
stopSe( spep_0+6 + 564, SE013, 12 );
setPitch( spep_0+6 + 550, SE013, -200 );
setTimeStretch( SE013, 0.87, 10, 1 );
setBandpassFilter( spep_0+6 + 550, SE013, 300, 24000 );
SE014 = playSe( spep_0+6 + 610, 1110 );
setSeVolumeByWorkId( spep_0+6 + 610, SE014, 79 );
stopSe( spep_0+6 + 628, SE014, 12 );
setBandpassFilter( spep_0+6 + 614, SE014, 300, 24000 );

--サブキック
SE015 = playSe( spep_0+6 + 466, 20 );
setSeVolumeByWorkId( spep_0+6 + 466, SE015, 74 );
stopSe( spep_0+6 + 486, SE015, 4 );
SE016 = playSe( spep_0+6 + 592, 20 );
setSeVolumeByWorkId( spep_0+6 + 592, SE016, 74 );
stopSe( spep_0+6 + 614, SE016, 4 );


--FX
SE017 = playSe( spep_0+6 + 390, 1267 );
setSeVolumeByWorkId( spep_0+6 + 390, SE017, 82 );
stopSe( spep_0+6 + 614, SE017, 4 );



--ハット
--SE018 = playSe( spep_0+6 + 402, 29 );
setSeVolumeByWorkId( spep_0+6 + 402, SE018, 126 );
SE019 = playSe( spep_0+6 + 410, 29 );

--SE020 = playSe( spep_0+6 + 468, 29 );
--SE021 = playSe( spep_0+6 + 476, 29 );

--SE022 = playSe( spep_0+6 + 532, 29 );
SE023 = playSe( spep_0+6 + 540, 29 );

--SE024 = playSe( spep_0+6 + 594, 29 );
--SE025 = playSe( spep_0+6 + 602, 29 );
setSeVolumeByWorkId( spep_0+6 + 602, SE025, 158 );



--タム
SE026 = playSe( spep_0+6 + 400, 1059 );
setSeVolumeByWorkId( spep_0+6 + 400, SE026, 63 );
stopSe( spep_0+6 + 408, SE026, 2 );
setPitch( spep_0+6 + 400, SE026, -400 );
setTimeStretch( SE026, 0.73, 10, 1 );
SE027 = playSe( spep_0+6 + 408, 1059 );
setSeVolumeByWorkId( spep_0+6 + 408, SE027, 50 );
stopSe( spep_0+6 + 416, SE027, 2 );
setPitch( spep_0+6 + 408, SE027, -400 );
setTimeStretch( SE027, 0.73, 10, 1 );

--SE028 = playSe( spep_0+6 + 432, 1059 );
setSeVolumeByWorkId( spep_0+6 + 432, SE028, 63 );
stopSe( spep_0+6 + 440, SE028, 0 );
setPitch( spep_0+6 + 432, SE028, -400 );
setTimeStretch( SE028, 0.73, 10, 1 );
SE029 = playSe( spep_0+6 + 438, 1059 );
setSeVolumeByWorkId( spep_0+6 + 438, SE029, 50 );
stopSe( spep_0+6 + 446, SE029, 2 );
setPitch( spep_0+6 + 438, SE029, -400 );
setTimeStretch( SE029, 0.73, 10, 1 );

--SE030 = playSe( spep_0+6 + 462, 1059 );
setSeVolumeByWorkId( spep_0+6 + 462, SE030, 63 );
stopSe( spep_0+6 + 478, SE030, 0 );
setPitch( spep_0+6 + 462, SE030, -400 );
setTimeStretch( SE030, 0.73, 10, 1 );
--SE031 = playSe( spep_0+6 + 472, 1059 );
setSeVolumeByWorkId( spep_0+6 + 472, SE031, 50 );
stopSe( spep_0+6 + 480, SE031, 2 );
setPitch( spep_0+6 + 472, SE031, -400 );
setTimeStretch( SE031, 0.73, 10, 1 );

--SE032 = playSe( spep_0+6 + 496, 1059 );
setSeVolumeByWorkId( spep_0+6 + 496, SE032, 63 );
stopSe( spep_0+6 + 504, SE032, 0 );
setPitch( spep_0+6 + 496, SE032, -400 );
setTimeStretch( SE032, 0.73, 10, 1 );
SE033 = playSe( spep_0+6 + 498, 1059 );
setSeVolumeByWorkId( spep_0+6 + 498, SE033, 50 );
stopSe( spep_0+6 + 506, SE033, 2);
setPitch( spep_0+6 + 498, SE033, -400 );
setTimeStretch( SE033, 0.73, 10, 1 );

SE034 = playSe( spep_0+6 + 528, 1059 );
setSeVolumeByWorkId( spep_0+6 + 528, SE034, 63 );
stopSe( spep_0+6 + 536, SE034, 0 );
setPitch( spep_0+6 + 528, SE034, -400 );
setTimeStretch( SE034, 0.73, 10, 1 );
SE035 = playSe( spep_0+6 + 536, 1059 );
setSeVolumeByWorkId( spep_0+6 + 536, SE035, 50 );
stopSe( spep_0+6 + 544, SE035, 2 );
setPitch( spep_0+6 + 536, SE035, -400 );
setTimeStretch( SE035, 0.73, 10, 1 );

SE036 = playSe( spep_0+6 + 562, 1059 );
setSeVolumeByWorkId( spep_0+6 + 562, SE036, 63 );
stopSe( spep_0+6 + 570, SE036, 0 );
setPitch( spep_0+6 + 562, SE036, -400 );
setTimeStretch( SE036, 0.73, 10, 1 );
SE037 = playSe( spep_0+6 + 568, 1059 );
setSeVolumeByWorkId( spep_0+6 + 568, SE037, 50 );
stopSe( spep_0+6 + 576, SE037, 2 );
setPitch( spep_0+6 + 568, SE037, -400 );
setTimeStretch( SE037, 0.73, 10, 1 );



--FX2
SE038 = playSe( spep_0+6 + 390, 1201 );
setSeVolumeByWorkId( spep_0+6 + 390, SE038, 79 );
SE039 = playSe( spep_0+6 + 454, 1201 );
setSeVolumeByWorkId( spep_0+6 + 454, SE039, 79 );
SE040 = playSe( spep_0+6 + 518, 1201 );
setSeVolumeByWorkId( spep_0+6 + 518, SE040, 79 );
SE041 = playSe( spep_0+6 + 580, 1201 );
setSeVolumeByWorkId( spep_0+6 + 580, SE041, 79 );


--パーカス
SE042 = playSe( spep_0+6 + 390, 1048 );
setSeVolumeByWorkId( spep_0+6 + 390, SE042, 66 );
stopSe( spep_0+6 + 398, SE042, 0 );
SE043 = playSe( spep_0+6 + 402, 1048 );
setSeVolumeByWorkId( spep_0+6 + 402, SE043, 50 );
stopSe( spep_0+6 + 410, SE043, 0 );
SE044 = playSe( spep_0+6 + 410, 1048 );
setSeVolumeByWorkId( spep_0+6 + 410, SE044, 65 );
stopSe( spep_0+6 + 418, SE044, 0 );

SE045 = playSe( spep_0+6 + 434, 1048 );
setSeVolumeByWorkId( spep_0+6 + 434, SE045, 50 );
stopSe( spep_0+6 + 442, SE045, 0 );
SE046 = playSe( spep_0+6 + 442, 1048 );
setSeVolumeByWorkId( spep_0+6 + 442, SE046, 65 );
stopSe( spep_0+6 + 450, SE046, 0 );

SE047 = playSe( spep_0+6 + 452, 1048 );
setSeVolumeByWorkId( spep_0+6 + 452, SE047, 66 );
stopSe( spep_0+6 + 460, SE047, 0 );
SE048 = playSe( spep_0+6 + 466, 1048 );
setSeVolumeByWorkId( spep_0+6 + 466, SE048, 50 );
stopSe( spep_0+6 + 474, SE048, 0 );
SE049 = playSe( spep_0+6 + 474, 1048 );
setSeVolumeByWorkId( spep_0+6 + 474, SE049, 65 );
stopSe( spep_0+6 + 482, SE049, 0 );

SE050 = playSe( spep_0+6 + 500, 1048 );
setSeVolumeByWorkId( spep_0+6 + 500, SE050, 50 );
stopSe( spep_0+6 + 508, SE050, 0 );
SE051 = playSe( spep_0+6 + 508, 1048 );
setSeVolumeByWorkId( spep_0+6 + 508, SE051, 65 );
stopSe( spep_0+6 + 516, SE051, 0 );

SE052 = playSe( spep_0+6 + 518, 1048 );
setSeVolumeByWorkId( spep_0+6 + 518, SE052, 66 );
stopSe( spep_0+6 + 526, SE052, 0 );
SE053 = playSe( spep_0+6 + 532, 1048 );
setSeVolumeByWorkId( spep_0+6 + 532, SE053, 50 );
stopSe( spep_0+6 + 540, SE053, 0 );
SE054 = playSe( spep_0+6 + 540, 1048 );
setSeVolumeByWorkId( spep_0+6 + 540, SE054, 65 );
stopSe( spep_0+6 + 548, SE054, 0 );

SE055 = playSe( spep_0+6 + 562, 1048 );
setSeVolumeByWorkId( spep_0+6 + 562, SE055, 50 );
stopSe( spep_0+6 + 570, SE055, 0 );
SE056 = playSe( spep_0+6 + 570, 1048 );
setSeVolumeByWorkId( spep_0+6 + 570, SE056, 65 );
stopSe( spep_0+6 + 578, SE056, 0 );

SE057 = playSe( spep_0+6 + 584, 1048 );
setSeVolumeByWorkId( spep_0+6 + 584, SE057, 66 );
stopSe( spep_0+6 + 592, SE057, 0 );
SE058 = playSe( spep_0+6 + 596, 1048 );
setSeVolumeByWorkId( spep_0+6 + 596, SE058, 50 );
stopSe( spep_0+6 + 604, SE058, 0 );
SE059 = playSe( spep_0+6 + 604, 1048 );
setSeVolumeByWorkId( spep_0+6 + 604, SE059, 65 );
stopSe( spep_0+6 + 612, SE059, 0 );


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
