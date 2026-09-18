-- 1024780：UR_トランクス(GT)&ギル_トランクスとギルの作戦
-- sp_effect_a2_00185
-- sp2416

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
SP_01 = 160181;	--待機	ef_001
SP_02 = 160183;	--突進	ef_002
SP_03 = 160185;	--回転から連続攻撃	ef_003
SP_03b = 160186;	--回転から連続攻撃　裏	ef_003_back
SP_04 = 160189;	--ミサイル攻撃	ef_004
SP_04b = 160190;	--ミサイル攻撃　裏	ef_004_back
SP_05 = 160193;	--勝利	ef_005

--エフェクト(てき)
SP_01r = 160182;	--待機　敵側	ef_001_re
SP_02r = 160184;	--突進　敵側	ef_002_re
SP_03r = 160188;	--回転から連続攻撃　敵側	ef_003_re
SP_03br = 160187;	--回転から連続攻撃　敵側　裏	ef_003_back_re
SP_04r = 160192;	--ミサイル攻撃　敵側	ef_004_re
SP_04br = 160191;	--ミサイル攻撃　敵側　裏	ef_004_back_re
SP_05r = 160194;	--勝利　敵側	ef_005_re


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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 待機
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 待機	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 124 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 124 -4, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 124 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 124 -5, base_0, 255);
setEffAlphaKey( spep_0 + 124 -4, base_0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 124 -5, 0, 0, 0, 0, 255);  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 124 -4 - 14, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 28;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = 40;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, cx + 40, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 132, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );

--ギル顔出す
SE002 = playSeVer2( spep_0 + 16, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 141 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 38, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + 124 -4;

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
spep_1 = spep_c + 96;

-------------------------------------------------
-- 突進
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 突進	ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 160 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 160 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 160 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 160 -5, base_1, 255);
setEffAlphaKey( spep_1 + 160 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 160 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--トランクス構える
SE005 = playSeVer2( spep_1 + 0, 1013, "", 0, 0, 0, -1);

--トランクス向かっていく
SE006 = playSeVer2( spep_1 + 32, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 32, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 56, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 56, SE008, 35 );
setTimeStretch( SE008, 1.25, 30, 4 );

--ギル踏み出す
SE009 = playSeVer2( spep_1 + 90, 1150, "",spep_1 + 118, 4, 8, -1);
setSeVolumeByWorkId( spep_1 + 90, SE009, 79 );
setStartTimeMs( SE009,  417 );
setPitch( spep_1 + 90, SE009, 400 );
setTimeStretch( SE009, 1.27, 30, 4 );

--ギル飛び出す
SE010 = playSeVer2( spep_1 + 114, 1119, "", 0, 2, 0, -1);
setStartTimeMs( SE010,  700 );

--ギル踏み出す
SE011 = playSeVer2( spep_1 + 98, 1273, "",spep_1 + 114, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 98, SE011, 65 );

--ギル飛び出す
SE012 = playSeVer2( spep_1 + 110, 1113, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 160 -4;

-------------------------------------------------
-- 回転から連続攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 回転から連続攻撃	ef_003
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 348 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 348 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 348 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 348 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 348 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 回転から連続攻撃　裏	ef_003_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 348 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 348 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 348 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 348 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 348 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 348 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 -3 + 18, 1, 104 );
changeAnime( spep_2 -3 + 72, 1, 4 );
changeAnime( spep_2 -3 + 90, 1, 104 );
changeAnime( spep_2 -3 + 116, 1, 4 );
changeAnime( spep_2 -3 + 134, 1, 104 );

-- setMoveKey( spep_2 -3 + 0, 1, 24.5, 103 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 23.5, 83.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 22.6, 66.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 21.8, 51.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 21.1, 38.9 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 20.6, 27.9 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 20.1, 18.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 19.7, 10.7 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 19.4, 4.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 19.1, -0.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 18.9, -4.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 18.7, -7.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 18.6, -9.9 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 18.5, -11.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 18.5, -12.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 18.5, -12.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 18.5, -12.8 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 18.5, -12.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 18.5, -12.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 18.5, -12.8 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 18.5, -12.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 18.6, -12.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 18.8, -11.4 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 19.1, -10.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 19.2, -9.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 19.3, -9.2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 19.4, -9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 19.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 19.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 18.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 15.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 10.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 5.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 2.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 1.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 2.1, -8.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 4.3, -8.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 8, -8.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 13, -8.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 19.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 27.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 33.8, -8.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 38.9, -8.9 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 42.5, -8.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 44.7, -8.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 45.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 44.7, -8.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 42.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 39, -8.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 34, -8.9 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 27.7, -8.9 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 19.8, -8.9 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 11, -8.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 3.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -3.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -8.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 115, 1, -11.8, -8.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -13.9, -8.9 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -14.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -13.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -9.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -3.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 5.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 16.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 27.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 36.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 42.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 46.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 47.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 47.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 47.1, -8.9 , 0 );

s_2 = 1.17;
-- setScaleKey( spep_2 -3 + 0, 1, 1.79, 1.79 );
setScaleKey( spep_2 -2 + 2 , 1, 1.71 *s_2, 1.71 *s_2 );
setScaleKey( spep_2 -3 + 4 , 1, 1.64 *s_2, 1.64 *s_2 );
setScaleKey( spep_2 -3 + 6 , 1, 1.59 *s_2, 1.59 *s_2 );
setScaleKey( spep_2 -3 + 8 , 1, 1.54 *s_2, 1.54 *s_2 );
setScaleKey( spep_2 -3 + 10, 1, 1.49 *s_2, 1.49 *s_2 );
setScaleKey( spep_2 -3 + 12, 1, 1.46 *s_2, 1.46 *s_2 );
setScaleKey( spep_2 -3 + 14, 1, 1.43 *s_2, 1.43 *s_2 );
setScaleKey( spep_2 -3 + 17, 1, 1.40 *s_2, 1.40 *s_2 );
setScaleKey( spep_2 -3 + 18, 1, 1.40 *s_2, 1.40 *s_2 );
setScaleKey( spep_2 -3 + 20, 1, 1.39 *s_2, 1.39 *s_2 );
setScaleKey( spep_2 -3 + 22, 1, 1.37 *s_2, 1.37 *s_2 );
setScaleKey( spep_2 -3 + 24, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 28, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 30, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 38, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 40, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 42, 1, 1.37 *s_2, 1.37 *s_2 );
setScaleKey( spep_2 -3 + 44, 1, 1.38 *s_2, 1.38 *s_2 );
setScaleKey( spep_2 -3 + 46, 1, 1.40 *s_2, 1.40 *s_2 );
setScaleKey( spep_2 -3 + 48, 1, 1.41 *s_2, 1.41 *s_2 );
setScaleKey( spep_2 -3 + 50, 1, 1.42 *s_2, 1.42 *s_2 );
setScaleKey( spep_2 -3 + 142, 1, 1.42 *s_2, 1.42 *s_2 );

setRotateKey( spep_2 + 0, 1, 0 );


-- ** 音 ** --
--ギルブレーキ
SE013 = playSeVer2( spep_2 + 4, 1323, "",spep_2 + 26, 0, 8, -1);

--ギルクルクル回る
SE014 = playSeVer2( spep_2 + 52, 1329, "",spep_2 + 100, 4, 20, -1);
setStartTimeMs( SE014,  733 );
setPitch( spep_2 + 52, SE014, 600 );
setTimeStretch( SE014, 1.4, 30, 4 );
SE015 = playSeVer2( spep_2 + 90, 1329, "",spep_2 + 140, 6, 20, -1);
setStartTimeMs( SE015,  717 );
setPitch( spep_2 + 90, SE015, 600 );
setTimeStretch( SE015, 1.4, 30, 4 );
SE016 = playSeVer2( spep_2 + 60, 1113, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 60, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE017, 74 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
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
setDisp( spep_2 -3 + 300, 1, 0 );

changeAnime( spep_2 -3 + 156, 1, 108 );
changeAnime( spep_2 -3 + 182, 1, 106 );
changeAnime( spep_2 -3 + 204, 1, 108 );
changeAnime( spep_2 -3 + 224, 1, 106 );

setMoveKey( spep_2 -3 + 144, 1, 46.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 44.9, -8.9 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 42.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 39.1, -8.9 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 34.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 155, 1, 69.5, 17.1 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -16.6, -33.9 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 28.2, -30.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 0.3, 25.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 75.5, -16.1 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 128.1, -4.3 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 126, -1.4 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 159.1, -4.5 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 161.1, -6.6 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 167.9, -6.6 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 173.6, -6.6 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 178.9, -6.7 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 184.1, -6.7 , 0 );
setMoveKey( spep_2 -3 + 181, 1, 189.7, -6.8 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 182.2, -6.7 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 179.3, 16.3 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 106.4, -44.7 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 130.8, 26.2 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 198.7, -8.8 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 167, -27.8 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 201.8, -7.8 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 181.4, 1.2 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 187.9, -6.8 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 200.2, 0 , 0 );
setMoveKey( spep_2 -3 + 203, 1, 213.1, 6.7 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 201.7, 10.5 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 158.4, 17.2 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 103.5, -53.4 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 118.1, -0.6 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 173.3, 9.3 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 190.8, -17.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 173, -15.8 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 181.6, -2.8 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 208, 0.2 , 0 );
setMoveKey( spep_2 -3 + 223, 1, 205.7, -5.8 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 185.7, 9.1 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 89.2, 24.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -49.2, -35.9 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 45.5, -19 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 17.5, -12.8 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 65.2, -2.2 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 31.1, 6.1 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 65.1, 2.2 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 56, -1.7 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 58.8, -1.6 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 61.9, -1.6 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 64.8, -2 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 64.4, -2.6 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 64.1, -3.3 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 63.7, -4 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 63.4, -4.7 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 62.9, -5.6 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 62.5, -6.4 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 62, -7.3 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 61.5, -8.3 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 61, -9.4 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 60.4, -10.6 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 59.8, -11.8 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 59.1, -13.1 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 58.4, -14.6 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 57.6, -16.1 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 56.8, -17.8 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 55.9, -19.6 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 54.9, -21.6 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 53.8, -23.7 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 54.1, -23.7 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 54.3, -23.7 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 62.2, 26.4 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 94.9, -105.9 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 176.5, 31.7 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 146.5, -59.8 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 278.6, -77.3 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 369.9, 3.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 430.3, -93.4 , 0 );

setScaleKey( spep_2 -3 + 156, 1, 1.45 *s_2, 1.45 *s_2 );
setScaleKey( spep_2 -3 + 158, 1, 1.56 *s_2, 1.56 *s_2 );
setScaleKey( spep_2 -3 + 181, 1, 1.56 *s_2, 1.56 *s_2 );
setScaleKey( spep_2 -3 + 182, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 203, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 204, 1, 1.56 *s_2, 1.56 *s_2 );
setScaleKey( spep_2 -3 + 223, 1, 1.56 *s_2, 1.56 *s_2 );
setScaleKey( spep_2 -3 + 224, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 228, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 230, 1, 1.38 *s_2, 1.38 *s_2 );
setScaleKey( spep_2 -3 + 232, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 234, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 238, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 240, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 246, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 248, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 252, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 254, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 258, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 260, 1, 1.37 *s_2, 1.37 *s_2 );
setScaleKey( spep_2 -3 + 262, 1, 1.37 *s_2, 1.37 *s_2 );
setScaleKey( spep_2 -3 + 264, 1, 1.38 *s_2, 1.38 *s_2 );
setScaleKey( spep_2 -3 + 266, 1, 1.38 *s_2, 1.38 *s_2 );
setScaleKey( spep_2 -3 + 268, 1, 1.39 *s_2, 1.39 *s_2 );
setScaleKey( spep_2 -3 + 270, 1, 1.39 *s_2, 1.39 *s_2 );
setScaleKey( spep_2 -3 + 272, 1, 1.40 *s_2, 1.40 *s_2 );
setScaleKey( spep_2 -3 + 274, 1, 1.41 *s_2, 1.41 *s_2 );
setScaleKey( spep_2 -3 + 276, 1, 1.41 *s_2, 1.41 *s_2 );
setScaleKey( spep_2 -3 + 278, 1, 1.42 *s_2, 1.42 *s_2 );
setScaleKey( spep_2 -3 + 280, 1, 1.43 *s_2, 1.43 *s_2 );
setScaleKey( spep_2 -3 + 282, 1, 1.44 *s_2, 1.44 *s_2 );
setScaleKey( spep_2 -3 + 290, 1, 1.44 *s_2, 1.44 *s_2 );
setScaleKey( spep_2 -3 + 292, 1, 1.59 *s_2, 1.59 *s_2 );
setScaleKey( spep_2 -3 + 294, 1, 1.59 *s_2, 1.59 *s_2 );
setScaleKey( spep_2 -3 + 296, 1, 1.60 *s_2, 1.60 *s_2 );
setScaleKey( spep_2 -3 + 300, 1, 1.60 *s_2, 1.60 *s_2 );

setRotateKey( spep_2 -3 + 160, 1, 0 );
setRotateKey( spep_2 -3 + 162, 1, -8.7 );
setRotateKey( spep_2 -3 + 164, 1, -13.6 );
setRotateKey( spep_2 -3 + 166, 1, -16.5 );
setRotateKey( spep_2 -3 + 168, 1, -18.3 );
setRotateKey( spep_2 -3 + 170, 1, -19.6 );
setRotateKey( spep_2 -3 + 172, 1, -20.5 );
setRotateKey( spep_2 -3 + 174, 1, -21.3 );
setRotateKey( spep_2 -3 + 176, 1, -22 );
setRotateKey( spep_2 -3 + 178, 1, -22.7 );
setRotateKey( spep_2 -3 + 181, 1, -23.4 );
setRotateKey( spep_2 -3 + 182, 1, -64.2 );
setRotateKey( spep_2 -3 + 186, 1, -64.2 );
setRotateKey( spep_2 -3 + 188, 1, -53.1 );
setRotateKey( spep_2 -3 + 190, 1, -47.7 );
setRotateKey( spep_2 -3 + 192, 1, -44.9 );
setRotateKey( spep_2 -3 + 194, 1, -43.2 );
setRotateKey( spep_2 -3 + 196, 1, -42.1 );
setRotateKey( spep_2 -3 + 198, 1, -41.3 );
setRotateKey( spep_2 -3 + 200, 1, -40.7 );
setRotateKey( spep_2 -3 + 203, 1, -40 );
setRotateKey( spep_2 -3 + 204, 1, 0 );
setRotateKey( spep_2 -3 + 208, 1, 0 );
setRotateKey( spep_2 -3 + 210, 1, -14.3 );
setRotateKey( spep_2 -3 + 212, 1, -20.3 );
setRotateKey( spep_2 -3 + 214, 1, -23.2 );
setRotateKey( spep_2 -3 + 216, 1, -24.8 );
setRotateKey( spep_2 -3 + 218, 1, -25.9 );
setRotateKey( spep_2 -3 + 220, 1, -26.8 );
setRotateKey( spep_2 -3 + 223, 1, -27.7 );
setRotateKey( spep_2 -3 + 224, 1, -76.2 );
setRotateKey( spep_2 -3 + 228, 1, -76.2 );
setRotateKey( spep_2 -3 + 230, 1, -66.4 );
setRotateKey( spep_2 -3 + 232, 1, -60.1 );
setRotateKey( spep_2 -3 + 234, 1, -57.2 );
setRotateKey( spep_2 -3 + 236, 1, -55.9 );
setRotateKey( spep_2 -3 + 238, 1, -55.2 );
setRotateKey( spep_2 -3 + 240, 1, -54.8 );
setRotateKey( spep_2 -3 + 242, 1, -54.4 );
setRotateKey( spep_2 -3 + 244, 1, -53.9 );
setRotateKey( spep_2 -3 + 246, 1, -53.5 );
setRotateKey( spep_2 -3 + 290, 1, -53.5 );
setRotateKey( spep_2 -3 + 292, 1, 27.4 );
setRotateKey( spep_2 -3 + 300, 1, 27.4 );


-- ** 音 ** --
--トランクスキック
SE018 = playSeVer2( spep_2 + 138, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 144, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 144, 1153, "",spep_2 + 194, 0, 22, -1);
SE021 = playSeVer2( spep_2 + 144, 1010, "", 0, 0, 0, -1);

--パンチ１
SE022 = playSeVer2( spep_2 + 174, 1000, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 174, 1009, "",spep_2 + 198, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 174, SE023, 79 );
SE024 = playSeVer2( spep_2 + 174, 1110, "", 0, 0, 0, -1);

--パンチ２
SE025 = playSeVer2( spep_2 + 196, 1000, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 196, 1010, "",spep_2 + 220, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 196, SE026, 77 );
SE027 = playSeVer2( spep_2 + 196, 1110, "", 0, 0, 0, -1);

--パンチ３
SE028 = playSeVer2( spep_2 + 216, 1000, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 216, 1010, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 216, 1110, "", 0, 0, 0, -1);

--気弾溜め
SE031 = playSeVer2( spep_2 + 242, 1296, "",spep_2 + 290, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 242, SE031, 126 );
SE032 = playSeVer2( spep_2 + 242, 1144, "",spep_2 + 290, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 242, SE032, 58 );
setPitch( spep_2 + 242, SE032, 200 );
setTimeStretch( SE032, 1.13, 30, 4 );

--気弾発射＆爆発
SE033 = playSeVer2( spep_2 + 276, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276, SE033, 72 );
SE034 = playSeVer2( spep_2 + 276, 1023, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 276, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 276, 1145, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 348 -4;

-------------------------------------------------
-- ミサイル攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0); -- ミサイル攻撃	ef_004
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 188 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 188 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 188 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 188 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 188 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04b, 0x80, -1, 0, 0, 0); -- ミサイル攻撃　裏	ef_004_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 188 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 188 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 188 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 188 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 188 -4, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 188 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 88, 1, 1 );
setDisp( spep_3 -3 + 130, 1, 0 );

changeAnime( spep_3 -3 + 88, 1, 105 );

setMoveKey( spep_3 -3 + 88, 1, -303, 4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -256, -2.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -211.2, -8.6 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -171.6, -14 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -139.1, -18.4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -113.5, -21.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -93.2, -24.7 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -76.8, -26.9 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -62.9, -28.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -50.9, -30.5 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -40.1, -32 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -30.4, -33.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -21.3, -34.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -12.7, -35.7 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -4.5, -36.8 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 3.3, -37.9 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 10.9, -38.9 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 18.4, -40 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 25.6, -41 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 32.8, -41.9 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 39.9, -42.9 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 46.7, -43.8 , 0 );

setScaleKey( spep_3 -3 + 88, 1, 2.17, 2.17 );
setScaleKey( spep_3 -3 + 90, 1, 1.97, 1.97 );
setScaleKey( spep_3 -3 + 92, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 94, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 96, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 98, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 100, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 102, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 104, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 106, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 108, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 110, 1, 0.98, 0.98 );
setScaleKey( spep_3 -3 + 112, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 114, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 116, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 118, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 120, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 122, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 124, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 126, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 128, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 130, 1, 0.64, 0.64 );

setRotateKey( spep_3 -3 + 88, 1, 30.2 );
setRotateKey( spep_3 -3 + 130, 1, 30.2 );


-- ** 音 ** --
--ミサイル準備
SE037 = playSeVer2( spep_3 + 0, 1150, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE037, 84 );
setStartTimeMs( SE037,  417 );
SE038 = playSeVer2( spep_3 + 6, 1220, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 6, SE038, 132 );

--ギル上空へ
SE039 = playSeVer2( spep_3 + 22, 44, "",spep_3 + 62, 0, 22, -1);

--ミサイル発射
SE040 = playSeVer2( spep_3 + 38, 1030, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 38, SE040, 122 );
SE041 = playSeVer2( spep_3 + 38, 1028, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_3 + 40, 1177, "",spep_3 + 144, 0, 8, -1);
SE043 = playSeVer2( spep_3 + 40, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE043, 68 );

--ミサイル飛んでいく
SE044 = playSeVer2( spep_3 + 82, 1202, "", 0, 0, 0, 0.6);

--ギル降りてくる
SE045 = playSeVer2( spep_3 + 182, 1329, "",spep_3 + 262, 16, 8, -1);
setStartTimeMs( SE045,  1133 );
setPitch( spep_3 + 182, SE045, 600 );
setTimeStretch( SE045, 1.4, 30, 4 );

--爆発
SE046 = playSeVer2( spep_3 + 130, 1159, "", 0, 0, 0, -1);

--環境音
SE047 = playSeVer2( spep_3 + 130, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 130, SE047, 18 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 188 -4;


-------------------------------------------------
-- 勝利
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); -- 勝利	ef_005
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 156 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, 1.0, 1.0);
setEffScaleKey( spep_4 + 156 -4, base_4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 156 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 156 -4, base_4, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 156 -4, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--ギル降りてくる
SE048 = playSeVer2( spep_4 + 0, 1189, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 30 -3); -- ダメージ表示フレーム
endPhase( spep_4 + 156 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 待機
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 待機	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 124 -4, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 124 -4, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 124 -4, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 124 -5, base_0, 255);
setEffAlphaKey( spep_0 + 124 -4, base_0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 124 -5, 0, 0, 0, 0, 255);  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 124 -4 - 14, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 28;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
cx = -40;
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, cx, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, cx, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, cx - 40, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 132, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );

--ギル顔出す
SE002 = playSeVer2( spep_0 + 16, 1113, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 141 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 38, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_0 + 124 -4;

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
spep_1 = spep_c + 96;

-------------------------------------------------
-- 突進
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- 突進	ef_002
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 160 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 160 -4, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 160 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 160 -5, base_1, 255);
setEffAlphaKey( spep_1 + 160 -4, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 160 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--トランクス構える
SE005 = playSeVer2( spep_1 + 0, 1013, "", 0, 0, 0, -1);

--トランクス向かっていく
SE006 = playSeVer2( spep_1 + 32, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 32, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 56, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 56, SE008, 35 );
setTimeStretch( SE008, 1.25, 30, 4 );

--ギル踏み出す
SE009 = playSeVer2( spep_1 + 90, 1150, "",spep_1 + 118, 4, 8, -1);
setSeVolumeByWorkId( spep_1 + 90, SE009, 79 );
setStartTimeMs( SE009,  417 );
setPitch( spep_1 + 90, SE009, 400 );
setTimeStretch( SE009, 1.27, 30, 4 );

--ギル飛び出す
SE010 = playSeVer2( spep_1 + 114, 1119, "", 0, 2, 0, -1);
setStartTimeMs( SE010,  700 );

--ギル踏み出す
SE011 = playSeVer2( spep_1 + 98, 1273, "",spep_1 + 114, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 98, SE011, 65 );

--ギル飛び出す
SE012 = playSeVer2( spep_1 + 110, 1113, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 160 -4;

-------------------------------------------------
-- 回転から連続攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- 回転から連続攻撃	ef_003
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 348 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, -1.0, 1.0);
setEffScaleKey( spep_2 + 348 -4, base_2f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 348 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 348 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 348 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_03br, 0x80, -1, 0, 0, 0); -- 回転から連続攻撃　裏	ef_003_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 348 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, -1.0, 1.0);
setEffScaleKey( spep_2 + 348 -4, base_2b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 348 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 348 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 348 -4, base_2b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 348 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 -3 + 18, 1, 104 );
changeAnime( spep_2 -3 + 72, 1, 4 );
changeAnime( spep_2 -3 + 90, 1, 104 );
changeAnime( spep_2 -3 + 116, 1, 4 );
changeAnime( spep_2 -3 + 134, 1, 104 );

-- setMoveKey( spep_2 -3 + 0, 1, 24.5, 103 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 23.5, 83.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 22.6, 66.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 21.8, 51.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 21.1, 38.9 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 20.6, 27.9 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 20.1, 18.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 19.7, 10.7 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 19.4, 4.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 19.1, -0.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 18.9, -4.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 18.7, -7.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 18.6, -9.9 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 18.5, -11.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 18.5, -12.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 18.5, -12.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 18.5, -12.8 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 18.5, -12.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 18.5, -12.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 18.5, -12.8 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 18.5, -12.5 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 18.6, -12.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 18.8, -11.4 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 19.1, -10.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 19.2, -9.6 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 19.3, -9.2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 19.4, -9 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 19.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 19.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 18.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 15.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 10.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 5.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 2.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 71, 1, 1.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 2.1, -8.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 4.3, -8.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 8, -8.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 13, -8.9 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 19.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 27.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 33.8, -8.9 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 38.9, -8.9 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 42.5, -8.9 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 44.7, -8.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 45.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 44.7, -8.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 42.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 39, -8.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 34, -8.9 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 27.7, -8.9 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 19.8, -8.9 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 11, -8.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 3.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -3.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -8.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 115, 1, -11.8, -8.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -13.9, -8.9 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -14.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -13.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -9.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -3.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 5.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 16.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 27.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 36.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 42.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 46.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 47.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 47.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 47.1, -8.9 , 0 );

s_2 = 1.17;
-- setScaleKey( spep_2 -3 + 0, 1, 1.79, 1.79 );
setScaleKey( spep_2 -2 + 2 , 1, 1.71 *s_2, 1.71 *s_2 );
setScaleKey( spep_2 -3 + 4 , 1, 1.64 *s_2, 1.64 *s_2 );
setScaleKey( spep_2 -3 + 6 , 1, 1.59 *s_2, 1.59 *s_2 );
setScaleKey( spep_2 -3 + 8 , 1, 1.54 *s_2, 1.54 *s_2 );
setScaleKey( spep_2 -3 + 10, 1, 1.49 *s_2, 1.49 *s_2 );
setScaleKey( spep_2 -3 + 12, 1, 1.46 *s_2, 1.46 *s_2 );
setScaleKey( spep_2 -3 + 14, 1, 1.43 *s_2, 1.43 *s_2 );
setScaleKey( spep_2 -3 + 17, 1, 1.40 *s_2, 1.40 *s_2 );
setScaleKey( spep_2 -3 + 18, 1, 1.40 *s_2, 1.40 *s_2 );
setScaleKey( spep_2 -3 + 20, 1, 1.39 *s_2, 1.39 *s_2 );
setScaleKey( spep_2 -3 + 22, 1, 1.37 *s_2, 1.37 *s_2 );
setScaleKey( spep_2 -3 + 24, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 28, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 30, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 38, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 40, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 42, 1, 1.37 *s_2, 1.37 *s_2 );
setScaleKey( spep_2 -3 + 44, 1, 1.38 *s_2, 1.38 *s_2 );
setScaleKey( spep_2 -3 + 46, 1, 1.40 *s_2, 1.40 *s_2 );
setScaleKey( spep_2 -3 + 48, 1, 1.41 *s_2, 1.41 *s_2 );
setScaleKey( spep_2 -3 + 50, 1, 1.42 *s_2, 1.42 *s_2 );
setScaleKey( spep_2 -3 + 142, 1, 1.42 *s_2, 1.42 *s_2 );

setRotateKey( spep_2 + 0, 1, 0 );


-- ** 音 ** --
--ギルブレーキ
SE013 = playSeVer2( spep_2 + 4, 1323, "",spep_2 + 26, 0, 8, -1);

--ギルクルクル回る
SE014 = playSeVer2( spep_2 + 52, 1329, "",spep_2 + 100, 4, 20, -1);
setStartTimeMs( SE014,  733 );
setPitch( spep_2 + 52, SE014, 600 );
setTimeStretch( SE014, 1.4, 30, 4 );
SE015 = playSeVer2( spep_2 + 90, 1329, "",spep_2 + 140, 6, 20, -1);
setStartTimeMs( SE015,  717 );
setPitch( spep_2 + 90, SE015, 600 );
setTimeStretch( SE015, 1.4, 30, 4 );
SE016 = playSeVer2( spep_2 + 60, 1113, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 60, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE017, 74 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
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
setDisp( spep_2 -3 + 300, 1, 0 );

changeAnime( spep_2 -3 + 156, 1, 108 );
changeAnime( spep_2 -3 + 182, 1, 106 );
changeAnime( spep_2 -3 + 204, 1, 108 );
changeAnime( spep_2 -3 + 224, 1, 106 );

setMoveKey( spep_2 -3 + 144, 1, 46.4, -8.9 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 44.9, -8.9 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 42.6, -8.9 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 39.1, -8.9 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 34.2, -8.9 , 0 );
setMoveKey( spep_2 -3 + 155, 1, 69.5, 17.1 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -16.6, -33.9 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 28.2, -30.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 0.3, 25.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 75.5, -16.1 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 128.1, -4.3 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 126, -1.4 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 159.1, -4.5 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 161.1, -6.6 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 167.9, -6.6 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 173.6, -6.6 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 178.9, -6.7 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 184.1, -6.7 , 0 );
setMoveKey( spep_2 -3 + 181, 1, 189.7, -6.8 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 182.2, -6.7 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 179.3, 16.3 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 106.4, -44.7 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 130.8, 26.2 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 198.7, -8.8 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 167, -27.8 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 201.8, -7.8 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 181.4, 1.2 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 187.9, -6.8 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 200.2, 0 , 0 );
setMoveKey( spep_2 -3 + 203, 1, 213.1, 6.7 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 201.7, 10.5 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 158.4, 17.2 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 103.5, -53.4 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 118.1, -0.6 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 173.3, 9.3 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 190.8, -17.8 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 173, -15.8 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 181.6, -2.8 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 208, 0.2 , 0 );
setMoveKey( spep_2 -3 + 223, 1, 205.7, -5.8 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 185.7, 9.1 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 89.2, 24.1 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -49.2, -35.9 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 45.5, -19 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 17.5, -12.8 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 65.2, -2.2 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 31.1, 6.1 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 65.1, 2.2 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 56, -1.7 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 58.8, -1.6 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 61.9, -1.6 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 64.8, -2 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 64.4, -2.6 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 64.1, -3.3 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 63.7, -4 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 63.4, -4.7 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 62.9, -5.6 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 62.5, -6.4 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 62, -7.3 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 61.5, -8.3 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 61, -9.4 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 60.4, -10.6 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 59.8, -11.8 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 59.1, -13.1 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 58.4, -14.6 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 57.6, -16.1 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 56.8, -17.8 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 55.9, -19.6 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 54.9, -21.6 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 53.8, -23.7 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 54.1, -23.7 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 54.3, -23.7 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 62.2, 26.4 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 94.9, -105.9 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 176.5, 31.7 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 146.5, -59.8 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 278.6, -77.3 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 369.9, 3.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 430.3, -93.4 , 0 );

setScaleKey( spep_2 -3 + 156, 1, 1.45 *s_2, 1.45 *s_2 );
setScaleKey( spep_2 -3 + 158, 1, 1.56 *s_2, 1.56 *s_2 );
setScaleKey( spep_2 -3 + 181, 1, 1.56 *s_2, 1.56 *s_2 );
setScaleKey( spep_2 -3 + 182, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 203, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 204, 1, 1.56 *s_2, 1.56 *s_2 );
setScaleKey( spep_2 -3 + 223, 1, 1.56 *s_2, 1.56 *s_2 );
setScaleKey( spep_2 -3 + 224, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 228, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 230, 1, 1.38 *s_2, 1.38 *s_2 );
setScaleKey( spep_2 -3 + 232, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 234, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 238, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 240, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 246, 1, 1.34 *s_2, 1.34 *s_2 );
setScaleKey( spep_2 -3 + 248, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 252, 1, 1.35 *s_2, 1.35 *s_2 );
setScaleKey( spep_2 -3 + 254, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 258, 1, 1.36 *s_2, 1.36 *s_2 );
setScaleKey( spep_2 -3 + 260, 1, 1.37 *s_2, 1.37 *s_2 );
setScaleKey( spep_2 -3 + 262, 1, 1.37 *s_2, 1.37 *s_2 );
setScaleKey( spep_2 -3 + 264, 1, 1.38 *s_2, 1.38 *s_2 );
setScaleKey( spep_2 -3 + 266, 1, 1.38 *s_2, 1.38 *s_2 );
setScaleKey( spep_2 -3 + 268, 1, 1.39 *s_2, 1.39 *s_2 );
setScaleKey( spep_2 -3 + 270, 1, 1.39 *s_2, 1.39 *s_2 );
setScaleKey( spep_2 -3 + 272, 1, 1.40 *s_2, 1.40 *s_2 );
setScaleKey( spep_2 -3 + 274, 1, 1.41 *s_2, 1.41 *s_2 );
setScaleKey( spep_2 -3 + 276, 1, 1.41 *s_2, 1.41 *s_2 );
setScaleKey( spep_2 -3 + 278, 1, 1.42 *s_2, 1.42 *s_2 );
setScaleKey( spep_2 -3 + 280, 1, 1.43 *s_2, 1.43 *s_2 );
setScaleKey( spep_2 -3 + 282, 1, 1.44 *s_2, 1.44 *s_2 );
setScaleKey( spep_2 -3 + 290, 1, 1.44 *s_2, 1.44 *s_2 );
setScaleKey( spep_2 -3 + 292, 1, 1.59 *s_2, 1.59 *s_2 );
setScaleKey( spep_2 -3 + 294, 1, 1.59 *s_2, 1.59 *s_2 );
setScaleKey( spep_2 -3 + 296, 1, 1.60 *s_2, 1.60 *s_2 );
setScaleKey( spep_2 -3 + 300, 1, 1.60 *s_2, 1.60 *s_2 );

setRotateKey( spep_2 -3 + 160, 1, 0 );
setRotateKey( spep_2 -3 + 162, 1, -8.7 );
setRotateKey( spep_2 -3 + 164, 1, -13.6 );
setRotateKey( spep_2 -3 + 166, 1, -16.5 );
setRotateKey( spep_2 -3 + 168, 1, -18.3 );
setRotateKey( spep_2 -3 + 170, 1, -19.6 );
setRotateKey( spep_2 -3 + 172, 1, -20.5 );
setRotateKey( spep_2 -3 + 174, 1, -21.3 );
setRotateKey( spep_2 -3 + 176, 1, -22 );
setRotateKey( spep_2 -3 + 178, 1, -22.7 );
setRotateKey( spep_2 -3 + 181, 1, -23.4 );
setRotateKey( spep_2 -3 + 182, 1, -64.2 );
setRotateKey( spep_2 -3 + 186, 1, -64.2 );
setRotateKey( spep_2 -3 + 188, 1, -53.1 );
setRotateKey( spep_2 -3 + 190, 1, -47.7 );
setRotateKey( spep_2 -3 + 192, 1, -44.9 );
setRotateKey( spep_2 -3 + 194, 1, -43.2 );
setRotateKey( spep_2 -3 + 196, 1, -42.1 );
setRotateKey( spep_2 -3 + 198, 1, -41.3 );
setRotateKey( spep_2 -3 + 200, 1, -40.7 );
setRotateKey( spep_2 -3 + 203, 1, -40 );
setRotateKey( spep_2 -3 + 204, 1, 0 );
setRotateKey( spep_2 -3 + 208, 1, 0 );
setRotateKey( spep_2 -3 + 210, 1, -14.3 );
setRotateKey( spep_2 -3 + 212, 1, -20.3 );
setRotateKey( spep_2 -3 + 214, 1, -23.2 );
setRotateKey( spep_2 -3 + 216, 1, -24.8 );
setRotateKey( spep_2 -3 + 218, 1, -25.9 );
setRotateKey( spep_2 -3 + 220, 1, -26.8 );
setRotateKey( spep_2 -3 + 223, 1, -27.7 );
setRotateKey( spep_2 -3 + 224, 1, -76.2 );
setRotateKey( spep_2 -3 + 228, 1, -76.2 );
setRotateKey( spep_2 -3 + 230, 1, -66.4 );
setRotateKey( spep_2 -3 + 232, 1, -60.1 );
setRotateKey( spep_2 -3 + 234, 1, -57.2 );
setRotateKey( spep_2 -3 + 236, 1, -55.9 );
setRotateKey( spep_2 -3 + 238, 1, -55.2 );
setRotateKey( spep_2 -3 + 240, 1, -54.8 );
setRotateKey( spep_2 -3 + 242, 1, -54.4 );
setRotateKey( spep_2 -3 + 244, 1, -53.9 );
setRotateKey( spep_2 -3 + 246, 1, -53.5 );
setRotateKey( spep_2 -3 + 290, 1, -53.5 );
setRotateKey( spep_2 -3 + 292, 1, 27.4 );
setRotateKey( spep_2 -3 + 300, 1, 27.4 );


-- ** 音 ** --
--トランクスキック
SE018 = playSeVer2( spep_2 + 138, 1003, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 144, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 144, 1153, "",spep_2 + 194, 0, 22, -1);
SE021 = playSeVer2( spep_2 + 144, 1010, "", 0, 0, 0, -1);

--パンチ１
SE022 = playSeVer2( spep_2 + 174, 1000, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 174, 1009, "",spep_2 + 198, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 174, SE023, 79 );
SE024 = playSeVer2( spep_2 + 174, 1110, "", 0, 0, 0, -1);

--パンチ２
SE025 = playSeVer2( spep_2 + 196, 1000, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 196, 1010, "",spep_2 + 220, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 196, SE026, 77 );
SE027 = playSeVer2( spep_2 + 196, 1110, "", 0, 0, 0, -1);

--パンチ３
SE028 = playSeVer2( spep_2 + 216, 1000, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 216, 1010, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 216, 1110, "", 0, 0, 0, -1);

--気弾溜め
SE031 = playSeVer2( spep_2 + 242, 1296, "",spep_2 + 290, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 242, SE031, 126 );
SE032 = playSeVer2( spep_2 + 242, 1144, "",spep_2 + 290, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 242, SE032, 58 );
setPitch( spep_2 + 242, SE032, 200 );
setTimeStretch( SE032, 1.13, 30, 4 );

--気弾発射＆爆発
SE033 = playSeVer2( spep_2 + 276, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276, SE033, 72 );
SE034 = playSeVer2( spep_2 + 276, 1023, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 276, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 276, 1145, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 348 -4;

-------------------------------------------------
-- ミサイル攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0); -- ミサイル攻撃	ef_004
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 188 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, -1.0, 1.0);
setEffScaleKey( spep_3 + 188 -4, base_3f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 188 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 188 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 188 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_04br, 0x80, -1, 0, 0, 0); -- ミサイル攻撃　裏	ef_004_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 188 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, -1.0, 1.0);
setEffScaleKey( spep_3 + 188 -4, base_3b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 188 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 188 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 188 -4, base_3b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 188 -5, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 88, 1, 1 );
setDisp( spep_3 -3 + 130, 1, 0 );

changeAnime( spep_3 -3 + 88, 1, 105 );

setMoveKey( spep_3 -3 + 88, 1, -303, 4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -256, -2.4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -211.2, -8.6 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -171.6, -14 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -139.1, -18.4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -113.5, -21.9 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -93.2, -24.7 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -76.8, -26.9 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -62.9, -28.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -50.9, -30.5 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -40.1, -32 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -30.4, -33.3 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -21.3, -34.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -12.7, -35.7 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -4.5, -36.8 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 3.3, -37.9 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 10.9, -38.9 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 18.4, -40 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 25.6, -41 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 32.8, -41.9 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 39.9, -42.9 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 46.7, -43.8 , 0 );

setScaleKey( spep_3 -3 + 88, 1, 2.17, 2.17 );
setScaleKey( spep_3 -3 + 90, 1, 1.97, 1.97 );
setScaleKey( spep_3 -3 + 92, 1, 1.77, 1.77 );
setScaleKey( spep_3 -3 + 94, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 96, 1, 1.45, 1.45 );
setScaleKey( spep_3 -3 + 98, 1, 1.34, 1.34 );
setScaleKey( spep_3 -3 + 100, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 102, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 104, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 106, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 108, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 110, 1, 0.98, 0.98 );
setScaleKey( spep_3 -3 + 112, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 114, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 116, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 118, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 120, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 122, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 124, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 126, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 128, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 130, 1, 0.64, 0.64 );

setRotateKey( spep_3 -3 + 88, 1, 30.2 );
setRotateKey( spep_3 -3 + 130, 1, 30.2 );


-- ** 音 ** --
--ミサイル準備
SE037 = playSeVer2( spep_3 + 0, 1150, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE037, 84 );
setStartTimeMs( SE037,  417 );
SE038 = playSeVer2( spep_3 + 6, 1220, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 6, SE038, 132 );

--ギル上空へ
SE039 = playSeVer2( spep_3 + 22, 44, "",spep_3 + 62, 0, 22, -1);

--ミサイル発射
SE040 = playSeVer2( spep_3 + 38, 1030, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 38, SE040, 122 );
SE041 = playSeVer2( spep_3 + 38, 1028, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_3 + 40, 1177, "",spep_3 + 144, 0, 8, -1);
SE043 = playSeVer2( spep_3 + 40, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE043, 68 );

--ミサイル飛んでいく
SE044 = playSeVer2( spep_3 + 82, 1202, "", 0, 0, 0, 0.6);

--ギル降りてくる
SE045 = playSeVer2( spep_3 + 182, 1329, "",spep_3 + 262, 16, 8, -1);
setStartTimeMs( SE045,  1133 );
setPitch( spep_3 + 182, SE045, 600 );
setTimeStretch( SE045, 1.4, 30, 4 );

--爆発
SE046 = playSeVer2( spep_3 + 130, 1159, "", 0, 0, 0, -1);

--環境音
SE047 = playSeVer2( spep_3 + 130, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 130, SE047, 18 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 188 -4;


-------------------------------------------------
-- 勝利
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_05r, 0x80, -1, 0, 0, 0); -- 勝利	ef_005
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 156 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, -1.0, 1.0);
setEffScaleKey( spep_4 + 156 -4, base_4, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 156 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 156 -4, base_4, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 156 -4, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--ギル降りてくる
SE048 = playSeVer2( spep_4 + 0, 1189, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 30 -3); -- ダメージ表示フレーム
endPhase( spep_4 + 156 -8); -- 終了フレーム

end
