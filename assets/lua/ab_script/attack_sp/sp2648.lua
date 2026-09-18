--1028200:UR_ヤムチャ_必殺技：かめはめ波
--sp_effect_b4_00336
--sp2648

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162950;  --ef_001 開幕〜カードカットインまで
SP_02  = 162952;  --ef_002 かめはめ波発射〜着弾
SP_02b = 162954;  --ef_002b かめはめ波発射〜着弾

--エフェクト(敵)
SP_01r = 162951;  --ef_001r 開幕〜カードカットインまで
SP_02r = 162953;  --ef_002r かめはめ波発射〜着弾


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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 304;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜カードカットインまで(ef_001)
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
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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
setEffAlphaKey( spep_x + 84, ctgogo, 255 );]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--構える
SE001 = playSeVer2( spep_0 + 0, 1266, "",spep_0 + 250, 0, 74, -1);
SE003 = playSeVer2( spep_0 + 14, 1241, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 20, 1174, "",spep_0 + 206, 0, 38, -1);

--かめはめ波溜め
SE005 = playSeVer2( spep_0 + 194, 1209, "",spep_0 + 342, 0, 18, -1);
SE006 = playSeVer2( spep_0 + 194, 1305, "",spep_0 + 342, 0, 20, -1);
SE007 = playSeVer2( spep_0 + 204, 1307, "",spep_0 + 340, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --308f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE009 = playSeVer2( spep_1 + 90, 1305, "",spep_2 + 62, 6, 22, -1);
setSeVolumeByWorkId( spep_1 + 90, SE009, 72 );
setStartTimeMs( SE009,  400 );
SE010 = playSeVer2( spep_1 + 90, 1307, "",spep_2 + 62, 6, 24, -1);
setStartTimeMs( SE010,  233 );

-------------------------------------------------
-- かめはめ波発射〜着弾
-------------------------------------------------
MAX_FRAME_2 = 238;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波発射〜着弾(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波発射〜着弾(ef_002b)
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
setDisp( spep_2 + 78 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 120 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 78 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 78 + OFFSET_X, 1, 496.8, 3.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 496.8, 3.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 472.1, 90.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 472.1, 90.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 452.4, 50.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 452.4, 50.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 420.7, 83.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 420.7, 83.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 400, 68.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 400, 68.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 379.3, 52.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 379.3, 52.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 356.6, 52.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 356.6, 52.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 333.9, 52.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 333.9, 52.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 311.2, 37.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 311.2, 37.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 288.5, 23.5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 288.5, 23.5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 266.8, 30.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 266.8, 30.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 245.1, 36.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 245.1, 36.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 211.4, 34.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 211.4, 34.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 177.7, 32.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 177.7, 32.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 154, 25.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 154, 25.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 130.3, 19.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 130.3, 19.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 106.6, 13 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 106.6, 13 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 82.9, 6.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 82.9, 6.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 59.2, 0.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 59.2, 0.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 35.5, -6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 35.5, -6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 11.8, -12.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 11.8, -12.3 , 0 );

setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.22, 1.22 );

setRotateKey( spep_2 + 78 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--かめはめ波発射
SE011 = playSeVer2( spep_2 + 22, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 22, 1022, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 22, 1146, "",spep_2 + 174, 0, 36, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
--爆発
SE014 = playSeVer2( spep_2 + 120, 1024, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 120, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 122); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム 238f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕〜カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 304;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 開幕〜カードカットインまで(ef_001r)
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
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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
setEffAlphaKey( spep_x + 84, ctgogo, 255 );]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--構える
SE001 = playSeVer2( spep_0 + 0, 1266, "",spep_0 + 250, 0, 74, -1);
SE003 = playSeVer2( spep_0 + 14, 1241, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 20, 1174, "",spep_0 + 206, 0, 38, -1);

--かめはめ波溜め
SE005 = playSeVer2( spep_0 + 194, 1209, "",spep_0 + 342, 0, 18, -1);
SE006 = playSeVer2( spep_0 + 194, 1305, "",spep_0 + 342, 0, 20, -1);
SE007 = playSeVer2( spep_0 + 204, 1307, "",spep_0 + 340, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --308f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE009 = playSeVer2( spep_1 + 90, 1305, "",spep_2 + 62, 6, 22, -1);
setSeVolumeByWorkId( spep_1 + 90, SE009, 72 );
setStartTimeMs( SE009,  400 );
SE010 = playSeVer2( spep_1 + 90, 1307, "",spep_2 + 62, 6, 24, -1);
setStartTimeMs( SE010,  233 );

-------------------------------------------------
-- かめはめ波発射〜着弾
-------------------------------------------------
MAX_FRAME_2 = 238;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- かめはめ波発射〜着弾(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波発射〜着弾(ef_002b)
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
setDisp( spep_2 + 78 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 120 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 78 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 78 + OFFSET_X, 1, 496.8, 3.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 496.8, 3.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 472.1, 90.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 472.1, 90.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 452.4, 50.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 452.4, 50.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 420.7, 83.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 420.7, 83.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 400, 68.3 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 400, 68.3 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 379.3, 52.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 379.3, 52.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 356.6, 52.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 356.6, 52.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 333.9, 52.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 333.9, 52.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 311.2, 37.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 311.2, 37.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 288.5, 23.5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 288.5, 23.5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 266.8, 30.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 266.8, 30.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 245.1, 36.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 245.1, 36.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 211.4, 34.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 211.4, 34.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 177.7, 32.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 177.7, 32.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 154, 25.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 154, 25.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 130.3, 19.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 130.3, 19.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 106.6, 13 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 106.6, 13 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 82.9, 6.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 82.9, 6.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 59.2, 0.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 59.2, 0.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 35.5, -6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 35.5, -6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 11.8, -12.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 11.8, -12.3 , 0 );

setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.22, 1.22 );

setRotateKey( spep_2 + 78 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--かめはめ波発射
SE011 = playSeVer2( spep_2 + 22, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 22, 1022, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 22, 1146, "",spep_2 + 174, 0, 36, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
--爆発
SE014 = playSeVer2( spep_2 + 120, 1024, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 120, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 122); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム 238f -4


end
