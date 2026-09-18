--4024150:LR_ピッコロ_必殺技：爆烈魔撃閃
--sp_effect_b1_00200
--sp2359

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01 = 159600;	--冒頭	ef_001
SP_02 = 159602;	--ダッシュ　前	ef_002
SP_02b = 159603;	--ダッシュ　裏	ef_002_back
SP_03 = 159606;	--連続攻撃　前	ef_004
SP_03b = 159607;	--連続攻撃　裏	ef_004_back
SP_04 = 159610;	--チョップ　前	ef_005
SP_04b = 159611;	--チョップ　裏	ef_005_back

--エフェクト(てき)
SP_01r = 159601;	--冒頭　反転	ef_001_re
SP_02r = 159605;	--ダッシュ　前　反転	ef_002_re
SP_02br = 159604;	--ダッシュ　裏　反転	ef_002_back_re
SP_03r = 159609;	--連続攻撃　前　反転	ef_004_re
SP_03br = 159608;	--連続攻撃　裏　反転	ef_004_back_re
SP_04r = 159613;	--チョップ　前　反転	ef_005_re
SP_04br = 159612;	--チョップ　裏　反転	ef_005_back_re


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5136,   0);
setMoveKey(   1,   0,    0, -5136,   0);
setMoveKey(   2,   0,    0, -5136,   0);
setMoveKey(   3,   0,    0, -5136,   0);
setMoveKey(   4,   0,    0, -5136,   0);
setMoveKey(   5,   0,    0, -5136,   0);
setMoveKey(   6,   0,    0, -5136,   0);
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

setMoveKey(   0,   1,    0, -5136,   0);
setMoveKey(   1,   1,    0, -5136,   0);
setMoveKey(   2,   1,    0, -5136,   0);
setMoveKey(   3,   1,    0, -5136,   0);
setMoveKey(   4,   1,    0, -5136,   0);
setMoveKey(   5,   1,    0, -5136,   0);
setMoveKey(   6,   1,    0, -5136,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --冒頭	ef_001
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 248 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 248 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 248 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 248 -5, base_1, 255);
setEffAlphaKey( spep_1 + 248 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 248 -5, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 40;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);
--肩鳴らす
SE002 = playSeVer2( spep_1 + 30, 1330, "",spep_1 + 66, 0, 12, -1);
--顔カットイン
SE003 = playSeVer2( spep_1 + 42, 1018, "", 0, 0, 0, -1);
--構える
SE004 = playSeVer2( spep_1 + 124, 1003, "", 0, 0, 0, -1);
--ピッコロ突っ込んでいく
SE005 = playSeVer2( spep_1 + 156, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 156, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 176, 1314, "",spep_1 + 292, 0, 54, -1);
SE008 = playSeVer2( spep_1 + 182, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 182, SE008, 57 );
setTimeStretch( SE008, 2, 30, 4 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 248 -4;

-------------------------------------------------
-- ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --ダッシュ　前	ef_002
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 60 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 60 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 60 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 60 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 60 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); --ダッシュ　裏	ef_002_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 60 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 60 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 60 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 60 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 60 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 117 );

setMoveKey( spep_2 + 0, 1, -12.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 2, 1, -12.1, 5.1 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -12, 9.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -11.9, 14.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -11.8, 19.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -11.7, 24.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -11.5, 29.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -11.4, 34.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -11.3, 39 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -11.2, 43.9 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -11.1, 48.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -11, 53.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -10.9, 58.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -10.8, 63.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -10.7, 68.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -10.6, 73.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -10.5, 78.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -10.5, 83.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -10.4, 88.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -10.3, 93.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -10.2, 98.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -10.1, 103.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -10.1, 109 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -10, 114.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -9.9, 119.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -9.8, 125.1 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -9.8, 130.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -9.7, 136.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -9.7, 141.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -9.6, 147.5 , 0 );
-- setMoveKey( spep_2 -5 + 60, 1, -9.6, 147.5 , 0 );

setScaleKey( spep_2 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 2, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 6, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 8, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 10, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 12, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 14, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 16, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 18, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 28, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 30, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 32, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 34, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 36, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 38, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 40, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 42, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 44, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 46, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 48, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 50, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 52, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 54, 1, 1.84, 1.84 );
setScaleKey( spep_2 -3 + 56, 1, 1.89, 1.89 );
setScaleKey( spep_2 -5 + 60, 1, 1.89, 1.89 );

setRotateKey( spep_2 + 0, 1, 0 );


-- ** 音 ** --
--瞬間移動
SE009 = playSeVer2( spep_2 + 36, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge -12, SE005, 0);
stopSe( SP_dodge -12, SE006, 0);
stopSe( SP_dodge -12, SE007, 0);
stopSe( SP_dodge -12, SE008, 0);
stopSe( SP_dodge -12, SE009, 0);
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


-- ** 次の準備 ** --
spep_3 = spep_2 + 60 -4;

-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --連続攻撃　前	ef_004
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 160 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 160 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 160 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 160 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 160 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); --連続攻撃　裏	ef_004_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 160 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 160 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 160 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 160 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 160 -4, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 160 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
-- setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 108, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 -3 + 50, 1, 106 );
changeAnime( spep_3 -3 + 74, 1, 108 );

setMoveKey( spep_3 + 0, 1, 25, 9.9 , 0 );
setMoveKey( spep_3 -3 + 2, 1, 27.3, 12.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 29.6, 15.5 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 31.9, 18.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 34.3, 21.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 36.6, 23.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 39, 26.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 41.4, 29.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 43.9, 32.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 46.3, 35.2 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 46.3, 35.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 113.1, -11.5 , 0 );	--1st impact
setMoveKey( spep_3 -3 + 22, 1, 162.1, -13.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 136.1, 21.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 187.9, 18.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 162.6, -1.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 195.1, 34.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 208.1, -10.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 186.6, 11.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 208.1, 18.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 197.9, 13.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 211.1, 16 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 213, 16.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 214.8, 17.5 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 216.7, 18.3 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 209.7, -10.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 116.4, 188.1 , 0 );	--2nd impact
setMoveKey( spep_3 -3 + 52, 1, 101.5, 247.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 50.9, 201.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 87, 208.2 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 57.9, 235.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 88.7, 239.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 54.3, 185.7 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 52.4, 197 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 63, 180.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 52.9, 181.7 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 60, 166.9 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 51, 148.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 20, 292.1 , 0 );	--3rd impact
setMoveKey( spep_3 -3 + 76, 1, 64.1, 318.8 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 29.4, 265.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 8.8, 288.3 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 48.1, 295.2 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 16.8, 300.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 18.7, 259.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 30.8, 279.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 17, 279.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 16.4, 262.5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 21.7, 262.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 24.4, 255.7 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 24, 249.6 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 23.6, 243.7 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 23.3, 238.1 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 23, 232.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 23, 232.9 , 0 );

sr_4 = 1.1;
setScaleKey( spep_3 + 0, 1, 1.83 *sr_4, 1.83 *sr_4 );
setScaleKey( spep_3 -3 + 2, 1, 1.84 *sr_4, 1.84 *sr_4 );
setScaleKey( spep_3 -3 + 4, 1, 1.85 *sr_4, 1.85 *sr_4 );
setScaleKey( spep_3 -3 + 6, 1, 1.85 *sr_4, 1.85 *sr_4 );
setScaleKey( spep_3 -3 + 8, 1, 1.86 *sr_4, 1.86 *sr_4 );
setScaleKey( spep_3 -3 + 10, 1, 1.87 *sr_4, 1.87 *sr_4 );
setScaleKey( spep_3 -3 + 12, 1, 1.88 *sr_4, 1.88 *sr_4 );
setScaleKey( spep_3 -3 + 14, 1, 1.88 *sr_4, 1.88 *sr_4 );
setScaleKey( spep_3 -3 + 16, 1, 1.89 *sr_4, 1.89 *sr_4 );
setScaleKey( spep_3 -3 + 18, 1, 1.90 *sr_4, 1.90 *sr_4 );
setScaleKey( spep_3 -3 + 19, 1, 1.90 *sr_4, 1.90 *sr_4 );
setScaleKey( spep_3 -3 + 20, 1, 1.96 *sr_4, 1.96 *sr_4 );
setScaleKey( spep_3 -3 + 22, 1, 1.97 *sr_4, 1.97 *sr_4 );
setScaleKey( spep_3 -3 + 24, 1, 1.98 *sr_4, 1.98 *sr_4 );
setScaleKey( spep_3 -3 + 26, 1, 1.98 *sr_4, 1.98 *sr_4 );
setScaleKey( spep_3 -3 + 28, 1, 1.99 *sr_4, 1.99 *sr_4 );
setScaleKey( spep_3 -3 + 38, 1, 1.99 *sr_4, 1.99 *sr_4 );
setScaleKey( spep_3 -3 + 40, 1, 2.00 *sr_4, 2.00 *sr_4 );
setScaleKey( spep_3 -3 + 49, 1, 2.00 *sr_4, 2.00 *sr_4 );
setScaleKey( spep_3 -3 + 50, 1, 2.00 *1.05, 2.00 *1.05 );	--2nd impact
setScaleKey( spep_3 -3 + 73, 1, 2.00 *1.05, 2.00 *1.05 );
setScaleKey( spep_3 -3 + 74, 1, 2.00 *sr_4, 2.00 *sr_4 );	--3rd impact
setScaleKey( spep_3 -3 + 108, 1, 2.00 *sr_4, 2.00 *sr_4 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 49, 1, 0 );
setRotateKey( spep_3 -3 + 50, 1, -68.2 );
setRotateKey( spep_3 -3 + 73, 1, -68.2 );
setRotateKey( spep_3 -3 + 74, 1, -53 );
setRotateKey( spep_3 -3 + 76, 1, -56.5 );
setRotateKey( spep_3 -3 + 78, 1, -59.3 );
setRotateKey( spep_3 -3 + 80, 1, -61.6 );
setRotateKey( spep_3 -3 + 82, 1, -63.4 );
setRotateKey( spep_3 -3 + 84, 1, -64.8 );
setRotateKey( spep_3 -3 + 86, 1, -65.9 );
setRotateKey( spep_3 -3 + 88, 1, -66.7 );
setRotateKey( spep_3 -3 + 90, 1, -67.3 );
setRotateKey( spep_3 -3 + 92, 1, -67.7 );
setRotateKey( spep_3 -3 + 94, 1, -67.9 );
setRotateKey( spep_3 -3 + 96, 1, -68.1 );
setRotateKey( spep_3 -3 + 98, 1, -68.2 );
setRotateKey( spep_3 -3 + 108, 1, -68.2 );


-- ** 音 ** --
--払う
SE010 = playSeVer2( spep_3 + 12, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 20, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 20, 1110, "", 0, 0, 0, -1);
--蹴り上げ
SE013 = playSeVer2( spep_3 + 46, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 46, SE013, 75 );
SE014 = playSeVer2( spep_3 + 48, 1110, "", 0, 0, 0, -1);
--蹴り上げ２
SE015 = playSeVer2( spep_3 + 72, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 74, 1187, "",spep_3 + 142, 0, 36, -1);
setSeVolumeByWorkId( spep_3 + 74, SE016, 81 );
--集中線
SE017 = playSeVer2( spep_3 + 110, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE017, 81 );
SE018 = playSeVer2( spep_3 + 110, 1025, "",spep_3 + 176, 0, 10, -1);
SE019 = playSeVer2( spep_3 + 110, 1264, "",spep_3 + 176, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 110, SE019, 83 );
setPitch( spep_3 + 110, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );


-- ** 次の準備 ** --
spep_c = spep_3 + 160 -4;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_c + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_4 = spep_c + 96;

-------------------------------------------------
-- チョップ
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --チョップ　前	ef_005
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 280 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 280 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 280 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 280 -4, base_4f, 255);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --チョップ　裏	ef_005_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 280 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 280 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 280 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 280 -4, base_4b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 280 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 64, 1, 0 );
setDisp( spep_4 -3 + 88, 1, 1 );
setDisp( spep_4 -3 + 128, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 44, 1, 107 );
changeAnime( spep_4 -3 + 88, 1, 5 );

setMoveKey( spep_4 + 0, 1, 92 -80, -113 -90 , 0 );
setMoveKey( spep_4 -3 + 2, 1, 91.9 -80, -107.2 -90 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 91.7 -80, -101.5 -90 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 91.6 -80, -95.8 -90 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 91.4 -80, -90.1 -90 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 91.3 -80, -84.4 -90 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 91.1 -80, -78.7 -90 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 91 -80, -73 -90 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 90.8 -80, -67.3 -90 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 90.7 -80, -61.6 -90 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 90.5 -80, -55.9 -90 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 90.4 -80, -50.1 -90 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 90.2 -80, -44.4 -90 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 90.1 -80, -38.7 -90 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 89.9 -80, -33 -90 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 89.8 -80, -27.3 -90 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 89.6 -80, -21.6 -90 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 89.5 -80, -15.9 -90 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 89.3 -80, -10.2 -90 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 89.2 -80, -4.5 -90 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 89 -80, 1.2 -90 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 88.9 -80, 6.9 -90 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 151.1, -257.9 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 161.1, -355.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 200.1, -191.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 93.1, -328.9 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 204.1, -349.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 153.5, -346.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 249.1, -340.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 314.2, -507.2 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 451.5, -488.9 , 0 );
setMoveKey( spep_4 -3 + 63, 1, 447.8, -476.9 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 18.5, -71.4 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 17.5, -68.6 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 16.4, -65.8 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 15.3, -63 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 14.2, -60.1 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 13.1, -57.3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 12, -54.5 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 10.9, -51.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 9.9, -48.9 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 8.8, -46.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 7.7, -43.3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 6.6, -40.5 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 5.5, -37.7 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 4.4, -34.8 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 3.3, -32 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 2.3, -29.2 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 1.2, -26.4 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 0.1, -23.6 , 0 );
setMoveKey( spep_4 -3 + 124, 1, -1, -20.8 , 0 );
setMoveKey( spep_4 -3 + 126, 1, -2.1, -18 , 0 );
setMoveKey( spep_4 -3 + 128, 1, -2.1, -18 , 0 );

sr_5 = 1.05;
setScaleKey( spep_4 -3 + 0, 1, 2.45 *sr_5, 2.45 *sr_5 );
setScaleKey( spep_4 -3 + 43, 1, 2.45 *sr_5, 2.45 *sr_5 );
setScaleKey( spep_4 -3 + 44, 1, 2.45 *0.5 *sr_5, 2.45 *0.5 *sr_5);	-- 1st impact
setScaleKey( spep_4 -3 + 52, 1, 2.45 *0.5 *sr_5, 2.45 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 54, 1, 2.95 *0.5 *sr_5, 2.95 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 56, 1, 3.45 *0.5 *sr_5, 3.45 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 58, 1, 3.95 *0.5 *sr_5, 3.95 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 60, 1, 4.45 *0.5 *sr_5, 4.45 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 63, 1, 4.95 *0.5 *sr_5, 4.95 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 88, 1, 4.55, 4.55 );	-- change
setScaleKey( spep_4 -3 + 90, 1, 4.33, 4.33 );
setScaleKey( spep_4 -3 + 92, 1, 4.11, 4.11 );
setScaleKey( spep_4 -3 + 94, 1, 3.89, 3.89 );
setScaleKey( spep_4 -3 + 96, 1, 3.67, 3.67 );
setScaleKey( spep_4 -3 + 98, 1, 3.45, 3.45 );
setScaleKey( spep_4 -3 + 100, 1, 3.24, 3.24 );
setScaleKey( spep_4 -3 + 102, 1, 3.02, 3.02 );
setScaleKey( spep_4 -3 + 104, 1, 2.8, 2.8 );
setScaleKey( spep_4 -3 + 106, 1, 2.58, 2.58 );
setScaleKey( spep_4 -3 + 108, 1, 2.36, 2.36 );
setScaleKey( spep_4 -3 + 110, 1, 2.14, 2.14 );
setScaleKey( spep_4 -3 + 112, 1, 1.93, 1.93 );
setScaleKey( spep_4 -3 + 114, 1, 1.71, 1.71 );
setScaleKey( spep_4 -3 + 116, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 118, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 120, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 122, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 124, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 126, 1, 0.4, 0.4 );
setScaleKey( spep_4 -3 + 128, 1, 0.4, 0.4 );

setRotateKey( spep_4 -3 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 43, 1, 0 );
setRotateKey( spep_4 -3 + 44, 1, 36.7 );
setRotateKey( spep_4 -3 + 63, 1, 36.7 );
setRotateKey( spep_4 -3 + 88, 1, -6.3 );
setRotateKey( spep_4 -3 + 128, 1, -6.3 );

-- ** 音 ** --
--振りかぶり
SE021 = playSeVer2( spep_4 + 552 -552, 1278, "",spep_4 + 620 -552, 0, 20, -1);
SE022 = playSeVer2( spep_4 + 552 -552, 44, "", 0, 0, 0, -1);

--叩き落とし
SE023 = playSeVer2( spep_4 + 596 -552, 1123, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE024 = playSeVer2( spep_4 + 642 -552, 1027, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_4 + 658 -552, 1183, "",spep_4 + 724 -552, 0, 10, -1);
SE026 = playSeVer2( spep_4 + 658 -552, 1121, "",spep_4 + 724 -552, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 658 -552, SE026, 61 );

--地面激突
SE027 = playSeVer2( spep_4 + 710 -552, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 710 -552, SE027, 92 );
SE028 = playSeVer2( spep_4 + 710 -552, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 710 -552, SE028, 89 );
SE029 = playSeVer2( spep_4 + 710 -552, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 710 -552, SE029, 80 );



--振りかぶる
SE021 = playSeVer2( spep_4 + 0, 1278, "",spep_4 + 68, 0, 20, -1);
SE022 = playSeVer2( spep_4 + -552, 44, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 44, 1123, "", 0, 0, 0, -1);
--敵吹き飛ぶ
SE024 = playSeVer2( spep_4 + 90, 1027, "", 0, 0, 0, -1);
--敵飛んでいく
SE025 = playSeVer2( spep_4 + 106, 1183, "",spep_4 + 172, 0, 10, -1);
SE026 = playSeVer2( spep_4 + 106, 1121, "",spep_4 + 172, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 106, SE026, 61 );
--地面激突
SE027 = playSeVer2( spep_4 + 158, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 158, SE027, 92 );
SE028 = playSeVer2( spep_4 + 158, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 158, SE028, 89 );
SE029 = playSeVer2( spep_4 + 158, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 158, SE029, 80 );


dealDamage( spep_4 + 160); -- ダメージ表示フレーム
endPhase( spep_4 + 280 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01r, 0x80, -1, 0, 0, 0); --冒頭　反転	ef_001_re
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 248 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 248 -4, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 248 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 248 -5, base_1, 255);
setEffAlphaKey( spep_1 + 248 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 248 -5, 0, 0, 0, 0, 255);  --黒　背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 40;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_1 + 0, 8, "", 0, 0, 0, -1);
--肩鳴らす
SE002 = playSeVer2( spep_1 + 30, 1330, "",spep_1 + 66, 0, 12, -1);
--顔カットイン
--SE003 = playSeVer2( spep_1 + 42, 1018, "", 0, 0, 0, -1);
--構える
SE004 = playSeVer2( spep_1 + 124, 1003, "", 0, 0, 0, -1);
--ピッコロ突っ込んでいく
SE005 = playSeVer2( spep_1 + 156, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 156, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 176, 1314, "",spep_1 + 292, 0, 54, -1);
SE008 = playSeVer2( spep_1 + 182, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 182, SE008, 57 );
setTimeStretch( SE008, 2, 30, 4 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 248 -4;

-------------------------------------------------
-- ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); --ダッシュ　裏　反転	ef_002_back_re
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 60 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, -1.0, 1.0);
setEffScaleKey( spep_2 + 60 -4, base_2f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 60 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 60 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 60 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); --ダッシュ　裏　反転	ef_002_back_re
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 60 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, -1.0, 1.0);
setEffScaleKey( spep_2 + 60 -4, base_2b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 60 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 60 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 60 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 117 );

setMoveKey( spep_2 + 0, 1, -12.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 2, 1, -12.1, 5.1 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -12, 9.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -11.9, 14.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -11.8, 19.6 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -11.7, 24.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -11.5, 29.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -11.4, 34.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -11.3, 39 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -11.2, 43.9 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -11.1, 48.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -11, 53.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -10.9, 58.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -10.8, 63.4 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -10.7, 68.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -10.6, 73.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -10.5, 78.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -10.5, 83.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -10.4, 88.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -10.3, 93.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -10.2, 98.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -10.1, 103.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -10.1, 109 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -10, 114.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -9.9, 119.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -9.8, 125.1 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -9.8, 130.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -9.7, 136.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -9.7, 141.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -9.6, 147.5 , 0 );
-- setMoveKey( spep_2 -5 + 60, 1, -9.6, 147.5 , 0 );

setScaleKey( spep_2 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 2, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 6, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 8, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 10, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 12, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 14, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 16, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 18, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 28, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 30, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 32, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 34, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 36, 1, 1.39, 1.39 );
setScaleKey( spep_2 -3 + 38, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 40, 1, 1.49, 1.49 );
setScaleKey( spep_2 -3 + 42, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 44, 1, 1.59, 1.59 );
setScaleKey( spep_2 -3 + 46, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 48, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 50, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 52, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 54, 1, 1.84, 1.84 );
setScaleKey( spep_2 -3 + 56, 1, 1.89, 1.89 );
setScaleKey( spep_2 -5 + 60, 1, 1.89, 1.89 );

setRotateKey( spep_2 + 0, 1, 0 );


-- ** 音 ** --
--瞬間移動
SE009 = playSeVer2( spep_2 + 36, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge -12, SE005, 0);
stopSe( SP_dodge -12, SE006, 0);
stopSe( SP_dodge -12, SE007, 0);
stopSe( SP_dodge -12, SE008, 0);
stopSe( SP_dodge -12, SE009, 0);
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


-- ** 次の準備 ** --
spep_3 = spep_2 + 60 -4;

-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0); --連続攻撃　前　反転	ef_004_re
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 160 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, -1.0, 1.0);
setEffScaleKey( spep_3 + 160 -4, base_3f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 160 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 160 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 160 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03br, 0x80, -1, 0, 0, 0); --連続攻撃　裏　反転	ef_004_back_re
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 160 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, -1.0, 1.0);
setEffScaleKey( spep_3 + 160 -4, base_3b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 160 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 160 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 160 -4, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 160 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
-- setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 108, 1, 0 );

changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 -3 + 50, 1, 106 );
changeAnime( spep_3 -3 + 74, 1, 108 );

setMoveKey( spep_3 + 0, 1, 25, 9.9 , 0 );
setMoveKey( spep_3 -3 + 2, 1, 27.3, 12.7 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 29.6, 15.5 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 31.9, 18.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 34.3, 21.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 36.6, 23.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 39, 26.7 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 41.4, 29.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 43.9, 32.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 46.3, 35.2 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 46.3, 35.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 113.1, -11.5 , 0 );	--1st impact
setMoveKey( spep_3 -3 + 22, 1, 162.1, -13.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 136.1, 21.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 187.9, 18.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 162.6, -1.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 195.1, 34.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 208.1, -10.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 186.6, 11.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 208.1, 18.8 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 197.9, 13.2 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 211.1, 16 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 213, 16.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 214.8, 17.5 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 216.7, 18.3 , 0 );
setMoveKey( spep_3 -3 + 49, 1, 209.7, -10.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 116.4, 188.1 , 0 );	--2nd impact
setMoveKey( spep_3 -3 + 52, 1, 101.5, 247.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 50.9, 201.1 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 87, 208.2 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 57.9, 235.6 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 88.7, 239.1 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 54.3, 185.7 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 52.4, 197 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 63, 180.5 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 52.9, 181.7 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 60, 166.9 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 51, 148.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 20, 292.1 , 0 );	--3rd impact
setMoveKey( spep_3 -3 + 76, 1, 64.1, 318.8 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 29.4, 265.8 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 8.8, 288.3 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 48.1, 295.2 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 16.8, 300.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 18.7, 259.3 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 30.8, 279.5 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 17, 279.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 16.4, 262.5 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 21.7, 262.7 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 24.4, 255.7 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 24, 249.6 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 23.6, 243.7 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 23.3, 238.1 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 23, 232.9 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 23, 232.9 , 0 );

sr_4 = 1.1;
setScaleKey( spep_3 + 0, 1, 1.83 *sr_4, 1.83 *sr_4 );
setScaleKey( spep_3 -3 + 2, 1, 1.84 *sr_4, 1.84 *sr_4 );
setScaleKey( spep_3 -3 + 4, 1, 1.85 *sr_4, 1.85 *sr_4 );
setScaleKey( spep_3 -3 + 6, 1, 1.85 *sr_4, 1.85 *sr_4 );
setScaleKey( spep_3 -3 + 8, 1, 1.86 *sr_4, 1.86 *sr_4 );
setScaleKey( spep_3 -3 + 10, 1, 1.87 *sr_4, 1.87 *sr_4 );
setScaleKey( spep_3 -3 + 12, 1, 1.88 *sr_4, 1.88 *sr_4 );
setScaleKey( spep_3 -3 + 14, 1, 1.88 *sr_4, 1.88 *sr_4 );
setScaleKey( spep_3 -3 + 16, 1, 1.89 *sr_4, 1.89 *sr_4 );
setScaleKey( spep_3 -3 + 18, 1, 1.90 *sr_4, 1.90 *sr_4 );
setScaleKey( spep_3 -3 + 19, 1, 1.90 *sr_4, 1.90 *sr_4 );
setScaleKey( spep_3 -3 + 20, 1, 1.96 *sr_4, 1.96 *sr_4 );
setScaleKey( spep_3 -3 + 22, 1, 1.97 *sr_4, 1.97 *sr_4 );
setScaleKey( spep_3 -3 + 24, 1, 1.98 *sr_4, 1.98 *sr_4 );
setScaleKey( spep_3 -3 + 26, 1, 1.98 *sr_4, 1.98 *sr_4 );
setScaleKey( spep_3 -3 + 28, 1, 1.99 *sr_4, 1.99 *sr_4 );
setScaleKey( spep_3 -3 + 38, 1, 1.99 *sr_4, 1.99 *sr_4 );
setScaleKey( spep_3 -3 + 40, 1, 2.00 *sr_4, 2.00 *sr_4 );
setScaleKey( spep_3 -3 + 49, 1, 2.00 *sr_4, 2.00 *sr_4 );
setScaleKey( spep_3 -3 + 50, 1, 2.00 *1.05, 2.00 *1.05 );	--2nd impact
setScaleKey( spep_3 -3 + 73, 1, 2.00 *1.05, 2.00 *1.05 );
setScaleKey( spep_3 -3 + 74, 1, 2.00 *sr_4, 2.00 *sr_4 );	--3rd impact
setScaleKey( spep_3 -3 + 108, 1, 2.00 *sr_4, 2.00 *sr_4 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 49, 1, 0 );
setRotateKey( spep_3 -3 + 50, 1, -68.2 );
setRotateKey( spep_3 -3 + 73, 1, -68.2 );
setRotateKey( spep_3 -3 + 74, 1, -53 );
setRotateKey( spep_3 -3 + 76, 1, -56.5 );
setRotateKey( spep_3 -3 + 78, 1, -59.3 );
setRotateKey( spep_3 -3 + 80, 1, -61.6 );
setRotateKey( spep_3 -3 + 82, 1, -63.4 );
setRotateKey( spep_3 -3 + 84, 1, -64.8 );
setRotateKey( spep_3 -3 + 86, 1, -65.9 );
setRotateKey( spep_3 -3 + 88, 1, -66.7 );
setRotateKey( spep_3 -3 + 90, 1, -67.3 );
setRotateKey( spep_3 -3 + 92, 1, -67.7 );
setRotateKey( spep_3 -3 + 94, 1, -67.9 );
setRotateKey( spep_3 -3 + 96, 1, -68.1 );
setRotateKey( spep_3 -3 + 98, 1, -68.2 );
setRotateKey( spep_3 -3 + 108, 1, -68.2 );


-- ** 音 ** --
--払う
SE010 = playSeVer2( spep_3 + 12, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 20, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 20, 1110, "", 0, 0, 0, -1);
--蹴り上げ
SE013 = playSeVer2( spep_3 + 46, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 46, SE013, 75 );
SE014 = playSeVer2( spep_3 + 48, 1110, "", 0, 0, 0, -1);
--蹴り上げ２
SE015 = playSeVer2( spep_3 + 72, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 74, 1187, "",spep_3 + 142, 0, 36, -1);
setSeVolumeByWorkId( spep_3 + 74, SE016, 81 );
--集中線
SE017 = playSeVer2( spep_3 + 110, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE017, 81 );
SE018 = playSeVer2( spep_3 + 110, 1025, "",spep_3 + 176, 0, 10, -1);
SE019 = playSeVer2( spep_3 + 110, 1264, "",spep_3 + 176, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 110, SE019, 83 );
setPitch( spep_3 + 110, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );


-- ** 次の準備 ** --
spep_c = spep_3 + 160 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_4 = spep_c + 96;

-------------------------------------------------
-- チョップ
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0); --チョップ　前　反転	ef_005_re
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 280 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, -1.0, 1.0);
setEffScaleKey( spep_4 + 280 -4, base_4f, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 280 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 280 -4, base_4f, 255);

base_4b = entryEffect( spep_4 + 0, SP_04br, 0x80, -1, 0, 0, 0); --チョップ　裏　反転	ef_005_back_re
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 280 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, -1.0, 1.0);
setEffScaleKey( spep_4 + 280 -4, base_4b, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 280 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 280 -4, base_4b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 280 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 64, 1, 0 );
setDisp( spep_4 -3 + 88, 1, 1 );
setDisp( spep_4 -3 + 128, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 44, 1, 107 );
changeAnime( spep_4 -3 + 88, 1, 5 );

setMoveKey( spep_4 + 0, 1, 92 -80, -113 -90 , 0 );
setMoveKey( spep_4 -3 + 2, 1, 91.9 -80, -107.2 -90 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 91.7 -80, -101.5 -90 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 91.6 -80, -95.8 -90 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 91.4 -80, -90.1 -90 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 91.3 -80, -84.4 -90 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 91.1 -80, -78.7 -90 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 91 -80, -73 -90 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 90.8 -80, -67.3 -90 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 90.7 -80, -61.6 -90 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 90.5 -80, -55.9 -90 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 90.4 -80, -50.1 -90 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 90.2 -80, -44.4 -90 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 90.1 -80, -38.7 -90 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 89.9 -80, -33 -90 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 89.8 -80, -27.3 -90 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 89.6 -80, -21.6 -90 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 89.5 -80, -15.9 -90 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 89.3 -80, -10.2 -90 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 89.2 -80, -4.5 -90 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 89 -80, 1.2 -90 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 88.9 -80, 6.9 -90 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 151.1, -257.9 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 161.1, -355.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 200.1, -191.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 93.1, -328.9 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 204.1, -349.9 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 153.5, -346.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 249.1, -340.7 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 314.2, -507.2 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 451.5, -488.9 , 0 );
setMoveKey( spep_4 -3 + 63, 1, 447.8, -476.9 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 18.5, -71.4 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 17.5, -68.6 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 16.4, -65.8 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 15.3, -63 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 14.2, -60.1 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 13.1, -57.3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 12, -54.5 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 10.9, -51.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 9.9, -48.9 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 8.8, -46.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 7.7, -43.3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 6.6, -40.5 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 5.5, -37.7 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 4.4, -34.8 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 3.3, -32 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 2.3, -29.2 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 1.2, -26.4 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 0.1, -23.6 , 0 );
setMoveKey( spep_4 -3 + 124, 1, -1, -20.8 , 0 );
setMoveKey( spep_4 -3 + 126, 1, -2.1, -18 , 0 );
setMoveKey( spep_4 -3 + 128, 1, -2.1, -18 , 0 );

sr_5 = 1.05;
setScaleKey( spep_4 -3 + 0, 1, 2.45 *sr_5, 2.45 *sr_5 );
setScaleKey( spep_4 -3 + 43, 1, 2.45 *sr_5, 2.45 *sr_5 );
setScaleKey( spep_4 -3 + 44, 1, 2.45 *0.5 *sr_5, 2.45 *0.5 *sr_5);	-- 1st impact
setScaleKey( spep_4 -3 + 52, 1, 2.45 *0.5 *sr_5, 2.45 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 54, 1, 2.95 *0.5 *sr_5, 2.95 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 56, 1, 3.45 *0.5 *sr_5, 3.45 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 58, 1, 3.95 *0.5 *sr_5, 3.95 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 60, 1, 4.45 *0.5 *sr_5, 4.45 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 63, 1, 4.95 *0.5 *sr_5, 4.95 *0.5 *sr_5);
setScaleKey( spep_4 -3 + 88, 1, 4.55, 4.55 );	-- change
setScaleKey( spep_4 -3 + 90, 1, 4.33, 4.33 );
setScaleKey( spep_4 -3 + 92, 1, 4.11, 4.11 );
setScaleKey( spep_4 -3 + 94, 1, 3.89, 3.89 );
setScaleKey( spep_4 -3 + 96, 1, 3.67, 3.67 );
setScaleKey( spep_4 -3 + 98, 1, 3.45, 3.45 );
setScaleKey( spep_4 -3 + 100, 1, 3.24, 3.24 );
setScaleKey( spep_4 -3 + 102, 1, 3.02, 3.02 );
setScaleKey( spep_4 -3 + 104, 1, 2.8, 2.8 );
setScaleKey( spep_4 -3 + 106, 1, 2.58, 2.58 );
setScaleKey( spep_4 -3 + 108, 1, 2.36, 2.36 );
setScaleKey( spep_4 -3 + 110, 1, 2.14, 2.14 );
setScaleKey( spep_4 -3 + 112, 1, 1.93, 1.93 );
setScaleKey( spep_4 -3 + 114, 1, 1.71, 1.71 );
setScaleKey( spep_4 -3 + 116, 1, 1.49, 1.49 );
setScaleKey( spep_4 -3 + 118, 1, 1.27, 1.27 );
setScaleKey( spep_4 -3 + 120, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 122, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 124, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 126, 1, 0.4, 0.4 );
setScaleKey( spep_4 -3 + 128, 1, 0.4, 0.4 );

setRotateKey( spep_4 -3 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 43, 1, 0 );
setRotateKey( spep_4 -3 + 44, 1, 36.7 );
setRotateKey( spep_4 -3 + 63, 1, 36.7 );
setRotateKey( spep_4 -3 + 88, 1, -6.3 );
setRotateKey( spep_4 -3 + 128, 1, -6.3 );

-- ** 音 ** --
--振りかぶり
SE021 = playSeVer2( spep_4 + 552 -552, 1278, "",spep_4 + 620 -552, 0, 20, -1);
SE022 = playSeVer2( spep_4 + 552 -552, 44, "", 0, 0, 0, -1);

--叩き落とし
SE023 = playSeVer2( spep_4 + 596 -552, 1123, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE024 = playSeVer2( spep_4 + 642 -552, 1027, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_4 + 658 -552, 1183, "",spep_4 + 724 -552, 0, 10, -1);
SE026 = playSeVer2( spep_4 + 658 -552, 1121, "",spep_4 + 724 -552, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 658 -552, SE026, 61 );

--地面激突
SE027 = playSeVer2( spep_4 + 710 -552, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 710 -552, SE027, 92 );
SE028 = playSeVer2( spep_4 + 710 -552, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 710 -552, SE028, 89 );
SE029 = playSeVer2( spep_4 + 710 -552, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 710 -552, SE029, 80 );



--振りかぶる
SE021 = playSeVer2( spep_4 + 0, 1278, "",spep_4 + 68, 0, 20, -1);
SE022 = playSeVer2( spep_4 + -552, 44, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 44, 1123, "", 0, 0, 0, -1);
--敵吹き飛ぶ
SE024 = playSeVer2( spep_4 + 90, 1027, "", 0, 0, 0, -1);
--敵飛んでいく
SE025 = playSeVer2( spep_4 + 106, 1183, "",spep_4 + 172, 0, 10, -1);
SE026 = playSeVer2( spep_4 + 106, 1121, "",spep_4 + 172, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 106, SE026, 61 );
--地面激突
SE027 = playSeVer2( spep_4 + 158, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 158, SE027, 92 );
SE028 = playSeVer2( spep_4 + 158, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 158, SE028, 89 );
SE029 = playSeVer2( spep_4 + 158, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 158, SE029, 80 );


dealDamage( spep_4 + 160); -- ダメージ表示フレーム
endPhase( spep_4 + 280 -8); -- 終了フレーム

end
