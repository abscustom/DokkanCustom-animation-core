--1031390:LR_超サイヤ人ゴッドSS孫悟空+超サイヤ人ゴッドSSベジータ_超必殺技：かめはめ波
--sp_effect_a1_00492
--sp2873

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163926 --登場〜構え ef_001
SP_02 = 163927 --かめはめ波 ef_002
SP_02b = 163928 --背景（キャラ込） ef_002b

--エフェクト(敵)
SP_02r = 163929 --かめはめ波 ef_002r
SP_02br = 163930 --背景（キャラ込） ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜構え
-------------------------------------------------
MAX_FRAME_0 = 224;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場〜構え(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 140;
 
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 32 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

ay = -250;
ax = 50;

setMoveKey( spep_0 + 0, 1, 345.5 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 347.9 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 347.9 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 350.3 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 350.3 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 352.8 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 352.8 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 355.2 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 355.2 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 357.6 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 357.6 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 360.1 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 360.1 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 362.5 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 362.5 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 444.1 + ax, 141.8 + ay, 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 444.1 + ax, 141.8 + ay, 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 719.8 + ax, 84.5 + ay, 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 719.8 + ax, 84.5 + ay, 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 1244.7 + ax, -24.4 + ay, 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 1244.7 + ax, -24.4 + ay, 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 2068.8 + ax, -195.5 + ay, 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 2068.8 + ax, -195.5 + ay, 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 3163.7 + ax, -422.8 + ay, 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 3163.7 + ax, -422.8 + ay, 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 4305.9 + ax, -659.8 + ay, 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 4305.9 + ax, -659.8 + ay, 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 5180.4 + ax, -841.4 + ay, 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 5180.4 + ax, -841.4 + ay, 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 5663.8 + ax, -941.5 + ay, 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 5663.8 + ax, -941.5 + ay, 0 );

setScaleKey( spep_0 + 0, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 6.98, 6.98 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 6.98, 6.98 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 10.44, 10.44 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 10.44, 10.44 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 27.41, 27.41 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 27.41, 27.41 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 41.19, 41.19 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 41.19, 41.19 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 55.55, 55.55 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 55.55, 55.55 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 66.56, 66.56 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 66.56, 66.56 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 72.64, 72.64 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 72.64, 72.64 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 32 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 262, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE005 = playSeVer2( spep_0 + 36, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 71 );

--かめはめ波溜め
SE004 = playSeVer2( spep_0 + 70, 1210, "",spep_0 + 246, 14, 24, -1);
setStartTimeMs( SE004,  633 );
SE006 = playSeVer2( spep_0 + 70, 1209, "",spep_0 + 248, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 70, SE006, 81 );
SE007 = playSeVer2( spep_0 + 70, 1440, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 70, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE008, 123 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --224f

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE010 = playSeVer2( spep_1 + 84, 1210, "",spep_1 + 156, 4, 32, -1);
setStartTimeMs( SE010,  2167 );
SE012 = playSeVer2( spep_1 + 88, 8, "", 0, 0, 0, -1);

-------------------------------------------------
-- かめはめ波
-------------------------------------------------
MAX_FRAME_2 = 710;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背景（キャラ込）(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 136 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 130 + OFFSET_X, 1, 189.4, 229.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 189.4, 229.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 183.9, 229.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 183.9, 229.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 183.6, 210.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 183.6, 210.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 185.7, 231.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 185.7, 231.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 194.1, 211.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 194.1, 211.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 185.4, 228.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 185.4, 228.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 180.1, 213 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 180.1, 213 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 193.8, 235 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 193.8, 235 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 180.6, 208.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 180.6, 208.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 183.4, 233 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 183.4, 233 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 194.1, 209 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 194.1, 209 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 182.7, 213.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 182.7, 213.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 194.1, 234.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 194.1, 234.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 185, 209.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 185, 209.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 183.1, 232 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 183.1, 232 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 193.8, 212.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 193.8, 212.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 180.9, 228.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 180.9, 228.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 180.5, 214 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 180.5, 214 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 194.1, 231.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 194.1, 231.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 183.8, 211.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 183.8, 211.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 186.9, 233.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 186.9, 233.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 184, 210.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 184, 210.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 190.2, 232.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 190.2, 232.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 183.7, 215.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 183.7, 215.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 189.6, 230.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 189.6, 230.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 181.5, 212.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 181.5, 212.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 187, 231.1 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 187, 231.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 192.8, 210.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 192.8, 210.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 182.1, 229.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 182.1, 229.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 182.7, 212.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 182.7, 212.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 194.1, 231.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 194.1, 231.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 183.8, 211.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 183.8, 211.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 184, 214.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 184, 214.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 194.1, 230.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 194.1, 230.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 180.1, 213 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 180.1, 213 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 193.8, 235 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 193.8, 235 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 180.6, 208.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 180.6, 208.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 183.4, 233 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 183.4, 233 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 194.1, 209 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 194.1, 209 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 184.1, 231.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 184.1, 231.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 180.7, 211.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 180.7, 211.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 192.8, 232 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 192.8, 232 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 184, 212.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 184, 212.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 192.8, 233.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 192.8, 233.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 185, 213.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 185, 213.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 186.9, 229.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 186.9, 229.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 190.2, 209.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 190.2, 209.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 185.1, 233.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 185.1, 233.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 179.5, 210.5 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 179.5, 210.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 190.6, 233.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 190.6, 233.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 185.1, 210.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 185.1, 210.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 185.7, 232.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 185.7, 232.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 183, 218.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 183, 218.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 189.6, 223.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 189.6, 223.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 183.8, 218 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 183.8, 218 , 0 );

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -72.3 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -72.3 );

--敵の動き2
setDisp( spep_2 + 594 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 662 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 594 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 604 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 636 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 594 + OFFSET_X, 1, -92.8, -203.9 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -92.8, -203.9 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -90.1, -150.2 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -90.1, -150.2 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -90.1, -150.1 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -90.1, -150.1 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -89.9, -149.8 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -89.9, -149.8 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -89.4, -149 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, -89.4, -149 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -88.5, -147.3 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, -88.5, -147.3 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, -87, -144.6 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, -87, -144.6 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -84.7, -140.5 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, -84.7, -140.5 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, -81.5, -134.7 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, -81.5, -134.7 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, -77.2, -127.1 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, -77.2, -127.1 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -71.8, -117.3 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -71.8, -117.3 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -65, -105.1 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, -65, -105.1 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, -56.6, -90.2 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -56.6, -90.2 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -46.6, -72.3 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, -46.6, -72.3 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -34.8, -51.2 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, -34.8, -51.2 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -21.1, -26.5 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -21.1, -26.5 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -5.2, 1.9 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -5.2, 1.9 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 6.5, 2 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 6.5, 2 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 25, 28 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 25, 28 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 31.5, 37.1 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 31.5, 37.1 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 36, 43.4 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 36, 43.4 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 39.5, 48.2 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 39.5, 48.2 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 42.2, 51.4 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 42.2, 51.4 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 44.6, 56.4 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 44.6, 56.4 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 46.5, 56.8 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 46.5, 56.8 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 48.1, 61.4 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 48.1, 61.4 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 49.6, 59.8 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 49.6, 59.8 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 53.1, 64.9 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 53.1, 64.9 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 50.2, 62.8 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 50.2, 62.8 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 54.2, 70.2 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 54.2, 70.2 , 0 );

setScaleKey( spep_2 + 594 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 1.31, 1.31 );

setRotateKey( spep_2 + 594 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 603 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 604 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_2 + 635 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 637 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_2 + 639 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_2 + 640 + OFFSET_X, 1, -82.3 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, -82.3 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, -82 );
setRotateKey( spep_2 + 643 + OFFSET_X, 1, -82 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, -81.8 );
setRotateKey( spep_2 + 645 + OFFSET_X, 1, -81.8 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, -81.6 );
setRotateKey( spep_2 + 647 + OFFSET_X, 1, -81.6 );
setRotateKey( spep_2 + 648 + OFFSET_X, 1, -81.4 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, -81.4 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, -81.3 );
setRotateKey( spep_2 + 651 + OFFSET_X, 1, -81.3 );
setRotateKey( spep_2 + 652 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_2 + 653 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, -81.1 );
setRotateKey( spep_2 + 655 + OFFSET_X, 1, -81.1 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 657 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 658 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_2 + 662 + OFFSET_X, 1, -80.9 );

setBlendColor(spep_2 + 636 + OFFSET_X, 1, 3, 0, 0, 0, 1.0);
setBlendColor(spep_2 + 662 + OFFSET_X, 1, 3, 0, 0, 0, 0.0);

-- ** 音 ** --
--かめはめ波発射
SE013 = playSeVer2( spep_2 + 22, 1146, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 22, 1223, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 22, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE015, 70 );
setTimeStretch( SE015, 2, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);

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
--敵ヒット
SE016 = playSeVer2( spep_2 + 118, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE016, 251 );
SE017 = playSeVer2( spep_2 + 118, 1024, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 118, 1049, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 118, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE019, 77 );

--足伸ばす
SE020 = playSeVer2( spep_2 + 250, 1004, "", 0, 0, 0, -1);

--力入れる
SE021 = playSeVer2( spep_2 + 364, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 364, SE021, 76 );
--顔アップ
SE022 = playSeVer2( spep_2 + 414, 1116, "", 0, 0, 0, -1);
--威力アップ
SE023 = playSeVer2( spep_2 + 532, 1258, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 538, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE024, 60 );
SE025 = playSeVer2( spep_2 + 538, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE025, 141 );

--威力増す
SE026 = playSeVer2( spep_2 + 538, 1161, "", 0, 0, 0, -1);

--敵呑まれる
SE027 = playSeVer2( spep_2 + 588, 1258, "", 0, 46, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 610); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  710f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場〜構え
-------------------------------------------------
MAX_FRAME_0 = 224;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場〜構え(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 32 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

ay = -250;
ax = -50;

setMoveKey( spep_0 + 0, 1, -345.5 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -347.9 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -347.9 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -350.3 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -350.3 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -352.8 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -352.8 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -355.2 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -355.2 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -357.6 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -357.6 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -360.1 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -360.1 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -362.5 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -362.5 + ax, 158.7 + ay, 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -444.1 + ax, 141.8 + ay, 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -444.1 + ax, 141.8 + ay, 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -719.8 + ax, 84.5 + ay, 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -719.8 + ax, 84.5 + ay, 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -1244.7 + ax, -24.4 + ay, 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -1244.7 + ax, -24.4 + ay, 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -2068.8 + ax, -195.5 + ay, 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -2068.8 + ax, -195.5 + ay, 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -3163.7 + ax, -422.8 + ay, 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -3163.7 + ax, -422.8 + ay, 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -4305.9 + ax, -659.8 + ay, 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -4305.9 + ax, -659.8 + ay, 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -5180.4 + ax, -841.4 + ay, 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -5180.4 + ax, -841.4 + ay, 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -5663.8 + ax, -941.5 + ay, 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -5663.8 + ax, -941.5 + ay, 0 );

setScaleKey( spep_0 + 0, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 6.98, 6.98 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 6.98, 6.98 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 10.44, 10.44 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 10.44, 10.44 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 27.41, 27.41 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 27.41, 27.41 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 41.19, 41.19 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 41.19, 41.19 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 55.55, 55.55 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 55.55, 55.55 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 66.56, 66.56 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 66.56, 66.56 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 72.64, 72.64 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 72.64, 72.64 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 32 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 262, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE005 = playSeVer2( spep_0 + 36, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 71 );

--かめはめ波溜め
SE004 = playSeVer2( spep_0 + 70, 1210, "",spep_0 + 246, 14, 24, -1);
setStartTimeMs( SE004,  633 );
SE006 = playSeVer2( spep_0 + 70, 1209, "",spep_0 + 248, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 70, SE006, 81 );
SE007 = playSeVer2( spep_0 + 70, 1440, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 70, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE008, 123 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --224f

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE010 = playSeVer2( spep_1 + 84, 1210, "",spep_1 + 156, 4, 32, -1);
setStartTimeMs( SE010,  2167 );
SE012 = playSeVer2( spep_1 + 88, 8, "", 0, 0, 0, -1);

-------------------------------------------------
-- かめはめ波
-------------------------------------------------
MAX_FRAME_2 = 710;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- かめはめ波(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 背景（キャラ込）(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 136 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 130 + OFFSET_X, 1, 189.4, 229.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 189.4, 229.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 183.9, 229.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 183.9, 229.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 183.6, 210.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 183.6, 210.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 185.7, 231.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 185.7, 231.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 194.1, 211.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 194.1, 211.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 185.4, 228.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 185.4, 228.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 180.1, 213 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 180.1, 213 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 193.8, 235 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 193.8, 235 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 180.6, 208.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 180.6, 208.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 183.4, 233 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 183.4, 233 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 194.1, 209 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 194.1, 209 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 182.7, 213.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 182.7, 213.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 194.1, 234.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 194.1, 234.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 185, 209.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 185, 209.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 183.1, 232 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 183.1, 232 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 193.8, 212.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 193.8, 212.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 180.9, 228.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 180.9, 228.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 180.5, 214 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 180.5, 214 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 194.1, 231.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 194.1, 231.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 183.8, 211.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 183.8, 211.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 186.9, 233.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 186.9, 233.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 184, 210.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 184, 210.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 190.2, 232.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 190.2, 232.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 183.7, 215.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 183.7, 215.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 189.6, 230.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 189.6, 230.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 181.5, 212.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 181.5, 212.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 187, 231.1 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 187, 231.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 192.8, 210.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 192.8, 210.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 182.1, 229.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 182.1, 229.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 182.7, 212.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 182.7, 212.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 194.1, 231.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 194.1, 231.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 183.8, 211.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 183.8, 211.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 184, 214.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 184, 214.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 194.1, 230.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 194.1, 230.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 180.1, 213 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 180.1, 213 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 193.8, 235 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 193.8, 235 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 180.6, 208.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 180.6, 208.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 183.4, 233 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 183.4, 233 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 194.1, 209 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 194.1, 209 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 184.1, 231.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 184.1, 231.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 180.7, 211.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 180.7, 211.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 192.8, 232 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 192.8, 232 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 184, 212.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 184, 212.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 192.8, 233.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 192.8, 233.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 185, 213.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 185, 213.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 186.9, 229.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 186.9, 229.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 190.2, 209.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 190.2, 209.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 185.1, 233.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 185.1, 233.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 179.5, 210.5 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 179.5, 210.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 190.6, 233.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 190.6, 233.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 185.1, 210.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 185.1, 210.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 185.7, 232.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 185.7, 232.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 183, 218.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 183, 218.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 189.6, 223.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 189.6, 223.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 183.8, 218 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 183.8, 218 , 0 );

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -72.3 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -72.3 );

--敵の動き2
setDisp( spep_2 + 594 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 662 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 594 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 604 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 636 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 594 + OFFSET_X, 1, -92.8, -203.9 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -92.8, -203.9 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -90.1, -150.2 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -90.1, -150.2 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -90.1, -150.1 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -90.1, -150.1 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -89.9, -149.8 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -89.9, -149.8 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -89.4, -149 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, -89.4, -149 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -88.5, -147.3 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, -88.5, -147.3 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, -87, -144.6 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, -87, -144.6 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -84.7, -140.5 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, -84.7, -140.5 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, -81.5, -134.7 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, -81.5, -134.7 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, -77.2, -127.1 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, -77.2, -127.1 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -71.8, -117.3 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -71.8, -117.3 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -65, -105.1 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, -65, -105.1 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, -56.6, -90.2 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -56.6, -90.2 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -46.6, -72.3 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, -46.6, -72.3 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -34.8, -51.2 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, -34.8, -51.2 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -21.1, -26.5 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -21.1, -26.5 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -5.2, 1.9 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -5.2, 1.9 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 6.5, 2 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 6.5, 2 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 25, 28 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 25, 28 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 31.5, 37.1 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 31.5, 37.1 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 36, 43.4 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 36, 43.4 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 39.5, 48.2 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 39.5, 48.2 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 42.2, 51.4 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 42.2, 51.4 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 44.6, 56.4 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 44.6, 56.4 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 46.5, 56.8 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 46.5, 56.8 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 48.1, 61.4 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 48.1, 61.4 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 49.6, 59.8 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 49.6, 59.8 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 53.1, 64.9 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 53.1, 64.9 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 50.2, 62.8 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 50.2, 62.8 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 54.2, 70.2 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 54.2, 70.2 , 0 );

setScaleKey( spep_2 + 594 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 1.31, 1.31 );

setRotateKey( spep_2 + 594 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 603 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 604 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_2 + 635 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 637 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_2 + 639 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_2 + 640 + OFFSET_X, 1, -82.3 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, -82.3 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, -82 );
setRotateKey( spep_2 + 643 + OFFSET_X, 1, -82 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, -81.8 );
setRotateKey( spep_2 + 645 + OFFSET_X, 1, -81.8 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, -81.6 );
setRotateKey( spep_2 + 647 + OFFSET_X, 1, -81.6 );
setRotateKey( spep_2 + 648 + OFFSET_X, 1, -81.4 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, -81.4 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, -81.3 );
setRotateKey( spep_2 + 651 + OFFSET_X, 1, -81.3 );
setRotateKey( spep_2 + 652 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_2 + 653 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, -81.1 );
setRotateKey( spep_2 + 655 + OFFSET_X, 1, -81.1 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 657 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 658 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_2 + 662 + OFFSET_X, 1, -80.9 );

setBlendColor(spep_2 + 636 + OFFSET_X, 1, 3, 0, 0, 0, 1.0);
setBlendColor(spep_2 + 662 + OFFSET_X, 1, 3, 0, 0, 0, 0.0);

-- ** 音 ** --
--かめはめ波発射
SE013 = playSeVer2( spep_2 + 22, 1146, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 22, 1223, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 22, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 22, SE015, 70 );
setTimeStretch( SE015, 2, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);

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
--敵ヒット
SE016 = playSeVer2( spep_2 + 118, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE016, 251 );
SE017 = playSeVer2( spep_2 + 118, 1024, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 118, 1049, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 118, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE019, 77 );

--足伸ばす
SE020 = playSeVer2( spep_2 + 250, 1004, "", 0, 0, 0, -1);

--力入れる
SE021 = playSeVer2( spep_2 + 364, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 364, SE021, 76 );
--顔アップ
SE022 = playSeVer2( spep_2 + 414, 1116, "", 0, 0, 0, -1);
--威力アップ
SE023 = playSeVer2( spep_2 + 532, 1258, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 538, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE024, 60 );
SE025 = playSeVer2( spep_2 + 538, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE025, 141 );

--威力増す
SE026 = playSeVer2( spep_2 + 538, 1161, "", 0, 0, 0, -1);

--敵呑まれる
SE027 = playSeVer2( spep_2 + 588, 1258, "", 0, 46, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 610); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  710f

end
