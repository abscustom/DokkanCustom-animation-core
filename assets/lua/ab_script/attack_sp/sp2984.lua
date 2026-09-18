--4032720:LR_ルード_超必殺技：クリムゾンレーザー
--sp_effect_a4_00028
--sp2984

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方/敵共通)
SP_01  = 164344;  --ef_001 ルード攻撃
SP_01b = 164345;  --ef_001b ルード攻撃 裏側
SP_02  = 164346;  --ef_002 ルードビーム
SP_02b = 164347;  --ef_002b ルードビーム 裏側


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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- ルード攻撃
-------------------------------------------------
MAX_FRAME_0 = 136;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ルード攻撃(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ルード攻撃 裏側(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 78 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, -27, 26.9 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -27, 26.9 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -27, 27 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -27, 27 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -27.1, 27 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -27.1, 27 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -58.3, 23 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -58.3, 23 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -46.3, 31 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -46.3, 31 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -51.4, 11.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -51.4, 11.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -63.5, 37.2 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -63.5, 37.2 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -64.6, 12.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -64.6, 12.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -46.6, 18.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -46.6, 18.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -67.7, 29.2 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -67.7, 29.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -58.8, 11.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -58.8, 11.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -57.9, 35.3 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -57.9, 35.3 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -47.1, 31.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -47.1, 31.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -52.2, 11.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -52.2, 11.4 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -64.3, 37.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -64.3, 37.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -65.4, 12.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -65.4, 12.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -47.5, 18.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -47.5, 18.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -68.6, 29.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -68.6, 29.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -59.7, 11.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -59.7, 11.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -58.8, 35.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -58.8, 35.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -60.9, 30.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -60.9, 30.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -57, 30.7 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -57, 30.7 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -55, 38.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -55, 38.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -62.1, 38.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -62.1, 38.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -59.1, 32.8 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -59.1, 32.8 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -57.2, 37.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -57.2, 37.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -57.2, 34.8 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -57.2, 34.8 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -62.3, 38.8 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -62.3, 38.8 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -59.3, 32.8 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -59.3, 32.8 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -57.3, 37.8 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -57.3, 37.8 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -57.3, 34.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -57.3, 34.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -62.3, 38.8 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -62.3, 38.8 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -59.3, 32.8 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.32, 1.32 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -39.5 );

-- ** 音 ** --
--振りかぶる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 12, 1116, "",spep_0 + 106, 0, 74, -1);
SE003 = playSeVer2( spep_0 + 12, 8, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 12, 1314, "",spep_0 + 116, 0, 28, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);

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
--振りかぶる
SE005 = playSeVer2( spep_0 + 70, 1004, "", 0, 0, 0, -1);

--ビンタ
SE006 = playSeVer2( spep_0 + 76, 1187, "",spep_0 + 158, 0, 18, -1);
SE007 = playSeVer2( spep_0 + 76, 1159, "",spep_0 + 156, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --136f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- ルードビーム
-------------------------------------------------
MAX_FRAME_2 = 442;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ルードビーム(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ルードビーム 裏側(ef_002b)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 18;

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

-- ** 敵キャラクター ** --
setDisp( spep_2 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 252 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 170 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 170 + OFFSET_X, 1, 1, 24.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 1, 24.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 1.2, 22.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 1.2, 22.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 1.4, 20.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 1.4, 20.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 1.7, 18.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 1.7, 18.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 1.9, 16.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 1.9, 16.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 2.1, 13.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 2.1, 13.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 2.3, 11.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 2.3, 11.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 2.6, 9.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 2.6, 9.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 2.8, 7.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 2.8, 7.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 3, 4.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 3, 4.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 13, -3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 13, -3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 12, 30.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 12, 30.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -3, -14.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -3, -14.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -16, 14.9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -16, 14.9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 19.1, 14.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 19.1, 14.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 9, -9.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 9, -9.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -1, 17.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -1, 17.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -10, -4.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -10, -4.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 21, 1.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 21, 1.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 0, 19.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 0, 19.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 13, -3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 13, -3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 12, 30.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 12, 30.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -3, -14.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -3, -14.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -16, 14.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -16, 14.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 19.1, 14.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 19.1, 14.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 9, -9.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 9, -9.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -1, 17.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -1, 17.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -10, -4.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -10, -4.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 21, 1.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 21, 1.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 0, 19.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 0, 19.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 12.4, -4.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 12.4, -4.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 1.8, 14.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 1.8, 14.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 7.1, -2.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 7.1, -2.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 1, 5.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 1, 5.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 5, 6.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 5, 6.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 3, 1.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 3, 1.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 1, 5.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 1, 5.9 , 0 );

setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.78, 0.78 );

setRotateKey( spep_2 + 170 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--踏み出す
SE009 = playSeVer2( spep_2 + 8, 1395, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 8, 1438, "", 0, 0, 0, -1);

--ビーム発射
SE012 = playSeVer2( spep_2 + 122, 1201, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 122, 1109, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 122, 1177, "",spep_2 + 218, 0, 22, -1);
SE015 = playSeVer2( spep_2 + 122, 1424, "",spep_2 + 220, 0, 22, -1);

--ビーム外に出る
SE016 = playSeVer2( spep_2 + 230, 1278, "",spep_2 + 340, 16, 26, -1);
setSeVolumeByWorkId( spep_2 + 230, SE016, 40 );
setStartTimeMs( SE016,  1133 );
setPitch( spep_2 + 230, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );
SE018 = playSeVer2( spep_2 + 216, 1467, "",spep_2 + 280, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 216, SE018, 200 );
setTimeStretch( SE018, 2, 30, 4 );
SE019 = playSeVer2( spep_2 + 230, 1311, "",spep_2 + 326, 0, 14, -1);

--壁爆発
SE017 = playSeVer2( spep_2 + 188, 1024, "", 0, 0, 0, -1);

--ラスト爆発
SE020 = playSeVer2( spep_2 + 294, 1069, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 308, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 322); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム 442f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- ルード攻撃
-------------------------------------------------
MAX_FRAME_0 = 136;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ルード攻撃(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ルード攻撃 裏側(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 78 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, 27, 26.9 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 27, 26.9 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 27, 27 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 27, 27 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 27.1, 27 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 27.1, 27 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 58.3, 23 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 58.3, 23 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 46.3, 31 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 46.3, 31 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 51.4, 11.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 51.4, 11.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 63.5, 37.2 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 63.5, 37.2 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 64.6, 12.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 64.6, 12.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 46.6, 18.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 46.6, 18.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 67.7, 29.2 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 67.7, 29.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 58.8, 11.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 58.8, 11.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 57.9, 35.3 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 57.9, 35.3 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 47.1, 31.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 47.1, 31.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 52.2, 11.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 52.2, 11.4 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 64.3, 37.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 64.3, 37.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 65.4, 12.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 65.4, 12.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 47.5, 18.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 47.5, 18.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 68.6, 29.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 68.6, 29.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 59.7, 11.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 59.7, 11.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 58.8, 35.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 58.8, 35.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 60.9, 30.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 60.9, 30.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 57, 30.7 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 57, 30.7 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 55, 38.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 55, 38.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 62.1, 38.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 62.1, 38.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 59.1, 32.8 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 59.1, 32.8 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 57.2, 37.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 57.2, 37.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 57.2, 34.8 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 57.2, 34.8 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 62.3, 38.8 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 62.3, 38.8 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 59.3, 32.8 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 59.3, 32.8 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 57.3, 37.8 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 57.3, 37.8 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 57.3, 34.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 57.3, 34.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 62.3, 38.8 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 62.3, 38.8 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 59.3, 32.8 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.32, 1.32 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 39.5 );

-- ** 音 ** --
--振りかぶる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 12, 1116, "",spep_0 + 106, 0, 74, -1);
SE003 = playSeVer2( spep_0 + 12, 8, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 12, 1314, "",spep_0 + 116, 0, 28, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);

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
--振りかぶる
SE005 = playSeVer2( spep_0 + 70, 1004, "", 0, 0, 0, -1);

--ビンタ
SE006 = playSeVer2( spep_0 + 76, 1187, "",spep_0 + 158, 0, 18, -1);
SE007 = playSeVer2( spep_0 + 76, 1159, "",spep_0 + 156, 0, 14, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --136f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- ルードビーム
-------------------------------------------------
MAX_FRAME_2 = 442;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ルードビーム(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ルードビーム 裏側(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 18;

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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);



-- ** 敵キャラクター ** --
setDisp( spep_2 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 252 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 170 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 170 + OFFSET_X, 1, -1, 24.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -1, 24.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -1.2, 22.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -1.2, 22.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -1.4, 20.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -1.4, 20.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -1.7, 18.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -1.7, 18.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -1.9, 16.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -1.9, 16.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -2.1, 13.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -2.1, 13.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -2.3, 11.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -2.3, 11.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -2.6, 9.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -2.6, 9.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -2.8, 7.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -2.8, 7.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -3, 4.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -3, 4.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -13, -3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -13, -3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -12, 30.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -12, 30.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 3, -14.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 3, -14.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 16, 14.9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 16, 14.9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -19.1, 14.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -19.1, 14.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -9, -9.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -9, -9.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 1, 17.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 1, 17.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 10, -4.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 10, -4.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -21, 1.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -21, 1.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 0, 19.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 0, 19.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -13, -3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -13, -3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -12, 30.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -12, 30.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 3, -14.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 3, -14.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 16, 14.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 16, 14.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -19.1, 14.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -19.1, 14.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -9, -9.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -9, -9.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 1, 17.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 1, 17.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 10, -4.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 10, -4.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -21, 1.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -21, 1.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 0, 19.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 0, 19.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -12.4, -4.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -12.4, -4.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -1.8, 14.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -1.8, 14.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -7.1, -2.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -7.1, -2.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -1, 5.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -1, 5.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -5, 6.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -5, 6.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -3, 1.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -3, 1.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -1, 5.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -1, 5.9 , 0 );

setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.78, 0.78 );

setRotateKey( spep_2 + 170 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--踏み出す
SE009 = playSeVer2( spep_2 + 8, 1395, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 8, 1438, "", 0, 0, 0, -1);

--ビーム発射
SE012 = playSeVer2( spep_2 + 122, 1201, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 122, 1109, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 122, 1177, "",spep_2 + 218, 0, 22, -1);
SE015 = playSeVer2( spep_2 + 122, 1424, "",spep_2 + 220, 0, 22, -1);

--ビーム外に出る
SE016 = playSeVer2( spep_2 + 230, 1278, "",spep_2 + 340, 16, 26, -1);
setSeVolumeByWorkId( spep_2 + 230, SE016, 40 );
setStartTimeMs( SE016,  1133 );
setPitch( spep_2 + 230, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );
SE018 = playSeVer2( spep_2 + 216, 1467, "",spep_2 + 280, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 216, SE018, 200 );
setTimeStretch( SE018, 2, 30, 4 );
SE019 = playSeVer2( spep_2 + 230, 1311, "",spep_2 + 326, 0, 14, -1);

--壁爆発
SE017 = playSeVer2( spep_2 + 188, 1024, "", 0, 0, 0, -1);

--ラスト爆発
SE020 = playSeVer2( spep_2 + 294, 1069, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 308, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 322); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム 442f


end
