--1026530：UR_孫悟空_メテオコンビネーション
--sp_effect_a1_00399
--sp2546

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
SP_01 = 161813; --セリフカットイン	ef_001		UR、SSRと共通
SP_02 = 161814; --カード後～フィニッシュ　前面	ef_002		UR
SP_02b = 161816; --カード後～フィニッシュ　背面	ef_003		UR

--エフェクト(てき)
SP_02r = 161815; --カード後～フィニッシュ　前面　敵側	ef_002r		UR
SP_02br = 161817; --カード後～フィニッシュ　背面　　敵側	ef_003r		UR

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 100, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 100, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 100, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 100, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--拳握る
SE002 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 22, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 67 );

-- ** 次の準備 ** --
spep_c = spep_0 + 100;

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
-- カード後～フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 918, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 918, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 918, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 918, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 918, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 918, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 918, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 918, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 918 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--腕クロス
SE005 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 40, 0, 20, -1);

--凄む背景
SE006 = playSeVer2( spep_1 + 0, 1391, "",spep_1 + 92, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 0, SE006, 71 );
SE007 = playSeVer2( spep_1 + 0, 1264, "",spep_1 + 218, 0, 102, -1);
setSeVolumeByWorkId( spep_1 + 0, SE007, 55 );

--腕平行に
SE008 = playSeVer2( spep_1 + 38, 1004, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 42, 1006, "", 0, 0, 0, -1);

--力む
SE010 = playSeVer2( spep_1 + 82, 1330, "",spep_1 + 136, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 82, SE010, 79 );
setPitch( spep_1 + 82, SE010, -500 );
setTimeStretch( SE010, 0.67, 30, 4 );

--顔上げる
SE011 = playSeVer2( spep_1 + 128, 1003, "", 0, 0, 0, -1);

--手つく
SE012 = playSeVer2( spep_1 + 172, 1377, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 176, 1192, "",spep_1 + 202, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 176, SE013, 71 );

--クラウチングスタート
SE014 = playSeVer2( spep_1 + 210, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 210, 1330, "",spep_1 + 248, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 210, SE015, 46 );

--走ってくる
SE016 = playSeVer2( spep_1 + 242, 1167, "",spep_1 + 288, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 242, SE016, 45 );
SE017 = playSeVer2( spep_1 + 242, 9, "",spep_1 + 320, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 242, SE017, 71 );
SE018 = playSeVer2( spep_1 + 246, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 246, SE018, 141 );
SE019 = playSeVer2( spep_1 + 256, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 256, SE019, 150 );
SE020 = playSeVer2( spep_1 + 266, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 266, SE020, 157 );
SE021 = playSeVer2( spep_1 + 276, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 276, SE021, 141 );

--とびかかる
SE022 = playSeVer2( spep_1 + 282, 1117, "",spep_1 + 324, 0, 8, -1);
SE023 = playSeVer2( spep_1 + 282, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 298; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
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

-- ** 白フェード ** --
entryFade( spep_1 + 800, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
-- 敵の動き1 --
setDisp( spep_1 -1 + 310, 1, 1 );
setDisp( spep_1 -1 + 430, 1, 0 );

changeAnime( spep_1 -1 + 310, 1, 102 );
changeAnime( spep_1 -1 + 326, 1, 107 );
changeAnime( spep_1 -1 + 370, 1, 106 );
changeAnime( spep_1 -1 + 374, 1, 6 );
changeAnime( spep_1 -1 + 378, 1, 106 );
changeAnime( spep_1 -1 + 382, 1, 6 );
changeAnime( spep_1 -1 + 386, 1, 106 );
changeAnime( spep_1 -1 + 390, 1, 6 );
changeAnime( spep_1 -1 + 394, 1, 106 );
changeAnime( spep_1 -1 + 398, 1, 6 );
changeAnime( spep_1 -1 + 402, 1, 106 );
changeAnime( spep_1 -1 + 410, 1, 6 );
changeAnime( spep_1 -1 + 414, 1, 106 );
changeAnime( spep_1 -1 + 418, 1, 6 );
changeAnime( spep_1 -1 + 422, 1, 106 );

setMoveKey( spep_1 -1 + 310, 1, 118.1, -300.8 , 0 );
setMoveKey( spep_1 -1 + 325, 1, 118.1, -300.8 , 0 );
setMoveKey( spep_1 -1 + 326, 1, 45, 7.8 , 0 );
setMoveKey( spep_1 -1 + 327, 1, 45, 7.8 , 0 );
setMoveKey( spep_1 -1 + 328, 1, 72, -18.2 , 0 );
setMoveKey( spep_1 -1 + 329, 1, 72, -18.2 , 0 );
setMoveKey( spep_1 -1 + 330, 1, 80.8, 0 , 0 );
setMoveKey( spep_1 -1 + 331, 1, 80.8, 0 , 0 );
setMoveKey( spep_1 -1 + 332, 1, 79.2, -13 , 0 );
setMoveKey( spep_1 -1 + 333, 1, 79.2, -13 , 0 );
setMoveKey( spep_1 -1 + 334, 1, 101, 0 , 0 );
setMoveKey( spep_1 -1 + 335, 1, 101, 0 , 0 );
setMoveKey( spep_1 -1 + 336, 1, 104.7, -15.6 , 0 );
setMoveKey( spep_1 -1 + 337, 1, 104.7, -15.6 , 0 );
setMoveKey( spep_1 -1 + 338, 1, 121.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 339, 1, 121.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 340, 1, 132.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 341, 1, 132.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 342, 1, 144.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 343, 1, 144.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 344, 1, 155.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 345, 1, 155.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 346, 1, 167, -7.8 , 0 );
setMoveKey( spep_1 -1 + 347, 1, 167, -7.8 , 0 );
setMoveKey( spep_1 -1 + 348, 1, 178.4, -7.8 , 0 );
setMoveKey( spep_1 -1 + 349, 1, 178.4, -7.8 , 0 );
setMoveKey( spep_1 -1 + 350, 1, 189.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 351, 1, 189.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 352, 1, 201.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 353, 1, 201.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 354, 1, 212.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 355, 1, 212.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 356, 1, 224.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 357, 1, 224.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 358, 1, 235.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 359, 1, 235.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 360, 1, 246.9, -7.8 , 0 );
setMoveKey( spep_1 -1 + 361, 1, 246.9, -7.8 , 0 );
setMoveKey( spep_1 -1 + 362, 1, 258.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 363, 1, 258.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 364, 1, 269.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 365, 1, 269.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 366, 1, 281.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 367, 1, 281.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 368, 1, 292.6, -7.8 , 0 );
setMoveKey( spep_1 -1 + 369, 1, 292.6, -7.8 , 0 );
setMoveKey( spep_1 -1 + 370, 1, 127.7, -4.4 , 0 );
setMoveKey( spep_1 -1 + 371, 1, 127.7, -4.4 , 0 );
setMoveKey( spep_1 -1 + 372, 1, 125.6, -0.3 , 0 );
setMoveKey( spep_1 -1 + 373, 1, 125.6, -0.3 , 0 );
setMoveKey( spep_1 -1 + 374, 1, 93.8, 79 , 0 );
setMoveKey( spep_1 -1 + 375, 1, 93.8, 79 , 0 );
setMoveKey( spep_1 -1 + 376, 1, 91.8, 87.2 , 0 );
setMoveKey( spep_1 -1 + 377, 1, 91.8, 87.2 , 0 );
setMoveKey( spep_1 -1 + 378, 1, 176.3, 6.8 , 0 );
setMoveKey( spep_1 -1 + 379, 1, 176.3, 6.8 , 0 );
setMoveKey( spep_1 -1 + 380, 1, 176.3, 13 , 0 );
setMoveKey( spep_1 -1 + 381, 1, 176.3, 13 , 0 );
setMoveKey( spep_1 -1 + 382, 1, 223.3, 45.5 , 0 );
setMoveKey( spep_1 -1 + 383, 1, 223.3, 45.5 , 0 );
setMoveKey( spep_1 -1 + 384, 1, 221.3, 53.7 , 0 );
setMoveKey( spep_1 -1 + 385, 1, 221.3, 53.7 , 0 );
setMoveKey( spep_1 -1 + 386, 1, 156.1, 34.1 , 0 );
setMoveKey( spep_1 -1 + 387, 1, 156.1, 34.1 , 0 );
setMoveKey( spep_1 -1 + 388, 1, 156.1, 40.3 , 0 );
setMoveKey( spep_1 -1 + 389, 1, 156.1, 40.3 , 0 );
setMoveKey( spep_1 -1 + 390, 1, 112.1, 133.8 , 0 );
setMoveKey( spep_1 -1 + 391, 1, 112.1, 133.8 , 0 );
setMoveKey( spep_1 -1 + 392, 1, 110.1, 142 , 0 );
setMoveKey( spep_1 -1 + 393, 1, 110.1, 142 , 0 );
setMoveKey( spep_1 -1 + 394, 1, 176.4, 8.9 , 0 );
setMoveKey( spep_1 -1 + 395, 1, 176.4, 8.9 , 0 );
setMoveKey( spep_1 -1 + 396, 1, 176.4, 15 , 0 );
setMoveKey( spep_1 -1 + 397, 1, 176.4, 15 , 0 );
setMoveKey( spep_1 -1 + 398, 1, 178.6, 6.9 , 0 );
setMoveKey( spep_1 -1 + 399, 1, 178.6, 6.9 , 0 );
setMoveKey( spep_1 -1 + 400, 1, 176.6, 15.1 , 0 );
setMoveKey( spep_1 -1 + 401, 1, 176.6, 15.1 , 0 );
setMoveKey( spep_1 -1 + 402, 1, 123.3, 12.9 , 0 );
setMoveKey( spep_1 -1 + 403, 1, 123.3, 12.9 , 0 );
setMoveKey( spep_1 -1 + 404, 1, 123.3, 19.1 , 0 );
setMoveKey( spep_1 -1 + 405, 1, 123.3, 19.1 , 0 );
setMoveKey( spep_1 -1 + 406, 1, 160.2, 32.1 , 0 );
setMoveKey( spep_1 -1 + 407, 1, 160.2, 32.1 , 0 );
setMoveKey( spep_1 -1 + 408, 1, 158.2, 40.3 , 0 );
setMoveKey( spep_1 -1 + 409, 1, 158.2, 40.3 , 0 );
setMoveKey( spep_1 -1 + 410, 1, 183.2, -4.2 , 0 );
setMoveKey( spep_1 -1 + 411, 1, 183.2, -4.2 , 0 );
setMoveKey( spep_1 -1 + 412, 1, 183.2, 1.9 , 0 );
setMoveKey( spep_1 -1 + 413, 1, 183.2, 1.9 , 0 );
setMoveKey( spep_1 -1 + 414, 1, 180.5, 6.8 , 0 );
setMoveKey( spep_1 -1 + 415, 1, 180.5, 6.8 , 0 );
setMoveKey( spep_1 -1 + 416, 1, 178.4, 15 , 0 );
setMoveKey( spep_1 -1 + 417, 1, 178.4, 15 , 0 );
setMoveKey( spep_1 -1 + 418, 1, 229.4, 39.4 , 0 );
setMoveKey( spep_1 -1 + 419, 1, 229.4, 39.4 , 0 );
setMoveKey( spep_1 -1 + 420, 1, 229.4, 45.6 , 0 );
setMoveKey( spep_1 -1 + 421, 1, 229.4, 45.6 , 0 );
setMoveKey( spep_1 -1 + 422, 1, 52.2, 136.7 , 0 );
setMoveKey( spep_1 -1 + 423, 1, 52.2, 136.7 , 0 );
setMoveKey( spep_1 -1 + 424, 1, 50.2, 144.9 , 0 );
setMoveKey( spep_1 -1 + 425, 1, 50.2, 144.9 , 0 );
setMoveKey( spep_1 -1 + 426, 1, 125.6, -6.5 , 0 );
setMoveKey( spep_1 -1 + 427, 1, 125.6, -6.5 , 0 );
setMoveKey( spep_1 -1 + 428, 1, 125.6, -0.3 , 0 );
setMoveKey( spep_1 -1 + 430, 1, 125.6, -0.3 , 0 );

setScaleKey( spep_1 -1 + 310, 1, 5, 5 );
setScaleKey( spep_1 -1 + 325, 1, 5, 5 );
setScaleKey( spep_1 -1 + 326, 1, 1.6, 1.6 );
setScaleKey( spep_1 -1 + 327, 1, 1.6, 1.6 );
setScaleKey( spep_1 -1 + 328, 1, 1.61, 1.61 );
setScaleKey( spep_1 -1 + 329, 1, 1.61, 1.61 );
setScaleKey( spep_1 -1 + 330, 1, 1.63, 1.63 );
setScaleKey( spep_1 -1 + 331, 1, 1.63, 1.63 );
setScaleKey( spep_1 -1 + 332, 1, 1.64, 1.64 );
setScaleKey( spep_1 -1 + 333, 1, 1.64, 1.64 );
setScaleKey( spep_1 -1 + 334, 1, 1.65, 1.65 );
setScaleKey( spep_1 -1 + 335, 1, 1.65, 1.65 );
setScaleKey( spep_1 -1 + 336, 1, 1.67, 1.67 );
setScaleKey( spep_1 -1 + 337, 1, 1.67, 1.67 );
setScaleKey( spep_1 -1 + 338, 1, 1.68, 1.68 );
setScaleKey( spep_1 -1 + 339, 1, 1.68, 1.68 );
setScaleKey( spep_1 -1 + 340, 1, 1.69, 1.69 );
setScaleKey( spep_1 -1 + 341, 1, 1.69, 1.69 );
setScaleKey( spep_1 -1 + 342, 1, 1.71, 1.71 );
setScaleKey( spep_1 -1 + 343, 1, 1.71, 1.71 );
setScaleKey( spep_1 -1 + 344, 1, 1.72, 1.72 );
setScaleKey( spep_1 -1 + 345, 1, 1.72, 1.72 );
setScaleKey( spep_1 -1 + 346, 1, 1.73, 1.73 );
setScaleKey( spep_1 -1 + 347, 1, 1.73, 1.73 );
setScaleKey( spep_1 -1 + 348, 1, 1.75, 1.75 );
setScaleKey( spep_1 -1 + 349, 1, 1.75, 1.75 );
setScaleKey( spep_1 -1 + 350, 1, 1.76, 1.76 );
setScaleKey( spep_1 -1 + 351, 1, 1.76, 1.76 );
setScaleKey( spep_1 -1 + 352, 1, 1.77, 1.77 );
setScaleKey( spep_1 -1 + 353, 1, 1.77, 1.77 );
setScaleKey( spep_1 -1 + 354, 1, 1.79, 1.79 );
setScaleKey( spep_1 -1 + 355, 1, 1.79, 1.79 );
setScaleKey( spep_1 -1 + 356, 1, 1.8, 1.8 );
setScaleKey( spep_1 -1 + 357, 1, 1.8, 1.8 );
setScaleKey( spep_1 -1 + 358, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 359, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 360, 1, 1.83, 1.83 );
setScaleKey( spep_1 -1 + 361, 1, 1.83, 1.83 );
setScaleKey( spep_1 -1 + 362, 1, 1.84, 1.84 );
setScaleKey( spep_1 -1 + 363, 1, 1.84, 1.84 );
setScaleKey( spep_1 -1 + 364, 1, 1.86, 1.86 );
setScaleKey( spep_1 -1 + 365, 1, 1.86, 1.86 );
setScaleKey( spep_1 -1 + 366, 1, 1.87, 1.87 );
setScaleKey( spep_1 -1 + 367, 1, 1.87, 1.87 );
setScaleKey( spep_1 -1 + 368, 1, 1.88, 1.88 );
setScaleKey( spep_1 -1 + 369, 1, 1.88, 1.88 );
setScaleKey( spep_1 -1 + 370, 1, 3.23, 3.23 );
setScaleKey( spep_1 -1 + 430, 1, 3.23, 3.23 );

setRotateKey( spep_1 -1 + 310, 1, 0 );
setRotateKey( spep_1 -1 + 325, 1, 0 );
setRotateKey( spep_1 -1 + 326, 1, -70.7 );
setRotateKey( spep_1 -1 + 369, 1, -70.7 );
setRotateKey( spep_1 -1 + 370, 1, -42.6 );
setRotateKey( spep_1 -1 + 373, 1, -42.6 );
setRotateKey( spep_1 -1 + 374, 1, 58.2 );
setRotateKey( spep_1 -1 + 377, 1, 58.2 );
setRotateKey( spep_1 -1 + 378, 1, -42.6 );
setRotateKey( spep_1 -1 + 381, 1, -42.6 );
setRotateKey( spep_1 -1 + 382, 1, 39.2 );
setRotateKey( spep_1 -1 + 385, 1, 39.2 );
setRotateKey( spep_1 -1 + 386, 1, -31.2 );
setRotateKey( spep_1 -1 + 389, 1, -31.2 );
setRotateKey( spep_1 -1 + 390, 1, 44.7 );
setRotateKey( spep_1 -1 + 393, 1, 44.7 );
setRotateKey( spep_1 -1 + 394, 1, -42.6 );
setRotateKey( spep_1 -1 + 397, 1, -42.6 );
setRotateKey( spep_1 -1 + 398, 1, 43.4 );
setRotateKey( spep_1 -1 + 401, 1, 43.4 );
setRotateKey( spep_1 -1 + 402, 1, -56.6 );
setRotateKey( spep_1 -1 + 405, 1, -56.6 );
setRotateKey( spep_1 -1 + 406, 1, -31.2 );
setRotateKey( spep_1 -1 + 409, 1, -31.2 );
setRotateKey( spep_1 -1 + 410, 1, 44.7 );
setRotateKey( spep_1 -1 + 413, 1, 44.7 );
setRotateKey( spep_1 -1 + 414, 1, -42.6 );
setRotateKey( spep_1 -1 + 417, 1, -42.6 );
setRotateKey( spep_1 -1 + 418, 1, 43.4 );
setRotateKey( spep_1 -1 + 421, 1, 43.4 );
setRotateKey( spep_1 -1 + 422, 1, -56.6 );
setRotateKey( spep_1 -1 + 425, 1, -56.6 );
setRotateKey( spep_1 -1 + 426, 1, -42.6 );
setRotateKey( spep_1 -1 + 430, 1, -42.6 );

-- 敵の動き2 --
setDisp( spep_1 -1 + 480, 1, 1 );
setDisp( spep_1 -1 + 586, 1, 0 );

changeAnime( spep_1 -1 + 480, 1, 106 );
changeAnime( spep_1 -1 + 496, 1, 108 );
changeAnime( spep_1 -1 + 550, 1, 106 );

setMoveKey( spep_1 -1 + 480, 1, 252.1, 157.8 , 0 );
setMoveKey( spep_1 -1 + 481, 1, 252.1, 157.8 , 0 );
setMoveKey( spep_1 -1 + 482, 1, 248.5, 170.1 , 0 );
setMoveKey( spep_1 -1 + 483, 1, 248.5, 170.1 , 0 );
setMoveKey( spep_1 -1 + 484, 1, 253.6, 182.5 , 0 );
setMoveKey( spep_1 -1 + 485, 1, 253.6, 182.5 , 0 );
setMoveKey( spep_1 -1 + 486, 1, 256.5, 191.7 , 0 );
setMoveKey( spep_1 -1 + 487, 1, 256.5, 191.7 , 0 );
setMoveKey( spep_1 -1 + 488, 1, 257.4, 199 , 0 );
setMoveKey( spep_1 -1 + 489, 1, 257.4, 199 , 0 );
setMoveKey( spep_1 -1 + 490, 1, 256.5, 204.9 , 0 );
setMoveKey( spep_1 -1 + 491, 1, 256.5, 204.9 , 0 );
setMoveKey( spep_1 -1 + 492, 1, 254.8, 210.5 , 0 );
setMoveKey( spep_1 -1 + 493, 1, 254.8, 210.5 , 0 );
setMoveKey( spep_1 -1 + 494, 1, 253, 216 , 0 );
setMoveKey( spep_1 -1 + 495, 1, 253, 216 , 0 );
setMoveKey( spep_1 -1 + 496, 1, 172.1, 114.6 , 0 );
setMoveKey( spep_1 -1 + 497, 1, 172.1, 114.6 , 0 );
setMoveKey( spep_1 -1 + 498, 1, 184.9, 113.2 , 0 );
setMoveKey( spep_1 -1 + 499, 1, 184.9, 113.2 , 0 );
setMoveKey( spep_1 -1 + 500, 1, 189.5, 138.3 , 0 );
setMoveKey( spep_1 -1 + 501, 1, 189.5, 138.3 , 0 );
setMoveKey( spep_1 -1 + 502, 1, 182, 127.7 , 0 );
setMoveKey( spep_1 -1 + 503, 1, 182, 127.7 , 0 );
setMoveKey( spep_1 -1 + 504, 1, 186.8, 139.7 , 0 );
setMoveKey( spep_1 -1 + 505, 1, 186.8, 139.7 , 0 );
setMoveKey( spep_1 -1 + 506, 1, 187.5, 137.3 , 0 );
setMoveKey( spep_1 -1 + 507, 1, 187.5, 137.3 , 0 );
setMoveKey( spep_1 -1 + 508, 1, 188.2, 139.1 , 0 );
setMoveKey( spep_1 -1 + 509, 1, 188.2, 139.1 , 0 );
setMoveKey( spep_1 -1 + 510, 1, 188.9, 140.8 , 0 );
setMoveKey( spep_1 -1 + 511, 1, 188.9, 140.8 , 0 );
setMoveKey( spep_1 -1 + 512, 1, 189.6, 142.5 , 0 );
setMoveKey( spep_1 -1 + 513, 1, 189.6, 142.5 , 0 );
setMoveKey( spep_1 -1 + 514, 1, 190.3, 144.2 , 0 );
setMoveKey( spep_1 -1 + 515, 1, 190.3, 144.2 , 0 );
setMoveKey( spep_1 -1 + 516, 1, 191, 146 , 0 );
setMoveKey( spep_1 -1 + 517, 1, 191, 146 , 0 );
setMoveKey( spep_1 -1 + 518, 1, 191.7, 147.7 , 0 );
setMoveKey( spep_1 -1 + 519, 1, 191.7, 147.7 , 0 );
setMoveKey( spep_1 -1 + 520, 1, 192.4, 149.4 , 0 );
setMoveKey( spep_1 -1 + 521, 1, 192.4, 149.4 , 0 );
setMoveKey( spep_1 -1 + 522, 1, 186.2, 145.9 , 0 );
setMoveKey( spep_1 -1 + 523, 1, 186.2, 145.9 , 0 );
setMoveKey( spep_1 -1 + 524, 1, 173.5, 137.5 , 0 );
setMoveKey( spep_1 -1 + 525, 1, 173.5, 137.5 , 0 );
setMoveKey( spep_1 -1 + 526, 1, 157.9, 126.7 , 0 );
setMoveKey( spep_1 -1 + 527, 1, 157.9, 126.7 , 0 );
setMoveKey( spep_1 -1 + 528, 1, 140.9, 114.6 , 0 );
setMoveKey( spep_1 -1 + 529, 1, 140.9, 114.6 , 0 );
setMoveKey( spep_1 -1 + 530, 1, 122.7, 100.6 , 0 );
setMoveKey( spep_1 -1 + 531, 1, 122.7, 100.6 , 0 );
setMoveKey( spep_1 -1 + 532, 1, 104.4, 86.5 , 0 );
setMoveKey( spep_1 -1 + 533, 1, 104.4, 86.5 , 0 );
setMoveKey( spep_1 -1 + 534, 1, 86.7, 72.9 , 0 );
setMoveKey( spep_1 -1 + 535, 1, 86.7, 72.9 , 0 );
setMoveKey( spep_1 -1 + 536, 1, 70.7, 60.6 , 0 );
setMoveKey( spep_1 -1 + 537, 1, 70.7, 60.6 , 0 );
setMoveKey( spep_1 -1 + 538, 1, 61, 53.2 , 0 );
setMoveKey( spep_1 -1 + 539, 1, 61, 53.2 , 0 );
setMoveKey( spep_1 -1 + 540, 1, 60.2, 52.6 , 0 );
setMoveKey( spep_1 -1 + 541, 1, 60.2, 52.6 , 0 );
setMoveKey( spep_1 -1 + 542, 1, 59.4, 52 , 0 );
setMoveKey( spep_1 -1 + 543, 1, 59.4, 52 , 0 );
setMoveKey( spep_1 -1 + 544, 1, 58.6, 51.4 , 0 );
setMoveKey( spep_1 -1 + 545, 1, 58.6, 51.4 , 0 );
setMoveKey( spep_1 -1 + 546, 1, 57.8, 50.7 , 0 );
setMoveKey( spep_1 -1 + 547, 1, 57.8, 50.7 , 0 );
setMoveKey( spep_1 -1 + 548, 1, 57, 50.2 , 0 );
setMoveKey( spep_1 -1 + 549, 1, 57, 50.2 , 0 );
setMoveKey( spep_1 -1 + 550, 1, 85.8, 64.8 , 0 );
setMoveKey( spep_1 -1 + 552, 1, 93.7, 61.3 , 0 );
setMoveKey( spep_1 -1 + 554, 1, 101.1, 57.1 , 0 );
setMoveKey( spep_1 -1 + 556, 1, 107.9, 52.1 , 0 );
setMoveKey( spep_1 -1 + 558, 1, 114.1, 46.4 , 0 );
setMoveKey( spep_1 -1 + 560, 1, 119.8, 40.1 , 0 );
setMoveKey( spep_1 -1 + 562, 1, 125, 33.2 , 0 );
setMoveKey( spep_1 -1 + 564, 1, 129.6, 25.7 , 0 );
setMoveKey( spep_1 -1 + 566, 1, 133.8, 17.6 , 0 );
setMoveKey( spep_1 -1 + 567, 1, 133.8, 17.6 , 0 );
setMoveKey( spep_1 -1 + 568, 1, 132.9, -103.5 , 0 );
setMoveKey( spep_1 -1 + 569, 1, 132.9, -103.5 , 0 );
setMoveKey( spep_1 -1 + 570, 1, 132, -224.8 , 0 );
setMoveKey( spep_1 -1 + 571, 1, 132, -224.8 , 0 );
setMoveKey( spep_1 -1 + 572, 1, 131.3, -346.2 , 0 );
setMoveKey( spep_1 -1 + 573, 1, 131.3, -346.2 , 0 );
setMoveKey( spep_1 -1 + 574, 1, 130.6, -467.9 , 0 );
setMoveKey( spep_1 -1 + 575, 1, 130.6, -467.9 , 0 );
setMoveKey( spep_1 -1 + 576, 1, 130, -589.7 , 0 );
setMoveKey( spep_1 -1 + 577, 1, 130, -589.7 , 0 );
setMoveKey( spep_1 -1 + 578, 1, 129.6, -711.9 , 0 );
setMoveKey( spep_1 -1 + 579, 1, 129.6, -711.9 , 0 );
setMoveKey( spep_1 -1 + 580, 1, 129.3, -834.4 , 0 );
setMoveKey( spep_1 -1 + 581, 1, 129.3, -834.4 , 0 );
setMoveKey( spep_1 -1 + 582, 1, 129.4, -957.5 , 0 );
setMoveKey( spep_1 -1 + 583, 1, 129.4, -957.5 , 0 );
setMoveKey( spep_1 -1 + 584, 1, 130, -1081.8 , 0 );
setMoveKey( spep_1 -1 + 585, 1, 130, -1081.8 , 0 );
setMoveKey( spep_1 -1 + 586, 1, 133.8, -1212.8 , 0 );

setScaleKey( spep_1 -1 + 480, 1, 5.5, 5.5 );
setScaleKey( spep_1 -1 + 481, 1, 5.5, 5.5 );
setScaleKey( spep_1 -1 + 482, 1, 4.15, 4.15 );
setScaleKey( spep_1 -1 + 483, 1, 4.15, 4.15 );
setScaleKey( spep_1 -1 + 484, 1, 3.66, 3.66 );
setScaleKey( spep_1 -1 + 485, 1, 3.66, 3.66 );
setScaleKey( spep_1 -1 + 486, 1, 3.4, 3.4 );
setScaleKey( spep_1 -1 + 487, 1, 3.4, 3.4 );
setScaleKey( spep_1 -1 + 488, 1, 3.27, 3.27 );
setScaleKey( spep_1 -1 + 489, 1, 3.27, 3.27 );
setScaleKey( spep_1 -1 + 490, 1, 3.24, 3.24 );
setScaleKey( spep_1 -1 + 495, 1, 3.24, 3.24 );
setScaleKey( spep_1 -1 + 495, 1, 3.24, 3.24 );
setScaleKey( spep_1 -1 + 496, 1, 4.03, 4.03 );
setScaleKey( spep_1 -1 + 520, 1, 4.03, 4.03 );
setScaleKey( spep_1 -1 + 521, 1, 4.03, 4.03 );
setScaleKey( spep_1 -1 + 522, 1, 3.89, 3.89 );
setScaleKey( spep_1 -1 + 523, 1, 3.89, 3.89 );
setScaleKey( spep_1 -1 + 524, 1, 3.61, 3.61 );
setScaleKey( spep_1 -1 + 525, 1, 3.61, 3.61 );
setScaleKey( spep_1 -1 + 526, 1, 3.28, 3.28 );
setScaleKey( spep_1 -1 + 527, 1, 3.28, 3.28 );
setScaleKey( spep_1 -1 + 528, 1, 2.92, 2.92 );
setScaleKey( spep_1 -1 + 529, 1, 2.92, 2.92 );
setScaleKey( spep_1 -1 + 530, 1, 2.55, 2.55 );
setScaleKey( spep_1 -1 + 531, 1, 2.55, 2.55 );
setScaleKey( spep_1 -1 + 532, 1, 2.18, 2.18 );
setScaleKey( spep_1 -1 + 533, 1, 2.18, 2.18 );
setScaleKey( spep_1 -1 + 534, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 535, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 536, 1, 1.49, 1.49 );
setScaleKey( spep_1 -1 + 537, 1, 1.49, 1.49 );
setScaleKey( spep_1 -1 + 538, 1, 1.29, 1.29 );
setScaleKey( spep_1 -1 + 539, 1, 1.29, 1.29 );
setScaleKey( spep_1 -1 + 540, 1, 1.27, 1.27 );
setScaleKey( spep_1 -1 + 541, 1, 1.27, 1.27 );
setScaleKey( spep_1 -1 + 542, 1, 1.26, 1.26 );
setScaleKey( spep_1 -1 + 543, 1, 1.26, 1.26 );
setScaleKey( spep_1 -1 + 544, 1, 1.24, 1.24 );
setScaleKey( spep_1 -1 + 545, 1, 1.24, 1.24 );
setScaleKey( spep_1 -1 + 546, 1, 1.23, 1.23 );
setScaleKey( spep_1 -1 + 547, 1, 1.23, 1.23 );
setScaleKey( spep_1 -1 + 548, 1, 1.21, 1.21 );
setScaleKey( spep_1 -1 + 549, 1, 1.21, 1.21 );
setScaleKey( spep_1 -1 + 550, 1, 1.05, 1.05 );
setScaleKey( spep_1 -1 + 586, 1, 1.05, 1.05 );

setRotateKey( spep_1 -1 + 480, 1, -80.1 );
setRotateKey( spep_1 -1 + 481, 1, -80.1 );
setRotateKey( spep_1 -1 + 482, 1, -79.3 );
setRotateKey( spep_1 -1 + 483, 1, -79.3 );
setRotateKey( spep_1 -1 + 484, 1, -78.4 );
setRotateKey( spep_1 -1 + 485, 1, -78.4 );
setRotateKey( spep_1 -1 + 486, 1, -77.5 );
setRotateKey( spep_1 -1 + 487, 1, -77.5 );
setRotateKey( spep_1 -1 + 488, 1, -76.6 );
setRotateKey( spep_1 -1 + 489, 1, -76.6 );
setRotateKey( spep_1 -1 + 490, 1, -75.7 );
setRotateKey( spep_1 -1 + 491, 1, -75.7 );
setRotateKey( spep_1 -1 + 492, 1, -74.8 );
setRotateKey( spep_1 -1 + 493, 1, -74.8 );
setRotateKey( spep_1 -1 + 494, 1, -73.9 );
setRotateKey( spep_1 -1 + 495, 1, -73.9 );
setRotateKey( spep_1 -1 + 496, 1, -43.4 );
setRotateKey( spep_1 -1 + 549, 1, -43.4 );
setRotateKey( spep_1 -1 + 550, 1, -6 );
setRotateKey( spep_1 -1 + 552, 1, 0.9 );
setRotateKey( spep_1 -1 + 554, 1, 6.1 );
setRotateKey( spep_1 -1 + 556, 1, 10.8 );
setRotateKey( spep_1 -1 + 558, 1, 15.3 );
setRotateKey( spep_1 -1 + 560, 1, 19.5 );
setRotateKey( spep_1 -1 + 562, 1, 23.6 );
setRotateKey( spep_1 -1 + 564, 1, 27.6 );
setRotateKey( spep_1 -1 + 566, 1, 31.4 );
setRotateKey( spep_1 -1 + 586, 1, 31.4 );

-- 敵の動き3 --
setDisp( spep_1 -1 + 766, 1, 1 );
setDisp( spep_1 -1 + 828, 1, 0 );

changeAnime( spep_1 -1 + 766, 1, 106 );

setMoveKey( spep_1 -1 + 766, 1, 0.1, -723.8 , 0 );
setMoveKey( spep_1 -1 + 767, 1, 0.1, -723.8 , 0 );
setMoveKey( spep_1 -1 + 768, 1, 0.1, -506.4 , 0 );
setMoveKey( spep_1 -1 + 769, 1, 0.1, -506.4 , 0 );
setMoveKey( spep_1 -1 + 770, 1, 0.1, -360.6 , 0 );
setMoveKey( spep_1 -1 + 771, 1, 0.1, -360.6 , 0 );
setMoveKey( spep_1 -1 + 772, 1, 0.1, -272.3 , 0 );
setMoveKey( spep_1 -1 + 773, 1, 0.1, -272.3 , 0 );
setMoveKey( spep_1 -1 + 774, 1, 0.1, -226.9 , 0 );
setMoveKey( spep_1 -1 + 775, 1, 0.1, -226.9 , 0 );
setMoveKey( spep_1 -1 + 776, 1, 0.1, -210.1 , 0 );
setMoveKey( spep_1 -1 + 777, 1, 0.1, -210.1 , 0 );
setMoveKey( spep_1 -1 + 778, 1, 4.1, -211.7 , 0 );
setMoveKey( spep_1 -1 + 779, 1, 4.1, -211.7 , 0 );
setMoveKey( spep_1 -1 + 780, 1, 0.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 781, 1, 0.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 782, 1, 4.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 783, 1, 4.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 784, 1, 0.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 785, 1, 0.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 786, 1, 4.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 787, 1, 4.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 788, 1, 0.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 789, 1, 0.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 790, 1, 4.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 791, 1, 4.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 792, 1, 0.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 793, 1, 0.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 794, 1, 4.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 795, 1, 4.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 796, 1, 0.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 798, 1, 4.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 800, 1, 0.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 802, 1, 2.1, -209.8 , 0 );
setMoveKey( spep_1 -1 + 804, 1, 2.1, -209.8 , 0 );
setMoveKey( spep_1 -1 + 806, 1, 2.1, -206.3 , 0 );
setMoveKey( spep_1 -1 + 809, 1, 2.1, -206.3 , 0 );
setMoveKey( spep_1 -1 + 810, 1, 2.1, -121.6 , 0 );
setMoveKey( spep_1 -1 + 811, 1, 2.1, -121.6 , 0 );
setMoveKey( spep_1 -1 + 812, 1, 0.1, -110.9 , 0 );
setMoveKey( spep_1 -1 + 813, 1, 0.1, -110.9 , 0 );
setMoveKey( spep_1 -1 + 814, 1, 4.1, -106 , 0 );
setMoveKey( spep_1 -1 + 815, 1, 4.1, -106 , 0 );
setMoveKey( spep_1 -1 + 816, 1, 0.1, -97.2 , 0 );
setMoveKey( spep_1 -1 + 817, 1, 0.1, -97.2 , 0 );
setMoveKey( spep_1 -1 + 818, 1, 4.1, -84.5 , 0 );
setMoveKey( spep_1 -1 + 819, 1, 4.1, -84.5 , 0 );
setMoveKey( spep_1 -1 + 820, 1, 0.1, -75.7 , 0 );
setMoveKey( spep_1 -1 + 821, 1, 0.1, -75.7 , 0 );
setMoveKey( spep_1 -1 + 822, 1, 4.1, -70.9 , 0 );
setMoveKey( spep_1 -1 + 823, 1, 4.1, -70.9 , 0 );
setMoveKey( spep_1 -1 + 824, 1, 0.1, -62.1 , 0 );
setMoveKey( spep_1 -1 + 825, 1, 0.1, -62.1 , 0 );
setMoveKey( spep_1 -1 + 826, 1, 4.2, -49.4 , 0 );
setMoveKey( spep_1 -1 + 827, 1, 4.2, -49.4 , 0 );
setMoveKey( spep_1 -1 + 828, 1, 0.2, -40.6 , 0 );

setScaleKey( spep_1 -1 + 766, 1, 1, 1 );
setScaleKey( spep_1 -1 + 828, 1, 1, 1 );

setRotateKey( spep_1 -1 + 766, 1, 33.7 );
setRotateKey( spep_1 -1 + 810, 1, 33.7 );
setRotateKey( spep_1 -1 + 812, 1, 34.6 );
setRotateKey( spep_1 -1 + 814, 1, 35.5 );
setRotateKey( spep_1 -1 + 816, 1, 36.4 );
setRotateKey( spep_1 -1 + 818, 1, 37.3 );
setRotateKey( spep_1 -1 + 820, 1, 38.2 );
setRotateKey( spep_1 -1 + 822, 1, 39.2 );
setRotateKey( spep_1 -1 + 824, 1, 40.1 );
setRotateKey( spep_1 -1 + 826, 1, 41 );
setRotateKey( spep_1 -1 + 828, 1, 41.9 );

setBlendColor( spep_1 -1 + 806 , 1, 3, 1, 1, 1, 1);
setBlendColor( spep_1 -1 + 809 , 1, 3, 1, 1, 1, 1);
setBlendColor( spep_1 -1 + 810 , 1, 3, 1, 1, 1, 0);

-- ** 音 ** --
--エルボー
SE024 = playSeVer2( spep_1 + 316, 1187, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 316, 1153, "", 0, 0, 0, -1);

--連続キック
SE026 = playSeVer2( spep_1 + 366, 1110, "",spep_1 + 382, 0, 6, -1);
SE027 = playSeVer2( spep_1 + 366, 1010, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 376, 1110, "",spep_1 + 396, 0, 10, -1);
SE029 = playSeVer2( spep_1 + 384, 1110, "",spep_1 + 376, 0, -20, -1);
SE030 = playSeVer2( spep_1 + 384, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 394, 1110, "",spep_1 + 416, 0, 10, -1);
SE032 = playSeVer2( spep_1 + 404, 1110, "",spep_1 + 422, 0, 6, -1);
SE033 = playSeVer2( spep_1 + 412, 1110, "", 0, 0, 0, -1);

--凄む
SE034 = playSeVer2( spep_1 + 420, 8, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 420, 1379, "",spep_1 + 528, 0, 50, -1);

--振りかぶる
SE036 = playSeVer2( spep_1 + 444, 1116, "",spep_1 + 492, 0, 22, -1);
SE037 = playSeVer2( spep_1 + 452, 1004, "", 0, 0, 0, -1);

----腹パン
SE038 = playSeVer2( spep_1 + 488, 1153, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 488, 1049, "",spep_1 + 536, 0, 26, -1);
SE040 = playSeVer2( spep_1 + 490, 1190, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 492, 1187, "", 0, 0, 0, -1);

----飛び上がる
SE042 = playSeVer2( spep_1 + 556, 1207, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 556, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 556, SE043, 81 );
SE044 = playSeVer2( spep_1 + 560, 44, "", 0, 0, 0, -1);

----構える
SE045 = playSeVer2( spep_1 + 606, 1003, "", 0, 0, 0, -1);

----かめはめ波溜め
SE046 = playSeVer2( spep_1 + 618, 1131, "",spep_1 + 684, 0, 14, 0.6);
SE047 = playSeVer2( spep_1 + 618, 1132, "",spep_1 + 684, 0, 14, 0.6);

----かめはめ波発射
SE048 = playSeVer2( spep_1 + 670, 1133, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_1 + 670, 1146, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_1 + 670, 1284, "", 0, 0, 0, -1);

----かめはめ波飛んでいく
SE051 = playSeVer2( spep_1 + 716, 1022, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_1 + 716, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 716, SE052, 82 );
SE053 = playSeVer2( spep_1 + 752, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 752, SE053, 141 );

----爆発
SE054 = playSeVer2( spep_1 + 796, 1067, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 796, 1168, "",spep_1 + 908, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 796, SE055, 71 );
SE056 = playSeVer2( spep_1 + 802, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_1 + 812, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 814); -- ダメージ表示フレーム
endPhase( spep_1 + 918 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- セリフカットイン
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 100, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + 100, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 100, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 100, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--拳握る
SE002 = playSeVer2( spep_0 + 12, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 22, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 67 );

-- ** 次の準備 ** --
spep_c = spep_0 + 100;

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
-- カード後～フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 918, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 918, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 918, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 918, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 918, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 918, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 918, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 918, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 918 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--腕クロス
SE005 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 40, 0, 20, -1);

--凄む背景
SE006 = playSeVer2( spep_1 + 0, 1391, "",spep_1 + 92, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 0, SE006, 71 );
SE007 = playSeVer2( spep_1 + 0, 1264, "",spep_1 + 218, 0, 102, -1);
setSeVolumeByWorkId( spep_1 + 0, SE007, 55 );

--腕平行に
SE008 = playSeVer2( spep_1 + 38, 1004, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 42, 1006, "", 0, 0, 0, -1);

--力む
SE010 = playSeVer2( spep_1 + 82, 1330, "",spep_1 + 136, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 82, SE010, 79 );
setPitch( spep_1 + 82, SE010, -500 );
setTimeStretch( SE010, 0.67, 30, 4 );

--顔上げる
SE011 = playSeVer2( spep_1 + 128, 1003, "", 0, 0, 0, -1);

--手つく
SE012 = playSeVer2( spep_1 + 172, 1377, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 176, 1192, "",spep_1 + 202, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 176, SE013, 71 );

--クラウチングスタート
SE014 = playSeVer2( spep_1 + 210, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 210, 1330, "",spep_1 + 248, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 210, SE015, 46 );

--走ってくる
SE016 = playSeVer2( spep_1 + 242, 1167, "",spep_1 + 288, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 242, SE016, 45 );
SE017 = playSeVer2( spep_1 + 242, 9, "",spep_1 + 320, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 242, SE017, 71 );
SE018 = playSeVer2( spep_1 + 246, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 246, SE018, 141 );
SE019 = playSeVer2( spep_1 + 256, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 256, SE019, 150 );
SE020 = playSeVer2( spep_1 + 266, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 266, SE020, 157 );
SE021 = playSeVer2( spep_1 + 276, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 276, SE021, 141 );

--とびかかる
SE022 = playSeVer2( spep_1 + 282, 1117, "",spep_1 + 324, 0, 8, -1);
SE023 = playSeVer2( spep_1 + 282, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 298; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
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

-- ** 白フェード ** --
entryFade( spep_1 + 800, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 敵キャラクター ** --
-- 敵の動き1 --
setDisp( spep_1 -1 + 310, 1, 1 );
setDisp( spep_1 -1 + 430, 1, 0 );

changeAnime( spep_1 -1 + 310, 1, 102 );
changeAnime( spep_1 -1 + 326, 1, 107 );
changeAnime( spep_1 -1 + 370, 1, 106 );
changeAnime( spep_1 -1 + 374, 1, 6 );
changeAnime( spep_1 -1 + 378, 1, 106 );
changeAnime( spep_1 -1 + 382, 1, 6 );
changeAnime( spep_1 -1 + 386, 1, 106 );
changeAnime( spep_1 -1 + 390, 1, 6 );
changeAnime( spep_1 -1 + 394, 1, 106 );
changeAnime( spep_1 -1 + 398, 1, 6 );
changeAnime( spep_1 -1 + 402, 1, 106 );
changeAnime( spep_1 -1 + 410, 1, 6 );
changeAnime( spep_1 -1 + 414, 1, 106 );
changeAnime( spep_1 -1 + 418, 1, 6 );
changeAnime( spep_1 -1 + 422, 1, 106 );

setMoveKey( spep_1 -1 + 310, 1, 118.1, -300.8 , 0 );
setMoveKey( spep_1 -1 + 325, 1, 118.1, -300.8 , 0 );
setMoveKey( spep_1 -1 + 326, 1, 45, 7.8 , 0 );
setMoveKey( spep_1 -1 + 327, 1, 45, 7.8 , 0 );
setMoveKey( spep_1 -1 + 328, 1, 72, -18.2 , 0 );
setMoveKey( spep_1 -1 + 329, 1, 72, -18.2 , 0 );
setMoveKey( spep_1 -1 + 330, 1, 80.8, 0 , 0 );
setMoveKey( spep_1 -1 + 331, 1, 80.8, 0 , 0 );
setMoveKey( spep_1 -1 + 332, 1, 79.2, -13 , 0 );
setMoveKey( spep_1 -1 + 333, 1, 79.2, -13 , 0 );
setMoveKey( spep_1 -1 + 334, 1, 101, 0 , 0 );
setMoveKey( spep_1 -1 + 335, 1, 101, 0 , 0 );
setMoveKey( spep_1 -1 + 336, 1, 104.7, -15.6 , 0 );
setMoveKey( spep_1 -1 + 337, 1, 104.7, -15.6 , 0 );
setMoveKey( spep_1 -1 + 338, 1, 121.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 339, 1, 121.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 340, 1, 132.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 341, 1, 132.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 342, 1, 144.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 343, 1, 144.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 344, 1, 155.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 345, 1, 155.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 346, 1, 167, -7.8 , 0 );
setMoveKey( spep_1 -1 + 347, 1, 167, -7.8 , 0 );
setMoveKey( spep_1 -1 + 348, 1, 178.4, -7.8 , 0 );
setMoveKey( spep_1 -1 + 349, 1, 178.4, -7.8 , 0 );
setMoveKey( spep_1 -1 + 350, 1, 189.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 351, 1, 189.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 352, 1, 201.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 353, 1, 201.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 354, 1, 212.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 355, 1, 212.7, -7.8 , 0 );
setMoveKey( spep_1 -1 + 356, 1, 224.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 357, 1, 224.1, -7.8 , 0 );
setMoveKey( spep_1 -1 + 358, 1, 235.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 359, 1, 235.5, -7.8 , 0 );
setMoveKey( spep_1 -1 + 360, 1, 246.9, -7.8 , 0 );
setMoveKey( spep_1 -1 + 361, 1, 246.9, -7.8 , 0 );
setMoveKey( spep_1 -1 + 362, 1, 258.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 363, 1, 258.3, -7.8 , 0 );
setMoveKey( spep_1 -1 + 364, 1, 269.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 365, 1, 269.8, -7.8 , 0 );
setMoveKey( spep_1 -1 + 366, 1, 281.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 367, 1, 281.2, -7.8 , 0 );
setMoveKey( spep_1 -1 + 368, 1, 292.6, -7.8 , 0 );
setMoveKey( spep_1 -1 + 369, 1, 292.6, -7.8 , 0 );
setMoveKey( spep_1 -1 + 370, 1, 127.7, -4.4 , 0 );
setMoveKey( spep_1 -1 + 371, 1, 127.7, -4.4 , 0 );
setMoveKey( spep_1 -1 + 372, 1, 125.6, -0.3 , 0 );
setMoveKey( spep_1 -1 + 373, 1, 125.6, -0.3 , 0 );
setMoveKey( spep_1 -1 + 374, 1, 93.8, 79 , 0 );
setMoveKey( spep_1 -1 + 375, 1, 93.8, 79 , 0 );
setMoveKey( spep_1 -1 + 376, 1, 91.8, 87.2 , 0 );
setMoveKey( spep_1 -1 + 377, 1, 91.8, 87.2 , 0 );
setMoveKey( spep_1 -1 + 378, 1, 176.3, 6.8 , 0 );
setMoveKey( spep_1 -1 + 379, 1, 176.3, 6.8 , 0 );
setMoveKey( spep_1 -1 + 380, 1, 176.3, 13 , 0 );
setMoveKey( spep_1 -1 + 381, 1, 176.3, 13 , 0 );
setMoveKey( spep_1 -1 + 382, 1, 223.3, 45.5 , 0 );
setMoveKey( spep_1 -1 + 383, 1, 223.3, 45.5 , 0 );
setMoveKey( spep_1 -1 + 384, 1, 221.3, 53.7 , 0 );
setMoveKey( spep_1 -1 + 385, 1, 221.3, 53.7 , 0 );
setMoveKey( spep_1 -1 + 386, 1, 156.1, 34.1 , 0 );
setMoveKey( spep_1 -1 + 387, 1, 156.1, 34.1 , 0 );
setMoveKey( spep_1 -1 + 388, 1, 156.1, 40.3 , 0 );
setMoveKey( spep_1 -1 + 389, 1, 156.1, 40.3 , 0 );
setMoveKey( spep_1 -1 + 390, 1, 112.1, 133.8 , 0 );
setMoveKey( spep_1 -1 + 391, 1, 112.1, 133.8 , 0 );
setMoveKey( spep_1 -1 + 392, 1, 110.1, 142 , 0 );
setMoveKey( spep_1 -1 + 393, 1, 110.1, 142 , 0 );
setMoveKey( spep_1 -1 + 394, 1, 176.4, 8.9 , 0 );
setMoveKey( spep_1 -1 + 395, 1, 176.4, 8.9 , 0 );
setMoveKey( spep_1 -1 + 396, 1, 176.4, 15 , 0 );
setMoveKey( spep_1 -1 + 397, 1, 176.4, 15 , 0 );
setMoveKey( spep_1 -1 + 398, 1, 178.6, 6.9 , 0 );
setMoveKey( spep_1 -1 + 399, 1, 178.6, 6.9 , 0 );
setMoveKey( spep_1 -1 + 400, 1, 176.6, 15.1 , 0 );
setMoveKey( spep_1 -1 + 401, 1, 176.6, 15.1 , 0 );
setMoveKey( spep_1 -1 + 402, 1, 123.3, 12.9 , 0 );
setMoveKey( spep_1 -1 + 403, 1, 123.3, 12.9 , 0 );
setMoveKey( spep_1 -1 + 404, 1, 123.3, 19.1 , 0 );
setMoveKey( spep_1 -1 + 405, 1, 123.3, 19.1 , 0 );
setMoveKey( spep_1 -1 + 406, 1, 160.2, 32.1 , 0 );
setMoveKey( spep_1 -1 + 407, 1, 160.2, 32.1 , 0 );
setMoveKey( spep_1 -1 + 408, 1, 158.2, 40.3 , 0 );
setMoveKey( spep_1 -1 + 409, 1, 158.2, 40.3 , 0 );
setMoveKey( spep_1 -1 + 410, 1, 183.2, -4.2 , 0 );
setMoveKey( spep_1 -1 + 411, 1, 183.2, -4.2 , 0 );
setMoveKey( spep_1 -1 + 412, 1, 183.2, 1.9 , 0 );
setMoveKey( spep_1 -1 + 413, 1, 183.2, 1.9 , 0 );
setMoveKey( spep_1 -1 + 414, 1, 180.5, 6.8 , 0 );
setMoveKey( spep_1 -1 + 415, 1, 180.5, 6.8 , 0 );
setMoveKey( spep_1 -1 + 416, 1, 178.4, 15 , 0 );
setMoveKey( spep_1 -1 + 417, 1, 178.4, 15 , 0 );
setMoveKey( spep_1 -1 + 418, 1, 229.4, 39.4 , 0 );
setMoveKey( spep_1 -1 + 419, 1, 229.4, 39.4 , 0 );
setMoveKey( spep_1 -1 + 420, 1, 229.4, 45.6 , 0 );
setMoveKey( spep_1 -1 + 421, 1, 229.4, 45.6 , 0 );
setMoveKey( spep_1 -1 + 422, 1, 52.2, 136.7 , 0 );
setMoveKey( spep_1 -1 + 423, 1, 52.2, 136.7 , 0 );
setMoveKey( spep_1 -1 + 424, 1, 50.2, 144.9 , 0 );
setMoveKey( spep_1 -1 + 425, 1, 50.2, 144.9 , 0 );
setMoveKey( spep_1 -1 + 426, 1, 125.6, -6.5 , 0 );
setMoveKey( spep_1 -1 + 427, 1, 125.6, -6.5 , 0 );
setMoveKey( spep_1 -1 + 428, 1, 125.6, -0.3 , 0 );
setMoveKey( spep_1 -1 + 430, 1, 125.6, -0.3 , 0 );

setScaleKey( spep_1 -1 + 310, 1, 5, 5 );
setScaleKey( spep_1 -1 + 325, 1, 5, 5 );
setScaleKey( spep_1 -1 + 326, 1, 1.6, 1.6 );
setScaleKey( spep_1 -1 + 327, 1, 1.6, 1.6 );
setScaleKey( spep_1 -1 + 328, 1, 1.61, 1.61 );
setScaleKey( spep_1 -1 + 329, 1, 1.61, 1.61 );
setScaleKey( spep_1 -1 + 330, 1, 1.63, 1.63 );
setScaleKey( spep_1 -1 + 331, 1, 1.63, 1.63 );
setScaleKey( spep_1 -1 + 332, 1, 1.64, 1.64 );
setScaleKey( spep_1 -1 + 333, 1, 1.64, 1.64 );
setScaleKey( spep_1 -1 + 334, 1, 1.65, 1.65 );
setScaleKey( spep_1 -1 + 335, 1, 1.65, 1.65 );
setScaleKey( spep_1 -1 + 336, 1, 1.67, 1.67 );
setScaleKey( spep_1 -1 + 337, 1, 1.67, 1.67 );
setScaleKey( spep_1 -1 + 338, 1, 1.68, 1.68 );
setScaleKey( spep_1 -1 + 339, 1, 1.68, 1.68 );
setScaleKey( spep_1 -1 + 340, 1, 1.69, 1.69 );
setScaleKey( spep_1 -1 + 341, 1, 1.69, 1.69 );
setScaleKey( spep_1 -1 + 342, 1, 1.71, 1.71 );
setScaleKey( spep_1 -1 + 343, 1, 1.71, 1.71 );
setScaleKey( spep_1 -1 + 344, 1, 1.72, 1.72 );
setScaleKey( spep_1 -1 + 345, 1, 1.72, 1.72 );
setScaleKey( spep_1 -1 + 346, 1, 1.73, 1.73 );
setScaleKey( spep_1 -1 + 347, 1, 1.73, 1.73 );
setScaleKey( spep_1 -1 + 348, 1, 1.75, 1.75 );
setScaleKey( spep_1 -1 + 349, 1, 1.75, 1.75 );
setScaleKey( spep_1 -1 + 350, 1, 1.76, 1.76 );
setScaleKey( spep_1 -1 + 351, 1, 1.76, 1.76 );
setScaleKey( spep_1 -1 + 352, 1, 1.77, 1.77 );
setScaleKey( spep_1 -1 + 353, 1, 1.77, 1.77 );
setScaleKey( spep_1 -1 + 354, 1, 1.79, 1.79 );
setScaleKey( spep_1 -1 + 355, 1, 1.79, 1.79 );
setScaleKey( spep_1 -1 + 356, 1, 1.8, 1.8 );
setScaleKey( spep_1 -1 + 357, 1, 1.8, 1.8 );
setScaleKey( spep_1 -1 + 358, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 359, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 360, 1, 1.83, 1.83 );
setScaleKey( spep_1 -1 + 361, 1, 1.83, 1.83 );
setScaleKey( spep_1 -1 + 362, 1, 1.84, 1.84 );
setScaleKey( spep_1 -1 + 363, 1, 1.84, 1.84 );
setScaleKey( spep_1 -1 + 364, 1, 1.86, 1.86 );
setScaleKey( spep_1 -1 + 365, 1, 1.86, 1.86 );
setScaleKey( spep_1 -1 + 366, 1, 1.87, 1.87 );
setScaleKey( spep_1 -1 + 367, 1, 1.87, 1.87 );
setScaleKey( spep_1 -1 + 368, 1, 1.88, 1.88 );
setScaleKey( spep_1 -1 + 369, 1, 1.88, 1.88 );
setScaleKey( spep_1 -1 + 370, 1, 3.23, 3.23 );
setScaleKey( spep_1 -1 + 430, 1, 3.23, 3.23 );

setRotateKey( spep_1 -1 + 310, 1, 0 );
setRotateKey( spep_1 -1 + 325, 1, 0 );
setRotateKey( spep_1 -1 + 326, 1, -70.7 );
setRotateKey( spep_1 -1 + 369, 1, -70.7 );
setRotateKey( spep_1 -1 + 370, 1, -42.6 );
setRotateKey( spep_1 -1 + 373, 1, -42.6 );
setRotateKey( spep_1 -1 + 374, 1, 58.2 );
setRotateKey( spep_1 -1 + 377, 1, 58.2 );
setRotateKey( spep_1 -1 + 378, 1, -42.6 );
setRotateKey( spep_1 -1 + 381, 1, -42.6 );
setRotateKey( spep_1 -1 + 382, 1, 39.2 );
setRotateKey( spep_1 -1 + 385, 1, 39.2 );
setRotateKey( spep_1 -1 + 386, 1, -31.2 );
setRotateKey( spep_1 -1 + 389, 1, -31.2 );
setRotateKey( spep_1 -1 + 390, 1, 44.7 );
setRotateKey( spep_1 -1 + 393, 1, 44.7 );
setRotateKey( spep_1 -1 + 394, 1, -42.6 );
setRotateKey( spep_1 -1 + 397, 1, -42.6 );
setRotateKey( spep_1 -1 + 398, 1, 43.4 );
setRotateKey( spep_1 -1 + 401, 1, 43.4 );
setRotateKey( spep_1 -1 + 402, 1, -56.6 );
setRotateKey( spep_1 -1 + 405, 1, -56.6 );
setRotateKey( spep_1 -1 + 406, 1, -31.2 );
setRotateKey( spep_1 -1 + 409, 1, -31.2 );
setRotateKey( spep_1 -1 + 410, 1, 44.7 );
setRotateKey( spep_1 -1 + 413, 1, 44.7 );
setRotateKey( spep_1 -1 + 414, 1, -42.6 );
setRotateKey( spep_1 -1 + 417, 1, -42.6 );
setRotateKey( spep_1 -1 + 418, 1, 43.4 );
setRotateKey( spep_1 -1 + 421, 1, 43.4 );
setRotateKey( spep_1 -1 + 422, 1, -56.6 );
setRotateKey( spep_1 -1 + 425, 1, -56.6 );
setRotateKey( spep_1 -1 + 426, 1, -42.6 );
setRotateKey( spep_1 -1 + 430, 1, -42.6 );

-- 敵の動き2 --
setDisp( spep_1 -1 + 480, 1, 1 );
setDisp( spep_1 -1 + 586, 1, 0 );

changeAnime( spep_1 -1 + 480, 1, 106 );
changeAnime( spep_1 -1 + 496, 1, 108 );
changeAnime( spep_1 -1 + 550, 1, 106 );

setMoveKey( spep_1 -1 + 480, 1, 252.1, 157.8 , 0 );
setMoveKey( spep_1 -1 + 481, 1, 252.1, 157.8 , 0 );
setMoveKey( spep_1 -1 + 482, 1, 248.5, 170.1 , 0 );
setMoveKey( spep_1 -1 + 483, 1, 248.5, 170.1 , 0 );
setMoveKey( spep_1 -1 + 484, 1, 253.6, 182.5 , 0 );
setMoveKey( spep_1 -1 + 485, 1, 253.6, 182.5 , 0 );
setMoveKey( spep_1 -1 + 486, 1, 256.5, 191.7 , 0 );
setMoveKey( spep_1 -1 + 487, 1, 256.5, 191.7 , 0 );
setMoveKey( spep_1 -1 + 488, 1, 257.4, 199 , 0 );
setMoveKey( spep_1 -1 + 489, 1, 257.4, 199 , 0 );
setMoveKey( spep_1 -1 + 490, 1, 256.5, 204.9 , 0 );
setMoveKey( spep_1 -1 + 491, 1, 256.5, 204.9 , 0 );
setMoveKey( spep_1 -1 + 492, 1, 254.8, 210.5 , 0 );
setMoveKey( spep_1 -1 + 493, 1, 254.8, 210.5 , 0 );
setMoveKey( spep_1 -1 + 494, 1, 253, 216 , 0 );
setMoveKey( spep_1 -1 + 495, 1, 253, 216 , 0 );
setMoveKey( spep_1 -1 + 496, 1, 172.1, 114.6 , 0 );
setMoveKey( spep_1 -1 + 497, 1, 172.1, 114.6 , 0 );
setMoveKey( spep_1 -1 + 498, 1, 184.9, 113.2 , 0 );
setMoveKey( spep_1 -1 + 499, 1, 184.9, 113.2 , 0 );
setMoveKey( spep_1 -1 + 500, 1, 189.5, 138.3 , 0 );
setMoveKey( spep_1 -1 + 501, 1, 189.5, 138.3 , 0 );
setMoveKey( spep_1 -1 + 502, 1, 182, 127.7 , 0 );
setMoveKey( spep_1 -1 + 503, 1, 182, 127.7 , 0 );
setMoveKey( spep_1 -1 + 504, 1, 186.8, 139.7 , 0 );
setMoveKey( spep_1 -1 + 505, 1, 186.8, 139.7 , 0 );
setMoveKey( spep_1 -1 + 506, 1, 187.5, 137.3 , 0 );
setMoveKey( spep_1 -1 + 507, 1, 187.5, 137.3 , 0 );
setMoveKey( spep_1 -1 + 508, 1, 188.2, 139.1 , 0 );
setMoveKey( spep_1 -1 + 509, 1, 188.2, 139.1 , 0 );
setMoveKey( spep_1 -1 + 510, 1, 188.9, 140.8 , 0 );
setMoveKey( spep_1 -1 + 511, 1, 188.9, 140.8 , 0 );
setMoveKey( spep_1 -1 + 512, 1, 189.6, 142.5 , 0 );
setMoveKey( spep_1 -1 + 513, 1, 189.6, 142.5 , 0 );
setMoveKey( spep_1 -1 + 514, 1, 190.3, 144.2 , 0 );
setMoveKey( spep_1 -1 + 515, 1, 190.3, 144.2 , 0 );
setMoveKey( spep_1 -1 + 516, 1, 191, 146 , 0 );
setMoveKey( spep_1 -1 + 517, 1, 191, 146 , 0 );
setMoveKey( spep_1 -1 + 518, 1, 191.7, 147.7 , 0 );
setMoveKey( spep_1 -1 + 519, 1, 191.7, 147.7 , 0 );
setMoveKey( spep_1 -1 + 520, 1, 192.4, 149.4 , 0 );
setMoveKey( spep_1 -1 + 521, 1, 192.4, 149.4 , 0 );
setMoveKey( spep_1 -1 + 522, 1, 186.2, 145.9 , 0 );
setMoveKey( spep_1 -1 + 523, 1, 186.2, 145.9 , 0 );
setMoveKey( spep_1 -1 + 524, 1, 173.5, 137.5 , 0 );
setMoveKey( spep_1 -1 + 525, 1, 173.5, 137.5 , 0 );
setMoveKey( spep_1 -1 + 526, 1, 157.9, 126.7 , 0 );
setMoveKey( spep_1 -1 + 527, 1, 157.9, 126.7 , 0 );
setMoveKey( spep_1 -1 + 528, 1, 140.9, 114.6 , 0 );
setMoveKey( spep_1 -1 + 529, 1, 140.9, 114.6 , 0 );
setMoveKey( spep_1 -1 + 530, 1, 122.7, 100.6 , 0 );
setMoveKey( spep_1 -1 + 531, 1, 122.7, 100.6 , 0 );
setMoveKey( spep_1 -1 + 532, 1, 104.4, 86.5 , 0 );
setMoveKey( spep_1 -1 + 533, 1, 104.4, 86.5 , 0 );
setMoveKey( spep_1 -1 + 534, 1, 86.7, 72.9 , 0 );
setMoveKey( spep_1 -1 + 535, 1, 86.7, 72.9 , 0 );
setMoveKey( spep_1 -1 + 536, 1, 70.7, 60.6 , 0 );
setMoveKey( spep_1 -1 + 537, 1, 70.7, 60.6 , 0 );
setMoveKey( spep_1 -1 + 538, 1, 61, 53.2 , 0 );
setMoveKey( spep_1 -1 + 539, 1, 61, 53.2 , 0 );
setMoveKey( spep_1 -1 + 540, 1, 60.2, 52.6 , 0 );
setMoveKey( spep_1 -1 + 541, 1, 60.2, 52.6 , 0 );
setMoveKey( spep_1 -1 + 542, 1, 59.4, 52 , 0 );
setMoveKey( spep_1 -1 + 543, 1, 59.4, 52 , 0 );
setMoveKey( spep_1 -1 + 544, 1, 58.6, 51.4 , 0 );
setMoveKey( spep_1 -1 + 545, 1, 58.6, 51.4 , 0 );
setMoveKey( spep_1 -1 + 546, 1, 57.8, 50.7 , 0 );
setMoveKey( spep_1 -1 + 547, 1, 57.8, 50.7 , 0 );
setMoveKey( spep_1 -1 + 548, 1, 57, 50.2 , 0 );
setMoveKey( spep_1 -1 + 549, 1, 57, 50.2 , 0 );
setMoveKey( spep_1 -1 + 550, 1, 85.8, 64.8 , 0 );
setMoveKey( spep_1 -1 + 552, 1, 93.7, 61.3 , 0 );
setMoveKey( spep_1 -1 + 554, 1, 101.1, 57.1 , 0 );
setMoveKey( spep_1 -1 + 556, 1, 107.9, 52.1 , 0 );
setMoveKey( spep_1 -1 + 558, 1, 114.1, 46.4 , 0 );
setMoveKey( spep_1 -1 + 560, 1, 119.8, 40.1 , 0 );
setMoveKey( spep_1 -1 + 562, 1, 125, 33.2 , 0 );
setMoveKey( spep_1 -1 + 564, 1, 129.6, 25.7 , 0 );
setMoveKey( spep_1 -1 + 566, 1, 133.8, 17.6 , 0 );
setMoveKey( spep_1 -1 + 567, 1, 133.8, 17.6 , 0 );
setMoveKey( spep_1 -1 + 568, 1, 132.9, -103.5 , 0 );
setMoveKey( spep_1 -1 + 569, 1, 132.9, -103.5 , 0 );
setMoveKey( spep_1 -1 + 570, 1, 132, -224.8 , 0 );
setMoveKey( spep_1 -1 + 571, 1, 132, -224.8 , 0 );
setMoveKey( spep_1 -1 + 572, 1, 131.3, -346.2 , 0 );
setMoveKey( spep_1 -1 + 573, 1, 131.3, -346.2 , 0 );
setMoveKey( spep_1 -1 + 574, 1, 130.6, -467.9 , 0 );
setMoveKey( spep_1 -1 + 575, 1, 130.6, -467.9 , 0 );
setMoveKey( spep_1 -1 + 576, 1, 130, -589.7 , 0 );
setMoveKey( spep_1 -1 + 577, 1, 130, -589.7 , 0 );
setMoveKey( spep_1 -1 + 578, 1, 129.6, -711.9 , 0 );
setMoveKey( spep_1 -1 + 579, 1, 129.6, -711.9 , 0 );
setMoveKey( spep_1 -1 + 580, 1, 129.3, -834.4 , 0 );
setMoveKey( spep_1 -1 + 581, 1, 129.3, -834.4 , 0 );
setMoveKey( spep_1 -1 + 582, 1, 129.4, -957.5 , 0 );
setMoveKey( spep_1 -1 + 583, 1, 129.4, -957.5 , 0 );
setMoveKey( spep_1 -1 + 584, 1, 130, -1081.8 , 0 );
setMoveKey( spep_1 -1 + 585, 1, 130, -1081.8 , 0 );
setMoveKey( spep_1 -1 + 586, 1, 133.8, -1212.8 , 0 );

setScaleKey( spep_1 -1 + 480, 1, 5.5, 5.5 );
setScaleKey( spep_1 -1 + 481, 1, 5.5, 5.5 );
setScaleKey( spep_1 -1 + 482, 1, 4.15, 4.15 );
setScaleKey( spep_1 -1 + 483, 1, 4.15, 4.15 );
setScaleKey( spep_1 -1 + 484, 1, 3.66, 3.66 );
setScaleKey( spep_1 -1 + 485, 1, 3.66, 3.66 );
setScaleKey( spep_1 -1 + 486, 1, 3.4, 3.4 );
setScaleKey( spep_1 -1 + 487, 1, 3.4, 3.4 );
setScaleKey( spep_1 -1 + 488, 1, 3.27, 3.27 );
setScaleKey( spep_1 -1 + 489, 1, 3.27, 3.27 );
setScaleKey( spep_1 -1 + 490, 1, 3.24, 3.24 );
setScaleKey( spep_1 -1 + 495, 1, 3.24, 3.24 );
setScaleKey( spep_1 -1 + 495, 1, 3.24, 3.24 );
setScaleKey( spep_1 -1 + 496, 1, 4.03, 4.03 );
setScaleKey( spep_1 -1 + 520, 1, 4.03, 4.03 );
setScaleKey( spep_1 -1 + 521, 1, 4.03, 4.03 );
setScaleKey( spep_1 -1 + 522, 1, 3.89, 3.89 );
setScaleKey( spep_1 -1 + 523, 1, 3.89, 3.89 );
setScaleKey( spep_1 -1 + 524, 1, 3.61, 3.61 );
setScaleKey( spep_1 -1 + 525, 1, 3.61, 3.61 );
setScaleKey( spep_1 -1 + 526, 1, 3.28, 3.28 );
setScaleKey( spep_1 -1 + 527, 1, 3.28, 3.28 );
setScaleKey( spep_1 -1 + 528, 1, 2.92, 2.92 );
setScaleKey( spep_1 -1 + 529, 1, 2.92, 2.92 );
setScaleKey( spep_1 -1 + 530, 1, 2.55, 2.55 );
setScaleKey( spep_1 -1 + 531, 1, 2.55, 2.55 );
setScaleKey( spep_1 -1 + 532, 1, 2.18, 2.18 );
setScaleKey( spep_1 -1 + 533, 1, 2.18, 2.18 );
setScaleKey( spep_1 -1 + 534, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 535, 1, 1.81, 1.81 );
setScaleKey( spep_1 -1 + 536, 1, 1.49, 1.49 );
setScaleKey( spep_1 -1 + 537, 1, 1.49, 1.49 );
setScaleKey( spep_1 -1 + 538, 1, 1.29, 1.29 );
setScaleKey( spep_1 -1 + 539, 1, 1.29, 1.29 );
setScaleKey( spep_1 -1 + 540, 1, 1.27, 1.27 );
setScaleKey( spep_1 -1 + 541, 1, 1.27, 1.27 );
setScaleKey( spep_1 -1 + 542, 1, 1.26, 1.26 );
setScaleKey( spep_1 -1 + 543, 1, 1.26, 1.26 );
setScaleKey( spep_1 -1 + 544, 1, 1.24, 1.24 );
setScaleKey( spep_1 -1 + 545, 1, 1.24, 1.24 );
setScaleKey( spep_1 -1 + 546, 1, 1.23, 1.23 );
setScaleKey( spep_1 -1 + 547, 1, 1.23, 1.23 );
setScaleKey( spep_1 -1 + 548, 1, 1.21, 1.21 );
setScaleKey( spep_1 -1 + 549, 1, 1.21, 1.21 );
setScaleKey( spep_1 -1 + 550, 1, 1.05, 1.05 );
setScaleKey( spep_1 -1 + 586, 1, 1.05, 1.05 );

setRotateKey( spep_1 -1 + 480, 1, -80.1 );
setRotateKey( spep_1 -1 + 481, 1, -80.1 );
setRotateKey( spep_1 -1 + 482, 1, -79.3 );
setRotateKey( spep_1 -1 + 483, 1, -79.3 );
setRotateKey( spep_1 -1 + 484, 1, -78.4 );
setRotateKey( spep_1 -1 + 485, 1, -78.4 );
setRotateKey( spep_1 -1 + 486, 1, -77.5 );
setRotateKey( spep_1 -1 + 487, 1, -77.5 );
setRotateKey( spep_1 -1 + 488, 1, -76.6 );
setRotateKey( spep_1 -1 + 489, 1, -76.6 );
setRotateKey( spep_1 -1 + 490, 1, -75.7 );
setRotateKey( spep_1 -1 + 491, 1, -75.7 );
setRotateKey( spep_1 -1 + 492, 1, -74.8 );
setRotateKey( spep_1 -1 + 493, 1, -74.8 );
setRotateKey( spep_1 -1 + 494, 1, -73.9 );
setRotateKey( spep_1 -1 + 495, 1, -73.9 );
setRotateKey( spep_1 -1 + 496, 1, -43.4 );
setRotateKey( spep_1 -1 + 549, 1, -43.4 );
setRotateKey( spep_1 -1 + 550, 1, -6 );
setRotateKey( spep_1 -1 + 552, 1, 0.9 );
setRotateKey( spep_1 -1 + 554, 1, 6.1 );
setRotateKey( spep_1 -1 + 556, 1, 10.8 );
setRotateKey( spep_1 -1 + 558, 1, 15.3 );
setRotateKey( spep_1 -1 + 560, 1, 19.5 );
setRotateKey( spep_1 -1 + 562, 1, 23.6 );
setRotateKey( spep_1 -1 + 564, 1, 27.6 );
setRotateKey( spep_1 -1 + 566, 1, 31.4 );
setRotateKey( spep_1 -1 + 586, 1, 31.4 );

-- 敵の動き3 --
setDisp( spep_1 -1 + 766, 1, 1 );
setDisp( spep_1 -1 + 828, 1, 0 );

changeAnime( spep_1 -1 + 766, 1, 6 );

setMoveKey( spep_1 -1 + 766, 1, -0.1, -723.8 , 0 );
setMoveKey( spep_1 -1 + 767, 1, -0.1, -723.8 , 0 );
setMoveKey( spep_1 -1 + 768, 1, -0.1, -506.4 , 0 );
setMoveKey( spep_1 -1 + 769, 1, -0.1, -506.4 , 0 );
setMoveKey( spep_1 -1 + 770, 1, -0.1, -360.6 , 0 );
setMoveKey( spep_1 -1 + 771, 1, -0.1, -360.6 , 0 );
setMoveKey( spep_1 -1 + 772, 1, -0.1, -272.3 , 0 );
setMoveKey( spep_1 -1 + 773, 1, -0.1, -272.3 , 0 );
setMoveKey( spep_1 -1 + 774, 1, -0.1, -226.9 , 0 );
setMoveKey( spep_1 -1 + 775, 1, -0.1, -226.9 , 0 );
setMoveKey( spep_1 -1 + 776, 1, -0.1, -210.1 , 0 );
setMoveKey( spep_1 -1 + 777, 1, -0.1, -210.1 , 0 );
setMoveKey( spep_1 -1 + 778, 1, -4.1, -211.7 , 0 );
setMoveKey( spep_1 -1 + 779, 1, -4.1, -211.7 , 0 );
setMoveKey( spep_1 -1 + 780, 1, -0.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 781, 1, -0.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 782, 1, -4.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 783, 1, -4.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 784, 1, -0.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 785, 1, -0.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 786, 1, -4.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 787, 1, -4.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 788, 1, -0.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 789, 1, -0.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 790, 1, -4.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 791, 1, -4.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 792, 1, -0.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 793, 1, -0.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 794, 1, -4.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 795, 1, -4.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 796, 1, -0.1, -211.8 , 0 );
setMoveKey( spep_1 -1 + 798, 1, -4.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 800, 1, -0.1, -207.8 , 0 );
setMoveKey( spep_1 -1 + 802, 1, -2.1, -209.8 , 0 );
setMoveKey( spep_1 -1 + 804, 1, -2.1, -209.8 , 0 );
setMoveKey( spep_1 -1 + 806, 1, -2.1, -206.3 , 0 );
setMoveKey( spep_1 -1 + 809, 1, -2.1, -206.3 , 0 );
setMoveKey( spep_1 -1 + 810, 1, -2.1, -121.6 , 0 );
setMoveKey( spep_1 -1 + 811, 1, -2.1, -121.6 , 0 );
setMoveKey( spep_1 -1 + 812, 1, -0.1, -110.9 , 0 );
setMoveKey( spep_1 -1 + 813, 1, -0.1, -110.9 , 0 );
setMoveKey( spep_1 -1 + 814, 1, -4.1, -106 , 0 );
setMoveKey( spep_1 -1 + 815, 1, -4.1, -106 , 0 );
setMoveKey( spep_1 -1 + 816, 1, -0.1, -97.2 , 0 );
setMoveKey( spep_1 -1 + 817, 1, -0.1, -97.2 , 0 );
setMoveKey( spep_1 -1 + 818, 1, -4.1, -84.5 , 0 );
setMoveKey( spep_1 -1 + 819, 1, -4.1, -84.5 , 0 );
setMoveKey( spep_1 -1 + 820, 1, -0.1, -75.7 , 0 );
setMoveKey( spep_1 -1 + 821, 1, -0.1, -75.7 , 0 );
setMoveKey( spep_1 -1 + 822, 1, -4.1, -70.9 , 0 );
setMoveKey( spep_1 -1 + 823, 1, -4.1, -70.9 , 0 );
setMoveKey( spep_1 -1 + 824, 1, -0.1, -62.1 , 0 );
setMoveKey( spep_1 -1 + 825, 1, -0.1, -62.1 , 0 );
setMoveKey( spep_1 -1 + 826, 1, -4.2, -49.4 , 0 );
setMoveKey( spep_1 -1 + 827, 1, -4.2, -49.4 , 0 );
setMoveKey( spep_1 -1 + 828, 1, -0.2, -40.6 , 0 );

setScaleKey( spep_1 -1 + 766, 1, 1, 1 );
setScaleKey( spep_1 -1 + 828, 1, 1, 1 );

setRotateKey( spep_1 -1 + 766, 1, -33.7 );
setRotateKey( spep_1 -1 + 810, 1, -33.7 );
setRotateKey( spep_1 -1 + 812, 1, -34.6 );
setRotateKey( spep_1 -1 + 814, 1, -35.5 );
setRotateKey( spep_1 -1 + 816, 1, -36.4 );
setRotateKey( spep_1 -1 + 818, 1, -37.3 );
setRotateKey( spep_1 -1 + 820, 1, -38.2 );
setRotateKey( spep_1 -1 + 822, 1, -39.2 );
setRotateKey( spep_1 -1 + 824, 1, -40.1 );
setRotateKey( spep_1 -1 + 826, 1, -41 );
setRotateKey( spep_1 -1 + 828, 1, -41.9 );

setBlendColor( spep_1 -1 + 806 , 1, 3, 1, 1, 1, 1);
setBlendColor( spep_1 -1 + 809 , 1, 3, 1, 1, 1, 1);
setBlendColor( spep_1 -1 + 810 , 1, 3, 1, 1, 1, 0);

-- ** 音 ** --
--エルボー
SE024 = playSeVer2( spep_1 + 316, 1187, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 316, 1153, "", 0, 0, 0, -1);

--連続キック
SE026 = playSeVer2( spep_1 + 366, 1110, "",spep_1 + 382, 0, 6, -1);
SE027 = playSeVer2( spep_1 + 366, 1010, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 376, 1110, "",spep_1 + 396, 0, 10, -1);
SE029 = playSeVer2( spep_1 + 384, 1110, "",spep_1 + 376, 0, -20, -1);
SE030 = playSeVer2( spep_1 + 384, 1009, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 394, 1110, "",spep_1 + 416, 0, 10, -1);
SE032 = playSeVer2( spep_1 + 404, 1110, "",spep_1 + 422, 0, 6, -1);
SE033 = playSeVer2( spep_1 + 412, 1110, "", 0, 0, 0, -1);

--凄む
SE034 = playSeVer2( spep_1 + 420, 8, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 420, 1379, "",spep_1 + 528, 0, 50, -1);

--振りかぶる
SE036 = playSeVer2( spep_1 + 444, 1116, "",spep_1 + 492, 0, 22, -1);
SE037 = playSeVer2( spep_1 + 452, 1004, "", 0, 0, 0, -1);

----腹パン
SE038 = playSeVer2( spep_1 + 488, 1153, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 488, 1049, "",spep_1 + 536, 0, 26, -1);
SE040 = playSeVer2( spep_1 + 490, 1190, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 492, 1187, "", 0, 0, 0, -1);

----飛び上がる
SE042 = playSeVer2( spep_1 + 556, 1207, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 556, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 556, SE043, 81 );
SE044 = playSeVer2( spep_1 + 560, 44, "", 0, 0, 0, -1);

----構える
SE045 = playSeVer2( spep_1 + 606, 1003, "", 0, 0, 0, -1);

----かめはめ波溜め
SE046 = playSeVer2( spep_1 + 618, 1131, "",spep_1 + 684, 0, 14, 0.6);
SE047 = playSeVer2( spep_1 + 618, 1132, "",spep_1 + 684, 0, 14, 0.6);

----かめはめ波発射
SE048 = playSeVer2( spep_1 + 670, 1133, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_1 + 670, 1146, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_1 + 670, 1284, "", 0, 0, 0, -1);

----かめはめ波飛んでいく
SE051 = playSeVer2( spep_1 + 716, 1022, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_1 + 716, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 716, SE052, 82 );
SE053 = playSeVer2( spep_1 + 752, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 752, SE053, 141 );

----爆発
SE054 = playSeVer2( spep_1 + 796, 1067, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 796, 1168, "",spep_1 + 908, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 796, SE055, 71 );
SE056 = playSeVer2( spep_1 + 802, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_1 + 812, 1188, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 814); -- ダメージ表示フレーム
endPhase( spep_1 + 918 -4); -- 終了フレーム

end
