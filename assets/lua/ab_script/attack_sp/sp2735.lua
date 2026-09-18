--1029160:UR_ブルマ(バニー)_必殺技：ヤムチャ覚悟の救出劇！
--sp_effect_b4_00334
--sp2735

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162975; --開幕→セリフカットイン→カードカットイン ef_001
SP_01b = 162976; --開幕→セリフカットイン→カードカットイン(背景) ef_001b
SP_02 = 162979; --カードカットイン→フィニッシュ ef_002
SP_02b = 162980; --カードカットイン→フィニッシュ(背景) ef_002b

--エフェクト(てき)
SP_01r = 162977; --開幕→セリフカットイン→カードカットイン ef_001r
SP_01br = 162978; --開幕→セリフカットイン→カードカットイン(背景) ef_001br
SP_02r = 162981; --カードカットイン→フィニッシュ ef_002r
SP_02br = 162982; --カードカットイン→フィニッシュ(背景) ef_002br


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

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

-- setMoveKey(   0,   1,    0, -5000,   0 );
-- setMoveKey(   1,   1,    0, -5000,   0 );
-- setMoveKey(   2,   1,    0, -5000,   0 );
-- setMoveKey(   3,   1,    0, -5000,   0 );
-- setMoveKey(   4,   1,    0, -5000,   0 );
-- setMoveKey(   5,   1,    0, -5000,   0 );
-- setMoveKey(   6,   1,    0, -5000,   0 );
-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕→セリフカットイン→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕→セリフカットイン→カードカットイン ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕→セリフカットイン→カードカットイン(背景) ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 40;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 50 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 293.9, -331 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 291.7, -330.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 291.7, -330.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 289.4, -330.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 289.4, -330.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 287.2, -330.7 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 287.2, -330.7 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 284.9, -330.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 284.9, -330.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 282.7, -330.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 282.7, -330.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 280.4, -330.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 280.4, -330.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 278.2, -330.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 278.2, -330.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 276, -330.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 276, -330.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 273.7, -330.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 273.7, -330.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 271.5, -330.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 271.5, -330.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 269.2, -330.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 269.2, -330.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 267, -330 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 267, -330 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 264.7, -329.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 264.7, -329.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 262.5, -329.8 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 262.5, -329.8 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 260.3, -329.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 260.3, -329.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 258, -329.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 258, -329.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 255.8, -329.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 255.8, -329.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 253.5, -329.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 253.5, -329.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 251.3, -329.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 251.3, -329.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 249, -329.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 249, -329.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 246.8, -329.2 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 246.8, -329.2 , 0 );

setScaleKey( spep_0 + 0, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 4.61, 4.61 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 50 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--ブルマ叫ぶ
SE003 = playSeVer2( spep_0 + 54, 19, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 54, SE003, 420, 24000 );
SE004 = playSeVer2( spep_0 + 54, 1067, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 54, SE004, 420, 24000 );
SE005 = playSeVer2( spep_0 + 54, 1237, "",spep_0 + 140, 0, 22, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 128

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--背景音
SE007 = playSeVer2( spep_1 + 88, 1264, "",spep_2 + 242, 0, 114, -1);
setSeVolumeByWorkId( spep_1 + 88, SE007, 65 );
SE008 = playSeVer2( spep_1 + 88, 1304, "", 0, 0, 0, 0.6);

-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 434;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(背景) ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp(spep_2 + 144 + OFFSET_X, 1, 1)
setDisp(spep_2 + 350 + OFFSET_X, 1, 0)

changeAnime( spep_2 + 144 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 156 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 224 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 268 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 144 + OFFSET_X, 1, 844.1, -957.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 844.1, -957.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 769.2, -899.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 769.2, -899.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 694.4, -841.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 694.4, -841.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 619.6, -783.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 619.6, -783.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 544.8, -725.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 544.8, -725.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 470, -667.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 470, -667.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 64, 32 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 64, 32 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 32.1, 71.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 32.1, 71.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 116.7, -25.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 116.7, -25.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 161.8, 52.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 161.8, 52.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 42.7, -68.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 42.7, -68.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 64.5, 32.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 64.5, 32.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 146.7, -61.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 146.7, -61.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 189.3, 19.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 189.3, 19.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 67.7, -98.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 67.7, -98.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 128.6, -45.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 128.6, -45.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 132.6, -50.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 132.6, -50.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 136.1, -54.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 136.1, -54.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 138.9, -58 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 138.9, -58 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 141, -60.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 141, -60.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 142.6, -62.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 142.6, -62.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 143.5, -63.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 143.5, -63.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 143.9, -64 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 143.9, -64 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 182.9, -411.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 182.9, -411.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 181.5, -411.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 181.5, -411.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 177.2, -409.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 177.2, -409.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 170, -407.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 170, -407.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 160, -404.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 160, -404.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 147.1, -400.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 147.1, -400.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 131.3, -395.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 131.3, -395.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 112.7, -389.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 112.7, -389.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 91.2, -383.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 91.2, -383.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 66.8, -375.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 66.8, -375.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 39.6, -367.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 39.6, -367.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 151.7, 65.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 151.7, 65.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 227.3, -20.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 227.3, -20.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 264, 67.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 264, 67.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 137.1, -43.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 137.1, -43.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 193.8, 66 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 193.8, 66 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 311.4, -20.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 311.4, -20.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 390.2, 68.4 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 390.2, 68.4 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 305.3, -42.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 305.3, -42.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 403.6, 16.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 403.6, 16.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 445.6, 16.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 445.6, 16.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 487.6, 16.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 487.6, 16.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 529.7, 17.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 529.7, 17.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 571.7, 17.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 571.7, 17.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 613.8, 17.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 613.8, 17.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 655.8, 18.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 655.8, 18.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 697.9, 18.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 697.9, 18.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 739.9, 18.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 739.9, 18.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 782, 19.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 782, 19.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 824, 19.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 824, 19.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 866.1, 19.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 866.1, 19.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 908.1, 20 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 908.1, 20 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 950.2, 20.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 950.2, 20.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -388.8, 213.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -388.8, 213.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -345.2, 183.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -345.2, 183.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -301.6, 153.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -301.6, 153.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -258.2, 123.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -258.2, 123.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -214.7, 94 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -214.7, 94 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -171.3, 64.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -171.3, 64.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -127.9, 35.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -127.9, 35.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -84.6, 7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -84.6, 7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -41.3, -21.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -41.3, -21.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 2.2, -69.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 2.2, -69.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -5.6, -26.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -5.6, -26.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 75.3, -82.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 75.3, -82.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 118.1, -45.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 118.1, -45.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 100.6, -87.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 100.6, -87.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 139.8, -51.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 139.8, -51.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 183.6, -42.2 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 183.6, -42.2 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 198.5, -44.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 198.5, -44.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 217.1, -56.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 217.1, -56.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 210.8, -51.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 210.8, -51.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 231.1, -63.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 231.1, -63.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 222.9, -71.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 222.9, -71.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 240.8, -67.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 240.8, -67.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 234, -47.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 234, -47.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 254.7, -55.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 254.7, -55.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 246.8, -73.8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 246.8, -73.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 265.3, -80.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 265.3, -80.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 262.7, -75.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 262.7, -75.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 286.5, -70.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 286.5, -70.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 285.5, -80.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 285.5, -80.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 310.8, -79.5 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 310.8, -79.5 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 308.4, -70.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 308.4, -70.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 315, -72.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 315, -72.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 325.6, -79.3 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 325.6, -79.3 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 352.1, -77.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 352.1, -77.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 357.4, -64.2 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 357.4, -64.2 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 371.6, -61.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 371.6, -61.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 391, -62.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 391, -62.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 400.5, -61.8 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 400.5, -61.8 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 407.3, -57.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 407.3, -57.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 405.4, -58.7 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 405.4, -58.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 413.2, -63.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 413.2, -63.4 , 0 );

setScaleKey( spep_2 + 144 + OFFSET_X, 1, 10.08, 10.08 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 10.08, 10.08 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 9.75, 9.75 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 9.75, 9.75 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 8.78, 8.78 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 8.78, 8.78 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 7.36, 7.36 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 7.36, 7.36 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 7.26, 7.26 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 7.26, 7.26 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 7.13, 7.13 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 7.13, 7.13 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 6.97, 6.97 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 6.97, 6.97 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 6.04, 6.04 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 6.04, 6.04 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 144 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 53.5 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 53.5 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 55.1 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 55.1 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 56.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 56.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 59.6 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 59.6 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 65.8 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 65.8 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 69.3 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 69.3 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 74 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 74 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 68.7 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 68.7 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 71.7 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 71.7 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 67.5 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 67.5 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 69.9 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 69.9 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 83.4 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 83.4 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 90.2 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 90.2 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 73.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 73.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 77.7 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 77.7 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 81.8 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 81.8 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 84.5 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 84.5 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 85.8 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 85.8 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 87.1 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 87.1 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 88.4 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 88.4 );

-- ** 音 ** --
--ヤムチャ飛んでくる
SE009 = playSeVer2( spep_2 + 32, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 48, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE010, 56 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
   SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える
       
   playSe( SP_dodge - 12, 1042);
   stopSe( SP_dodge - 12, SE_CUTIN, 0);
   stopSe( SP_dodge - 12, SE004, 0);
   stopSe( SP_dodge - 12, SE007, 0);
   stopSe( SP_dodge - 12, SE008, 0);
   stopSe( SP_dodge - 12, SE009, 0);
   stopSe( SP_dodge - 0, SE010, 0);
       
   pauseAll( SP_dodge, 67);
       
   speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
   setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
   
   dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
   setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);
   
   entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
   
   endPhase( SP_dodge+10);
   
   do return end
   else end
       
   -----------------------------
   --回避しなかった場合
   -----------------------------

-- ** 音 ** --
--エルボー
SE011 = playSeVer2( spep_2 + 138, 1003, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 146, 1153, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 146, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE014 = playSeVer2( spep_2 + 186, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE015 = playSeVer2( spep_2 + 216, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_2 + 238, 1116, "",spep_2 + 324, 0, 40, -1);

--敵地面吹き飛ぶ
SE017 = playSeVer2( spep_2 + 274, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE017, 260 );
SE018 = playSeVer2( spep_2 + 276, 1197, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 276, 1168, "",spep_2 + 404, 0, 94, -1);
SE020 = playSeVer2( spep_2 + 276, 1002, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 286, 1197, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 292, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 292, SE022, 71 );
SE023 = playSeVer2( spep_2 + 300, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 300, SE023, 60 );

--ラストときめき
SE024 = playSeVer2( spep_2 + 340, 1435, "",spep_2 + 426, 0, 44, -1);
SE025 = playSeVer2( spep_2 + 340, 1433, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 374, 1189, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 284); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 434F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕→セリフカットイン→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕→セリフカットイン→カードカットイン ef_001r
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開幕→セリフカットイン→カードカットイン(背景) ef_001br
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 40;

-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 50 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 293.9, -331 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 291.7, -330.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 291.7, -330.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 289.4, -330.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 289.4, -330.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 287.2, -330.7 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 287.2, -330.7 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 284.9, -330.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 284.9, -330.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 282.7, -330.6 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 282.7, -330.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 280.4, -330.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 280.4, -330.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 278.2, -330.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 278.2, -330.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 276, -330.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 276, -330.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 273.7, -330.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 273.7, -330.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 271.5, -330.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 271.5, -330.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 269.2, -330.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 269.2, -330.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 267, -330 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 267, -330 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 264.7, -329.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 264.7, -329.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 262.5, -329.8 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 262.5, -329.8 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 260.3, -329.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 260.3, -329.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 258, -329.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 258, -329.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 255.8, -329.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 255.8, -329.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 253.5, -329.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 253.5, -329.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 251.3, -329.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 251.3, -329.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 249, -329.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 249, -329.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 246.8, -329.2 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 246.8, -329.2 , 0 );

setScaleKey( spep_0 + 0, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 4.61, 4.61 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 50 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--ブルマ叫ぶ
SE003 = playSeVer2( spep_0 + 54, 19, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 54, SE003, 420, 24000 );
SE004 = playSeVer2( spep_0 + 54, 1067, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 54, SE004, 420, 24000 );
SE005 = playSeVer2( spep_0 + 54, 1237, "",spep_0 + 140, 0, 22, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 128

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--背景音
SE007 = playSeVer2( spep_1 + 88, 1264, "",spep_2 + 242, 0, 114, -1);
setSeVolumeByWorkId( spep_1 + 88, SE007, 65 );
SE008 = playSeVer2( spep_1 + 88, 1304, "", 0, 0, 0, 0.6);


-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 434;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ ef_002r
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(背景) ef_002br
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp(spep_2 + 144 + OFFSET_X, 1, 1)
setDisp(spep_2 + 350 + OFFSET_X, 1, 0)

changeAnime( spep_2 + 144 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 156 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 224 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 268 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 144 + OFFSET_X, 1, 844.1, -957.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 844.1, -957.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 769.2, -899.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 769.2, -899.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 694.4, -841.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 694.4, -841.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 619.6, -783.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 619.6, -783.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 544.8, -725.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 544.8, -725.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 470, -667.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 470, -667.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 64, 32 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 64, 32 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 32.1, 71.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 32.1, 71.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 116.7, -25.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 116.7, -25.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 161.8, 52.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 161.8, 52.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 42.7, -68.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 42.7, -68.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 64.5, 32.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 64.5, 32.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 146.7, -61.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 146.7, -61.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 189.3, 19.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 189.3, 19.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 67.7, -98.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 67.7, -98.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 128.6, -45.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 128.6, -45.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 132.6, -50.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 132.6, -50.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 136.1, -54.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 136.1, -54.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 138.9, -58 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 138.9, -58 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 141, -60.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 141, -60.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 142.6, -62.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 142.6, -62.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 143.5, -63.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 143.5, -63.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 143.9, -64 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 143.9, -64 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 182.9, -411.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 182.9, -411.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 181.5, -411.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 181.5, -411.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 177.2, -409.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 177.2, -409.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 170, -407.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 170, -407.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 160, -404.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 160, -404.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 147.1, -400.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 147.1, -400.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 131.3, -395.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 131.3, -395.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 112.7, -389.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 112.7, -389.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 91.2, -383.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 91.2, -383.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 66.8, -375.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 66.8, -375.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 39.6, -367.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 39.6, -367.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 151.7, 65.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 151.7, 65.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 227.3, -20.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 227.3, -20.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 264, 67.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 264, 67.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 137.1, -43.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 137.1, -43.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 193.8, 66 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 193.8, 66 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 311.4, -20.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 311.4, -20.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 390.2, 68.4 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 390.2, 68.4 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 305.3, -42.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 305.3, -42.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 403.6, 16.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 403.6, 16.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 445.6, 16.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 445.6, 16.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 487.6, 16.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 487.6, 16.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 529.7, 17.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 529.7, 17.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 571.7, 17.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 571.7, 17.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 613.8, 17.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 613.8, 17.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 655.8, 18.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 655.8, 18.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 697.9, 18.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 697.9, 18.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 739.9, 18.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 739.9, 18.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 782, 19.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 782, 19.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 824, 19.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 824, 19.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 866.1, 19.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 866.1, 19.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 908.1, 20 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 908.1, 20 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 950.2, 20.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 950.2, 20.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -388.8, 213.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -388.8, 213.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -345.2, 183.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -345.2, 183.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -301.6, 153.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -301.6, 153.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -258.2, 123.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -258.2, 123.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -214.7, 94 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -214.7, 94 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -171.3, 64.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -171.3, 64.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -127.9, 35.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -127.9, 35.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -84.6, 7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -84.6, 7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -41.3, -21.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -41.3, -21.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 2.2, -69.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 2.2, -69.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -5.6, -26.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -5.6, -26.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 75.3, -82.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 75.3, -82.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 118.1, -45.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 118.1, -45.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 100.6, -87.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 100.6, -87.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 139.8, -51.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 139.8, -51.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 183.6, -42.2 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 183.6, -42.2 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 198.5, -44.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 198.5, -44.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 217.1, -56.1 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 217.1, -56.1 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 210.8, -51.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 210.8, -51.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 231.1, -63.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 231.1, -63.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 222.9, -71.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 222.9, -71.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 240.8, -67.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 240.8, -67.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 234, -47.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 234, -47.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 254.7, -55.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 254.7, -55.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 246.8, -73.8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 246.8, -73.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 265.3, -80.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 265.3, -80.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 262.7, -75.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 262.7, -75.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 286.5, -70.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 286.5, -70.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 285.5, -80.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 285.5, -80.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 310.8, -79.5 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 310.8, -79.5 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 308.4, -70.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 308.4, -70.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 315, -72.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 315, -72.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 325.6, -79.3 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 325.6, -79.3 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 352.1, -77.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 352.1, -77.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 357.4, -64.2 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 357.4, -64.2 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 371.6, -61.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 371.6, -61.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 391, -62.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 391, -62.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 400.5, -61.8 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 400.5, -61.8 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 407.3, -57.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 407.3, -57.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 405.4, -58.7 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 405.4, -58.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 413.2, -63.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 413.2, -63.4 , 0 );

setScaleKey( spep_2 + 144 + OFFSET_X, 1, 10.08, 10.08 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 10.08, 10.08 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 9.75, 9.75 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 9.75, 9.75 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 8.78, 8.78 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 8.78, 8.78 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 7.36, 7.36 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 7.36, 7.36 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 7.26, 7.26 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 7.26, 7.26 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 7.13, 7.13 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 7.13, 7.13 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 6.97, 6.97 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 6.97, 6.97 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 6.78, 6.78 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 6.04, 6.04 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 6.04, 6.04 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_2 + 144 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -42 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 53.5 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 53.5 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 55.1 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 55.1 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 56.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 56.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 59.6 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 59.6 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 62.7 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 65.8 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 65.8 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 62 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 69.3 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 69.3 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 84 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 74 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 74 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 64 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 61.3 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 68.7 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 68.7 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 71.7 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 71.7 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 67.5 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 67.5 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 69.9 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 69.9 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 76.7 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 83.4 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 83.4 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 90.2 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 90.2 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 73.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 73.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 75 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 77.7 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 77.7 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 81.8 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 81.8 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 84.5 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 84.5 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 85.8 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 85.8 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 87.1 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 87.1 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 88.4 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 88.4 );

-- ** 音 ** --
--ヤムチャ飛んでくる
SE009 = playSeVer2( spep_2 + 32, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 48, 1118, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE010, 56 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
   SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える
       
   playSe( SP_dodge - 12, 1042);
   stopSe( SP_dodge - 12, SE_CUTIN, 0);
   stopSe( SP_dodge - 12, SE004, 0);
   stopSe( SP_dodge - 12, SE007, 0);
   stopSe( SP_dodge - 12, SE008, 0);
   stopSe( SP_dodge - 12, SE009, 0);
   stopSe( SP_dodge - 0, SE010, 0);
       
   pauseAll( SP_dodge, 67);
       
   speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
   setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
   
   dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
   setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);
   
   entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
   
   endPhase( SP_dodge+10);
   
   do return end
   else end
       
   -----------------------------
   --回避しなかった場合
   -----------------------------

-- ** 音 ** --
--エルボー
SE011 = playSeVer2( spep_2 + 138, 1003, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 146, 1153, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 146, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE014 = playSeVer2( spep_2 + 186, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE015 = playSeVer2( spep_2 + 216, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_2 + 238, 1116, "",spep_2 + 324, 0, 40, -1);

--敵地面吹き飛ぶ
SE017 = playSeVer2( spep_2 + 274, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE017, 260 );
SE018 = playSeVer2( spep_2 + 276, 1197, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 276, 1168, "",spep_2 + 404, 0, 94, -1);
SE020 = playSeVer2( spep_2 + 276, 1002, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 286, 1197, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 292, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 292, SE022, 71 );
SE023 = playSeVer2( spep_2 + 300, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 300, SE023, 60 );

--ラストときめき
SE024 = playSeVer2( spep_2 + 340, 1435, "",spep_2 + 426, 0, 44, -1);
SE025 = playSeVer2( spep_2 + 340, 1433, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 374, 1189, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 284); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 434F

end