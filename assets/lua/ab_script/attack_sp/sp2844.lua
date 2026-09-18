--1030990:UR_メカフリーザ_必殺技：デスブラスター
--sp_effect_a1_00482
--sp2844

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163698; --開幕 ef_001

--エフェクト(味方)
SP_02  = 163699; --発射から爆発まで_手前 ef_002
SP_02b = 163700; --発射から爆発まで_BGの流線だけ ef_002b

--エフェクト(敵)
SP_02r  = 163701; --発射から爆発まで_手前 ef_002r
SP_02br = 163702; --発射から爆発まで_BGの流線だけ ef_002br

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
-- 開幕
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[
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
--入り
SE001 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 74 );
SE002 = playSeVer2( spep_0 + 2, 1179, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 96f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 発射から爆発まで
-------------------------------------------------
MAX_FRAME_2 = 254;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 発射から爆発まで_手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 発射から爆発まで_BGの流線だけ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 114 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 136 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 114 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 114 + OFFSET_X, 1, 504.8, 14.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 504.8, 14.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 324.6, 14.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 324.6, 14.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 239.1, 14.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 239.1, 14.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 207.3, 14.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 207.3, 14.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 199.9, 14.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 199.9, 14.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 199.3, 14.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 199.3, 14.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 199.2, 14.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 199.2, 14.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 199.1, 14.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 199.1, 14.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 199, 14.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 199, 14.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 198.9, 14.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 198.9, 14.4 , 0 );

setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_2 + 114 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -9.6 );


-- ** 音 ** --
--ビーム発射
SE005 = playSeVer2( spep_2 + 24, 1133, "", 0, 0, 0, -1);
setPitch( spep_2 + 24, SE005, -100 );
setTimeStretch( SE005, 0.93, 30, 4 );
SE006 = playSeVer2( spep_2 + 24, 1177, "",spep_2 + 152, 0, 20, -1);
SE007 = playSeVer2( spep_2 + 24, 1284, "",spep_2 + 152, 0, 18, -1);

--ビーム飛んでいく
SE008 = playSeVer2( spep_2 + 64, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE008, 155 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 104; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
SE009 = playSeVer2( spep_2 + 122, 1067, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 134, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 150); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 254f -4f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


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
--[[
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
--入り
SE001 = playSeVer2( spep_0 + 0, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 74 );
SE002 = playSeVer2( spep_0 + 2, 1179, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 96f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 発射から爆発まで
-------------------------------------------------
MAX_FRAME_2 = 254;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 発射から爆発まで_手前(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 発射から爆発まで_BGの流線だけ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 114 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 136 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 114 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 114 + OFFSET_X, 1, 504.8, 14.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 504.8, 14.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 324.6, 14.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 324.6, 14.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 239.1, 14.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 239.1, 14.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 207.3, 14.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 207.3, 14.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 199.9, 14.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 199.9, 14.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 199.3, 14.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 199.3, 14.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 199.2, 14.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 199.2, 14.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 199.1, 14.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 199.1, 14.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 199, 14.4 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 199, 14.4 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 198.9, 14.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 198.9, 14.4 , 0 );

setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.93, 0.93 );

setRotateKey( spep_2 + 114 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -9.6 );


-- ** 音 ** --
--ビーム発射
SE005 = playSeVer2( spep_2 + 24, 1133, "", 0, 0, 0, -1);
setPitch( spep_2 + 24, SE005, -100 );
setTimeStretch( SE005, 0.93, 30, 4 );
SE006 = playSeVer2( spep_2 + 24, 1177, "",spep_2 + 152, 0, 20, -1);
SE007 = playSeVer2( spep_2 + 24, 1284, "",spep_2 + 152, 0, 18, -1);

--ビーム飛んでいく
SE008 = playSeVer2( spep_2 + 64, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE008, 155 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 104; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
SE009 = playSeVer2( spep_2 + 122, 1067, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 134, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 150); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 254f -4f


end