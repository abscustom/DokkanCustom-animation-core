--1026730:LR_ドクター・ウイロー_フォトンストライク
--sp_effect_a9_00105
--sp2558

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
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
SP_01 = 161893;	--開幕～カードまで　前面	ef_001
SP_01b = 161894;	--開幕～カードまで　背面	ef_001b
SP_02 = 161896;	--フィニッシュまで　前面	ef_002
SP_02b = 161897;	--フィニッシュまで　背面	ef_002b

--エフェクト(てき)
SP_01r = 161895;	--開幕～カードまで　前面　敵側	ef_001r
SP_02r = 161898;	--フィニッシュまで　前面　敵側	ef_002r


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

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

-- setMoveKey(   0,   1,    0, -5000,   0 );
-- setMoveKey(   1,   1,    0, -5000,   0 );
-- setMoveKey(   2,   1,    0, -5000,   0 );
-- setMoveKey(   3,   1,    0, -5000,   0 );
-- setMoveKey(   4,   1,    0, -5000,   0 );
-- setMoveKey(   5,   1,    0, -5000,   0 );
-- setMoveKey(   6,   1,    0, -5000,   0 );
-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.85);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前面 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 250, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 250, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 250, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 250, base_0, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 背面 ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 250, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 250, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 250, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 250, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 250 + 2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 162;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -1 + 54, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 1, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 2, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 3, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 4, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 5, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 6, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 -1 + 12, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 -1 + 14, 1, 0, -3.8 , 0 );
setMoveKey( spep_0 -1 + 16, 1, 0.4, -4.1 , 0 );
setMoveKey( spep_0 -1 + 18, 1, 0.8, -4.3 , 0 );
setMoveKey( spep_0 -1 + 20, 1, 1.2, -4.5 , 0 );
setMoveKey( spep_0 -1 + 22, 1, 1.6, -4.8 , 0 );
setMoveKey( spep_0 -1 + 24, 1, 2, -5 , 0 );
setMoveKey( spep_0 -1 + 26, 1, 2.4, -5.3 , 0 );
setMoveKey( spep_0 -1 + 28, 1, 2.9, -5.5 , 0 );
setMoveKey( spep_0 -1 + 30, 1, 3.3, -5.7 , 0 );
setMoveKey( spep_0 -1 + 32, 1, 3.7, -6 , 0 );
setMoveKey( spep_0 -1 + 34, 1, 3.8, -6 , 0 );
setMoveKey( spep_0 -1 + 36, 1, 3.8, -6.1 , 0 );
setMoveKey( spep_0 -1 + 38, 1, 3.9, -6.1 , 0 );
setMoveKey( spep_0 -1 + 40, 1, 3.9, -6.1 , 0 );
setMoveKey( spep_0 -1 + 42, 1, 4, -6.2 , 0 );
setMoveKey( spep_0 -1 + 44, 1, 4, -6.2 , 0 );
setMoveKey( spep_0 -1 + 46, 1, 4.1, -6.2 , 0 );
setMoveKey( spep_0 -1 + 48, 1, 4.1, -6.2 , 0 );
setMoveKey( spep_0 -1 + 50, 1, 4.2, -6.3 , 0 );
setMoveKey( spep_0 -1 + 52, 1, 4.3, -6.3 , 0 );
setMoveKey( spep_0 -1 + 54, 1, 4.3, -6.3 , 0 );

setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 3, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_0 -1 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_0 -1 + 14, 1, 1.41, 1.41 );
setScaleKey( spep_0 -1 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_0 -1 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_0 -1 + 20, 1, 1.12, 1.12 );
setScaleKey( spep_0 -1 + 22, 1, 1.03, 1.03 );
setScaleKey( spep_0 -1 + 24, 1, 0.93, 0.93 );
setScaleKey( spep_0 -1 + 26, 1, 0.84, 0.84 );
setScaleKey( spep_0 -1 + 28, 1, 0.74, 0.74 );
setScaleKey( spep_0 -1 + 30, 1, 0.65, 0.65 );
setScaleKey( spep_0 -1 + 32, 1, 0.55, 0.55 );
setScaleKey( spep_0 -1 + 34, 1, 0.54, 0.54 );
setScaleKey( spep_0 -1 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_0 -1 + 38, 1, 0.52, 0.52 );
setScaleKey( spep_0 -1 + 40, 1, 0.51, 0.51 );
setScaleKey( spep_0 -1 + 42, 1, 0.49, 0.49 );
setScaleKey( spep_0 -1 + 44, 1, 0.48, 0.48 );
setScaleKey( spep_0 -1 + 46, 1, 0.47, 0.47 );
setScaleKey( spep_0 -1 + 48, 1, 0.46, 0.46 );
setScaleKey( spep_0 -1 + 50, 1, 0.45, 0.45 );
setScaleKey( spep_0 -1 + 52, 1, 0.43, 0.43 );
setScaleKey( spep_0 -1 + 54, 1, 0.43, 0.43 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -1 + 54, 1, 0 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 + 1, 1, 255 );
setAlphaKey( spep_0 + 2, 1, 255 );
setAlphaKey( spep_0 + 3, 1, 255 );
setAlphaKey( spep_0 + 4, 1, 255 );
setAlphaKey( spep_0 + 5, 1, 255 );
setAlphaKey( spep_0 + 6, 1, 255 );
setAlphaKey( spep_0 -1 + 54, 1, 255 );

-- ** 音 ** --
--ズームアウト
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 8, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 79 );
SE003 = playSeVer2( spep_0 + 8, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 133 );
SE004 = playSeVer2( spep_0 + 46, 44, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 40, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 40, SE005, 67 );
setTimeStretch( SE005, 1.35, 30, 4 );

--画面遷移
SE006 = playSeVer2( spep_0 + 82, 1072, "", 0, 0, 0, 0.6);

--環境音
SE007 = playSeVer2( spep_0 + 96, 1269, "",spep_0 + 264, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 96, SE007, 50 );

-- ** 次の準備 ** --
spep_c = spep_0 + 250;


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
spep_1 = spep_c + 94;


-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 前面	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 438, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 438, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 438, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 438, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背面	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 438, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 438, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 438, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 438, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 438 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--気弾発射
SE010 = playSeVer2( spep_1 + 8, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE010, 79 );
SE011 = playSeVer2( spep_1 + 8, 1406, "",spep_1 + 102, 0, 24, -1);
SE012 = playSeVer2( spep_1 + 8, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 42; --エンドフェイズのフレーム数を置き換える
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
playSe( SP_dodge - 12, 1042);
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
changeAnime( spep_1 -1 + 240, 1, 104 );
changeAnime( spep_1 -1 + 316, 1, 108 );

setDisp( spep_1 -1 + 240, 1, 1 );
setDisp( spep_1 -1 + 332, 1, 0 );

setMoveKey( spep_1 -1 + 240, 1, 590, -184.4 , 0 );
setMoveKey( spep_1 -1 + 241, 1, 590, -184.4 , 0 );
setMoveKey( spep_1 -1 + 242, 1, 587, -178 , 0 );
setMoveKey( spep_1 -1 + 243, 1, 587, -178 , 0 );
setMoveKey( spep_1 -1 + 244, 1, 592.5, -190.7 , 0 );
setMoveKey( spep_1 -1 + 245, 1, 592.5, -190.7 , 0 );
setMoveKey( spep_1 -1 + 246, 1, 586.5, -178 , 0 );
setMoveKey( spep_1 -1 + 247, 1, 586.5, -178 , 0 );
setMoveKey( spep_1 -1 + 248, 1, 575.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 249, 1, 575.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 250, 1, 569.2, -178 , 0 );
setMoveKey( spep_1 -1 + 251, 1, 569.2, -178 , 0 );
setMoveKey( spep_1 -1 + 252, 1, 562, -190.7 , 0 );
setMoveKey( spep_1 -1 + 253, 1, 562, -190.7 , 0 );
setMoveKey( spep_1 -1 + 254, 1, 547, -178 , 0 );
setMoveKey( spep_1 -1 + 255, 1, 547, -178 , 0 );
setMoveKey( spep_1 -1 + 256, 1, 517.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 257, 1, 517.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 258, 1, 477.7, -178 , 0 );
setMoveKey( spep_1 -1 + 259, 1, 477.7, -178 , 0 );
setMoveKey( spep_1 -1 + 260, 1, 425.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 261, 1, 425.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 262, 1, 358.1, -178 , 0 );
setMoveKey( spep_1 -1 + 263, 1, 358.1, -178 , 0 );
setMoveKey( spep_1 -1 + 264, 1, 296.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 265, 1, 296.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 266, 1, 261.1, -178 , 0 );
setMoveKey( spep_1 -1 + 267, 1, 261.1, -178 , 0 );
setMoveKey( spep_1 -1 + 268, 1, 241.2, -190.7 , 0 );
setMoveKey( spep_1 -1 + 269, 1, 241.2, -190.7 , 0 );
setMoveKey( spep_1 -1 + 270, 1, 217.4, -178 , 0 );
setMoveKey( spep_1 -1 + 271, 1, 217.4, -178 , 0 );
setMoveKey( spep_1 -1 + 272, 1, 194.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 273, 1, 194.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 274, 1, 181.8, -178 , 0 );
setMoveKey( spep_1 -1 + 275, 1, 181.8, -178 , 0 );
setMoveKey( spep_1 -1 + 276, 1, 173.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 277, 1, 173.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 278, 1, 165, -178 , 0 );
setMoveKey( spep_1 -1 + 279, 1, 165, -178 , 0 );
setMoveKey( spep_1 -1 + 280, 1, 151.1, -190.7 , 0 );
setMoveKey( spep_1 -1 + 281, 1, 151.1, -190.7 , 0 );
setMoveKey( spep_1 -1 + 282, 1, 141.4, -178 , 0 );
setMoveKey( spep_1 -1 + 283, 1, 141.4, -178 , 0 );
setMoveKey( spep_1 -1 + 284, 1, 142.6, -190.7 , 0 );
setMoveKey( spep_1 -1 + 285, 1, 142.6, -190.7 , 0 );
setMoveKey( spep_1 -1 + 286, 1, 138.4, -178 , 0 );
setMoveKey( spep_1 -1 + 287, 1, 138.4, -178 , 0 );
setMoveKey( spep_1 -1 + 288, 1, 124.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 289, 1, 124.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 290, 1, 122.2, -178 , 0 );
setMoveKey( spep_1 -1 + 291, 1, 122.2, -178 , 0 );
setMoveKey( spep_1 -1 + 292, 1, 126.4, -190.7 , 0 );
setMoveKey( spep_1 -1 + 293, 1, 126.4, -190.7 , 0 );
setMoveKey( spep_1 -1 + 294, 1, 121.2, -178 , 0 );
setMoveKey( spep_1 -1 + 295, 1, 121.2, -178 , 0 );
setMoveKey( spep_1 -1 + 296, 1, 113.7, -190.7 , 0 );
setMoveKey( spep_1 -1 + 297, 1, 113.7, -190.7 , 0 );
setMoveKey( spep_1 -1 + 298, 1, 113, -178 , 0 );
setMoveKey( spep_1 -1 + 299, 1, 113, -178 , 0 );
setMoveKey( spep_1 -1 + 300, 1, 115.6, -190.7 , 0 );
setMoveKey( spep_1 -1 + 301, 1, 115.6, -190.7 , 0 );
setMoveKey( spep_1 -1 + 302, 1, 115.7, -178 , 0 );
setMoveKey( spep_1 -1 + 303, 1, 115.7, -178 , 0 );
setMoveKey( spep_1 -1 + 304, 1, 109.7, -190.7 , 0 );
setMoveKey( spep_1 -1 + 305, 1, 109.7, -190.7 , 0 );
setMoveKey( spep_1 -1 + 306, 1, 106.9, -178 , 0 );
setMoveKey( spep_1 -1 + 307, 1, 106.9, -178 , 0 );
setMoveKey( spep_1 -1 + 308, 1, 114.4, -190.7 , 0 );
setMoveKey( spep_1 -1 + 309, 1, 114.4, -190.7 , 0 );
setMoveKey( spep_1 -1 + 310, 1, 115.6, -178 , 0 );
setMoveKey( spep_1 -1 + 311, 1, 115.6, -178 , 0 );
setMoveKey( spep_1 -1 + 312, 1, 106.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 313, 1, 106.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 314, 1, 108, -178 , 0 );
setMoveKey( spep_1 -1 + 315, 1, 108, -178 , 0 );
setMoveKey( spep_1 -1 + 316, 1, 98.9, -204 , 0 );
setMoveKey( spep_1 -1 + 318, 1, 98.9, -185 , 0 );
setMoveKey( spep_1 -1 + 320, 1, 92.5, -191.6 , 0 );
setMoveKey( spep_1 -1 + 322, 1, 92.5, -172.6 , 0 );
setMoveKey( spep_1 -1 + 324, 1, 98.9, -179.2 , 0 );
setMoveKey( spep_1 -1 + 326, 1, 98.9, -160.2 , 0 );
setMoveKey( spep_1 -1 + 328, 1, 92.5, -166.8 , 0 );
setMoveKey( spep_1 -1 + 330, 1, 92.5, -147.8 , 0 );
setMoveKey( spep_1 -1 + 332, 1, 98.8, -154.4 , 0 );

setScaleKey( spep_1 -1 + 240, 1, 0.8, 0.8 );
setScaleKey( spep_1 -1 + 315, 1, 0.8, 0.8 );
setScaleKey( spep_1 -1 + 316, 1, 0.92, 0.92 );
setScaleKey( spep_1 -1 + 332, 1, 0.92, 0.92 );

setRotateKey( spep_1 -1 + 240, 1, 0 );
setRotateKey( spep_1 -1 + 315, 1, 0 );
setRotateKey( spep_1 -1 + 316, 1, 37 );
setRotateKey( spep_1 -1 + 318, 1, 40.9 );
setRotateKey( spep_1 -1 + 320, 1, 44.9 );
setRotateKey( spep_1 -1 + 322, 1, 48.9 );
setRotateKey( spep_1 -1 + 324, 1, 52.9 );
setRotateKey( spep_1 -1 + 326, 1, 56.9 );
setRotateKey( spep_1 -1 + 328, 1, 60.9 );
setRotateKey( spep_1 -1 + 330, 1, 64.9 );
setRotateKey( spep_1 -1 + 332, 1, 68.9 );

setBlendColor( spep_1 -1 + 320 , 1, 2, 0, 0, 0, 0.5);
setBlendColor( spep_1 -1 + 322 , 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_1 -1 + 324 , 1, 2, 0, 0, 0, 1);
setBlendColor( spep_1 -1 + 331 , 1, 2, 0, 0, 0, 1);
setBlendColor( spep_1 -1 + 332 , 1, 2, 0, 0, 0, 0);

setAlphaKey( spep_1 -1 + 240, 1, 255 );
setAlphaKey( spep_1 -1 + 324, 1, 255 );
setAlphaKey( spep_1 -1 + 326, 1, 191 );
setAlphaKey( spep_1 -1 + 328, 1, 128 );
setAlphaKey( spep_1 -1 + 330, 1, 64 );
setAlphaKey( spep_1 -1 + 332, 1, 0 );

-- ** 音 ** --
--連続気弾音
SE013 = playSeVer2( spep_1 + 78, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE013, 74 );

--連続爆発
SE014 = playSeVer2( spep_1 + 88, 1024, "",spep_1 + 132, 0, 20, -1);
SE015 = playSeVer2( spep_1 + 106, 1011, "",spep_1 + 158, 0, 26, -1);
SE016 = playSeVer2( spep_1 + 124, 1023, "",spep_1 + 172, 0, 22, -1);
SE017 = playSeVer2( spep_1 + 144, 1188, "",spep_1 + 188, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 144, SE017, 69 );
SE018 = playSeVer2( spep_1 + 162, 1060, "",spep_1 + 206, 0, 22, -1);
SE019 = playSeVer2( spep_1 + 182, 1014, "",spep_1 + 224, 0, 14, -1);

--連続気弾音
SE020 = playSeVer2( spep_1 + 202, 1406, "",spep_1 + 312, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 202, SE020, 79 );

--連続爆発
SE021 = playSeVer2( spep_1 + 202, 1011, "",spep_1 + 246, 0, 20, -1);
SE022 = playSeVer2( spep_1 + 216, 1011, "",spep_1 + 258, 0, 18, -1);
SE023 = playSeVer2( spep_1 + 232, 1023, "",spep_1 + 276, 0, 20, -1);
SE024 = playSeVer2( spep_1 + 250, 1024, "",spep_1 + 304, 0, 26, -1);
SE025 = playSeVer2( spep_1 + 266, 1060, "",spep_1 + 314, 0, 26, -1);
SE026 = playSeVer2( spep_1 + 286, 1188, "",spep_1 + 334, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 286, SE026, 79 );

--ラスト爆発
SE027 = playSeVer2( spep_1 + 302, 1067, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 302, 1159, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 306, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 306, SE029, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 324); -- ダメージ表示フレーム
endPhase( spep_1 + 438 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで
-------------------------------------------------
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 前面 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 250, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 250, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 250, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 250, base_0, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 背面 ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + 250, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + 250, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + 250, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + 250, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 250 + 2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 162;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 117 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -1 + 54, 1, 0 );

setMoveKey( spep_0 + 0, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 1, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 2, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 3, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 4, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 5, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 + 6, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 -1 + 12, 1, -0.4, -3.6 , 0 );
setMoveKey( spep_0 -1 + 14, 1, 0, -3.8 , 0 );
setMoveKey( spep_0 -1 + 16, 1, 0.4, -4.1 , 0 );
setMoveKey( spep_0 -1 + 18, 1, 0.8, -4.3 , 0 );
setMoveKey( spep_0 -1 + 20, 1, 1.2, -4.5 , 0 );
setMoveKey( spep_0 -1 + 22, 1, 1.6, -4.8 , 0 );
setMoveKey( spep_0 -1 + 24, 1, 2, -5 , 0 );
setMoveKey( spep_0 -1 + 26, 1, 2.4, -5.3 , 0 );
setMoveKey( spep_0 -1 + 28, 1, 2.9, -5.5 , 0 );
setMoveKey( spep_0 -1 + 30, 1, 3.3, -5.7 , 0 );
setMoveKey( spep_0 -1 + 32, 1, 3.7, -6 , 0 );
setMoveKey( spep_0 -1 + 34, 1, 3.8, -6 , 0 );
setMoveKey( spep_0 -1 + 36, 1, 3.8, -6.1 , 0 );
setMoveKey( spep_0 -1 + 38, 1, 3.9, -6.1 , 0 );
setMoveKey( spep_0 -1 + 40, 1, 3.9, -6.1 , 0 );
setMoveKey( spep_0 -1 + 42, 1, 4, -6.2 , 0 );
setMoveKey( spep_0 -1 + 44, 1, 4, -6.2 , 0 );
setMoveKey( spep_0 -1 + 46, 1, 4.1, -6.2 , 0 );
setMoveKey( spep_0 -1 + 48, 1, 4.1, -6.2 , 0 );
setMoveKey( spep_0 -1 + 50, 1, 4.2, -6.3 , 0 );
setMoveKey( spep_0 -1 + 52, 1, 4.3, -6.3 , 0 );
setMoveKey( spep_0 -1 + 54, 1, 4.3, -6.3 , 0 );

setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 3, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_0 -1 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_0 -1 + 14, 1, 1.41, 1.41 );
setScaleKey( spep_0 -1 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_0 -1 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_0 -1 + 20, 1, 1.12, 1.12 );
setScaleKey( spep_0 -1 + 22, 1, 1.03, 1.03 );
setScaleKey( spep_0 -1 + 24, 1, 0.93, 0.93 );
setScaleKey( spep_0 -1 + 26, 1, 0.84, 0.84 );
setScaleKey( spep_0 -1 + 28, 1, 0.74, 0.74 );
setScaleKey( spep_0 -1 + 30, 1, 0.65, 0.65 );
setScaleKey( spep_0 -1 + 32, 1, 0.55, 0.55 );
setScaleKey( spep_0 -1 + 34, 1, 0.54, 0.54 );
setScaleKey( spep_0 -1 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_0 -1 + 38, 1, 0.52, 0.52 );
setScaleKey( spep_0 -1 + 40, 1, 0.51, 0.51 );
setScaleKey( spep_0 -1 + 42, 1, 0.49, 0.49 );
setScaleKey( spep_0 -1 + 44, 1, 0.48, 0.48 );
setScaleKey( spep_0 -1 + 46, 1, 0.47, 0.47 );
setScaleKey( spep_0 -1 + 48, 1, 0.46, 0.46 );
setScaleKey( spep_0 -1 + 50, 1, 0.45, 0.45 );
setScaleKey( spep_0 -1 + 52, 1, 0.43, 0.43 );
setScaleKey( spep_0 -1 + 54, 1, 0.43, 0.43 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -1 + 54, 1, 0 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 + 1, 1, 255 );
setAlphaKey( spep_0 + 2, 1, 255 );
setAlphaKey( spep_0 + 3, 1, 255 );
setAlphaKey( spep_0 + 4, 1, 255 );
setAlphaKey( spep_0 + 5, 1, 255 );
setAlphaKey( spep_0 + 6, 1, 255 );
setAlphaKey( spep_0 -1 + 54, 1, 255 );

-- ** 音 ** --
--ズームアウト
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 8, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 79 );
SE003 = playSeVer2( spep_0 + 8, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 133 );
SE004 = playSeVer2( spep_0 + 46, 44, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 40, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 40, SE005, 67 );
setTimeStretch( SE005, 1.35, 30, 4 );

--画面遷移
SE006 = playSeVer2( spep_0 + 82, 1072, "", 0, 0, 0, 0.6);

--環境音
SE007 = playSeVer2( spep_0 + 96, 1269, "",spep_0 + 264, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 96, SE007, 50 );

-- ** 次の準備 ** --
spep_c = spep_0 + 250;


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
spep_1 = spep_c + 94;


-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 前面	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 438, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 438, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 438, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 438, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背面	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 438, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 438, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 438, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 438, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 438 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--気弾発射
SE010 = playSeVer2( spep_1 + 8, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE010, 79 );
SE011 = playSeVer2( spep_1 + 8, 1406, "",spep_1 + 102, 0, 24, -1);
SE012 = playSeVer2( spep_1 + 8, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 42; --エンドフェイズのフレーム数を置き換える
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
playSe( SP_dodge - 12, 1042);
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
changeAnime( spep_1 -1 + 240, 1, 104 );
changeAnime( spep_1 -1 + 316, 1, 108 );

setDisp( spep_1 -1 + 240, 1, 1 );
setDisp( spep_1 -1 + 332, 1, 0 );

setMoveKey( spep_1 -1 + 240, 1, 590, -184.4 , 0 );
setMoveKey( spep_1 -1 + 241, 1, 590, -184.4 , 0 );
setMoveKey( spep_1 -1 + 242, 1, 587, -178 , 0 );
setMoveKey( spep_1 -1 + 243, 1, 587, -178 , 0 );
setMoveKey( spep_1 -1 + 244, 1, 592.5, -190.7 , 0 );
setMoveKey( spep_1 -1 + 245, 1, 592.5, -190.7 , 0 );
setMoveKey( spep_1 -1 + 246, 1, 586.5, -178 , 0 );
setMoveKey( spep_1 -1 + 247, 1, 586.5, -178 , 0 );
setMoveKey( spep_1 -1 + 248, 1, 575.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 249, 1, 575.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 250, 1, 569.2, -178 , 0 );
setMoveKey( spep_1 -1 + 251, 1, 569.2, -178 , 0 );
setMoveKey( spep_1 -1 + 252, 1, 562, -190.7 , 0 );
setMoveKey( spep_1 -1 + 253, 1, 562, -190.7 , 0 );
setMoveKey( spep_1 -1 + 254, 1, 547, -178 , 0 );
setMoveKey( spep_1 -1 + 255, 1, 547, -178 , 0 );
setMoveKey( spep_1 -1 + 256, 1, 517.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 257, 1, 517.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 258, 1, 477.7, -178 , 0 );
setMoveKey( spep_1 -1 + 259, 1, 477.7, -178 , 0 );
setMoveKey( spep_1 -1 + 260, 1, 425.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 261, 1, 425.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 262, 1, 358.1, -178 , 0 );
setMoveKey( spep_1 -1 + 263, 1, 358.1, -178 , 0 );
setMoveKey( spep_1 -1 + 264, 1, 296.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 265, 1, 296.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 266, 1, 261.1, -178 , 0 );
setMoveKey( spep_1 -1 + 267, 1, 261.1, -178 , 0 );
setMoveKey( spep_1 -1 + 268, 1, 241.2, -190.7 , 0 );
setMoveKey( spep_1 -1 + 269, 1, 241.2, -190.7 , 0 );
setMoveKey( spep_1 -1 + 270, 1, 217.4, -178 , 0 );
setMoveKey( spep_1 -1 + 271, 1, 217.4, -178 , 0 );
setMoveKey( spep_1 -1 + 272, 1, 194.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 273, 1, 194.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 274, 1, 181.8, -178 , 0 );
setMoveKey( spep_1 -1 + 275, 1, 181.8, -178 , 0 );
setMoveKey( spep_1 -1 + 276, 1, 173.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 277, 1, 173.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 278, 1, 165, -178 , 0 );
setMoveKey( spep_1 -1 + 279, 1, 165, -178 , 0 );
setMoveKey( spep_1 -1 + 280, 1, 151.1, -190.7 , 0 );
setMoveKey( spep_1 -1 + 281, 1, 151.1, -190.7 , 0 );
setMoveKey( spep_1 -1 + 282, 1, 141.4, -178 , 0 );
setMoveKey( spep_1 -1 + 283, 1, 141.4, -178 , 0 );
setMoveKey( spep_1 -1 + 284, 1, 142.6, -190.7 , 0 );
setMoveKey( spep_1 -1 + 285, 1, 142.6, -190.7 , 0 );
setMoveKey( spep_1 -1 + 286, 1, 138.4, -178 , 0 );
setMoveKey( spep_1 -1 + 287, 1, 138.4, -178 , 0 );
setMoveKey( spep_1 -1 + 288, 1, 124.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 289, 1, 124.9, -190.7 , 0 );
setMoveKey( spep_1 -1 + 290, 1, 122.2, -178 , 0 );
setMoveKey( spep_1 -1 + 291, 1, 122.2, -178 , 0 );
setMoveKey( spep_1 -1 + 292, 1, 126.4, -190.7 , 0 );
setMoveKey( spep_1 -1 + 293, 1, 126.4, -190.7 , 0 );
setMoveKey( spep_1 -1 + 294, 1, 121.2, -178 , 0 );
setMoveKey( spep_1 -1 + 295, 1, 121.2, -178 , 0 );
setMoveKey( spep_1 -1 + 296, 1, 113.7, -190.7 , 0 );
setMoveKey( spep_1 -1 + 297, 1, 113.7, -190.7 , 0 );
setMoveKey( spep_1 -1 + 298, 1, 113, -178 , 0 );
setMoveKey( spep_1 -1 + 299, 1, 113, -178 , 0 );
setMoveKey( spep_1 -1 + 300, 1, 115.6, -190.7 , 0 );
setMoveKey( spep_1 -1 + 301, 1, 115.6, -190.7 , 0 );
setMoveKey( spep_1 -1 + 302, 1, 115.7, -178 , 0 );
setMoveKey( spep_1 -1 + 303, 1, 115.7, -178 , 0 );
setMoveKey( spep_1 -1 + 304, 1, 109.7, -190.7 , 0 );
setMoveKey( spep_1 -1 + 305, 1, 109.7, -190.7 , 0 );
setMoveKey( spep_1 -1 + 306, 1, 106.9, -178 , 0 );
setMoveKey( spep_1 -1 + 307, 1, 106.9, -178 , 0 );
setMoveKey( spep_1 -1 + 308, 1, 114.4, -190.7 , 0 );
setMoveKey( spep_1 -1 + 309, 1, 114.4, -190.7 , 0 );
setMoveKey( spep_1 -1 + 310, 1, 115.6, -178 , 0 );
setMoveKey( spep_1 -1 + 311, 1, 115.6, -178 , 0 );
setMoveKey( spep_1 -1 + 312, 1, 106.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 313, 1, 106.8, -190.7 , 0 );
setMoveKey( spep_1 -1 + 314, 1, 108, -178 , 0 );
setMoveKey( spep_1 -1 + 315, 1, 108, -178 , 0 );
setMoveKey( spep_1 -1 + 316, 1, 98.9, -204 , 0 );
setMoveKey( spep_1 -1 + 318, 1, 98.9, -185 , 0 );
setMoveKey( spep_1 -1 + 320, 1, 92.5, -191.6 , 0 );
setMoveKey( spep_1 -1 + 322, 1, 92.5, -172.6 , 0 );
setMoveKey( spep_1 -1 + 324, 1, 98.9, -179.2 , 0 );
setMoveKey( spep_1 -1 + 326, 1, 98.9, -160.2 , 0 );
setMoveKey( spep_1 -1 + 328, 1, 92.5, -166.8 , 0 );
setMoveKey( spep_1 -1 + 330, 1, 92.5, -147.8 , 0 );
setMoveKey( spep_1 -1 + 332, 1, 98.8, -154.4 , 0 );

setScaleKey( spep_1 -1 + 240, 1, 0.8, 0.8 );
setScaleKey( spep_1 -1 + 315, 1, 0.8, 0.8 );
setScaleKey( spep_1 -1 + 316, 1, 0.92, 0.92 );
setScaleKey( spep_1 -1 + 332, 1, 0.92, 0.92 );

setRotateKey( spep_1 -1 + 240, 1, 0 );
setRotateKey( spep_1 -1 + 315, 1, 0 );
setRotateKey( spep_1 -1 + 316, 1, 37 );
setRotateKey( spep_1 -1 + 318, 1, 40.9 );
setRotateKey( spep_1 -1 + 320, 1, 44.9 );
setRotateKey( spep_1 -1 + 322, 1, 48.9 );
setRotateKey( spep_1 -1 + 324, 1, 52.9 );
setRotateKey( spep_1 -1 + 326, 1, 56.9 );
setRotateKey( spep_1 -1 + 328, 1, 60.9 );
setRotateKey( spep_1 -1 + 330, 1, 64.9 );
setRotateKey( spep_1 -1 + 332, 1, 68.9 );

setBlendColor( spep_1 -1 + 320 , 1, 2, 0, 0, 0, 0.5);
setBlendColor( spep_1 -1 + 322 , 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_1 -1 + 324 , 1, 2, 0, 0, 0, 1);
setBlendColor( spep_1 -1 + 331 , 1, 2, 0, 0, 0, 1);
setBlendColor( spep_1 -1 + 332 , 1, 2, 0, 0, 0, 0);

setAlphaKey( spep_1 -1 + 240, 1, 255 );
setAlphaKey( spep_1 -1 + 324, 1, 255 );
setAlphaKey( spep_1 -1 + 326, 1, 191 );
setAlphaKey( spep_1 -1 + 328, 1, 128 );
setAlphaKey( spep_1 -1 + 330, 1, 64 );
setAlphaKey( spep_1 -1 + 332, 1, 0 );

-- ** 音 ** --
--連続気弾音
SE013 = playSeVer2( spep_1 + 78, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE013, 74 );

--連続爆発
SE014 = playSeVer2( spep_1 + 88, 1024, "",spep_1 + 132, 0, 20, -1);
SE015 = playSeVer2( spep_1 + 106, 1011, "",spep_1 + 158, 0, 26, -1);
SE016 = playSeVer2( spep_1 + 124, 1023, "",spep_1 + 172, 0, 22, -1);
SE017 = playSeVer2( spep_1 + 144, 1188, "",spep_1 + 188, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 144, SE017, 69 );
SE018 = playSeVer2( spep_1 + 162, 1060, "",spep_1 + 206, 0, 22, -1);
SE019 = playSeVer2( spep_1 + 182, 1014, "",spep_1 + 224, 0, 14, -1);

--連続気弾音
SE020 = playSeVer2( spep_1 + 202, 1406, "",spep_1 + 312, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 202, SE020, 79 );

--連続爆発
SE021 = playSeVer2( spep_1 + 202, 1011, "",spep_1 + 246, 0, 20, -1);
SE022 = playSeVer2( spep_1 + 216, 1011, "",spep_1 + 258, 0, 18, -1);
SE023 = playSeVer2( spep_1 + 232, 1023, "",spep_1 + 276, 0, 20, -1);
SE024 = playSeVer2( spep_1 + 250, 1024, "",spep_1 + 304, 0, 26, -1);
SE025 = playSeVer2( spep_1 + 266, 1060, "",spep_1 + 314, 0, 26, -1);
SE026 = playSeVer2( spep_1 + 286, 1188, "",spep_1 + 334, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 286, SE026, 79 );

--ラスト爆発
SE027 = playSeVer2( spep_1 + 302, 1067, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 302, 1159, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 306, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 306, SE029, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 324); -- ダメージ表示フレーム
endPhase( spep_1 + 438 -4); -- 終了フレーム

end
