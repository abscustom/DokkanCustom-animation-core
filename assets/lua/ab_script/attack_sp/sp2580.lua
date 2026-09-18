-- 4026920: 超フルパワーサイヤ人４孫悟空_１０倍かめはめ波
-- sp_effect_a1_00404
-- sp2580

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 共通
SP_001 = 162051;  -- 前半 ef_001
SP_002 = 162053;  -- 後半 ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

--changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
--setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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
--[[
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
]]
ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 前半 ef_001 (160F)
------------------------------------------------------
MAX_FRAME_0 = 160;

setupMovie(0, SP_001, 0, 1);

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );

spep_x = spep_0 + 72;
  
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 1.6, 169 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 1.6, 167 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 1.6, 167 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 1.6, 164.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 1.6, 164.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 1.6, 162.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 1.6, 162.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 1.6, 160.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 1.6, 158.7 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 1.6, 156.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 1.6, 154.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 1.6, 152.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 1.6, 150.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 1.6, 148.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 1.6, 146.3 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 1.6, 144.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 1.6, 142.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 1.6, 140.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 1.6, 138 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 1.6, 135.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 1.6, 133.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 1.6, 131.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 1.6, 129.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 1.6, 127.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 1.6, 125.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 1.6, 123.5 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 1.6, 121.5 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 1.6, 119.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 1.6, 117.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 1.6, 115.3 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 1.6, 113.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 1.6, 111.1 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 1.6, 109 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 1.6, 109 , 0 );

setScaleKey( spep_0 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 196, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 198, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 40 );

--オーラ
SE004 = playSeVer2( spep_0 + 0, 1271, "",spep_0 + 198, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 49 );
setPitch( spep_0 + 0, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 160

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 後半 ef_002 (1052F)
------------------------------------------------------
MAX_FRAME_2 = 1052;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 66 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 126 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 264 + OFFSET_X, 1, 0 );

setDisp( spep_2 + 772 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 850 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 66 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 224 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 66 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 252.2, 53.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 252.2, 53.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 252.2, 51.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 252.2, 71.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 252.2, 71.9 , 0 );
--
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 36.1, 20.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 36.1, 20.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 36.1, 40.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 36.1, 40.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 36.1, 20.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 36.1, 20.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 36.1, 20.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 36.1, 40.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 36.1, 40.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 36.1, 20.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 36.1, 20.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 36.1, 40.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 36.1, 40.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 36.1, 20.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 36.1, 20.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 36.1, 20.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 36.1, 40.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 36.1, 40.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 55.8, 35.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 55.8, 55.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 55.8, 35.9 , 0 );
--
setMoveKey( spep_2 + 772 + OFFSET_X, 1, 109.2, 1.6 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, 109.2, 1.6 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, 104.8, -6.6 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, 104.8, -6.6 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, 112.5, 0.2 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, 112.5, 0.2 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, 76.8, -11.9 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, 76.8, -11.9 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, 79.8, -5.5 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, 79.8, -5.5 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, 78.8, -12.1 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, 78.8, -12.1 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, 47.9, -25.6 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, 47.9, -25.6 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, 24.7, -31.1 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, 24.7, -31.1 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, 4.5, -36 , 0 );
setMoveKey( spep_2 + 801 + OFFSET_X, 1, 4.5, -36 , 0 );
setMoveKey( spep_2 + 802 + OFFSET_X, 1, -13, -40.2 , 0 );
setMoveKey( spep_2 + 807 + OFFSET_X, 1, -13, -40.2 , 0 );
setMoveKey( spep_2 + 808 + OFFSET_X, 1, -28.1, -43.8 , 0 );
setMoveKey( spep_2 + 813 + OFFSET_X, 1, -28.1, -43.8 , 0 );
setMoveKey( spep_2 + 814 + OFFSET_X, 1, -41.1, -47 , 0 );
setMoveKey( spep_2 + 819 + OFFSET_X, 1, -41.1, -47 , 0 );
setMoveKey( spep_2 + 820 + OFFSET_X, 1, -52.5, -49.7 , 0 );
setMoveKey( spep_2 + 825 + OFFSET_X, 1, -52.5, -49.7 , 0 );
setMoveKey( spep_2 + 826 + OFFSET_X, 1, -62.4, -52.1 , 0 );
setMoveKey( spep_2 + 831 + OFFSET_X, 1, -62.4, -52.1 , 0 );
setMoveKey( spep_2 + 832 + OFFSET_X, 1, -83.2, -57.1 , 0 );
setMoveKey( spep_2 + 837 + OFFSET_X, 1, -83.2, -57.1 , 0 );
setMoveKey( spep_2 + 838 + OFFSET_X, 1, -95.7, -60.1 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, -95.7, -60.1 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, -99.8, -61.1 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, -99.8, -61.1 , 0 );

setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.17, 0.17 );
--
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 2.85, 2.85 );
--
setScaleKey( spep_2 + 772 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 777 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 778 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 783 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 784 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 789 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 790 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 795 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 796 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 801 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 802 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 807 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 808 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 813 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 814 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 819 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 820 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 825 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 826 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 831 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 832 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 837 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 838 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 843 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 844 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 850 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 66 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 0 );
--
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -45 );
--
setRotateKey( spep_2 + 772 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_2 + 850 + OFFSET_X, 1, -45.1 );

setBlendColor( spep_2 + 772 + OFFSET_X, 1, 3, 1.0, 0, 0, 0.2);
setBlendColor( spep_2 + 772 + OFFSET_X , 1, 3, 1.0, 0, 0, 0.2);
setBlendColor( spep_2 + 830 + OFFSET_X , 1, 3, 1.0, 0, 0, 0.2);
setBlendColor( spep_2 + 836 + OFFSET_X , 1, 3, 1.0, 0, 0, 0.3);
setBlendColor( spep_2 + 842 + OFFSET_X , 1, 3, 1.0, 0, 0, 0.4);
setBlendColor( spep_2 + 850 + OFFSET_X , 1, 3, 1.0, 0, 0, 0);


-- ** 音 ** --
--気を高める
SE007 = playSeVer2( spep_2 + 6, 1265, "",spep_2 + 182, 6, 104, 0.6);
setStartTimeMs( SE007,  367 );
setPitch( spep_2 + 6, SE007, -500 );
setTimeStretch( SE007, 0.67, 30, 4 );
SE008 = playSeVer2( spep_2 + 8, 1311, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 8, 1068, "", 0, 24, 0, -1);
SE010 = playSeVer2( spep_2 + 8, 1025, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE010, 81 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--俯瞰になる
SE011 = playSeVer2( spep_2 + 84, 1158, "",spep_2 + 226, 6, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 84, SE011, 200 );
setStartTimeMs( SE011,  800 );
SE012 = playSeVer2( spep_2 + 60, 1148, "",spep_2 + 148, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 60, SE012, 48 );
SE013 = playSeVer2( spep_2 + 60, 1226, "",spep_2 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 60, SE013, 61 );

--気大きくなる
SE014 = playSeVer2( spep_2 + 82, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE014, 84 );
SE015 = playSeVer2( spep_2 + 82, 1011, "", 0, 0, 0, -1);

--顔アップでオーラ高める
SE016 = playSeVer2( spep_2 + 118, 1356, "",spep_2 + 342, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 118, SE016, 81 );
SE017 = playSeVer2( spep_2 + 118, 1176, "",spep_2 + 234, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 118, SE017, 75 );
SE018 = playSeVer2( spep_2 + 118, 1226, "",spep_2 + 340, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 118, SE018, 25 );
SE019 = playSeVer2( spep_2 + 118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE019, 40 );
SE020 = playSeVer2( spep_2 + 142, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 142, SE020, 40 );
SE021 = playSeVer2( spep_2 + 166, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 166, SE021, 40 );
SE022 = playSeVer2( spep_2 + 190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE022, 40 );

--敵飲み込まれる
SE023 = playSeVer2( spep_2 + 210, 1258, "",spep_2 + 318, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 210, SE023, 71 );
SE024 = playSeVer2( spep_2 + 216, 1027, "", 0, 0, 0, -1);

--オーラ背景
SE025 = playSeVer2( spep_2 + 260, 1176, "",spep_2 + 310, 0, 16, -1);
SE026 = playSeVer2( spep_2 + 260, 1226, "",spep_2 + 310, 0, 16, -1);

--丸まる
SE027 = playSeVer2( spep_2 + 266, 1004, "", 0, 0, 0, -1);

--気を爆発させる
SE028 = playSeVer2( spep_2 + 290, 1126, "", 0, 0, 0, 0.6);
setPitch( spep_2 + 290, SE028, -500 );
setTimeStretch( SE028, 0.67, 30, 4 );
SE029 = playSeVer2( spep_2 + 294, 1120, "", 0, 0, 0, -1);
setPitch( spep_2 + 294, SE029, -800 );
setTimeStretch( SE029, 0.47, 30, 4 );
SE030 = playSeVer2( spep_2 + 294, 1205, "", 0, 0, 0, 0.6);
SE031 = playSeVer2( spep_2 + 298, 1114, "", 0, 0, 0, -1);

--気さらに大きくなる
SE032 = playSeVer2( spep_2 + 334, 1147, "",spep_2 + 470, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 334, SE032, 74 );
SE033 = playSeVer2( spep_2 + 334, 1068, "", 0, 0, 0, -1);

--気爆発する
SE034 = playSeVer2( spep_2 + 382, 1067, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 382, 1159, "",spep_2 + 632, 0, 158, -1);

--環境音
SE036 = playSeVer2( spep_2 + 454, 1269, "",spep_2 + 702, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 454, SE036, 20 );

--着地
SE037 = playSeVer2( spep_2 + 454, 63, "",spep_2 + 498, 0, 20, -1);
SE038 = playSeVer2( spep_2 + 478, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 478, SE038, 155 );
SE039 = playSeVer2( spep_2 + 496, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE039, 135 );

--構え始める
SE040 = playSeVer2( spep_2 + 514, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 514, SE040, 65 );

--かめはめ波溜め
SE041 = playSeVer2( spep_2 + 624, 1210, "",spep_2 + 734, 30, 24, -1);
setStartTimeMs( SE041,  1400 );

--腕合わせる
SE042 = playSeVer2( spep_2 + 552, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 552, SE042, 67 );
SE043 = playSeVer2( spep_2 + 556, 1189, "", 0, 0, 0, -1);

--構える
SE044 = playSeVer2( spep_2 + 588, 1116, "",spep_2 + 602, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 588, SE044, 63 );
SE045 = playSeVer2( spep_2 + 588, 1004, "",spep_2 + 608, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 588, SE045, 85 );

--かめはめ波溜め
SE046 = playSeVer2( spep_2 + 620, 1209, "",spep_2 + 732, 0, 26, -1);

--振り返る
SE047 = playSeVer2( spep_2 + 662, 1116, "",spep_2 + 702, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 662, SE047, 74 );

--かめはめ波発射
SE048 = playSeVer2( spep_2 + 692, 1285, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 696, 1133, "",spep_2 + 816, 0, 48, -1);
SE050 = playSeVer2( spep_2 + 696, 1146, "",spep_2 + 854, 0, 42, -1);
SE051 = playSeVer2( spep_2 + 696, 1284, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 700, 1213, "",spep_2 + 976, 0, 70, -1);
setSeVolumeByWorkId( spep_2 + 700, SE052, 82 );

--かめはめ波向かってくる
SE053 = playSeVer2( spep_2 + 752, 1215, "",spep_2 + 982, 48, 94, -1);
setStartTimeMs( SE053,  400 );
SE054 = playSeVer2( spep_2 + 770, 1044, "",spep_2 + 980, 86, 82, -1);
setSeVolumeByWorkId( spep_2 + 770, SE054, 224 );
SE055 = playSeVer2( spep_2 + 770, 1211, "",spep_2 + 978, 88, 80, -1);
setSeVolumeByWorkId( spep_2 + 770, SE055, 224 );

--余韻
SE056 = playSeVer2( spep_2 + 852, 1168, "", 0, 42, 0, -1);
setStartTimeMs( SE056,  1100 );

--爆発
SE057 = playSeVer2( spep_2 + 838, 1067, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 838, 1159, "",spep_2 + 986, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 838, SE058, 87 );
SE059 = playSeVer2( spep_2 + 838, 1156, "",spep_2 + 982, 0, 64, -1);

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_2 + 854 );
endPhase( spep_2 +  976 );  

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 前半 ef_001 (160F)
------------------------------------------------------
MAX_FRAME_0 = 160;

setupMovie(0, SP_001, 0, 1);

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );

spep_x = spep_0 + 72;
  
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
]]
--顔カットイン
-- SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 0, 1, 0 );

setMoveKey( spep_0 + 0, 1, -1.6, 169 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -1.6, 167 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -1.6, 167 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -1.6, 164.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -1.6, 164.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -1.6, 162.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -1.6, 162.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -1.6, 160.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -1.6, 158.7 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -1.6, 156.6 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -1.6, 154.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -1.6, 152.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -1.6, 150.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -1.6, 148.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -1.6, 146.3 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -1.6, 144.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -1.6, 142.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -1.6, 140.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -1.6, 138 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -1.6, 135.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -1.6, 133.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -1.6, 131.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -1.6, 129.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -1.6, 127.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -1.6, 125.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -1.6, 123.5 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -1.6, 121.5 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -1.6, 119.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -1.6, 117.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -1.6, 115.3 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -1.6, 113.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -1.6, 111.1 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -1.6, 109 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -1.6, 109 , 0 );

setScaleKey( spep_0 + 0, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 196, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 198, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 40 );

--オーラ
SE004 = playSeVer2( spep_0 + 0, 1271, "",spep_0 + 198, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 49 );
setPitch( spep_0 + 0, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 160

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 後半 ef_002 (1052F)
------------------------------------------------------
MAX_FRAME_2 = 1052;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 66 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 126 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 264 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 772 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 850 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 66 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 224 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 772 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 66 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -252.2, 53.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -252.2, 53.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -252.2, 51.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -252.2, 71.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -252.2, 71.9 , 0 );
--
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -36.1, 20.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -36.1, 20.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -36.1, 40.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -36.1, 40.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -36.1, 20.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -36.1, 20.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -36.1, 20.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -36.1, 40.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -36.1, 40.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -36.1, 20.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -36.1, 20.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -36.1, 40.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -36.1, 40.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -36.1, 20.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -36.1, 20.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -36.1, 20.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -36.1, 40.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -36.1, 40.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -55.8, 35.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -55.8, 55.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -55.8, 35.9 , 0 );
--
setMoveKey( spep_2 + 772 + OFFSET_X, 1, -109.2, 1.6 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, -109.2, 1.6 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, -104.8, -6.6 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, -104.8, -6.6 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, -112.5, 0.2 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, -112.5, 0.2 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, -76.8, -11.9 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, -76.8, -11.9 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, -79.8, -5.5 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, -79.8, -5.5 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, -78.8, -12.1 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, -78.8, -12.1 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, -47.9, -25.6 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, -47.9, -25.6 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, -24.7, -31.1 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, -24.7, -31.1 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, -4.5, -36 , 0 );
setMoveKey( spep_2 + 801 + OFFSET_X, 1, -4.5, -36 , 0 );
setMoveKey( spep_2 + 802 + OFFSET_X, 1, 13, -40.2 , 0 );
setMoveKey( spep_2 + 807 + OFFSET_X, 1, 13, -40.2 , 0 );
setMoveKey( spep_2 + 808 + OFFSET_X, 1, 28.1, -43.8 , 0 );
setMoveKey( spep_2 + 813 + OFFSET_X, 1, 28.1, -43.8 , 0 );
setMoveKey( spep_2 + 814 + OFFSET_X, 1, 41.1, -47 , 0 );
setMoveKey( spep_2 + 819 + OFFSET_X, 1, 41.1, -47 , 0 );
setMoveKey( spep_2 + 820 + OFFSET_X, 1, 52.5, -49.7 , 0 );
setMoveKey( spep_2 + 825 + OFFSET_X, 1, 52.5, -49.7 , 0 );
setMoveKey( spep_2 + 826 + OFFSET_X, 1, 62.4, -52.1 , 0 );
setMoveKey( spep_2 + 831 + OFFSET_X, 1, 62.4, -52.1 , 0 );
setMoveKey( spep_2 + 832 + OFFSET_X, 1, 83.2, -57.1 , 0 );
setMoveKey( spep_2 + 837 + OFFSET_X, 1, 83.2, -57.1 , 0 );
setMoveKey( spep_2 + 838 + OFFSET_X, 1, 95.7, -60.1 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, 95.7, -60.1 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, 99.8, -61.1 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, 99.8, -61.1 , 0 );

setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.17, 0.17 );
--
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 2.85, 2.85 );
--
setScaleKey( spep_2 + 772 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 777 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 778 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 783 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 784 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 789 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 790 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 795 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 796 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 801 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 802 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 807 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 808 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 813 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 814 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 819 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 820 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 825 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 826 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 831 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 832 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 837 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 838 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 843 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 844 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 850 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 66 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 0 );
--
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 45 );
--
setRotateKey( spep_2 + 772 + OFFSET_X, 1, 45.1 );
setRotateKey( spep_2 + 850 + OFFSET_X, 1, 45.1 );

setBlendColor( spep_2 + 772 + OFFSET_X, 1, 3, 1.0, 0, 0, 0.2);
setBlendColor( spep_2 + 772 + OFFSET_X , 1, 3, 1.0, 0, 0, 0.2);
setBlendColor( spep_2 + 830 + OFFSET_X , 1, 3, 1.0, 0, 0, 0.2);
setBlendColor( spep_2 + 836 + OFFSET_X , 1, 3, 1.0, 0, 0, 0.3);
setBlendColor( spep_2 + 842 + OFFSET_X , 1, 3, 1.0, 0, 0, 0.4);
setBlendColor( spep_2 + 850 + OFFSET_X , 1, 3, 1.0, 0, 0, 0);


-- ** 音 ** --
--気を高める
SE007 = playSeVer2( spep_2 + 6, 1265, "",spep_2 + 182, 6, 104, 0.6);
setStartTimeMs( SE007,  367 );
setPitch( spep_2 + 6, SE007, -500 );
setTimeStretch( SE007, 0.67, 30, 4 );
SE008 = playSeVer2( spep_2 + 8, 1311, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 8, 1068, "", 0, 24, 0, -1);
SE010 = playSeVer2( spep_2 + 8, 1025, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE010, 81 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_2 + 80; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--俯瞰になる
SE011 = playSeVer2( spep_2 + 84, 1158, "",spep_2 + 226, 6, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 84, SE011, 200 );
setStartTimeMs( SE011,  800 );
SE012 = playSeVer2( spep_2 + 60, 1148, "",spep_2 + 148, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 60, SE012, 48 );
SE013 = playSeVer2( spep_2 + 60, 1226, "",spep_2 + 146, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 60, SE013, 61 );

--気大きくなる
SE014 = playSeVer2( spep_2 + 82, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE014, 84 );
SE015 = playSeVer2( spep_2 + 82, 1011, "", 0, 0, 0, -1);

--顔アップでオーラ高める
SE016 = playSeVer2( spep_2 + 118, 1356, "",spep_2 + 342, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 118, SE016, 81 );
SE017 = playSeVer2( spep_2 + 118, 1176, "",spep_2 + 234, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 118, SE017, 75 );
SE018 = playSeVer2( spep_2 + 118, 1226, "",spep_2 + 340, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 118, SE018, 25 );
SE019 = playSeVer2( spep_2 + 118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE019, 40 );
SE020 = playSeVer2( spep_2 + 142, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 142, SE020, 40 );
SE021 = playSeVer2( spep_2 + 166, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 166, SE021, 40 );
SE022 = playSeVer2( spep_2 + 190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 190, SE022, 40 );

--敵飲み込まれる
SE023 = playSeVer2( spep_2 + 210, 1258, "",spep_2 + 318, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 210, SE023, 71 );
SE024 = playSeVer2( spep_2 + 216, 1027, "", 0, 0, 0, -1);

--オーラ背景
SE025 = playSeVer2( spep_2 + 260, 1176, "",spep_2 + 310, 0, 16, -1);
SE026 = playSeVer2( spep_2 + 260, 1226, "",spep_2 + 310, 0, 16, -1);

--丸まる
SE027 = playSeVer2( spep_2 + 266, 1004, "", 0, 0, 0, -1);

--気を爆発させる
SE028 = playSeVer2( spep_2 + 290, 1126, "", 0, 0, 0, 0.6);
setPitch( spep_2 + 290, SE028, -500 );
setTimeStretch( SE028, 0.67, 30, 4 );
SE029 = playSeVer2( spep_2 + 294, 1120, "", 0, 0, 0, -1);
setPitch( spep_2 + 294, SE029, -800 );
setTimeStretch( SE029, 0.47, 30, 4 );
SE030 = playSeVer2( spep_2 + 294, 1205, "", 0, 0, 0, 0.6);
SE031 = playSeVer2( spep_2 + 298, 1114, "", 0, 0, 0, -1);

--気さらに大きくなる
SE032 = playSeVer2( spep_2 + 334, 1147, "",spep_2 + 470, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 334, SE032, 74 );
SE033 = playSeVer2( spep_2 + 334, 1068, "", 0, 0, 0, -1);

--気爆発する
SE034 = playSeVer2( spep_2 + 382, 1067, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 382, 1159, "",spep_2 + 632, 0, 158, -1);

--環境音
SE036 = playSeVer2( spep_2 + 454, 1269, "",spep_2 + 702, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 454, SE036, 20 );

--着地
SE037 = playSeVer2( spep_2 + 454, 63, "",spep_2 + 498, 0, 20, -1);
SE038 = playSeVer2( spep_2 + 478, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 478, SE038, 155 );
SE039 = playSeVer2( spep_2 + 496, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE039, 135 );

--構え始める
SE040 = playSeVer2( spep_2 + 514, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 514, SE040, 65 );

--かめはめ波溜め
SE041 = playSeVer2( spep_2 + 624, 1210, "",spep_2 + 734, 30, 24, -1);
setStartTimeMs( SE041,  1400 );

--腕合わせる
SE042 = playSeVer2( spep_2 + 552, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 552, SE042, 67 );
SE043 = playSeVer2( spep_2 + 556, 1189, "", 0, 0, 0, -1);

--構える
SE044 = playSeVer2( spep_2 + 588, 1116, "",spep_2 + 602, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 588, SE044, 63 );
SE045 = playSeVer2( spep_2 + 588, 1004, "",spep_2 + 608, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 588, SE045, 85 );

--かめはめ波溜め
SE046 = playSeVer2( spep_2 + 620, 1209, "",spep_2 + 732, 0, 26, -1);

--振り返る
SE047 = playSeVer2( spep_2 + 662, 1116, "",spep_2 + 702, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 662, SE047, 74 );

--かめはめ波発射
SE048 = playSeVer2( spep_2 + 692, 1285, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 696, 1133, "",spep_2 + 816, 0, 48, -1);
SE050 = playSeVer2( spep_2 + 696, 1146, "",spep_2 + 854, 0, 42, -1);
SE051 = playSeVer2( spep_2 + 696, 1284, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 700, 1213, "",spep_2 + 976, 0, 70, -1);
setSeVolumeByWorkId( spep_2 + 700, SE052, 82 );

--かめはめ波向かってくる
SE053 = playSeVer2( spep_2 + 752, 1215, "",spep_2 + 982, 48, 94, -1);
setStartTimeMs( SE053,  400 );
SE054 = playSeVer2( spep_2 + 770, 1044, "",spep_2 + 980, 86, 82, -1);
setSeVolumeByWorkId( spep_2 + 770, SE054, 224 );
SE055 = playSeVer2( spep_2 + 770, 1211, "",spep_2 + 978, 88, 80, -1);
setSeVolumeByWorkId( spep_2 + 770, SE055, 224 );

--余韻
SE056 = playSeVer2( spep_2 + 852, 1168, "", 0, 42, 0, -1);
setStartTimeMs( SE056,  1100 );

--爆発
SE057 = playSeVer2( spep_2 + 838, 1067, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 838, 1159, "",spep_2 + 986, 0, 66, -1);
setSeVolumeByWorkId( spep_2 + 838, SE058, 87 );
SE059 = playSeVer2( spep_2 + 838, 1156, "",spep_2 + 982, 0, 64, -1);

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_2 + 854 );
endPhase( spep_2 + 976 - 4 );

end
