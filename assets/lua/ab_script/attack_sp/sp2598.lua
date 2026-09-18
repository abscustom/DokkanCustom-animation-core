-- 1027390: UR_ザマス_必殺技：神裂斬
-- sp_effect_b1_00262
-- sp2598

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162151;  -- ザマスが敵と対面～ザマスが正面で構える ef_001
SP_001b = 162152;  -- ザマスが敵と対面～ザマスが正面で構える ef_001b
SP_002 = 162154;  -- ザマスが敵と対面～ザマスが敵を手刀 ef_002
SP_002b = 162155;  -- ザマスが敵と対面～ザマスが敵を手刀 ef_002b

-- 敵側
SP_001r = 162153;  -- ザマスが敵と対面～ザマスが正面で構える ef_001r
SP_002br = 162156;  -- ザマスが敵と対面～ザマスが敵を手刀 ef_002br
SP_002r = 162157;  -- ザマスが敵と対面～ザマスが敵を手刀 ef_002r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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

--setMoveKey(   0,   1,    0, -5000,   0 );
--setMoveKey(   1,   1,    0, -5000,   0 );
--setMoveKey(   2,   1,    0, -5000,   0 );
--setMoveKey(   3,   1,    0, -5000,   0 );
--setMoveKey(   4,   1,    0, -5000,   0 );
--setMoveKey(   5,   1,    0, -5000,   0 );
--setMoveKey(   6,   1,    0, -5000,   0 );
--setScaleKey(  0,   1,  1.6, 1.6 );
--setScaleKey(  1,   1,  1.6, 1.6 );
--setScaleKey(  2,   1,  1.6, 1.6 );
--setScaleKey(  3,   1,  1.6, 1.6 );
--setScaleKey(  4,   1,  1.6, 1.6 );
--setScaleKey(  5,   1,  1.6, 1.6 );
--setScaleKey(  6,   1,  1.6, 1.6 );
--setRotateKey( 0,   1,  0 );
--setRotateKey( 1,   1,  0 );
--setRotateKey( 2,   1,  0 );
--setRotateKey( 3,   1,  0 );
--setRotateKey( 4,   1,  0 );
--setRotateKey( 5,   1,  0 );
--setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ザマスが敵と対面～ザマスが正面で構える ef_001 (190F)
------------------------------------------------------
MAX_FRAME_0 = 190;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 104;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, 235.7, -0.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 233.1, -0.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 233.1, -0.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 230.4, -0.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 230.4, -0.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 227.8, -0.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 227.8, -0.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 225.1, -0.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 222.5, -0.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 219.8, -0.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 217.1, -0.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 214.5, -0.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 211.8, -0.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 209.2, -0.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 206.5, -0.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 203.9, -0.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 201.2, -0.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 198.5, -0.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 195.9, -0.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 193.2, -0.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 190.6, -0.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 187.9, -0.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 185.2, -0.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 184.8, -0.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 184.4, -0.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 184, -0.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 183.5, -0.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 183.1, -0.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 182.7, -0.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 182.2, -0.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 181.8, -0.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 181.4, -0.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 180.9, -0.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 180.9, -0.4 , 0 );

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 85 );
--画面遷移
SE002 = playSeVer2( spep_0 + 62, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE002, 87 );
--構える
SE004 = playSeVer2( spep_0 + 114, 1013, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 116, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE005, 138 );

-- ** 白フェード ** --
entryFade( spep_0 + MAX_FRAME_0 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 190

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ザマスが敵と対面～ザマスが敵を手刀 ef_002 (492F)
------------------------------------------------------
MAX_FRAME_2 = 492;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

---------------------------------------------------------------------------------------------------
-- 集中線
---------------------------------------------------------------------------------------------------
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 36, 906, 22, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 24, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0, 0 );
setEffMoveKey( spep_2 + 58, shuchusen, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 58, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 58, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 + 32 + OFFSET_X, 1, 116 );

setMoveKey( spep_2 + 0, 1, 175.3, -0.4 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 175.3, -0.4 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 175, 32 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 174.2, 32 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 172.5, 32 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 170.1, 32 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 166.9, 32 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 163.1, 32 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 158.5, 32 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 153.2, 32 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 147.1, 32 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 140, 32 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 131.8, 32 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 122.1, 32 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 109.6, 32 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 85, 32 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 85, 32 , 0 );

setScaleKey( spep_2 + 0, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.8, 2.8 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -33.4 );

-- 敵の動き2
setDisp( spep_2 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 132 + OFFSET_X, 1, 110 );

setMoveKey( spep_2 + 132 + OFFSET_X, 1, 51.1, -67.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 34.2, -67.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 22.9, -67.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 13.8, -67.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 5.9, -67.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -1.2, -67.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -7.6, -67.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -13.5, -67.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -19, -67.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -24.2, -67.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -29.1, -67.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -33.7, -67.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -38, -67.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -42.2, -67.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -46.1, -67.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -49.9, -67.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -53.4, -67.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -56.8, -67.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -60, -67.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -63.1, -67.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -66, -67.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -68.7, -67.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -71.2, -67.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -73.6, -67.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -75.7, -67.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -77.7, -67.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -79.4, -67.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -80.9, -67.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -82.1, -67.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -83, -67.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -83, -67.1 , 0 );

setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.82, 2.82 );

setRotateKey( spep_2 + 132 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -17.3 );

-- 敵の動き3
setDisp( spep_2 + 376 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 496 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 376 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 376 + OFFSET_X, 1, -152.4, -121.3 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -159.8, -121.3 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -167.1, -121.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -174.4, -121.3 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -181.7, -121.3 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -189, -121.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -189.6, -121.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -190.1, -121.3 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -190.7, -121.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -191.2, -121.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -191.8, -121.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -192.3, -121.3 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -192.9, -121.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -193.4, -121.3 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -194, -121.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -194.6, -121.3 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -195.1, -121.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -195.7, -121.3 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -196.2, -121.3 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -196.8, -121.3 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -197.3, -121.3 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -197.9, -121.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -198.4, -121.3 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -199, -121.3 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -199.6, -121.3 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -200.1, -121.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -200.7, -121.3 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -201.2, -121.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -201.8, -121.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -202.3, -121.3 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -202.9, -121.3 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -203.4, -121.3 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -204, -121.3 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -204.6, -121.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -205.1, -121.3 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -205.7, -121.3 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -206.2, -121.3 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -206.8, -121.3 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -207.3, -121.3 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -207.9, -121.3 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -208.4, -121.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -209, -121.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -209.6, -121.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -210.1, -121.3 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -210.7, -121.3 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -211.2, -121.3 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -211.8, -121.3 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -212.3, -121.3 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -212.9, -121.3 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -213.4, -121.3 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -214, -121.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -214.6, -121.3 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -215.1, -121.3 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -215.7, -121.3 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -216.2, -121.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -216.8, -121.3 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -217.3, -121.3 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -217.9, -121.3 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -218.4, -121.3 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -219, -121.3 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -219, -121.3 , 0 );

setScaleKey( spep_2 + 376 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_2 + 376 + OFFSET_X, 1, -81.7 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -82 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -82.1 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -82.4 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -82.5 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -82.6 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, -82.7 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -83 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -83.2 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -83.3 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -83.4 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -83.6 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -83.7 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -83.9 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, -84.2 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -84.3 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, -84.4 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -84.7 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -84.8 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, -84.9 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, -85 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -85.1 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -85.3 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -85.4 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -85.5 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, -85.6 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -85.8 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -86.1 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -86.2 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -86.4 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -86.5 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -86.6 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, -86.7 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -86.9 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -87.1 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, -87.2 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -87.3 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, -87.5 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, -87.6 );
setRotateKey( spep_2 + 474 + OFFSET_X, 1, -87.7 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, -87.8 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, -87.9 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, -88.1 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, -88.2 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, -88.3 );
setRotateKey( spep_2 + 486 + OFFSET_X, 1, -88.4 );
setRotateKey( spep_2 + 488 + OFFSET_X, 1, -88.6 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, -88.7 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, -88.8 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, -88.9 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, -88.9 );

-- ** 音 ** --
--敵向かってくる
SE007 = playSeVer2( spep_2 + 34, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 34, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 34, SE008, 39 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--かわす
SE009 = playSeVer2( spep_2 + 132, 1278, "",spep_2 + 268, 14, 54, -1);
setSeVolumeByWorkId( spep_2 + 132, SE009, 61 );
setStartTimeMs( SE009,  1400 );
setPitch( spep_2 + 132, SE009, 400 );
setTimeStretch( SE009, 1.27, 30, 4 );
SE013 = playSeVer2( spep_2 + 124, 1119, "",spep_2 + 210, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 124, SE013, 56 );
SE014 = playSeVer2( spep_2 + 126, 1027, "", 0, 0, 0, -1);
--画面遷移
SE010 = playSeVer2( spep_2 + 56, 8, "", 0, 0, 0, -1);
--受け止める
SE011 = playSeVer2( spep_2 + 94, 1012, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 94, 1170, "", 0, 0, 0, -1);
--手刀光る
SE015 = playSeVer2( spep_2 + 198, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 216, 1264, "",spep_2 + 322, 14, 62, 0.6);
setSeVolumeByWorkId( spep_2 + 216, SE016, 55 );
setStartTimeMs( SE016,  167 );
SE017 = playSeVer2( spep_2 + 216, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE017, 123 );
SE018 = playSeVer2( spep_2 + 216, 1282, "",spep_2 + 342, 0, 78, -1);
setSeVolumeByWorkId( spep_2 + 216, SE018, 86 );
setPitch( spep_2 + 216, SE018, -1000 );
setTimeStretch( SE018, 0.33, 30, 4 );
SE019 = playSeVer2( spep_2 + 216, 1374, "",spep_2 + 300, 0, 26, -1);
--斬る
SE020 = playSeVer2( spep_2 + 318, 1143, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 318, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE021, 85 );
SE022 = playSeVer2( spep_2 + 324, 1032, "", 0, 0, 0, -1);
--爆発
SE023 = playSeVer2( spep_2 + 370, 1263, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 378, 1114, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 378, 1024, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 386, 1052, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 388 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 492

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ザマスが敵と対面～ザマスが正面で構える ef_001 (190F)
------------------------------------------------------
MAX_FRAME_0 = 190;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 104;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 1 + OFFSET_X, 1, 235.7, -0.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 233.1, -0.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 233.1, -0.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 230.4, -0.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 230.4, -0.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 227.8, -0.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 227.8, -0.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 225.1, -0.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 222.5, -0.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 219.8, -0.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 217.1, -0.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 214.5, -0.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 211.8, -0.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 209.2, -0.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 206.5, -0.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 203.9, -0.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 201.2, -0.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 198.5, -0.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 195.9, -0.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 193.2, -0.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 190.6, -0.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 187.9, -0.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 185.2, -0.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 184.8, -0.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 184.4, -0.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 184, -0.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 183.5, -0.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 183.1, -0.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 182.7, -0.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 182.2, -0.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 181.8, -0.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 181.4, -0.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 180.9, -0.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 180.9, -0.4 , 0 );

setScaleKey( spep_0 + 1 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 1.06, 1.06 );

setRotateKey( spep_0 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 85 );
--画面遷移
SE002 = playSeVer2( spep_0 + 62, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE002, 87 );
--構える
SE004 = playSeVer2( spep_0 + 114, 1013, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 116, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE005, 138 );

-- ** 白フェード ** --
entryFade( spep_0 + MAX_FRAME_0 - 8, 8, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 190

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ザマスが敵と対面～ザマスが敵を手刀 ef_002 (492F)
------------------------------------------------------
MAX_FRAME_2 = 492;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

---------------------------------------------------------------------------------------------------
-- 集中線
---------------------------------------------------------------------------------------------------
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 36, 906, 22, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 24, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0, 0 );
setEffMoveKey( spep_2 + 58, shuchusen, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 58, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 58, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 + 32 + OFFSET_X, 1, 116 );

setMoveKey( spep_2 + 0, 1, 175.3, -0.4 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 175.3, -0.4 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 175, 32 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 174.2, 32 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 172.5, 32 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 170.1, 32 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 166.9, 32 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 163.1, 32 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 158.5, 32 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 153.2, 32 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 147.1, 32 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 140, 32 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 131.8, 32 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 122.1, 32 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 109.6, 32 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 85, 32 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 85, 32 , 0 );

setScaleKey( spep_2 + 0, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.8, 2.8 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -33.4 );

-- 敵の動き2
setDisp( spep_2 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 132 + OFFSET_X, 1, 110 );

setMoveKey( spep_2 + 132 + OFFSET_X, 1, 51.1, -67.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 34.2, -67.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 22.9, -67.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 13.8, -67.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 5.9, -67.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -1.2, -67.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -7.6, -67.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -13.5, -67.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -19, -67.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -24.2, -67.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -29.1, -67.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -33.7, -67.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -38, -67.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -42.2, -67.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -46.1, -67.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -49.9, -67.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -53.4, -67.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -56.8, -67.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -60, -67.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -63.1, -67.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -66, -67.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -68.7, -67.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -71.2, -67.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -73.6, -67.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -75.7, -67.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -77.7, -67.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -79.4, -67.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -80.9, -67.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -82.1, -67.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -83, -67.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -83, -67.1 , 0 );

setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.82, 2.82 );

setRotateKey( spep_2 + 132 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -17.3 );

-- 敵の動き3
setDisp( spep_2 + 376 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 496 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 376 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 376 + OFFSET_X, 1, -152.4, -121.3 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -159.8, -121.3 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -167.1, -121.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -174.4, -121.3 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -181.7, -121.3 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -189, -121.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -189.6, -121.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -190.1, -121.3 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -190.7, -121.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -191.2, -121.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -191.8, -121.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -192.3, -121.3 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -192.9, -121.3 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -193.4, -121.3 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -194, -121.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -194.6, -121.3 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -195.1, -121.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -195.7, -121.3 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -196.2, -121.3 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -196.8, -121.3 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -197.3, -121.3 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -197.9, -121.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -198.4, -121.3 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -199, -121.3 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -199.6, -121.3 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -200.1, -121.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -200.7, -121.3 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -201.2, -121.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -201.8, -121.3 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -202.3, -121.3 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -202.9, -121.3 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -203.4, -121.3 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -204, -121.3 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -204.6, -121.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -205.1, -121.3 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -205.7, -121.3 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -206.2, -121.3 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -206.8, -121.3 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -207.3, -121.3 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -207.9, -121.3 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -208.4, -121.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -209, -121.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -209.6, -121.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -210.1, -121.3 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -210.7, -121.3 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -211.2, -121.3 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -211.8, -121.3 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -212.3, -121.3 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -212.9, -121.3 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -213.4, -121.3 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -214, -121.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -214.6, -121.3 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -215.1, -121.3 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -215.7, -121.3 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -216.2, -121.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -216.8, -121.3 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -217.3, -121.3 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -217.9, -121.3 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -218.4, -121.3 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -219, -121.3 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -219, -121.3 , 0 );

setScaleKey( spep_2 + 376 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_2 + 376 + OFFSET_X, 1, -81.7 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -82 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -82.1 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -82.4 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -82.5 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -82.6 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, -82.7 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -83 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -83.2 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -83.3 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -83.4 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -83.6 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -83.7 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -83.9 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, -84.2 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -84.3 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, -84.4 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -84.7 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -84.8 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, -84.9 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, -85 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -85.1 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -85.3 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -85.4 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -85.5 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, -85.6 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -85.8 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -86.1 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -86.2 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -86.4 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -86.5 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -86.6 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, -86.7 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -86.9 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -87.1 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, -87.2 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -87.3 );
setRotateKey( spep_2 + 470 + OFFSET_X, 1, -87.5 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, -87.6 );
setRotateKey( spep_2 + 474 + OFFSET_X, 1, -87.7 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, -87.8 );
setRotateKey( spep_2 + 478 + OFFSET_X, 1, -87.9 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, -88.1 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, -88.2 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, -88.3 );
setRotateKey( spep_2 + 486 + OFFSET_X, 1, -88.4 );
setRotateKey( spep_2 + 488 + OFFSET_X, 1, -88.6 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, -88.7 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, -88.8 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, -88.9 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, -88.9 );

-- ** 音 ** --
--敵向かってくる
SE007 = playSeVer2( spep_2 + 34, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 34, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 34, SE008, 39 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--かわす
SE009 = playSeVer2( spep_2 + 132, 1278, "",spep_2 + 268, 14, 54, -1);
setSeVolumeByWorkId( spep_2 + 132, SE009, 61 );
setStartTimeMs( SE009,  1400 );
setPitch( spep_2 + 132, SE009, 400 );
setTimeStretch( SE009, 1.27, 30, 4 );
SE013 = playSeVer2( spep_2 + 124, 1119, "",spep_2 + 210, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 124, SE013, 56 );
SE014 = playSeVer2( spep_2 + 126, 1027, "", 0, 0, 0, -1);
--画面遷移
SE010 = playSeVer2( spep_2 + 56, 8, "", 0, 0, 0, -1);
--受け止める
SE011 = playSeVer2( spep_2 + 94, 1012, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 94, 1170, "", 0, 0, 0, -1);
--手刀光る
SE015 = playSeVer2( spep_2 + 198, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 212, 1264, "",spep_2 + 322, 14, 62, 0.6);
setSeVolumeByWorkId( spep_2 + 212, SE016, 55 );
setStartTimeMs( SE016,  167 );
SE017 = playSeVer2( spep_2 + 212, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE017, 123 );
SE018 = playSeVer2( spep_2 + 212, 1282, "",spep_2 + 342, 0, 78, -1);
setSeVolumeByWorkId( spep_2 + 212, SE018, 86 );
setPitch( spep_2 + 212, SE018, -1000 );
setTimeStretch( SE018, 0.33, 30, 4 );
SE019 = playSeVer2( spep_2 + 212, 1374, "",spep_2 + 300, 0, 26, -1);
--斬る
SE020 = playSeVer2( spep_2 + 318, 1143, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 318, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE021, 85 );
SE022 = playSeVer2( spep_2 + 324, 1032, "", 0, 0, 0, -1);
--爆発
SE023 = playSeVer2( spep_2 + 370, 1263, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 378, 1114, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 378, 1024, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 386, 1052, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 388 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 492

end
