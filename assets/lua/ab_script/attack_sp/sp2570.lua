--1026940:UR_ベジータ_ギャリック砲
--sp_effect_a1_00405
--sp2570
 
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_05 = 1035; --カットイン攻撃

--エフェクト(味方)
SP_01 = 161977; --登場、タメ ef_001
SP_02 = 161979; --フィニッシュ ef_002
 
--エフェクト(てき)
SP_01r = 161978; --登場、タメ ef_001_r
SP_02r = 161980; --フィニッシュ ef_002_r

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
 
ENABLE_AUTO_TIME_STRETCH(0.9);
 
if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;
 
 
-------------------------------------------------
-- 登場、タメ(340F)
-------------------------------------------------

MAX_FRAME_0 = 340

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 集中線 ** --
shuchu_00 = entryEffectLife( spep_0 + 0, 906, 56, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchu_00, 56, 20 );
setEffMoveKey( spep_0 + 0, shuchu_00, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, shuchu_00, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchu_00, 1.6, 1.6 );
setEffScaleKey( spep_0 + 56, shuchu_00, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, shuchu_00, 0 );
setEffRotateKey( spep_0 + 56, shuchu_00, 0 );
setEffAlphaKey( spep_0 + 0, shuchu_00, 255 );
setEffAlphaKey( spep_0 + 56, shuchu_00, 255 );

shuchu_01 = entryEffectLife( spep_0 + 237, 906, 103, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 237, shuchu_01, 103, 20 );
setEffMoveKey( spep_0 + 237, shuchu_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, shuchu_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 237, shuchu_01, 1.6, 1.6 );
setEffScaleKey( spep_0 + MAX_FRAME_0, shuchu_01, 1.6, 1.6 );
setEffRotateKey( spep_0 + 237, shuchu_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, shuchu_01, 0 );
setEffAlphaKey( spep_0 + 237, shuchu_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, shuchu_01, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 246;
  
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 180);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );

--集中線
SE003 = playSeVer2( spep_0 + 8, 20, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 40 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 40 );

--画面遷移
SE006 = playSeVer2( spep_0 + 48, 8, "", 0, 0, 0, -1);

--飛び上がる
SE007 = playSeVer2( spep_0 + 62, 1207, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 62, SE007, 68 );
SE008 = playSeVer2( spep_0 + 62, 1117, "", 0, 0, 0, 0.6);
SE009 = playSeVer2( spep_0 + 62, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE009, 78 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
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
--上昇する
SE010 = playSeVer2( spep_0 + 110, 44, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 110, 9, "",spep_0 + 232, 0, 76, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 63 );

--気弾溜め
SE012 = playSeVer2( spep_0 + 162, 1252, "",spep_0 + 350, 0, 10, -1);
SE013 = playSeVer2( spep_0 + 162, 1341, "",spep_0 + 316, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 162, SE013, 72 );
setTimeStretch( SE013, 1.24, 30, 4 );

--腕をひく
SE014 = playSeVer2( spep_0 + 176, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE015 = playSeVer2( spep_0 + 222, 1370, "",spep_0 + 352, 10, 14, -1);
setStartTimeMs( SE015,  433 );

--構える
SE016 = playSeVer2( spep_0 + 204, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE016, 67 );

--気弾溜め
SE017 = playSeVer2( spep_0 + 222, 1243, "",spep_0 + 352, 0, 14, -1);

--顔カットイン
--SE018 = playSeVer2( spep_0 + 254, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;--340

--------------------------------------
--カードカットイン(94F)
--------------------------------------


spep_1 = showCardCutin(spep_c);


-------------------------------------------------
-- フィニッシュ(258F)
-------------------------------------------------

MAX_FRAME_1 = 258

-- ** エフェクト等 ** --
finish = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish, 0);
setEffAlphaKey( spep_1 + 0, finish, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish, 255);

-- ** 集中線 ** --
shuchu_10 = entryEffectLife( spep_1 + 174, 906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 174, shuchu_10, 84, 20 );
setEffMoveKey( spep_1 + 174, shuchu_10, 0, 0 , 0 );
setEffMoveKey( spep_1 + MAX_FRAME_1, shuchu_10, 0, 0 , 0 );
setEffScaleKey( spep_1 + 174, shuchu_10, 1.6, 1.6 );
setEffScaleKey( spep_1 + MAX_FRAME_1, shuchu_10, 1.6, 1.6 );
setEffRotateKey( spep_1 + 174, shuchu_10, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_1, shuchu_10, 0 );
setEffAlphaKey( spep_1 + 174, shuchu_10, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_1, shuchu_10, 255 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_1 + 61,  10006, 57, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
setEffMoveKey( spep_1 + 61, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_1 + 118, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_1 + 61, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_1 + 64, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_1 + 66, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_1 + 68, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_1 + 118, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_1 + 61, ctgyan, 0 );
setEffRotateKey( spep_1 + 118, ctgyan, 0 );

setEffAlphaKey( spep_1 + 61, ctgyan, 150 );
setEffAlphaKey( spep_1 + 64, ctgyan, 255 );
setEffAlphaKey( spep_1 + 118, ctgyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 180);  --黒　背景

-- ** 音 ** --
--気弾発射
SE020 = playSeVer2( spep_1 + 0, 1027, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 0, 1022, "",spep_1 + 100, 0, 28, -1);

--ギャン
SE022 = playSeVer2( spep_1 + 70, 1023, "", 0, 0, 0, -1);

--爆発
SE023 = playSeVer2( spep_1 + 132, 1024, "", 0, 0, 0, -1);

--爆発2
SE024 = playSeVer2( spep_1 + 174, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 174, SE024, 87 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 154); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- 終了フレーム(258F)
 
else
 
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

 
spep_0 = 0;
 

-------------------------------------------------
-- 登場、タメ(340F)
-------------------------------------------------

MAX_FRAME_0 = 340

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 集中線 ** --
shuchu_00 = entryEffectLife( spep_0 + 0, 906, 56, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchu_00, 56, 20 );
setEffMoveKey( spep_0 + 0, shuchu_00, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, shuchu_00, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchu_00, 1.6, 1.6 );
setEffScaleKey( spep_0 + 56, shuchu_00, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, shuchu_00, 0 );
setEffRotateKey( spep_0 + 56, shuchu_00, 0 );
setEffAlphaKey( spep_0 + 0, shuchu_00, 255 );
setEffAlphaKey( spep_0 + 56, shuchu_00, 255 );

shuchu_01 = entryEffectLife( spep_0 + 237, 906, 103, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 237, shuchu_01, 103, 20 );
setEffMoveKey( spep_0 + 237, shuchu_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, shuchu_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 237, shuchu_01, 1.6, 1.6 );
setEffScaleKey( spep_0 + MAX_FRAME_0, shuchu_01, 1.6, 1.6 );
setEffRotateKey( spep_0 + 237, shuchu_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, shuchu_01, 0 );
setEffAlphaKey( spep_0 + 237, shuchu_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, shuchu_01, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 246;

--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
]]
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 180);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1232, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );

--集中線
SE003 = playSeVer2( spep_0 + 8, 20, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 40 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 40 );

--画面遷移
SE006 = playSeVer2( spep_0 + 48, 8, "", 0, 0, 0, -1);

--飛び上がる
SE007 = playSeVer2( spep_0 + 62, 1207, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 62, SE007, 68 );
SE008 = playSeVer2( spep_0 + 62, 1117, "", 0, 0, 0, 0.6);
SE009 = playSeVer2( spep_0 + 62, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE009, 78 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
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
--上昇する
SE010 = playSeVer2( spep_0 + 110, 44, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 110, 9, "",spep_0 + 232, 0, 76, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 63 );

--気弾溜め
SE012 = playSeVer2( spep_0 + 162, 1252, "",spep_0 + 350, 0, 10, -1);
SE013 = playSeVer2( spep_0 + 162, 1341, "",spep_0 + 316, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 162, SE013, 72 );
setTimeStretch( SE013, 1.24, 30, 4 );

--腕をひく
SE014 = playSeVer2( spep_0 + 176, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE015 = playSeVer2( spep_0 + 222, 1370, "",spep_0 + 352, 10, 14, -1);
setStartTimeMs( SE015,  433 );

--構える
SE016 = playSeVer2( spep_0 + 204, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE016, 67 );

--気弾溜め
SE017 = playSeVer2( spep_0 + 222, 1243, "",spep_0 + 352, 0, 14, -1);

--顔カットイン
--SE018 = playSeVer2( spep_0 + 254, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;--340

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c);

-------------------------------------------------
-- フィニッシュ(258F)
-------------------------------------------------

MAX_FRAME_1 = 258

-- ** エフェクト等 ** --
finish = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish, 0);
setEffAlphaKey( spep_1 + 0, finish, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish, 255);

-- ** 集中線 ** --
shuchu_10 = entryEffectLife( spep_1 + 174, 906, 84, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 174, shuchu_10, 84, 20 );
setEffMoveKey( spep_1 + 174, shuchu_10, 0, 0 , 0 );
setEffMoveKey( spep_1 + MAX_FRAME_1, shuchu_10, 0, 0 , 0 );
setEffScaleKey( spep_1 + 174, shuchu_10, 1.6, 1.6 );
setEffScaleKey( spep_1 + MAX_FRAME_1, shuchu_10, 1.6, 1.6 );
setEffRotateKey( spep_1 + 174, shuchu_10, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_1, shuchu_10, 0 );
setEffAlphaKey( spep_1 + 174, shuchu_10, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_1, shuchu_10, 255 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_1 + 61,  10006, 57, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
setEffMoveKey( spep_1 + 61, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_1 + 118, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_1 + 61, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_1 + 64, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_1 + 66, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_1 + 68, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_1 + 118, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_1 + 61, ctgyan, 0 );
setEffRotateKey( spep_1 + 118, ctgyan, 0 );

setEffAlphaKey( spep_1 + 61, ctgyan, 150 );
setEffAlphaKey( spep_1 + 64, ctgyan, 255 );
setEffAlphaKey( spep_1 + 118, ctgyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 180);  --黒　背景

-- ** 音 ** --
--気弾発射
SE020 = playSeVer2( spep_1 + 0, 1027, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 0, 1022, "",spep_1 + 100, 0, 28, -1);

--ギャン
SE022 = playSeVer2( spep_1 + 70, 1023, "", 0, 0, 0, -1);

--爆発
SE023 = playSeVer2( spep_1 + 132, 1024, "", 0, 0, 0, -1);

--爆発2
SE024 = playSeVer2( spep_1 + 174, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 174, SE024, 87 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 154); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- 終了フレーム(258F)
end