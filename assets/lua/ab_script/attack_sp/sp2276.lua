--1023090:ヒット&超サイヤ人ゴッド孫悟空_超絶光速コンビネーション
--sp_effect_a2_00170
--sp2276

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
SP_01= 158367 ;-- ヒット＆悟空 正面カット
SP_02= 158369 ;-- ヒットが踏み込み突進
SP_03= 158371 ;-- ヒット 突進→振りかぶる 手前
SP_04= 158372 ;-- ヒット 突進→振りかぶる 奥
SP_05= 158373 ;-- 格闘 手前
SP_06= 158375 ;-- 格闘 奥
SP_07= 158376 ;-- パンチヒット 手前
SP_08= 158378 ;-- パンチヒット 奥
SP_09= 158379 ;-- 瞬間移動→振り向いてブルーに変身
SP_10= 158381 ;-- パンチ連打 手前
SP_11= 158383 ;-- パンチ連打 奥
SP_12= 158385 ;-- 敵が壁に激突 手前
SP_13= 158387 ;-- 敵が壁に激突 奥
SP_14= 158388 ;-- 気弾連打
SP_15= 158389 ;-- 気弾が着弾～フィニッシュ

--エフェクト(てき)
SP_01x= 158368 ;-- ヒット＆悟空 正面カット (敵)
SP_02x= 158370 ;-- ヒットが踏み込み突進 (敵)
SP_03x= 158371 ;-- ヒット 突進→振りかぶる 手前 
SP_04x= 158372 ;-- ヒット 突進→振りかぶる 奥 
SP_05x= 158374 ;-- 格闘 手前 (敵)
SP_06x= 158375 ;-- 格闘 奥 
SP_07x= 158377 ;-- パンチヒット 手前 (敵)
SP_08x= 158378 ;-- パンチヒット 奥 
SP_09x= 158380 ;-- 瞬間移動→振り向いてブルーに変身 (敵)
SP_10x= 158382 ;-- パンチ連打 手前 (敵)
SP_11x= 158384 ;-- パンチ連打 奥 (敵)
SP_12x= 158386 ;-- 敵が壁に激突 手前 (敵)
SP_13x= 158387 ;-- 敵が壁に激突 奥 
SP_14x= 158388 ;-- 気弾連打 
SP_15x= 158389 ;-- 気弾が着弾～フィニッシュ 

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
--ヒット＆悟空 正面カット
------------------------------------------------------
--はじめの準備
spep_0=0;

setupMovie(0 , SP_01, 0, 1);

--顔カットインのタイミング指定
spep_x=spep_0 +18;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 124, 0, 4, -1);
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );

--入り
SE003 = playSeVer2( spep_0 + 6, 8, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 63 );

--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 63 );

--白フェード
entryFade( spep_0 + 112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  

--次の準備
spep_1=spep_0+118;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94+2;

------------------------------------------------------
--ヒットが踏み込み突進
------------------------------------------------------
-- ** エフェクト等 ** --
stepping = entryEffect( spep_2 + 0-2, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0-2, stepping, 0, 0, 0 );
setEffMoveKey( spep_2 + 56-2, stepping, 0, 0, 0 );
setEffScaleKey( spep_2 + 0-2, stepping, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56-2, stepping, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0-2, stepping, 0 );
setEffRotateKey( spep_2 + 56-2, stepping, 0 );
setEffAlphaKey( spep_2 + 0-2, stepping, 255 );
setEffAlphaKey( spep_2 + 54-2, stepping, 255 );
setEffAlphaKey( spep_2 + 55-2, stepping, 255 );
setEffAlphaKey( spep_2 + 56-2, stepping, 0 );

--SE
--ヒット踏み切る
SE010 = playSeVer2( spep_2 + 18, 1000, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 18, 9, "",spep_2 + 120, 0, 70, -1);
SE012 = playSeVer2( spep_2 + 18, 1182, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    
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

-- ** 次の準備 ** --
spep_3= spep_2 + 56; 
------------------------------------------------------
--ヒット 突進→振りかぶる
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 140, rush_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 140, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_f, 0 );
setEffRotateKey( spep_3 + 140, rush_f, 0 );
setEffAlphaKey( spep_3 + 0, rush_f, 255 );
setEffAlphaKey( spep_3 + 138, rush_f, 255 );
setEffAlphaKey( spep_3 + 139, rush_f, 255 );
setEffAlphaKey( spep_3 + 140, rush_f, 0 );

--敵の動き
setDisp( spep_3-3 + 96, 1, 1);
setDisp( spep_3-3 + 141, 1, 0);

changeAnime( spep_3-3 + 96, 1, 111);
changeAnime( spep_3-3 + 97, 1, 111);
changeAnime( spep_3-3 +98, 1, 111);
changeAnime( spep_3-3 +99, 1, 111);
changeAnime( spep_3-3 +100, 1, 111);
changeAnime( spep_3-3 +101, 1, 111);
changeAnime( spep_3-3 +102, 1, 111);
changeAnime( spep_3-3 +103, 1, 111);
changeAnime( spep_3-3 +104, 1, 111);
changeAnime( spep_3-3 +105, 1, 111);
changeAnime( spep_3-3 +106, 1, 111);
changeAnime( spep_3-3 +107, 1, 111);
changeAnime( spep_3-3 +108, 1, 111);
changeAnime( spep_3-3 +109, 1, 111);
changeAnime( spep_3-3 +110, 1, 111);
changeAnime( spep_3-3 +111, 1, 111);
changeAnime( spep_3-3 +112, 1, 111);
changeAnime( spep_3-3 +113, 1, 111);
changeAnime( spep_3-3 +114, 1, 111);
changeAnime( spep_3-3 +115, 1, 111);
changeAnime( spep_3-3 +116, 1, 111);
changeAnime( spep_3-3 +117, 1, 111);
changeAnime( spep_3-3 +118, 1, 111);
changeAnime( spep_3-3 +119, 1, 111);
changeAnime( spep_3-3 +120, 1, 111);
changeAnime( spep_3-3 +121, 1, 111);
changeAnime( spep_3-3 +122, 1, 111);
changeAnime( spep_3-3 +123, 1, 111);
changeAnime( spep_3-3 +124, 1, 111);
changeAnime( spep_3-3 +125, 1, 111);
changeAnime( spep_3-3 +126, 1, 111);
changeAnime( spep_3-3 +127, 1, 111);
changeAnime( spep_3-3 +128, 1, 111);
changeAnime( spep_3-3 +129, 1, 111);
changeAnime( spep_3-3 +130, 1, 111);
changeAnime( spep_3-3 +131, 1, 111);
changeAnime( spep_3-3 +132, 1, 111);
changeAnime( spep_3-3 +133, 1, 111);
changeAnime( spep_3-3 +134, 1, 111);
changeAnime( spep_3-3 +135, 1, 111);
changeAnime( spep_3-3 +136, 1, 111);
changeAnime( spep_3-3 +137, 1, 111);
changeAnime( spep_3-3 +138, 1, 111);
changeAnime( spep_3-3 +139, 1, 111);
changeAnime( spep_3-3 +140, 1, 111);
changeAnime( spep_3-3 +141, 1, 111);


setMoveKey( spep_3-3 + 96, 1, 776, -265.1 , 0 );
setMoveKey( spep_3-3 + 98, 1, 738.3, -254.8 , 0 );
setMoveKey( spep_3-3 + 100, 1, 700.5, -244.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, 662.8, -234.2 , 0 );
setMoveKey( spep_3-3 + 104, 1, 625.1, -224 , 0 );
setMoveKey( spep_3-3 + 106, 1, 587.4, -213.7 , 0 );
setMoveKey( spep_3-3 + 108, 1, 549.7, -203.4 , 0 );
setMoveKey( spep_3-3 + 110, 1, 511.9, -193.1 , 0 );
setMoveKey( spep_3-3 + 112, 1, 474.2, -182.8 , 0 );
setMoveKey( spep_3-3 + 114, 1, 436.5, -172.6 , 0 );
setMoveKey( spep_3-3 + 116, 1, 398.8, -162.3 , 0 );
setMoveKey( spep_3-3 + 118, 1, 381.2, -161.7 , 0 );
setMoveKey( spep_3-3 + 120, 1, 363.5, -161.1 , 0 );
setMoveKey( spep_3-3 + 122, 1, 345.9, -160.5 , 0 );
setMoveKey( spep_3-3 + 124, 1, 328.3, -159.9 , 0 );
setMoveKey( spep_3-3 + 126, 1, 310.6, -159.3 , 0 );
setMoveKey( spep_3-3 + 128, 1, 293, -158.6 , 0 );
setMoveKey( spep_3-3 + 130, 1, 275.4, -158 , 0 );
setMoveKey( spep_3-3 + 132, 1, 257.7, -157.4 , 0 );
setMoveKey( spep_3-3 + 134, 1, 240.1, -156.8 , 0 );
setMoveKey( spep_3-3 + 136, 1, 222.5, -156.2 , 0 );
setMoveKey( spep_3-3 + 138, 1, 204.8, -155.6 , 0 );
setMoveKey( spep_3-3 + 140, 1, 187.2, -155 , 0 );
setMoveKey( spep_3-3 + 141, 1, 169.6, -154.4 , 0 );

setScaleKey( spep_3-3 + 96, 1, 2.54, 2.54 );
setScaleKey( spep_3-3 + 98, 1, 2.52, 2.52 );
setScaleKey( spep_3-3 + 100, 1, 2.49, 2.49 );
setScaleKey( spep_3-3 + 102, 1, 2.47, 2.47 );
setScaleKey( spep_3-3 + 104, 1, 2.44, 2.44 );
setScaleKey( spep_3-3 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_3-3 + 108, 1, 2.39, 2.39 );
setScaleKey( spep_3-3 + 110, 1, 2.37, 2.37 );
setScaleKey( spep_3-3 + 112, 1, 2.34, 2.34 );
setScaleKey( spep_3-3 + 114, 1, 2.32, 2.32 );
setScaleKey( spep_3-3 + 116, 1, 2.29, 2.29 );
setScaleKey( spep_3-3 + 141, 1, 2.29, 2.29 );

setRotateKey( spep_3-3 + 96, 1, 0 );
setRotateKey( spep_3-3 + 141, 1, 0 );

--SE
--ヒット飛び込む
SE014 = playSeVer2( spep_3 + 0, 1183, "",spep_3 + 116, 0, 36, -1);
setSeVolumeByWorkId( spep_3 + 0, SE014, 77 );
SE015 = playSeVer2( spep_3 + 0, 1227, "",spep_3 + 184, 0, 80, -1);
SE016 = playSeVer2( spep_3 + 0, 1264, "",spep_3 + 184, 22, 82, -1);
setSeVolumeByWorkId( spep_3 + 0, SE016, 74 );
SE017 = playSeVer2( spep_3 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE017, 78 );
SE018 = playSeVer2( spep_3 + 0, 1259, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 18, 1329, "",spep_3 + 184, 26, 86, -1);
setSeVolumeByWorkId( spep_3 + 18, SE013, 143 );
setStartTimeMs( SE013,  533 );
setPitch( spep_3 + 18, SE013, 300 );
setTimeStretch( SE013, 1.2, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 150, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 138; 
------------------------------------------------------
--格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 120, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_f, 0 );
setEffRotateKey( spep_4 + 120, fighting_f, 0 );
setEffAlphaKey( spep_4 + 0, fighting_f,0 );
setEffAlphaKey( spep_4 + 2, fighting_f,0 );
setEffAlphaKey( spep_4 + 3, fighting_f,255 );
setEffAlphaKey( spep_4 + 118, fighting_f, 255 );
setEffAlphaKey( spep_4 + 119, fighting_f, 255 );
setEffAlphaKey( spep_4 + 120, fighting_f, 0 );

--敵の動き

setDisp( spep_4 + 0, 1, 1);

changeAnime( spep_4 + 0, 1, 111 );
changeAnime( spep_4 + 1, 1, 110 );
changeAnime( spep_4-3 + 22, 1, 109 );
changeAnime( spep_4-3 + 38, 1, 108 );
changeAnime( spep_4-3 + 60, 1, 106 );

setMoveKey( spep_4 + 0, 1, 1766, -336 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 1502.2, -359.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, 1260.7, -381.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, 1041, -401 , 0 );
setMoveKey( spep_4-3 + 8, 1, 906.7, -398.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, 842, -378.2 , 0 );
setMoveKey( spep_4-3 + 12, 1, 785.4, -360.6 , 0 );
setMoveKey( spep_4-3 + 14, 1, 737.2, -345.6 , 0 );
setMoveKey( spep_4-3 + 16, 1, 697.1, -333 , 0 );
setMoveKey( spep_4-3 + 18, 1, 665.4, -323 , 0 );
setMoveKey( spep_4-3 + 21, 1, 641.8, -315.6 , 0 );
setMoveKey( spep_4-3 + 22, 1, 93.8, -99.9 , 0 );
setMoveKey( spep_4-3 + 24, 1, 89.4, -91.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 85, -83.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 80.6, -74.7 , 0 );
setMoveKey( spep_4-3 + 30, 1, 76.2, -66.3 , 0 );
setMoveKey( spep_4-3 + 32, 1, 71.7, -57.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, 67.3, -49.5 , 0 );
setMoveKey( spep_4-3 + 37, 1, 63, -41.1 , 0 );
setMoveKey( spep_4-3 + 38, 1, 92.4, 14.9 , 0 );
setMoveKey( spep_4-3 + 40, 1, 94.9, 4.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, 75.1, 18.8 , 0 );
setMoveKey( spep_4-3 + 44, 1, 72.5, 18.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 70, 19.1 , 0 );
setMoveKey( spep_4-3 + 48, 1, 67.4, 19.3 , 0 );
setMoveKey( spep_4-3 + 50, 1, 70.5, 23 , 0 );
setMoveKey( spep_4-3 + 52, 1, 73.6, 26.7 , 0 );
setMoveKey( spep_4-3 + 54, 1, 76.7, 30.4 , 0 );
setMoveKey( spep_4-3 + 56, 1, 73, 35.3 , 0 );
setMoveKey( spep_4-3 + 59, 1, 69.3, 40.1 , 0 );
setMoveKey( spep_4-3 + 60, 1, -51.3, 23.6 , 0 );
setMoveKey( spep_4-3 + 62, 1, -84.8, 14.3 , 0 );
setMoveKey( spep_4-3 + 64, 1, -51.5, -2.2 , 0 );
setMoveKey( spep_4-3 + 66, 1, -53.1, 16.2 , 0 );
setMoveKey( spep_4-3 + 68, 1, -51.5, 17.2 , 0 );
setMoveKey( spep_4-3 + 70, 1, -49.8, 18.1 , 0 );
setMoveKey( spep_4-3 + 72, 1, -55, 15.7 , 0 );
setMoveKey( spep_4-3 + 74, 1, -60.1, 13.2 , 0 );
setMoveKey( spep_4-3 + 76, 1, -65.3, 10.8 , 0 );
setMoveKey( spep_4-3 + 78, 1, -65.6, 80.2 , 0 );
setMoveKey( spep_4-3 + 80, 1, -84.4, 97.4 , 0 );
setMoveKey( spep_4-3 + 82, 1, -55.9, 76 , 0 );
setMoveKey( spep_4-3 + 84, 1, -79.7, 77.4 , 0 );
setMoveKey( spep_4-3 + 86, 1, -68.6, 74.3 , 0 );
setMoveKey( spep_4-3 + 88, 1, -57.6, 71.4 , 0 );
setMoveKey( spep_4-3 + 90, 1, -54.1, 73.7 , 0 );
setMoveKey( spep_4-3 + 92, 1, -50.2, 75.9 , 0 );
setMoveKey( spep_4-3 + 94, 1, -46.6, 78.2 , 0 );
setMoveKey( spep_4-3 + 96, 1, 36.8, 107.5 , 0 );
setMoveKey( spep_4-3 + 98, 1, 18.3, 103.8 , 0 );
setMoveKey( spep_4-3 + 100, 1, 25.9, 121.1 , 0 );
setMoveKey( spep_4-3 + 102, 1, 12.4, 96.4 , 0 );
setMoveKey( spep_4-3 + 104, 1, 5.6, 90.6 , 0 );
setMoveKey( spep_4-3 + 106, 1, -1.3, 84.7 , 0 );
setMoveKey( spep_4-3 + 108, 1, -8.3, 78.8 , 0 );
setMoveKey( spep_4-3 + 110, 1, -8.3, 81.3 , 0 );
setMoveKey( spep_4-3 + 112, 1, -8.6, 83.9 , 0 );
setMoveKey( spep_4-3 + 114, 1, 36.7, 32.8 , 0 );
setMoveKey( spep_4-3 + 116, 1, 42.5, 9.5 , 0 );
setMoveKey( spep_4-3 + 118, 1, 13.4, 14.1 , 0 );
setMoveKey( spep_4-3 + 120, 1, 17.3, 23.9 , 0 );
setMoveKey( spep_4-3 + 122, 1, 35.5, 12.7 , 0 );
setMoveKey( spep_4 + 120, 1, 35.5, 12.7 , 0 );
setMoveKey( spep_4 + 121, 1, 18.1, -506.7 , 0 );

setScaleKey( spep_4 + 0, 1, 11.04, 11.04 );
--setScaleKey( spep_4-3 + 2, 1, 10.9, 10.9 );
setScaleKey( spep_4-3 + 4, 1, 10.75, 10.75 );
setScaleKey( spep_4-3 + 6, 1, 10.62, 10.62 );
setScaleKey( spep_4-3 + 8, 1, 10.48, 10.48 );
setScaleKey( spep_4-3 + 10, 1, 10.33, 10.33 );
setScaleKey( spep_4-3 + 12, 1, 10.19, 10.19 );
setScaleKey( spep_4-3 + 14, 1, 10.08, 10.08 );
setScaleKey( spep_4-3 + 16, 1, 9.99, 9.99 );
setScaleKey( spep_4-3 + 18, 1, 9.91, 9.91 );
setScaleKey( spep_4-3 + 21, 1, 9.86, 9.86 );
setScaleKey( spep_4-3 + 22, 1, 2.8, 2.8 );
setScaleKey( spep_4-3 + 37, 1, 2.8, 2.8 );
setScaleKey( spep_4-3 + 38, 1, 2.75, 2.75 );
setScaleKey( spep_4-3 + 40, 1, 2.75, 2.75 );
setScaleKey( spep_4-3 + 42, 1, 2.74, 2.74 );
setScaleKey( spep_4-3 + 46, 1, 2.74, 2.74 );
setScaleKey( spep_4-3 + 48, 1, 2.73, 2.73 );
setScaleKey( spep_4-3 + 52, 1, 2.73, 2.73 );
setScaleKey( spep_4-3 + 54, 1, 2.72, 2.72 );
setScaleKey( spep_4-3 + 59, 1, 2.72, 2.72 );
setScaleKey( spep_4-3 + 60, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 76, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 78, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 80, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 82, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 84, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 86, 1, 2.31, 2.31 );
setScaleKey( spep_4-3 + 88, 1, 2.34, 2.34 );
setScaleKey( spep_4-3 + 90, 1, 2.37, 2.37 );
setScaleKey( spep_4-3 + 92, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 94, 1, 2.43, 2.43 );
setScaleKey( spep_4-3 + 96, 1, 2.45, 2.45 );
setScaleKey( spep_4-3 + 98, 1, 2.48, 2.48 );
setScaleKey( spep_4-3 + 100, 1, 2.51, 2.51 );
setScaleKey( spep_4-3 + 102, 1, 2.54, 2.54 );
setScaleKey( spep_4-3 + 104, 1, 2.57, 2.57 );
setScaleKey( spep_4-3 + 106, 1, 2.59, 2.59 );
setScaleKey( spep_4-3 + 108, 1, 2.62, 2.62 );
setScaleKey( spep_4-3 + 110, 1, 2.65, 2.65 );
setScaleKey( spep_4-3 + 112, 1, 2.68, 2.68 );
setScaleKey( spep_4-3 + 114, 1, 2.7, 2.7 );
setScaleKey( spep_4-3 + 116, 1, 2.73, 2.73 );
setScaleKey( spep_4-3 + 118, 1, 2.76, 2.76 );
setScaleKey( spep_4-3 + 120, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 122, 1, 2.82, 2.82 );
setScaleKey( spep_4 + 120, 1, 2.82, 2.82 );
setScaleKey( spep_4 + 121, 1, 6.49, 6.49 );

setRotateKey( spep_4 + 0, 1, 19.3 );
--setRotateKey( spep_4-3 + 2, 1, 20 );
setRotateKey( spep_4-3 + 4, 1, 20.5 );
setRotateKey( spep_4-3 + 6, 1, 21 );
setRotateKey( spep_4-3 + 8, 1, 21.5 );
setRotateKey( spep_4-3 + 10, 1, 22 );
setRotateKey( spep_4-3 + 12, 1, 22.5 );
setRotateKey( spep_4-3 + 14, 1, 22.9 );
setRotateKey( spep_4-3 + 16, 1, 23.2 );
setRotateKey( spep_4-3 + 18, 1, 23.5 );
setRotateKey( spep_4-3 + 21, 1, 23.7 );
setRotateKey( spep_4-3 + 22, 1, -3 );
setRotateKey( spep_4-3 + 37, 1, -3 );
setRotateKey( spep_4-3 + 38, 1, -2.5 );
setRotateKey( spep_4-3 + 40, 1, -2.3 );
setRotateKey( spep_4-3 + 42, 1, -1.9 );
setRotateKey( spep_4-3 + 44, 1, -1.6 );
setRotateKey( spep_4-3 + 46, 1, -1.3 );
setRotateKey( spep_4-3 + 48, 1, -0.9 );
setRotateKey( spep_4-3 + 50, 1, -0.6 );
setRotateKey( spep_4-3 + 52, 1, -0.3 );
setRotateKey( spep_4-3 + 54, 1, 0.1 );
setRotateKey( spep_4-3 + 56, 1, 0.4 );
setRotateKey( spep_4-3 + 59, 1, 0.7 );
setRotateKey( spep_4-3 + 60, 1, -70.4 );
setRotateKey( spep_4-3 + 62, 1, -70.3 );
setRotateKey( spep_4-3 + 76, 1, -70.3 );
setRotateKey( spep_4-3 + 78, 1, -50.6 );
setRotateKey( spep_4-3 + 94, 1, -50.6 );
setRotateKey( spep_4-3 + 96, 1, -48.6 );
setRotateKey( spep_4-3 + 122, 1, -48.6 );
setRotateKey( spep_4 + 120, 1, -48.6 );
setRotateKey( spep_4 + 121, 1, -65.9 );

--SE
--パンチ避ける
SE019 = playSeVer2( spep_4 + 0, 1264, "",spep_4 + 94, 0, 56, 0.5);
setSeVolumeByWorkId( spep_4 + 0, SE019, 130 );
setPitch( spep_4 + 0, SE019, 200 );
setTimeStretch( SE019, 1.13, 30, 4 );
setBandpassFilter( spep_4 + 0, SE019, 600, 24000 );
SE020 = playSeVer2( spep_4 + 0, 1307, "",spep_4 + 94, 0, 52, 0.5);
setSeVolumeByWorkId( spep_4 + 0, SE020, 186 );

--振りかぶる
SE021 = playSeVer2( spep_4 + 20, 1003, "", 0, 0, 0, -1);

--ヒットラッシュ
SE022 = playSeVer2( spep_4 + 36, 1009, "", spep_4 + 36+17, 0, 4, -1);
setSeVolumeByWorkId( spep_4 + 36, SE022, 81 );
SE023 = playSeVer2( spep_4 + 36, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 36, SE023, 88 );
SE024 = playSeVer2( spep_4 + 36, 1110, "", spep_4 + 36+17, 0, 4, -1);
setSeVolumeByWorkId( spep_4 + 36, SE024, 85 );
SE025 = playSeVer2( spep_4 + 58, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_4 + 58, 1000, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 72, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_4 + 72, 1000, "", 0, 0, 0, -1);
setPitch( spep_4 + 72, SE028, 200 );
setTimeStretch( SE028, 1.13, 30, 4 );
SE029 = playSeVer2( spep_4 + 72, 1010, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_4 + 92, 1110, "", 0, 0, 0, -1);
setPitch( spep_4 + 92, SE030, -200 );
setTimeStretch( SE030, 0.87, 30, 4 );
SE031 = playSeVer2( spep_4 + 92, 1000, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_4 + 112, 1110, "", 0, 0, 0, -1);
setPitch( spep_4 + 112, SE032, -100 );
setTimeStretch( SE032, 0.93, 30, 4 );
SE033 = playSeVer2( spep_4 + 112, 1000, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_4 + 112, 1012, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 124, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 122;
------------------------------------------------------
--パンチヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 56, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 54, hit_f, 255 );
setEffAlphaKey( spep_5 + 54, hit_f, 255 );
setEffAlphaKey( spep_5 + 55, hit_f, 0 );

--敵の動き
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 16, 1, 5 );

setMoveKey( spep_5 + 0, 1, 18.1, -506.7 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 15.7, -502.1 , 0 );
setMoveKey( spep_5-3 + 4, 1, 13.3, -497.5 , 0 );
setMoveKey( spep_5-3 + 6, 1, 10.8, -492.9 , 0 );
setMoveKey( spep_5-3 + 8, 1, 8.3, -488.3 , 0 );
setMoveKey( spep_5-3 + 10, 1, 5.9, -483.7 , 0 );
setMoveKey( spep_5-3 + 12, 1, 3.5, -479.1 , 0 );
setMoveKey( spep_5-3 + 15, 1, 1, -474.5 , 0 );
setMoveKey( spep_5-3 + 16, 1, 30.2, 71.6 , 0 );
setMoveKey( spep_5-3 + 18, 1, 36.4, 83 , 0 );
setMoveKey( spep_5-3 + 20, 1, 42.8, 93.7 , 0 );
setMoveKey( spep_5-3 + 22, 1, 18.8, 90.1 , 0 );
setMoveKey( spep_5-3 + 24, 1, -5, 85.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 8.7, 121.8 , 0 );
setMoveKey( spep_5-3 + 28, 1, 22.6, 157 , 0 );
setMoveKey( spep_5-3 + 30, 1, 6.1, 171.1 , 0 );
setMoveKey( spep_5-3 + 32, 1, -10.2, 184.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, -19.6, 204 , 0 );
setMoveKey( spep_5-3 + 36, 1, -28.7, 222.8 , 0 );
setMoveKey( spep_5-3 + 38, 1, -27.6, 234 , 0 );
setMoveKey( spep_5-3 + 40, 1, -26.2, 244.6 , 0 );
setMoveKey( spep_5-3 + 42, 1, -24.7, 251 , 0 );
setMoveKey( spep_5-3 + 44, 1, -22.9, 256.7 , 0 );
setMoveKey( spep_5-3 + 46, 1, -21, 261.6 , 0 );
setMoveKey( spep_5-3 + 48, 1, -18.9, 265.9 , 0 );
setMoveKey( spep_5-3 + 50, 1, -16.7, 269.3 , 0 );
setMoveKey( spep_5-3 + 52, 1, -14.2, 272.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, -11.6, 274.1 , 0 );
setMoveKey( spep_5-3 + 56, 1, -8.8, 275.4 , 0 );
setMoveKey( spep_5-3 + 57, 1, -5.8, 275.9 , 0 );

setScaleKey( spep_5 + 0, 1, 6.49, 6.49 );
--setScaleKey( spep_5-3 + 2, 1, 6.69, 6.69 );
setScaleKey( spep_5-3 + 4, 1, 6.89, 6.89 );
setScaleKey( spep_5-3 + 6, 1, 7.09, 7.09 );
setScaleKey( spep_5-3 + 8, 1, 7.29, 7.29 );
setScaleKey( spep_5-3 + 10, 1, 7.49, 7.49 );
setScaleKey( spep_5-3 + 12, 1, 7.69, 7.69 );
setScaleKey( spep_5-3 + 15, 1, 7.88, 7.88 );
setScaleKey( spep_5-3 + 16, 1, 3.86, 3.86 );
setScaleKey( spep_5-3 + 18, 1, 3.56, 3.56 );
setScaleKey( spep_5-3 + 20, 1, 3.26, 3.26 );
setScaleKey( spep_5-3 + 22, 1, 2.98, 2.98 );
setScaleKey( spep_5-3 + 24, 1, 2.72, 2.72 );
setScaleKey( spep_5-3 + 26, 1, 2.47, 2.47 );
setScaleKey( spep_5-3 + 28, 1, 2.23, 2.23 );
setScaleKey( spep_5-3 + 30, 1, 2.01, 2.01 );
setScaleKey( spep_5-3 + 32, 1, 1.81, 1.81 );
setScaleKey( spep_5-3 + 34, 1, 1.62, 1.62 );
setScaleKey( spep_5-3 + 36, 1, 1.45, 1.45 );
setScaleKey( spep_5-3 + 38, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 40, 1, 1.14, 1.14 );
setScaleKey( spep_5-3 + 42, 1, 1.01, 1.01 );
setScaleKey( spep_5-3 + 44, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 46, 1, 0.8, 0.8 );
setScaleKey( spep_5-3 + 48, 1, 0.72, 0.72 );
setScaleKey( spep_5-3 + 50, 1, 0.65, 0.65 );
setScaleKey( spep_5-3 + 52, 1, 0.6, 0.6 );
setScaleKey( spep_5-3 + 54, 1, 0.56, 0.56 );
setScaleKey( spep_5-3 + 56, 1, 0.54, 0.54 );
setScaleKey( spep_5-3 + 57, 1, 0.53, 0.53 );

setRotateKey( spep_5 + 0, 1, -65.9 );
--setRotateKey( spep_5-3 + 2, 1, -65.6 );
setRotateKey( spep_5-3 + 4, 1, -65.2 );
setRotateKey( spep_5-3 + 6, 1, -64.9 );
setRotateKey( spep_5-3 + 8, 1, -64.5 );
setRotateKey( spep_5-3 + 10, 1, -64.2 );
setRotateKey( spep_5-3 + 12, 1, -63.8 );
setRotateKey( spep_5-3 + 15, 1, -63.5 );
setRotateKey( spep_5-3 + 16, 1, 36.4 );
setRotateKey( spep_5-3 + 18, 1, 30.8 );
setRotateKey( spep_5-3 + 20, 1, 25.5 );
setRotateKey( spep_5-3 + 22, 1, 20.4 );
setRotateKey( spep_5-3 + 24, 1, 15.6 );
setRotateKey( spep_5-3 + 26, 1, 11 );
setRotateKey( spep_5-3 + 28, 1, 6.8 );
setRotateKey( spep_5-3 + 30, 1, 2.8 );
setRotateKey( spep_5-3 + 32, 1, -0.9 );
setRotateKey( spep_5-3 + 34, 1, -4.4 );
setRotateKey( spep_5-3 + 36, 1, -7.5 );
setRotateKey( spep_5-3 + 38, 1, -10.4 );
setRotateKey( spep_5-3 + 40, 1, -13 );
setRotateKey( spep_5-3 + 42, 1, -15.4 );
setRotateKey( spep_5-3 + 44, 1, -17.4 );
setRotateKey( spep_5-3 + 46, 1, -19.2 );
setRotateKey( spep_5-3 + 48, 1, -20.7 );
setRotateKey( spep_5-3 + 50, 1, -22 );
setRotateKey( spep_5-3 + 52, 1, -22.9 );
setRotateKey( spep_5-3 + 54, 1, -23.6 );
setRotateKey( spep_5-3 + 56, 1, -24 );
setRotateKey( spep_5-3 + 57, 1, -24.2 );

--SE
--強パンチ
SE035 = playSeVer2( spep_5 + 12, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12, SE035, 89 );
SE036 = playSeVer2( spep_5 + 14, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE037 = playSeVer2( spep_5 + 26, 1183, "",spep_5 + 108, 0, 28, -1);
setSeVolumeByWorkId( spep_5 + 26, SE037, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 56; 
------------------------------------------------------
--瞬間移動→振り向いてブルーに変身
------------------------------------------------------

--敵の動き
setDisp( spep_6-1 + 38-2, 1, 0 );

changeAnime( spep_6 + 0-1, 1, 106 );

setMoveKey( spep_6 + 0-1, 1, -196.2, -193 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -221.9, -213.6 , 0 );
setMoveKey( spep_6-3 + 4, 1, -196.2, -193 , 0 );
setMoveKey( spep_6-3 + 6, 1, -171.8, -177.2 , 0 );
setMoveKey( spep_6-3 + 8, 1, -148.2, -162.3 , 0 );
setMoveKey( spep_6-3 + 10, 1, -129.8, -147.7 , 0 );
setMoveKey( spep_6-3 + 12, 1, -112.2, -133.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, -94.4, -117 , 0 );
setMoveKey( spep_6-3 + 16, 1, -77.4, -101 , 0 );
setMoveKey( spep_6-3 + 18, 1, -57.9, -85.3 , 0 );
setMoveKey( spep_6-3 + 20, 1, -39.5, -70.2 , 0 );
setMoveKey( spep_6-3 + 22, 1, -22.5, -60.4 , 0 );
setMoveKey( spep_6-3 + 24, 1, -6.5, -51.4 , 0 );
setMoveKey( spep_6-3 + 26, 1, 2.7, -37.1 , 0 );
setMoveKey( spep_6-3 + 28, 1, 11.1, -23.6 , 0 );
setMoveKey( spep_6-3 + 30, 1, 30.3, -22.5 , 0 );
setMoveKey( spep_6-3 + 32, 1, 32.9, -6.5 , 0 );
setMoveKey( spep_6-3 + 34, 1, 49, 7.3 , 0 );
setMoveKey( spep_6-3 + 36, 1, 66, 6.8 , 0 );
setMoveKey( spep_6-1 + 38, 1, 70.5, 7.5 , 0 );

setScaleKey( spep_6 + 0-1, 1, 2.25, 2.25 );
setScaleKey( spep_6-1 + 38, 1, 2.25, 2.25 );

setRotateKey( spep_6 + 0-1, 1, -16.8 );
setRotateKey( spep_6 + 2, 1, -17 );
setRotateKey( spep_6-1 + 38, 1, -17 );

--SE
--瞬間移動
SE038 = playSeVer2( spep_6 + 8, 1109, "", 0, 0, 0, -1);

--悟空振りかぶる
SE039 = playSeVer2( spep_6 + 38, 1116, "",spep_6 + 86, 0, 20, -1);
SE040 = playSeVer2( spep_6 + 38, 1004, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_6 + 46, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE041,  133 );

--ブルーになる
SE042 = playSeVer2( spep_6 + 96, 1035, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 140, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 136; 
------------------------------------------------------
--パンチ連打
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_7 + 0-2, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0-2, panting_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 116-2, panting_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0-2, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116-2, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0-2, panting_f, 0 );
setEffRotateKey( spep_7 + 116-2, panting_f, 0 );
setEffAlphaKey( spep_7 + 0-2, panting_f, 255 );
setEffAlphaKey( spep_7 + 114-2, panting_f, 255 );
setEffAlphaKey( spep_7 + 115-2, panting_f, 255 );
setEffAlphaKey( spep_7 + 116-2, panting_f, 0 );

--敵の動き
setDisp( spep_7 + 0-1, 1, 1 );
--setDisp( spep_7-3 + 118, 1, 0 );

changeAnime( spep_7 + 0, 1, 106 );

setMoveKey( spep_7 + 0-1, 1, 201, 173.5 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 192.2, 160.5 , 0 );
setMoveKey( spep_7-3 + 4, 1, 183.2, 147.6 , 0 );
setMoveKey( spep_7-3 + 6, 1, 174.3, 134.7 , 0 );
setMoveKey( spep_7-3 + 8, 1, 165.4, 121.8 , 0 );
setMoveKey( spep_7-3 + 10, 1, 156.5, 108.9 , 0 );
setMoveKey( spep_7-3 + 12, 1, 147.6, 96 , 0 );
setMoveKey( spep_7-3 + 14, 1, 138.7, 83.1 , 0 );
setMoveKey( spep_7-3 + 16, 1, 129.8, 70.2 , 0 );
setMoveKey( spep_7-3 + 18, 1, 120.8, 57.3 , 0 );
setMoveKey( spep_7-3 + 20, 1, 111.9, 44.4 , 0 );
setMoveKey( spep_7-3 + 22, 1, 137.7, 53.3 , 0 );
setMoveKey( spep_7-3 + 24, 1, 115.9, 55.5 , 0 );
setMoveKey( spep_7-3 + 26, 1, 86.5, 70.8 , 0 );
setMoveKey( spep_7-3 + 28, 1, 118.3, 65.7 , 0 );
setMoveKey( spep_7-3 + 30, 1, 154.7, 54.1 , 0 );
setMoveKey( spep_7-3 + 32, 1, 143.6, 62.8 , 0 );
setMoveKey( spep_7-3 + 34, 1, 115, 73.9 , 0 );
setMoveKey( spep_7-3 + 36, 1, 113.6, 64.6 , 0 );
setMoveKey( spep_7-3 + 38, 1, 141.6, 47.2 , 0 );
setMoveKey( spep_7-3 + 40, 1, 142.4, 70.6 , 0 );
setMoveKey( spep_7-3 + 42, 1, 110.4, 94.8 , 0 );
setMoveKey( spep_7-3 + 44, 1, 119.1, 98.6 , 0 );
setMoveKey( spep_7-3 + 46, 1, 142.5, 98.7 , 0 );
setMoveKey( spep_7-3 + 48, 1, 138.7, 71.5 , 0 );
setMoveKey( spep_7-3 + 50, 1, 113.2, 63.6 , 0 );
setMoveKey( spep_7-3 + 52, 1, 121.7, 89.7 , 0 );
setMoveKey( spep_7-3 + 54, 1, 119.3, 101.9 , 0 );
setMoveKey( spep_7-3 + 56, 1, 137.3, 93.7 , 0 );
setMoveKey( spep_7-3 + 58, 1, 161.9, 88.7 , 0 );
setMoveKey( spep_7-3 + 60, 1, 159.2, 97.3 , 0 );
setMoveKey( spep_7-3 + 62, 1, 141, 102.1 , 0 );
setMoveKey( spep_7-3 + 64, 1, 143.2, 93.3 , 0 );
setMoveKey( spep_7-3 + 66, 1, 138.8, 91.3 , 0 );
setMoveKey( spep_7-3 + 68, 1, 134.5, 89.4 , 0 );
setMoveKey( spep_7-3 + 70, 1, 130.2, 87.4 , 0 );
setMoveKey( spep_7-3 + 72, 1, 125.9, 85.5 , 0 );
setMoveKey( spep_7-3 + 74, 1, 121.6, 83.5 , 0 );
setMoveKey( spep_7-3 + 76, 1, 117.3, 81.5 , 0 );
setMoveKey( spep_7-3 + 78, 1, 113, 79.6 , 0 );
setMoveKey( spep_7-3 + 80, 1, 108.6, 77.6 , 0 );
setMoveKey( spep_7-3 + 82, 1, 117, 72.3 , 0 );
setMoveKey( spep_7-3 + 84, 1, 156.2, 133.3 , 0 );
setMoveKey( spep_7-3 + 86, 1, 217.3, 180.8 , 0 );
setMoveKey( spep_7-3 + 88, 1, 259.6, 222.4 , 0 );
setMoveKey( spep_7-3 + 90, 1, 301.8, 263.9 , 0 );
setMoveKey( spep_7-3 + 92, 1, 346.6, 309.8 , 0 );
setMoveKey( spep_7-3 + 94, 1, 391.4, 355.6 , 0 );
setMoveKey( spep_7-3 + 96, 1, 436.2, 400.5 , 0 );
setMoveKey( spep_7-3 + 98, 1, 481, 445.5 , 0 );
setMoveKey( spep_7-3 + 100, 1, 523.3, 492.2 , 0 );
setMoveKey( spep_7-3 + 102, 1, 565.5, 538.8 , 0 );
setMoveKey( spep_7-3 + 104, 1, 607.8, 582.9 , 0 );
setMoveKey( spep_7-3 + 106, 1, 650, 627.1 , 0 );
setMoveKey( spep_7-3 + 108, 1, 692.3, 671.2 , 0 );
setMoveKey( spep_7-3 + 110, 1, 734.5, 715.3 , 0 );
setMoveKey( spep_7-3 + 112, 1, 776.8, 759.4 , 0 );
setMoveKey( spep_7-3 + 114, 1, 819, 803.5 , 0 );
setMoveKey( spep_7-3 + 116, 1, 861.3, 847.6 , 0 );
setMoveKey( spep_7-3 + 117, 1, 903.5, 891.8 , 0 );

setScaleKey( spep_7 + 0-1, 1,3.13,3.13);
setScaleKey( spep_7-3 + 4, 1, 3.11,3.11);
setScaleKey( spep_7-3 + 6, 1, 3.09,3.09);
setScaleKey( spep_7-3 + 8, 1, 3.08,3.08);
setScaleKey( spep_7-3 + 10, 1, 3.06,3.06);
setScaleKey( spep_7-3 + 12, 1, 3.05,3.05);
setScaleKey( spep_7-3 + 14, 1, 3.03,3.03);
setScaleKey( spep_7-3 + 16, 1, 3.02,3.02);
setScaleKey( spep_7-3 + 18, 1, 3.01,3.01);
setScaleKey( spep_7-3 + 20, 1, 2.99,2.99);
setScaleKey( spep_7-3 + 22, 1, 3,3);
setScaleKey( spep_7-3 + 24, 1, 3.01,3.01);
setScaleKey( spep_7-3 + 26, 1, 3.02,3.02);
setScaleKey( spep_7-3 + 28, 1, 3.02,3.02);
setScaleKey( spep_7-3 + 30, 1, 3.03,3.03);
setScaleKey( spep_7-3 + 32, 1, 3.04,3.04);
setScaleKey( spep_7-3 + 34, 1, 3.05,3.05);
setScaleKey( spep_7-3 + 36, 1, 3.06,3.06);
setScaleKey( spep_7-3 + 38, 1, 3.06,3.06);
setScaleKey( spep_7-3 + 40, 1, 3.07,3.07);
setScaleKey( spep_7-3 + 42, 1, 3.08,3.08);
setScaleKey( spep_7-3 + 44, 1, 3.09,3.09);
setScaleKey( spep_7-3 + 46, 1, 3.1,3.1);
setScaleKey( spep_7-3 + 48, 1, 3.11,3.11);
setScaleKey( spep_7-3 + 50, 1, 3.11,3.11);
setScaleKey( spep_7-3 + 52, 1, 3.12,3.12);
setScaleKey( spep_7-3 + 54, 1, 3.13,3.13);
setScaleKey( spep_7-3 + 56, 1, 3.15,3.15);
setScaleKey( spep_7-3 + 58, 1, 3.15,3.15);
setScaleKey( spep_7-3 + 60, 1, 3.16,3.16);
setScaleKey( spep_7-3 + 62, 1, 3.13,3.13);
setScaleKey( spep_7-3 + 64, 1, 3.11,3.11);
setScaleKey( spep_7-3 + 66, 1, 3.1,3.1);
setScaleKey( spep_7-3 + 68, 1, 3.08,3.08);
setScaleKey( spep_7-3 + 70, 1, 3.07,3.07);
setScaleKey( spep_7-3 + 72, 1, 3.05,3.05);
setScaleKey( spep_7-3 + 74, 1, 3.04,3.04);
setScaleKey( spep_7-3 + 76, 1, 3.02,3.02);
setScaleKey( spep_7-3 + 78, 1, 3.01,3.01);
setScaleKey( spep_7-3 + 80, 1, 2.99,2.99);
setScaleKey( spep_7-3 + 82, 1, 2.98,2.98);
setScaleKey( spep_7-3 + 84, 1, 3.5,3.5);
setScaleKey( spep_7-3 + 86, 1, 3.73,3.73);
setScaleKey( spep_7-3 + 88, 1, 3.95,3.95);
setScaleKey( spep_7-3 + 90, 1, 4.18,4.18);
setScaleKey( spep_7-3 + 92, 1, 4.42,4.42);
setScaleKey( spep_7-3 + 94, 1, 4.65,4.65);
setScaleKey( spep_7-3 + 96, 1, 4.88,4.88);
setScaleKey( spep_7-3 + 98, 1, 5.11,5.11);
setScaleKey( spep_7-3 + 100, 1, 5.34,5.34);
setScaleKey( spep_7-3 + 102, 1, 5.57,5.57);
setScaleKey( spep_7-3 + 104, 1, 5.8,5.8);
setScaleKey( spep_7-3 + 106, 1, 6.02,6.02);
setScaleKey( spep_7-3 + 108, 1, 6.25,6.25);
setScaleKey( spep_7-3 + 110, 1, 6.48,6.48);
setScaleKey( spep_7-3 + 112, 1, 6.72,6.72);
setScaleKey( spep_7-3 + 114, 1, 6.95,6.95);
setScaleKey( spep_7-3 + 116, 1, 7.18,7.18);
setScaleKey( spep_7-3 + 117, 1, 7.41,7.41);

setRotateKey( spep_7 + 0-1, 1, 69 );
--setRotateKey( spep_7-3 + 2, 1, 68.5 );
setRotateKey( spep_7-3 + 4, 1, 68 );
setRotateKey( spep_7-3 + 6, 1, 67.4 );
setRotateKey( spep_7-3 + 8, 1, 66.9 );
setRotateKey( spep_7-3 + 10, 1, 66.4 );
setRotateKey( spep_7-3 + 12, 1, 65.9 );
setRotateKey( spep_7-3 + 14, 1, 65.4 );
setRotateKey( spep_7-3 + 16, 1, 64.8 );
setRotateKey( spep_7-3 + 18, 1, 64.3 );
setRotateKey( spep_7-3 + 20, 1, 63.8 );
setRotateKey( spep_7-3 + 22, 1, 67.7 );
setRotateKey( spep_7-3 + 24, 1, 71.7 );
setRotateKey( spep_7-3 + 26, 1, 67 );
setRotateKey( spep_7-3 + 28, 1, 62.2 );
setRotateKey( spep_7-3 + 30, 1, 66.7 );
setRotateKey( spep_7-3 + 32, 1, 71.2 );
setRotateKey( spep_7-3 + 34, 1, 68.4 );
setRotateKey( spep_7-3 + 36, 1, 65.5 );
setRotateKey( spep_7-3 + 38, 1, 68 );
setRotateKey( spep_7-3 + 40, 1, 70.5 );
setRotateKey( spep_7-3 + 42, 1, 67.6 );
setRotateKey( spep_7-3 + 44, 1, 64.8 );
setRotateKey( spep_7-3 + 46, 1, 70.6 );
setRotateKey( spep_7-3 + 48, 1, 76.4 );
setRotateKey( spep_7-3 + 50, 1, 70.5 );
setRotateKey( spep_7-3 + 52, 1, 64.5 );
setRotateKey( spep_7-3 + 54, 1, 66.8 );
setRotateKey( spep_7-3 + 56, 1, 69 );
setRotateKey( spep_7-3 + 82, 1, 69 );
setRotateKey( spep_7-3 + 84, 1, 70.7 );
setRotateKey( spep_7-3 + 86, 1, 71.3 );
setRotateKey( spep_7-3 + 88, 1, 71.9 );
setRotateKey( spep_7-3 + 90, 1, 72.5 );
setRotateKey( spep_7-3 + 92, 1, 73.1 );
setRotateKey( spep_7-3 + 94, 1, 73.7 );
setRotateKey( spep_7-3 + 96, 1, 74.3 );
setRotateKey( spep_7-3 + 98, 1, 74.8 );
setRotateKey( spep_7-3 + 100, 1, 75.4 );
setRotateKey( spep_7-3 + 102, 1, 76 );
setRotateKey( spep_7-3 + 104, 1, 76.6 );
setRotateKey( spep_7-3 + 106, 1, 77.2 );
setRotateKey( spep_7-3 + 108, 1, 77.8 );
setRotateKey( spep_7-3 + 110, 1, 78.3 );
setRotateKey( spep_7-3 + 112, 1, 78.9 );
setRotateKey( spep_7-3 + 114, 1, 79.5 );
setRotateKey( spep_7-3 + 116, 1, 80.1 );
setRotateKey( spep_7-3 + 117, 1, 80.7 );

--SE
--悟空連打
SE043 = playSeVer2( spep_7 + 6, 1003, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_7 + 18, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 18, SE044, 72 );
SE045 = playSeVer2( spep_7 + 18, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 18, SE045, 91 );
SE046 = playSeVer2( spep_7 + 18, 1110, "",spep_7 + 36, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 18, SE046, 80 );
SE047 = playSeVer2( spep_7 + 26, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 26, SE047, 90 );
SE048 = playSeVer2( spep_7 + 26, 1110, "",spep_7 + 46, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 26, SE048, 80 );
setPitch( spep_7 + 26, SE048, -200 );
setTimeStretch( SE048, 0.87, 30, 4 );
SE049 = playSeVer2( spep_7 + 36, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 36, SE049, 65 );
SE050 = playSeVer2( spep_7 + 36, 1110, "",spep_7 + 56, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 36, SE050, 73 );
SE051 = playSeVer2( spep_7 + 44, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 44, SE051, 89 );
SE052 = playSeVer2( spep_7 + 44, 1110, "",spep_7 + 66, 0, 12, -1);
setSeVolumeByWorkId( spep_7 + 44, SE052, 87 );
setPitch( spep_7 + 44, SE052, 100 );
setTimeStretch( SE052, 1.07, 30, 4 );
SE053 = playSeVer2( spep_7 + 50, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 50, SE053, 95 );
SE054 = playSeVer2( spep_7 + 50, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 50, SE054, 72 );

--悟空パンチ
SE055 = playSeVer2( spep_7 + 76, 1189, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_7 + 80, 1120, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 120, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_8= spep_7 + 116; 
------------------------------------------------------
--敵が壁に激突
------------------------------------------------------
-- ** エフェクト等 ** --
clash_f = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, clash_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 76, clash_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, clash_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 76, clash_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, clash_f, 0 );
setEffRotateKey( spep_8 + 76, clash_f, 0 );
setEffAlphaKey( spep_8 + 0, clash_f, 255 );
setEffAlphaKey( spep_8 + 74, clash_f, 255 );
setEffAlphaKey( spep_8 + 75, clash_f, 255 );
setEffAlphaKey( spep_8 + 76, clash_f, 0 );

--敵の動き
setDisp( spep_8 + 0-2, 1, 1 );
setDisp( spep_8-1 + 26, 1, 0 );

changeAnime( spep_8 + 0-2, 1, 5 );

setMoveKey( spep_8 + 0-2, 1, -115.7, 113.4 , 0 );
setMoveKey( spep_8 + 0-1, 1, -115.7, 113.4 , 0 );
setMoveKey( spep_8 + 0, 1, -115.7, 113.4 , 0 );
setMoveKey( spep_8 + 2, 1, -108.1, 104.1 , 0 );
setMoveKey( spep_8 + 4, 1, -100.6, 94.9 , 0 );
setMoveKey( spep_8 + 6, 1, -93, 85.7 , 0 );
setMoveKey( spep_8 + 8, 1, -85.4, 76.6 , 0 );
setMoveKey( spep_8 + 10, 1, -77.9, 67.5 , 0 );
setMoveKey( spep_8 + 12, 1, -70.4, 58.4 , 0 );
setMoveKey( spep_8 + 14, 1, -62.9, 49.3 , 0 );
setMoveKey( spep_8 + 16, 1, -55.4, 40.4 , 0 );
setMoveKey( spep_8 + 18, 1, -47.9, 31.4 , 0 );
setMoveKey( spep_8 + 20, 1, -40.5, 22.5 , 0 );
setMoveKey( spep_8 + 22, 1, -33.1, 13.6 , 0 );
setMoveKey( spep_8 + 24, 1, -25.7, 4.8 , 0 );
setMoveKey( spep_8-2 + 26, 1, -18.3, -4 , 0 );

setScaleKey( spep_8 + 0-2, 1, 6.02, 6.02 );
setScaleKey( spep_8 + 0-1, 1, 6.02, 6.02 );
setScaleKey( spep_8 + 0, 1, 6.02, 6.02 );
setScaleKey( spep_8 + 2, 1, 5.63, 5.63 );
setScaleKey( spep_8 + 4, 1, 5.23, 5.23 );
setScaleKey( spep_8 + 6, 1, 4.83, 4.83 );
setScaleKey( spep_8 + 8, 1, 4.44, 4.44 );
setScaleKey( spep_8 + 10, 1, 4.04, 4.04 );
setScaleKey( spep_8 + 12, 1, 3.64, 3.64 );
setScaleKey( spep_8 + 14, 1, 3.25, 3.25 );
setScaleKey( spep_8 + 16, 1, 2.86, 2.86 );
setScaleKey( spep_8 + 18, 1, 2.47, 2.47 );
setScaleKey( spep_8 + 20, 1, 2.08, 2.08 );
setScaleKey( spep_8 + 22, 1, 1.69, 1.69 );
setScaleKey( spep_8 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_8-2 + 26, 1, 0.91, 0.91 );

setRotateKey( spep_8 + 0-2, 1, 58.9 );
setRotateKey( spep_8 + 0-1, 1, 58.9 );
setRotateKey( spep_8 + 0, 1, 58.9 );
setRotateKey( spep_8 + 2, 1, 61.9 );
setRotateKey( spep_8 + 4, 1, 64.9 );
setRotateKey( spep_8 + 6, 1, 67.8 );
setRotateKey( spep_8 + 8, 1, 70.7 );
setRotateKey( spep_8 + 10, 1, 73.5 );
setRotateKey( spep_8 + 12, 1, 76.3 );
setRotateKey( spep_8 + 14, 1, 79.1 );
setRotateKey( spep_8 + 16, 1, 81.9 );
setRotateKey( spep_8 + 18, 1, 84.6 );
setRotateKey( spep_8 + 20, 1, 87.2 );
setRotateKey( spep_8 + 22, 1, 89.9 );
setRotateKey( spep_8 + 24, 1, 92.5 );
setRotateKey( spep_8-2 + 26, 1, 95.1 );

--SE
--敵飛んでいく
SE057 = playSeVer2( spep_8 + 0, 1121, "",spep_8 + 48, 0, 18, -1);

--壁ぶつかる
SE058 = playSeVer2( spep_8 + 26, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 26, SE058, 95 );
SE059 = playSeVer2( spep_8 + 26, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 26, SE059, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 80, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_9= spep_8 + 76; 
------------------------------------------------------
--気弾連打
------------------------------------------------------
-- ** エフェクト等 ** --
--SE
--気弾連打
SE060 = playSeVer2( spep_9 + 0, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 0, SE060, 116 );
SE061 = playSeVer2( spep_9 + 8, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 8, SE061, 72 );
SE062 = playSeVer2( spep_9 + 10, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 10, SE062, 108 );
setPitch( spep_9 + 10, SE062, -200 );
setTimeStretch( SE062, 0.87, 30, 4 );
SE063 = playSeVer2( spep_9 + 20, 1016, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_9 + 30, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 30, SE064, 126 );
setPitch( spep_9 + 30, SE064, 200 );
setTimeStretch( SE064, 1.13, 30, 4 );
SE065 = playSeVer2( spep_9 + 40, 1016, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_9 + 50, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 50, SE066, 123 );
SE067 = playSeVer2( spep_9 + 62, 1016, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 80, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_10= spep_9 + 76; 
------------------------------------------------------
--気弾連打気弾が着弾～フィニッシュ
------------------------------------------------------

--SE
--爆発中気弾連打
SE068 = playSeVer2( spep_10 + 0, 1016, "", 0, 0, 0, -1);
setPitch( spep_10 + 0, SE068, 400 );
setTimeStretch( SE068, 1.27, 30, 4 );

--爆発
SE069 = playSeVer2( spep_10 + 0, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE069, 68 );

--爆発中気弾連打
SE070 = playSeVer2( spep_10 + 10, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 10, SE070, 115 );
SE071 = playSeVer2( spep_10 + 20, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 20, SE071, 105 );

--爆発
SE072 = playSeVer2( spep_10 + 22, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 22, SE072, 83 );

--爆発中気弾連打
SE073 = playSeVer2( spep_10 + 28, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 28, SE073, 138 );
setPitch( spep_10 + 28, SE073, -200 );
setTimeStretch( SE073, 0.87, 30, 4 );
SE074 = playSeVer2( spep_10 + 38, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 38, SE074, 123 );
SE075 = playSeVer2( spep_10 + 52, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 52, SE075, 122 );

--爆発
SE076 = playSeVer2( spep_10 + 54, 1024, "", 0, 0, 0, -1);

--爆発中気弾連打
SE077 = playSeVer2( spep_10 + 60, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 60, SE077, 93 );
setPitch( spep_10 + 60, SE077, -200 );
setTimeStretch( SE077, 0.87, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 + 0, 0, 150, 0, 0, 0, 0, 255 );  --白 背景

--終わり
dealDamage(spep_10+50);
endPhase( spep_10 + 144 -2);
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ヒット＆悟空 正面カット
------------------------------------------------------
--はじめの準備
spep_0=0;

setupMovie(0 , SP_01, 0, 1);

--顔カットインのタイミング指定
spep_x=spep_0 +18;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 124, 0, 4, -1);
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );

--入り
SE003 = playSeVer2( spep_0 + 6, 8, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 63 );

--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 63 );

--白フェード
entryFade( spep_0 + 112, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  

--次の準備
spep_1=spep_0+118;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
SE_CUTIN = playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94+2;

------------------------------------------------------
--ヒットが踏み込み突進
------------------------------------------------------
-- ** エフェクト等 ** --
stepping = entryEffect( spep_2 + 0-2, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0-2, stepping, 0, 0, 0 );
setEffMoveKey( spep_2 + 56-2, stepping, 0, 0, 0 );
setEffScaleKey( spep_2 + 0-2, stepping, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56-2, stepping, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0-2, stepping, 0 );
setEffRotateKey( spep_2 + 56-2, stepping, 0 );
setEffAlphaKey( spep_2 + 0-2, stepping, 255 );
setEffAlphaKey( spep_2 + 54-2, stepping, 255 );
setEffAlphaKey( spep_2 + 55-2, stepping, 255 );
setEffAlphaKey( spep_2 + 56-2, stepping, 0 );

--SE
--ヒット踏み切る
SE010 = playSeVer2( spep_2 + 18, 1000, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 18, 9, "",spep_2 + 120, 0, 70, -1);
SE012 = playSeVer2( spep_2 + 18, 1182, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 60, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    
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

-- ** 次の準備 ** --
spep_3= spep_2 + 56; 
------------------------------------------------------
--ヒット 突進→振りかぶる
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 140, rush_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 140, rush_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_f, 0 );
setEffRotateKey( spep_3 + 140, rush_f, 0 );
setEffAlphaKey( spep_3 + 0, rush_f, 255 );
setEffAlphaKey( spep_3 + 138, rush_f, 255 );
setEffAlphaKey( spep_3 + 139, rush_f, 255 );
setEffAlphaKey( spep_3 + 140, rush_f, 0 );

--敵の動き
setDisp( spep_3-3 + 96, 1, 1);
setDisp( spep_3-3 + 141, 1, 0);

changeAnime( spep_3-3 + 96, 1,NaN );
changeAnime( spep_3-3 + 97, 1,NaN );
changeAnime( spep_3-3 +98, 1,NaN );
changeAnime( spep_3-3 +99, 1,NaN );
changeAnime( spep_3-3 +100, 1,NaN );
changeAnime( spep_3-3 +101, 1,NaN );
changeAnime( spep_3-3 +102, 1,NaN );
changeAnime( spep_3-3 +103, 1,NaN );
changeAnime( spep_3-3 +104, 1,NaN );
changeAnime( spep_3-3 +105, 1,NaN );
changeAnime( spep_3-3 +106, 1,NaN );
changeAnime( spep_3-3 +107, 1,NaN );
changeAnime( spep_3-3 +108, 1,NaN );
changeAnime( spep_3-3 +109, 1,NaN );
changeAnime( spep_3-3 +110, 1,NaN );
changeAnime( spep_3-3 +111, 1,NaN );
changeAnime( spep_3-3 +112, 1,NaN );
changeAnime( spep_3-3 +113, 1,NaN );
changeAnime( spep_3-3 +114, 1,NaN );
changeAnime( spep_3-3 +115, 1,NaN );
changeAnime( spep_3-3 +116, 1,NaN );
changeAnime( spep_3-3 +117, 1,NaN );
changeAnime( spep_3-3 +118, 1,NaN );
changeAnime( spep_3-3 +119, 1,NaN );
changeAnime( spep_3-3 +120, 1,NaN );
changeAnime( spep_3-3 +121, 1,NaN );
changeAnime( spep_3-3 +122, 1,NaN );
changeAnime( spep_3-3 +123, 1,NaN );
changeAnime( spep_3-3 +124, 1,NaN );
changeAnime( spep_3-3 +125, 1,NaN );
changeAnime( spep_3-3 +126, 1,NaN );
changeAnime( spep_3-3 +127, 1,NaN );
changeAnime( spep_3-3 +128, 1,NaN );
changeAnime( spep_3-3 +129, 1,NaN );
changeAnime( spep_3-3 +130, 1,NaN );
changeAnime( spep_3-3 +131, 1,NaN );
changeAnime( spep_3-3 +132, 1,NaN );
changeAnime( spep_3-3 +133, 1,NaN );
changeAnime( spep_3-3 +134, 1,NaN );
changeAnime( spep_3-3 +135, 1,NaN );
changeAnime( spep_3-3 +136, 1,NaN );
changeAnime( spep_3-3 +137, 1,NaN );
changeAnime( spep_3-3 +138, 1,NaN );
changeAnime( spep_3-3 +139, 1,NaN );
changeAnime( spep_3-3 +140, 1,NaN );
changeAnime( spep_3-3 +141, 1,NaN );


setMoveKey( spep_3-3 + 96, 1, -776, -265.1 , 0 );
setMoveKey( spep_3-3 + 98, 1, -738.3, -254.8 , 0 );
setMoveKey( spep_3-3 + 100, 1, -700.5, -244.5 , 0 );
setMoveKey( spep_3-3 + 102, 1, -662.8, -234.2 , 0 );
setMoveKey( spep_3-3 + 104, 1, -625.1, -224 , 0 );
setMoveKey( spep_3-3 + 106, 1, -587.4, -213.7 , 0 );
setMoveKey( spep_3-3 + 108, 1, -549.7, -203.4 , 0 );
setMoveKey( spep_3-3 + 110, 1, -511.9, -193.1 , 0 );
setMoveKey( spep_3-3 + 112, 1, -474.2, -182.8 , 0 );
setMoveKey( spep_3-3 + 114, 1, -436.5, -172.6 , 0 );
setMoveKey( spep_3-3 + 116, 1, -398.8, -162.3 , 0 );
setMoveKey( spep_3-3 + 118, 1, -381.2, -161.7 , 0 );
setMoveKey( spep_3-3 + 120, 1, -363.5, -161.1 , 0 );
setMoveKey( spep_3-3 + 122, 1, -345.9, -160.5 , 0 );
setMoveKey( spep_3-3 + 124, 1, -328.3, -159.9 , 0 );
setMoveKey( spep_3-3 + 126, 1, -310.6, -159.3 , 0 );
setMoveKey( spep_3-3 + 128, 1, -293, -158.6 , 0 );
setMoveKey( spep_3-3 + 130, 1, -275.4, -158 , 0 );
setMoveKey( spep_3-3 + 132, 1, -257.7, -157.4 , 0 );
setMoveKey( spep_3-3 + 134, 1, -240.1, -156.8 , 0 );
setMoveKey( spep_3-3 + 136, 1, -222.5, -156.2 , 0 );
setMoveKey( spep_3-3 + 138, 1, -204.8, -155.6 , 0 );
setMoveKey( spep_3-3 + 140, 1, -187.2, -155 , 0 );
setMoveKey( spep_3-3 + 141, 1, -169.6, -154.4 , 0 );

setScaleKey( spep_3-3 + 96, 1, 2.54, 2.54 );
setScaleKey( spep_3-3 + 98, 1, 2.52, 2.52 );
setScaleKey( spep_3-3 + 100, 1, 2.49, 2.49 );
setScaleKey( spep_3-3 + 102, 1, 2.47, 2.47 );
setScaleKey( spep_3-3 + 104, 1, 2.44, 2.44 );
setScaleKey( spep_3-3 + 106, 1, 2.42, 2.42 );
setScaleKey( spep_3-3 + 108, 1, 2.39, 2.39 );
setScaleKey( spep_3-3 + 110, 1, 2.37, 2.37 );
setScaleKey( spep_3-3 + 112, 1, 2.34, 2.34 );
setScaleKey( spep_3-3 + 114, 1, 2.32, 2.32 );
setScaleKey( spep_3-3 + 116, 1, 2.29, 2.29 );
setScaleKey( spep_3-3 + 141, 1, 2.29, 2.29 );

setRotateKey( spep_3-3 + 96, 1, 0 );
setRotateKey( spep_3-3 + 141, 1, 0 );

--SE
--ヒット飛び込む
SE014 = playSeVer2( spep_3 + 0, 1183, "",spep_3 + 116, 0, 36, -1);
setSeVolumeByWorkId( spep_3 + 0, SE014, 77 );
SE015 = playSeVer2( spep_3 + 0, 1227, "",spep_3 + 184, 0, 80, -1);
SE016 = playSeVer2( spep_3 + 0, 1264, "",spep_3 + 184, 22, 82, -1);
setSeVolumeByWorkId( spep_3 + 0, SE016, 74 );
SE017 = playSeVer2( spep_3 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE017, 78 );
SE018 = playSeVer2( spep_3 + 0, 1259, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 18, 1329, "",spep_3 + 184, 26, 86, -1);
setSeVolumeByWorkId( spep_3 + 18, SE013, 143 );
setStartTimeMs( SE013,  533 );
setPitch( spep_3 + 18, SE013, 300 );
setTimeStretch( SE013, 1.2, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 150, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 138; 
------------------------------------------------------
--格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 120, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 120, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fighting_f, 0 );
setEffRotateKey( spep_4 + 120, fighting_f, 0 );
setEffAlphaKey( spep_4 + 0, fighting_f,0 );
setEffAlphaKey( spep_4 + 2, fighting_f,0 );
setEffAlphaKey( spep_4 + 3, fighting_f,255 );
setEffAlphaKey( spep_4 + 118, fighting_f, 255 );
setEffAlphaKey( spep_4 + 119, fighting_f, 255 );
setEffAlphaKey( spep_4 + 120, fighting_f, 0 );

--敵の動き

setDisp( spep_4 + 0, 1, 1);

changeAnime( spep_4 + 0, 1, 11 );
changeAnime( spep_4 + 1, 1, 10 );
changeAnime( spep_4-3 + 22, 1,9 );
changeAnime( spep_4-3 + 38, 1,8 );
changeAnime( spep_4-3 + 60, 1,6 );

setMoveKey( spep_4 + 0, 1, -1766, -336 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 1502.2, -359.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, -1260.7, -381.3 , 0 );
setMoveKey( spep_4-3 + 6, 1, -1041, -401 , 0 );
setMoveKey( spep_4-3 + 8, 1, -906.7, -398.3 , 0 );
setMoveKey( spep_4-3 + 10, 1, -842, -378.2 , 0 );
setMoveKey( spep_4-3 + 12, 1, -785.4, -360.6 , 0 );
setMoveKey( spep_4-3 + 14, 1, -737.2, -345.6 , 0 );
setMoveKey( spep_4-3 + 16, 1, -697.1, -333 , 0 );
setMoveKey( spep_4-3 + 18, 1, -665.4, -323 , 0 );
setMoveKey( spep_4-3 + 21, 1, -641.8, -315.6 , 0 );
setMoveKey( spep_4-3 + 22, 1, -93.8, -99.9 , 0 );
setMoveKey( spep_4-3 + 24, 1, -89.4, -91.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, -85, -83.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, -80.6, -74.7 , 0 );
setMoveKey( spep_4-3 + 30, 1, -76.2, -66.3 , 0 );
setMoveKey( spep_4-3 + 32, 1, -71.7, -57.9 , 0 );
setMoveKey( spep_4-3 + 34, 1, -67.3, -49.5 , 0 );
setMoveKey( spep_4-3 + 37, 1, -63, -41.1 , 0 );
setMoveKey( spep_4-3 + 38, 1, -92.4, 14.9 , 0 );
setMoveKey( spep_4-3 + 40, 1, -94.9, 4.7 , 0 );
setMoveKey( spep_4-3 + 42, 1, -75.1, 18.8 , 0 );
setMoveKey( spep_4-3 + 44, 1, -72.5, 18.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, -70, 19.1 , 0 );
setMoveKey( spep_4-3 + 48, 1, -67.4, 19.3 , 0 );
setMoveKey( spep_4-3 + 50, 1, -70.5, 23 , 0 );
setMoveKey( spep_4-3 + 52, 1, -73.6, 26.7 , 0 );
setMoveKey( spep_4-3 + 54, 1, -76.7, 30.4 , 0 );
setMoveKey( spep_4-3 + 56, 1, -73, 35.3 , 0 );
setMoveKey( spep_4-3 + 59, 1, -69.3, 40.1 , 0 );
setMoveKey( spep_4-3 + 60, 1, 51.3, 23.6 , 0 );
setMoveKey( spep_4-3 + 62, 1, 84.8, 14.3 , 0 );
setMoveKey( spep_4-3 + 64, 1, 51.5, -2.2 , 0 );
setMoveKey( spep_4-3 + 66, 1, 53.1, 16.2 , 0 );
setMoveKey( spep_4-3 + 68, 1, 51.5, 17.2 , 0 );
setMoveKey( spep_4-3 + 70, 1, 49.8, 18.1 , 0 );
setMoveKey( spep_4-3 + 72, 1, 55, 15.7 , 0 );
setMoveKey( spep_4-3 + 74, 1, 60.1, 13.2 , 0 );
setMoveKey( spep_4-3 + 76, 1, 65.3, 10.8 , 0 );
setMoveKey( spep_4-3 + 78, 1, 65.6, 80.2 , 0 );
setMoveKey( spep_4-3 + 80, 1, 84.4, 97.4 , 0 );
setMoveKey( spep_4-3 + 82, 1, 55.9, 76 , 0 );
setMoveKey( spep_4-3 + 84, 1, 79.7, 77.4 , 0 );
setMoveKey( spep_4-3 + 86, 1, 68.6, 74.3 , 0 );
setMoveKey( spep_4-3 + 88, 1, 57.6, 71.4 , 0 );
setMoveKey( spep_4-3 + 90, 1, 54.1, 73.7 , 0 );
setMoveKey( spep_4-3 + 92, 1, 50.2, 75.9 , 0 );
setMoveKey( spep_4-3 + 94, 1, 46.6, 78.2 , 0 );
setMoveKey( spep_4-3 + 96, 1, -36.8, 107.5 , 0 );
setMoveKey( spep_4-3 + 98, 1, -18.3, 103.8 , 0 );
setMoveKey( spep_4-3 + 100, 1, -25.9, 121.1 , 0 );
setMoveKey( spep_4-3 + 102, 1, -12.4, 96.4 , 0 );
setMoveKey( spep_4-3 + 104, 1, -5.6, 90.6 , 0 );
setMoveKey( spep_4-3 + 106, 1, 1.3, 84.7 , 0 );
setMoveKey( spep_4-3 + 108, 1, 8.3, 78.8 , 0 );
setMoveKey( spep_4-3 + 110, 1, 8.3, 81.3 , 0 );
setMoveKey( spep_4-3 + 112, 1, 8.6, 83.9 , 0 );
setMoveKey( spep_4-3 + 114, 1, -36.7, 32.8 , 0 );
setMoveKey( spep_4-3 + 116, 1, -42.5, 9.5 , 0 );
setMoveKey( spep_4-3 + 118, 1, -13.4, 14.1 , 0 );
setMoveKey( spep_4-3 + 120, 1, -17.3, 23.9 , 0 );
setMoveKey( spep_4-3 + 122, 1, -35.5, 12.7 , 0 );
setMoveKey( spep_4 + 120, 1, -35.5, 12.7 , 0 );
setMoveKey( spep_4 + 121, 1, -18.1, -506.7 , 0 );

setScaleKey( spep_4 + 0, 1, 11.04, 11.04 );
--setScaleKey( spep_4-3 + 2, 1, 10.9, 10.9 );
setScaleKey( spep_4-3 + 4, 1, 10.75, 10.75 );
setScaleKey( spep_4-3 + 6, 1, 10.62, 10.62 );
setScaleKey( spep_4-3 + 8, 1, 10.48, 10.48 );
setScaleKey( spep_4-3 + 10, 1, 10.33, 10.33 );
setScaleKey( spep_4-3 + 12, 1, 10.19, 10.19 );
setScaleKey( spep_4-3 + 14, 1, 10.08, 10.08 );
setScaleKey( spep_4-3 + 16, 1, 9.99, 9.99 );
setScaleKey( spep_4-3 + 18, 1, 9.91, 9.91 );
setScaleKey( spep_4-3 + 21, 1, 9.86, 9.86 );
setScaleKey( spep_4-3 + 22, 1, 2.8, 2.8 );
setScaleKey( spep_4-3 + 37, 1, 2.8, 2.8 );
setScaleKey( spep_4-3 + 38, 1, 2.75, 2.75 );
setScaleKey( spep_4-3 + 40, 1, 2.75, 2.75 );
setScaleKey( spep_4-3 + 42, 1, 2.74, 2.74 );
setScaleKey( spep_4-3 + 46, 1, 2.74, 2.74 );
setScaleKey( spep_4-3 + 48, 1, 2.73, 2.73 );
setScaleKey( spep_4-3 + 52, 1, 2.73, 2.73 );
setScaleKey( spep_4-3 + 54, 1, 2.72, 2.72 );
setScaleKey( spep_4-3 + 59, 1, 2.72, 2.72 );
setScaleKey( spep_4-3 + 60, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 76, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 78, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 80, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 82, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 84, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 86, 1, 2.31, 2.31 );
setScaleKey( spep_4-3 + 88, 1, 2.34, 2.34 );
setScaleKey( spep_4-3 + 90, 1, 2.37, 2.37 );
setScaleKey( spep_4-3 + 92, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 94, 1, 2.43, 2.43 );
setScaleKey( spep_4-3 + 96, 1, 2.45, 2.45 );
setScaleKey( spep_4-3 + 98, 1, 2.48, 2.48 );
setScaleKey( spep_4-3 + 100, 1, 2.51, 2.51 );
setScaleKey( spep_4-3 + 102, 1, 2.54, 2.54 );
setScaleKey( spep_4-3 + 104, 1, 2.57, 2.57 );
setScaleKey( spep_4-3 + 106, 1, 2.59, 2.59 );
setScaleKey( spep_4-3 + 108, 1, 2.62, 2.62 );
setScaleKey( spep_4-3 + 110, 1, 2.65, 2.65 );
setScaleKey( spep_4-3 + 112, 1, 2.68, 2.68 );
setScaleKey( spep_4-3 + 114, 1, 2.7, 2.7 );
setScaleKey( spep_4-3 + 116, 1, 2.73, 2.73 );
setScaleKey( spep_4-3 + 118, 1, 2.76, 2.76 );
setScaleKey( spep_4-3 + 120, 1, 2.79, 2.79 );
setScaleKey( spep_4-3 + 122, 1, 2.82, 2.82 );
setScaleKey( spep_4 + 120, 1, 2.82, 2.82 );
setScaleKey( spep_4 + 121, 1, 6.49, 6.49 );

setRotateKey( spep_4 + 0, 1, -19.3 );
--setRotateKey( spep_4-3 + 2, 1, 20 );
setRotateKey( spep_4-3 + 4, 1, -20.5 );
setRotateKey( spep_4-3 + 6, 1, -21 );
setRotateKey( spep_4-3 + 8, 1, -21.5 );
setRotateKey( spep_4-3 + 10, 1, -22 );
setRotateKey( spep_4-3 + 12, 1, -22.5 );
setRotateKey( spep_4-3 + 14, 1, -22.9 );
setRotateKey( spep_4-3 + 16, 1, -23.2 );
setRotateKey( spep_4-3 + 18, 1, -23.5 );
setRotateKey( spep_4-3 + 21, 1, -23.7 );
setRotateKey( spep_4-3 + 22, 1, 3 );
setRotateKey( spep_4-3 + 37, 1, 3 );
setRotateKey( spep_4-3 + 38, 1, 2.5 );
setRotateKey( spep_4-3 + 40, 1, 2.3 );
setRotateKey( spep_4-3 + 42, 1, 1.9 );
setRotateKey( spep_4-3 + 44, 1, 1.6 );
setRotateKey( spep_4-3 + 46, 1, 1.3 );
setRotateKey( spep_4-3 + 48, 1, 0.9 );
setRotateKey( spep_4-3 + 50, 1, 0.6 );
setRotateKey( spep_4-3 + 52, 1, 0.3 );
setRotateKey( spep_4-3 + 54, 1, -0.1 );
setRotateKey( spep_4-3 + 56, 1, -0.4 );
setRotateKey( spep_4-3 + 59, 1, -0.7 );
setRotateKey( spep_4-3 + 60, 1, 70.4 );
setRotateKey( spep_4-3 + 62, 1, 70.3 );
setRotateKey( spep_4-3 + 76, 1, 70.3 );
setRotateKey( spep_4-3 + 78, 1, 50.6 );
setRotateKey( spep_4-3 + 94, 1, 50.6 );
setRotateKey( spep_4-3 + 96, 1, 48.6 );
setRotateKey( spep_4-3 + 122, 1, 48.6 );
setRotateKey( spep_4 + 120, 1, 48.6 );
setRotateKey( spep_4 + 121, 1, 65.9 );

--SE
--パンチ避ける
SE019 = playSeVer2( spep_4 + 0, 1264, "",spep_4 + 94, 0, 56, 0.5);
setSeVolumeByWorkId( spep_4 + 0, SE019, 130 );
setPitch( spep_4 + 0, SE019, 200 );
setTimeStretch( SE019, 1.13, 30, 4 );
setBandpassFilter( spep_4 + 0, SE019, 600, 24000 );
SE020 = playSeVer2( spep_4 + 0, 1307, "",spep_4 + 94, 0, 52, 0.5);
setSeVolumeByWorkId( spep_4 + 0, SE020, 186 );

--振りかぶる
SE021 = playSeVer2( spep_4 + 20, 1003, "", 0, 0, 0, -1);

--ヒットラッシュ
SE022 = playSeVer2( spep_4 + 36, 1009, "", spep_4 + 36+17, 0, 4, -1);
setSeVolumeByWorkId( spep_4 + 36, SE022, 81 );
SE023 = playSeVer2( spep_4 + 36, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 36, SE023, 88 );
SE024 = playSeVer2( spep_4 + 36, 1110, "", spep_4 + 36+17, 0, 4, -1);
setSeVolumeByWorkId( spep_4 + 36, SE024, 85 );
SE025 = playSeVer2( spep_4 + 58, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_4 + 58, 1000, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 72, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_4 + 72, 1000, "", 0, 0, 0, -1);
setPitch( spep_4 + 72, SE028, 200 );
setTimeStretch( SE028, 1.13, 30, 4 );
SE029 = playSeVer2( spep_4 + 72, 1010, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_4 + 92, 1110, "", 0, 0, 0, -1);
setPitch( spep_4 + 92, SE030, -200 );
setTimeStretch( SE030, 0.87, 30, 4 );
SE031 = playSeVer2( spep_4 + 92, 1000, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_4 + 112, 1110, "", 0, 0, 0, -1);
setPitch( spep_4 + 112, SE032, -100 );
setTimeStretch( SE032, 0.93, 30, 4 );
SE033 = playSeVer2( spep_4 + 112, 1000, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_4 + 112, 1012, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 124, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 122;
------------------------------------------------------
--パンチヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 56, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 54, hit_f, 255 );
setEffAlphaKey( spep_5 + 54, hit_f, 255 );
setEffAlphaKey( spep_5 + 55, hit_f, 0 );

--敵の動き
changeAnime( spep_5 + 0, 1,6 );
changeAnime( spep_5-3 + 16, 1,105 );

setMoveKey( spep_5 + 0, 1, -18.1, -506.7 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 15.7, -502.1 , 0 );
setMoveKey( spep_5-3 + 4, 1, -13.3, -497.5 , 0 );
setMoveKey( spep_5-3 + 6, 1, -10.8, -492.9 , 0 );
setMoveKey( spep_5-3 + 8, 1, -8.3, -488.3 , 0 );
setMoveKey( spep_5-3 + 10, 1, -5.9, -483.7 , 0 );
setMoveKey( spep_5-3 + 12, 1, -3.5, -479.1 , 0 );
setMoveKey( spep_5-3 + 15, 1, -1, -474.5 , 0 );
setMoveKey( spep_5-3 + 16, 1, -30.2, 71.6 , 0 );
setMoveKey( spep_5-3 + 18, 1, -36.4, 83 , 0 );
setMoveKey( spep_5-3 + 20, 1, -42.8, 93.7 , 0 );
setMoveKey( spep_5-3 + 22, 1, -18.8, 90.1 , 0 );
setMoveKey( spep_5-3 + 24, 1, 5, 85.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, -8.7, 121.8 , 0 );
setMoveKey( spep_5-3 + 28, 1, -22.6, 157 , 0 );
setMoveKey( spep_5-3 + 30, 1, -6.1, 171.1 , 0 );
setMoveKey( spep_5-3 + 32, 1, 10.2, 184.5 , 0 );
setMoveKey( spep_5-3 + 34, 1, 19.6, 204 , 0 );
setMoveKey( spep_5-3 + 36, 1, 28.7, 222.8 , 0 );
setMoveKey( spep_5-3 + 38, 1, 27.6, 234 , 0 );
setMoveKey( spep_5-3 + 40, 1, 26.2, 244.6 , 0 );
setMoveKey( spep_5-3 + 42, 1, 24.7, 251 , 0 );
setMoveKey( spep_5-3 + 44, 1, 22.9, 256.7 , 0 );
setMoveKey( spep_5-3 + 46, 1, 21, 261.6 , 0 );
setMoveKey( spep_5-3 + 48, 1, 18.9, 265.9 , 0 );
setMoveKey( spep_5-3 + 50, 1, 16.7, 269.3 , 0 );
setMoveKey( spep_5-3 + 52, 1, 14.2, 272.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 11.6, 274.1 , 0 );
setMoveKey( spep_5-3 + 56, 1, 8.8, 275.4 , 0 );
setMoveKey( spep_5-3 + 57, 1, 5.8, 275.9 , 0 );

setScaleKey( spep_5 + 0, 1, 6.49, 6.49 );
--setScaleKey( spep_5-3 + 2, 1, 6.69, 6.69 );
setScaleKey( spep_5-3 + 4, 1, 6.89, 6.89 );
setScaleKey( spep_5-3 + 6, 1, 7.09, 7.09 );
setScaleKey( spep_5-3 + 8, 1, 7.29, 7.29 );
setScaleKey( spep_5-3 + 10, 1, 7.49, 7.49 );
setScaleKey( spep_5-3 + 12, 1, 7.69, 7.69 );
setScaleKey( spep_5-3 + 15, 1, 7.88, 7.88 );
setScaleKey( spep_5-3 + 16, 1, 3.86, 3.86 );
setScaleKey( spep_5-3 + 18, 1, 3.56, 3.56 );
setScaleKey( spep_5-3 + 20, 1, 3.26, 3.26 );
setScaleKey( spep_5-3 + 22, 1, 2.98, 2.98 );
setScaleKey( spep_5-3 + 24, 1, 2.72, 2.72 );
setScaleKey( spep_5-3 + 26, 1, 2.47, 2.47 );
setScaleKey( spep_5-3 + 28, 1, 2.23, 2.23 );
setScaleKey( spep_5-3 + 30, 1, 2.01, 2.01 );
setScaleKey( spep_5-3 + 32, 1, 1.81, 1.81 );
setScaleKey( spep_5-3 + 34, 1, 1.62, 1.62 );
setScaleKey( spep_5-3 + 36, 1, 1.45, 1.45 );
setScaleKey( spep_5-3 + 38, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 40, 1, 1.14, 1.14 );
setScaleKey( spep_5-3 + 42, 1, 1.01, 1.01 );
setScaleKey( spep_5-3 + 44, 1, 0.9, 0.9 );
setScaleKey( spep_5-3 + 46, 1, 0.8, 0.8 );
setScaleKey( spep_5-3 + 48, 1, 0.72, 0.72 );
setScaleKey( spep_5-3 + 50, 1, 0.65, 0.65 );
setScaleKey( spep_5-3 + 52, 1, 0.6, 0.6 );
setScaleKey( spep_5-3 + 54, 1, 0.56, 0.56 );
setScaleKey( spep_5-3 + 56, 1, 0.54, 0.54 );
setScaleKey( spep_5-3 + 57, 1, 0.53, 0.53 );

setRotateKey( spep_5 + 0, 1, 65.9 );
--setRotateKey( spep_5-3 + 2, 1, -65.6 );
setRotateKey( spep_5-3 + 4, 1, 65.2 );
setRotateKey( spep_5-3 + 6, 1, 64.9 );
setRotateKey( spep_5-3 + 8, 1, 64.5 );
setRotateKey( spep_5-3 + 10, 1, 64.2 );
setRotateKey( spep_5-3 + 12, 1, 63.8 );
setRotateKey( spep_5-3 + 15, 1, 63.5 );
setRotateKey( spep_5-3 + 16, 1, -36.4 );
setRotateKey( spep_5-3 + 18, 1, -30.8 );
setRotateKey( spep_5-3 + 20, 1, -25.5 );
setRotateKey( spep_5-3 + 22, 1, -20.4 );
setRotateKey( spep_5-3 + 24, 1, -15.6 );
setRotateKey( spep_5-3 + 26, 1, -11 );
setRotateKey( spep_5-3 + 28, 1, -6.8 );
setRotateKey( spep_5-3 + 30, 1, -2.8 );
setRotateKey( spep_5-3 + 32, 1, 0.9 );
setRotateKey( spep_5-3 + 34, 1, 4.4 );
setRotateKey( spep_5-3 + 36, 1, 7.5 );
setRotateKey( spep_5-3 + 38, 1, 10.4 );
setRotateKey( spep_5-3 + 40, 1, 13 );
setRotateKey( spep_5-3 + 42, 1, 15.4 );
setRotateKey( spep_5-3 + 44, 1, 17.4 );
setRotateKey( spep_5-3 + 46, 1, 19.2 );
setRotateKey( spep_5-3 + 48, 1, 20.7 );
setRotateKey( spep_5-3 + 50, 1, 22 );
setRotateKey( spep_5-3 + 52, 1, 22.9 );
setRotateKey( spep_5-3 + 54, 1, 23.6 );
setRotateKey( spep_5-3 + 56, 1, 24 );
setRotateKey( spep_5-3 + 57, 1, 24.2 );

--SE
--強パンチ
SE035 = playSeVer2( spep_5 + 12, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 12, SE035, 89 );
SE036 = playSeVer2( spep_5 + 14, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE037 = playSeVer2( spep_5 + 26, 1183, "",spep_5 + 108, 0, 28, -1);
setSeVolumeByWorkId( spep_5 + 26, SE037, 78 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 56; 
------------------------------------------------------
--瞬間移動→振り向いてブルーに変身
------------------------------------------------------

--敵の動き
setDisp( spep_6-1 + 38-2, 1, 0 );

changeAnime( spep_6 + 0-1, 1,6 );

setMoveKey( spep_6 + 0-1, 1, 196.2, -193 , 0 );
--setMoveKey( spep_6-3 + 2, 1, -221.9, -213.6 , 0 );
setMoveKey( spep_6-3 + 4, 1, 196.2, -193 , 0 );
setMoveKey( spep_6-3 + 6, 1, 171.8, -177.2 , 0 );
setMoveKey( spep_6-3 + 8, 1, 148.2, -162.3 , 0 );
setMoveKey( spep_6-3 + 10, 1, 129.8, -147.7 , 0 );
setMoveKey( spep_6-3 + 12, 1, 112.2, -133.8 , 0 );
setMoveKey( spep_6-3 + 14, 1, 94.4, -117 , 0 );
setMoveKey( spep_6-3 + 16, 1, 77.4, -101 , 0 );
setMoveKey( spep_6-3 + 18, 1, 57.9, -85.3 , 0 );
setMoveKey( spep_6-3 + 20, 1, 39.5, -70.2 , 0 );
setMoveKey( spep_6-3 + 22, 1, 22.5, -60.4 , 0 );
setMoveKey( spep_6-3 + 24, 1, 6.5, -51.4 , 0 );
setMoveKey( spep_6-3 + 26, 1, -2.7, -37.1 , 0 );
setMoveKey( spep_6-3 + 28, 1, -11.1, -23.6 , 0 );
setMoveKey( spep_6-3 + 30, 1, -30.3, -22.5 , 0 );
setMoveKey( spep_6-3 + 32, 1, -32.9, -6.5 , 0 );
setMoveKey( spep_6-3 + 34, 1, -49, 7.3 , 0 );
setMoveKey( spep_6-3 + 36, 1, -66, 6.8 , 0 );
setMoveKey( spep_6-1 + 38, 1, -70.5, 7.5 , 0 );

setScaleKey( spep_6 + 0-1, 1, 2.25, 2.25 );
setScaleKey( spep_6-1 + 38, 1, 2.25, 2.25 );

setRotateKey( spep_6 + 0-1, 1, 16.8 );
setRotateKey( spep_6 + 2, 1, 17 );
setRotateKey( spep_6-1 + 38, 1, 17 );

--SE
--瞬間移動
SE038 = playSeVer2( spep_6 + 8, 1109, "", 0, 0, 0, -1);

--悟空振りかぶる
SE039 = playSeVer2( spep_6 + 38, 1116, "",spep_6 + 86, 0, 20, -1);
SE040 = playSeVer2( spep_6 + 38, 1004, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_6 + 46, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE041,  133 );

--ブルーになる
SE042 = playSeVer2( spep_6 + 96, 1035, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 140, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 136; 
------------------------------------------------------
--パンチ連打
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_7 + 0-2, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0-2, panting_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 116-2, panting_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0-2, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 116-2, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0-2, panting_f, 0 );
setEffRotateKey( spep_7 + 116-2, panting_f, 0 );
setEffAlphaKey( spep_7 + 0-2, panting_f, 255 );
setEffAlphaKey( spep_7 + 114-2, panting_f, 255 );
setEffAlphaKey( spep_7 + 115-2, panting_f, 255 );
setEffAlphaKey( spep_7 + 116-2, panting_f, 0 );

--敵の動き
setDisp( spep_7 + 0-1, 1, 1 );
--setDisp( spep_7-3 + 118, 1, 0 );

changeAnime( spep_7 + 0, 1,6 );

setMoveKey( spep_7 + 0-1, 1, -201, 173.5 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 192.2, 160.5 , 0 );
setMoveKey( spep_7-3 + 4, 1, -183.2, 147.6 , 0 );
setMoveKey( spep_7-3 + 6, 1, -174.3, 134.7 , 0 );
setMoveKey( spep_7-3 + 8, 1, -165.4, 121.8 , 0 );
setMoveKey( spep_7-3 + 10, 1, -156.5, 108.9 , 0 );
setMoveKey( spep_7-3 + 12, 1, -147.6, 96 , 0 );
setMoveKey( spep_7-3 + 14, 1, -138.7, 83.1 , 0 );
setMoveKey( spep_7-3 + 16, 1, -129.8, 70.2 , 0 );
setMoveKey( spep_7-3 + 18, 1, -120.8, 57.3 , 0 );
setMoveKey( spep_7-3 + 20, 1, -111.9, 44.4 , 0 );
setMoveKey( spep_7-3 + 22, 1, -137.7, 53.3 , 0 );
setMoveKey( spep_7-3 + 24, 1, -115.9, 55.5 , 0 );
setMoveKey( spep_7-3 + 26, 1, -86.5, 70.8 , 0 );
setMoveKey( spep_7-3 + 28, 1, -118.3, 65.7 , 0 );
setMoveKey( spep_7-3 + 30, 1, -154.7, 54.1 , 0 );
setMoveKey( spep_7-3 + 32, 1, -143.6, 62.8 , 0 );
setMoveKey( spep_7-3 + 34, 1, -115, 73.9 , 0 );
setMoveKey( spep_7-3 + 36, 1, -113.6, 64.6 , 0 );
setMoveKey( spep_7-3 + 38, 1, -141.6, 47.2 , 0 );
setMoveKey( spep_7-3 + 40, 1, -142.4, 70.6 , 0 );
setMoveKey( spep_7-3 + 42, 1, -110.4, 94.8 , 0 );
setMoveKey( spep_7-3 + 44, 1, -119.1, 98.6 , 0 );
setMoveKey( spep_7-3 + 46, 1, -142.5, 98.7 , 0 );
setMoveKey( spep_7-3 + 48, 1, -138.7, 71.5 , 0 );
setMoveKey( spep_7-3 + 50, 1, -113.2, 63.6 , 0 );
setMoveKey( spep_7-3 + 52, 1, -121.7, 89.7 , 0 );
setMoveKey( spep_7-3 + 54, 1, -119.3, 101.9 , 0 );
setMoveKey( spep_7-3 + 56, 1, -137.3, 93.7 , 0 );
setMoveKey( spep_7-3 + 58, 1, -161.9, 88.7 , 0 );
setMoveKey( spep_7-3 + 60, 1, -159.2, 97.3 , 0 );
setMoveKey( spep_7-3 + 62, 1, -141, 102.1 , 0 );
setMoveKey( spep_7-3 + 64, 1, -143.2, 93.3 , 0 );
setMoveKey( spep_7-3 + 66, 1, -138.8, 91.3 , 0 );
setMoveKey( spep_7-3 + 68, 1, -134.5, 89.4 , 0 );
setMoveKey( spep_7-3 + 70, 1, -130.2, 87.4 , 0 );
setMoveKey( spep_7-3 + 72, 1, -125.9, 85.5 , 0 );
setMoveKey( spep_7-3 + 74, 1, -121.6, 83.5 , 0 );
setMoveKey( spep_7-3 + 76, 1, -117.3, 81.5 , 0 );
setMoveKey( spep_7-3 + 78, 1, -113, 79.6 , 0 );
setMoveKey( spep_7-3 + 80, 1, -108.6, 77.6 , 0 );
setMoveKey( spep_7-3 + 82, 1, -117, 72.3 , 0 );
setMoveKey( spep_7-3 + 84, 1, -156.2, 133.3 , 0 );
setMoveKey( spep_7-3 + 86, 1, -217.3, 180.8 , 0 );
setMoveKey( spep_7-3 + 88, 1, -259.6, 222.4 , 0 );
setMoveKey( spep_7-3 + 90, 1, -301.8, 263.9 , 0 );
setMoveKey( spep_7-3 + 92, 1, -346.6, 309.8 , 0 );
setMoveKey( spep_7-3 + 94, 1, -391.4, 355.6 , 0 );
setMoveKey( spep_7-3 + 96, 1, -436.2, 400.5 , 0 );
setMoveKey( spep_7-3 + 98, 1, -481, 445.5 , 0 );
setMoveKey( spep_7-3 + 100, 1, -523.3, 492.2 , 0 );
setMoveKey( spep_7-3 + 102, 1, -565.5, 538.8 , 0 );
setMoveKey( spep_7-3 + 104, 1, -607.8, 582.9 , 0 );
setMoveKey( spep_7-3 + 106, 1, -650, 627.1 , 0 );
setMoveKey( spep_7-3 + 108, 1, -692.3, 671.2 , 0 );
setMoveKey( spep_7-3 + 110, 1, -734.5, 715.3 , 0 );
setMoveKey( spep_7-3 + 112, 1, -776.8, 759.4 , 0 );
setMoveKey( spep_7-3 + 114, 1, -819, 803.5 , 0 );
setMoveKey( spep_7-3 + 116, 1, -861.3, 847.6 , 0 );
setMoveKey( spep_7-3 + 117, 1, -903.5, 891.8 , 0 );

setScaleKey( spep_7 + 0-1, 1,3.13,3.13);
setScaleKey( spep_7-3 + 4, 1, 3.11,3.11);
setScaleKey( spep_7-3 + 6, 1, 3.09,3.09);
setScaleKey( spep_7-3 + 8, 1, 3.08,3.08);
setScaleKey( spep_7-3 + 10, 1, 3.06,3.06);
setScaleKey( spep_7-3 + 12, 1, 3.05,3.05);
setScaleKey( spep_7-3 + 14, 1, 3.03,3.03);
setScaleKey( spep_7-3 + 16, 1, 3.02,3.02);
setScaleKey( spep_7-3 + 18, 1, 3.01,3.01);
setScaleKey( spep_7-3 + 20, 1, 2.99,2.99);
setScaleKey( spep_7-3 + 22, 1, 3,3);
setScaleKey( spep_7-3 + 24, 1, 3.01,3.01);
setScaleKey( spep_7-3 + 26, 1, 3.02,3.02);
setScaleKey( spep_7-3 + 28, 1, 3.02,3.02);
setScaleKey( spep_7-3 + 30, 1, 3.03,3.03);
setScaleKey( spep_7-3 + 32, 1, 3.04,3.04);
setScaleKey( spep_7-3 + 34, 1, 3.05,3.05);
setScaleKey( spep_7-3 + 36, 1, 3.06,3.06);
setScaleKey( spep_7-3 + 38, 1, 3.06,3.06);
setScaleKey( spep_7-3 + 40, 1, 3.07,3.07);
setScaleKey( spep_7-3 + 42, 1, 3.08,3.08);
setScaleKey( spep_7-3 + 44, 1, 3.09,3.09);
setScaleKey( spep_7-3 + 46, 1, 3.1,3.1);
setScaleKey( spep_7-3 + 48, 1, 3.11,3.11);
setScaleKey( spep_7-3 + 50, 1, 3.11,3.11);
setScaleKey( spep_7-3 + 52, 1, 3.12,3.12);
setScaleKey( spep_7-3 + 54, 1, 3.13,3.13);
setScaleKey( spep_7-3 + 56, 1, 3.15,3.15);
setScaleKey( spep_7-3 + 58, 1, 3.15,3.15);
setScaleKey( spep_7-3 + 60, 1, 3.16,3.16);
setScaleKey( spep_7-3 + 62, 1, 3.13,3.13);
setScaleKey( spep_7-3 + 64, 1, 3.11,3.11);
setScaleKey( spep_7-3 + 66, 1, 3.1,3.1);
setScaleKey( spep_7-3 + 68, 1, 3.08,3.08);
setScaleKey( spep_7-3 + 70, 1, 3.07,3.07);
setScaleKey( spep_7-3 + 72, 1, 3.05,3.05);
setScaleKey( spep_7-3 + 74, 1, 3.04,3.04);
setScaleKey( spep_7-3 + 76, 1, 3.02,3.02);
setScaleKey( spep_7-3 + 78, 1, 3.01,3.01);
setScaleKey( spep_7-3 + 80, 1, 2.99,2.99);
setScaleKey( spep_7-3 + 82, 1, 2.98,2.98);
setScaleKey( spep_7-3 + 84, 1, 3.5,3.5);
setScaleKey( spep_7-3 + 86, 1, 3.73,3.73);
setScaleKey( spep_7-3 + 88, 1, 3.95,3.95);
setScaleKey( spep_7-3 + 90, 1, 4.18,4.18);
setScaleKey( spep_7-3 + 92, 1, 4.42,4.42);
setScaleKey( spep_7-3 + 94, 1, 4.65,4.65);
setScaleKey( spep_7-3 + 96, 1, 4.88,4.88);
setScaleKey( spep_7-3 + 98, 1, 5.11,5.11);
setScaleKey( spep_7-3 + 100, 1, 5.34,5.34);
setScaleKey( spep_7-3 + 102, 1, 5.57,5.57);
setScaleKey( spep_7-3 + 104, 1, 5.8,5.8);
setScaleKey( spep_7-3 + 106, 1, 6.02,6.02);
setScaleKey( spep_7-3 + 108, 1, 6.25,6.25);
setScaleKey( spep_7-3 + 110, 1, 6.48,6.48);
setScaleKey( spep_7-3 + 112, 1, 6.72,6.72);
setScaleKey( spep_7-3 + 114, 1, 6.95,6.95);
setScaleKey( spep_7-3 + 116, 1, 7.18,7.18);
setScaleKey( spep_7-3 + 117, 1, 7.41,7.41);

setRotateKey( spep_7 + 0-1, 1, -69 );
--setRotateKey( spep_7-3 + 2, 1, 68.5 );
setRotateKey( spep_7-3 + 4, 1, -68 );
setRotateKey( spep_7-3 + 6, 1, -67.4 );
setRotateKey( spep_7-3 + 8, 1, -66.9 );
setRotateKey( spep_7-3 + 10, 1, -66.4 );
setRotateKey( spep_7-3 + 12, 1, -65.9 );
setRotateKey( spep_7-3 + 14, 1, -65.4 );
setRotateKey( spep_7-3 + 16, 1, -64.8 );
setRotateKey( spep_7-3 + 18, 1, -64.3 );
setRotateKey( spep_7-3 + 20, 1, -63.8 );
setRotateKey( spep_7-3 + 22, 1, -67.7 );
setRotateKey( spep_7-3 + 24, 1, -71.7 );
setRotateKey( spep_7-3 + 26, 1, -67 );
setRotateKey( spep_7-3 + 28, 1, -62.2 );
setRotateKey( spep_7-3 + 30, 1, -66.7 );
setRotateKey( spep_7-3 + 32, 1, -71.2 );
setRotateKey( spep_7-3 + 34, 1, -68.4 );
setRotateKey( spep_7-3 + 36, 1, -65.5 );
setRotateKey( spep_7-3 + 38, 1, -68 );
setRotateKey( spep_7-3 + 40, 1, -70.5 );
setRotateKey( spep_7-3 + 42, 1, -67.6 );
setRotateKey( spep_7-3 + 44, 1, -64.8 );
setRotateKey( spep_7-3 + 46, 1, -70.6 );
setRotateKey( spep_7-3 + 48, 1, -76.4 );
setRotateKey( spep_7-3 + 50, 1, -70.5 );
setRotateKey( spep_7-3 + 52, 1, -64.5 );
setRotateKey( spep_7-3 + 54, 1, -66.8 );
setRotateKey( spep_7-3 + 56, 1, -69 );
setRotateKey( spep_7-3 + 82, 1, -69 );
setRotateKey( spep_7-3 + 84, 1, -70.7 );
setRotateKey( spep_7-3 + 86, 1, -71.3 );
setRotateKey( spep_7-3 + 88, 1, -71.9 );
setRotateKey( spep_7-3 + 90, 1, -72.5 );
setRotateKey( spep_7-3 + 92, 1, -73.1 );
setRotateKey( spep_7-3 + 94, 1, -73.7 );
setRotateKey( spep_7-3 + 96, 1, -74.3 );
setRotateKey( spep_7-3 + 98, 1, -74.8 );
setRotateKey( spep_7-3 + 100, 1, -75.4 );
setRotateKey( spep_7-3 + 102, 1, -76 );
setRotateKey( spep_7-3 + 104, 1, -76.6 );
setRotateKey( spep_7-3 + 106, 1, -77.2 );
setRotateKey( spep_7-3 + 108, 1, -77.8 );
setRotateKey( spep_7-3 + 110, 1, -78.3 );
setRotateKey( spep_7-3 + 112, 1, -78.9 );
setRotateKey( spep_7-3 + 114, 1, -79.5 );
setRotateKey( spep_7-3 + 116, 1, -80.1 );
setRotateKey( spep_7-3 + 117, 1, -80.7 );

--SE
--悟空連打
SE043 = playSeVer2( spep_7 + 6, 1003, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_7 + 18, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 18, SE044, 72 );
SE045 = playSeVer2( spep_7 + 18, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 18, SE045, 91 );
SE046 = playSeVer2( spep_7 + 18, 1110, "",spep_7 + 36, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 18, SE046, 80 );
SE047 = playSeVer2( spep_7 + 26, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 26, SE047, 90 );
SE048 = playSeVer2( spep_7 + 26, 1110, "",spep_7 + 46, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 26, SE048, 80 );
setPitch( spep_7 + 26, SE048, -200 );
setTimeStretch( SE048, 0.87, 30, 4 );
SE049 = playSeVer2( spep_7 + 36, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 36, SE049, 65 );
SE050 = playSeVer2( spep_7 + 36, 1110, "",spep_7 + 56, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 36, SE050, 73 );
SE051 = playSeVer2( spep_7 + 44, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 44, SE051, 89 );
SE052 = playSeVer2( spep_7 + 44, 1110, "",spep_7 + 66, 0, 12, -1);
setSeVolumeByWorkId( spep_7 + 44, SE052, 87 );
setPitch( spep_7 + 44, SE052, 100 );
setTimeStretch( SE052, 1.07, 30, 4 );
SE053 = playSeVer2( spep_7 + 50, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 50, SE053, 95 );
SE054 = playSeVer2( spep_7 + 50, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 50, SE054, 72 );

--悟空パンチ
SE055 = playSeVer2( spep_7 + 76, 1189, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_7 + 80, 1120, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 120, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_8= spep_7 + 116; 
------------------------------------------------------
--敵が壁に激突
------------------------------------------------------
-- ** エフェクト等 ** --
clash_f = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, clash_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 76, clash_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, clash_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 76, clash_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, clash_f, 0 );
setEffRotateKey( spep_8 + 76, clash_f, 0 );
setEffAlphaKey( spep_8 + 0, clash_f, 255 );
setEffAlphaKey( spep_8 + 74, clash_f, 255 );
setEffAlphaKey( spep_8 + 75, clash_f, 255 );
setEffAlphaKey( spep_8 + 76, clash_f, 0 );

--敵の動き
setDisp( spep_8 + 0-2, 1, 1 );
setDisp( spep_8-1 + 26, 1, 0 );

changeAnime( spep_8 + 0-2, 1,105 );

setMoveKey( spep_8 + 0-2, 1, 115.7, 113.4 , 0 );
setMoveKey( spep_8 + 0-1, 1, 115.7, 113.4 , 0 );
setMoveKey( spep_8 + 0, 1, 115.7, 113.4 , 0 );
setMoveKey( spep_8 + 2, 1, 108.1, 104.1 , 0 );
setMoveKey( spep_8 + 4, 1, 100.6, 94.9 , 0 );
setMoveKey( spep_8 + 6, 1, 93, 85.7 , 0 );
setMoveKey( spep_8 + 8, 1, 85.4, 76.6 , 0 );
setMoveKey( spep_8 + 10, 1, 77.9, 67.5 , 0 );
setMoveKey( spep_8 + 12, 1, 70.4, 58.4 , 0 );
setMoveKey( spep_8 + 14, 1, 62.9, 49.3 , 0 );
setMoveKey( spep_8 + 16, 1, 55.4, 40.4 , 0 );
setMoveKey( spep_8 + 18, 1, 47.9, 31.4 , 0 );
setMoveKey( spep_8 + 20, 1, 40.5, 22.5 , 0 );
setMoveKey( spep_8 + 22, 1, 33.1, 13.6 , 0 );
setMoveKey( spep_8 + 24, 1, 25.7, 4.8 , 0 );
setMoveKey( spep_8-2 + 26, 1, 18.3, -4 , 0 );

setScaleKey( spep_8 + 0-2, 1, 6.02, 6.02 );
setScaleKey( spep_8 + 0-1, 1, 6.02, 6.02 );
setScaleKey( spep_8 + 0, 1, 6.02, 6.02 );
setScaleKey( spep_8 + 2, 1, 5.63, 5.63 );
setScaleKey( spep_8 + 4, 1, 5.23, 5.23 );
setScaleKey( spep_8 + 6, 1, 4.83, 4.83 );
setScaleKey( spep_8 + 8, 1, 4.44, 4.44 );
setScaleKey( spep_8 + 10, 1, 4.04, 4.04 );
setScaleKey( spep_8 + 12, 1, 3.64, 3.64 );
setScaleKey( spep_8 + 14, 1, 3.25, 3.25 );
setScaleKey( spep_8 + 16, 1, 2.86, 2.86 );
setScaleKey( spep_8 + 18, 1, 2.47, 2.47 );
setScaleKey( spep_8 + 20, 1, 2.08, 2.08 );
setScaleKey( spep_8 + 22, 1, 1.69, 1.69 );
setScaleKey( spep_8 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_8-2 + 26, 1, 0.91, 0.91 );

setRotateKey( spep_8 + 0-2, 1, -58.9 );
setRotateKey( spep_8 + 0-1, 1, -58.9 );
setRotateKey( spep_8 + 0, 1, -58.9 );
setRotateKey( spep_8 + 2, 1, -61.9 );
setRotateKey( spep_8 + 4, 1, -64.9 );
setRotateKey( spep_8 + 6, 1, -67.8 );
setRotateKey( spep_8 + 8, 1, -70.7 );
setRotateKey( spep_8 + 10, 1, -73.5 );
setRotateKey( spep_8 + 12, 1, -76.3 );
setRotateKey( spep_8 + 14, 1, -79.1 );
setRotateKey( spep_8 + 16, 1, -81.9 );
setRotateKey( spep_8 + 18, 1, -84.6 );
setRotateKey( spep_8 + 20, 1, -87.2 );
setRotateKey( spep_8 + 22, 1, -89.9 );
setRotateKey( spep_8 + 24, 1, -92.5 );
setRotateKey( spep_8-2 + 26, 1, -95.1 );

--SE
--敵飛んでいく
SE057 = playSeVer2( spep_8 + 0, 1121, "",spep_8 + 48, 0, 18, -1);

--壁ぶつかる
SE058 = playSeVer2( spep_8 + 26, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 26, SE058, 95 );
SE059 = playSeVer2( spep_8 + 26, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 26, SE059, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 + 0, 0, 80, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_9= spep_8 + 76; 
------------------------------------------------------
--気弾連打
------------------------------------------------------
-- ** エフェクト等 ** --
--SE
--気弾連打
SE060 = playSeVer2( spep_9 + 0, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 0, SE060, 116 );
SE061 = playSeVer2( spep_9 + 8, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 8, SE061, 72 );
SE062 = playSeVer2( spep_9 + 10, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 10, SE062, 108 );
setPitch( spep_9 + 10, SE062, -200 );
setTimeStretch( SE062, 0.87, 30, 4 );
SE063 = playSeVer2( spep_9 + 20, 1016, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_9 + 30, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 30, SE064, 126 );
setPitch( spep_9 + 30, SE064, 200 );
setTimeStretch( SE064, 1.13, 30, 4 );
SE065 = playSeVer2( spep_9 + 40, 1016, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_9 + 50, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 50, SE066, 123 );
SE067 = playSeVer2( spep_9 + 62, 1016, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_9 + 0, 0, 80, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 次の準備 ** --
spep_10= spep_9 + 76; 
------------------------------------------------------
--気弾連打気弾が着弾～フィニッシュ
------------------------------------------------------

--SE
--爆発中気弾連打
SE068 = playSeVer2( spep_10 + 0, 1016, "", 0, 0, 0, -1);
setPitch( spep_10 + 0, SE068, 400 );
setTimeStretch( SE068, 1.27, 30, 4 );

--爆発
SE069 = playSeVer2( spep_10 + 0, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE069, 68 );

--爆発中気弾連打
SE070 = playSeVer2( spep_10 + 10, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 10, SE070, 115 );
SE071 = playSeVer2( spep_10 + 20, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 20, SE071, 105 );

--爆発
SE072 = playSeVer2( spep_10 + 22, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 22, SE072, 83 );

--爆発中気弾連打
SE073 = playSeVer2( spep_10 + 28, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 28, SE073, 138 );
setPitch( spep_10 + 28, SE073, -200 );
setTimeStretch( SE073, 0.87, 30, 4 );
SE074 = playSeVer2( spep_10 + 38, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 38, SE074, 123 );
SE075 = playSeVer2( spep_10 + 52, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 52, SE075, 122 );

--爆発
SE076 = playSeVer2( spep_10 + 54, 1024, "", 0, 0, 0, -1);

--爆発中気弾連打
SE077 = playSeVer2( spep_10 + 60, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 60, SE077, 93 );
setPitch( spep_10 + 60, SE077, -200 );
setTimeStretch( SE077, 0.87, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 + 0, 0, 150, 0, 0, 0, 0, 255 );  --白 背景

--終わり
dealDamage(spep_10+50);
endPhase( spep_10 + 144 -2);
end