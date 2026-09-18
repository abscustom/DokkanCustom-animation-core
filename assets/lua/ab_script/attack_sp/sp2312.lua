--1023520:ベジータ(大猿)_ファイナルブリッドアタック
--sp_effect_a1_00343
--sp2312

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
SP_01 = 159174; --並ぶ ef_001
SP_02 = 159176; --構える ef_002
SP_03 = 159177; --ベジータ放ち ef_003
SP_04 = 159179; --ベジータ放ち　背景 ef_003_back
SP_05 = 159181; --ベジータ放ち拡大 ef_004
SP_06 = 159183; --爆発 ef_006

--エフェクト(敵)
SP_07 = 159175; --並ぶ反転 ef_001r
SP_08 = 159178; --ベジータ放ち反転 ef_003r
SP_09 = 159180; --ベジータ放ち反転　背景 ef_003_back_r
SP_10 = 159182; --ベジータ放ち拡大　反転 ef_004r
SP_11 = 159184; --爆発反転 ef_006r


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

-- setMoveKey(   0,   1,    0, -5136,   0);
-- setMoveKey(   1,   1,    0, -5136,   0);
-- setMoveKey(   2,   1,    0, -5136,   0);
-- setMoveKey(   3,   1,    0, -5136,   0);
-- setMoveKey(   4,   1,    0, -5136,   0);
-- setMoveKey(   5,   1,    0, -5136,   0);
-- setMoveKey(   6,   1,    0, -5136,   0);
-- setScaleKey(  0,   1,  1.6, 1.6);
-- setScaleKey(  1,   1,  1.6, 1.6);
-- setScaleKey(  2,   1,  1.6, 1.6);
-- setScaleKey(  3,   1,  1.6, 1.6);
-- setScaleKey(  4,   1,  1.6, 1.6);
-- setScaleKey(  5,   1,  1.6, 1.6);
-- setScaleKey(  6,   1,  1.6, 1.6);
-- setRotateKey( 0,   1,  0);
-- setRotateKey( 1,   1,  0);
-- setRotateKey( 2,   1,  0);
-- setRotateKey( 3,   1,  0);
-- setRotateKey( 4,   1,  0);
-- setRotateKey( 5,   1,  0);
-- setRotateKey( 6,   1,  0);


ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 並ぶ
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --並ぶ ef_001
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 228 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_1 + 228 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 228 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 228 -5, base1, 255);
setEffAlphaKey( spep_1 + 228 -4, base1, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 98, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 1, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 2, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 3, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 4, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 5, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 6, 1, 716, -122 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 715.9, -122 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 715.8, -122 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 715.5, -122 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 715, -122 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 714.1, -122 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 712.8, -122 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 710.9, -122 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 708.1, -122 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 704.3, -122 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 699, -122 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 692, -122 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 682.9, -122 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 671.2, -122 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 656.3, -122 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 637.8, -122 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 614.9, -122 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 587, -122 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 553.2, -122 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 512.7, -122 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 464.5, -122 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 416.3, -122 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 375.8, -122 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 342, -122 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 314.1, -122 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 291.2, -122 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 272.7, -122 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 257.8, -122 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 246.1, -122 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 237, -122 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 230, -122 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 224.7, -122 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 220.9, -122 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 218.1, -122 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 216.2, -122 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 214.9, -122 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 214, -122 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 213.5, -122 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 213.2, -122 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 213.1, -122 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 213, -122 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 213, -122 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1 + 1, 1, 1, 1 );
setScaleKey( spep_1 + 2, 1, 1, 1 );
setScaleKey( spep_1 + 3, 1, 1, 1 );
setScaleKey( spep_1 + 4, 1, 1, 1 );
setScaleKey( spep_1 + 5, 1, 1, 1 );
setScaleKey( spep_1 + 6, 1, 1, 1 );
setScaleKey( spep_1 -3 + 98, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 98, 1, 0 );

setAlphaKey( spep_1 + 0, 1, 255 );
setAlphaKey( spep_1 -3 + 98, 1, 255 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 132;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--画面遷移
SE001 = playSeVer2( spep_1 + 28, 1232, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_1 + 28, SE001, 43 );
SE002 = playSeVer2( spep_1 + 30, 44, "", 0, 0, 0, -1); setPitch( spep_1 + 30, SE002, -300 ); setTimeStretch( SE002, 0.8, 30, 4 );

--顔カットイン
SE003 = playSeVer2( spep_1 + 140 -12, 1018, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_1 + 162, 1233, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 174, 1006, "", 0, 0, 0, -1); setPitch( spep_1 + 174, SE005, -200 ); setTimeStretch( SE005, 0.87, 30, 4 );


-- ** 次の準備 ** --
spep_c = spep_1 + 228 -4;

-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
--setEffReplaceTexture( speff2, 1, 1);
--setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

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
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- 構える
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --構える ef_002
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 116 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_2 + 116 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 140 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 116 -5, base2, 255);
setEffAlphaKey( spep_2 + 116 -4, base2, 0);


-- ** 音 ** --
--力む
SE007 = playSeVer2( spep_2 + 0, 1271, "",spep_2 + 102, 26, 14, -1); setSeVolumeByWorkId( spep_2 + 0, SE007, 120 ); setStartTimeMs( SE007,  500 );
SE008 = playSeVer2( spep_2 + 2, 1356, "",spep_2 + 102, 0, 14, -1);
SE009 = playSeVer2( spep_2 + 2, 1330, "", spep_2 + 102, 0, 4, -1);

--振りかぶって前に手を出す
SE010 = playSeVer2( spep_2 + 64, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 84, 1233, "", spep_2 + 102, 0, 4, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
spep_3 = spep_2 + 116 -4;


-------------------------------------------------
-- ベジータ放ち
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --ベジータ放ち ef_003
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 280 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 280 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 280 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 280 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 280 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0); --ベジータ放ち　背景 ef_003_back
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 280 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 280 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 280 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 280 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 280 -4, base3_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 164, 1, 1 );
setDisp( spep_3 -4 + 280, 1, 0 );

changeAnime( spep_3 -3 + 170, 1, 104 );

setMoveKey( spep_3 -3 + 170, 1, 1938.6, -1635.7 , 0 );
setMoveKey( spep_3 -3 + 171, 1, 1938.6, -1635.7 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 1855.9, -1566.9 , 0 );
setMoveKey( spep_3 -3 + 173, 1, 1855.9, -1566.9 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 1719.6, -1453.4 , 0 );
setMoveKey( spep_3 -3 + 175, 1, 1719.6, -1453.4 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 1516.1, -1284 , 0 );
setMoveKey( spep_3 -3 + 177, 1, 1516.1, -1284 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 1232.2, -1047.7 , 0 );
setMoveKey( spep_3 -3 + 179, 1, 1232.2, -1047.7 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 879.5, -754.2 , 0 );
setMoveKey( spep_3 -3 + 181, 1, 879.5, -754.2 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 595.6, -517.9 , 0 );
setMoveKey( spep_3 -3 + 183, 1, 595.6, -517.9 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 392.1, -348.6 , 0 );
setMoveKey( spep_3 -3 + 185, 1, 392.1, -348.6 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 255.7, -235.1 , 0 );
setMoveKey( spep_3 -3 + 187, 1, 255.7, -235.1 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 173, -166.2 , 0 );
setMoveKey( spep_3 -3 + 189, 1, 173, -166.2 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 130.5, -130.9 , 0 );
setMoveKey( spep_3 -3 + 191, 1, 130.5, -130.9 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 114.9, -117.8 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 112.7, -116 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 112.7, -116 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 131.7, -96 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 142.9, -136.7 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 92.8, -153.9 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 93.6, -113.4 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 100.4, -137.4 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 117.9, -115.5 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 95.7, -123.5 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 84.6, -83.1 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 94.1, -91.9 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 132, -34.2 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 89, -61 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 88.4, -74.5 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 104.1, -73.2 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 77.7, -44.3 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 90.4, -70.8 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 123.6, -40.6 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 123.6, -73.4 , 0 );
setMoveKey( spep_3 -3 + 240, 1, 93.6, -103.7 , 0 );
setMoveKey( spep_3 -3 + 242, 1, 101.1, -37.1 , 0 );
setMoveKey( spep_3 -3 + 244, 1, 98.1, -107.7 , 0 );
setMoveKey( spep_3 -3 + 246, 1, 133.1, -107.9 , 0 );
setMoveKey( spep_3 -3 + 248, 1, 81.8, -151.2 , 0 );
setMoveKey( spep_3 -3 + 250, 1, 96.9, -80.2 , 0 );
setMoveKey( spep_3 -3 + 252, 1, 143.8, -158.1 , 0 );
setMoveKey( spep_3 -3 + 254, 1, 125.4, -145 , 0 );
setMoveKey( spep_3 -3 + 256, 1, 129, -120.5 , 0 );
setMoveKey( spep_3 -3 + 258, 1, 84.4, -149.7 , 0 );
setMoveKey( spep_3 -3 + 260, 1, 92, -69 , 0 );
setMoveKey( spep_3 -3 + 262, 1, 95.5, -110.8 , 0 );
setMoveKey( spep_3 -3 + 264, 1, 116.2, -98.5 , 0 );
setMoveKey( spep_3 -3 + 266, 1, 120.4, -127.2 , 0 );
setMoveKey( spep_3 -3 + 268, 1, 112.7, -116 , 0 );
setMoveKey( spep_3 -3 + 270, 1, 93.7, -122 , 0 );
setMoveKey( spep_3 -3 + 272, 1, 95.7, -110 , 0 );
setMoveKey( spep_3 -4 + 280, 1, 95.7, -110 , 0 );

setScaleKey( spep_3 -3 + 170, 1, 1.17, 1.17 );
setScaleKey( spep_3 -4 + 280, 1, 1.17, 1.17 );

setRotateKey( spep_3 -3 + 170, 1, 0 );
setRotateKey( spep_3 -4 + 280, 1, 0 );

setAlphaKey( spep_3 + 0, 1, 255 );
setAlphaKey( spep_3 -3 + 280, 1, 255 );


-- ** 音 ** --
--気弾連続発射
SE012 = playSeVer2( spep_3 + 0 -20, 1021, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 0 -20, 1016, "", spep_3 + 22 -20, 0, 8, 0.6); setSeVolumeByWorkId( spep_3 + 0 -20, SE013, 124 );
SE014 = playSeVer2( spep_3 + 0 -20, 1358, "", spep_3 + 22 -20, 0, 8, 0.6); setSeVolumeByWorkId( spep_3 + 0 -20, SE014, 87 );
SE015 = playSeVer2( spep_3 + 12 -20, 1016, "", spep_3 + 30 -20, 0, 8, 0.6); setSeVolumeByWorkId( spep_3 + 12 -20, SE015, 123 );
SE016 = playSeVer2( spep_3 + 12 -20, 1358, "", spep_3 + 30 -20, 0, 8, 0.6); setSeVolumeByWorkId( spep_3 + 12 -20, SE016, 82 );
SE017 = playSeVer2( spep_3 + 22 -20, 1016, "", spep_3 + 40 -20, 0, 8, 0.6);
SE018 = playSeVer2( spep_3 + 22 -20, 1358, "", spep_3 + 40 -20, 0, 10, 0.6);
SE019 = playSeVer2( spep_3 + 30 -20, 1016, "", spep_3 + 52 -20, 0, 8, 0.6);
SE020 = playSeVer2( spep_3 + 30 -20, 1358, "", spep_3 + 52 -20, 0, 10, 0.6);
SE021 = playSeVer2( spep_3 + 40 -20, 1016, "", spep_3 + 62 -20, 0, 8, 0.6);
SE022 = playSeVer2( spep_3 + 40 -20, 1358, "", spep_3 + 62 -20, 0, 10, 0.6);
SE023 = playSeVer2( spep_3 + 52 -20, 1016, "", spep_3 + 74 -20, 0, 8, 0.6);
SE024 = playSeVer2( spep_3 + 52 -20, 1358, "", spep_3 + 74 -20, 0, 10, 0.6);
SE025 = playSeVer2( spep_3 + 62 -20, 1016, "", 0, 0, 0, 0.6);
SE026 = playSeVer2( spep_3 + 62 -20, 1358, "", spep_3 + 90 -20, 0, 12, 0.6);
SE027 = playSeVer2( spep_3 + 74 -20, 1016, "", 0, 0, 0, 0.6);
SE028 = playSeVer2( spep_3 + 74 -20, 1358, "", spep_3 + 100 -20, 0, 12, 0.6);

--気弾空に飛んでいく
SE029 = playSeVer2( spep_3 + 80 -20, 1304, "",spep_3 + 144 -20, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 80 -20, SE029, 116 );
setPitch( spep_3 + 80 -20, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );

--気弾連続発射
SE030 = playSeVer2( spep_3 + 84 -20, 1016, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_3 + 84 -20, 1358, "", spep_3 + 108 -20, 0, 10, -1);

--気弾空に飛んでいく
SE032 = playSeVer2( spep_3 + 142 -20, 1212, "", 0, 8, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 142 -20, SE032, 81 );
setStartTimeMs( SE032,  850 );

--気弾連続発射
SE033 = playSeVer2( spep_3 + 94 -20, 1016, "", 0, 0, 0, 0.6);
SE034 = playSeVer2( spep_3 + 94 -20, 1358, "", spep_3 + 118 -20, 0, 8, 0.6);
SE035 = playSeVer2( spep_3 + 106 -20, 1016, "", 0, 0, 0, 0.6);
SE036 = playSeVer2( spep_3 + 106 -20, 1358, "", spep_3 + 134 -20, 0, 10, 0.6);
SE037 = playSeVer2( spep_3 + 120 -20, 1016, "", 0, 0, 0, 0.6);
SE038 = playSeVer2( spep_3 + 120 -20, 1358, "", spep_3 + 150 -20, 0, 10, 0.6);
SE039 = playSeVer2( spep_3 + 130 -20, 1016, "", 0, 0, 0, 0.6);
SE040 = playSeVer2( spep_3 + 130 -20, 1358, "", spep_3 + 156 -20, 0, 10, 0.6);

--気弾空に飛んでいく
SE041 = playSeVer2( spep_3 + 140 -20, 1021, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_3 + 140 -20, SE041, 83 );
SE042 = playSeVer2( spep_3 + 142 -20, 1202, "", 0, 0, 0, 0.6); setSeVolumeByWorkId( spep_3 + 142 -20, SE042, 146 );
SE043 = playSeVer2( spep_3 + 142 -20, 1304, "", spep_3 + 246 -20, 0, 16, -1);

--気弾降り注ぐ
SE044 = playSeVer2( spep_3 + 222 -20, 1017, "", spep_3 + 248 -20, 0, 8, -1);
SE045 = playSeVer2( spep_3 + 232 -20, 1017, "", spep_3 + 256 -20, 0, 8, -1);
SE046 = playSeVer2( spep_3 + 242 -20, 1014, "", spep_3 + 276 -20, 0, 16, -1);
SE047 = playSeVer2( spep_3 + 250 -20, 1024, "", 0, 0, 0, 0.5);
SE048 = playSeVer2( spep_3 + 260 -20, 1159, "", 0, 0, 0, 0.5); setSeVolumeByWorkId( spep_3 + 260 -20, SE048, 84 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 280 -4;

-------------------------------------------------
-- ベジータ放ち拡大
-------------------------------------------------
-- ** エフェクト等 ** --
base4 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0); --ベジータ放ち拡大 ef_004
setEffMoveKey( spep_4 + 0, base4, 0, 0 , 0);
setEffMoveKey( spep_4 + 120 -4, base4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4, 1.0, 1.0);
setEffScaleKey( spep_4 + 120 -4, base4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4, 0);
setEffRotateKey( spep_4 + 120 -4, base4, 0);
setEffAlphaKey( spep_4 + 0, base4, 255);
setEffAlphaKey( spep_4 + 120 -5, base4, 255);
setEffAlphaKey( spep_4 + 120 -4, base4, 0);


-- ** 音 ** --
--連続気弾２
SE049 = playSeVer2( spep_4 + 0, 1016, "", spep_4 + 18, 0, 8, -1);
SE050 = playSeVer2( spep_4 + 0, 1358, "", spep_4 + 18, 0, 10, -1);
SE051 = playSeVer2( spep_4 + 8, 1016, "", spep_4 + 28, 0, 8, -1);
SE052 = playSeVer2( spep_4 + 8, 1358, "", spep_4 + 28, 0, 8, -1);
SE053 = playSeVer2( spep_4 + 18, 1016, "", spep_4 + 38, 0, 8, -1);
SE054 = playSeVer2( spep_4 + 18, 1358, "", spep_4 + 38, 0, 8, -1);
SE055 = playSeVer2( spep_4 + 28, 1016, "", spep_4 + 48, 0, 8, -1);
SE056 = playSeVer2( spep_4 + 28, 1358, "", spep_4 + 48, 0, 8, -1);
SE057 = playSeVer2( spep_4 + 38, 1016, "", spep_4 + 56, 0, 8, -1);
SE058 = playSeVer2( spep_4 + 38, 1358, "", spep_4 + 56, 0, 8, -1);
SE059 = playSeVer2( spep_4 + 48, 1016, "", spep_4 + 66, 0, 6, -1);
SE060 = playSeVer2( spep_4 + 48, 1358, "", spep_4 + 66, 0, 6, -1);
SE061 = playSeVer2( spep_4 + 56, 1016, "", spep_4 + 78, 0, 8, -1);
SE062 = playSeVer2( spep_4 + 56, 1358, "", spep_4 + 78, 0, 12, -1);
SE063 = playSeVer2( spep_4 + 66, 1016, "", spep_4 + 88, 0, 6, -1);
SE064 = playSeVer2( spep_4 + 66, 1358, "", spep_4 + 88, 0, 6, -1);
SE065 = playSeVer2( spep_4 + 78, 1016, "", spep_4 + 100, 0, 6, -1);
SE066 = playSeVer2( spep_4 + 78, 1358, "", spep_4 + 100, 0, 6, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 120 -4;

-------------------------------------------------
-- 爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0); --爆発 ef_006
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 280 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, 1.0, 1.0);
setEffScaleKey( spep_5 + 280 -4, base5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 280 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 280 -5, base5, 255);
setEffAlphaKey( spep_5 + 280 -4, base5, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 22, 1, 1 );
setDisp( spep_5 -3 + 56, 1, 0 );
setDisp( spep_5 -3 + 64, 1, 1 );
setDisp( spep_5 -3 + 68, 1, 0 );

changeAnime( spep_5 -3 + 22, 1, 107 );

setBlendColor( spep_5 -3 + 64, 1, 0, 1.0, 1.0, 0.4, 0.7 );
setBlendColor( spep_5 -3 + 66, 1, 0, 1.0, 1.0, 0.6, 0.2 );
setBlendColor( spep_5 -3 + 68, 1, 0, 0, 0, 0, 0 );

setMoveKey( spep_5 -3 + 22, 1, 24.3, -494.9 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 24.3, -489.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 24.3, -483.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 24.4, -478.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 24.4, -472.4 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 24.4, -466.8 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 24.5, -461.2 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 24.5, -455.6 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 24.5, -449.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 24.5, -444.3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 24.5, -438.7 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 24.6, -433 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 24.4, -412.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 24.1, -391.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 23.8, -371.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 23.6, -350.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 23.4, -330.1 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 23.2, -309.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 23.2, -259.4, 0 );
setMoveKey( spep_5 -3 + 65, 1, 23.2, -259.4, 0 );
setMoveKey( spep_5 -3 + 66, 1, 23.2, -299.4 , 0 );
setMoveKey( spep_5 -3 + 67, 1, 23.2, -299.4 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 23.2, -299.4 , 0 );

setScaleKey( spep_5 -3 + 0, 1, 0, 0 );
setScaleKey( spep_5 -3 + 19, 1, 0, 0 );
setScaleKey( spep_5 -3 + 21, 1, 0.5 *0.5, 0.5 *0.5 );
setScaleKey( spep_5 -3 + 24, 1, 0.5 *0.5, 0.5 *0.5 );
setScaleKey( spep_5 -3 + 26, 1, 0.51 *0.5, 0.51 *0.5 );
setScaleKey( spep_5 -3 + 36, 1, 0.51 *0.5, 0.51 *0.5 );
setScaleKey( spep_5 -3 + 38, 1, 0.52 *0.5, 0.52 *0.5 );
setScaleKey( spep_5 -3 + 44, 1, 0.52 *0.5, 0.52 *0.5 );
setScaleKey( spep_5 -3 + 46, 1, 0.54 *0.5, 0.54 *0.5 );
setScaleKey( spep_5 -3 + 48, 1, 0.55 *0.5, 0.55 *0.5 );
setScaleKey( spep_5 -3 + 50, 1, 0.57 *0.5, 0.57 *0.5 );
setScaleKey( spep_5 -3 + 52, 1, 0.59 *0.5, 0.59 *0.5 );
setScaleKey( spep_5 -3 + 54, 1, 0.61 *0.5, 0.61 *0.5 );
setScaleKey( spep_5 -3 + 56, 1, 0.62 *0.5, 0.62 *0.5 );
setScaleKey( spep_5 -3 + 64, 1, 0.61 *0.5, 0.61 *0.5 );
setScaleKey( spep_5 -3 + 68, 1, 0.62 *0.5, 0.62 *0.5 );

setRotateKey( spep_5 -3 + 0, 1, 34.4 );
setRotateKey( spep_5 -3 + 19, 1, 34.4 );
setRotateKey( spep_5 -3 + 21, 1, 34.5 );
setRotateKey( spep_5 -3 + 44, 1, 34.5 );
setRotateKey( spep_5 -3 + 46, 1, 34.4 );
setRotateKey( spep_5 -3 + 68, 1, 34.4 );

setAlphaKey( spep_5 -3 + 22, 1, 0 );
setAlphaKey( spep_5 -3 + 56, 1, 120 );
setAlphaKey( spep_5 -3 + 68, 1, 120 );


-- ** 音 ** --
--気弾上空に飛んでいく
SE067 = playSeVer2( spep_5 + 20 -20 -6, 1168, "",spep_5 + 110 -20, 10, 26, -1);
setSeVolumeByWorkId( spep_5 + 20 -20, SE067, 71 );
setStartTimeMs( SE067,  367 );

--連続気弾２
SE068 = playSeVer2( spep_5 + 0 -20 -6, 1016, "", 0, 0, 0, 0.6);
SE069 = playSeVer2( spep_5 + 0 -20 -6, 1358, "", spep_5 + 26 -20, 0, 10, 0.6);
SE070 = playSeVer2( spep_5 + 12 -20 -6, 1016, "", 0, 0, 0, 0.6);
SE071 = playSeVer2( spep_5 + 12 -20 -6, 1358, "", spep_5 + 34 -20, 0, 6, 0.6);

--気弾上空に飛んでいく
SE072 = playSeVer2( spep_5 + 26 -20 -6, 1304, "", spep_5 + 110 -20, 0, 24, -1);
SE073 = playSeVer2( spep_5 + 26 -20 -6, 1202, "", spep_5 + 110 -20, 0, 22, -1);
setSeVolumeByWorkId( spep_5 + 26 -20, SE073, 214 );

--気弾降り注ぐ
SE074 = playSeVer2( spep_5 + 84 -20, 1217, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_5 + 84 -20, SE074, 79 );
SE075 = playSeVer2( spep_5 + 88 -20, 1017, "", spep_5 + 126 -20, 0, 16, -1);
SE076 = playSeVer2( spep_5 + 88 -20, 1067, "", spep_5 + 132 -20, 0, 22, -1); setSeVolumeByWorkId( spep_5 + 88 -20, SE076, 92 );
SE077 = playSeVer2( spep_5 + 98 -20, 1017, "", spep_5 + 136 -20, 0, 16, -1); setSeVolumeByWorkId( spep_5 + 98 -20, SE077, 88 );
SE078 = playSeVer2( spep_5 + 110 -20, 1017, "", spep_5 + 148 -20, 0, 18, -1); setSeVolumeByWorkId( spep_5 + 110 -20, SE078, 90 );
SE079 = playSeVer2( spep_5 + 120 -20, 1017, "", spep_5 + 158 -20, 0, 18, -1); setSeVolumeByWorkId( spep_5 + 120 -20, SE079, 88 );

--連続爆発
SE080 = playSeVer2( spep_5 + 128 -20, 1023, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_5 + 128 -20, SE080, 81 );
SE081 = playSeVer2( spep_5 + 140 -20, 1188, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_5 + 140 -20, SE081, 89 );
SE082 = playSeVer2( spep_5 + 154 -20, 1159, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_5 + 154 -20, SE082, 72 );
SE083 = playSeVer2( spep_5 + 164 -20, 1024, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_5 + 164 -20, SE083, 85 );


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 140);
endPhase( spep_5 + 280 -8);

else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 並ぶ
-------------------------------------------------
-- ** エフェクト等 ** --
base1 = entryEffect( spep_1 + 0, SP_07, 0x80, -1, 0, 0, 0); --並ぶ ef_001r
setEffMoveKey( spep_1 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_1 + 228 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base1, -1.0, 1.0);
setEffScaleKey( spep_1 + 228 -4, base1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base1, 0);
setEffRotateKey( spep_1 + 228 -4, base1, 0);
setEffAlphaKey( spep_1 + 0, base1, 255);
setEffAlphaKey( spep_1 + 228 -5, base1, 255);
setEffAlphaKey( spep_1 + 228 -4, base1, 0);


-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 98, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 1, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 2, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 3, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 4, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 5, 1, 716, -122 , 0 );
setMoveKey( spep_1 + 6, 1, 716, -122 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 715.9, -122 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 715.8, -122 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 715.5, -122 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 715, -122 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 714.1, -122 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 712.8, -122 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 710.9, -122 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 708.1, -122 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 704.3, -122 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 699, -122 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 692, -122 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 682.9, -122 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 671.2, -122 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 656.3, -122 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 637.8, -122 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 614.9, -122 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 587, -122 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 553.2, -122 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 512.7, -122 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 464.5, -122 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 416.3, -122 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 375.8, -122 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 342, -122 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 314.1, -122 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 291.2, -122 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 272.7, -122 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 257.8, -122 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 246.1, -122 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 237, -122 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 230, -122 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 224.7, -122 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 220.9, -122 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 218.1, -122 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 216.2, -122 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 214.9, -122 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 214, -122 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 213.5, -122 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 213.2, -122 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 213.1, -122 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 213, -122 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 213, -122 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1 + 1, 1, 1, 1 );
setScaleKey( spep_1 + 2, 1, 1, 1 );
setScaleKey( spep_1 + 3, 1, 1, 1 );
setScaleKey( spep_1 + 4, 1, 1, 1 );
setScaleKey( spep_1 + 5, 1, 1, 1 );
setScaleKey( spep_1 + 6, 1, 1, 1 );
setScaleKey( spep_1 -3 + 98, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 98, 1, 0 );

setAlphaKey( spep_1 + 0, 1, 255 );
setAlphaKey( spep_1 -3 + 98, 1, 255 );


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 144;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--画面遷移
SE001 = playSeVer2( spep_1 + 28, 1232, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_1 + 28, SE001, 43 );
SE002 = playSeVer2( spep_1 + 30, 44, "", 0, 0, 0, -1); setPitch( spep_1 + 30, SE002, -300 ); setTimeStretch( SE002, 0.8, 30, 4 );

--顔カットイン
SE003 = playSeVer2( spep_1 + 140 -12, 1018, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_1 + 162, 1233, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 174, 1006, "", 0, 0, 0, -1); setPitch( spep_1 + 174, SE005, -200 ); setTimeStretch( SE005, 0.87, 30, 4 );


-- ** 次の準備 ** --
spep_c = spep_1 + 228 -4;

-------------------------------------------------
--カードカットイン(94F)
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
SE_CUTIN = playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 94;


-------------------------------------------------
-- 構える
-------------------------------------------------
-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); --構える ef_002
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 116 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, -1.0, 1.0);
setEffScaleKey( spep_2 + 116 -4, base2, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 140 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 116 -5, base2, 255);
setEffAlphaKey( spep_2 + 116 -4, base2, 0);


-- ** 音 ** --
--力む
SE007 = playSeVer2( spep_2 + 0, 1271, "",spep_2 + 102, 26, 14, -1); setSeVolumeByWorkId( spep_2 + 0, SE007, 120 ); setStartTimeMs( SE007,  500 );
SE008 = playSeVer2( spep_2 + 2, 1356, "",spep_2 + 102, 0, 14, -1);
SE009 = playSeVer2( spep_2 + 2, 1330, "", spep_2 + 102, 0, 4, -1);

--振りかぶって前に手を出す
SE010 = playSeVer2( spep_2 + 64, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 84, 1233, "", spep_2 + 102, 0, 4, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
spep_3 = spep_2 + 116 -4;


-------------------------------------------------
-- ベジータ放ち
-------------------------------------------------
-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_08, 0x100, -1, 0, 0, 0); --ベジータ放ち ef_003r
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 280 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, -1.0, 1.0);
setEffScaleKey( spep_3 + 280 -4, base3_f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 280 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 280 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 280 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_09, 0x80, -1, 0, 0, 0); --ベジータ放ち　背景 ef_003_back_r
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 280 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, -1.0, 1.0);
setEffScaleKey( spep_3 + 280 -4, base3_b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 280 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 280 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 280 -4, base3_b, 0);

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 164, 1, 1 );
setDisp( spep_3 -4 + 280, 1, 0 );

changeAnime( spep_3 -3 + 170, 1, 104 );

setMoveKey( spep_3 -3 + 170, 1, 1938.6, -1635.7 , 0 );
setMoveKey( spep_3 -3 + 171, 1, 1938.6, -1635.7 , 0 );
setMoveKey( spep_3 -3 + 172, 1, 1855.9, -1566.9 , 0 );
setMoveKey( spep_3 -3 + 173, 1, 1855.9, -1566.9 , 0 );
setMoveKey( spep_3 -3 + 174, 1, 1719.6, -1453.4 , 0 );
setMoveKey( spep_3 -3 + 175, 1, 1719.6, -1453.4 , 0 );
setMoveKey( spep_3 -3 + 176, 1, 1516.1, -1284 , 0 );
setMoveKey( spep_3 -3 + 177, 1, 1516.1, -1284 , 0 );
setMoveKey( spep_3 -3 + 178, 1, 1232.2, -1047.7 , 0 );
setMoveKey( spep_3 -3 + 179, 1, 1232.2, -1047.7 , 0 );
setMoveKey( spep_3 -3 + 180, 1, 879.5, -754.2 , 0 );
setMoveKey( spep_3 -3 + 181, 1, 879.5, -754.2 , 0 );
setMoveKey( spep_3 -3 + 182, 1, 595.6, -517.9 , 0 );
setMoveKey( spep_3 -3 + 183, 1, 595.6, -517.9 , 0 );
setMoveKey( spep_3 -3 + 184, 1, 392.1, -348.6 , 0 );
setMoveKey( spep_3 -3 + 185, 1, 392.1, -348.6 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 255.7, -235.1 , 0 );
setMoveKey( spep_3 -3 + 187, 1, 255.7, -235.1 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 173, -166.2 , 0 );
setMoveKey( spep_3 -3 + 189, 1, 173, -166.2 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 130.5, -130.9 , 0 );
setMoveKey( spep_3 -3 + 191, 1, 130.5, -130.9 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 114.9, -117.8 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 112.7, -116 , 0 );
setMoveKey( spep_3 -3 + 204, 1, 112.7, -116 , 0 );
setMoveKey( spep_3 -3 + 206, 1, 131.7, -96 , 0 );
setMoveKey( spep_3 -3 + 208, 1, 142.9, -136.7 , 0 );
setMoveKey( spep_3 -3 + 210, 1, 92.8, -153.9 , 0 );
setMoveKey( spep_3 -3 + 212, 1, 93.6, -113.4 , 0 );
setMoveKey( spep_3 -3 + 214, 1, 100.4, -137.4 , 0 );
setMoveKey( spep_3 -3 + 216, 1, 117.9, -115.5 , 0 );
setMoveKey( spep_3 -3 + 218, 1, 95.7, -123.5 , 0 );
setMoveKey( spep_3 -3 + 220, 1, 84.6, -83.1 , 0 );
setMoveKey( spep_3 -3 + 222, 1, 94.1, -91.9 , 0 );
setMoveKey( spep_3 -3 + 224, 1, 132, -34.2 , 0 );
setMoveKey( spep_3 -3 + 226, 1, 89, -61 , 0 );
setMoveKey( spep_3 -3 + 228, 1, 88.4, -74.5 , 0 );
setMoveKey( spep_3 -3 + 230, 1, 104.1, -73.2 , 0 );
setMoveKey( spep_3 -3 + 232, 1, 77.7, -44.3 , 0 );
setMoveKey( spep_3 -3 + 234, 1, 90.4, -70.8 , 0 );
setMoveKey( spep_3 -3 + 236, 1, 123.6, -40.6 , 0 );
setMoveKey( spep_3 -3 + 238, 1, 123.6, -73.4 , 0 );
setMoveKey( spep_3 -3 + 240, 1, 93.6, -103.7 , 0 );
setMoveKey( spep_3 -3 + 242, 1, 101.1, -37.1 , 0 );
setMoveKey( spep_3 -3 + 244, 1, 98.1, -107.7 , 0 );
setMoveKey( spep_3 -3 + 246, 1, 133.1, -107.9 , 0 );
setMoveKey( spep_3 -3 + 248, 1, 81.8, -151.2 , 0 );
setMoveKey( spep_3 -3 + 250, 1, 96.9, -80.2 , 0 );
setMoveKey( spep_3 -3 + 252, 1, 143.8, -158.1 , 0 );
setMoveKey( spep_3 -3 + 254, 1, 125.4, -145 , 0 );
setMoveKey( spep_3 -3 + 256, 1, 129, -120.5 , 0 );
setMoveKey( spep_3 -3 + 258, 1, 84.4, -149.7 , 0 );
setMoveKey( spep_3 -3 + 260, 1, 92, -69 , 0 );
setMoveKey( spep_3 -3 + 262, 1, 95.5, -110.8 , 0 );
setMoveKey( spep_3 -3 + 264, 1, 116.2, -98.5 , 0 );
setMoveKey( spep_3 -3 + 266, 1, 120.4, -127.2 , 0 );
setMoveKey( spep_3 -3 + 268, 1, 112.7, -116 , 0 );
setMoveKey( spep_3 -3 + 270, 1, 93.7, -122 , 0 );
setMoveKey( spep_3 -3 + 272, 1, 95.7, -110 , 0 );
setMoveKey( spep_3 -4 + 280, 1, 95.7, -110 , 0 );

setScaleKey( spep_3 -3 + 170, 1, 1.17, 1.17 );
setScaleKey( spep_3 -4 + 280, 1, 1.17, 1.17 );

setRotateKey( spep_3 -3 + 170, 1, 0 );
setRotateKey( spep_3 -4 + 280, 1, 0 );

setAlphaKey( spep_3 + 0, 1, 255 );
setAlphaKey( spep_3 -3 + 280, 1, 255 );


-- ** 音 ** --
--気弾連続発射
SE012 = playSeVer2( spep_3 + 0 -20, 1021, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 0 -20, 1016, "", spep_3 + 22 -20, 0, 8, 0.6); setSeVolumeByWorkId( spep_3 + 0 -20, SE013, 124 );
SE014 = playSeVer2( spep_3 + 0 -20, 1358, "", spep_3 + 22 -20, 0, 8, 0.6); setSeVolumeByWorkId( spep_3 + 0 -20, SE014, 87 );
SE015 = playSeVer2( spep_3 + 12 -20, 1016, "", spep_3 + 30 -20, 0, 8, 0.6); setSeVolumeByWorkId( spep_3 + 12 -20, SE015, 123 );
SE016 = playSeVer2( spep_3 + 12 -20, 1358, "", spep_3 + 30 -20, 0, 8, 0.6); setSeVolumeByWorkId( spep_3 + 12 -20, SE016, 82 );
SE017 = playSeVer2( spep_3 + 22 -20, 1016, "", spep_3 + 40 -20, 0, 8, 0.6);
SE018 = playSeVer2( spep_3 + 22 -20, 1358, "", spep_3 + 40 -20, 0, 10, 0.6);
SE019 = playSeVer2( spep_3 + 30 -20, 1016, "", spep_3 + 52 -20, 0, 8, 0.6);
SE020 = playSeVer2( spep_3 + 30 -20, 1358, "", spep_3 + 52 -20, 0, 10, 0.6);
SE021 = playSeVer2( spep_3 + 40 -20, 1016, "", spep_3 + 62 -20, 0, 8, 0.6);
SE022 = playSeVer2( spep_3 + 40 -20, 1358, "", spep_3 + 62 -20, 0, 10, 0.6);
SE023 = playSeVer2( spep_3 + 52 -20, 1016, "", spep_3 + 74 -20, 0, 8, 0.6);
SE024 = playSeVer2( spep_3 + 52 -20, 1358, "", spep_3 + 74 -20, 0, 10, 0.6);
SE025 = playSeVer2( spep_3 + 62 -20, 1016, "", 0, 0, 0, 0.6);
SE026 = playSeVer2( spep_3 + 62 -20, 1358, "", spep_3 + 90 -20, 0, 12, 0.6);
SE027 = playSeVer2( spep_3 + 74 -20, 1016, "", 0, 0, 0, 0.6);
SE028 = playSeVer2( spep_3 + 74 -20, 1358, "", spep_3 + 100 -20, 0, 12, 0.6);

--気弾空に飛んでいく
SE029 = playSeVer2( spep_3 + 80 -20, 1304, "",spep_3 + 144 -20, 0, 14, -1);
setSeVolumeByWorkId( spep_3 + 80 -20, SE029, 116 );
setPitch( spep_3 + 80 -20, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );

--気弾連続発射
SE030 = playSeVer2( spep_3 + 84 -20, 1016, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_3 + 84 -20, 1358, "", spep_3 + 108 -20, 0, 10, -1);

--気弾空に飛んでいく
SE032 = playSeVer2( spep_3 + 142 -20, 1212, "", 0, 8, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 142 -20, SE032, 81 );
setStartTimeMs( SE032,  850 );

--気弾連続発射
SE033 = playSeVer2( spep_3 + 94 -20, 1016, "", 0, 0, 0, 0.6);
SE034 = playSeVer2( spep_3 + 94 -20, 1358, "", spep_3 + 118 -20, 0, 8, 0.6);
SE035 = playSeVer2( spep_3 + 106 -20, 1016, "", 0, 0, 0, 0.6);
SE036 = playSeVer2( spep_3 + 106 -20, 1358, "", spep_3 + 134 -20, 0, 10, 0.6);
SE037 = playSeVer2( spep_3 + 120 -20, 1016, "", 0, 0, 0, 0.6);
SE038 = playSeVer2( spep_3 + 120 -20, 1358, "", spep_3 + 150 -20, 0, 10, 0.6);
SE039 = playSeVer2( spep_3 + 130 -20, 1016, "", 0, 0, 0, 0.6);
SE040 = playSeVer2( spep_3 + 130 -20, 1358, "", spep_3 + 156 -20, 0, 10, 0.6);

--気弾空に飛んでいく
SE041 = playSeVer2( spep_3 + 140 -20, 1021, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_3 + 140 -20, SE041, 83 );
SE042 = playSeVer2( spep_3 + 142 -20, 1202, "", 0, 0, 0, 0.6); setSeVolumeByWorkId( spep_3 + 142 -20, SE042, 146 );
SE043 = playSeVer2( spep_3 + 142 -20, 1304, "", spep_3 + 246 -20, 0, 16, -1);

--気弾降り注ぐ
SE044 = playSeVer2( spep_3 + 222 -20, 1017, "", spep_3 + 248 -20, 0, 8, -1);
SE045 = playSeVer2( spep_3 + 232 -20, 1017, "", spep_3 + 256 -20, 0, 8, -1);
SE046 = playSeVer2( spep_3 + 242 -20, 1014, "", spep_3 + 276 -20, 0, 16, -1);
SE047 = playSeVer2( spep_3 + 250 -20, 1024, "", 0, 0, 0, 0.5);
SE048 = playSeVer2( spep_3 + 260 -20, 1159, "", 0, 0, 0, 0.5); setSeVolumeByWorkId( spep_3 + 260 -20, SE048, 84 );


-- ** 次の準備 ** --
spep_4 = spep_3 + 280 -4;

-------------------------------------------------
-- ベジータ放ち拡大
-------------------------------------------------
-- ** エフェクト等 ** --
base4 = entryEffect( spep_4 + 0, SP_10, 0x80, -1, 0, 0, 0); --ベジータ放ち拡大 ef_004r
setEffMoveKey( spep_4 + 0, base4, 0, 0 , 0);
setEffMoveKey( spep_4 + 120 -4, base4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4, -1.0, 1.0);
setEffScaleKey( spep_4 + 120 -4, base4, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4, 0);
setEffRotateKey( spep_4 + 120 -4, base4, 0);
setEffAlphaKey( spep_4 + 0, base4, 255);
setEffAlphaKey( spep_4 + 120 -5, base4, 255);
setEffAlphaKey( spep_4 + 120 -4, base4, 0);


-- ** 音 ** --
--連続気弾２
SE049 = playSeVer2( spep_4 + 0, 1016, "", spep_4 + 18, 0, 8, -1);
SE050 = playSeVer2( spep_4 + 0, 1358, "", spep_4 + 18, 0, 10, -1);
SE051 = playSeVer2( spep_4 + 8, 1016, "", spep_4 + 28, 0, 8, -1);
SE052 = playSeVer2( spep_4 + 8, 1358, "", spep_4 + 28, 0, 8, -1);
SE053 = playSeVer2( spep_4 + 18, 1016, "", spep_4 + 38, 0, 8, -1);
SE054 = playSeVer2( spep_4 + 18, 1358, "", spep_4 + 38, 0, 8, -1);
SE055 = playSeVer2( spep_4 + 28, 1016, "", spep_4 + 48, 0, 8, -1);
SE056 = playSeVer2( spep_4 + 28, 1358, "", spep_4 + 48, 0, 8, -1);
SE057 = playSeVer2( spep_4 + 38, 1016, "", spep_4 + 56, 0, 8, -1);
SE058 = playSeVer2( spep_4 + 38, 1358, "", spep_4 + 56, 0, 8, -1);
SE059 = playSeVer2( spep_4 + 48, 1016, "", spep_4 + 66, 0, 6, -1);
SE060 = playSeVer2( spep_4 + 48, 1358, "", spep_4 + 66, 0, 6, -1);
SE061 = playSeVer2( spep_4 + 56, 1016, "", spep_4 + 78, 0, 8, -1);
SE062 = playSeVer2( spep_4 + 56, 1358, "", spep_4 + 78, 0, 12, -1);
SE063 = playSeVer2( spep_4 + 66, 1016, "", spep_4 + 88, 0, 6, -1);
SE064 = playSeVer2( spep_4 + 66, 1358, "", spep_4 + 88, 0, 6, -1);
SE065 = playSeVer2( spep_4 + 78, 1016, "", spep_4 + 100, 0, 6, -1);
SE066 = playSeVer2( spep_4 + 78, 1358, "", spep_4 + 100, 0, 6, -1);


-- ** 次の準備 ** --
spep_5 = spep_4 + 120 -4;

-------------------------------------------------
-- 爆発
-------------------------------------------------
-- ** エフェクト等 ** --
base5 = entryEffect( spep_5 + 0, SP_11, 0x80, -1, 0, 0, 0); --爆発 ef_006r
setEffMoveKey( spep_5 + 0, base5, 0, 0 , 0);
setEffMoveKey( spep_5 + 280 -4, base5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5, -1.0, 1.0);
setEffScaleKey( spep_5 + 280 -4, base5, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5, 0);
setEffRotateKey( spep_5 + 280 -4, base5, 0);
setEffAlphaKey( spep_5 + 0, base5, 255);
setEffAlphaKey( spep_5 + 280 -5, base5, 255);
setEffAlphaKey( spep_5 + 280 -4, base5, 0);


-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 22, 1, 1 );
setDisp( spep_5 -3 + 56, 1, 0 );
setDisp( spep_5 -3 + 64, 1, 1 );
setDisp( spep_5 -3 + 68, 1, 0 );

changeAnime( spep_5 -3 + 22, 1, 107 );

setBlendColor( spep_5 -3 + 64, 1, 0, 1.0, 1.0, 0.4, 0.7 );
setBlendColor( spep_5 -3 + 66, 1, 0, 1.0, 1.0, 0.6, 0.2 );
setBlendColor( spep_5 -3 + 68, 1, 0, 0, 0, 0, 0 );

setMoveKey( spep_5 -3 + 22, 1, 24.3, -494.9 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 24.3, -489.3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 24.3, -483.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 24.4, -478.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 24.4, -472.4 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 24.4, -466.8 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 24.5, -461.2 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 24.5, -455.6 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 24.5, -449.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 24.5, -444.3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 24.5, -438.7 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 24.6, -433 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 24.4, -412.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 24.1, -391.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 23.8, -371.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 23.6, -350.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 23.4, -330.1 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 23.2, -309.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 23.2, -259.4, 0 );
setMoveKey( spep_5 -3 + 65, 1, 23.2, -259.4, 0 );
setMoveKey( spep_5 -3 + 66, 1, 23.2, -299.4 , 0 );
setMoveKey( spep_5 -3 + 67, 1, 23.2, -299.4 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 23.2, -299.4 , 0 );

setScaleKey( spep_5 -3 + 0, 1, 0, 0 );
setScaleKey( spep_5 -3 + 19, 1, 0, 0 );
setScaleKey( spep_5 -3 + 21, 1, 0.5 *0.5, 0.5 *0.5 );
setScaleKey( spep_5 -3 + 24, 1, 0.5 *0.5, 0.5 *0.5 );
setScaleKey( spep_5 -3 + 26, 1, 0.51 *0.5, 0.51 *0.5 );
setScaleKey( spep_5 -3 + 36, 1, 0.51 *0.5, 0.51 *0.5 );
setScaleKey( spep_5 -3 + 38, 1, 0.52 *0.5, 0.52 *0.5 );
setScaleKey( spep_5 -3 + 44, 1, 0.52 *0.5, 0.52 *0.5 );
setScaleKey( spep_5 -3 + 46, 1, 0.54 *0.5, 0.54 *0.5 );
setScaleKey( spep_5 -3 + 48, 1, 0.55 *0.5, 0.55 *0.5 );
setScaleKey( spep_5 -3 + 50, 1, 0.57 *0.5, 0.57 *0.5 );
setScaleKey( spep_5 -3 + 52, 1, 0.59 *0.5, 0.59 *0.5 );
setScaleKey( spep_5 -3 + 54, 1, 0.61 *0.5, 0.61 *0.5 );
setScaleKey( spep_5 -3 + 56, 1, 0.62 *0.5, 0.62 *0.5 );
setScaleKey( spep_5 -3 + 64, 1, 0.61 *0.5, 0.61 *0.5 );
setScaleKey( spep_5 -3 + 68, 1, 0.62 *0.5, 0.62 *0.5 );

setRotateKey( spep_5 -3 + 0, 1, 34.4 );
setRotateKey( spep_5 -3 + 19, 1, 34.4 );
setRotateKey( spep_5 -3 + 21, 1, 34.5 );
setRotateKey( spep_5 -3 + 44, 1, 34.5 );
setRotateKey( spep_5 -3 + 46, 1, 34.4 );
setRotateKey( spep_5 -3 + 68, 1, 34.4 );

setAlphaKey( spep_5 -3 + 22, 1, 0 );
setAlphaKey( spep_5 -3 + 56, 1, 120 );
setAlphaKey( spep_5 -3 + 68, 1, 120 );


-- ** 音 ** --
--気弾上空に飛んでいく
SE067 = playSeVer2( spep_5 + 20 -20 -6, 1168, "",spep_5 + 110 -20, 10, 26, -1);
setSeVolumeByWorkId( spep_5 + 20 -20, SE067, 71 );
setStartTimeMs( SE067,  367 );

--連続気弾２
SE068 = playSeVer2( spep_5 + 0 -20 -6, 1016, "", 0, 0, 0, 0.6);
SE069 = playSeVer2( spep_5 + 0 -20 -6, 1358, "", spep_5 + 26 -20, 0, 10, 0.6);
SE070 = playSeVer2( spep_5 + 12 -20 -6, 1016, "", 0, 0, 0, 0.6);
SE071 = playSeVer2( spep_5 + 12 -20 -6, 1358, "", spep_5 + 34 -20, 0, 6, 0.6);

--気弾上空に飛んでいく
SE072 = playSeVer2( spep_5 + 26 -20 -6, 1304, "", spep_5 + 110 -20, 0, 24, -1);
SE073 = playSeVer2( spep_5 + 26 -20 -6, 1202, "", spep_5 + 110 -20, 0, 22, -1);
setSeVolumeByWorkId( spep_5 + 26 -20, SE073, 214 );

--気弾降り注ぐ
SE074 = playSeVer2( spep_5 + 84 -20, 1217, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_5 + 84 -20, SE074, 79 );
SE075 = playSeVer2( spep_5 + 88 -20, 1017, "", spep_5 + 126 -20, 0, 16, -1);
SE076 = playSeVer2( spep_5 + 88 -20, 1067, "", spep_5 + 132 -20, 0, 22, -1); setSeVolumeByWorkId( spep_5 + 88 -20, SE076, 92 );
SE077 = playSeVer2( spep_5 + 98 -20, 1017, "", spep_5 + 136 -20, 0, 16, -1); setSeVolumeByWorkId( spep_5 + 98 -20, SE077, 88 );
SE078 = playSeVer2( spep_5 + 110 -20, 1017, "", spep_5 + 148 -20, 0, 18, -1); setSeVolumeByWorkId( spep_5 + 110 -20, SE078, 90 );
SE079 = playSeVer2( spep_5 + 120 -20, 1017, "", spep_5 + 158 -20, 0, 18, -1); setSeVolumeByWorkId( spep_5 + 120 -20, SE079, 88 );

--連続爆発
SE080 = playSeVer2( spep_5 + 128 -20, 1023, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_5 + 128 -20, SE080, 81 );
SE081 = playSeVer2( spep_5 + 140 -20, 1188, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_5 + 140 -20, SE081, 89 );
SE082 = playSeVer2( spep_5 + 154 -20, 1159, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_5 + 154 -20, SE082, 72 );
SE083 = playSeVer2( spep_5 + 164 -20, 1024, "", 0, 0, 0, -1); setSeVolumeByWorkId( spep_5 + 164 -20, SE083, 85 );


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 140);
endPhase( spep_5 + 280 -8);

end
