--1029390:UR_ブロリー_必殺技：ギガンティッククラスター
--sp_effect_b4_00342
--sp2752

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方/敵)
SP_01  = 163067;  --ef_001 開幕〜超サイヤ人になった
SP_02  = 163068;  --ef_002 気弾を構える〜気弾が敵に迫りヒットする
SP_02b = 163069;  --ef_002b 気弾を構える〜気弾が敵に迫りヒットする
SP_03  = 163070;  --ef_003 「が・・・」フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜超サイヤ人になった
-------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜超サイヤ人になった(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--地響き音
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 132, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 136, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 51 );

--気ダメ
SE004 = playSeVer2( spep_0 + 16, 1258, "",spep_0 + 130, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 79 );
SE006 = playSeVer2( spep_0 + 40, 1035, "",spep_0 + 142, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 150 );
SE007 = playSeVer2( spep_0 + 40, 1068, "",spep_0 + 142, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 66 );
SE008 = playSeVer2( spep_0 + 40, 1356, "",spep_0 + 144, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 40, SE008, 63 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 108f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--環境音
SE005 = playSeVer2( spep_1 + 72, 1175, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE005, 28 );
setStartTimeMs( SE005,  2500 );

--気弾溜め
SE010 = playSeVer2( spep_1 + 68, 1442, "",spep_1 + 134, 6, 14, -1);
setSeVolumeByWorkId( spep_1 + 68, SE010, 224 );
setStartTimeMs( SE010,  833 );
SE011 = playSeVer2( spep_1 + 72, 1394, "",spep_1 + 132, 6, 12, -1);
setStartTimeMs( SE011,  367 );
SE012 = playSeVer2( spep_1 + 76, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 76, SE012, 130 );	
SE013 = playSeVer2( spep_1 + 78, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE013, 65 );

-------------------------------------------------
-- 気弾を構える〜気弾が敵に迫りヒットする
-------------------------------------------------
MAX_FRAME_2 = 152;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾を構える〜気弾が敵に迫りヒットする(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 0);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾を構える〜気弾が敵に迫りヒットする(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 74 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 154 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 74 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 124 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 74 + OFFSET_X, 1, -4.8, 6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -4.8, 6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -4.9, 6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -4.9, 6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -5, 6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -5, 6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -5.3, 6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -5.3, 6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -5.6, 6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -5.6, 6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -6.1, 6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -6.1, 6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -6.7, 6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -6.7, 6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -7.5, 6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -7.5, 6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 26.3, 25 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 26.3, 25 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 8.9, 5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 8.9, 5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 9.6, 25 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 9.6, 25 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 20.2, -1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 20.2, -1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 20.9, 25 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 20.9, 25 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 3.6, 4.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 3.6, 4.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 4.2, 24.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 4.2, 24.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 14.9, -1.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 14.9, -1.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 15.5, 24.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 15.5, 24.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -1.8, 4.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -1.8, 4.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -1.2, 24.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -1.2, 24.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 9.5, -1.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 9.5, -1.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 10.1, 24.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 10.1, 24.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -7.2, 4.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -7.2, 4.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -6.5, 24.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -6.5, 24.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -8.7, -14.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -8.7, -14.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -6.7, 11.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -6.7, 11.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -22.7, -8.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -22.7, -8.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -20.7, 11.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -20.7, 11.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -8.6, -14.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -8.6, -14.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -6.6, 11.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -6.6, 11.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -22.6, -8.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -22.6, -8.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -20.6, 11 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -20.6, 11 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -8.6, -15 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -8.6, -15 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -6.5, 11 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -6.5, 11 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -22.5, -9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -22.5, -9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -20.5, 11 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -20.5, 11 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -8.5, -15 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -8.5, -15 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -6.5, 11 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -6.5, 11 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -22.4, -9 , 0 );
--setMoveKey( spep_2 + 153 + OFFSET_X, 1, -22.4, -9 , 0 );
--setMoveKey( spep_2 + 154 + OFFSET_X, 1, -20.4, 11 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.62, 0.62 );
--setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.62, 0.62 );
--setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.61, 0.61 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 19.2 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 8, 1027, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 8, 1401, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 10, 1357, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 56; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--気弾発射
SE017 = playSeVer2( spep_2 + 48, 1406, "",spep_2 + 190, 0, 34, -1);

--爆発
SE018 = playSeVer2( spep_2 + 84, 1011, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 100, 1023, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 120, 1024, "",spep_2 + 178, 0, 20, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; -- 152f

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 8, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 8, finish_1f, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, 1.0, 1.0 );
setEffRotateKey( spep_N + 8, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 8, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

finish_1b = entryEffect( spep_N + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_xxx)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );

setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );  

-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );

-- ** 音 ** --
--画面割れ
--SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
--SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

--画面割れる
SE021 = playSeVer2( spep_N + 0, 1054, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_N + 0, 1025, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_N + 0, 1159, "",spep_N + 132, 0, 64, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕〜超サイヤ人になった
-------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜超サイヤ人になった(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--地響き音
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 132, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 136, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 51 );

--気ダメ
SE004 = playSeVer2( spep_0 + 16, 1258, "",spep_0 + 130, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 79 );
SE006 = playSeVer2( spep_0 + 40, 1035, "",spep_0 + 142, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 150 );
SE007 = playSeVer2( spep_0 + 40, 1068, "",spep_0 + 142, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 66 );
SE008 = playSeVer2( spep_0 + 40, 1356, "",spep_0 + 144, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 40, SE008, 63 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 108f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--環境音
SE005 = playSeVer2( spep_1 + 72, 1175, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE005, 28 );
setStartTimeMs( SE005,  2500 );

--気弾溜め
SE010 = playSeVer2( spep_1 + 68, 1442, "",spep_1 + 134, 6, 14, -1);
setSeVolumeByWorkId( spep_1 + 68, SE010, 224 );
setStartTimeMs( SE010,  833 );
SE011 = playSeVer2( spep_1 + 72, 1394, "",spep_1 + 132, 6, 12, -1);
setStartTimeMs( SE011,  367 );
SE012 = playSeVer2( spep_1 + 76, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 76, SE012, 130 );	
SE013 = playSeVer2( spep_1 + 78, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE013, 65 );

-------------------------------------------------
-- 気弾を構える〜気弾が敵に迫りヒットする
-------------------------------------------------
MAX_FRAME_2 = 152;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾を構える〜気弾が敵に迫りヒットする(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 0);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾を構える〜気弾が敵に迫りヒットする(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 74 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 154 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 74 + OFFSET_X, 1, 17 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 124 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 74 + OFFSET_X, 1, 4.8, 6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 4.8, 6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 4.9, 6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 4.9, 6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 5, 6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 5, 6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 5.3, 6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 5.3, 6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 5.6, 6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 5.6, 6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 6.1, 6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 6.1, 6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 6.7, 6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 6.7, 6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 7.5, 6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 7.5, 6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -26.3, 25 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -26.3, 25 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -8.9, 5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -8.9, 5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -9.6, 25 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -9.6, 25 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -20.2, -1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -20.2, -1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -20.9, 25 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -20.9, 25 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -3.6, 4.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -3.6, 4.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -4.2, 24.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -4.2, 24.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -14.9, -1.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -14.9, -1.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -15.5, 24.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -15.5, 24.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 1.8, 4.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 1.8, 4.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 1.2, 24.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 1.2, 24.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -9.5, -1.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -9.5, -1.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -10.1, 24.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -10.1, 24.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 7.2, 4.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 7.2, 4.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 6.5, 24.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 6.5, 24.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 8.7, -14.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 8.7, -14.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 6.7, 11.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 6.7, 11.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 22.7, -8.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 22.7, -8.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 20.7, 11.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 20.7, 11.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 8.6, -14.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 8.6, -14.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 6.6, 11.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 6.6, 11.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 22.6, -8.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 22.6, -8.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 20.6, 11 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 20.6, 11 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 8.6, -15 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 8.6, -15 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 6.5, 11 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 6.5, 11 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 22.5, -9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 22.5, -9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 20.5, 11 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 20.5, 11 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 8.5, -15 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 8.5, -15 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 6.5, 11 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 6.5, 11 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 22.4, -9 , 0 );
--setMoveKey( spep_2 + 153 + OFFSET_X, 1, 22.4, -9 , 0 );
--setMoveKey( spep_2 + 154 + OFFSET_X, 1, 20.4, 11 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.62, 0.62 );
--setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.62, 0.62 );
--setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.61, 0.61 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -19.2 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 8, 1027, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 8, 1401, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 10, 1357, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 56; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--気弾発射
SE017 = playSeVer2( spep_2 + 48, 1406, "",spep_2 + 190, 0, 34, -1);

--爆発
SE018 = playSeVer2( spep_2 + 84, 1011, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 100, 1023, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 120, 1024, "",spep_2 + 178, 0, 20, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; -- 152f

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 8, finish_1f, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 0, 0 , 0 );
setEffScaleKey( spep_N + 8, finish_1f, -1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1f, -1.0, 1.0 );
setEffRotateKey( spep_N + 8, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 8, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

finish_1b = entryEffect( spep_N + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_xxx)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, -1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, -1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );

setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );  

-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 7 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, -21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, 28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, 32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, 37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, 354.8 );
setRotateKey( spep_N + 2, 1, 122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, 1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, -242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, -364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, -486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, -607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, -729.5 );
setRotateKey( spep_N + 112, 1, -729.5 );

-- ** 音 ** --
--画面割れ
--SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
--SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

--画面割れる
SE021 = playSeVer2( spep_N + 0, 1054, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_N + 0, 1025, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_N + 0, 1159, "",spep_N + 132, 0, 64, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム


end
