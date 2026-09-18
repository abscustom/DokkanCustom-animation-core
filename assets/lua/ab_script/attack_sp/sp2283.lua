--1022380:超サイヤ人ゴッド孫悟空&超サイヤ人ゴッドベジータ_神烈炎舞
--sp_effect_b1_00186
--sp2283

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
SP_01= 158912;-- キャラ登場
SP_02= 158914;-- 構え→敵に向かってダッシュ
SP_03= 158916;-- 殴ってから追撃エネルギー弾掌底
SP_04= 158917;-- 殴ってから追撃エネルギー弾掌底
SP_05= 158920;-- 悟空追撃
SP_06= 158921;-- 悟空追撃
SP_07= 158924;-- 悟空ラッシュから背負い投げ
SP_08= 158925;-- 悟空ラッシュから背負い投げ

--エフェクト(てき)
SP_01x= 158913;-- キャラ登場 (敵)
SP_02x= 158915;-- 構え→敵に向かってダッシュ	(敵)
SP_03x= 158918;-- 殴ってから追撃エネルギー弾掌底	(敵)
SP_04x= 158919;-- 殴ってから追撃エネルギー弾掌底	(敵)
SP_05x= 158922;-- 悟空追撃 (敵)
SP_06x= 158923;-- 悟空追撃 (敵)
SP_07x= 158926;-- 悟空ラッシュから背負い投げ (敵)
SP_08x= 158927;-- 悟空ラッシュから背負い投げ (敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);


setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--キャラ登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 108, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 108, appearance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 108, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 106, appearance, 255 );
setEffAlphaKey( spep_0 + 107, appearance, 255 );
setEffAlphaKey( spep_0 + 108, appearance, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--風ふく
SE001 = playSeVer2( spep_0 + 0, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );
setPitch( spep_0 + 0, SE001, -700 );
setTimeStretch( SE001, 0.53, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1188, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
setStartTimeMs( SE002,  233 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --白　背景

--次の準備
spep_1=spep_0+108;
------------------------------------------------------
--構え→敵に向かってダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, dash, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, dash, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 90, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 90, dash, 255 );

--SE
--構える
SE004 = playSeVer2( spep_1 + 8, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE004, 78 );
setPitch( spep_1 + 8, SE004, -500 );
setTimeStretch( SE004, 0.67, 30, 4 );
SE005 = playSeVer2( spep_1 + 16, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE005, 89 );
setPitch( spep_1 + 16, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );

--ズームアウト
SE006 = playSeVer2( spep_1 + 22, 44, "",spep_1 + 76, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 22, SE006, 79 );

--ベジータ突っ込んでくる
SE007 = playSeVer2( spep_1 + 38, 1182, "",spep_1 + 96, 0, 6, -1);
SE008 = playSeVer2( spep_1 + 38, 9, "",spep_1 + 96, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 38, SE008, 85 );
SE009 = playSeVer2( spep_1 + 42, 1277, "",spep_1 + 96, 0, 6, -1);
SE010 = playSeVer2( spep_1 + 42, 1019, "",spep_1 + 96, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 42, SE010, 70 );

--白フェード
entryFade( spep_1 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 110, 0, 0, 0, 0, 255 );  --白　背景

--次の準備
spep_2=spep_1+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN =playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN =playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94; 
------------------------------------------------------
--殴ってから追撃エネルギー弾掌底
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 268, punch_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 268, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 268, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 266, punch_f, 255 );
setEffAlphaKey( spep_3 + 267, punch_f, 255 );
setEffAlphaKey( spep_3 + 268, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 268, punch_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 268, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 268, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 266, punch_b, 255 );
setEffAlphaKey( spep_3 + 267, punch_b, 255 );
setEffAlphaKey( spep_3 + 268, punch_b, 0 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 32, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 48.1, 143.2 , 0 );
setMoveKey( spep_3-3 + 4, 1, 50.2, 139.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 58.3, 143.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 58.3, 143.2 , 0 );
setMoveKey( spep_3-3 + 10, 1, 66.7, 140.3 , 0 );
setMoveKey( spep_3-3 + 12, 1, 65.8, 134.3 , 0 );
setMoveKey( spep_3-3 + 14, 1, 65.5, 135.5 , 0 );
setMoveKey( spep_3-3 + 16, 1, 67.5, 134.5 , 0 );
setMoveKey( spep_3-3 + 18, 1, 67.5, 132.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 68.1, 132.6 , 0 );
setMoveKey( spep_3-3 + 22, 1, 59.4, 134.6 , 0 );
setMoveKey( spep_3-3 + 24, 1, 62.6, 137.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 68.8, 134.7 , 0 );
setMoveKey( spep_3-3 + 28, 1, 61.8, 143.7 , 0 );
setMoveKey( spep_3-3 + 30, 1, 69.1, 140.8 , 0 );
setMoveKey( spep_3-1 + 32, 1, 62.1, 140.8 , 0 );

setScaleKey( spep_3 + 0, 1, 0.18, 0.18 );
setScaleKey( spep_3-3 + 4, 1, 0.2, 0.2 );
setScaleKey( spep_3-3 + 6, 1, 0.21, 0.21 );
setScaleKey( spep_3-3 + 8, 1, 0.21, 0.21 );
setScaleKey( spep_3-3 + 10, 1, 0.28, 0.28 );
setScaleKey( spep_3-3 + 12, 1, 0.29, 0.29 );
setScaleKey( spep_3-3 + 14, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 18, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 20, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 22, 1, 0.54, 0.54 );
setScaleKey( spep_3-3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 26, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 28, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 30, 1, 0.66, 0.66 );
setScaleKey( spep_3-1 + 32, 1, 0.66, 0.66 );

setRotateKey( spep_3 + 0, 1, 16.7 );
setRotateKey( spep_3-1 + 32, 1, 16.7 );

--SE
--ベジータ向かっていく
SE013 = playSeVer2( spep_3 + 2, 1183, "",spep_3 + 96, 6, 18, -1);
setSeVolumeByWorkId( spep_3 + 2, SE013, 108 );
setStartTimeMs( SE013,  333 );
SE014 = playSeVer2( spep_3 + 0, 1278, "",spep_3 + 96, 0, 18, -1);
SE015 = playSeVer2( spep_3 + 0, 1314, "",spep_3 + 96, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 0, SE015, 86 );
SE016 = playSeVer2( spep_3 + 10, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE016, 41 );
setPitch( spep_3 + 10, SE016, -400 );
setTimeStretch( SE016, 0.92, 30, 4 );

--振りかぶる
SE017 = playSeVer2( spep_3 + 32, 1116, "",spep_3 + 88, 0, 30, -1);
setSeVolumeByWorkId( spep_3 + 32, SE017, 132 );
setPitch( spep_3 + 32, SE017, -600 );
setTimeStretch( SE017, 0.6, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 270, 0, 0, 0, 0, 255 );  --白　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 54; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--敵の動き
setDisp( spep_3-3 + 86, 1, 1 );
setDisp( spep_3-1 + 158, 1, 0 );

changeAnime( spep_3-3 + 86, 1, 107 );
changeAnime( spep_3-3 + 90, 1, 106 );
changeAnime( spep_3-3 + 122, 1, 5 );

setMoveKey( spep_3-3 + 86, 1, -196.5, -51.7 , 0 );--107
setMoveKey( spep_3-3 + 89, 1, -196.5, -31.7 , 0 );
setMoveKey( spep_3-3 + 90, 1, 57.2, -191.2 , 0 );--106
setMoveKey( spep_3-3 + 91, 1, 57.2, -191.2 , 0 );
setMoveKey( spep_3-3 + 92, 1, 64.3, 30.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 64.3, 30.5 , 0 );
setMoveKey( spep_3-3 + 96, 1, 114.3, 23 , 0 );
setMoveKey( spep_3-3 + 98, 1, 115, 121.7 , 0 );
setMoveKey( spep_3-3 + 100, 1, 115, 121.7 , 0 );
setMoveKey( spep_3-3 + 102, 1, 180.9, 95 , 0 );
setMoveKey( spep_3-3 + 104, 1, 180.3, 63.2 , 0 );
setMoveKey( spep_3-3 + 106, 1, 180.3, 63.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, 180.6, 49 , 0 );
setMoveKey( spep_3-3 + 110, 1, 180.6, 49 , 0 );
setMoveKey( spep_3-3 + 112, 1, 213.1, 28 , 0 );
setMoveKey( spep_3-3 + 114, 1, 245.4, 7.2 , 0 );
setMoveKey( spep_3-3 + 116, 1, 245.4, 7.2 , 0 );
setMoveKey( spep_3-3 + 118, 1, 308.9, -18.4 , 0 );
setMoveKey( spep_3-3 + 121, 1, 308.9, -18.4 , 0 );
setMoveKey( spep_3-3 + 122, 1, 321.2, -55.5 , 0 );--5
setMoveKey( spep_3-3 + 124, 1, 321.2, -55.5 , 0 );
setMoveKey( spep_3-3 + 126, 1, 320.2, -61.2 , 0 );
setMoveKey( spep_3-3 + 128, 1, 329.5, -66.3 , 0 );
setMoveKey( spep_3-3 + 130, 1, 329.5, -66.3 , 0 );
setMoveKey( spep_3-3 + 132, 1, 331.4, -69.2 , 0 );
setMoveKey( spep_3-3 + 134, 1, 334.2, -73.8 , 0 );
setMoveKey( spep_3-3 + 136, 1, 334.6, -74.9 , 0 );
setMoveKey( spep_3-3 + 138, 1, 335.1, -76.1 , 0 );
setMoveKey( spep_3-3 + 140, 1, 335.6, -77.2 , 0 );
setMoveKey( spep_3-3 + 142, 1, 335.9, -78.3 , 0 );
setMoveKey( spep_3-3 + 144, 1, 336.5, -79.4 , 0 );
setMoveKey( spep_3-3 + 146, 1, 336.9, -80.6 , 0 );
setMoveKey( spep_3-3 + 148, 1, 337.4, -81.7 , 0 );
setMoveKey( spep_3-3 + 150, 1, 337.8, -82.8 , 0 );
setMoveKey( spep_3-3 + 152, 1, 338.2, -84 , 0 );
setMoveKey( spep_3-3 + 154, 1, 338.7, -85.1 , 0 );
setMoveKey( spep_3-3 + 156, 1, 339.2, -86.2 , 0 );
setMoveKey( spep_3-1 + 158, 1, 339.6, -87.3 , 0 );

setScaleKey( spep_3-3 + 86, 1, 4.98, 4.98 );--107
setScaleKey( spep_3-3 + 89, 1, 4.99, 4.99 );
setScaleKey( spep_3-3 + 90, 1, 4.3, 4.3 );--106
setScaleKey( spep_3-3 + 91, 1, 4.3, 4.3 );
setScaleKey( spep_3-3 + 92, 1, 2.6, 2.6 );
setScaleKey( spep_3-3 + 94, 1, 2.6, 2.6 );
setScaleKey( spep_3-3 + 96, 1, 2, 2 );
setScaleKey( spep_3-3 + 98, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 100, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 102, 1, 0.9, 0.9 );
setScaleKey( spep_3-3 + 104, 1, 0.89, 0.89 );
setScaleKey( spep_3-3 + 106, 1, 0.89, 0.89 );
setScaleKey( spep_3-3 + 108, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 110, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 112, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 114, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 116, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 118, 1, 0.45, 0.45 );
setScaleKey( spep_3-3 + 121, 1, 0.45, 0.45 );
setScaleKey( spep_3-3 + 122, 1, 0.5, 0.5 );--5
setScaleKey( spep_3-3 + 124, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 126, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 128, 1, 0.3, 0.3 );
setScaleKey( spep_3-3 + 130, 1, 0.3, 0.3 );
setScaleKey( spep_3-3 + 132, 1, 0.29, 0.29 );
setScaleKey( spep_3-3 + 134, 1, 0.27, 0.27 );
setScaleKey( spep_3-3 + 136, 1, 0.26, 0.26 );
setScaleKey( spep_3-3 + 138, 1, 0.24, 0.24 );
setScaleKey( spep_3-3 + 140, 1, 0.23, 0.23 );
setScaleKey( spep_3-3 + 142, 1, 0.21, 0.21 );
setScaleKey( spep_3-3 + 144, 1, 0.2, 0.2 );
setScaleKey( spep_3-3 + 146, 1, 0.18, 0.18 );
setScaleKey( spep_3-3 + 148, 1, 0.17, 0.17 );
setScaleKey( spep_3-3 + 150, 1, 0.15, 0.15 );
setScaleKey( spep_3-3 + 152, 1, 0.14, 0.14 );
setScaleKey( spep_3-3 + 154, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 156, 1, 0.11, 0.11 );
setScaleKey( spep_3-1 + 158, 1, 0.09, 0.09 );

setRotateKey( spep_3-3 + 86, 1, -45.9 );--107
setRotateKey( spep_3-3 + 89, 1, -45.9 );
setRotateKey( spep_3-3 + 90, 1, -47.2 );--106
setRotateKey( spep_3-3 + 91, 1, -47.2 );
setRotateKey( spep_3-3 + 92, 1, -35.2 );
setRotateKey( spep_3-3 + 94, 1, -35.2 );
setRotateKey( spep_3-3 + 96, 1, -27.2 );
setRotateKey( spep_3-3 + 98, 1, 6.5 );
setRotateKey( spep_3-3 + 100, 1, 6.5 );
setRotateKey( spep_3-3 + 102, 1, 8.5 );
setRotateKey( spep_3-3 + 104, 1, 10.8 );
setRotateKey( spep_3-3 + 106, 1, 10.8 );
setRotateKey( spep_3-3 + 108, 1, 36.6 );
setRotateKey( spep_3-3 + 110, 1, 36.6 );
setRotateKey( spep_3-3 + 112, 1, 42.4 );
setRotateKey( spep_3-3 + 114, 1, 48.2 );
setRotateKey( spep_3-3 + 116, 1, 48.2 );
setRotateKey( spep_3-3 + 118, 1, 102.8 );
setRotateKey( spep_3-3 + 121, 1, 102.8 );
setRotateKey( spep_3-3 + 122, 1, 141.4 );--5
setRotateKey( spep_3-3 + 124, 1, 141.4 );
setRotateKey( spep_3-3 + 126, 1, 206.7 );
setRotateKey( spep_3-3 + 128, 1, 119.2 );
setRotateKey( spep_3-1 + 158, 1, 119.2 );

--敵の動き
setDisp( spep_3-3 + 200, 1, 1 );
setDisp( spep_3-1 + 228, 1, 0 );

changeAnime( spep_3-3 + 200, 1, 107 );

setMoveKey( spep_3-3 + 200, 1, 525.7, -75.4 , 0 );
setMoveKey( spep_3-3 + 202, 1, 166.3, -73.7 , 0 );
setMoveKey( spep_3-3 + 204, 1, -193.6, -73.7 , 0 );
setMoveKey( spep_3-3 + 206, 1, -203.6, -73.7 , 0 );
setMoveKey( spep_3-3 + 208, 1, -233.6, -73.7 , 0 );
setMoveKey( spep_3-3 + 209, 1, -233.6, -73.7 , 0 );
setMoveKey( spep_3-3 + 210, 1, 181.1, -76.1 , 0 );
setMoveKey( spep_3-3 + 212, 1, 164.2, -75.9 , 0 );
setMoveKey( spep_3-3 + 214, 1, 186.1, -76 , 0 );
setMoveKey( spep_3-3 + 216, 1, 366.1, -76 , 0 );
setMoveKey( spep_3-3 + 223, 1, 366.1, -76 , 0 );
setMoveKey( spep_3-3 + 224, 1, 289.8, -15.1 , 0 );
setMoveKey( spep_3-3 + 227, 1, 289.8, -15.1 , 0 );
setMoveKey( spep_3-3 + 228, 1, 149.8, -45.1 , 0 );
setMoveKey( spep_3-1 + 228, 1, 149.8, -45.1 , 0 );

setScaleKey( spep_3-3 + 200, 1, 3.76, 3.76 );
setScaleKey( spep_3-3 + 201, 1, 3.76, 3.76 );
setScaleKey( spep_3-3 + 202, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 209, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 210, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 223, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 224, 1, 3.49, 3.49 );
setScaleKey( spep_3-1 + 228, 1, 3.49, 3.49 );

setRotateKey( spep_3-3 + 200, 1, -75.9 );
setRotateKey( spep_3-3 + 201, 1, -75.9 );
setRotateKey( spep_3-3 + 202, 1, -75.8 );
setRotateKey( spep_3-3 + 209, 1, -75.8 );
setRotateKey( spep_3-3 + 210, 1, -69.2 );
setRotateKey( spep_3-3 + 223, 1, -69.2 );
setRotateKey( spep_3-3 + 224, 1, -63.9 );
setRotateKey( spep_3-1 + 228, 1, -63.9 );

--SE
--ベジータ殴る
SE018 = playSeVer2( spep_3 + 68, 1189, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 74, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 74, SE019, 78 );
SE020 = playSeVer2( spep_3 + 74, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 74, SE020, 76 );
SE021 = playSeVer2( spep_3 + 76, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 76, SE021, 79 );

--敵飛んでいく
SE022 = playSeVer2( spep_3 + 88, 1183, "",spep_3 + 192, 0, 58, -1);

--ベジータ向かっていく
SE023 = playSeVer2( spep_3 + 126, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 126, 1025, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 130, 1277, "", 0, 0, 0, -1);

--気弾溜め
SE011 = playSeVer2( spep_3 + 160, 1210, "",spep_3 + 250, 10, 24, -1);
setSeVolumeByWorkId( spep_3 + 160, SE011, 52 );
setStartTimeMs( SE011,  4133 );
setPitch( spep_3 + 160, SE011, 300 );
setTimeStretch( SE011, 1.2, 30, 4 );
SE026 = playSeVer2( spep_3 + 160, 1154, "",spep_3 + 244, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 160, SE026, 108 );
SE027 = playSeVer2( spep_3 + 160, 1306, "",spep_3 + 244, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 160, SE027, 52 );
SE028 = playSeVer2( spep_3 + 160, 1282, "",spep_3 + 244, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 160, SE028, 41 );

--気弾爆発
SE029 = playSeVer2( spep_3 + 222, 1023, "", spep_3 + 268 +40, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 222, SE029, 88 );
SE030 = playSeVer2( spep_3 + 222, 1011, "", spep_3 + 268 +40, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 222, SE030, 87 );
SE031 = playSeVer2( spep_3 + 222, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 222, SE031, 91 );

-- ** 次の準備 ** --
spep_4= spep_3 + 268;
------------------------------------------------------
--悟空追撃
------------------------------------------------------
-- ** エフェクト等 ** --
pursuit_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, pursuit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 242, pursuit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, pursuit_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 242, pursuit_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, pursuit_f, 0 );
setEffRotateKey( spep_4 + 242, pursuit_f, 0 );
setEffAlphaKey( spep_4 + 0, pursuit_f, 255 );
setEffAlphaKey( spep_4 + 240, pursuit_f, 255 );
setEffAlphaKey( spep_4 + 241, pursuit_f, 255 );
setEffAlphaKey( spep_4 + 242, pursuit_f, 0 );

-- ** エフェクト等 ** --
pursuit_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, pursuit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 242, pursuit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, pursuit_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 242, pursuit_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, pursuit_b, 0 );
setEffRotateKey( spep_4 + 242, pursuit_b, 0 );
setEffAlphaKey( spep_4 + 0, pursuit_b, 255 );
setEffAlphaKey( spep_4 + 240, pursuit_b, 255 );
setEffAlphaKey( spep_4 + 241, pursuit_b, 255 );
setEffAlphaKey( spep_4 + 242, pursuit_b, 0 );

--敵の動き
setDisp( spep_4-3 + 144, 1, 1 );
setDisp( spep_4-2 + 244, 1, 0 );

changeAnime( spep_4-3 + 144, 1, 106 );
changeAnime( spep_4-3 + 202, 1, 107 );

setMoveKey( spep_4-3 + 144, 1, 82.2, 66 , 0 );--106
setMoveKey( spep_4-3 + 146, 1, 91.2, 61.5 , 0 );
setMoveKey( spep_4-3 + 148, 1, 100.2, 57 , 0 );
setMoveKey( spep_4-3 + 150, 1, 125.2, 43 , 0 );
setMoveKey( spep_4-3 + 152, 1, 125.3, 42 , 0 );
setMoveKey( spep_4-3 + 154, 1, 125.5, 41 , 0 );
setMoveKey( spep_4-3 + 156, 1, 125.7, 40 , 0 );
setMoveKey( spep_4-3 + 158, 1, 125.8, 39 , 0 );
setMoveKey( spep_4-3 + 160, 1, 126, 38 , 0 );
setMoveKey( spep_4-3 + 162, 1, 126.2, 37 , 0 );
setMoveKey( spep_4-3 + 164, 1, 128.2, 32 , 0 );
setMoveKey( spep_4-3 + 166, 1, 129.2, 33 , 0 );
setMoveKey( spep_4-3 + 168, 1, 129.2, 31 , 0 );
setMoveKey( spep_4-3 + 170, 1, 130.2, 31 , 0 );
setMoveKey( spep_4-3 + 172, 1, 131.2, 30 , 0 );
setMoveKey( spep_4-3 + 174, 1, 132.2, 29 , 0 );
setMoveKey( spep_4-3 + 176, 1, 132.2, 28 , 0 );
setMoveKey( spep_4-3 + 178, 1, 125.2, 29 , 0 );
setMoveKey( spep_4-3 + 180, 1, 114.2, 31 , 0 );
setMoveKey( spep_4-3 + 182, 1, 102.2, 32 , 0 );
setMoveKey( spep_4-3 + 184, 1, 83.2, 32 , 0 );
setMoveKey( spep_4-3 + 186, 1, 65.2, 32 , 0 );
setMoveKey( spep_4-3 + 188, 1, 46.2, 32 , 0 );
setMoveKey( spep_4-3 + 190, 1, 29.2, 32 , 0 );
setMoveKey( spep_4-3 + 192, 1, 12.2, 32 , 0 );
setMoveKey( spep_4-3 + 194, 1, -0.8, 32 , 0 );
setMoveKey( spep_4-3 + 196, 1, -13.8, 32 , 0 );
setMoveKey( spep_4-3 + 198, 1, -21.8, 32 , 0 );
setMoveKey( spep_4-3 + 200, 1, -26.8, 32 , 0 );
setMoveKey( spep_4-3 + 201, 1, -26.8, 32 , 0 );
setMoveKey( spep_4-3 + 202, 1, -263.9, -31.3 , 0 );--107
setMoveKey( spep_4-3 + 204, 1, -262.7, -27.9 , 0 );
setMoveKey( spep_4-3 + 206, 1, -261.5, -24.4 , 0 );
setMoveKey( spep_4-3 + 208, 1, -260.3, -21 , 0 );
setMoveKey( spep_4-3 + 210, 1, -259.1, -17.5 , 0 );
setMoveKey( spep_4-3 + 212, 1, -257.7, -11.4 , 0 );
setMoveKey( spep_4-3 + 214, 1, -256.3, -5.3 , 0 );
setMoveKey( spep_4-3 + 216, 1, -254.9, 0.9 , 0 );
setMoveKey( spep_4-3 + 218, 1, -253.5, 7 , 0 );
setMoveKey( spep_4-3 + 220, 1, -251.8, 14.8 , 0 );
setMoveKey( spep_4-3 + 222, 1, -250.2, 22.7 , 0 );
setMoveKey( spep_4-3 + 224, 1, -248.5, 30.4 , 0 );
setMoveKey( spep_4-3 + 226, 1, -246.8, 38.2 , 0 );
setMoveKey( spep_4-3 + 228, 1, -245.1, 46 , 0 );
setMoveKey( spep_4-3 + 230, 1, -243.5, 53.8 , 0 );
setMoveKey( spep_4-3 + 232, 1, -242.8, 57.1 , 0 );
setMoveKey( spep_4-3 + 234, 1, -242.1, 60.4 , 0 );
setMoveKey( spep_4-3 + 236, 1, -241.5, 63.8 , 0 );
setMoveKey( spep_4-3 + 238, 1, -240.8, 67.1 , 0 );
setMoveKey( spep_4-3 + 240, 1, -240.2, 70.4 , 0 );
setMoveKey( spep_4-3 + 242, 1, -239.5, 73.7 , 0 );
setMoveKey( spep_4-2 + 244, 1, -238.9, 77.1 , 0 );

setScaleKey( spep_4-3 + 144, 1, 0.5, 0.5 );--106
setScaleKey( spep_4-3 + 201, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 202, 1, 0.23, 0.23 );--107
setScaleKey( spep_4-3 + 204, 1, 0.24, 0.24 );
setScaleKey( spep_4-3 + 206, 1, 0.25, 0.25 );
setScaleKey( spep_4-3 + 208, 1, 0.26, 0.26 );
setScaleKey( spep_4-3 + 210, 1, 0.27, 0.27 );
setScaleKey( spep_4-3 + 212, 1, 0.29, 0.29 );
setScaleKey( spep_4-3 + 214, 1, 0.32, 0.32 );
setScaleKey( spep_4-3 + 216, 1, 0.34, 0.34 );
setScaleKey( spep_4-3 + 218, 1, 0.36, 0.36 );
setScaleKey( spep_4-3 + 220, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 222, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 224, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 226, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 228, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 230, 1, 0.49, 0.49 );
setScaleKey( spep_4-3 + 232, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 234, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 236, 1, 0.51, 0.51 );
setScaleKey( spep_4-3 + 238, 1, 0.52, 0.52 );
setScaleKey( spep_4-3 + 240, 1, 0.53, 0.53 );
setScaleKey( spep_4-3 + 242, 1, 0.54, 0.54 );
setScaleKey( spep_4-2 + 244, 1, 0.55, 0.55 );

setRotateKey( spep_4-3 + 144, 1, 0 );--106
setRotateKey( spep_4-3 + 148, 1, 0 );
setRotateKey( spep_4-3 + 150, 1, 17.3 );
setRotateKey( spep_4-3 + 201, 1, 17.3 );
setRotateKey( spep_4-3 + 202, 1, 28.3 );--107
setRotateKey( spep_4-3 + 203, 1, 28.3 );
setRotateKey( spep_4-3 + 204, 1, 28.5 );
setRotateKey( spep_4-2 + 244, 1, 28.5 );

--SE
--ベジータ後ろ飛び
SE032 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_4 + 0, 1117, "", 0, 0, 0, -1);

--後退りで地面削れる
SE034 = playSeVer2( spep_4 + 40, 1044, "",spep_4 + 102, 32, 14, -1);
setSeVolumeByWorkId( spep_4 + 40, SE034, 151 );
SE035 = playSeVer2( spep_4 + 44, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 44, SE035, 398 );
SE036 = playSeVer2( spep_4 + 52, 1197, "",spep_4 + 64, 0, 6, -1);
setSeVolumeByWorkId( spep_4 + 52, SE036, 61 );
setPitch( spep_4 + 52, SE036, -400 );
setTimeStretch( SE036, 0.73, 30, 4 );
SE037 = playSeVer2( spep_4 + 58, 1197, "",spep_4 + 70, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 58, SE037, 68 );
setPitch( spep_4 + 58, SE037, -400 );
setTimeStretch( SE037, 0.73, 30, 4 );
SE038 = playSeVer2( spep_4 + 62, 1197, "",spep_4 + 72, 0, 6, -1);
setSeVolumeByWorkId( spep_4 + 62, SE038, 81 );
setPitch( spep_4 + 62, SE038, -400 );
setTimeStretch( SE038, 0.73, 30, 4 );

--悟空飛んでいく
SE039 = playSeVer2( spep_4 + 62, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 62, SE039, 110 );
SE040 = playSeVer2( spep_4 + 64, 1277, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_4 + 64, 1072, "", 0, 0, 0, -1);

--後退りで地面削れる
SE042 = playSeVer2( spep_4 + 68, 1197, "",spep_4 + 80, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 68, SE042, 88 );
setPitch( spep_4 + 68, SE042, -400 );
setTimeStretch( SE042, 0.73, 30, 4 );
SE043 = playSeVer2( spep_4 + 74, 1197, "",spep_4 + 86, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 74, SE043, 97 );
setPitch( spep_4 + 74, SE043, -400 );
setTimeStretch( SE043, 0.73, 30, 4 );
SE045 = playSeVer2( spep_4 + 78, 1197, "",spep_4 + 90, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 78, SE045, 104 );
setPitch( spep_4 + 78, SE045, -400 );
setTimeStretch( SE045, 0.73, 30, 4 );
SE046 = playSeVer2( spep_4 + 82, 1197, "",spep_4 + 92, 0, 6, -1);
setSeVolumeByWorkId( spep_4 + 82, SE046, 101 );
setPitch( spep_4 + 82, SE046, -400 );
setTimeStretch( SE046, 0.73, 30, 4 );

--悟空向かっていく
SE044 = playSeVer2( spep_4 + 106, 1183, "",spep_4 + 162, 6, 10, -1);
setStartTimeMs( SE044,  317 );
SE047 = playSeVer2( spep_4 + 106, 1167, "",spep_4 + 162, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 106, SE047, 53 );

--悟空パンチ
SE048 = playSeVer2( spep_4 + 146, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 146, SE048, 85 );
SE049 = playSeVer2( spep_4 + 162, 1188, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_4 + 162, SE049, 69 );
setStartTimeMs( SE049,  267 );
SE050 = playSeVer2( spep_4 + 148, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 148, SE050, 73 );
SE051 = playSeVer2( spep_4 + 148, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 148, SE051, 73 );
SE052 = playSeVer2( spep_4 + 150, 1061, "", 0, 0, 0, -1);
setPitch( spep_4 + 150, SE052, 500 );
setTimeStretch( SE052, 1.33, 30, 4 );
SE053 = playSeVer2( spep_4 + 158, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 158, SE053, 127 );
SE054 = playSeVer2( spep_4 + 164, 1258, "",spep_4 + 262, 22, 64, -1);
setSeVolumeByWorkId( spep_4 + 164, SE054, 49 );
setStartTimeMs( SE054,  100 );

--悟空着地
SE055 = playSeVer2( spep_4 + 200, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 200, SE055, 363 );
setPitch( spep_4 + 200, SE055, -400 );
setTimeStretch( SE055, 0.73, 30, 4 );
SE056 = playSeVer2( spep_4 + 208, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 208, SE056, 320 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 244, 0, 0, 0, 0, 255 );  --白　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 242; 
------------------------------------------------------
--悟空ラッシュから背負い投げ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 360, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 360, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 360, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 360, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 360, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.1, 1.0 );
setEffScaleKey( spep_5 + 360, finish_b, 1.1, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 360, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 360, finish_b, 255 );

--敵の動き
setDisp( spep_5-3 + 36, 1, 1 );
setDisp( spep_5-1 + 172, 1, 0 );

changeAnime( spep_5-3 + 36, 1, 106 );
changeAnime( spep_5-3 + 52, 1, 108 );
changeAnime( spep_5-3 + 70, 1, 106 );
changeAnime( spep_5-3 + 84, 1, 108 );
changeAnime( spep_5-3 + 110, 1, 106 );
changeAnime( spep_5-3 + 138, 1, 6 );

setMoveKey( spep_5-3 + 36, 1, 88.4, 33.2 , 0 );--106
setMoveKey( spep_5-3 + 38, 1, 97.4, 27.2 , 0 );
setMoveKey( spep_5-3 + 40, 1, 107.4, 25.2 , 0 );
setMoveKey( spep_5-3 + 42, 1, 113.4, 15.2 , 0 );
setMoveKey( spep_5-3 + 44, 1, 119.4, 12.2 , 0 );
setMoveKey( spep_5-3 + 46, 1, 130.4, 4.2 , 0 );
setMoveKey( spep_5-3 + 48, 1, 133.4, 3.2 , 0 );
setMoveKey( spep_5-3 + 50, 1, 141.4, -1.8 , 0 );
setMoveKey( spep_5-3 + 51, 1, 141.4, -1.8 , 0 );
setMoveKey( spep_5-3 + 52, 1, 12.4, 3.2 , 0 );--108
setMoveKey( spep_5-3 + 54, 1, 2.4, 3.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 2.4, 3.2 , 0 );
setMoveKey( spep_5-3 + 60, 1, -7.6, -4.8 , 0 );
setMoveKey( spep_5-3 + 62, 1, -17.6, 5.2 , 0 );
setMoveKey( spep_5-3 + 64, 1, -17.6, 5.2 , 0 );
setMoveKey( spep_5-3 + 66, 1, -19.6, 3.2 , 0 );
setMoveKey( spep_5-3 + 68, 1, -24.6, -0.8 , 0 );
setMoveKey( spep_5-3 + 69, 1, -24.6, -0.8 , 0 );
setMoveKey( spep_5-3 + 70, 1, -24.6, -0.8 , 0 );--106
setMoveKey( spep_5-3 + 74, 1, -24.6, -0.8 , 0 );
setMoveKey( spep_5-3 + 76, 1, -29.6, -0.8 , 0 );
setMoveKey( spep_5-3 + 78, 1, -28.4, -0.8 , 0 );
setMoveKey( spep_5-3 + 80, 1, -32.1, 4.2 , 0 );
setMoveKey( spep_5-3 + 82, 1, -34.4, 4.7 , 0 );
setMoveKey( spep_5-3 + 83, 1, -34.4, 4.7 , 0 );
setMoveKey( spep_5-3 + 84, 1, -74.6, 83.2 , 0 );--108
setMoveKey( spep_5-3 + 86, 1, -39.6, 48.2 , 0 );
setMoveKey( spep_5-3 + 88, 1, -83.6, 92.2 , 0 );
setMoveKey( spep_5-3 + 90, 1, -76.6, 72.2 , 0 );
setMoveKey( spep_5-3 + 92, 1, -90.6, 96.2 , 0 );
setMoveKey( spep_5-3 + 94, 1, -93.6, 95.2 , 0 );
setMoveKey( spep_5-3 + 96, 1, -101.6, 90.2 , 0 );
setMoveKey( spep_5-3 + 98, 1, -104, 85.2 , 0 );
setMoveKey( spep_5-3 + 100, 1, -108.6, 82.2 , 0 );
setMoveKey( spep_5-3 + 102, 1, -119.6, 83.2 , 0 );
setMoveKey( spep_5-3 + 104, 1, -120.6, 84.2 , 0 );
setMoveKey( spep_5-3 + 106, 1, -126, 80.2 , 0 );
setMoveKey( spep_5-3 + 108, 1, -130.6, 74.2 , 0 );
setMoveKey( spep_5-3 + 109, 1, -130.6, 74.2 , 0 );
setMoveKey( spep_5-3 + 110, 1, -77.6, 59.2 , 0 );--106
setMoveKey( spep_5-3 + 112, 1, -67.6, 69.2 , 0 );
setMoveKey( spep_5-3 + 114, 1, -67.6, 49.2 , 0 );
setMoveKey( spep_5-3 + 116, 1, -67.6, 29.2 , 0 );
setMoveKey( spep_5-3 + 118, 1, -80.6, 33.5 , 0 );
setMoveKey( spep_5-3 + 120, 1, -93.6, 37.9 , 0 );
setMoveKey( spep_5-3 + 121, 1, -93.6, 37.9 , 0 );

a=30;
b=-20;

setMoveKey( spep_5-3 + 122, 1, -106.6+a, 42.2+b , 0 );
setMoveKey( spep_5-3 + 124, 1, -116.6+a, 51.2+b , 0 );
setMoveKey( spep_5-3 + 126, 1, -124.6+a, 58.2+b , 0 );
setMoveKey( spep_5-3 + 128, 1, -137.6+a, 66.6+b , 0 );
setMoveKey( spep_5-3 + 130, 1, -147.6+a, 67.2+b , 0 );
setMoveKey( spep_5-3 + 132, 1, -127.6+a, 87.2+b , 0 );
setMoveKey( spep_5-3 + 134, 1, -95.6+a, 61.2+b , 0 );
setMoveKey( spep_5-3 + 136, 1, -85.6+a, 64.2+b , 0 );
setMoveKey( spep_5-3 + 137, 1, -85.6+a, 64.2+b , 0 );

c=140;
d=-10;

setMoveKey( spep_5-3 + 138, 1, -178+c, 581.9+d , 0 );--6
setMoveKey( spep_5-3 + 140, 1, -170.6+c, 589.5+d , 0 );
setMoveKey( spep_5-3 + 142, 1, -175.7+c, 585.2+d , 0 );
setMoveKey( spep_5-3 + 144, 1, -191.7+c, 594.5+d , 0 );
setMoveKey( spep_5-3 + 146, 1, -190.7+c, 602.5+d , 0 );
setMoveKey( spep_5-3 + 148, 1, -188.7+c, 602.5+d , 0 );
setMoveKey( spep_5-3 + 150, 1, -189.8+c, 631.6+d , 0 );
setMoveKey( spep_5-3 + 152, 1, -189.8+c, 631.6+d , 0 );
setMoveKey( spep_5-3 + 154, 1, -176.4+c, 628.8+d , 0 );
setMoveKey( spep_5-3 + 156, 1, -168.9+c, 736.9+d , 0 );
setMoveKey( spep_5-3 + 158, 1, -144.6+c, 797.7+d , 0 );
setMoveKey( spep_5-3 + 164, 1, -144.6+c, 797.7+d , 0 );
setMoveKey( spep_5-3 + 166, 1, -171.7+c, 1050.2+d , 0 );
setMoveKey( spep_5-3 + 168, 1, -167.7+c, 1049.2+d , 0 );
setMoveKey( spep_5-3 + 170, 1, -164.7+c, 1045.2+d , 0 );
setMoveKey( spep_5-3 + 172, 1, 340.7+c, 1414.2+d , 0 );
setMoveKey( spep_5-1 + 172, 1, 340.7+c, 1414.2+d , 0 );

setScaleKey( spep_5-3 + 36, 1, 1.8, 1.8 );--106
setScaleKey( spep_5-3 + 51, 1, 1.8, 1.8 );
setScaleKey( spep_5-3 + 52, 1, 1.8, 1.8 );--108
setScaleKey( spep_5-3 + 69, 1, 1.8, 1.8 );
setScaleKey( spep_5-3 + 70, 1, 1.8, 1.8 );--106
setScaleKey( spep_5-3 + 83, 1, 1.8, 1.8 );
setScaleKey( spep_5-3 + 84, 1, 2.16, 2.16 );--108
setScaleKey( spep_5-3 + 109, 1, 2.16, 2.16 );
setScaleKey( spep_5-3 + 110, 1, 1.62, 1.62 );--106
setScaleKey( spep_5-3 + 118, 1, 1.62, 1.62 );
setScaleKey( spep_5-3 + 119, 1, 1.62, 1.62 );
setScaleKey( spep_5-3 + 120, 1, 1.53, 1.53 );
setScaleKey( spep_5-3 + 137, 1, 1.53, 1.53 );
setScaleKey( spep_5-3 + 138, 1, 6, 6 );--6
setScaleKey( spep_5-3 + 144, 1, 6, 6 );
setScaleKey( spep_5-3 + 150, 1, 6.4, 6.4 );
setScaleKey( spep_5-3 + 152, 1, 6.4, 6.4 );
setScaleKey( spep_5-3 + 154, 1, 6.7, 6.7 );
setScaleKey( spep_5-3 + 156, 1, 8, 8 );
setScaleKey( spep_5-3 + 158, 1, 9, 9 );
setScaleKey( spep_5-3 + 164, 1, 9, 9 );
setScaleKey( spep_5-3 + 166, 1, 12, 12 );
setScaleKey( spep_5-3 + 171, 1, 12, 12 );
setScaleKey( spep_5-3 + 172, 1, 14, 14 );
setScaleKey( spep_5-1 + 172, 1, 14, 14 );

setRotateKey( spep_5-3 + 36, 1, 86.2 );--106
setRotateKey( spep_5-3 + 38, 1, 87 );
setRotateKey( spep_5-3 + 40, 1, 89.2 );
setRotateKey( spep_5-3 + 42, 1, 90.8 );
setRotateKey( spep_5-3 + 44, 1, 90.1 );
setRotateKey( spep_5-3 + 46, 1, 89.4 );
setRotateKey( spep_5-3 + 48, 1, 88.8 );
setRotateKey( spep_5-3 + 50, 1, 96.3 );
setRotateKey( spep_5-3 + 51, 1, 96.3 );
setRotateKey( spep_5-3 + 52, 1, 157 );--108
setRotateKey( spep_5-3 + 54, 1, 163.4 );
setRotateKey( spep_5-3 + 56, 1, 166.7 );
setRotateKey( spep_5-3 + 58, 1, 169.2 );
setRotateKey( spep_5-3 + 60, 1, 172.5 );
setRotateKey( spep_5-3 + 62, 1, 175.2 );
setRotateKey( spep_5-3 + 64, 1, 178.2 );
setRotateKey( spep_5-3 + 66, 1, 180.8 );
setRotateKey( spep_5-3 + 68, 1, 181.7 );
setRotateKey( spep_5-3 + 69, 1, 181.7 );
setRotateKey( spep_5-3 + 70, 1, 127.1 );--106
setRotateKey( spep_5-3 + 72, 1, 129.1 );
setRotateKey( spep_5-3 + 74, 1, 133.2 );
setRotateKey( spep_5-3 + 76, 1, 132.9 );
setRotateKey( spep_5-3 + 78, 1, 134.4 );
setRotateKey( spep_5-3 + 80, 1, 140.2 );
setRotateKey( spep_5-3 + 82, 1, 140.4 );
setRotateKey( spep_5-3 + 83, 1, 140.4 );
setRotateKey( spep_5-3 + 84, 1, 215.4 );--108
setRotateKey( spep_5-3 + 86, 1, 217.3 );
setRotateKey( spep_5-3 + 88, 1, 217.3 );
setRotateKey( spep_5-3 + 90, 1, 218.6 );
setRotateKey( spep_5-3 + 92, 1, 219.8 );
setRotateKey( spep_5-3 + 94, 1, 218.9 );
setRotateKey( spep_5-3 + 96, 1, 217.6 );
setRotateKey( spep_5-3 + 98, 1, 216.7 );
setRotateKey( spep_5-3 + 100, 1, 217.2 );
setRotateKey( spep_5-3 + 102, 1, 220.7 );
setRotateKey( spep_5-3 + 104, 1, 220.1 );
setRotateKey( spep_5-3 + 106, 1, 219.9 );
setRotateKey( spep_5-3 + 108, 1, 220.4 );
setRotateKey( spep_5-3 + 109, 1, 220.4 );--106
setRotateKey( spep_5-3 + 110, 1, 207.6 );
setRotateKey( spep_5-3 + 112, 1, 205.4 );
setRotateKey( spep_5-3 + 114, 1, 209.8 );
setRotateKey( spep_5-3 + 116, 1, 213.5 );
setRotateKey( spep_5-3 + 118, 1, 224 );
setRotateKey( spep_5-3 + 120, 1, 230.8 );
setRotateKey( spep_5-3 + 122, 1, 237.6 );
setRotateKey( spep_5-3 + 124, 1, 235.4 );
setRotateKey( spep_5-3 + 126, 1, 237.6 );
setRotateKey( spep_5-3 + 128, 1, 241.4 );
setRotateKey( spep_5-3 + 130, 1, 242.1 );
setRotateKey( spep_5-3 + 132, 1, 252.4 );
setRotateKey( spep_5-3 + 134, 1, 249.5 );
setRotateKey( spep_5-3 + 136, 1, 252.7 );
setRotateKey( spep_5-3 + 137, 1, 252.7 );

d=5;

setRotateKey( spep_5-3 + 138, 1, 1.6+d );--6
setRotateKey( spep_5-3 + 140, 1, 1.7+d );
setRotateKey( spep_5-3 + 142, 1, 0.4+d );
setRotateKey( spep_5-3 + 144, 1, -1.6+d );
setRotateKey( spep_5-3 + 150, 1, 1.7+d );
setRotateKey( spep_5-3 + 170, 1, 1.7+d );
setRotateKey( spep_5-3 + 171, 1, 1.7+d );
setRotateKey( spep_5-3 + 172, 1, 27.4+d );
setRotateKey( spep_5-1 + 172, 1, 27.4+d );

--敵の動き
setDisp( spep_5-3 + 194, 1, 1 );
setDisp( spep_5-1 + 284, 1, 0 );

changeAnime( spep_5-3 + 194, 1, 106 );
changeAnime( spep_5-3 + 222, 1, 107 );

setMoveKey( spep_5-3 + 194, 1, -63.4, 22.5 , 0 );--106
setMoveKey( spep_5-3 + 196, 1, -61, 27 , 0 );
setMoveKey( spep_5-3 + 198, 1, -54.9, 27.4 , 0 );
setMoveKey( spep_5-3 + 200, 1, -48.5, 22.2 , 0 );
setMoveKey( spep_5-3 + 202, 1, -45.7, 16.1 , 0 );
setMoveKey( spep_5-3 + 204, 1, -39.1, 14.7 , 0 );
setMoveKey( spep_5-3 + 206, 1, -23.8, 13.5 , 0 );
setMoveKey( spep_5-3 + 208, 1, -19.1, 12 , 0 );
setMoveKey( spep_5-3 + 210, 1, -10.7, 13.2 , 0 );
setMoveKey( spep_5-3 + 212, 1, 0.1, 15.1 , 0 );
setMoveKey( spep_5-3 + 214, 1, 12.1, 16.1 , 0 );
setMoveKey( spep_5-3 + 216, 1, 20.5, 14.7 , 0 );
setMoveKey( spep_5-3 + 217, 1, 20.5, 14.7 , 0 );
setMoveKey( spep_5-3 + 218, 1, -25, 42.1 , 0 );
setMoveKey( spep_5-3 + 220, 1, -29, 42.1 , 0 );
setMoveKey( spep_5-3 + 221, 1, -29, 42.1 , 0 );
setMoveKey( spep_5-3 + 222, 1, -23.2, -22.7 , 0 );--107
setMoveKey( spep_5-3 + 223, 1, -23.2, -22.7 , 0 );
setMoveKey( spep_5-3 + 224, 1, 36.9, -46.9 , 0 );
setMoveKey( spep_5-3 + 226, 1, 112, -141 , 0 );
setMoveKey( spep_5-3 + 228, 1, 112, -121 , 0 );
setMoveKey( spep_5-3 + 230, 1, 114, -24 , 0 );
setMoveKey( spep_5-3 + 232, 1, 113, -97 , 0 );
setMoveKey( spep_5-3 + 234, 1, 93, -57 , 0 );
setMoveKey( spep_5-3 + 236, 1, 103, -109 , 0 );
setMoveKey( spep_5-3 + 238, 1, 113, -77 , 0 );
setMoveKey( spep_5-3 + 240, 1, 93, -65 , 0 );
setMoveKey( spep_5-3 + 242, 1, 114, -97 , 0 );
setMoveKey( spep_5-3 + 244, 1, 92, -87 , 0 );
setMoveKey( spep_5-3 + 246, 1, 105, -57 , 0 );
setMoveKey( spep_5-3 + 248, 1, 112, -97 , 0 );
setMoveKey( spep_5-3 + 250, 1, 92, -53 , 0 );
setMoveKey( spep_5-3 + 252, 1, 92, -88 , 0 );
setMoveKey( spep_5-3 + 254, 1, 111, -60 , 0 );
setMoveKey( spep_5-3 + 256, 1, 106, -67 , 0 );
setMoveKey( spep_5-3 + 258, 1, 116, -88 , 0 );
setMoveKey( spep_5-3 + 260, 1, 117, -65 , 0 );
setMoveKey( spep_5-3 + 262, 1, 115.5, -66 , 0 );
setMoveKey( spep_5-3 + 264, 1, 114, -67 , 0 );
setMoveKey( spep_5-3 + 266, 1, 116, -79 , 0 );
setMoveKey( spep_5-3 + 268, 1, 112, -62 , 0 );
setMoveKey( spep_5-3 + 270, 1, 114, -77 , 0 );
setMoveKey( spep_5-3 + 272, 1, 112, -63 , 0 );
setMoveKey( spep_5-3 + 274, 1, 111, -75 , 0 );
setMoveKey( spep_5-3 + 276, 1, 112, -66 , 0 );
setMoveKey( spep_5-3 + 278, 1, 110, -78 , 0 );
setMoveKey( spep_5-3 + 280, 1, 112, -67 , 0 );
setMoveKey( spep_5-3 + 282, 1, 111, -78 , 0 );
setMoveKey( spep_5-1 + 284, 1, 111, -70 , 0 );

setScaleKey( spep_5-3 + 194, 1, 0.89, 0.89 );--106
setScaleKey( spep_5-3 + 196, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 217, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 218, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 221, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 222, 1, 0.89, 0.89 );--107
setScaleKey( spep_5-3 + 223, 1, 0.89, 0.89 );
setScaleKey( spep_5-3 + 224, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 226, 1, 1.07, 1.07 );
setScaleKey( spep_5-1 + 284, 1, 1.07, 1.07 );

setRotateKey( spep_5-3 + 194, 1, -133.9 );--106
setRotateKey( spep_5-3 + 196, 1, -132.3 );
setRotateKey( spep_5-3 + 198, 1, -123.8 );
setRotateKey( spep_5-3 + 200, 1, -113.6 );
setRotateKey( spep_5-3 + 202, 1, -107.8 );
setRotateKey( spep_5-3 + 204, 1, -106.6 );
setRotateKey( spep_5-3 + 206, 1, -99.3 );
setRotateKey( spep_5-3 + 208, 1, -97 );
setRotateKey( spep_5-3 + 210, 1, -92.1 );
setRotateKey( spep_5-3 + 212, 1, -85.6 );
setRotateKey( spep_5-3 + 214, 1, -78.7 );
setRotateKey( spep_5-3 + 216, 1, -74.5 );
setRotateKey( spep_5-3 + 217, 1, -74.5 );
setRotateKey( spep_5-3 + 218, 1, -44.6 );
setRotateKey( spep_5-3 + 219, 1, -44.6 );
setRotateKey( spep_5-3 + 220, 1, -44.7 );
setRotateKey( spep_5-3 + 221, 1, -44.7 );
setRotateKey( spep_5-3 + 222, 1, -60.9 );--107
setRotateKey( spep_5-3 + 223, 1, -60.9 );
setRotateKey( spep_5-3 + 224, 1, -37.2 );
setRotateKey( spep_5-3 + 225, 1, -37.2 );
setRotateKey( spep_5-3 + 226, 1, 5.3 );
setRotateKey( spep_5-1 + 284, 1, 5.3 );

--SE
--振りかぶる
SE057 = playSeVer2( spep_5 + 0, 1003, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_5 + 2, 1004, "", 0, 0, 0, -1);
setPitch( spep_5 + 2, SE058, -400 );
setTimeStretch( SE058, 0.73, 30, 4 );

--連続パンチ
SE059 = playSeVer2( spep_5 + 44, 1189, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_5 + 50, 1359, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_5 + 50, 1187, "",spep_5 + 84, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 50, SE061, 88 );
setPitch( spep_5 + 50, SE061, -300 );
setTimeStretch( SE061, 0.8, 30, 4 );
SE062 = playSeVer2( spep_5 + 78, 1189, "", 0, 0, 0, -1);
setPitch( spep_5 + 78, SE062, 200 );
setTimeStretch( SE062, 1.13, 30, 4 );
SE064 = playSeVer2( spep_5 + 82, 1359, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_5 + 82, 1187, "",spep_5 + 118, 0, 22, -1);
setSeVolumeByWorkId( spep_5 + 82, SE065, 84 );
setPitch( spep_5 + 82, SE065, -100 );
setTimeStretch( SE065, 0.93, 30, 4 );
SE066 = playSeVer2( spep_5 + 108, 1359, "",spep_5 + 138, 0, 12, -1);
SE067 = playSeVer2( spep_5 + 108, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 108, SE067, 89 );
SE068 = playSeVer2( spep_5 + 108, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 108, SE068, 87 );

--敵つかむ
SE069 = playSeVer2( spep_5 + 122, 1153, "",spep_5 + 146, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 122, SE069, 63 );
SE070 = playSeVer2( spep_5 + 124, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 124, SE070, 79 );

--背負い投げ
SE063 = playSeVer2( spep_5 + 136, 1278, "",spep_5 + 252, 16, 44, -1);
setSeVolumeByWorkId( spep_5 + 136, SE063, 72 );
setStartTimeMs( SE063,  1117 );
SE071 = playSeVer2( spep_5 + 138, 1116, "",spep_5 + 174, 0, 16, -1);
setPitch( spep_5 + 138, SE071, -400 );
setTimeStretch( SE071, 0.73, 30, 4 );
SE072 = playSeVer2( spep_5 + 138, 1072, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_5 + 174, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE073,  83 );
SE074 = playSeVer2( spep_5 + 174, 1004, "", 0, 0, 0, -1);

--地面激突
SE075 = playSeVer2( spep_5 + 214, 1189, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_5 + 222, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 222, SE076, 87 );
SE077 = playSeVer2( spep_5 + 226, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 226, SE077, 89 );

--地面割れる
SE078 = playSeVer2( spep_5 + 304, 1033, "", 0, 0, 0, -1);
SE079 = playSeVer2( spep_5 + 324, 1068, "", 0, 0, 0, -1);
SE080 = playSeVer2( spep_5 + 324, 1061, "", 0, 0, 0, -1);
setPitch( spep_5 + 324, SE080, -500 );
setTimeStretch( SE080, 0.67, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 362, 0, 0, 0, 0, 255 );  --白　背景

--終わり
dealDamage(spep_5+226);
endPhase( spep_5 + 350 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--キャラ登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 108, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, -1.0, 1.0 );
setEffScaleKey( spep_0 + 108, appearance, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 108, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 106, appearance, 255 );
setEffAlphaKey( spep_0 + 107, appearance, 255 );
setEffAlphaKey( spep_0 + 108, appearance, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--風ふく
SE001 = playSeVer2( spep_0 + 0, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );
setPitch( spep_0 + 0, SE001, -700 );
setTimeStretch( SE001, 0.53, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1188, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
setStartTimeMs( SE002,  233 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 110, 0, 0, 0, 0, 255 );  --白　背景

--次の準備
spep_1=spep_0+108;
------------------------------------------------------
--構え→敵に向かってダッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
dash = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, dash, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, dash, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_1 + 90, dash, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, dash, 0 );
setEffRotateKey( spep_1 + 90, dash, 0 );
setEffAlphaKey( spep_1 + 0, dash, 255 );
setEffAlphaKey( spep_1 + 90, dash, 255 );

--SE
--構える
SE004 = playSeVer2( spep_1 + 8, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 8, SE004, 78 );
setPitch( spep_1 + 8, SE004, -500 );
setTimeStretch( SE004, 0.67, 30, 4 );
SE005 = playSeVer2( spep_1 + 16, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE005, 89 );
setPitch( spep_1 + 16, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );

--ズームアウト
SE006 = playSeVer2( spep_1 + 22, 44, "",spep_1 + 76, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 22, SE006, 79 );

--ベジータ突っ込んでくる
SE007 = playSeVer2( spep_1 + 38, 1182, "",spep_1 + 96, 0, 6, -1);
SE008 = playSeVer2( spep_1 + 38, 9, "",spep_1 + 96, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 38, SE008, 85 );
SE009 = playSeVer2( spep_1 + 42, 1277, "",spep_1 + 96, 0, 6, -1);
SE010 = playSeVer2( spep_1 + 42, 1019, "",spep_1 + 96, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 42, SE010, 70 );

--白フェード
entryFade( spep_1 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 110, 0, 0, 0, 0, 255 );  --白　背景

--次の準備
spep_2=spep_1+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
SE_CUTIN = playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94; 
------------------------------------------------------
--殴ってから追撃エネルギー弾掌底
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 268, punch_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 268, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 268, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 266, punch_f, 255 );
setEffAlphaKey( spep_3 + 267, punch_f, 255 );
setEffAlphaKey( spep_3 + 268, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 268, punch_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, punch_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 268, punch_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 268, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 266, punch_b, 255 );
setEffAlphaKey( spep_3 + 267, punch_b, 255 );
setEffAlphaKey( spep_3 + 268, punch_b, 0 );


--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 32, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, 48.1, 143.2 , 0 );
setMoveKey( spep_3-3 + 4, 1, 50.2, 139.2 , 0 );
setMoveKey( spep_3-3 + 6, 1, 58.3, 143.2 , 0 );
setMoveKey( spep_3-3 + 8, 1, 58.3, 143.2 , 0 );
setMoveKey( spep_3-3 + 10, 1, 66.7, 140.3 , 0 );
setMoveKey( spep_3-3 + 12, 1, 65.8, 134.3 , 0 );
setMoveKey( spep_3-3 + 14, 1, 65.5, 135.5 , 0 );
setMoveKey( spep_3-3 + 16, 1, 67.5, 134.5 , 0 );
setMoveKey( spep_3-3 + 18, 1, 67.5, 132.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 68.1, 132.6 , 0 );
setMoveKey( spep_3-3 + 22, 1, 59.4, 134.6 , 0 );
setMoveKey( spep_3-3 + 24, 1, 62.6, 137.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 68.8, 134.7 , 0 );
setMoveKey( spep_3-3 + 28, 1, 61.8, 143.7 , 0 );
setMoveKey( spep_3-3 + 30, 1, 69.1, 140.8 , 0 );
setMoveKey( spep_3-1 + 32, 1, 62.1, 140.8 , 0 );

setScaleKey( spep_3 + 0, 1, 0.18, 0.18 );
setScaleKey( spep_3-3 + 4, 1, 0.2, 0.2 );
setScaleKey( spep_3-3 + 6, 1, 0.21, 0.21 );
setScaleKey( spep_3-3 + 8, 1, 0.21, 0.21 );
setScaleKey( spep_3-3 + 10, 1, 0.28, 0.28 );
setScaleKey( spep_3-3 + 12, 1, 0.29, 0.29 );
setScaleKey( spep_3-3 + 14, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 18, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 20, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 22, 1, 0.54, 0.54 );
setScaleKey( spep_3-3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_3-3 + 26, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 28, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 30, 1, 0.66, 0.66 );
setScaleKey( spep_3-1 + 32, 1, 0.66, 0.66 );

setRotateKey( spep_3 + 0, 1, 16.7 );
setRotateKey( spep_3-1 + 32, 1, 16.7 );

--SE
--ベジータ向かっていく
SE013 = playSeVer2( spep_3 + 2, 1183, "",spep_3 + 96, 6, 18, -1);
setSeVolumeByWorkId( spep_3 + 2, SE013, 108 );
setStartTimeMs( SE013,  333 );
SE014 = playSeVer2( spep_3 + 0, 1278, "",spep_3 + 96, 0, 18, -1);
SE015 = playSeVer2( spep_3 + 0, 1314, "",spep_3 + 96, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 0, SE015, 86 );
SE016 = playSeVer2( spep_3 + 10, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE016, 41 );
setPitch( spep_3 + 10, SE016, -400 );
setTimeStretch( SE016, 0.92, 30, 4 );

--振りかぶる
SE017 = playSeVer2( spep_3 + 32, 1116, "",spep_3 + 88, 0, 30, -1);
setSeVolumeByWorkId( spep_3 + 32, SE017, 132 );
setPitch( spep_3 + 32, SE017, -600 );
setTimeStretch( SE017, 0.6, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 270, 0, 0, 0, 0, 255 );  --白　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 54; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--敵の動き
setDisp( spep_3-3 + 86, 1, 1 );
setDisp( spep_3-1 + 158, 1, 0 );

changeAnime( spep_3-3 + 86, 1, 107 );
changeAnime( spep_3-3 + 90, 1, 106 );
changeAnime( spep_3-3 + 122, 1, 5 );

setMoveKey( spep_3-3 + 86, 1, -196.5, -51.7 , 0 );--107
setMoveKey( spep_3-3 + 89, 1, -196.5, -31.7 , 0 );
setMoveKey( spep_3-3 + 90, 1, 57.2, -191.2 , 0 );--106
setMoveKey( spep_3-3 + 91, 1, 57.2, -191.2 , 0 );
setMoveKey( spep_3-3 + 92, 1, 64.3, 30.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 64.3, 30.5 , 0 );
setMoveKey( spep_3-3 + 96, 1, 114.3, 23 , 0 );
setMoveKey( spep_3-3 + 98, 1, 115, 121.7 , 0 );
setMoveKey( spep_3-3 + 100, 1, 115, 121.7 , 0 );
setMoveKey( spep_3-3 + 102, 1, 180.9, 95 , 0 );
setMoveKey( spep_3-3 + 104, 1, 180.3, 63.2 , 0 );
setMoveKey( spep_3-3 + 106, 1, 180.3, 63.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, 180.6, 49 , 0 );
setMoveKey( spep_3-3 + 110, 1, 180.6, 49 , 0 );
setMoveKey( spep_3-3 + 112, 1, 213.1, 28 , 0 );
setMoveKey( spep_3-3 + 114, 1, 245.4, 7.2 , 0 );
setMoveKey( spep_3-3 + 116, 1, 245.4, 7.2 , 0 );
setMoveKey( spep_3-3 + 118, 1, 308.9, -18.4 , 0 );
setMoveKey( spep_3-3 + 121, 1, 308.9, -18.4 , 0 );
setMoveKey( spep_3-3 + 122, 1, 321.2, -55.5 , 0 );--5
setMoveKey( spep_3-3 + 124, 1, 321.2, -55.5 , 0 );
setMoveKey( spep_3-3 + 126, 1, 320.2, -61.2 , 0 );
setMoveKey( spep_3-3 + 128, 1, 329.5, -66.3 , 0 );
setMoveKey( spep_3-3 + 130, 1, 329.5, -66.3 , 0 );
setMoveKey( spep_3-3 + 132, 1, 331.4, -69.2 , 0 );
setMoveKey( spep_3-3 + 134, 1, 334.2, -73.8 , 0 );
setMoveKey( spep_3-3 + 136, 1, 334.6, -74.9 , 0 );
setMoveKey( spep_3-3 + 138, 1, 335.1, -76.1 , 0 );
setMoveKey( spep_3-3 + 140, 1, 335.6, -77.2 , 0 );
setMoveKey( spep_3-3 + 142, 1, 335.9, -78.3 , 0 );
setMoveKey( spep_3-3 + 144, 1, 336.5, -79.4 , 0 );
setMoveKey( spep_3-3 + 146, 1, 336.9, -80.6 , 0 );
setMoveKey( spep_3-3 + 148, 1, 337.4, -81.7 , 0 );
setMoveKey( spep_3-3 + 150, 1, 337.8, -82.8 , 0 );
setMoveKey( spep_3-3 + 152, 1, 338.2, -84 , 0 );
setMoveKey( spep_3-3 + 154, 1, 338.7, -85.1 , 0 );
setMoveKey( spep_3-3 + 156, 1, 339.2, -86.2 , 0 );
setMoveKey( spep_3-1 + 158, 1, 339.6, -87.3 , 0 );

setScaleKey( spep_3-3 + 86, 1, 4.98, 4.98 );--107
setScaleKey( spep_3-3 + 89, 1, 4.99, 4.99 );
setScaleKey( spep_3-3 + 90, 1, 4.3, 4.3 );--106
setScaleKey( spep_3-3 + 91, 1, 4.3, 4.3 );
setScaleKey( spep_3-3 + 92, 1, 2.6, 2.6 );
setScaleKey( spep_3-3 + 94, 1, 2.6, 2.6 );
setScaleKey( spep_3-3 + 96, 1, 2, 2 );
setScaleKey( spep_3-3 + 98, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 100, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 102, 1, 0.9, 0.9 );
setScaleKey( spep_3-3 + 104, 1, 0.89, 0.89 );
setScaleKey( spep_3-3 + 106, 1, 0.89, 0.89 );
setScaleKey( spep_3-3 + 108, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 110, 1, 0.75, 0.75 );
setScaleKey( spep_3-3 + 112, 1, 0.68, 0.68 );
setScaleKey( spep_3-3 + 114, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 116, 1, 0.6, 0.6 );
setScaleKey( spep_3-3 + 118, 1, 0.45, 0.45 );
setScaleKey( spep_3-3 + 121, 1, 0.45, 0.45 );
setScaleKey( spep_3-3 + 122, 1, 0.5, 0.5 );--5
setScaleKey( spep_3-3 + 124, 1, 0.5, 0.5 );
setScaleKey( spep_3-3 + 126, 1, 0.4, 0.4 );
setScaleKey( spep_3-3 + 128, 1, 0.3, 0.3 );
setScaleKey( spep_3-3 + 130, 1, 0.3, 0.3 );
setScaleKey( spep_3-3 + 132, 1, 0.29, 0.29 );
setScaleKey( spep_3-3 + 134, 1, 0.27, 0.27 );
setScaleKey( spep_3-3 + 136, 1, 0.26, 0.26 );
setScaleKey( spep_3-3 + 138, 1, 0.24, 0.24 );
setScaleKey( spep_3-3 + 140, 1, 0.23, 0.23 );
setScaleKey( spep_3-3 + 142, 1, 0.21, 0.21 );
setScaleKey( spep_3-3 + 144, 1, 0.2, 0.2 );
setScaleKey( spep_3-3 + 146, 1, 0.18, 0.18 );
setScaleKey( spep_3-3 + 148, 1, 0.17, 0.17 );
setScaleKey( spep_3-3 + 150, 1, 0.15, 0.15 );
setScaleKey( spep_3-3 + 152, 1, 0.14, 0.14 );
setScaleKey( spep_3-3 + 154, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 156, 1, 0.11, 0.11 );
setScaleKey( spep_3-1 + 158, 1, 0.09, 0.09 );

setRotateKey( spep_3-3 + 86, 1, -45.9 );--107
setRotateKey( spep_3-3 + 89, 1, -45.9 );
setRotateKey( spep_3-3 + 90, 1, -47.2 );--106
setRotateKey( spep_3-3 + 91, 1, -47.2 );
setRotateKey( spep_3-3 + 92, 1, -35.2 );
setRotateKey( spep_3-3 + 94, 1, -35.2 );
setRotateKey( spep_3-3 + 96, 1, -27.2 );
setRotateKey( spep_3-3 + 98, 1, 6.5 );
setRotateKey( spep_3-3 + 100, 1, 6.5 );
setRotateKey( spep_3-3 + 102, 1, 8.5 );
setRotateKey( spep_3-3 + 104, 1, 10.8 );
setRotateKey( spep_3-3 + 106, 1, 10.8 );
setRotateKey( spep_3-3 + 108, 1, 36.6 );
setRotateKey( spep_3-3 + 110, 1, 36.6 );
setRotateKey( spep_3-3 + 112, 1, 42.4 );
setRotateKey( spep_3-3 + 114, 1, 48.2 );
setRotateKey( spep_3-3 + 116, 1, 48.2 );
setRotateKey( spep_3-3 + 118, 1, 102.8 );
setRotateKey( spep_3-3 + 121, 1, 102.8 );
setRotateKey( spep_3-3 + 122, 1, 141.4 );--5
setRotateKey( spep_3-3 + 124, 1, 141.4 );
setRotateKey( spep_3-3 + 126, 1, 206.7 );
setRotateKey( spep_3-3 + 128, 1, 119.2 );
setRotateKey( spep_3-1 + 158, 1, 119.2 );

--敵の動き
setDisp( spep_3-3 + 200, 1, 1 );
setDisp( spep_3-1 + 228, 1, 0 );

changeAnime( spep_3-3 + 200, 1, 107 );

setMoveKey( spep_3-3 + 200, 1, 525.7, -75.4 , 0 );
setMoveKey( spep_3-3 + 202, 1, 166.3, -73.7 , 0 );
setMoveKey( spep_3-3 + 204, 1, -193.6, -73.7 , 0 );
setMoveKey( spep_3-3 + 206, 1, -203.6, -73.7 , 0 );
setMoveKey( spep_3-3 + 208, 1, -233.6, -73.7 , 0 );
setMoveKey( spep_3-3 + 209, 1, -233.6, -73.7 , 0 );
setMoveKey( spep_3-3 + 210, 1, 181.1, -76.1 , 0 );
setMoveKey( spep_3-3 + 212, 1, 164.2, -75.9 , 0 );
setMoveKey( spep_3-3 + 214, 1, 186.1, -76 , 0 );
setMoveKey( spep_3-3 + 216, 1, 366.1, -76 , 0 );
setMoveKey( spep_3-3 + 223, 1, 366.1, -76 , 0 );
setMoveKey( spep_3-3 + 224, 1, 289.8, -15.1 , 0 );
setMoveKey( spep_3-3 + 227, 1, 289.8, -15.1 , 0 );
setMoveKey( spep_3-3 + 228, 1, 149.8, -45.1 , 0 );
setMoveKey( spep_3-1 + 228, 1, 149.8, -45.1 , 0 );

setScaleKey( spep_3-3 + 200, 1, 3.76, 3.76 );
setScaleKey( spep_3-3 + 201, 1, 3.76, 3.76 );
setScaleKey( spep_3-3 + 202, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 209, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 210, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 223, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 224, 1, 3.49, 3.49 );
setScaleKey( spep_3-1 + 228, 1, 3.49, 3.49 );

setRotateKey( spep_3-3 + 200, 1, -75.9 );
setRotateKey( spep_3-3 + 201, 1, -75.9 );
setRotateKey( spep_3-3 + 202, 1, -75.8 );
setRotateKey( spep_3-3 + 209, 1, -75.8 );
setRotateKey( spep_3-3 + 210, 1, -69.2 );
setRotateKey( spep_3-3 + 223, 1, -69.2 );
setRotateKey( spep_3-3 + 224, 1, -63.9 );
setRotateKey( spep_3-1 + 228, 1, -63.9 );

--SE
--ベジータ殴る
SE018 = playSeVer2( spep_3 + 68, 1189, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 74, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 74, SE019, 78 );
SE020 = playSeVer2( spep_3 + 74, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 74, SE020, 76 );
SE021 = playSeVer2( spep_3 + 76, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 76, SE021, 79 );

--敵飛んでいく
SE022 = playSeVer2( spep_3 + 88, 1183, "",spep_3 + 192, 0, 58, -1);

--ベジータ向かっていく
SE023 = playSeVer2( spep_3 + 126, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 126, 1025, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 130, 1277, "", 0, 0, 0, -1);

--気弾溜め
SE011 = playSeVer2( spep_3 + 160, 1210, "",spep_3 + 250, 10, 24, -1);
setSeVolumeByWorkId( spep_3 + 160, SE011, 52 );
setStartTimeMs( SE011,  4133 );
setPitch( spep_3 + 160, SE011, 300 );
setTimeStretch( SE011, 1.2, 30, 4 );
SE026 = playSeVer2( spep_3 + 160, 1154, "",spep_3 + 244, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 160, SE026, 108 );
SE027 = playSeVer2( spep_3 + 160, 1306, "",spep_3 + 244, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 160, SE027, 52 );
SE028 = playSeVer2( spep_3 + 160, 1282, "",spep_3 + 244, 0, 16, -1);
setSeVolumeByWorkId( spep_3 + 160, SE028, 41 );

--気弾爆発
SE029 = playSeVer2( spep_3 + 222, 1023, "", spep_3 + 268 +40, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 222, SE029, 88 );
SE030 = playSeVer2( spep_3 + 222, 1011, "", spep_3 + 268 +40, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 222, SE030, 87 );
SE031 = playSeVer2( spep_3 + 222, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 222, SE031, 91 );

-- ** 次の準備 ** --
spep_4= spep_3 + 268;
------------------------------------------------------
--悟空追撃
------------------------------------------------------
-- ** エフェクト等 ** --
pursuit_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, pursuit_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 242, pursuit_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, pursuit_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 242, pursuit_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, pursuit_f, 0 );
setEffRotateKey( spep_4 + 242, pursuit_f, 0 );
setEffAlphaKey( spep_4 + 0, pursuit_f, 255 );
setEffAlphaKey( spep_4 + 240, pursuit_f, 255 );
setEffAlphaKey( spep_4 + 241, pursuit_f, 255 );
setEffAlphaKey( spep_4 + 242, pursuit_f, 0 );

-- ** エフェクト等 ** --
pursuit_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, pursuit_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 242, pursuit_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, pursuit_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 242, pursuit_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, pursuit_b, 0 );
setEffRotateKey( spep_4 + 242, pursuit_b, 0 );
setEffAlphaKey( spep_4 + 0, pursuit_b, 255 );
setEffAlphaKey( spep_4 + 240, pursuit_b, 255 );
setEffAlphaKey( spep_4 + 241, pursuit_b, 255 );
setEffAlphaKey( spep_4 + 242, pursuit_b, 0 );

--敵の動き
setDisp( spep_4-3 + 144, 1, 1 );
setDisp( spep_4-2 + 244, 1, 0 );

changeAnime( spep_4-3 + 144, 1, 106 );
changeAnime( spep_4-3 + 202, 1, 107 );

setMoveKey( spep_4-3 + 144, 1, 82.2, 66 , 0 );--106
setMoveKey( spep_4-3 + 146, 1, 91.2, 61.5 , 0 );
setMoveKey( spep_4-3 + 148, 1, 100.2, 57 , 0 );
setMoveKey( spep_4-3 + 150, 1, 125.2, 43 , 0 );
setMoveKey( spep_4-3 + 152, 1, 125.3, 42 , 0 );
setMoveKey( spep_4-3 + 154, 1, 125.5, 41 , 0 );
setMoveKey( spep_4-3 + 156, 1, 125.7, 40 , 0 );
setMoveKey( spep_4-3 + 158, 1, 125.8, 39 , 0 );
setMoveKey( spep_4-3 + 160, 1, 126, 38 , 0 );
setMoveKey( spep_4-3 + 162, 1, 126.2, 37 , 0 );
setMoveKey( spep_4-3 + 164, 1, 128.2, 32 , 0 );
setMoveKey( spep_4-3 + 166, 1, 129.2, 33 , 0 );
setMoveKey( spep_4-3 + 168, 1, 129.2, 31 , 0 );
setMoveKey( spep_4-3 + 170, 1, 130.2, 31 , 0 );
setMoveKey( spep_4-3 + 172, 1, 131.2, 30 , 0 );
setMoveKey( spep_4-3 + 174, 1, 132.2, 29 , 0 );
setMoveKey( spep_4-3 + 176, 1, 132.2, 28 , 0 );
setMoveKey( spep_4-3 + 178, 1, 125.2, 29 , 0 );
setMoveKey( spep_4-3 + 180, 1, 114.2, 31 , 0 );
setMoveKey( spep_4-3 + 182, 1, 102.2, 32 , 0 );
setMoveKey( spep_4-3 + 184, 1, 83.2, 32 , 0 );
setMoveKey( spep_4-3 + 186, 1, 65.2, 32 , 0 );
setMoveKey( spep_4-3 + 188, 1, 46.2, 32 , 0 );
setMoveKey( spep_4-3 + 190, 1, 29.2, 32 , 0 );
setMoveKey( spep_4-3 + 192, 1, 12.2, 32 , 0 );
setMoveKey( spep_4-3 + 194, 1, -0.8, 32 , 0 );
setMoveKey( spep_4-3 + 196, 1, -13.8, 32 , 0 );
setMoveKey( spep_4-3 + 198, 1, -21.8, 32 , 0 );
setMoveKey( spep_4-3 + 200, 1, -26.8, 32 , 0 );
setMoveKey( spep_4-3 + 201, 1, -26.8, 32 , 0 );
setMoveKey( spep_4-3 + 202, 1, -263.9, -31.3 , 0 );--107
setMoveKey( spep_4-3 + 204, 1, -262.7, -27.9 , 0 );
setMoveKey( spep_4-3 + 206, 1, -261.5, -24.4 , 0 );
setMoveKey( spep_4-3 + 208, 1, -260.3, -21 , 0 );
setMoveKey( spep_4-3 + 210, 1, -259.1, -17.5 , 0 );
setMoveKey( spep_4-3 + 212, 1, -257.7, -11.4 , 0 );
setMoveKey( spep_4-3 + 214, 1, -256.3, -5.3 , 0 );
setMoveKey( spep_4-3 + 216, 1, -254.9, 0.9 , 0 );
setMoveKey( spep_4-3 + 218, 1, -253.5, 7 , 0 );
setMoveKey( spep_4-3 + 220, 1, -251.8, 14.8 , 0 );
setMoveKey( spep_4-3 + 222, 1, -250.2, 22.7 , 0 );
setMoveKey( spep_4-3 + 224, 1, -248.5, 30.4 , 0 );
setMoveKey( spep_4-3 + 226, 1, -246.8, 38.2 , 0 );
setMoveKey( spep_4-3 + 228, 1, -245.1, 46 , 0 );
setMoveKey( spep_4-3 + 230, 1, -243.5, 53.8 , 0 );
setMoveKey( spep_4-3 + 232, 1, -242.8, 57.1 , 0 );
setMoveKey( spep_4-3 + 234, 1, -242.1, 60.4 , 0 );
setMoveKey( spep_4-3 + 236, 1, -241.5, 63.8 , 0 );
setMoveKey( spep_4-3 + 238, 1, -240.8, 67.1 , 0 );
setMoveKey( spep_4-3 + 240, 1, -240.2, 70.4 , 0 );
setMoveKey( spep_4-3 + 242, 1, -239.5, 73.7 , 0 );
setMoveKey( spep_4-2 + 244, 1, -238.9, 77.1 , 0 );

setScaleKey( spep_4-3 + 144, 1, 0.5, 0.5 );--106
setScaleKey( spep_4-3 + 201, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 202, 1, 0.23, 0.23 );--107
setScaleKey( spep_4-3 + 204, 1, 0.24, 0.24 );
setScaleKey( spep_4-3 + 206, 1, 0.25, 0.25 );
setScaleKey( spep_4-3 + 208, 1, 0.26, 0.26 );
setScaleKey( spep_4-3 + 210, 1, 0.27, 0.27 );
setScaleKey( spep_4-3 + 212, 1, 0.29, 0.29 );
setScaleKey( spep_4-3 + 214, 1, 0.32, 0.32 );
setScaleKey( spep_4-3 + 216, 1, 0.34, 0.34 );
setScaleKey( spep_4-3 + 218, 1, 0.36, 0.36 );
setScaleKey( spep_4-3 + 220, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 222, 1, 0.4, 0.4 );
setScaleKey( spep_4-3 + 224, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 226, 1, 0.44, 0.44 );
setScaleKey( spep_4-3 + 228, 1, 0.47, 0.47 );
setScaleKey( spep_4-3 + 230, 1, 0.49, 0.49 );
setScaleKey( spep_4-3 + 232, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 234, 1, 0.5, 0.5 );
setScaleKey( spep_4-3 + 236, 1, 0.51, 0.51 );
setScaleKey( spep_4-3 + 238, 1, 0.52, 0.52 );
setScaleKey( spep_4-3 + 240, 1, 0.53, 0.53 );
setScaleKey( spep_4-3 + 242, 1, 0.54, 0.54 );
setScaleKey( spep_4-2 + 244, 1, 0.55, 0.55 );

setRotateKey( spep_4-3 + 144, 1, 0 );--106
setRotateKey( spep_4-3 + 148, 1, 0 );
setRotateKey( spep_4-3 + 150, 1, 17.3 );
setRotateKey( spep_4-3 + 201, 1, 17.3 );
setRotateKey( spep_4-3 + 202, 1, 28.3 );--107
setRotateKey( spep_4-3 + 203, 1, 28.3 );
setRotateKey( spep_4-3 + 204, 1, 28.5 );
setRotateKey( spep_4-2 + 244, 1, 28.5 );

--SE
--ベジータ後ろ飛び
SE032 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_4 + 0, 1117, "", 0, 0, 0, -1);

--後退りで地面削れる
SE034 = playSeVer2( spep_4 + 40, 1044, "",spep_4 + 102, 32, 14, -1);
setSeVolumeByWorkId( spep_4 + 40, SE034, 151 );
SE035 = playSeVer2( spep_4 + 44, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 44, SE035, 398 );
SE036 = playSeVer2( spep_4 + 52, 1197, "",spep_4 + 64, 0, 6, -1);
setSeVolumeByWorkId( spep_4 + 52, SE036, 61 );
setPitch( spep_4 + 52, SE036, -400 );
setTimeStretch( SE036, 0.73, 30, 4 );
SE037 = playSeVer2( spep_4 + 58, 1197, "",spep_4 + 70, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 58, SE037, 68 );
setPitch( spep_4 + 58, SE037, -400 );
setTimeStretch( SE037, 0.73, 30, 4 );
SE038 = playSeVer2( spep_4 + 62, 1197, "",spep_4 + 72, 0, 6, -1);
setSeVolumeByWorkId( spep_4 + 62, SE038, 81 );
setPitch( spep_4 + 62, SE038, -400 );
setTimeStretch( SE038, 0.73, 30, 4 );

--悟空飛んでいく
SE039 = playSeVer2( spep_4 + 62, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 62, SE039, 110 );
SE040 = playSeVer2( spep_4 + 64, 1277, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_4 + 64, 1072, "", 0, 0, 0, -1);

--後退りで地面削れる
SE042 = playSeVer2( spep_4 + 68, 1197, "",spep_4 + 80, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 68, SE042, 88 );
setPitch( spep_4 + 68, SE042, -400 );
setTimeStretch( SE042, 0.73, 30, 4 );
SE043 = playSeVer2( spep_4 + 74, 1197, "",spep_4 + 86, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 74, SE043, 97 );
setPitch( spep_4 + 74, SE043, -400 );
setTimeStretch( SE043, 0.73, 30, 4 );
SE045 = playSeVer2( spep_4 + 78, 1197, "",spep_4 + 90, 0, 8, -1);
setSeVolumeByWorkId( spep_4 + 78, SE045, 104 );
setPitch( spep_4 + 78, SE045, -400 );
setTimeStretch( SE045, 0.73, 30, 4 );
SE046 = playSeVer2( spep_4 + 82, 1197, "",spep_4 + 92, 0, 6, -1);
setSeVolumeByWorkId( spep_4 + 82, SE046, 101 );
setPitch( spep_4 + 82, SE046, -400 );
setTimeStretch( SE046, 0.73, 30, 4 );

--悟空向かっていく
SE044 = playSeVer2( spep_4 + 106, 1183, "",spep_4 + 162, 6, 10, -1);
setStartTimeMs( SE044,  317 );
SE047 = playSeVer2( spep_4 + 106, 1167, "",spep_4 + 162, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 106, SE047, 53 );

--悟空パンチ
SE048 = playSeVer2( spep_4 + 146, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 146, SE048, 85 );
SE049 = playSeVer2( spep_4 + 162, 1188, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_4 + 162, SE049, 69 );
setStartTimeMs( SE049,  267 );
SE050 = playSeVer2( spep_4 + 148, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 148, SE050, 73 );
SE051 = playSeVer2( spep_4 + 148, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 148, SE051, 73 );
SE052 = playSeVer2( spep_4 + 150, 1061, "", 0, 0, 0, -1);
setPitch( spep_4 + 150, SE052, 500 );
setTimeStretch( SE052, 1.33, 30, 4 );
SE053 = playSeVer2( spep_4 + 158, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 158, SE053, 127 );
SE054 = playSeVer2( spep_4 + 164, 1258, "",spep_4 + 262, 22, 64, -1);
setSeVolumeByWorkId( spep_4 + 164, SE054, 49 );
setStartTimeMs( SE054,  100 );

--悟空着地
SE055 = playSeVer2( spep_4 + 200, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 200, SE055, 363 );
setPitch( spep_4 + 200, SE055, -400 );
setTimeStretch( SE055, 0.73, 30, 4 );
SE056 = playSeVer2( spep_4 + 208, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 208, SE056, 320 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 244, 0, 0, 0, 0, 255 );  --白　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 242; 

------------------------------------------------------
--悟空ラッシュから背負い投げ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 360, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 360, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 360, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 360, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 360, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, -1.1, 1.0 );
setEffScaleKey( spep_5 + 360, finish_b, -1.1, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 360, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 360, finish_b, 255 );

--敵の動き
setDisp( spep_5-3 + 36, 1, 1 );
setDisp( spep_5-1 + 172, 1, 0 );

changeAnime( spep_5-3 + 36, 1, 106 );
changeAnime( spep_5-3 + 52, 1, 108 );
changeAnime( spep_5-3 + 70, 1, 106 );
changeAnime( spep_5-3 + 84, 1, 108 );
changeAnime( spep_5-3 + 110, 1, 106 );
changeAnime( spep_5-3 + 138, 1, 6 );

setMoveKey( spep_5-3 + 36, 1, 88.4, 33.2 , 0 );--106
setMoveKey( spep_5-3 + 38, 1, 97.4, 27.2 , 0 );
setMoveKey( spep_5-3 + 40, 1, 107.4, 25.2 , 0 );
setMoveKey( spep_5-3 + 42, 1, 113.4, 15.2 , 0 );
setMoveKey( spep_5-3 + 44, 1, 119.4, 12.2 , 0 );
setMoveKey( spep_5-3 + 46, 1, 130.4, 4.2 , 0 );
setMoveKey( spep_5-3 + 48, 1, 133.4, 3.2 , 0 );
setMoveKey( spep_5-3 + 50, 1, 141.4, -1.8 , 0 );
setMoveKey( spep_5-3 + 51, 1, 141.4, -1.8 , 0 );
setMoveKey( spep_5-3 + 52, 1, 12.4, 3.2 , 0 );--108
setMoveKey( spep_5-3 + 54, 1, 2.4, 3.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 2.4, 3.2 , 0 );
setMoveKey( spep_5-3 + 60, 1, -7.6, -4.8 , 0 );
setMoveKey( spep_5-3 + 62, 1, -17.6, 5.2 , 0 );
setMoveKey( spep_5-3 + 64, 1, -17.6, 5.2 , 0 );
setMoveKey( spep_5-3 + 66, 1, -19.6, 3.2 , 0 );
setMoveKey( spep_5-3 + 68, 1, -24.6, -0.8 , 0 );
setMoveKey( spep_5-3 + 69, 1, -24.6, -0.8 , 0 );
setMoveKey( spep_5-3 + 70, 1, -24.6, -0.8 , 0 );--106
setMoveKey( spep_5-3 + 74, 1, -24.6, -0.8 , 0 );
setMoveKey( spep_5-3 + 76, 1, -29.6, -0.8 , 0 );
setMoveKey( spep_5-3 + 78, 1, -28.4, -0.8 , 0 );
setMoveKey( spep_5-3 + 80, 1, -32.1, 4.2 , 0 );
setMoveKey( spep_5-3 + 82, 1, -34.4, 4.7 , 0 );
setMoveKey( spep_5-3 + 83, 1, -34.4, 4.7 , 0 );
setMoveKey( spep_5-3 + 84, 1, -74.6, 83.2 , 0 );--108
setMoveKey( spep_5-3 + 86, 1, -39.6, 48.2 , 0 );
setMoveKey( spep_5-3 + 88, 1, -83.6, 92.2 , 0 );
setMoveKey( spep_5-3 + 90, 1, -76.6, 72.2 , 0 );
setMoveKey( spep_5-3 + 92, 1, -90.6, 96.2 , 0 );
setMoveKey( spep_5-3 + 94, 1, -93.6, 95.2 , 0 );
setMoveKey( spep_5-3 + 96, 1, -101.6, 90.2 , 0 );
setMoveKey( spep_5-3 + 98, 1, -104, 85.2 , 0 );
setMoveKey( spep_5-3 + 100, 1, -108.6, 82.2 , 0 );
setMoveKey( spep_5-3 + 102, 1, -119.6, 83.2 , 0 );
setMoveKey( spep_5-3 + 104, 1, -120.6, 84.2 , 0 );
setMoveKey( spep_5-3 + 106, 1, -126, 80.2 , 0 );
setMoveKey( spep_5-3 + 108, 1, -130.6, 74.2 , 0 );
setMoveKey( spep_5-3 + 109, 1, -130.6, 74.2 , 0 );
setMoveKey( spep_5-3 + 110, 1, -77.6, 59.2 , 0 );--106
setMoveKey( spep_5-3 + 112, 1, -67.6, 69.2 , 0 );
setMoveKey( spep_5-3 + 114, 1, -67.6, 49.2 , 0 );
setMoveKey( spep_5-3 + 116, 1, -67.6, 29.2 , 0 );
setMoveKey( spep_5-3 + 118, 1, -80.6, 33.5 , 0 );
setMoveKey( spep_5-3 + 120, 1, -93.6, 37.9 , 0 );
setMoveKey( spep_5-3 + 121, 1, -93.6, 37.9 , 0 );

a=30;
b=-20;

setMoveKey( spep_5-3 + 122, 1, -106.6+a, 42.2+b , 0 );
setMoveKey( spep_5-3 + 124, 1, -116.6+a, 51.2+b , 0 );
setMoveKey( spep_5-3 + 126, 1, -124.6+a, 58.2+b , 0 );
setMoveKey( spep_5-3 + 128, 1, -137.6+a, 66.6+b , 0 );
setMoveKey( spep_5-3 + 130, 1, -147.6+a, 67.2+b , 0 );
setMoveKey( spep_5-3 + 132, 1, -127.6+a, 87.2+b , 0 );
setMoveKey( spep_5-3 + 134, 1, -95.6+a, 61.2+b , 0 );
setMoveKey( spep_5-3 + 136, 1, -85.6+a, 64.2+b , 0 );
setMoveKey( spep_5-3 + 137, 1, -85.6+a, 64.2+b , 0 );

c=140;
d=-10;

setMoveKey( spep_5-3 + 138, 1, -178+c, 581.9+d , 0 );--6
setMoveKey( spep_5-3 + 140, 1, -170.6+c, 589.5+d , 0 );
setMoveKey( spep_5-3 + 142, 1, -175.7+c, 585.2+d , 0 );
setMoveKey( spep_5-3 + 144, 1, -191.7+c, 594.5+d , 0 );
setMoveKey( spep_5-3 + 146, 1, -190.7+c, 602.5+d , 0 );
setMoveKey( spep_5-3 + 148, 1, -188.7+c, 602.5+d , 0 );
setMoveKey( spep_5-3 + 150, 1, -189.8+c, 631.6+d , 0 );
setMoveKey( spep_5-3 + 152, 1, -189.8+c, 631.6+d , 0 );
setMoveKey( spep_5-3 + 154, 1, -176.4+c, 628.8+d , 0 );
setMoveKey( spep_5-3 + 156, 1, -168.9+c, 736.9+d , 0 );
setMoveKey( spep_5-3 + 158, 1, -144.6+c, 797.7+d , 0 );
setMoveKey( spep_5-3 + 164, 1, -144.6+c, 797.7+d , 0 );
setMoveKey( spep_5-3 + 166, 1, -171.7+c, 1050.2+d , 0 );
setMoveKey( spep_5-3 + 168, 1, -167.7+c, 1049.2+d , 0 );
setMoveKey( spep_5-3 + 170, 1, -164.7+c, 1045.2+d , 0 );
setMoveKey( spep_5-3 + 172, 1, 340.7+c, 1414.2+d , 0 );
setMoveKey( spep_5-1 + 172, 1, 340.7+c, 1414.2+d , 0 );

setScaleKey( spep_5-3 + 36, 1, 1.8, 1.8 );--106
setScaleKey( spep_5-3 + 51, 1, 1.8, 1.8 );
setScaleKey( spep_5-3 + 52, 1, 1.8, 1.8 );--108
setScaleKey( spep_5-3 + 69, 1, 1.8, 1.8 );
setScaleKey( spep_5-3 + 70, 1, 1.8, 1.8 );--106
setScaleKey( spep_5-3 + 83, 1, 1.8, 1.8 );
setScaleKey( spep_5-3 + 84, 1, 2.16, 2.16 );--108
setScaleKey( spep_5-3 + 109, 1, 2.16, 2.16 );
setScaleKey( spep_5-3 + 110, 1, 1.62, 1.62 );--106
setScaleKey( spep_5-3 + 118, 1, 1.62, 1.62 );
setScaleKey( spep_5-3 + 119, 1, 1.62, 1.62 );
setScaleKey( spep_5-3 + 120, 1, 1.53, 1.53 );
setScaleKey( spep_5-3 + 137, 1, 1.53, 1.53 );
setScaleKey( spep_5-3 + 138, 1, 6, 6 );--6
setScaleKey( spep_5-3 + 144, 1, 6, 6 );
setScaleKey( spep_5-3 + 150, 1, 6.4, 6.4 );
setScaleKey( spep_5-3 + 152, 1, 6.4, 6.4 );
setScaleKey( spep_5-3 + 154, 1, 6.7, 6.7 );
setScaleKey( spep_5-3 + 156, 1, 8, 8 );
setScaleKey( spep_5-3 + 158, 1, 9, 9 );
setScaleKey( spep_5-3 + 164, 1, 9, 9 );
setScaleKey( spep_5-3 + 166, 1, 12, 12 );
setScaleKey( spep_5-3 + 171, 1, 12, 12 );
setScaleKey( spep_5-3 + 172, 1, 14, 14 );
setScaleKey( spep_5-1 + 172, 1, 14, 14 );

setRotateKey( spep_5-3 + 36, 1, 86.2 );--106
setRotateKey( spep_5-3 + 38, 1, 87 );
setRotateKey( spep_5-3 + 40, 1, 89.2 );
setRotateKey( spep_5-3 + 42, 1, 90.8 );
setRotateKey( spep_5-3 + 44, 1, 90.1 );
setRotateKey( spep_5-3 + 46, 1, 89.4 );
setRotateKey( spep_5-3 + 48, 1, 88.8 );
setRotateKey( spep_5-3 + 50, 1, 96.3 );
setRotateKey( spep_5-3 + 51, 1, 96.3 );
setRotateKey( spep_5-3 + 52, 1, 157 );--108
setRotateKey( spep_5-3 + 54, 1, 163.4 );
setRotateKey( spep_5-3 + 56, 1, 166.7 );
setRotateKey( spep_5-3 + 58, 1, 169.2 );
setRotateKey( spep_5-3 + 60, 1, 172.5 );
setRotateKey( spep_5-3 + 62, 1, 175.2 );
setRotateKey( spep_5-3 + 64, 1, 178.2 );
setRotateKey( spep_5-3 + 66, 1, 180.8 );
setRotateKey( spep_5-3 + 68, 1, 181.7 );
setRotateKey( spep_5-3 + 69, 1, 181.7 );
setRotateKey( spep_5-3 + 70, 1, 127.1 );--106
setRotateKey( spep_5-3 + 72, 1, 129.1 );
setRotateKey( spep_5-3 + 74, 1, 133.2 );
setRotateKey( spep_5-3 + 76, 1, 132.9 );
setRotateKey( spep_5-3 + 78, 1, 134.4 );
setRotateKey( spep_5-3 + 80, 1, 140.2 );
setRotateKey( spep_5-3 + 82, 1, 140.4 );
setRotateKey( spep_5-3 + 83, 1, 140.4 );
setRotateKey( spep_5-3 + 84, 1, 215.4 );--108
setRotateKey( spep_5-3 + 86, 1, 217.3 );
setRotateKey( spep_5-3 + 88, 1, 217.3 );
setRotateKey( spep_5-3 + 90, 1, 218.6 );
setRotateKey( spep_5-3 + 92, 1, 219.8 );
setRotateKey( spep_5-3 + 94, 1, 218.9 );
setRotateKey( spep_5-3 + 96, 1, 217.6 );
setRotateKey( spep_5-3 + 98, 1, 216.7 );
setRotateKey( spep_5-3 + 100, 1, 217.2 );
setRotateKey( spep_5-3 + 102, 1, 220.7 );
setRotateKey( spep_5-3 + 104, 1, 220.1 );
setRotateKey( spep_5-3 + 106, 1, 219.9 );
setRotateKey( spep_5-3 + 108, 1, 220.4 );
setRotateKey( spep_5-3 + 109, 1, 220.4 );--106
setRotateKey( spep_5-3 + 110, 1, 207.6 );
setRotateKey( spep_5-3 + 112, 1, 205.4 );
setRotateKey( spep_5-3 + 114, 1, 209.8 );
setRotateKey( spep_5-3 + 116, 1, 213.5 );
setRotateKey( spep_5-3 + 118, 1, 224 );
setRotateKey( spep_5-3 + 120, 1, 230.8 );
setRotateKey( spep_5-3 + 122, 1, 237.6 );
setRotateKey( spep_5-3 + 124, 1, 235.4 );
setRotateKey( spep_5-3 + 126, 1, 237.6 );
setRotateKey( spep_5-3 + 128, 1, 241.4 );
setRotateKey( spep_5-3 + 130, 1, 242.1 );
setRotateKey( spep_5-3 + 132, 1, 252.4 );
setRotateKey( spep_5-3 + 134, 1, 249.5 );
setRotateKey( spep_5-3 + 136, 1, 252.7 );
setRotateKey( spep_5-3 + 137, 1, 252.7 );

d=5;

setRotateKey( spep_5-3 + 138, 1, 1.6+d );--6
setRotateKey( spep_5-3 + 140, 1, 1.7+d );
setRotateKey( spep_5-3 + 142, 1, 0.4+d );
setRotateKey( spep_5-3 + 144, 1, -1.6+d );
setRotateKey( spep_5-3 + 150, 1, 1.7+d );
setRotateKey( spep_5-3 + 170, 1, 1.7+d );
setRotateKey( spep_5-3 + 171, 1, 1.7+d );
setRotateKey( spep_5-3 + 172, 1, 27.4+d );
setRotateKey( spep_5-1 + 172, 1, 27.4+d );

--敵の動き
setDisp( spep_5-3 + 194, 1, 1 );
setDisp( spep_5-1 + 284, 1, 0 );

changeAnime( spep_5-3 + 194, 1, 106 );
changeAnime( spep_5-3 + 222, 1, 107 );

setMoveKey( spep_5-3 + 194, 1, -63.4, 22.5 , 0 );--106
setMoveKey( spep_5-3 + 196, 1, -61, 27 , 0 );
setMoveKey( spep_5-3 + 198, 1, -54.9, 27.4 , 0 );
setMoveKey( spep_5-3 + 200, 1, -48.5, 22.2 , 0 );
setMoveKey( spep_5-3 + 202, 1, -45.7, 16.1 , 0 );
setMoveKey( spep_5-3 + 204, 1, -39.1, 14.7 , 0 );
setMoveKey( spep_5-3 + 206, 1, -23.8, 13.5 , 0 );
setMoveKey( spep_5-3 + 208, 1, -19.1, 12 , 0 );
setMoveKey( spep_5-3 + 210, 1, -10.7, 13.2 , 0 );
setMoveKey( spep_5-3 + 212, 1, 0.1, 15.1 , 0 );
setMoveKey( spep_5-3 + 214, 1, 12.1, 16.1 , 0 );
setMoveKey( spep_5-3 + 216, 1, 20.5, 14.7 , 0 );
setMoveKey( spep_5-3 + 217, 1, 20.5, 14.7 , 0 );
setMoveKey( spep_5-3 + 218, 1, -25, 42.1 , 0 );
setMoveKey( spep_5-3 + 220, 1, -29, 42.1 , 0 );
setMoveKey( spep_5-3 + 221, 1, -29, 42.1 , 0 );
setMoveKey( spep_5-3 + 222, 1, -23.2, -22.7 , 0 );--107
setMoveKey( spep_5-3 + 223, 1, -23.2, -22.7 , 0 );
setMoveKey( spep_5-3 + 224, 1, 36.9, -46.9 , 0 );
setMoveKey( spep_5-3 + 226, 1, 112, -141 , 0 );
setMoveKey( spep_5-3 + 228, 1, 112, -121 , 0 );
setMoveKey( spep_5-3 + 230, 1, 114, -24 , 0 );
setMoveKey( spep_5-3 + 232, 1, 113, -97 , 0 );
setMoveKey( spep_5-3 + 234, 1, 93, -57 , 0 );
setMoveKey( spep_5-3 + 236, 1, 103, -109 , 0 );
setMoveKey( spep_5-3 + 238, 1, 113, -77 , 0 );
setMoveKey( spep_5-3 + 240, 1, 93, -65 , 0 );
setMoveKey( spep_5-3 + 242, 1, 114, -97 , 0 );
setMoveKey( spep_5-3 + 244, 1, 92, -87 , 0 );
setMoveKey( spep_5-3 + 246, 1, 105, -57 , 0 );
setMoveKey( spep_5-3 + 248, 1, 112, -97 , 0 );
setMoveKey( spep_5-3 + 250, 1, 92, -53 , 0 );
setMoveKey( spep_5-3 + 252, 1, 92, -88 , 0 );
setMoveKey( spep_5-3 + 254, 1, 111, -60 , 0 );
setMoveKey( spep_5-3 + 256, 1, 106, -67 , 0 );
setMoveKey( spep_5-3 + 258, 1, 116, -88 , 0 );
setMoveKey( spep_5-3 + 260, 1, 117, -65 , 0 );
setMoveKey( spep_5-3 + 262, 1, 115.5, -66 , 0 );
setMoveKey( spep_5-3 + 264, 1, 114, -67 , 0 );
setMoveKey( spep_5-3 + 266, 1, 116, -79 , 0 );
setMoveKey( spep_5-3 + 268, 1, 112, -62 , 0 );
setMoveKey( spep_5-3 + 270, 1, 114, -77 , 0 );
setMoveKey( spep_5-3 + 272, 1, 112, -63 , 0 );
setMoveKey( spep_5-3 + 274, 1, 111, -75 , 0 );
setMoveKey( spep_5-3 + 276, 1, 112, -66 , 0 );
setMoveKey( spep_5-3 + 278, 1, 110, -78 , 0 );
setMoveKey( spep_5-3 + 280, 1, 112, -67 , 0 );
setMoveKey( spep_5-3 + 282, 1, 111, -78 , 0 );
setMoveKey( spep_5-1 + 284, 1, 111, -70 , 0 );

setScaleKey( spep_5-3 + 194, 1, 0.89, 0.89 );--106
setScaleKey( spep_5-3 + 196, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 217, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 218, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 221, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 222, 1, 0.89, 0.89 );--107
setScaleKey( spep_5-3 + 223, 1, 0.89, 0.89 );
setScaleKey( spep_5-3 + 224, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 226, 1, 1.07, 1.07 );
setScaleKey( spep_5-1 + 284, 1, 1.07, 1.07 );

setRotateKey( spep_5-3 + 194, 1, -133.9 );--106
setRotateKey( spep_5-3 + 196, 1, -132.3 );
setRotateKey( spep_5-3 + 198, 1, -123.8 );
setRotateKey( spep_5-3 + 200, 1, -113.6 );
setRotateKey( spep_5-3 + 202, 1, -107.8 );
setRotateKey( spep_5-3 + 204, 1, -106.6 );
setRotateKey( spep_5-3 + 206, 1, -99.3 );
setRotateKey( spep_5-3 + 208, 1, -97 );
setRotateKey( spep_5-3 + 210, 1, -92.1 );
setRotateKey( spep_5-3 + 212, 1, -85.6 );
setRotateKey( spep_5-3 + 214, 1, -78.7 );
setRotateKey( spep_5-3 + 216, 1, -74.5 );
setRotateKey( spep_5-3 + 217, 1, -74.5 );
setRotateKey( spep_5-3 + 218, 1, -44.6 );
setRotateKey( spep_5-3 + 219, 1, -44.6 );
setRotateKey( spep_5-3 + 220, 1, -44.7 );
setRotateKey( spep_5-3 + 221, 1, -44.7 );
setRotateKey( spep_5-3 + 222, 1, -60.9 );--107
setRotateKey( spep_5-3 + 223, 1, -60.9 );
setRotateKey( spep_5-3 + 224, 1, -37.2 );
setRotateKey( spep_5-3 + 225, 1, -37.2 );
setRotateKey( spep_5-3 + 226, 1, 5.3 );
setRotateKey( spep_5-1 + 284, 1, 5.3 );

--SE
--振りかぶる
SE057 = playSeVer2( spep_5 + 0, 1003, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_5 + 2, 1004, "", 0, 0, 0, -1);
setPitch( spep_5 + 2, SE058, -400 );
setTimeStretch( SE058, 0.73, 30, 4 );

--連続パンチ
SE059 = playSeVer2( spep_5 + 44, 1189, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_5 + 50, 1359, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_5 + 50, 1187, "",spep_5 + 84, 0, 20, -1);
setSeVolumeByWorkId( spep_5 + 50, SE061, 88 );
setPitch( spep_5 + 50, SE061, -300 );
setTimeStretch( SE061, 0.8, 30, 4 );
SE062 = playSeVer2( spep_5 + 78, 1189, "", 0, 0, 0, -1);
setPitch( spep_5 + 78, SE062, 200 );
setTimeStretch( SE062, 1.13, 30, 4 );
SE064 = playSeVer2( spep_5 + 82, 1359, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_5 + 82, 1187, "",spep_5 + 118, 0, 22, -1);
setSeVolumeByWorkId( spep_5 + 82, SE065, 84 );
setPitch( spep_5 + 82, SE065, -100 );
setTimeStretch( SE065, 0.93, 30, 4 );
SE066 = playSeVer2( spep_5 + 108, 1359, "",spep_5 + 138, 0, 12, -1);
SE067 = playSeVer2( spep_5 + 108, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 108, SE067, 89 );
SE068 = playSeVer2( spep_5 + 108, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 108, SE068, 87 );

--敵つかむ
SE069 = playSeVer2( spep_5 + 122, 1153, "",spep_5 + 146, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 122, SE069, 63 );
SE070 = playSeVer2( spep_5 + 124, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 124, SE070, 79 );

--背負い投げ
SE063 = playSeVer2( spep_5 + 136, 1278, "",spep_5 + 252, 16, 44, -1);
setSeVolumeByWorkId( spep_5 + 136, SE063, 72 );
setStartTimeMs( SE063,  1117 );
SE071 = playSeVer2( spep_5 + 138, 1116, "",spep_5 + 174, 0, 16, -1);
setPitch( spep_5 + 138, SE071, -400 );
setTimeStretch( SE071, 0.73, 30, 4 );
SE072 = playSeVer2( spep_5 + 138, 1072, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_5 + 174, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE073,  83 );
SE074 = playSeVer2( spep_5 + 174, 1004, "", 0, 0, 0, -1);

--地面激突
SE075 = playSeVer2( spep_5 + 214, 1189, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_5 + 222, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 222, SE076, 87 );
SE077 = playSeVer2( spep_5 + 226, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 226, SE077, 89 );

--地面割れる
SE078 = playSeVer2( spep_5 + 304, 1033, "", 0, 0, 0, -1);
SE079 = playSeVer2( spep_5 + 324, 1068, "", 0, 0, 0, -1);
SE080 = playSeVer2( spep_5 + 324, 1061, "", 0, 0, 0, -1);
setPitch( spep_5 + 324, SE080, -500 );
setTimeStretch( SE080, 0.67, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 362, 0, 0, 0, 0, 255 );  --白　背景

--終わり
dealDamage(spep_5+226);
endPhase( spep_5 + 350 );
end