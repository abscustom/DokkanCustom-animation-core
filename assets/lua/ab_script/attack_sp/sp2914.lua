--1031960:UR_スーパーベビー1_必殺技：ビッグ・バン・アタック
--sp_effect_a1_00503
--sp2914

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164103;  --ef_001 上空から体当たり→気弾溜め
SP_01b = 164105;  --ef_001b 上空から体当たり→気弾溜め
SP_02  = 164106;  --ef_002 気弾発射→爆発
SP_02b = 164108;  --ef_002b 気弾発射→爆発

--エフェクト(敵)
SP_01r = 164104;  --ef_001r 上空から体当たり→気弾溜め
SP_02r = 164107;  --ef_002r 気弾発射→爆発


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
-- 上空から体当たり→気弾溜め
-------------------------------------------------
MAX_FRAME_0 = 354;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 上空から体当たり→気弾溜め(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 上空から体当たり→気弾溜め(ef_001b)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 262;

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
setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 140 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 132 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 138 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, 229, -199.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 229, -199.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 217, -187.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 217, -187.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 205, -174 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 205, -174 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 197, -165.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 197, -165.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 189, -156.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 189, -156.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 181.1, -148.1 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 181.1, -148.1 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 193, -200.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 193, -200.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 249.6, -301.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 249.6, -301.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 306.1, -401.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 306.1, -401.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 229, -199.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 229, -199.9 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 0 );

-- ** 音 ** --

SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1121, "",spep_0 + 148, 0, 74, -1);
SE003 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 4, 1019, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 52, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE005, 71 );
SE006 = playSeVer2( spep_0 + 68, 1019, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 84; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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
--飛んでくる
SE007 = playSeVer2( spep_0 + 100, 1277, "",spep_0 + 166, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 100, SE007, 174 );

--敵に突っ込む
SE008 = playSeVer2( spep_0 + 124, 1187, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 124, 1159, "",spep_0 + 382, 0, 26, -1);

--気弾溜め
SE011 = playSeVer2( spep_0 + 306, 1275, "",spep_0 + 374, 0, 14, -1);
SE012 = playSeVer2( spep_0 + 306, 1296, "",spep_0 + 374, 0, 14, -1);
SE013 = playSeVer2( spep_0 + 306, 1441, "",spep_0 + 378, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --354f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 気弾発射→爆発
-------------------------------------------------
MAX_FRAME_2 = 178;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射→爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾発射→爆発(ef_002b)
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
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 40 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 107 );

setMoveKey( spep_2 + 0, 1, 229.1, -591.2 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 229.1, -591.2 , 0 );

setScaleKey( spep_2 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_2 + 0, 1, 1 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, 1 );

setBlendColor( spep_2 + 0, 1, 2, 0.6, 0.3, 0.3, 0.4 );
setBlendColor( spep_2 + 39 + OFFSET_X, 1, 2, 0.6, 0.3, 0.3, 0.4 );
setBlendColor( spep_2 + 40 + OFFSET_X, 1, 2, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--発射前溜め
SE015 = playSeVer2( spep_1 + 80, 1275, "",spep_2 + 30, 6, 12, -1);
setStartTimeMs( SE015,  333 );
SE016 = playSeVer2( spep_1 + 78, 1296, "",spep_2 + 30, 8, 14, -1);
setStartTimeMs( SE016,  300 );
SE017 = playSeVer2( spep_1 + 82, 1441, "",spep_2 + 30, 4, 12, -1);
setStartTimeMs( SE017,  367 );

--気弾発射
SE018 = playSeVer2( spep_2 + 12, 1177, "",spep_2 + 72, 0, 22, -1);
SE019 = playSeVer2( spep_2 + 12, 1145, "",spep_2 + 72, 0, 22, -1);
SE020 = playSeVer2( spep_2 + 12, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE020, 65 );

--爆発
SE021 = playSeVer2( spep_2 + 40, 1024, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 48, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 66 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  178f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 上空から体当たり→気弾溜め
-------------------------------------------------
MAX_FRAME_0 = 354;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 上空から体当たり→気弾溜め(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 上空から体当たり→気弾溜め(ef_001b)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 262;

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
setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 140 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 132 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 138 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, 229, -199.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 229, -199.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 217, -187.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 217, -187.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 205, -174 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 205, -174 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 197, -165.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 197, -165.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 189, -156.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 189, -156.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 181.1, -148.1 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 181.1, -148.1 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 193, -200.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 193, -200.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 249.6, -301.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 249.6, -301.4 , 0 );
setMoveKey( spep_0 + 136+ OFFSET_X, 1, 306.1, -401.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 306.1, -401.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 229, -199.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 229, -199.9 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 0 );

-- ** 音 ** --

SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1121, "",spep_0 + 148, 0, 74, -1);
SE003 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 4, 1019, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 52, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE005, 71 );
SE006 = playSeVer2( spep_0 + 68, 1019, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 84; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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
--飛んでくる
SE007 = playSeVer2( spep_0 + 100, 1277, "",spep_0 + 166, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 100, SE007, 174 );

--敵に突っ込む
SE008 = playSeVer2( spep_0 + 124, 1187, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 124, 1159, "",spep_0 + 382, 0, 26, -1);

--気弾溜め
SE011 = playSeVer2( spep_0 + 306, 1275, "",spep_0 + 374, 0, 14, -1);
SE012 = playSeVer2( spep_0 + 306, 1296, "",spep_0 + 374, 0, 14, -1);
SE013 = playSeVer2( spep_0 + 306, 1441, "",spep_0 + 378, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --354f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 気弾発射→爆発
-------------------------------------------------
MAX_FRAME_2 = 178;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射→爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾発射→爆発(ef_002b)
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


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 40 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 7 );

setMoveKey( spep_2 + 0, 1, -229.1, -591.2 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -229.1, -591.2 , 0 );

setScaleKey( spep_2 + 0, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_2 + 0, 1, -1 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -1 );

setBlendColor( spep_2 + 0, 1, 2, 0.6, 0.3, 0.3, 0.4 );
setBlendColor( spep_2 + 39 + OFFSET_X, 1, 2, 0.6, 0.3, 0.3, 0.4 );
setBlendColor( spep_2 + 40 + OFFSET_X, 1, 2, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--発射前溜め
SE015 = playSeVer2( spep_1 + 80, 1275, "",spep_2 + 30, 6, 12, -1);
setStartTimeMs( SE015,  333 );
SE016 = playSeVer2( spep_1 + 78, 1296, "",spep_2 + 30, 8, 14, -1);
setStartTimeMs( SE016,  300 );
SE017 = playSeVer2( spep_1 + 82, 1441, "",spep_2 + 30, 4, 12, -1);
setStartTimeMs( SE017,  367 );

--気弾発射
SE018 = playSeVer2( spep_2 + 12, 1177, "",spep_2 + 72, 0, 22, -1);
SE019 = playSeVer2( spep_2 + 12, 1145, "",spep_2 + 72, 0, 22, -1);
SE020 = playSeVer2( spep_2 + 12, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE020, 65 );

--爆発
SE021 = playSeVer2( spep_2 + 40, 1024, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 48, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 66 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  178f

end
