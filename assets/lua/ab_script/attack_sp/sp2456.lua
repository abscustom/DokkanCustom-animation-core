--1025430：SSR_ゴールデンメタルクウラ_ゴールデンメタルスーパーノヴァ
--sp_effect_a1_00380
--sp2456

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
SP_01 = 160758; 	--指　気弾溜め〜バストアップ	ef_001
SP_02 = 160759; 	--煽りカメラ　気弾溜め	ef_002
SP_03 = 160761; 	--気弾投げ	ef_003
SP_04 = 160763; 	--擬音のみ	ef_004
SP_04b = 160767; 	--敵に迫る気弾	ef_006
SP_05 = 160765; 	--爆発	ef_005

--エフェクト(てき)
SP_02r = 160760; 	--煽りカメラ　気弾溜め	ef_002r
SP_03r = 160762; 	--気弾投げ	ef_003r
SP_04r = 160764; 	--擬音のみ	ef_004r
SP_05r = 160766; 	--爆発	ef_005r

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


spep_0 = 0;


-------------------------------------------------
-- 指　気弾溜め〜バストアップ
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 208 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 208 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 208 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 208 -5, base_0, 255);
setEffAlphaKey( spep_0 + 208 -4, base_0, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 110;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 100;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 208 -4 -16, 14, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE002 = playSeVer2( spep_0 + 32, 1281, "",spep_0 + 298, 0, 18, -1);
SE005 = playSeVer2( spep_0 + 42, 1227, "",spep_0 + 312, 0, 32, -1);
SE003 = playSeVer2( spep_0 + 32, 1282, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 42, 1354, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 42, 1158, "",spep_0 + 312, 0, 32, -1);
SE007 = playSeVer2( spep_0 + 46, 1209, "", 0, 0, 0, -1);

--顔カットイン
SE008 = playSeVer2( spep_0 + 110, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 208 -4;


-------------------------------------------------
-- 煽りカメラ　気弾溜め
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 78 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 78 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 78 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 78 -5, base_1, 255);
setEffAlphaKey( spep_1 + 78 -4, base_1, 0);

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 78 -4 -14, 12, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 118);

sml = -30;
ssk = 0.4;

setMoveKey( spep_1 -2 + 2, 1, 263.1 +sml, -425.8 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 259.2 +sml, -413.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 256.4 +sml, -415.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 254.1 +sml, -407 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 252.1 +sml, -409.2 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 250.3 +sml, -402.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 248.7 +sml, -403.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 247.2 +sml, -398.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 245.9 +sml, -399.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 244.7 +sml, -395.2 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 243.5 +sml, -396.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 242.4 +sml, -392.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 241.4 +sml, -393.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 240.5 +sml, -389.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 239.6 +sml, -390.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 238.7 +sml, -386.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 237.9 +sml, -388.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 237.1 +sml, -385.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 236.4 +sml, -386.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 235.7 +sml, -382.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 235 +sml, -384.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 234.4 +sml, -380.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 233.8 +sml, -382.9 , 0 );

setScaleKey( spep_1 -2 + 2, 1, 1.96 +ssk, 1.96 +ssk );
setScaleKey( spep_1 -3 + 4, 1, 1.94 +ssk, 1.94 +ssk );
setScaleKey( spep_1 -3 + 6, 1, 1.92 +ssk, 1.92 +ssk );
setScaleKey( spep_1 -3 + 8, 1, 1.91 +ssk, 1.91 +ssk );
setScaleKey( spep_1 -3 + 10, 1, 1.89 +ssk, 1.89 +ssk );
setScaleKey( spep_1 -3 + 12, 1, 1.88 +ssk, 1.88 +ssk );
setScaleKey( spep_1 -3 + 14, 1, 1.87 +ssk, 1.87 +ssk );
setScaleKey( spep_1 -3 + 16, 1, 1.87 +ssk, 1.87 +ssk );
setScaleKey( spep_1 -3 + 18, 1, 1.86 +ssk, 1.86 +ssk );
setScaleKey( spep_1 -3 + 20, 1, 1.85 +ssk, 1.85 +ssk );
setScaleKey( spep_1 -3 + 22, 1, 1.84 +ssk, 1.84 +ssk );
setScaleKey( spep_1 -3 + 24, 1, 1.84 +ssk, 1.84 +ssk );
setScaleKey( spep_1 -3 + 26, 1, 1.83 +ssk, 1.83 +ssk );
setScaleKey( spep_1 -3 + 28, 1, 1.83 +ssk, 1.83 +ssk );
setScaleKey( spep_1 -3 + 30, 1, 1.82 +ssk, 1.82 +ssk );
setScaleKey( spep_1 -3 + 32, 1, 1.81 +ssk, 1.81 +ssk );
setScaleKey( spep_1 -3 + 36, 1, 1.81 +ssk, 1.81 +ssk );
setScaleKey( spep_1 -3 + 38, 1, 1.8 +ssk, 1.8 +ssk );
setScaleKey( spep_1 -3 + 40, 1, 1.8 +ssk, 1.8 +ssk );
setScaleKey( spep_1 -3 + 42, 1, 1.79 +ssk, 1.79 +ssk );
setScaleKey( spep_1 -3 + 46, 1, 1.79 +ssk, 1.79 +ssk );

setRotateKey( spep_1 -2 + 2, 1, 5.9 );
setRotateKey( spep_1 -3 + 28, 1, 5.9 );
setRotateKey( spep_1 -3 + 30, 1, 6 );

-- ** 音 ** --
--気弾大きく
SE009 = playSeVer2( spep_1 + 0, 1240, "",spep_1 + 134, 0, 32, 0.6);
setSeVolumeByWorkId( spep_1 + 0, SE009, 120 );
SE010 = playSeVer2( spep_1 + 0, 1275, "",spep_1 + 134, 0, 32, 0.6);
setSeVolumeByWorkId( spep_1 + 0, SE010, 207 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 44; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 233.8 +sml, -382.9 , 0 );
setMoveKey( SP_dodge + 2, 1, 233.2 +sml, -379.3 , 0 );
setMoveKey( SP_dodge + 4, 1, 232.7 +sml, -381.3 , 0 );
setMoveKey( SP_dodge + 6, 1, 232.1 +sml, -377.8 , 0 );
setMoveKey( SP_dodge + 8, 1, 231.6 +sml, -379.9 , 0 );
setMoveKey( SP_dodge + 10, 1, 231.2 +sml, -376.4 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.79 +ssk, 1.79 +ssk );
setScaleKey( SP_dodge + 2, 1, 1.78 +ssk, 1.78 +ssk );
setScaleKey( SP_dodge + 6, 1, 1.78 +ssk, 1.78 +ssk );
setScaleKey( SP_dodge + 8, 1, 1.77 +ssk, 1.77 +ssk );
setScaleKey( SP_dodge + 10, 1, 1.77 +ssk, 1.77 +ssk );

setRotateKey( SP_dodge + 0, 1, 6 );
setRotateKey( SP_dodge + 10, 1, 6 );

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
setDisp( spep_1 -4 + 78, 1, 0 );

setMoveKey( spep_1 -3 + 48, 1, 233.2 +sml, -379.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 232.7 +sml, -381.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 232.1 +sml, -377.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 231.6 +sml, -379.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 231.2 +sml, -376.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 230.7 +sml, -378.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 230.3 +sml, -375.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 229.9 +sml, -377.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 229.5 +sml, -374.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 229.2 +sml, -376.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 228.9 +sml, -373.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 228.6 +sml, -375.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 228.4 +sml, -372.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 228.2 +sml, -375.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 228 +sml, -372.1 , 0 );
setMoveKey( spep_1 -4 + 78, 1, 227.9 +sml, -374.8 , 0 );

setScaleKey( spep_1 -3 + 48, 1, 1.78 +ssk, 1.78 +ssk );
setScaleKey( spep_1 -3 + 52, 1, 1.78 +ssk, 1.78 +ssk );
setScaleKey( spep_1 -3 + 54, 1, 1.77 +ssk, 1.77 +ssk );
setScaleKey( spep_1 -3 + 58, 1, 1.77 +ssk, 1.77 +ssk );
setScaleKey( spep_1 -3 + 60, 1, 1.76 +ssk, 1.76 +ssk );
setScaleKey( spep_1 -3 + 68, 1, 1.76 +ssk, 1.76 +ssk );
setScaleKey( spep_1 -3 + 70, 1, 1.75 +ssk, 1.75 +ssk );
setScaleKey( spep_1 -4 + 78, 1, 1.75 +ssk, 1.75 +ssk );

setRotateKey( spep_1 -4 + 78, 1, 6 );

-- ** 次の準備 ** --
spep_c = spep_1 + 78 -4;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- 気弾投げ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 88 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 88 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 88 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 88 -5, base_2, 255);
setEffAlphaKey( spep_2 + 88 -4, base_2, 0);

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 88 -4 -8, 6, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾発射前溜め
SE012 = playSeVer2( spep_2 + 2, 1275, "",spep_2 + 50, 4, 20, -1);
setStartTimeMs( SE012,  550 );
SE013 = playSeVer2( spep_2 + 0, 1281, "",spep_2 + 50, 0, 20, -1);

--気弾発射
SE014 = playSeVer2( spep_2 + 24, 1193, "",spep_2 + 182, 0, 16, -1);
SE015 = playSeVer2( spep_2 + 24, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 24, 1146, "",spep_2 + 158, 0, 14, -1);
SE017 = playSeVer2( spep_2 + 24, 1215, "",spep_2 + 158, 0, 14, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 88 -4;


-------------------------------------------------
-- 擬音・敵に迫る気弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 58 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 58 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 58 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 58 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 58 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 58 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 58 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 58 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 58 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 58 -4, base_3b, 0);

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 58 -4 -16, 14, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 58, 1, 0 );

changeAnime( spep_3 + 0, 1, 118 );

-- setMoveKey( spep_3 -3 + 0, 1, 181.3, -300.8 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 180.6, -301 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 178.7, -299.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 175.7, -298.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 172.3, -295.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 168.8, -294.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 165.4, -291.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 162.2, -291.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 159.4, -287.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 156.8, -288.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 154.4, -285.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 152.4, -286.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 150.5, -283 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 148.8, -284.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 147.3, -281.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 145.9, -283.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 144.7, -279.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 143.7, -282 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 142.7, -278.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 141.9, -281.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 141.2, -277.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 140.6, -280.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 140.1, -277.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 139.6, -279.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 139.3, -276.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 139, -279.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 138.8, -276.2 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 138.6, -279.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 138.5, -276.1 , 0 );
setMoveKey( spep_3 -4 + 58, 1, 138.5, -279.2 , 0 );

setScaleKey( spep_3 -2 + 2, 1, 1.55, 1.55 );
setScaleKey( spep_3 -3 + 4, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 6, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 8, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 10, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 12, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 14, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 16, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 18, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_3 -3 + 22, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 24, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 30, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 32, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 34, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 40, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 46, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 48, 1, 1.35, 1.35 );
setScaleKey( spep_3 -4 + 58, 1, 1.35, 1.35 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -4 + 58, 1, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 58 -4;


-------------------------------------------------
-- 爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 112 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, 1.0, 1.0);
setEffScaleKey( spep_4 + 112 -4, base_4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 112 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 112 -4, base_4, 255);

-- ** 黒フェード ** --
entryFadeBg( spep_4 + 0, 0, 112 -2, 0, 0, 0, 0, 200 );  --black bg fade

-- ** 白フェード ** --
entryFade( spep_4 + 0 -2, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 28 -4, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
-- ** 音 ** --
--爆発
SE018 = playSeVer2( spep_4 + 0, 1024, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 18, 1067, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 38, 1159, "", 0, 0, 0, -1);

SE018 = playSeVer2( spep_4 + -6, 1024, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 12, 1067, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 32, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 14 -3); -- ダメージ表示フレーム
endPhase( spep_4 + 112 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;



-------------------------------------------------
-- 指　気弾溜め〜バストアップ
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 208 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 208 -4, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 208 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 208 -5, base_0, 255);
setEffAlphaKey( spep_0 + 208 -4, base_0, 0);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 110;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = -100;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, (cx+40), 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 208 -4 -16, 14, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE002 = playSeVer2( spep_0 + 32, 1281, "",spep_0 + 298, 0, 18, -1);
SE005 = playSeVer2( spep_0 + 42, 1227, "",spep_0 + 312, 0, 32, -1);
SE003 = playSeVer2( spep_0 + 32, 1282, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 42, 1354, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 42, 1158, "",spep_0 + 312, 0, 32, -1);
SE007 = playSeVer2( spep_0 + 46, 1209, "", 0, 0, 0, -1);

--顔カットイン
SE008 = playSeVer2( spep_0 + 110, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 208 -4;


-------------------------------------------------
-- 煽りカメラ　気弾溜め
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 78 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 78 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 78 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 78 -5, base_1, 255);
setEffAlphaKey( spep_1 + 78 -4, base_1, 0);

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 78 -4 -14, 12, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 118);

sml = -30;
ssk = 0.4;

setMoveKey( spep_1 -2 + 2, 1, 263.1 +sml, -425.8 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 259.2 +sml, -413.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 256.4 +sml, -415.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 254.1 +sml, -407 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 252.1 +sml, -409.2 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 250.3 +sml, -402.4 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 248.7 +sml, -403.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 247.2 +sml, -398.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 245.9 +sml, -399.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 244.7 +sml, -395.2 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 243.5 +sml, -396.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 242.4 +sml, -392.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 241.4 +sml, -393.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 240.5 +sml, -389.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 239.6 +sml, -390.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 238.7 +sml, -386.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 237.9 +sml, -388.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 237.1 +sml, -385.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 236.4 +sml, -386.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 235.7 +sml, -382.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 235 +sml, -384.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 234.4 +sml, -380.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 233.8 +sml, -382.9 , 0 );

setScaleKey( spep_1 -2 + 2, 1, 1.96 +ssk, 1.96 +ssk );
setScaleKey( spep_1 -3 + 4, 1, 1.94 +ssk, 1.94 +ssk );
setScaleKey( spep_1 -3 + 6, 1, 1.92 +ssk, 1.92 +ssk );
setScaleKey( spep_1 -3 + 8, 1, 1.91 +ssk, 1.91 +ssk );
setScaleKey( spep_1 -3 + 10, 1, 1.89 +ssk, 1.89 +ssk );
setScaleKey( spep_1 -3 + 12, 1, 1.88 +ssk, 1.88 +ssk );
setScaleKey( spep_1 -3 + 14, 1, 1.87 +ssk, 1.87 +ssk );
setScaleKey( spep_1 -3 + 16, 1, 1.87 +ssk, 1.87 +ssk );
setScaleKey( spep_1 -3 + 18, 1, 1.86 +ssk, 1.86 +ssk );
setScaleKey( spep_1 -3 + 20, 1, 1.85 +ssk, 1.85 +ssk );
setScaleKey( spep_1 -3 + 22, 1, 1.84 +ssk, 1.84 +ssk );
setScaleKey( spep_1 -3 + 24, 1, 1.84 +ssk, 1.84 +ssk );
setScaleKey( spep_1 -3 + 26, 1, 1.83 +ssk, 1.83 +ssk );
setScaleKey( spep_1 -3 + 28, 1, 1.83 +ssk, 1.83 +ssk );
setScaleKey( spep_1 -3 + 30, 1, 1.82 +ssk, 1.82 +ssk );
setScaleKey( spep_1 -3 + 32, 1, 1.81 +ssk, 1.81 +ssk );
setScaleKey( spep_1 -3 + 36, 1, 1.81 +ssk, 1.81 +ssk );
setScaleKey( spep_1 -3 + 38, 1, 1.8 +ssk, 1.8 +ssk );
setScaleKey( spep_1 -3 + 40, 1, 1.8 +ssk, 1.8 +ssk );
setScaleKey( spep_1 -3 + 42, 1, 1.79 +ssk, 1.79 +ssk );
setScaleKey( spep_1 -3 + 46, 1, 1.79 +ssk, 1.79 +ssk );

setRotateKey( spep_1 -2 + 2, 1, 5.9 );
setRotateKey( spep_1 -3 + 28, 1, 5.9 );
setRotateKey( spep_1 -3 + 30, 1, 6 );

-- ** 音 ** --
--気弾大きく
SE009 = playSeVer2( spep_1 + 0, 1240, "",spep_1 + 134, 0, 32, 0.6);
setSeVolumeByWorkId( spep_1 + 0, SE009, 120 );
SE010 = playSeVer2( spep_1 + 0, 1275, "",spep_1 + 134, 0, 32, 0.6);
setSeVolumeByWorkId( spep_1 + 0, SE010, 207 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 44; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
pauseAll( SP_dodge, 67);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 233.8 +sml, -382.9 , 0 );
setMoveKey( SP_dodge + 2, 1, 233.2 +sml, -379.3 , 0 );
setMoveKey( SP_dodge + 4, 1, 232.7 +sml, -381.3 , 0 );
setMoveKey( SP_dodge + 6, 1, 232.1 +sml, -377.8 , 0 );
setMoveKey( SP_dodge + 8, 1, 231.6 +sml, -379.9 , 0 );
setMoveKey( SP_dodge + 10, 1, 231.2 +sml, -376.4 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.79 +ssk, 1.79 +ssk );
setScaleKey( SP_dodge + 2, 1, 1.78 +ssk, 1.78 +ssk );
setScaleKey( SP_dodge + 6, 1, 1.78 +ssk, 1.78 +ssk );
setScaleKey( SP_dodge + 8, 1, 1.77 +ssk, 1.77 +ssk );
setScaleKey( SP_dodge + 10, 1, 1.77 +ssk, 1.77 +ssk );

setRotateKey( SP_dodge + 0, 1, 6 );
setRotateKey( SP_dodge + 10, 1, 6 );

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
setDisp( spep_1 -4 + 78, 1, 0 );

setMoveKey( spep_1 -3 + 48, 1, 233.2 +sml, -379.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 232.7 +sml, -381.3 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 232.1 +sml, -377.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 231.6 +sml, -379.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 231.2 +sml, -376.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 230.7 +sml, -378.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 230.3 +sml, -375.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 229.9 +sml, -377.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 229.5 +sml, -374.2 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 229.2 +sml, -376.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 228.9 +sml, -373.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 228.6 +sml, -375.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 228.4 +sml, -372.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 228.2 +sml, -375.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 228 +sml, -372.1 , 0 );
setMoveKey( spep_1 -4 + 78, 1, 227.9 +sml, -374.8 , 0 );

setScaleKey( spep_1 -3 + 48, 1, 1.78 +ssk, 1.78 +ssk );
setScaleKey( spep_1 -3 + 52, 1, 1.78 +ssk, 1.78 +ssk );
setScaleKey( spep_1 -3 + 54, 1, 1.77 +ssk, 1.77 +ssk );
setScaleKey( spep_1 -3 + 58, 1, 1.77 +ssk, 1.77 +ssk );
setScaleKey( spep_1 -3 + 60, 1, 1.76 +ssk, 1.76 +ssk );
setScaleKey( spep_1 -3 + 68, 1, 1.76 +ssk, 1.76 +ssk );
setScaleKey( spep_1 -3 + 70, 1, 1.75 +ssk, 1.75 +ssk );
setScaleKey( spep_1 -4 + 78, 1, 1.75 +ssk, 1.75 +ssk );

setRotateKey( spep_1 -4 + 78, 1, 6 );

-- ** 次の準備 ** --
spep_c = spep_1 + 78 -4;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- 気弾投げ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 88 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 88 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 88 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 88 -5, base_2, 255);
setEffAlphaKey( spep_2 + 88 -4, base_2, 0);

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 88 -4 -8, 6, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--気弾発射前溜め
SE012 = playSeVer2( spep_2 + 2, 1275, "",spep_2 + 50, 4, 20, -1);
setStartTimeMs( SE012,  550 );
SE013 = playSeVer2( spep_2 + 0, 1281, "",spep_2 + 50, 0, 20, -1);

--気弾発射
SE014 = playSeVer2( spep_2 + 24, 1193, "",spep_2 + 182, 0, 16, -1);
SE015 = playSeVer2( spep_2 + 24, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 24, 1146, "",spep_2 + 158, 0, 14, -1);
SE017 = playSeVer2( spep_2 + 24, 1215, "",spep_2 + 158, 0, 14, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 88 -4;


-------------------------------------------------
-- 擬音・敵に迫る気弾
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 58 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 58 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 58 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 58 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 58 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 58 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 58 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 58 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 58 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 58 -4, base_3b, 0);

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 58 -4 -16, 14, 4, 000, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -4 + 58, 1, 0 );

changeAnime( spep_3 + 0, 1, 118 );

-- setMoveKey( spep_3 -3 + 0, 1, 181.3, -300.8 , 0 );
setMoveKey( spep_3 -2 + 2, 1, 180.6, -301 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 178.7, -299.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 175.7, -298.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 172.3, -295.5 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 168.8, -294.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 165.4, -291.4 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 162.2, -291.5 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 159.4, -287.9 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 156.8, -288.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 154.4, -285.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 152.4, -286.1 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 150.5, -283 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 148.8, -284.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 147.3, -281.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 145.9, -283.2 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 144.7, -279.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 143.7, -282 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 142.7, -278.7 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 141.9, -281.1 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 141.2, -277.8 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 140.6, -280.2 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 140.1, -277.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 139.6, -279.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 139.3, -276.7 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 139, -279.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 138.8, -276.2 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 138.6, -279.2 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 138.5, -276.1 , 0 );
setMoveKey( spep_3 -4 + 58, 1, 138.5, -279.2 , 0 );

setScaleKey( spep_3 -2 + 2, 1, 1.55, 1.55 );
setScaleKey( spep_3 -3 + 4, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 6, 1, 1.52, 1.52 );
setScaleKey( spep_3 -3 + 8, 1, 1.51, 1.51 );
setScaleKey( spep_3 -3 + 10, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 12, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 14, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 16, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 18, 1, 1.44, 1.44 );
setScaleKey( spep_3 -3 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_3 -3 + 22, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 24, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_3 -3 + 30, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 32, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 34, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 38, 1, 1.37, 1.37 );
setScaleKey( spep_3 -3 + 40, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 46, 1, 1.36, 1.36 );
setScaleKey( spep_3 -3 + 48, 1, 1.35, 1.35 );
setScaleKey( spep_3 -4 + 58, 1, 1.35, 1.35 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -4 + 58, 1, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 58 -4;


-------------------------------------------------
-- 爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05r, 0x80, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 112 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, 1.0, 1.0);
setEffScaleKey( spep_4 + 112 -4, base_4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 112 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 112 -4, base_4, 255);

-- ** 黒フェード ** --
entryFadeBg( spep_4 + 0, 0, 112 -2, 0, 0, 0, 0, 200 );  --black bg fade

-- ** 白フェード ** --
entryFade( spep_4 + 0 -2, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 28 -4, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
-- ** 音 ** --
--爆発
SE018 = playSeVer2( spep_4 + 0, 1024, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 18, 1067, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 38, 1159, "", 0, 0, 0, -1);

SE018 = playSeVer2( spep_4 + -6, 1024, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_4 + 12, 1067, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 32, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 14 -3); -- ダメージ表示フレーム
endPhase( spep_4 + 112 -8); -- 終了フレーム

end
