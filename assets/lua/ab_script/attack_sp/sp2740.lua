--1029330:UR_アックマン_必殺技：デーモンフォークラッシュ
--sp_effect_a1_00449
--sp2740

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵味方共通)
SP_01  = 163048;  --ef_001  構え
SP_02  = 163049;  --ef_002  ラッシュ〜フィニッシュ
SP_02b = 163050;  --ef_002b ラッシュ〜フィニッシュ


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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 構え
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 構え(ef_001)
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
spep_x = spep_0 + 32;

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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 39 );

--腕上げ音
SE002 = playSeVer2( spep_0 + 14, 1003, "", 0, 0, 0, -1);

--槍出現音
SE004 = playSeVer2( spep_0 + 42, 1291, "", 0, 0, 0, -1);

--槍発光音
SE005 = playSeVer2( spep_0 + 66, 1221, "",spep_0 + 138, 0, 36, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --116f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- ラッシュ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 388;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ラッシュ〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ラッシュ〜フィニッシュ(ef_002b)
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
setDisp( spep_2 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 90 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, -11.7, -12 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -11.7, -12 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 8.7, -14.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 8.7, -14.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -9.1, -11.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -9.1, -11.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -27.3, -1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -27.3, -1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -15.5, -12.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -15.5, -12.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 11.9, -5.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 11.9, -5.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -14.4, -8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -14.4, -8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -41.5, -19.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -41.5, -19.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -14.7, -12.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -14.7, -12.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 2.4, -24.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 2.4, -24.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -12.3, -6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -12.3, -6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -41.7, 0.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -41.7, 0.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -6.8, -11.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -6.8, -11.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 16.5, 17.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 16.5, 17.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -11, -16.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -11, -16.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -34.6, 5.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -34.6, 5.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -14.5, -9.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -14.5, -9.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 1.9, -18.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 1.9, -18.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -14.4, -9.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -14.4, -9.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -80.2, -1.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -80.2, -1.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -11.7, -12 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -11.7, -12 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 8.7, -14.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 8.7, -14.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -9.1, -11.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -9.1, -11.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -27.3, -1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -27.3, -1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -15.5, -12.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -15.5, -12.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 11.9, -5.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 11.9, -5.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -14.4, -8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -14.4, -8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -41.5, -19.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -41.5, -19.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -14.7, -12.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -14.7, -12.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 2.4, -24.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 2.4, -24.3 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.03, 2.03 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -42.3 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -32.9 );

--敵の動き2
setDisp( spep_2 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 388 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 270 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 294 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 270 + OFFSET_X, 1, -618.5, -1628.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -618.5, -1628.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -496.8, -1375.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -496.8, -1375.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -390.6, -1141.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -390.6, -1141.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -299, -927.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -299, -927.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -220.9, -735.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -220.9, -735.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -155.3, -566.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -155.3, -566.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -101.3, -421 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -101.3, -421 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -58.3, -301.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -58.3, -301.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -25.4, -207.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -25.4, -207.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -2.4, -139.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -2.4, -139.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 11.3, -98.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 11.3, -98.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 15.9, -85.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 15.9, -85.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 27, -95.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 27, -95.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 36.9, -92.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 36.9, -92.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 15.8, -89.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 15.8, -89.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -5.5, -87.4 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -5.5, -87.4 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -1.5, -85.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -1.5, -85.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 8.2, -84.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 8.2, -84.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 12.1, -83.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 12.1, -83.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 11.5, -82.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 11.5, -82.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 9.5, -82.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 9.5, -82.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 5.8, -85.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 5.8, -85.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 2.2, -87.4 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 2.2, -87.4 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -0.1, -89.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -0.1, -89.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -1, -91 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -1, -91 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -1.1, -92.3 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -1.1, -92.3 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -1.3, -93.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -1.3, -93.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -1.4, -94.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -1.4, -94.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -1.4, -94.5 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -1.4, -94.5 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -1.5, -94.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -1.5, -94.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -1.5, -94.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -1.5, -94.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -1.5, -94.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -1.5, -94.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -1.5, -93.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -1.5, -93.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -1.5, -93.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -1.5, -93.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -1.5, -93.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -1.5, -93.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -1.5, -93.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -1.5, -93.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -1.5, -93.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -1.5, -93.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -1.5, -94.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -1.5, -94.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -1.5, -94.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -1.5, -94.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -1.5, -94.7 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -1.5, -94.7 , 0 );

setScaleKey( spep_2 + 270 + OFFSET_X, 1, 10.88, 10.88 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 10.88, 10.88 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 9.2, 9.2 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 9.2, 9.2 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 7.67, 7.67 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 7.67, 7.67 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 1.17, 1.17 );

setRotateKey( spep_2 + 270 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -28.7 );


-- ** 音 ** --
--槍攻撃音
SE007 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 0, SE007, 590 );
setTimeStretch( SE007, 1.39, 30, 4 );
SE008 = playSeVer2( spep_2 + 0, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE008, 56 );
SE009 = playSeVer2( spep_2 + 10, 1003, "", 0, 0, 0, -1);
setPitch( spep_2 + 10, SE009, 310 );
setTimeStretch( SE009, 1.21, 30, 4 );
SE010 = playSeVer2( spep_2 + 20, 1003, "", 0, 0, 0, -1);
setPitch( spep_2 + 20, SE010, 290 );
setTimeStretch( SE010, 1.19, 30, 4 );
SE011 = playSeVer2( spep_2 + 30, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 30, SE011, 260 );
setTimeStretch( SE011, 1.17, 30, 4 );
SE012 = playSeVer2( spep_2 + 40, 1003, "", 0, 0, 0, -1);
setPitch( spep_2 + 40, SE012, 290 );
setTimeStretch( SE012, 1.19, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
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
--槍攻撃音
SE013 = playSeVer2( spep_2 + 50, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 50, SE013, 220 );
setTimeStretch( SE013, 1.15, 30, 4 );
SE014 = playSeVer2( spep_2 + 60, 1003, "", 0, 0, 0, -1);
setPitch( spep_2 + 60, SE014, 490 );
setTimeStretch( SE014, 1.33, 30, 4 );
SE015 = playSeVer2( spep_2 + 70, 1003, "", 0, 0, 0, -1);
setPitch( spep_2 + 70, SE015, 590 );
setTimeStretch( SE015, 1.39, 30, 4 );

--槍ヒット音1
SE016 = playSeVer2( spep_2 + 86, 1012, "", 0, 0, 0, -1);
setPitch( spep_2 + 86, SE016, -390 );
setTimeStretch( SE016, 0.74, 30, 4 );
SE017 = playSeVer2( spep_2 + 92, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 102, 1009, "", 0, 0, 0, -1);
setPitch( spep_2 + 102, SE018, 160 );
setTimeStretch( SE018, 1.11, 30, 4 );
SE019 = playSeVer2( spep_2 + 112, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 124, 1012, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 136, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 144, 1012, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 152, 1012, "", 0, 0, 0, -1);
setPitch( spep_2 + 152, SE023, 240 );
setTimeStretch( SE023, 1.16, 30, 4 );
SE024 = playSeVer2( spep_2 + 158, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 166, 1009, "", 0, 0, 0, -1);

--槍迫る
SE026 = playSeVer2( spep_2 + 180, 1161, "",spep_2 + 250, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 180, SE026, 46 );
SE027 = playSeVer2( spep_2 + 180, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 180, SE027, 490 );
setTimeStretch( SE027, 1.33, 30, 4 );
SE028 = playSeVer2( spep_2 + 180, 1064, "", 0, 0, 0, -1);

--槍ヒット音2
SE029 = playSeVer2( spep_2 + 236, 1120, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 236, 1032, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 236, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE031, 39 );

--吹き飛び音
SE032 = playSeVer2( spep_2 + 260, 1182, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 260, 1027, "", 0, 0, 0, -1);

--衝撃音
SE034 = playSeVer2( spep_2 + 286, 1395, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 286, 1011, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 292); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  388f　−4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 構え
-------------------------------------------------
MAX_FRAME_0 = 116;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 構え(ef_001)
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
spep_x = spep_0 + 32;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 39 );

--腕上げ音
SE002 = playSeVer2( spep_0 + 14, 1003, "", 0, 0, 0, -1);

--槍出現音
SE004 = playSeVer2( spep_0 + 42, 1291, "", 0, 0, 0, -1);

--槍発光音
SE005 = playSeVer2( spep_0 + 66, 1221, "",spep_0 + 138, 0, 36, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --116f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- ラッシュ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 388;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ラッシュ〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ラッシュ〜フィニッシュ(ef_002b)
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
setDisp( spep_2 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 90 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, 11.7, -12 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 11.7, -12 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -8.7, -14.3 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -8.7, -14.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 9.1, -11.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 9.1, -11.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 27.3, -1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 27.3, -1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 15.5, -12.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 15.5, -12.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -11.9, -5.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -11.9, -5.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 14.4, -8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 14.4, -8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 41.5, -19.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 41.5, -19.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 14.7, -12.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 14.7, -12.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -2.4, -24.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -2.4, -24.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 12.3, -6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 12.3, -6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 41.7, 0.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 41.7, 0.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 6.8, -11.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 6.8, -11.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -16.5, 17.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -16.5, 17.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 11, -16.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 11, -16.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 34.6, 5.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 34.6, 5.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 14.5, -9.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 14.5, -9.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -1.9, -18.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -1.9, -18.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 14.4, -9.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 14.4, -9.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 80.2, -1.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 80.2, -1.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 11.7, -12 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 11.7, -12 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -8.7, -14.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -8.7, -14.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 9.1, -11.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 9.1, -11.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 27.3, -1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 27.3, -1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 15.5, -12.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 15.5, -12.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -11.9, -5.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -11.9, -5.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 14.4, -8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 14.4, -8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 41.5, -19.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 41.5, -19.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 14.7, -12.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 14.7, -12.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -2.4, -24.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -2.4, -24.3 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.03, 2.03 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 43.8 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 43.8 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 46.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 46.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 47.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 42.4 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 44.4 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 43.8 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 43.8 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 32.9 );

--敵の動き2
setDisp( spep_2 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 388 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 270 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 294 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 270 + OFFSET_X, 1, 618.5, -1628.5 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 618.5, -1628.5 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 496.8, -1375.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 496.8, -1375.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 390.6, -1141.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 390.6, -1141.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 299, -927.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 299, -927.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 220.9, -735.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 220.9, -735.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 155.3, -566.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 155.3, -566.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 101.3, -421 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 101.3, -421 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 58.3, -301.1 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 58.3, -301.1 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 25.4, -207.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 25.4, -207.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 2.4, -139.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 2.4, -139.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -11.3, -98.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -11.3, -98.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -15.9, -85.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -15.9, -85.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -27, -95.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -27, -95.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -36.9, -92.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -36.9, -92.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -15.8, -89.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -15.8, -89.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 5.5, -87.4 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 5.5, -87.4 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 1.5, -85.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 1.5, -85.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -8.2, -84.4 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -8.2, -84.4 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -12.1, -83.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -12.1, -83.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -11.5, -82.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -11.5, -82.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -9.5, -82.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -9.5, -82.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -5.8, -85.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -5.8, -85.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -2.2, -87.4 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -2.2, -87.4 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 0.1, -89.4 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 0.1, -89.4 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 1, -91 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 1, -91 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 1.1, -92.3 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 1.1, -92.3 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 1.3, -93.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 1.3, -93.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 1.4, -94.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 1.4, -94.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 1.4, -94.5 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 1.4, -94.5 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 1.5, -94.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 1.5, -94.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 1.5, -94.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 1.5, -94.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 1.5, -94.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 1.5, -94.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 1.5, -93.9 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 1.5, -93.9 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 1.5, -93.8 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 1.5, -93.8 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 1.5, -93.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 1.5, -93.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 1.5, -93.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 1.5, -93.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 1.5, -93.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 1.5, -93.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 1.5, -94.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 1.5, -94.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 1.5, -94.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 1.5, -94.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 1.5, -94.7 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 1.5, -94.7 , 0 );

setScaleKey( spep_2 + 270 + OFFSET_X, 1, 10.88, 10.88 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 10.88, 10.88 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 9.2, 9.2 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 9.2, 9.2 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 7.67, 7.67 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 7.67, 7.67 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 1.17, 1.17 );

setRotateKey( spep_2 + 270 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 28.7 );


-- ** 音 ** --
--槍攻撃音
SE007 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 0, SE007, 590 );
setTimeStretch( SE007, 1.39, 30, 4 );
SE008 = playSeVer2( spep_2 + 0, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE008, 56 );
SE009 = playSeVer2( spep_2 + 10, 1003, "", 0, 0, 0, -1);
setPitch( spep_2 + 10, SE009, 310 );
setTimeStretch( SE009, 1.21, 30, 4 );
SE010 = playSeVer2( spep_2 + 20, 1003, "", 0, 0, 0, -1);
setPitch( spep_2 + 20, SE010, 290 );
setTimeStretch( SE010, 1.19, 30, 4 );
SE011 = playSeVer2( spep_2 + 30, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 30, SE011, 260 );
setTimeStretch( SE011, 1.17, 30, 4 );
SE012 = playSeVer2( spep_2 + 40, 1003, "", 0, 0, 0, -1);
setPitch( spep_2 + 40, SE012, 290 );
setTimeStretch( SE012, 1.19, 30, 4 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
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
--槍攻撃音
SE013 = playSeVer2( spep_2 + 50, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 50, SE013, 220 );
setTimeStretch( SE013, 1.15, 30, 4 );
SE014 = playSeVer2( spep_2 + 60, 1003, "", 0, 0, 0, -1);
setPitch( spep_2 + 60, SE014, 490 );
setTimeStretch( SE014, 1.33, 30, 4 );
SE015 = playSeVer2( spep_2 + 70, 1003, "", 0, 0, 0, -1);
setPitch( spep_2 + 70, SE015, 590 );
setTimeStretch( SE015, 1.39, 30, 4 );

--槍ヒット音1
SE016 = playSeVer2( spep_2 + 86, 1012, "", 0, 0, 0, -1);
setPitch( spep_2 + 86, SE016, -390 );
setTimeStretch( SE016, 0.74, 30, 4 );
SE017 = playSeVer2( spep_2 + 92, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 102, 1009, "", 0, 0, 0, -1);
setPitch( spep_2 + 102, SE018, 160 );
setTimeStretch( SE018, 1.11, 30, 4 );
SE019 = playSeVer2( spep_2 + 112, 1010, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 124, 1012, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 136, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 144, 1012, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 152, 1012, "", 0, 0, 0, -1);
setPitch( spep_2 + 152, SE023, 240 );
setTimeStretch( SE023, 1.16, 30, 4 );
SE024 = playSeVer2( spep_2 + 158, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 166, 1009, "", 0, 0, 0, -1);

--槍迫る
SE026 = playSeVer2( spep_2 + 180, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE026, 46 );
SE027 = playSeVer2( spep_2 + 180, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 180, SE027, 490 );
setTimeStretch( SE027, 1.33, 30, 4 );
SE028 = playSeVer2( spep_2 + 180, 1064, "", 0, 0, 0, -1);

--槍ヒット音2
SE029 = playSeVer2( spep_2 + 236, 1120, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 236, 1032, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 236, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE031, 39 );

--吹き飛び音
SE032 = playSeVer2( spep_2 + 260, 1182, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 260, 1027, "", 0, 0, 0, -1);

--衝撃音
SE034 = playSeVer2( spep_2 + 286, 1395, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 286, 1011, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 292); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  388f　−4


end
