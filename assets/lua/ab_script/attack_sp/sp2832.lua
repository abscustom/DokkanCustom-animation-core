--4030810:LR_ピッコロ大魔王_超必殺技：超激烈魔口砲
--sp_effect_a1_00479
--sp2832

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163664; --登場セリフ〜瞬間移動〜背後から投げ ef_001
SP_01b = 163665; --登場セリフ〜瞬間移動〜背後から投げ ef_001b
SP_02  = 163669; --投げ〜超激烈魔口砲〜爆発 ef_002
SP_02b = 163670; --投げ〜超激烈魔口砲〜爆発 ef_002b

--エフェクト(敵)
SP_01r  = 163666; --登場セリフ〜瞬間移動〜背後から投げ ef_001r
SP_01br = 163668; --登場セリフ〜瞬間移動〜背後から投げ ef_001br
SP_02r  = 163671; --投げ〜超激烈魔口砲〜爆発 ef_002r
SP_02br = 163672; --投げ〜超激烈魔口砲〜爆発 ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場セリフ〜瞬間移動〜背後から投げ
-------------------------------------------------
MAX_FRAME_0 = 320;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場セリフ〜瞬間移動〜背後から投げ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場セリフ〜瞬間移動〜背後から投げ(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 6;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 98 + OFFSET_X, 1, 18 );

setMoveKey( spep_0 + 98 + OFFSET_X, 1, 92.5, -233 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 92.5, -233 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 88.3, -233 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 88.3, -233 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 84, -233 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 84, -233 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 79.8, -233 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 79.8, -233 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 75.5, -233 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 75.5, -233 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 71.3, -233 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 71.3, -233 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 67, -233 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 67, -233 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 62.8, -233 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 62.8, -233 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 58.5, -233 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 58.5, -233 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 54.3, -233 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 54.3, -233 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 50, -233 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 50, -233 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 45, -233 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 45, -233 , 0 );

setScaleKey( spep_0 + 98 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 98 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 0 );

setAlphaKey( spep_0 + 98 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 146 + OFFSET_X, 1, 255 );


--敵の動き2
setDisp( spep_0 + 174 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 202 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 174 + OFFSET_X, 1, 108.4, -294.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 108.4, -294.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 87.6, -259.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 87.6, -259.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 117.3, -272.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 117.3, -272.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 82, -275.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 82, -275.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 108.5, -259 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 108.5, -259 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 101.8, -285.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 101.8, -285.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 88.9, -258.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 88.9, -258.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 118.3, -269.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 118.3, -269.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 97.7, -272.8 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 97.7, -272.8 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 115.7, -269.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 115.7, -269.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 120.5, -266.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 120.5, -266.4 , 0 );

setScaleKey( spep_0 + 174 + OFFSET_X, 1, 9.2, 9.2 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 9.2, 9.2 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 10.2, 10.2 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 10.2, 10.2 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 9, 9 );

setRotateKey( spep_0 + 174 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, 0 );

setAlphaKey( spep_0 + 174 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 202 + OFFSET_X, 1, 255 );


--敵の動き3
setDisp( spep_0 + 226 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 230 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 226 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 226 + OFFSET_X, 1, -413, -400.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -413, -400.3 , 0 );

setScaleKey( spep_0 + 226 + OFFSET_X, 1, 10.38, 10.38 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 10.38, 10.38 );

setRotateKey( spep_0 + 226 + OFFSET_X, 1, 134.3 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 134.3 );

setAlphaKey( spep_0 + 226 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 230 + OFFSET_X, 1, 255 );


--敵の動き4
setDisp( spep_0 + 244 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 282 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 244 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 244 + OFFSET_X, 1, 117.3, 261.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 117.3, 261.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 122.4, 252.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 122.4, 252.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 123.7, 248.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 123.7, 248.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 126.9, 231.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 126.9, 231.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 125.9, 227.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 125.9, 227.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 130.5, 222 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 130.5, 222 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 132.4, 217.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 132.4, 217.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 134.4, 207.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 134.4, 207.4 , 0 );

setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_0 + 244 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 31.7 );

setAlphaKey( spep_0 + 244 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 282 + OFFSET_X, 1, 255 );


-- ** 音 ** --
--瞬間移動
SE002 = playSeVer2( spep_0 + 48, 1235, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 100, 1235, "", 0, 0, 0, -1);

--腕伸ばす
SE004 = playSeVer2( spep_0 + 142, 1116, "",spep_0 + 212, 0, 30, -1);
SE005 = playSeVer2( spep_0 + 144, 1117, "",spep_0 + 218, 0, 26, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 164; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);

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
--つかむ
SE006 = playSeVer2( spep_0 + 186, 1006, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 188, 1012, "", 0, 0, 0, -1);

--敵投げる
SE008 = playSeVer2( spep_0 + 220, 1116, "",spep_0 + 280, 0, 26, -1);
SE009 = playSeVer2( spep_0 + 220, 1027, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 220, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE010, 75 );

--敵飛んでいく
SE011 = playSeVer2( spep_0 + 236, 1183, "",spep_0 + 362, 0, 76, -1);
SE012 = playSeVer2( spep_0 + 236, 1121, "",spep_0 + 368, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 236, SE012, 81 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --320f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--構える
SE014 = playSeVer2( spep_1 + 86, 1226, "",spep_2 + 118, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 86, SE014, 54 );
SE015 = playSeVer2( spep_1 + 86, 1175, "",spep_2 + 116, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 86, SE015, 42 );


-------------------------------------------------
-- 投げ〜超激烈魔口砲〜爆発
-------------------------------------------------
MAX_FRAME_2 = 636;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 投げ〜超激烈魔口砲〜爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 投げ〜超激烈魔口砲〜爆発(ef_002b)
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
setDisp( spep_2 + 164 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 224 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 164 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 164 + OFFSET_X, 1, 567.6, 241.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 567.6, 241.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 515.8, 229.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 515.8, 229.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 453.7, 190.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 453.7, 190.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 417.5, 159.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 417.5, 159.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 356.7, 144.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 356.7, 144.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 314, 100.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 314, 100.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 264.8, 88.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 264.8, 88.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 201.4, 52.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 201.4, 52.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 167.7, 25.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 167.7, 25.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 106.9, 9.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 106.9, 9.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 68.1, -38.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 68.1, -38.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 4.6, -66.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 4.6, -66.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 20.2, -65.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 20.2, -65.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 8.6, -52.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 8.6, -52.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 11.2, -70.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 11.2, -70.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 17.7, -50 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 17.7, -50 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 2.2, -69.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 2.2, -69.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 20.4, -66.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 20.4, -66.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 2.3, -52.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 2.3, -52.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 12.6, -71.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 12.6, -71.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 17.8, -43.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 17.8, -43.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 2.2, -61.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 2.2, -61.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 17.7, -62.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 17.7, -62.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 6.1, -47.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 6.1, -47.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 15.1, -61.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 15.1, -61.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 15.1, -52.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 15.1, -52.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 0.9, -65.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 0.9, -65.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 20.3, -59 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 20.3, -59 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 4.7, -51.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 4.7, -51.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 12.5, -71.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 12.5, -71.9 , 0 );

setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.97, 1.97 );

setRotateKey( spep_2 + 164 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -41.1 );

setAlphaKey( spep_2 + 164 + OFFSET_X, 1, 77 );
setAlphaKey( spep_2 + 224 + OFFSET_X, 1, 77 );


-- ** 音 ** --
--構える
SE016 = playSeVer2( spep_2 + 12, 1116, "",spep_2 + 80, 0, 36, -1);

--口から光線出す
SE017 = playSeVer2( spep_2 + 78, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 78, 1022, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 78, 1146, "", 0, 0, 0, -1);

--光線飛んでいく
SE020 = playSeVer2( spep_2 + 124, 1423, "",spep_2 + 348, 0, 44, -1);
SE021 = playSeVer2( spep_2 + 124, 1213, "",spep_2 + 346, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 124, SE021, 73 );
SE022 = playSeVer2( spep_2 + 124, 1249, "",spep_2 + 346, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 124, SE022, 83 );

--敵ヒット
SE023 = playSeVer2( spep_2 + 154, 1024, "", 0, 0, 0, -1);

--敵のまれる
SE024 = playSeVer2( spep_2 + 210, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE024, 78 );

--爆発
SE025 = playSeVer2( spep_2 + 354, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 366, 1188, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 468, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 468, SE027, 84 );
SE028 = playSeVer2( spep_2 + 496, 1067, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 496, 1156, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE029, 78 );
SE030 = playSeVer2( spep_2 + 516, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 376); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 636f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場セリフ〜瞬間移動〜背後から投げ
-------------------------------------------------
MAX_FRAME_0 = 320;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 登場セリフ〜瞬間移動〜背後から投げ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 登場セリフ〜瞬間移動〜背後から投げ(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 6;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 98 + OFFSET_X, 1, 18 );

setMoveKey( spep_0 + 98 + OFFSET_X, 1, 92.5, -233 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 92.5, -233 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 88.3, -233 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 88.3, -233 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 84, -233 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 84, -233 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 79.8, -233 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 79.8, -233 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 75.5, -233 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 75.5, -233 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 71.3, -233 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 71.3, -233 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 67, -233 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 67, -233 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 62.8, -233 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 62.8, -233 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 58.5, -233 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 58.5, -233 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 54.3, -233 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 54.3, -233 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 50, -233 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 50, -233 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 45, -233 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 45, -233 , 0 );

setScaleKey( spep_0 + 98 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_0 + 98 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 0 );

setAlphaKey( spep_0 + 98 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 146 + OFFSET_X, 1, 255 );


--敵の動き2
setDisp( spep_0 + 174 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 202 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 174 + OFFSET_X, 1, 108.4, -294.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 108.4, -294.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 87.6, -259.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 87.6, -259.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 117.3, -272.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 117.3, -272.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 82, -275.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 82, -275.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 108.5, -259 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 108.5, -259 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 101.8, -285.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 101.8, -285.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 88.9, -258.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 88.9, -258.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 118.3, -269.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 118.3, -269.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 97.7, -272.8 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 97.7, -272.8 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 115.7, -269.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 115.7, -269.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 120.5, -266.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 120.5, -266.4 , 0 );

setScaleKey( spep_0 + 174 + OFFSET_X, 1, 9.2, 9.2 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 9.2, 9.2 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 10.2, 10.2 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 10.2, 10.2 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 9, 9 );

setRotateKey( spep_0 + 174 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, 0 );

setAlphaKey( spep_0 + 174 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 202 + OFFSET_X, 1, 255 );


--敵の動き3
setDisp( spep_0 + 226 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 230 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 226 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 226 + OFFSET_X, 1, -413, -400.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -413, -400.3 , 0 );

setScaleKey( spep_0 + 226 + OFFSET_X, 1, 10.38, 10.38 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 10.38, 10.38 );

setRotateKey( spep_0 + 226 + OFFSET_X, 1, 134.3 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 134.3 );

setAlphaKey( spep_0 + 226 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 230 + OFFSET_X, 1, 255 );


--敵の動き4
setDisp( spep_0 + 244 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 282 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 244 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 244 + OFFSET_X, 1, 117.3, 261.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 117.3, 261.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 122.4, 252.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 122.4, 252.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 123.7, 248.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 123.7, 248.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 126.9, 231.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 126.9, 231.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 125.9, 227.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 125.9, 227.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 130.5, 222 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 130.5, 222 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 132.4, 217.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 132.4, 217.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 134.4, 207.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 134.4, 207.4 , 0 );

setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_0 + 244 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 31.7 );

setAlphaKey( spep_0 + 244 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 282 + OFFSET_X, 1, 255 );


-- ** 音 ** --
--瞬間移動
SE002 = playSeVer2( spep_0 + 48, 1235, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 100, 1235, "", 0, 0, 0, -1);

--腕伸ばす
SE004 = playSeVer2( spep_0 + 142, 1116, "",spep_0 + 212, 0, 30, -1);
SE005 = playSeVer2( spep_0 + 144, 1117, "",spep_0 + 218, 0, 26, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 164; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);

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
--つかむ
SE006 = playSeVer2( spep_0 + 186, 1006, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 188, 1012, "", 0, 0, 0, -1);

--敵投げる
SE008 = playSeVer2( spep_0 + 220, 1116, "",spep_0 + 280, 0, 26, -1);
SE009 = playSeVer2( spep_0 + 220, 1027, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 220, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE010, 75 );

--敵飛んでいく
SE011 = playSeVer2( spep_0 + 236, 1183, "",spep_0 + 362, 0, 76, -1);
SE012 = playSeVer2( spep_0 + 236, 1121, "",spep_0 + 368, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 236, SE012, 81 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --320f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--構える
SE014 = playSeVer2( spep_1 + 86, 1226, "",spep_2 + 118, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 86, SE014, 54 );
SE015 = playSeVer2( spep_1 + 86, 1175, "",spep_2 + 116, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 86, SE015, 42 );


-------------------------------------------------
-- 投げ〜超激烈魔口砲〜爆発
-------------------------------------------------
MAX_FRAME_2 = 636;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 投げ〜超激烈魔口砲〜爆発(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 投げ〜超激烈魔口砲〜爆発(ef_002br)
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
setDisp( spep_2 + 164 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 224 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 164 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 164 + OFFSET_X, 1, 567.6, 241.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 567.6, 241.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 515.8, 229.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 515.8, 229.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 453.7, 190.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 453.7, 190.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 417.5, 159.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 417.5, 159.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 356.7, 144.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 356.7, 144.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 314, 100.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 314, 100.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 264.8, 88.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 264.8, 88.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 201.4, 52.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 201.4, 52.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 167.7, 25.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 167.7, 25.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 106.9, 9.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 106.9, 9.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 68.1, -38.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 68.1, -38.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 4.6, -66.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 4.6, -66.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 20.2, -65.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 20.2, -65.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 8.6, -52.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 8.6, -52.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 11.2, -70.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 11.2, -70.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 17.7, -50 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 17.7, -50 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 2.2, -69.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 2.2, -69.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 20.4, -66.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 20.4, -66.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 2.3, -52.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 2.3, -52.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 12.6, -71.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 12.6, -71.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 17.8, -43.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 17.8, -43.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 2.2, -61.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 2.2, -61.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 17.7, -62.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 17.7, -62.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 6.1, -47.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 6.1, -47.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 15.1, -61.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 15.1, -61.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 15.1, -52.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 15.1, -52.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 0.9, -65.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 0.9, -65.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 20.3, -59 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 20.3, -59 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 4.7, -51.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 4.7, -51.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 12.5, -71.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 12.5, -71.9 , 0 );

setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.97, 1.97 );

setRotateKey( spep_2 + 164 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -41.1 );

setAlphaKey( spep_2 + 164 + OFFSET_X, 1, 77 );
setAlphaKey( spep_2 + 224 + OFFSET_X, 1, 77 );


-- ** 音 ** --
--構える
SE016 = playSeVer2( spep_2 + 12, 1116, "",spep_2 + 80, 0, 36, -1);

--口から光線出す
SE017 = playSeVer2( spep_2 + 78, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 78, 1022, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 78, 1146, "", 0, 0, 0, -1);

--光線飛んでいく
SE020 = playSeVer2( spep_2 + 124, 1423, "",spep_2 + 348, 0, 44, -1);
SE021 = playSeVer2( spep_2 + 124, 1213, "",spep_2 + 346, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 124, SE021, 73 );
SE022 = playSeVer2( spep_2 + 124, 1249, "",spep_2 + 346, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 124, SE022, 83 );

--敵ヒット
SE023 = playSeVer2( spep_2 + 154, 1024, "", 0, 0, 0, -1);

--敵のまれる
SE024 = playSeVer2( spep_2 + 210, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE024, 78 );

--爆発
SE025 = playSeVer2( spep_2 + 354, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 366, 1188, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 468, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 468, SE027, 84 );
SE028 = playSeVer2( spep_2 + 496, 1067, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 496, 1156, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 496, SE029, 78 );
SE030 = playSeVer2( spep_2 + 516, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 376); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 636f


end