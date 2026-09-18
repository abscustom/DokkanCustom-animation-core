--1024140:LR_孫悟空＆ピッコロ_必殺技：龍虎旋風乱舞
--sp_effect_b1_00199
--sp2358

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
SP_01 = 159584;	--冒頭	ef_001
SP_02 = 159586;	--前方ダッシュ　前	ef_002
SP_02b = 159587;	--前方ダッシュ　裏	ef_002_back
SP_03 = 159590;	--ピッコロ　ダッシュ	ef_003
SP_04 = 159592;	--ピッコロ攻撃　前	ef_004
SP_04b = 159593;	--ピッコロ攻撃　裏	ef_004_back
SP_05 = 159596;	--合体攻撃　前	ef_005
SP_05b = 159597;	--合体攻撃　裏	ef_005_back

--エフェクト(てき)
SP_01r = 159585;	--冒頭反転	ef_001_re
SP_02r = 159589;	--前方ダッシュ　前　反転	ef_002_re
SP_02br = 159588;	--前方ダッシュ　裏　反転	ef_002_back_re
SP_03r = 159591;	--ピッコロ　ダッシュ　反転	ef_003_re
SP_04r = 159595;	--ピッコロ攻撃　前　反転	ef_004_re
SP_04br = 159594;	--ピッコロ攻撃　裏　反転	ef_004_back_re
SP_05r = 159599;	--合体攻撃　前　反転	ef_005_re
SP_05br = 159598;	--合体攻撃　裏　反転	ef_005_back_re


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
adjustAttackerLabel( 0, -200);

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
setEffMoveKey( spep_1 + 180 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 180 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 180 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 180 -5, base_1, 255);
setEffAlphaKey( spep_1 + 180 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 180 -5, 0, 0, 0, 0, 255);  --黒　背景


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
--肩鳴らす
SE004 = playSeVer2( spep_1 + 70, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE004, 81 );
--悟空飛び込む
SE005 = playSeVer2( spep_1 + 146, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 146, 1207, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 166, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 166, SE007, 46 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 180 -4;

-------------------------------------------------
-- 前方ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --前方ダッシュ　前	ef_002
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 280 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 280 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 280 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 280 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 280 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); --前方ダッシュ　裏	ef_002_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 280 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 280 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 280 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 280 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 280 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 280 -5, 0, 0, 0, 0, 255);  --黒　背景


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
setMoveKey( spep_2 -3 + 59, 1, -9.6, 147.5 , 0 );

setScaleKey( spep_2 + 0, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 2, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 4, 1, 0.68, 0.68 );
setScaleKey( spep_2 -3 + 6, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 8, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 10, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 12, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 14, 1, 0.90, 0.90 );
setScaleKey( spep_2 -3 + 16, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 18, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_2 -3 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_2 -3 + 28, 1, 1.21, 1.21 );
setScaleKey( spep_2 -3 + 30, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 32, 1, 1.30, 1.30 );
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
setScaleKey( spep_2 -3 + 59, 1, 1.95, 1.95 );

setRotateKey( spep_2 + 0, 1, 0 );


-- ** 音 ** --
--瞬間移動
SE008 = playSeVer2( spep_2 + 36, 1109, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge -12, SE005, 0);
stopSe( SP_dodge -12, SE006, 0);
stopSe( SP_dodge -12, SE007, 0);
stopSe( SP_dodge, SE008, 0);
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


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 130, 1, 0 );
setDisp( spep_2 -3 + 202, 1, 1 );
setDisp( spep_2 -3 + 258, 1, 0 );

changeAnime( spep_2 -3 + 60, 1, 104 );
changeAnime( spep_2 -3 + 78, 1, 108 );
changeAnime( spep_2 -3 + 200, 1, 108 );

setMoveKey( spep_2 -3 + 60, 1, -42.1, -83.5 , 0 );	-- change
setMoveKey( spep_2 -3 + 77, 1, -42.1, -83.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 145.8, -33.5 , 0 );	--1st impact
setMoveKey( spep_2 -3 + 80, 1, 197.2, -99.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 157.8, 21.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 81.8, -76.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 202.8, -27 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 116.8, -8.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 136.8, -58.5 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 172.8, -43.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 152.8, -17.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 131, -43.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 144.2, -17.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 143.5, -9.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 142.7, -1.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 141.9, 6.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 141.2, 14.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 140.4, 22.8 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 139.7, 30.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 138.9, 38.8 , 0 );
setMoveKey( spep_2 -3 + 113, 1, 138.9, 38.8 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 232.9, 36.8 , 0 );	--2nd impact
setMoveKey( spep_2 -3 + 116, 1, 292.5, -7.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 257.9, 102.8 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 270.1, -37.8 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 335.3, 68.6 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 479.6, -29 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 568.8, 45.4 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 587, 11.8 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 69.2, -28.2 , 0 );	-- chnage
setMoveKey( spep_2 -3 + 202, 1, 74.2, -26.9 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 79.2, -25.6 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 84.2, -24.1 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 89.3, -22.5 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 94.4, -20.7 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 99.4, -18.8 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 104.4, -16.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 109.4, -14.6 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 114.1, -12.4 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 118.8, -10.1 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 123.4, -7.7 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 127.8, -5.2 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 132.1, -2.6 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 136.2, -0.1 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 140.2, 2.5 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 144.2, 5.1 , 0 );
setMoveKey( spep_2 -3 + 233, 1, 144.2, 5.1 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 292.4, 157.4 , 0 );	--4th impact
setMoveKey( spep_2 -3 + 236, 1, 348.4, 215.1 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 325.4, 68.4 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 234.4, 188.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 342.4, 175.4 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 283.9, 130.9 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 350.4, 268.4 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 460.8, 216.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 366.3, 242.4 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 521.7, 325.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 494.2, 283.4 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 603.7, 345.9 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 563.1, 404.3 , 0 );

sr_2a = 0.95;
sr_2b = 0.90;
setScaleKey( spep_2 -3 + 60, 1, 2.98 *sr_2a, 2.98 *sr_2a );	--change
setScaleKey( spep_2 -3 + 118, 1, 2.98 *sr_2a, 2.98 *sr_2a );
setScaleKey( spep_2 -3 + 120, 1, 2.83 *sr_2a, 2.83 *sr_2a );
setScaleKey( spep_2 -3 + 122, 1, 2.69 *sr_2a, 2.69 *sr_2a );
setScaleKey( spep_2 -3 + 124, 1, 2.55 *sr_2a, 2.55 *sr_2a );
setScaleKey( spep_2 -3 + 126, 1, 2.41 *sr_2a, 2.41 *sr_2a );
setScaleKey( spep_2 -3 + 129, 1, 2.27 *sr_2a, 2.27 *sr_2a );
setScaleKey( spep_2 -3 + 200, 1, 2.45 *sr_2b, 2.45 *sr_2b );	-- chnage
setScaleKey( spep_2 -3 + 202, 1, 2.50 *sr_2b, 2.50 *sr_2b );
setScaleKey( spep_2 -3 + 204, 1, 2.56 *sr_2b, 2.56 *sr_2b );
setScaleKey( spep_2 -3 + 206, 1, 2.61 *sr_2b, 2.61 *sr_2b );
setScaleKey( spep_2 -3 + 208, 1, 2.67 *sr_2b, 2.67 *sr_2b );
setScaleKey( spep_2 -3 + 210, 1, 2.72 *sr_2b, 2.72 *sr_2b );
setScaleKey( spep_2 -3 + 212, 1, 2.78 *sr_2b, 2.78 *sr_2b );
setScaleKey( spep_2 -3 + 214, 1, 2.83 *sr_2b, 2.83 *sr_2b );
setScaleKey( spep_2 -3 + 216, 1, 2.87 *sr_2b, 2.87 *sr_2b );
setScaleKey( spep_2 -3 + 218, 1, 2.92 *sr_2b, 2.92 *sr_2b );
setScaleKey( spep_2 -3 + 220, 1, 2.96 *sr_2b, 2.96 *sr_2b );
setScaleKey( spep_2 -3 + 222, 1, 3.00 *sr_2b, 3.00 *sr_2b );
setScaleKey( spep_2 -3 + 224, 1, 3.03 *sr_2b, 3.03 *sr_2b );
setScaleKey( spep_2 -3 + 226, 1, 3.07 *sr_2b, 3.07 *sr_2b );
setScaleKey( spep_2 -3 + 228, 1, 3.10 *sr_2b, 3.10 *sr_2b );
setScaleKey( spep_2 -3 + 230, 1, 3.12 *sr_2b, 3.12 *sr_2b );
setScaleKey( spep_2 -3 + 232, 1, 3.15 *sr_2b, 3.15 *sr_2b );
setScaleKey( spep_2 -3 + 233, 1, 3.15 *sr_2b, 3.15 *sr_2b );
setScaleKey( spep_2 -3 + 234, 1, 3.32 *sr_2b, 3.32 *sr_2b );	--4th impact
setScaleKey( spep_2 -3 + 242, 1, 3.32 *sr_2b, 3.32 *sr_2b );
setScaleKey( spep_2 -3 + 244, 1, 3.15 *sr_2b, 3.15 *sr_2b );
setScaleKey( spep_2 -3 + 246, 1, 2.97 *sr_2b, 2.97 *sr_2b );
setScaleKey( spep_2 -3 + 248, 1, 2.80 *sr_2b, 2.80 *sr_2b );
setScaleKey( spep_2 -3 + 250, 1, 2.63 *sr_2b, 2.63 *sr_2b );
setScaleKey( spep_2 -3 + 252, 1, 2.45 *sr_2b, 2.45 *sr_2b );
setScaleKey( spep_2 -3 + 254, 1, 2.28 *sr_2b, 2.28 *sr_2b );
setScaleKey( spep_2 -3 + 256, 1, 2.11 *sr_2b, 2.11 *sr_2b );
setScaleKey( spep_2 -3 + 258, 1, 1.93 *sr_2b, 1.93 *sr_2b );

setRotateKey( spep_2 -3 + 129, 1, 0 );
setRotateKey( spep_2 -3 + 200, 1, 4.5 );
setRotateKey( spep_2 -3 + 202, 1, 4 );
setRotateKey( spep_2 -3 + 204, 1, 3.5 );
setRotateKey( spep_2 -3 + 206, 1, 3.1 );
setRotateKey( spep_2 -3 + 208, 1, 2.6 );
setRotateKey( spep_2 -3 + 210, 1, 2.2 );
setRotateKey( spep_2 -3 + 212, 1, 1.8 );
setRotateKey( spep_2 -3 + 214, 1, 1.4 );
setRotateKey( spep_2 -3 + 216, 1, 1 );
setRotateKey( spep_2 -3 + 218, 1, 0.6 );
setRotateKey( spep_2 -3 + 220, 1, 0.3 );
setRotateKey( spep_2 -3 + 222, 1, 0 );
setRotateKey( spep_2 -3 + 224, 1, -0.3 );
setRotateKey( spep_2 -3 + 226, 1, -0.6 );
setRotateKey( spep_2 -3 + 228, 1, -0.9 );
setRotateKey( spep_2 -3 + 230, 1, -1.1 );
setRotateKey( spep_2 -3 + 232, 1, -1.3 );
setRotateKey( spep_2 -3 + 258, 1, -1.3 );


-- ** 音 ** --
--悟空パンチ
SE009 = playSeVer2( spep_2 + 62, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 70, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE010, 79 );
SE011 = playSeVer2( spep_2 + 70, 1110, "", 0, 0, 0, -1);
--悟空パンチ２
SE012 = playSeVer2( spep_2 + 104, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE012, 86 );
SE013 = playSeVer2( spep_2 + 104, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE013, 91 );
--ズームアウト
SE014 = playSeVer2( spep_2 + 126, 1072, "", 0, 0, 0, -1);
--画面遷移
SE015 = playSeVer2( spep_2 + 176, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE015, 75 );
setPitch( spep_2 + 176, SE015, -400 );
setTimeStretch( SE015, 0.73, 30, 4 );
--蹴り
SE016 = playSeVer2( spep_2 + 218, 1004, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 228, 1120, "", 0, 0, 0, -1);
--ピッコロ構える
SE018 = playSeVer2( spep_2 + 276, 1003, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 280 -4;

-------------------------------------------------
-- ピッコロ　ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0); --ピッコロ　ダッシュ	ef_003
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 108 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 108 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 108 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 108 -5, base_3, 255);
setEffAlphaKey( spep_3 + 108 -4, base_3, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 108 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--ピッコロ飛び込む
SE019 = playSeVer2( spep_3 + 26, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 26, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 46, 1314, "",spep_3 + 162, 0, 54, -1);
SE022 = playSeVer2( spep_3 + 54, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 54, SE022, 57 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 108 -4;

-------------------------------------------------
-- ピッコロ攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --ピッコロ攻撃　前	ef_004
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 160 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 160 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 160 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 160 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 160 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --ピッコロ攻撃　裏	ef_004_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 160 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 160 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 160 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 160 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 160 -4, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 160 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 108, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 -3 + 50, 1, 106 );
changeAnime( spep_4 -3 + 74, 1, 108 );

setMoveKey( spep_4 + 0, 1, 25, 9.9 , 0 );
setMoveKey( spep_4 -3 + 2, 1, 27.3, 12.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 29.6, 15.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 31.9, 18.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 34.3, 21.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 36.6, 23.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 39, 26.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 41.4, 29.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 43.9, 32.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 46.3, 35.2 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 46.3, 35.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 113.1, -11.5 , 0 );	--1st impact
setMoveKey( spep_4 -3 + 22, 1, 162.1, -13.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 136.1, 21.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 187.9, 18.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 162.6, -1.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 195.1, 34.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 208.1, -10.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 186.6, 11.7 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 208.1, 18.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 197.9, 13.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 211.1, 16 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 213, 16.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 214.8, 17.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 216.7, 18.3 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 209.7, -10.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 116.4, 188.1 , 0 );	--2nd impact
setMoveKey( spep_4 -3 + 52, 1, 101.5, 247.8 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 50.9, 201.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 87, 208.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 57.9, 235.6 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 88.7, 239.1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 54.3, 185.7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 52.4, 197 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 63, 180.5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 52.9, 181.7 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 60, 166.9 , 0 );
setMoveKey( spep_4 -3 + 73, 1, 51, 148.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 20, 292.1 , 0 );	--3rd impact
setMoveKey( spep_4 -3 + 76, 1, 64.1, 318.8 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 29.4, 265.8 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 8.8, 288.3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 48.1, 295.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 16.8, 300.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 18.7, 259.3 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 30.8, 279.5 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 17, 279.9 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 16.4, 262.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 21.7, 262.7 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 24.4, 255.7 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 24, 249.6 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 23.6, 243.7 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 23.3, 238.1 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 23, 232.9 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 23, 232.9 , 0 );

sr_4 = 1.1;
setScaleKey( spep_4 + 0, 1, 1.83 *sr_4, 1.83 *sr_4 );
setScaleKey( spep_4 -3 + 2, 1, 1.84 *sr_4, 1.84 *sr_4 );
setScaleKey( spep_4 -3 + 4, 1, 1.85 *sr_4, 1.85 *sr_4 );
setScaleKey( spep_4 -3 + 6, 1, 1.85 *sr_4, 1.85 *sr_4 );
setScaleKey( spep_4 -3 + 8, 1, 1.86 *sr_4, 1.86 *sr_4 );
setScaleKey( spep_4 -3 + 10, 1, 1.87 *sr_4, 1.87 *sr_4 );
setScaleKey( spep_4 -3 + 12, 1, 1.88 *sr_4, 1.88 *sr_4 );
setScaleKey( spep_4 -3 + 14, 1, 1.88 *sr_4, 1.88 *sr_4 );
setScaleKey( spep_4 -3 + 16, 1, 1.89 *sr_4, 1.89 *sr_4 );
setScaleKey( spep_4 -3 + 18, 1, 1.90 *sr_4, 1.90 *sr_4 );
setScaleKey( spep_4 -3 + 19, 1, 1.90 *sr_4, 1.90 *sr_4 );
setScaleKey( spep_4 -3 + 20, 1, 1.96 *sr_4, 1.96 *sr_4 );
setScaleKey( spep_4 -3 + 22, 1, 1.97 *sr_4, 1.97 *sr_4 );
setScaleKey( spep_4 -3 + 24, 1, 1.98 *sr_4, 1.98 *sr_4 );
setScaleKey( spep_4 -3 + 26, 1, 1.98 *sr_4, 1.98 *sr_4 );
setScaleKey( spep_4 -3 + 28, 1, 1.99 *sr_4, 1.99 *sr_4 );
setScaleKey( spep_4 -3 + 38, 1, 1.99 *sr_4, 1.99 *sr_4 );
setScaleKey( spep_4 -3 + 40, 1, 2.00 *sr_4, 2.00 *sr_4 );
setScaleKey( spep_4 -3 + 49, 1, 2.00 *sr_4, 2.00 *sr_4 );
setScaleKey( spep_4 -3 + 50, 1, 2.00 *1.05, 2.00 *1.05 );	--2nd impact
setScaleKey( spep_4 -3 + 73, 1, 2.00 *1.05, 2.00 *1.05 );
setScaleKey( spep_4 -3 + 74, 1, 2.00 *sr_4, 2.00 *sr_4 );	--3rd impact
setScaleKey( spep_4 -3 + 108, 1, 2.00 *sr_4, 2.00 *sr_4 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 49, 1, 0 );
setRotateKey( spep_4 -3 + 50, 1, -68.2 );
setRotateKey( spep_4 -3 + 73, 1, -68.2 );
setRotateKey( spep_4 -3 + 74, 1, -53 );
setRotateKey( spep_4 -3 + 76, 1, -56.5 );
setRotateKey( spep_4 -3 + 78, 1, -59.3 );
setRotateKey( spep_4 -3 + 80, 1, -61.6 );
setRotateKey( spep_4 -3 + 82, 1, -63.4 );
setRotateKey( spep_4 -3 + 84, 1, -64.8 );
setRotateKey( spep_4 -3 + 86, 1, -65.9 );
setRotateKey( spep_4 -3 + 88, 1, -66.7 );
setRotateKey( spep_4 -3 + 90, 1, -67.3 );
setRotateKey( spep_4 -3 + 92, 1, -67.7 );
setRotateKey( spep_4 -3 + 94, 1, -67.9 );
setRotateKey( spep_4 -3 + 96, 1, -68.1 );
setRotateKey( spep_4 -3 + 98, 1, -68.2 );
setRotateKey( spep_4 -3 + 108, 1, -68.2 );


-- ** 音 ** --
--払い
SE023 = playSeVer2( spep_4 + 8, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_4 + 16, 1010, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_4 + 16, 1110, "", 0, 0, 0, -1);
--蹴り上げ
SE026 = playSeVer2( spep_4 + 42, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 42, SE026, 75 );
SE027 = playSeVer2( spep_4 + 44, 1110, "", 0, 0, 0, -1);
--蹴り上げ２
SE028 = playSeVer2( spep_4 + 68, 1187, "",spep_4 + 138, 0, 36, -1);
setSeVolumeByWorkId( spep_4 + 68, SE028, 81 );
SE029 = playSeVer2( spep_4 + 68, 1110, "", 0, 0, 0, -1);
--悟空飛び上がり
SE030 = playSeVer2( spep_4 + 80, 44, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_4 + 82, 1072, "", 0, 0, 0, -1);
--集中線
SE032 = playSeVer2( spep_4 + 102, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 102, SE032, 81 );
SE033 = playSeVer2( spep_4 + 102, 1025, "",spep_4 + 168, 0, 10, -1);
SE034 = playSeVer2( spep_4 + 102, 1264, "", spep_4 + 168, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 102, SE034, 83 );
setPitch( spep_4 + 102, SE034, -200 );
setTimeStretch( SE034, 0.87, 30, 4 );


-- ** 次の準備 ** --
spep_c = spep_4 + 160 -4;

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
spep_5 = spep_c + 96;

-------------------------------------------------
-- 合体攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0); --合体攻撃　前	ef_005
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 280 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, 1.0, 1.0);
setEffScaleKey( spep_5 + 280 -4, base_5f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 280 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 280 -4, base_5f, 255);

base_5b = entryEffect( spep_5 + 0, SP_05b, 0x80, -1, 0, 0, 0); --合体攻撃　裏	ef_005_back
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 280 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, 1.0, 1.0);
setEffScaleKey( spep_5 + 280 -4, base_5b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 280 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 280 -4, base_5b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 280 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 64, 1, 0 );
setDisp( spep_5 -3 + 88, 1, 1 );
setDisp( spep_5 -3 + 128, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 44, 1, 107 );
changeAnime( spep_5 -3 + 88, 1, 5 );

setMoveKey( spep_5 + 0, 1, 92, -113 , 0 );
setMoveKey( spep_5 -3 + 2, 1, 91.9, -107.2 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 91.7, -101.5 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 91.6, -95.8 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 91.4, -90.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 91.3, -84.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 91.1, -78.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 91, -73 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 90.8, -67.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 90.7, -61.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 90.5, -55.9 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 90.4, -50.1 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 90.2, -44.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 90.1, -38.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 89.9, -33 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 89.8, -27.3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 89.6, -21.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 89.5, -15.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 89.3, -10.2 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 89.2, -4.5 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 89, 1.2 , 0 );
setMoveKey( spep_5 -3 + 43, 1, 88.9, 6.9 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 151.1, -257.9 , 0 );	-- 1st impact
setMoveKey( spep_5 -3 + 46, 1, 161.1, -355.1 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 200.1, -191.7 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 93.1, -328.9 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 204.1, -349.9 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 153.5, -346.3 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 249.1, -340.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 314.2, -507.2 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 451.5, -488.9 , 0 );
setMoveKey( spep_5 -3 + 63, 1, 447.8, -476.9 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 18.5, -71.4 , 0 );	-- change
setMoveKey( spep_5 -3 + 90, 1, 17.5, -68.6 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 16.4, -65.8 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 15.3, -63 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 14.2, -60.1 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 13.1, -57.3 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 12, -54.5 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 10.9, -51.7 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 9.9, -48.9 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 8.8, -46.1 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 7.7, -43.3 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 6.6, -40.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 5.5, -37.7 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 4.4, -34.8 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 3.3, -32 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 2.3, -29.2 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 1.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 0.1, -23.6 , 0 );
setMoveKey( spep_5 -3 + 124, 1, -1, -20.8 , 0 );
setMoveKey( spep_5 -3 + 126, 1, -2.1, -18 , 0 );
setMoveKey( spep_5 -3 + 128, 1, -2.1, -18 , 0 );

sr_5 = 1.05;
setScaleKey( spep_5 -3 + 0, 1, 2.45 *sr_5, 2.45 *sr_5 );
setScaleKey( spep_5 -3 + 43, 1, 2.45 *sr_5, 2.45 *sr_5 );
setScaleKey( spep_5 -3 + 44, 1, 2.45 *0.5 *sr_5, 2.45 *0.5 *sr_5);	-- 1st impact
setScaleKey( spep_5 -3 + 52, 1, 2.45 *0.5 *sr_5, 2.45 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 54, 1, 2.95 *0.5 *sr_5, 2.95 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 56, 1, 3.45 *0.5 *sr_5, 3.45 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 58, 1, 3.95 *0.5 *sr_5, 3.95 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 60, 1, 4.45 *0.5 *sr_5, 4.45 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 63, 1, 4.95 *0.5 *sr_5, 4.95 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 88, 1, 4.55, 4.55 );	-- change
setScaleKey( spep_5 -3 + 90, 1, 4.33, 4.33 );
setScaleKey( spep_5 -3 + 92, 1, 4.11, 4.11 );
setScaleKey( spep_5 -3 + 94, 1, 3.89, 3.89 );
setScaleKey( spep_5 -3 + 96, 1, 3.67, 3.67 );
setScaleKey( spep_5 -3 + 98, 1, 3.45, 3.45 );
setScaleKey( spep_5 -3 + 100, 1, 3.24, 3.24 );
setScaleKey( spep_5 -3 + 102, 1, 3.02, 3.02 );
setScaleKey( spep_5 -3 + 104, 1, 2.8, 2.8 );
setScaleKey( spep_5 -3 + 106, 1, 2.58, 2.58 );
setScaleKey( spep_5 -3 + 108, 1, 2.36, 2.36 );
setScaleKey( spep_5 -3 + 110, 1, 2.14, 2.14 );
setScaleKey( spep_5 -3 + 112, 1, 1.93, 1.93 );
setScaleKey( spep_5 -3 + 114, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 116, 1, 1.49, 1.49 );
setScaleKey( spep_5 -3 + 118, 1, 1.27, 1.27 );
setScaleKey( spep_5 -3 + 120, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 122, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 124, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 126, 1, 0.4, 0.4 );
setScaleKey( spep_5 -3 + 128, 1, 0.4, 0.4 );

setRotateKey( spep_5 -3 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 43, 1, 0 );
setRotateKey( spep_5 -3 + 44, 1, 36.7 );
setRotateKey( spep_5 -3 + 63, 1, 36.7 );
setRotateKey( spep_5 -3 + 88, 1, -6.3 );
setRotateKey( spep_5 -3 + 128, 1, -6.3 );


-- ** 音 ** --
--振りかぶり
SE036 = playSeVer2( spep_5 + 0, 1278, "",spep_5 + 68, 0, 20, -1);
SE037 = playSeVer2( spep_5 + -812, 44, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_5 + 44, 1123, "", 0, 0, 0, -1);
--叩き落とし
SE039 = playSeVer2( spep_5 + 44, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 44, SE039, 74 );
--敵飛んでいく
SE040 = playSeVer2( spep_5 + 90, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_5 + 106, 1183, "",spep_5 + 172, 0, 10, -1);
SE042 = playSeVer2( spep_5 + 106, 1121, "",spep_5 + 172, 0, 10, -1);
setSeVolumeByWorkId( spep_5 + 106, SE042, 61 );
--地面激突
SE043 = playSeVer2( spep_5 + 158, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 158, SE043, 92 );
SE044 = playSeVer2( spep_5 + 158, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 158, SE044, 89 );
SE045 = playSeVer2( spep_5 + 158, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 158, SE045, 79 );


dealDamage( spep_5 + 160); -- ダメージ表示フレーム
endPhase( spep_5 + 280 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --冒頭反転	ef_001_re
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 180 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 180 -4, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 180 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 180 -5, base_1, 255);
setEffAlphaKey( spep_1 + 180 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 180 -5, 0, 0, 0, 0, 255);  --黒　背景


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
--肩鳴らす
SE004 = playSeVer2( spep_1 + 70, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE004, 81 );
--悟空飛び込む
SE005 = playSeVer2( spep_1 + 146, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 146, 1207, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 166, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 166, SE007, 46 );


-- ** 次の準備 ** --
spep_2 = spep_1 + 180 -4;

-------------------------------------------------
-- 前方ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); --前方ダッシュ　前　反転	ef_002_re
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 280 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, -1.0, 1.0);
setEffScaleKey( spep_2 + 280 -4, base_2f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 280 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 280 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 280 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); --前方ダッシュ　裏　反転	ef_002_back_re
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 280 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, -1.0, 1.0);
setEffScaleKey( spep_2 + 280 -4, base_2b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 280 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 280 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 280 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 280 -5, 0, 0, 0, 0, 255);  --黒　背景


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
setMoveKey( spep_2 -3 + 59, 1, -9.6, 147.5 , 0 );

setScaleKey( spep_2 + 0, 1, -0.59, 0.59 );
setScaleKey( spep_2 -3 + 2, 1, -0.63, 0.63 );
setScaleKey( spep_2 -3 + 4, 1, -0.68, 0.68 );
setScaleKey( spep_2 -3 + 6, 1, -0.72, 0.72 );
setScaleKey( spep_2 -3 + 8, 1, -0.77, 0.77 );
setScaleKey( spep_2 -3 + 10, 1, -0.81, 0.81 );
setScaleKey( spep_2 -3 + 12, 1, -0.85, 0.85 );
setScaleKey( spep_2 -3 + 14, 1, -0.9, 0.9 );
setScaleKey( spep_2 -3 + 16, 1, -0.94, 0.94 );
setScaleKey( spep_2 -3 + 18, 1, -0.99, 0.99 );
setScaleKey( spep_2 -3 + 20, 1, -1.03, 1.03 );
setScaleKey( spep_2 -3 + 22, 1, -1.07, 1.07 );
setScaleKey( spep_2 -3 + 24, 1, -1.12, 1.12 );
setScaleKey( spep_2 -3 + 26, 1, -1.16, 1.16 );
setScaleKey( spep_2 -3 + 28, 1, -1.21, 1.21 );
setScaleKey( spep_2 -3 + 30, 1, -1.25, 1.25 );
setScaleKey( spep_2 -3 + 32, 1, -1.3, 1.3 );
setScaleKey( spep_2 -3 + 34, 1, -1.35, 1.35 );
setScaleKey( spep_2 -3 + 36, 1, -1.39, 1.39 );
setScaleKey( spep_2 -3 + 38, 1, -1.44, 1.44 );
setScaleKey( spep_2 -3 + 40, 1, -1.49, 1.49 );
setScaleKey( spep_2 -3 + 42, 1, -1.54, 1.54 );
setScaleKey( spep_2 -3 + 44, 1, -1.59, 1.59 );
setScaleKey( spep_2 -3 + 46, 1, -1.64, 1.64 );
setScaleKey( spep_2 -3 + 48, 1, -1.69, 1.69 );
setScaleKey( spep_2 -3 + 50, 1, -1.74, 1.74 );
setScaleKey( spep_2 -3 + 52, 1, -1.79, 1.79 );
setScaleKey( spep_2 -3 + 54, 1, -1.84, 1.84 );
setScaleKey( spep_2 -3 + 56, 1, -1.89, 1.89 );
setScaleKey( spep_2 -3 + 59, 1, -1.95, 1.95 );

setRotateKey( spep_2 + 0, 1, 0 );


-- ** 音 ** --
--瞬間移動
SE008 = playSeVer2( spep_2 + 36, 1109, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 48; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge -12, SE005, 0);
stopSe( SP_dodge -12, SE006, 0);
stopSe( SP_dodge -12, SE007, 0);
stopSe( SP_dodge, SE008, 0);
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


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 130, 1, 0 );
setDisp( spep_2 -3 + 202, 1, 1 );
setDisp( spep_2 -3 + 258, 1, 0 );

changeAnime( spep_2 -3 + 60, 1, 104 );
changeAnime( spep_2 -3 + 78, 1, 108 );
changeAnime( spep_2 -3 + 200, 1, 108 );

setMoveKey( spep_2 -3 + 60, 1, -42.1, -83.5 , 0 );	-- change
setMoveKey( spep_2 -3 + 77, 1, -42.1, -83.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 145.8, -33.5 , 0 );	--1st impact
setMoveKey( spep_2 -3 + 80, 1, 197.2, -99.5 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 157.8, 21.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 81.8, -76.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 202.8, -27 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 116.8, -8.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 136.8, -58.5 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 172.8, -43.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 152.8, -17.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 131, -43.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 144.2, -17.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 143.5, -9.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 142.7, -1.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 141.9, 6.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 141.2, 14.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 140.4, 22.8 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 139.7, 30.8 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 138.9, 38.8 , 0 );
setMoveKey( spep_2 -3 + 113, 1, 138.9, 38.8 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 232.9, 36.8 , 0 );	--2nd impact
setMoveKey( spep_2 -3 + 116, 1, 292.5, -7.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 257.9, 102.8 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 270.1, -37.8 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 335.3, 68.6 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 479.6, -29 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 568.8, 45.4 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 587, 11.8 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 69.2, -28.2 , 0 );	-- chnage
setMoveKey( spep_2 -3 + 202, 1, 74.2, -26.9 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 79.2, -25.6 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 84.2, -24.1 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 89.3, -22.5 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 94.4, -20.7 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 99.4, -18.8 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 104.4, -16.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 109.4, -14.6 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 114.1, -12.4 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 118.8, -10.1 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 123.4, -7.7 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 127.8, -5.2 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 132.1, -2.6 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 136.2, -0.1 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 140.2, 2.5 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 144.2, 5.1 , 0 );
setMoveKey( spep_2 -3 + 233, 1, 144.2, 5.1 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 292.4, 157.4 , 0 );	--4th impact
setMoveKey( spep_2 -3 + 236, 1, 348.4, 215.1 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 325.4, 68.4 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 234.4, 188.4 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 342.4, 175.4 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 283.9, 130.9 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 350.4, 268.4 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 460.8, 216.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 366.3, 242.4 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 521.7, 325.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 494.2, 283.4 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 603.7, 345.9 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 563.1, 404.3 , 0 );

sr_2a = 0.95;
sr_2b = 0.90;
setScaleKey( spep_2 -3 + 60, 1, 2.98 *sr_2a, 2.98 *sr_2a );	--change
setScaleKey( spep_2 -3 + 118, 1, 2.98 *sr_2a, 2.98 *sr_2a );
setScaleKey( spep_2 -3 + 120, 1, 2.83 *sr_2a, 2.83 *sr_2a );
setScaleKey( spep_2 -3 + 122, 1, 2.69 *sr_2a, 2.69 *sr_2a );
setScaleKey( spep_2 -3 + 124, 1, 2.55 *sr_2a, 2.55 *sr_2a );
setScaleKey( spep_2 -3 + 126, 1, 2.41 *sr_2a, 2.41 *sr_2a );
setScaleKey( spep_2 -3 + 129, 1, 2.27 *sr_2a, 2.27 *sr_2a );
setScaleKey( spep_2 -3 + 200, 1, 2.45 *sr_2b, 2.45 *sr_2b );	-- chnage
setScaleKey( spep_2 -3 + 202, 1, 2.50 *sr_2b, 2.50 *sr_2b );
setScaleKey( spep_2 -3 + 204, 1, 2.56 *sr_2b, 2.56 *sr_2b );
setScaleKey( spep_2 -3 + 206, 1, 2.61 *sr_2b, 2.61 *sr_2b );
setScaleKey( spep_2 -3 + 208, 1, 2.67 *sr_2b, 2.67 *sr_2b );
setScaleKey( spep_2 -3 + 210, 1, 2.72 *sr_2b, 2.72 *sr_2b );
setScaleKey( spep_2 -3 + 212, 1, 2.78 *sr_2b, 2.78 *sr_2b );
setScaleKey( spep_2 -3 + 214, 1, 2.83 *sr_2b, 2.83 *sr_2b );
setScaleKey( spep_2 -3 + 216, 1, 2.87 *sr_2b, 2.87 *sr_2b );
setScaleKey( spep_2 -3 + 218, 1, 2.92 *sr_2b, 2.92 *sr_2b );
setScaleKey( spep_2 -3 + 220, 1, 2.96 *sr_2b, 2.96 *sr_2b );
setScaleKey( spep_2 -3 + 222, 1, 3.00 *sr_2b, 3.00 *sr_2b );
setScaleKey( spep_2 -3 + 224, 1, 3.03 *sr_2b, 3.03 *sr_2b );
setScaleKey( spep_2 -3 + 226, 1, 3.07 *sr_2b, 3.07 *sr_2b );
setScaleKey( spep_2 -3 + 228, 1, 3.10 *sr_2b, 3.10 *sr_2b );
setScaleKey( spep_2 -3 + 230, 1, 3.12 *sr_2b, 3.12 *sr_2b );
setScaleKey( spep_2 -3 + 232, 1, 3.15 *sr_2b, 3.15 *sr_2b );
setScaleKey( spep_2 -3 + 233, 1, 3.15 *sr_2b, 3.15 *sr_2b );
setScaleKey( spep_2 -3 + 234, 1, 3.32 *sr_2b, 3.32 *sr_2b );	--4th impact
setScaleKey( spep_2 -3 + 242, 1, 3.32 *sr_2b, 3.32 *sr_2b );
setScaleKey( spep_2 -3 + 244, 1, 3.15 *sr_2b, 3.15 *sr_2b );
setScaleKey( spep_2 -3 + 246, 1, 2.97 *sr_2b, 2.97 *sr_2b );
setScaleKey( spep_2 -3 + 248, 1, 2.80 *sr_2b, 2.80 *sr_2b );
setScaleKey( spep_2 -3 + 250, 1, 2.63 *sr_2b, 2.63 *sr_2b );
setScaleKey( spep_2 -3 + 252, 1, 2.45 *sr_2b, 2.45 *sr_2b );
setScaleKey( spep_2 -3 + 254, 1, 2.28 *sr_2b, 2.28 *sr_2b );
setScaleKey( spep_2 -3 + 256, 1, 2.11 *sr_2b, 2.11 *sr_2b );
setScaleKey( spep_2 -3 + 258, 1, 1.93 *sr_2b, 1.93 *sr_2b );

setRotateKey( spep_2 -3 + 129, 1, 0 );
setRotateKey( spep_2 -3 + 200, 1, 4.5 );
setRotateKey( spep_2 -3 + 202, 1, 4 );
setRotateKey( spep_2 -3 + 204, 1, 3.5 );
setRotateKey( spep_2 -3 + 206, 1, 3.1 );
setRotateKey( spep_2 -3 + 208, 1, 2.6 );
setRotateKey( spep_2 -3 + 210, 1, 2.2 );
setRotateKey( spep_2 -3 + 212, 1, 1.8 );
setRotateKey( spep_2 -3 + 214, 1, 1.4 );
setRotateKey( spep_2 -3 + 216, 1, 1 );
setRotateKey( spep_2 -3 + 218, 1, 0.6 );
setRotateKey( spep_2 -3 + 220, 1, 0.3 );
setRotateKey( spep_2 -3 + 222, 1, 0 );
setRotateKey( spep_2 -3 + 224, 1, -0.3 );
setRotateKey( spep_2 -3 + 226, 1, -0.6 );
setRotateKey( spep_2 -3 + 228, 1, -0.9 );
setRotateKey( spep_2 -3 + 230, 1, -1.1 );
setRotateKey( spep_2 -3 + 232, 1, -1.3 );
setRotateKey( spep_2 -3 + 258, 1, -1.3 );


-- ** 音 ** --
--悟空パンチ
SE009 = playSeVer2( spep_2 + 62, 1003, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 70, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE010, 79 );
SE011 = playSeVer2( spep_2 + 70, 1110, "", 0, 0, 0, -1);
--悟空パンチ２
SE012 = playSeVer2( spep_2 + 104, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE012, 86 );
SE013 = playSeVer2( spep_2 + 104, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE013, 91 );
--ズームアウト
SE014 = playSeVer2( spep_2 + 126, 1072, "", 0, 0, 0, -1);
--画面遷移
SE015 = playSeVer2( spep_2 + 176, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE015, 75 );
setPitch( spep_2 + 176, SE015, -400 );
setTimeStretch( SE015, 0.73, 30, 4 );
--蹴り
SE016 = playSeVer2( spep_2 + 218, 1004, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 228, 1120, "", 0, 0, 0, -1);
--ピッコロ構える
SE018 = playSeVer2( spep_2 + 276, 1003, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 280 -4;

-------------------------------------------------
-- ピッコロ　ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_03r, 0x80, -1, 0, 0, 0); --ピッコロ　ダッシュ　反転	ef_003_re
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 108 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, -1.0, 1.0);
setEffScaleKey( spep_3 + 108 -4, base_3, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 108 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 108 -5, base_3, 255);
setEffAlphaKey( spep_3 + 108 -4, base_3, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 108 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 音 ** --
--ピッコロ飛び込む
SE019 = playSeVer2( spep_3 + 26, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 26, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 46, 1314, "",spep_3 + 162, 0, 54, -1);
SE022 = playSeVer2( spep_3 + 54, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 54, SE022, 57 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 108 -4;

-------------------------------------------------
-- ピッコロ攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0); --ピッコロ攻撃　前　反転	ef_004_re
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 160 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, -1.0, 1.0);
setEffScaleKey( spep_4 + 160 -4, base_4f, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 160 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 160 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 160 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04br, 0x80, -1, 0, 0, 0); --ピッコロ攻撃　裏　反転	ef_004_back_re
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 160 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, -1.0, 1.0);
setEffScaleKey( spep_4 + 160 -4, base_4b, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 160 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 160 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 160 -4, base_4b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 160 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 108, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 -3 + 50, 1, 106 );
changeAnime( spep_4 -3 + 74, 1, 108 );

setMoveKey( spep_4 + 0, 1, 25, 9.9 , 0 );
setMoveKey( spep_4 -3 + 2, 1, 27.3, 12.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 29.6, 15.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 31.9, 18.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 34.3, 21.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 36.6, 23.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 39, 26.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 41.4, 29.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 43.9, 32.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 46.3, 35.2 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 46.3, 35.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 113.1, -11.5 , 0 );	--1st impact
setMoveKey( spep_4 -3 + 22, 1, 162.1, -13.1 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 136.1, 21.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 187.9, 18.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 162.6, -1.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 195.1, 34.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 208.1, -10.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 186.6, 11.7 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 208.1, 18.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 197.9, 13.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 211.1, 16 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 213, 16.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 214.8, 17.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 216.7, 18.3 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 209.7, -10.7 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 116.4, 188.1 , 0 );	--2nd impact
setMoveKey( spep_4 -3 + 52, 1, 101.5, 247.8 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 50.9, 201.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 87, 208.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 57.9, 235.6 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 88.7, 239.1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 54.3, 185.7 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 52.4, 197 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 63, 180.5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 52.9, 181.7 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 60, 166.9 , 0 );
setMoveKey( spep_4 -3 + 73, 1, 51, 148.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 20, 292.1 , 0 );	--3rd impact
setMoveKey( spep_4 -3 + 76, 1, 64.1, 318.8 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 29.4, 265.8 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 8.8, 288.3 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 48.1, 295.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 16.8, 300.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 18.7, 259.3 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 30.8, 279.5 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 17, 279.9 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 16.4, 262.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 21.7, 262.7 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 24.4, 255.7 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 24, 249.6 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 23.6, 243.7 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 23.3, 238.1 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 23, 232.9 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 23, 232.9 , 0 );

sr_4 = 1.1;
setScaleKey( spep_4 + 0, 1, 1.83 *sr_4, 1.83 *sr_4 );
setScaleKey( spep_4 -3 + 2, 1, 1.84 *sr_4, 1.84 *sr_4 );
setScaleKey( spep_4 -3 + 4, 1, 1.85 *sr_4, 1.85 *sr_4 );
setScaleKey( spep_4 -3 + 6, 1, 1.85 *sr_4, 1.85 *sr_4 );
setScaleKey( spep_4 -3 + 8, 1, 1.86 *sr_4, 1.86 *sr_4 );
setScaleKey( spep_4 -3 + 10, 1, 1.87 *sr_4, 1.87 *sr_4 );
setScaleKey( spep_4 -3 + 12, 1, 1.88 *sr_4, 1.88 *sr_4 );
setScaleKey( spep_4 -3 + 14, 1, 1.88 *sr_4, 1.88 *sr_4 );
setScaleKey( spep_4 -3 + 16, 1, 1.89 *sr_4, 1.89 *sr_4 );
setScaleKey( spep_4 -3 + 18, 1, 1.90 *sr_4, 1.90 *sr_4 );
setScaleKey( spep_4 -3 + 19, 1, 1.90 *sr_4, 1.90 *sr_4 );
setScaleKey( spep_4 -3 + 20, 1, 1.96 *sr_4, 1.96 *sr_4 );
setScaleKey( spep_4 -3 + 22, 1, 1.97 *sr_4, 1.97 *sr_4 );
setScaleKey( spep_4 -3 + 24, 1, 1.98 *sr_4, 1.98 *sr_4 );
setScaleKey( spep_4 -3 + 26, 1, 1.98 *sr_4, 1.98 *sr_4 );
setScaleKey( spep_4 -3 + 28, 1, 1.99 *sr_4, 1.99 *sr_4 );
setScaleKey( spep_4 -3 + 38, 1, 1.99 *sr_4, 1.99 *sr_4 );
setScaleKey( spep_4 -3 + 40, 1, 2.00 *sr_4, 2.00 *sr_4 );
setScaleKey( spep_4 -3 + 49, 1, 2.00 *sr_4, 2.00 *sr_4 );
setScaleKey( spep_4 -3 + 50, 1, 2.00 *1.05, 2.00 *1.05 );	--2nd impact
setScaleKey( spep_4 -3 + 73, 1, 2.00 *1.05, 2.00 *1.05 );
setScaleKey( spep_4 -3 + 74, 1, 2.00 *sr_4, 2.00 *sr_4 );	--3rd impact
setScaleKey( spep_4 -3 + 108, 1, 2.00 *sr_4, 2.00 *sr_4 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 49, 1, 0 );
setRotateKey( spep_4 -3 + 50, 1, -68.2 );
setRotateKey( spep_4 -3 + 73, 1, -68.2 );
setRotateKey( spep_4 -3 + 74, 1, -53 );
setRotateKey( spep_4 -3 + 76, 1, -56.5 );
setRotateKey( spep_4 -3 + 78, 1, -59.3 );
setRotateKey( spep_4 -3 + 80, 1, -61.6 );
setRotateKey( spep_4 -3 + 82, 1, -63.4 );
setRotateKey( spep_4 -3 + 84, 1, -64.8 );
setRotateKey( spep_4 -3 + 86, 1, -65.9 );
setRotateKey( spep_4 -3 + 88, 1, -66.7 );
setRotateKey( spep_4 -3 + 90, 1, -67.3 );
setRotateKey( spep_4 -3 + 92, 1, -67.7 );
setRotateKey( spep_4 -3 + 94, 1, -67.9 );
setRotateKey( spep_4 -3 + 96, 1, -68.1 );
setRotateKey( spep_4 -3 + 98, 1, -68.2 );
setRotateKey( spep_4 -3 + 108, 1, -68.2 );


-- ** 音 ** --
--払い
SE023 = playSeVer2( spep_4 + 8, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_4 + 16, 1010, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_4 + 16, 1110, "", 0, 0, 0, -1);
--蹴り上げ
SE026 = playSeVer2( spep_4 + 42, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 42, SE026, 75 );
SE027 = playSeVer2( spep_4 + 44, 1110, "", 0, 0, 0, -1);
--蹴り上げ２
SE028 = playSeVer2( spep_4 + 68, 1187, "",spep_4 + 138, 0, 36, -1);
setSeVolumeByWorkId( spep_4 + 68, SE028, 81 );
SE029 = playSeVer2( spep_4 + 68, 1110, "", 0, 0, 0, -1);
--悟空飛び上がり
SE030 = playSeVer2( spep_4 + 80, 44, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_4 + 82, 1072, "", 0, 0, 0, -1);
--集中線
SE032 = playSeVer2( spep_4 + 102, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 102, SE032, 81 );
SE033 = playSeVer2( spep_4 + 102, 1025, "",spep_4 + 168, 0, 10, -1);
SE034 = playSeVer2( spep_4 + 102, 1264, "", spep_4 + 168, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 102, SE034, 83 );
setPitch( spep_4 + 102, SE034, -200 );
setTimeStretch( SE034, 0.87, 30, 4 );


-- ** 次の準備 ** --
spep_c = spep_4 + 160 -4;

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
spep_5 = spep_c + 96;

-------------------------------------------------
-- 合体攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_5f = entryEffect( spep_5 + 0, SP_05r, 0x100, -1, 0, 0, 0); --合体攻撃　前　反転	ef_005_re
setEffMoveKey( spep_5 + 0, base_5f, 0, 0 , 0);
setEffMoveKey( spep_5 + 280 -4, base_5f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5f, -1.0, 1.0);
setEffScaleKey( spep_5 + 280 -4, base_5f, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5f, 0);
setEffRotateKey( spep_5 + 280 -4, base_5f, 0);
setEffAlphaKey( spep_5 + 0, base_5f, 255);
setEffAlphaKey( spep_5 + 280 -4, base_5f, 255);

base_5b = entryEffect( spep_5 + 0, SP_05br, 0x80, -1, 0, 0, 0); --合体攻撃　裏　反転	ef_005_back_re
setEffMoveKey( spep_5 + 0, base_5b, 0, 0 , 0);
setEffMoveKey( spep_5 + 280 -4, base_5b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5b, -1.0, 1.0);
setEffScaleKey( spep_5 + 280 -4, base_5b, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5b, 0);
setEffRotateKey( spep_5 + 280 -4, base_5b, 0);
setEffAlphaKey( spep_5 + 0, base_5b, 255);
setEffAlphaKey( spep_5 + 280 -4, base_5b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 280 -5, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 64, 1, 0 );
setDisp( spep_5 -3 + 88, 1, 1 );
setDisp( spep_5 -3 + 128, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 44, 1, 107 );
changeAnime( spep_5 -3 + 88, 1, 5 );

setMoveKey( spep_5 + 0, 1, 92, -113 , 0 );
setMoveKey( spep_5 -3 + 2, 1, 91.9, -107.2 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 91.7, -101.5 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 91.6, -95.8 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 91.4, -90.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 91.3, -84.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 91.1, -78.7 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 91, -73 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 90.8, -67.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 90.7, -61.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 90.5, -55.9 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 90.4, -50.1 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 90.2, -44.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 90.1, -38.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 89.9, -33 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 89.8, -27.3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 89.6, -21.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 89.5, -15.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 89.3, -10.2 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 89.2, -4.5 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 89, 1.2 , 0 );
setMoveKey( spep_5 -3 + 43, 1, 88.9, 6.9 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 151.1, -257.9 , 0 );	-- 1st impact
setMoveKey( spep_5 -3 + 46, 1, 161.1, -355.1 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 200.1, -191.7 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 93.1, -328.9 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 204.1, -349.9 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 153.5, -346.3 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 249.1, -340.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 314.2, -507.2 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 451.5, -488.9 , 0 );
setMoveKey( spep_5 -3 + 63, 1, 447.8, -476.9 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 18.5, -71.4 , 0 );	-- change
setMoveKey( spep_5 -3 + 90, 1, 17.5, -68.6 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 16.4, -65.8 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 15.3, -63 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 14.2, -60.1 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 13.1, -57.3 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 12, -54.5 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 10.9, -51.7 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 9.9, -48.9 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 8.8, -46.1 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 7.7, -43.3 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 6.6, -40.5 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 5.5, -37.7 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 4.4, -34.8 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 3.3, -32 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 2.3, -29.2 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 1.2, -26.4 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 0.1, -23.6 , 0 );
setMoveKey( spep_5 -3 + 124, 1, -1, -20.8 , 0 );
setMoveKey( spep_5 -3 + 126, 1, -2.1, -18 , 0 );
setMoveKey( spep_5 -3 + 128, 1, -2.1, -18 , 0 );

sr_5 = 1.05;
setScaleKey( spep_5 -3 + 0, 1, 2.45 *sr_5, 2.45 *sr_5 );
setScaleKey( spep_5 -3 + 43, 1, 2.45 *sr_5, 2.45 *sr_5 );
setScaleKey( spep_5 -3 + 44, 1, 2.45 *0.5 *sr_5, 2.45 *0.5 *sr_5);	-- 1st impact
setScaleKey( spep_5 -3 + 52, 1, 2.45 *0.5 *sr_5, 2.45 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 54, 1, 2.95 *0.5 *sr_5, 2.95 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 56, 1, 3.45 *0.5 *sr_5, 3.45 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 58, 1, 3.95 *0.5 *sr_5, 3.95 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 60, 1, 4.45 *0.5 *sr_5, 4.45 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 63, 1, 4.95 *0.5 *sr_5, 4.95 *0.5 *sr_5);
setScaleKey( spep_5 -3 + 88, 1, 4.55, 4.55 );	-- change
setScaleKey( spep_5 -3 + 90, 1, 4.33, 4.33 );
setScaleKey( spep_5 -3 + 92, 1, 4.11, 4.11 );
setScaleKey( spep_5 -3 + 94, 1, 3.89, 3.89 );
setScaleKey( spep_5 -3 + 96, 1, 3.67, 3.67 );
setScaleKey( spep_5 -3 + 98, 1, 3.45, 3.45 );
setScaleKey( spep_5 -3 + 100, 1, 3.24, 3.24 );
setScaleKey( spep_5 -3 + 102, 1, 3.02, 3.02 );
setScaleKey( spep_5 -3 + 104, 1, 2.8, 2.8 );
setScaleKey( spep_5 -3 + 106, 1, 2.58, 2.58 );
setScaleKey( spep_5 -3 + 108, 1, 2.36, 2.36 );
setScaleKey( spep_5 -3 + 110, 1, 2.14, 2.14 );
setScaleKey( spep_5 -3 + 112, 1, 1.93, 1.93 );
setScaleKey( spep_5 -3 + 114, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 116, 1, 1.49, 1.49 );
setScaleKey( spep_5 -3 + 118, 1, 1.27, 1.27 );
setScaleKey( spep_5 -3 + 120, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 122, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 124, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 126, 1, 0.4, 0.4 );
setScaleKey( spep_5 -3 + 128, 1, 0.4, 0.4 );

setRotateKey( spep_5 -3 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 43, 1, 0 );
setRotateKey( spep_5 -3 + 44, 1, 36.7 );
setRotateKey( spep_5 -3 + 63, 1, 36.7 );
setRotateKey( spep_5 -3 + 88, 1, -6.3 );
setRotateKey( spep_5 -3 + 128, 1, -6.3 );


-- ** 音 ** --
--振りかぶり
SE036 = playSeVer2( spep_5 + 0, 1278, "",spep_5 + 68, 0, 20, -1);
SE037 = playSeVer2( spep_5 + -812, 44, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_5 + 44, 1123, "", 0, 0, 0, -1);
--叩き落とし
SE039 = playSeVer2( spep_5 + 44, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 44, SE039, 74 );
--敵飛んでいく
SE040 = playSeVer2( spep_5 + 90, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_5 + 106, 1183, "",spep_5 + 172, 0, 10, -1);
SE042 = playSeVer2( spep_5 + 106, 1121, "",spep_5 + 172, 0, 10, -1);
setSeVolumeByWorkId( spep_5 + 106, SE042, 61 );
--地面激突
SE043 = playSeVer2( spep_5 + 158, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 158, SE043, 92 );
SE044 = playSeVer2( spep_5 + 158, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 158, SE044, 89 );
SE045 = playSeVer2( spep_5 + 158, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 158, SE045, 79 );


dealDamage( spep_5 + 160); -- ダメージ表示フレーム
endPhase( spep_5 + 280 -8); -- 終了フレーム

end
