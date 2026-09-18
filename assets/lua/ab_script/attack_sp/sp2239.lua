--1022680:マルカリータ_必殺技：浄化の奏鳴曲
--sp_effect_a5_00016
--sp2239

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

--味方側
SP_01 = 157831; --開幕 ef_001
SP_02 = 157832; --指振り横 ef_002
SP_03 = 157833; --正面指振り ef_003
SP_04 = 157834; --敵を拘束(味方側) ef_004_front
SP_05 = 157835; --敵を拘束(味方側) ef_004_back
SP_06 = 157838; --杖振り ef_005
SP_07 = 157839; --フィニッシュ(味方側) ef_006_front
SP_08 = 157840; --フィニッシュ(味方側) ef_006_back

--敵側
SP_04r = 157836; --敵を拘束(敵側) ef_004_r_front
SP_05r = 157837; --敵を拘束(敵側) ef_004_r_back
SP_07r = 157841; --フィニッシュ(敵側) ef_006_r_front
SP_08r = 157842; --フィニッシュ(敵側) ef_006_r_back

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --開幕	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 28;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 +12, 1072 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 20 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 40 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 60 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 80 );
setSeVolumeByWorkId( spep_0 + 20, SE001, 100 );
setStartTimeMs( SE001,  333 );

--顔カットイン
SE002 = playSe( spep_0 + 28, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 96, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
--playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 指振り横(60F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
profile = entryEffectLife( spep_2 + 0, SP_02, 60, 0x100, -1, 0, 0, 0 );  --指振り横	ef_002
setEffMoveKey( spep_2 + 0, profile, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, profile, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, profile, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, profile, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, profile, 0 );
setEffRotateKey( spep_2 + 60, profile, 0 );
setEffAlphaKey( spep_2 + 0, profile, 255 );
setEffAlphaKey( spep_2 + 60 -1, profile, 255 );
setEffAlphaKey( spep_2 + 60, profile, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--指横に振る
SE004 = playSe( spep_2 + 12, 4 );

--指横に振る
SE005 = playSe( spep_2 + 12, 1048 );
setSeVolumeByWorkId( spep_2 + 12, SE005, 66 );

--指の先が光る
SE006 = playSe( spep_2 + 36, 1042 );
setSeVolumeByWorkId( spep_2 + 36, SE006, 71 );
setPitch( spep_2 + 36, SE006, 500 );
setTimeStretch( SE006, 1.33, 10, 1 );

--指の先が光る
SE007 = playSe( spep_2 + 36, 1307 );
setSeVolumeByWorkId( spep_2 + 36, SE007, 178 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;


------------------------------------------------------
-- 正面指振り(96F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
swing = entryEffectLife( spep_3 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --正面指振り	ef_003
setEffMoveKey( spep_3 + 0, swing, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, swing, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, swing, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, swing, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, swing, 0 );
setEffRotateKey( spep_3 + 96, swing, 0 );
setEffAlphaKey( spep_3 + 0, swing, 255 );
setEffAlphaKey( spep_3 + 96 -1, swing, 255 );
setEffAlphaKey( spep_3 + 96, swing, 0 );

-- ** 音 ** --
--マルカリータの指をふる
SE008 = playSe( spep_3 + 24, 1288 );
setSeVolumeByWorkId( spep_3 + 24, SE008, 188 );
stopSe( spep_3 + 80, SE008, 12 );
setPitch( spep_3 + 24, SE008, 800 );
setTimeStretch( SE008, 1.53, 10, 1 );

--マルカリータの指をふる
SE009 = playSe( spep_3 + 26, 1189 );
setPitch( spep_3 + 26, SE009, 200 );
setTimeStretch( SE009, 1.13, 10, 1 );

--マルカリータの指をふる
SE010 = playSe( spep_3 + 46, 1189 );
setPitch( spep_3 + 46, SE010, 200 );
setTimeStretch( SE010, 1.13, 10, 1 );

--光広がる
SE011 = playSe( spep_3 + 80, 1303 );
setSeVolumeByWorkId( spep_3 + 80, SE011, 20 );
setSeVolumeByWorkId( spep_3 + 81, SE011, 40 );
setSeVolumeByWorkId( spep_3 + 82, SE011, 59 );
setStartTimeMs( SE011,  233 );
setPitch( spep_3 + 80, SE011, 100 );
setTimeStretch( SE011, 1.07, 10, 1 );

--光広がる
SE012 = playSe( spep_3 + 80, 1311 );
stopSe( spep_3 +140 + 34, SE012, 36 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


------------------------------------------------------
-- 敵を拘束(116F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
binding_f = entryEffectLife( spep_4 + 0, SP_04, 116, 0x100, -1, 0, 0, 0 );  --敵を拘束(味方側)	ef_004_front
setEffMoveKey( spep_4 + 0, binding_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, binding_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, binding_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, binding_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, binding_f, 0 );
setEffRotateKey( spep_4 + 116, binding_f, 0 );
setEffAlphaKey( spep_4 + 0, binding_f, 255 );
setEffAlphaKey( spep_4 + 116 -1, binding_f, 255 );
setEffAlphaKey( spep_4 + 116, binding_f, 0 );

binding_b = entryEffectLife( spep_4 + 0, SP_05, 116, 0x80, -1, 0, 0, 0 );  --敵を拘束(味方側)	ef_004_back
setEffMoveKey( spep_4 + 0, binding_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, binding_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, binding_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, binding_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, binding_b, 0 );
setEffRotateKey( spep_4 + 116, binding_b, 0 );
setEffAlphaKey( spep_4 + 0, binding_b, 255 );
setEffAlphaKey( spep_4 + 116 -1, binding_b, 255 );
setEffAlphaKey( spep_4 + 116, binding_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 119, 1, 0 );
changeAnime( spep_4 + 0, 1, 118 );
changeAnime( spep_4 -3 + 30, 1, 106 );

a4 = 30;
b4 = 35;
setMoveKey( spep_4 + 0, 1, 575.4 +a4, -544.2 +b4 , 0 );
setMoveKey( spep_4 + 1, 1, 456.4 +a4, -418.7 +b4 , 0 );
setMoveKey( spep_4 + 2, 1, 337.4 +a4, -293.2 +b4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 218.5 +a4, -167.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 99.6 +a4, -42.2 +b4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 99.4 +a4, -42.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 99.2 +a4, -42.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 99 +a4, -42 +b4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 98.8 +a4, -41.9 +b4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 98.7 +a4, -41.8 +b4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 98.5 +a4, -41.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 98.3 +a4, -41.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 98.2 +a4, -41.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 98 +a4, -41.5 +b4 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 97.8 +a4, -41.4 +b4 , 0 );

a5 = 50;
b5 = 85;
setMoveKey( spep_4 -3 + 30, 1, 31.6 -a5, -68.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 114 -a5, -150.4 +b5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 96.4 -a5, -67.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 96.2 -a5, -66.4 +b5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 96 -a5, -65.6 +b5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 95.9 -a5, -64.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 95.7 -a5, -64 +b5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 31.2 -a5, -63.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 112.6 -a5, -143.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 95.1 -a5, -61.7 +b5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 95 -a5, -60.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 94.8 -a5, -60.1 +b5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 94.6 -a5, -59.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 94.5 -a5, -58.6 +b5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 94.3 -a5, -57.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 94.1 -a5, -57 +b5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 93.9 -a5, -56.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 30.7 -a5, -55.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 110.5 -a5, -132.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 93.4 -a5, -50.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 93.2 -a5, -48 +b5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 93 -a5, -45.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 92.9 -a5, -43 +b5 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 92.7 -a5, -40.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 30.2 -a5, -38 +b5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 109 -a5, -114.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 92.2 -a5, -33.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 87.2 -a5, -30.7 +b5 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 96.6 -a5, -28.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 86.8 -a5, -25.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 96.1 -a5, -20 +b5 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 86.2 -a5, -14.1 +b5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 95.3 -a5, -8.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 85.5 -a5, -2.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 94.5 -a5, 3.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 84.8 -a5, 9.4 +b5 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 93.8 -a5, 15.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 84.1 -a5, 20.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 93 -a5, 26.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 83.4 -a5, 32.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 92.2 -a5, 38.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 82.8 -a5, 44 +b5 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 91.5 -a5, 49.6 +b5 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 82.1 -a5, 55.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 90.8 -a5, 61 +b5 , 0 );
setMoveKey( spep_4 -3 + 119, 1, 90.8 -a5, 61 +b5 , 0 );

setScaleKey( spep_4 + 0, 1, 4.32, 4.32 );
setScaleKey( spep_4 + 1, 1, 3.78, 3.78 );
setScaleKey( spep_4 + 2, 1, 3.24, 3.24 );
setScaleKey( spep_4 -3 + 6, 1, 2.67, 2.67 );
--setScaleKey( spep_4 -3 + 8, 1, 2.13, 2.13 );
setScaleKey( spep_4 -3 + 14, 1, 2.13, 2.13 );
--setScaleKey( spep_4 -3 + 16, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 44, 1, 2.1, 2.1 );
--setScaleKey( spep_4 -3 + 46, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 58, 1, 2.07, 2.07 );
--setScaleKey( spep_4 -3 + 60, 1, 2.04, 2.04 );
setScaleKey( spep_4 -3 + 74, 1, 2.04, 2.04 );
--setScaleKey( spep_4 -3 + 76, 1, 2.01, 2.01 );
setScaleKey( spep_4 -3 + 88, 1, 2.01, 2.01 );
--setScaleKey( spep_4 -3 + 90, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 96, 1, 1.98, 1.98 );
--setScaleKey( spep_4 -3 + 98, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 104, 1, 1.95, 1.95 );
--setScaleKey( spep_4 -3 + 106, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 112, 1, 1.92, 1.92 );
--setScaleKey( spep_4 -3 + 114, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 119, 1, 1.89, 1.89 );

setRotateKey( spep_4 + 0, 1, -12.7 );
setRotateKey( spep_4 -3 + 29, 1, -12.7 );
setRotateKey( spep_4 -3 + 30, 1, -50.2 );
setRotateKey( spep_4 -3 + 119, 1, -50.2 );

-- ** 音 ** --
--敵束縛する
SE013 = playSe( spep_4 + 18, 1271 );
setSeVolumeByWorkId( spep_4 + 18, SE013, 140 );
stopSe( spep_4 +116 + 4, SE013, 30 );

--敵束縛する
SE014 = playSe( spep_4 + 20, 1325 );
setSeVolumeByWorkId( spep_4 + 20, SE014, 83 );
stopSe( spep_4 +116 + 4, SE014, 32 );

--敵束縛する
SE015 = playSe( spep_4 + 20, 1033 );

--敵束縛する
SE016 = playSe( spep_4 + 28, 1240 );
setSeVolumeByWorkId( spep_4 + 28, SE016, 141 );
stopSe( spep_4 +112, SE016, 30 );

--敵束縛する
SE017 = playSe( spep_4 + 28, 1130,"",0.6 );
setSeVolumeByWorkId( spep_4 + 28, SE017, 100 );
setPitch( spep_4 + 28, SE017, -700 );
setTimeStretch( SE017, 0.53, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;


------------------------------------------------------
-- 杖振り(68F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
wand = entryEffectLife( spep_5 + 0, SP_06, 68, 0x100, -1, 0, 0, 0 );  --杖振り	ef_005
setEffMoveKey( spep_5 + 0, wand, 0, 0 , 0 );
setEffMoveKey( spep_5 + 68, wand, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, wand, 1.0, 1.0 );
setEffScaleKey( spep_5 + 68, wand, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, wand, 0 );
setEffRotateKey( spep_5 + 68, wand, 0 );
setEffAlphaKey( spep_5 + 0, wand, 255 );
setEffAlphaKey( spep_5 + 68 -1, wand, 255 );
setEffAlphaKey( spep_5 + 68, wand, 0 );

-- ** 音 ** --
--杖かざす
SE019 = playSe( spep_5 + 18, 1042 );
setPitch( spep_5 + 18, SE019, 1000 );
setTimeStretch( SE019, 1.67, 10, 1 );

--杖かざす
SE020 = playSe( spep_5 + 22, 1246 );
setSeVolumeByWorkId( spep_5 + 22, SE020, 155 );
stopSe( spep_5 + 32, SE020, 2 );

--杖かざす
SE021 = playSe( spep_5 + 22, 1289 );
setSeVolumeByWorkId( spep_5 + 22, SE021, 40 );
setPitch( spep_5 + 22, SE021, 400 );
setTimeStretch( SE021, 1.27, 10, 1 );

--玉縮む
SE022 = playSe( spep_5 + 58, 1248,"",0.6 );
setSeVolumeByWorkId( spep_5 + 58, SE022, 132 );
setPitch( spep_5 + 58, SE022, -1000 );
setTimeStretch( SE022, 0.33, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 68 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 68;


------------------------------------------------------
-- フィニッシュ(164F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --フィニッシュ(味方側)	ef_006_front
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 164, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 164, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 164, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 164, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ(味方側)	ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 164, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 164, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 164, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 164, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 56, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

a6 = 5;
b6 = 15;
setMoveKey( spep_6 + 0, 1, 134.3 -a6, -17.5 +b6 , 0 );
setMoveKey( spep_6 + 1, 1, 139.5 -a6, -17.4 +b6 , 0 );
setMoveKey( spep_6 + 2, 1, 126.9 -a6, -17.3 +b6 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 138 -a6, -17.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 125.6 -a6, -17.1 +b6 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 136.6 -a6, -17 +b6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 124.2 -a6, -16.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 135 -a6, -16.8 +b6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 122.8 -a6, -16.7 +b6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 133.5 -a6, -16.6 +b6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 121.4 -a6, -16.5 +b6 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 132.1 -a6, -16.4 +b6 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 120.1 -a6, -16.3 +b6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 130.5 -a6, -16.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 118.7 -a6, -16.1 +b6 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 129 -a6, -16.1 +b6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 117.3 -a6, -15.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 127.5 -a6, -15.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 115.9 -a6, -15.7 +b6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 126 -a6, -15.7 +b6 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 114.6 -a6, -15.6 +b6 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 124.5 -a6, -15.5 +b6 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 113.2 -a6, -15.4 +b6 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 123 -a6, -15.3 +b6 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 111.8 -a6, -15.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 121.5 -a6, -15.1 +b6 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 110.4 -a6, -15 +b6 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 120 -a6, -14.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 120 -a6, -14.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 56, 1, 46.1 -a6, -52.2 +b6 , 0 );--
--setMoveKey( spep_6 -3 + 58, 1, 147.7 -a6, 67.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 60, 1, 36.2 -a6, -99.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 62, 1, 31.6 -a6, 58.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 64, 1, 172.8 -a6, -83.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 66, 1, 64.9 -a6, 26.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 68, 1, 100.3 -a6, -35.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 70, 1, 105.4 -a6, -37.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 72, 1, 91.3 -a6, -38.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 74, 1, 103.1 -a6, -40 +b6 , 0 );
--setMoveKey( spep_6 -3 + 76, 1, 88.5 -a6, -41.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 78, 1, 100.8 -a6, -42.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 80, 1, 85.8 -a6, -44 +b6 , 0 );
--setMoveKey( spep_6 -3 + 82, 1, 98.6 -a6, -45.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 84, 1, 83.1 -a6, -46.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 86, 1, 96.3 -a6, -48.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 88, 1, 80.3 -a6, -49.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 90, 1, 94 -a6, -50.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 92, 1, 77.5 -a6, -52.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 94, 1, 91.7 -a6, -53.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 96, 1, 74.8 -a6, -55 +b6 , 0 );
--setMoveKey( spep_6 -3 + 98, 1, 89.5 -a6, -56.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 100, 1, 72 -a6, -57.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 102, 1, 87.1 -a6, -59.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 104, 1, 69.3 -a6, -60.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 106, 1, 84.9 -a6, -61.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 108, 1, 66.5 -a6, -63.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 110, 1, 82.6 -a6, -64.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 112, 1, 63.8 -a6, -66 +b6 , 0 );
--setMoveKey( spep_6 -3 + 114, 1, 80.3 -a6, -67.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 116, 1, 61 -a6, -68.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 118, 1, 78 -a6, -70 +b6 , 0 );
--setMoveKey( spep_6 -3 + 120, 1, 58.3 -a6, -71.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 122, 1, 75.8 -a6, -72.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 124, 1, 55.5 -a6, -74.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 126, 1, 73.4 -a6, -75.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 128, 1, 52.8 -a6, -76.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 130, 1, 71.2 -a6, -78.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 132, 1, 50 -a6, -79.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 134, 1, 68.9 -a6, -81 +b6 , 0 );
--setMoveKey( spep_6 -3 + 136, 1, 47.3 -a6, -82.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 138, 1, 66.6 -a6, -83.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 140, 1, 44.5 -a6, -85.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 142, 1, 64.3 -a6, -86.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 144, 1, 41.8 -a6, -87.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 146, 1, 62 -a6, -89.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 148, 1, 39 -a6, -90.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 150, 1, 59.8 -a6, -91.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 152, 1, 36.3 -a6, -93.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 154, 1, 57.5 -a6, -94.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 156, 1, 33.5 -a6, -96.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 158, 1, 55.2 -a6, -97.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 160, 1, 30.8 -a6, -98.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 162, 1, 52.9 -a6, -100.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 164, 1, 28 -a6, -101.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 166, 1, 26.6 -a6, -103 +b6 , 0 );
--setMoveKey( spep_6 -3 + 167, 1, 26.6 -a6, -103 +b6 , 0 );

setScaleKey( spep_6 + 0, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 8, 1, 0.39, 0.39 );
--setScaleKey( spep_6 -3 + 32, 1, 0.39, 0.39 );
--setScaleKey( spep_6 -3 + 34, 1, 0.36, 0.36 );
setScaleKey( spep_6 -3 + 56, 1, 0.36, 0.36 );
--setScaleKey( spep_6 -3 + 58, 1, 0.36, 0.36 );--
--setScaleKey( spep_6 -3 + 60, 1, 0.39, 0.39 );
--setScaleKey( spep_6 -3 + 62, 1, 0.39, 0.39 );
--setScaleKey( spep_6 -3 + 64, 1, 0.42000000000000004, 0.42000000000000004 );
--setScaleKey( spep_6 -3 + 68, 1, 0.42000000000000004, 0.42000000000000004 );
--setScaleKey( spep_6 -3 + 70, 1, 0.44999999999999996, 0.44999999999999996 );
--setScaleKey( spep_6 -3 + 76, 1, 0.44999999999999996, 0.44999999999999996 );
--setScaleKey( spep_6 -3 + 78, 1, 0.48, 0.48 );
--setScaleKey( spep_6 -3 + 84, 1, 0.48, 0.48 );
--setScaleKey( spep_6 -3 + 86, 1, 0.51, 0.51 );
--setScaleKey( spep_6 -3 + 90, 1, 0.51, 0.51 );
--setScaleKey( spep_6 -3 + 92, 1, 0.54, 0.54 );
--setScaleKey( spep_6 -3 + 98, 1, 0.54, 0.54 );
--setScaleKey( spep_6 -3 + 100, 1, 0.5700000000000001, 0.5700000000000001 );
--setScaleKey( spep_6 -3 + 106, 1, 0.5700000000000001, 0.5700000000000001 );
--setScaleKey( spep_6 -3 + 108, 1, 0.6000000000000001, 0.6000000000000001 );
--setScaleKey( spep_6 -3 + 114, 1, 0.6000000000000001, 0.6000000000000001 );
--setScaleKey( spep_6 -3 + 116, 1, 0.63, 0.63 );
--setScaleKey( spep_6 -3 + 120, 1, 0.63, 0.63 );
--setScaleKey( spep_6 -3 + 122, 1, 0.66, 0.66 );
--setScaleKey( spep_6 -3 + 128, 1, 0.66, 0.66 );
--setScaleKey( spep_6 -3 + 130, 1, 0.6900000000000001, 0.6900000000000001 );
--setScaleKey( spep_6 -3 + 136, 1, 0.6900000000000001, 0.6900000000000001 );
--setScaleKey( spep_6 -3 + 138, 1, 0.72, 0.72 );
--setScaleKey( spep_6 -3 + 142, 1, 0.72, 0.72 );
--setScaleKey( spep_6 -3 + 144, 1, 0.75, 0.75 );
--setScaleKey( spep_6 -3 + 150, 1, 0.75, 0.75 );
--setScaleKey( spep_6 -3 + 152, 1, 0.78, 0.78 );
--setScaleKey( spep_6 -3 + 158, 1, 0.78, 0.78 );
--setScaleKey( spep_6 -3 + 160, 1, 0.81, 0.81 );
--setScaleKey( spep_6 -3 + 167, 1, 0.81, 0.81 );

setRotateKey( spep_6 + 0, 1, -33.9 );
setRotateKey( spep_6 -3 + 56, 1, -33.9 );
--setRotateKey( spep_6 -3 + 167, 1, -33.9 );

-- ** 音 ** --
--玉縮む
SE018 = playSe( spep_6 + 0, 1329 );
setSeVolumeByWorkId( spep_6 + 0, SE018, 33 );
setSeVolumeByWorkId( spep_6 + 2, SE018, 66 );
setSeVolumeByWorkId( spep_6 + 4, SE018, 99 );
setSeVolumeByWorkId( spep_6 + 6, SE018, 132 );
setSeVolumeByWorkId( spep_6 + 8, SE018, 166 );
stopSe( spep_6 + 54, SE018, 6 );
setStartTimeMs( SE018,  1633 );

--玉縮む
SE023 = playSe( spep_6 + 12, 1240 );
stopSe( spep_6 + 54, SE023, 14 );

--爆発
SE024 = playSe( spep_6 + 54, 1023 );
setSeVolumeByWorkId( spep_6 + 54, SE024, 92 );

--爆発
SE025 = playSe( spep_6 + 54, 1159 );
setSeVolumeByWorkId( spep_6 + 54, SE025, 92 );

--爆発
SE026 = playSe( spep_6 + 104, 1024 );
setSeVolumeByWorkId( spep_6 + 104, SE026, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 164 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 54 );
endPhase( spep_6 + 154 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --開幕	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 28;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 +12, 1072 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 20 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 40 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 60 );
setSeVolumeByWorkId( spep_0 + 18, SE001, 80 );
setSeVolumeByWorkId( spep_0 + 20, SE001, 100 );
setStartTimeMs( SE001,  333 );

--顔カットイン
SE002 = playSe( spep_0 + 28, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 96, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 指振り横(60F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
profile = entryEffectLife( spep_2 + 0, SP_02, 60, 0x100, -1, 0, 0, 0 );  --指振り横	ef_002
setEffMoveKey( spep_2 + 0, profile, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, profile, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, profile, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60, profile, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, profile, 0 );
setEffRotateKey( spep_2 + 60, profile, 0 );
setEffAlphaKey( spep_2 + 0, profile, 255 );
setEffAlphaKey( spep_2 + 60 -1, profile, 255 );
setEffAlphaKey( spep_2 + 60, profile, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--指横に振る
SE004 = playSe( spep_2 + 12, 4 );

--指横に振る
SE005 = playSe( spep_2 + 12, 1048 );
setSeVolumeByWorkId( spep_2 + 12, SE005, 66 );

--指の先が光る
SE006 = playSe( spep_2 + 36, 1042 );
setSeVolumeByWorkId( spep_2 + 36, SE006, 71 );
setPitch( spep_2 + 36, SE006, 500 );
setTimeStretch( SE006, 1.33, 10, 1 );

--指の先が光る
SE007 = playSe( spep_2 + 36, 1307 );
setSeVolumeByWorkId( spep_2 + 36, SE007, 178 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 60;


------------------------------------------------------
-- 正面指振り(96F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
swing = entryEffectLife( spep_3 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --正面指振り	ef_003
setEffMoveKey( spep_3 + 0, swing, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, swing, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, swing, -1.0, 1.0 );
setEffScaleKey( spep_3 + 96, swing, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, swing, 0 );
setEffRotateKey( spep_3 + 96, swing, 0 );
setEffAlphaKey( spep_3 + 0, swing, 255 );
setEffAlphaKey( spep_3 + 96 -1, swing, 255 );
setEffAlphaKey( spep_3 + 96, swing, 0 );

-- ** 音 ** --
--マルカリータの指をふる
SE008 = playSe( spep_3 + 24, 1288 );
setSeVolumeByWorkId( spep_3 + 24, SE008, 188 );
stopSe( spep_3 + 80, SE008, 12 );
setPitch( spep_3 + 24, SE008, 800 );
setTimeStretch( SE008, 1.53, 10, 1 );

--マルカリータの指をふる
SE009 = playSe( spep_3 + 26, 1189 );
setPitch( spep_3 + 26, SE009, 200 );
setTimeStretch( SE009, 1.13, 10, 1 );

--マルカリータの指をふる
SE010 = playSe( spep_3 + 46, 1189 );
setPitch( spep_3 + 46, SE010, 200 );
setTimeStretch( SE010, 1.13, 10, 1 );

--光広がる
SE011 = playSe( spep_3 + 80, 1303 );
setSeVolumeByWorkId( spep_3 + 80, SE011, 20 );
setSeVolumeByWorkId( spep_3 + 81, SE011, 40 );
setSeVolumeByWorkId( spep_3 + 82, SE011, 59 );
setStartTimeMs( SE011,  233 );
setPitch( spep_3 + 80, SE011, 100 );
setTimeStretch( SE011, 1.07, 10, 1 );

--光広がる
SE012 = playSe( spep_3 + 80, 1311 );
stopSe( spep_3 +140 + 34, SE012, 36 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


------------------------------------------------------
-- 敵を拘束(116F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
binding_f = entryEffectLife( spep_4 + 0, SP_04r, 116, 0x100, -1, 0, 0, 0 );  --敵を拘束(味方側)	ef_004_front
setEffMoveKey( spep_4 + 0, binding_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, binding_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, binding_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, binding_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, binding_f, 0 );
setEffRotateKey( spep_4 + 116, binding_f, 0 );
setEffAlphaKey( spep_4 + 0, binding_f, 255 );
setEffAlphaKey( spep_4 + 116 -1, binding_f, 255 );
setEffAlphaKey( spep_4 + 116, binding_f, 0 );

binding_b = entryEffectLife( spep_4 + 0, SP_05r, 116, 0x80, -1, 0, 0, 0 );  --敵を拘束(味方側)	ef_004_back
setEffMoveKey( spep_4 + 0, binding_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, binding_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, binding_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, binding_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, binding_b, 0 );
setEffRotateKey( spep_4 + 116, binding_b, 0 );
setEffAlphaKey( spep_4 + 0, binding_b, 255 );
setEffAlphaKey( spep_4 + 116 -1, binding_b, 255 );
setEffAlphaKey( spep_4 + 116, binding_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 119, 1, 0 );
changeAnime( spep_4 + 0, 1, 118 );
changeAnime( spep_4 -3 + 30, 1, 106 );

a4 = 30;
b4 = 35;
setMoveKey( spep_4 + 0, 1, 575.4 +a4, -544.2 +b4 , 0 );
setMoveKey( spep_4 + 1, 1, 456.4 +a4, -418.7 +b4 , 0 );
setMoveKey( spep_4 + 2, 1, 337.4 +a4, -293.2 +b4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 218.5 +a4, -167.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 99.6 +a4, -42.2 +b4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 99.4 +a4, -42.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 99.2 +a4, -42.1 +b4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 99 +a4, -42 +b4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 98.8 +a4, -41.9 +b4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 98.7 +a4, -41.8 +b4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 98.5 +a4, -41.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 98.3 +a4, -41.7 +b4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 98.2 +a4, -41.6 +b4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 98 +a4, -41.5 +b4 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 97.8 +a4, -41.4 +b4 , 0 );

a5 = 50;
b5 = 85;
setMoveKey( spep_4 -3 + 30, 1, 31.6 -a5, -68.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 114 -a5, -150.4 +b5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 96.4 -a5, -67.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 96.2 -a5, -66.4 +b5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 96 -a5, -65.6 +b5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 95.9 -a5, -64.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 95.7 -a5, -64 +b5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 31.2 -a5, -63.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 112.6 -a5, -143.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 95.1 -a5, -61.7 +b5 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 95 -a5, -60.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 94.8 -a5, -60.1 +b5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 94.6 -a5, -59.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 94.5 -a5, -58.6 +b5 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 94.3 -a5, -57.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 94.1 -a5, -57 +b5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 93.9 -a5, -56.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 30.7 -a5, -55.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 110.5 -a5, -132.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 93.4 -a5, -50.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 93.2 -a5, -48 +b5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 93 -a5, -45.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 92.9 -a5, -43 +b5 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 92.7 -a5, -40.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 30.2 -a5, -38 +b5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 109 -a5, -114.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 92.2 -a5, -33.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 87.2 -a5, -30.7 +b5 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 96.6 -a5, -28.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 86.8 -a5, -25.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 96.1 -a5, -20 +b5 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 86.2 -a5, -14.1 +b5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 95.3 -a5, -8.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 85.5 -a5, -2.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 94.5 -a5, 3.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 84.8 -a5, 9.4 +b5 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 93.8 -a5, 15.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 84.1 -a5, 20.9 +b5 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 93 -a5, 26.8 +b5 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 83.4 -a5, 32.5 +b5 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 92.2 -a5, 38.2 +b5 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 82.8 -a5, 44 +b5 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 91.5 -a5, 49.6 +b5 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 82.1 -a5, 55.3 +b5 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 90.8 -a5, 61 +b5 , 0 );
setMoveKey( spep_4 -3 + 119, 1, 90.8 -a5, 61 +b5 , 0 );

setScaleKey( spep_4 + 0, 1, 4.32, 4.32 );
setScaleKey( spep_4 + 1, 1, 3.78, 3.78 );
setScaleKey( spep_4 + 2, 1, 3.24, 3.24 );
setScaleKey( spep_4 -3 + 6, 1, 2.67, 2.67 );
--setScaleKey( spep_4 -3 + 8, 1, 2.13, 2.13 );
setScaleKey( spep_4 -3 + 14, 1, 2.13, 2.13 );
--setScaleKey( spep_4 -3 + 16, 1, 2.1, 2.1 );
setScaleKey( spep_4 -3 + 44, 1, 2.1, 2.1 );
--setScaleKey( spep_4 -3 + 46, 1, 2.07, 2.07 );
setScaleKey( spep_4 -3 + 58, 1, 2.07, 2.07 );
--setScaleKey( spep_4 -3 + 60, 1, 2.04, 2.04 );
setScaleKey( spep_4 -3 + 74, 1, 2.04, 2.04 );
--setScaleKey( spep_4 -3 + 76, 1, 2.01, 2.01 );
setScaleKey( spep_4 -3 + 88, 1, 2.01, 2.01 );
--setScaleKey( spep_4 -3 + 90, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 96, 1, 1.98, 1.98 );
--setScaleKey( spep_4 -3 + 98, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 104, 1, 1.95, 1.95 );
--setScaleKey( spep_4 -3 + 106, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 112, 1, 1.92, 1.92 );
--setScaleKey( spep_4 -3 + 114, 1, 1.89, 1.89 );
setScaleKey( spep_4 -3 + 119, 1, 1.89, 1.89 );

setRotateKey( spep_4 + 0, 1, -12.7 );
setRotateKey( spep_4 -3 + 29, 1, -12.7 );
setRotateKey( spep_4 -3 + 30, 1, -50.2 );
setRotateKey( spep_4 -3 + 119, 1, -50.2 );

-- ** 音 ** --
--敵束縛する
SE013 = playSe( spep_4 + 18, 1271 );
setSeVolumeByWorkId( spep_4 + 18, SE013, 140 );
stopSe( spep_4 +116 + 4, SE013, 30 );

--敵束縛する
SE014 = playSe( spep_4 + 20, 1325 );
setSeVolumeByWorkId( spep_4 + 20, SE014, 83 );
stopSe( spep_4 +116 + 4, SE014, 32 );

--敵束縛する
SE015 = playSe( spep_4 + 20, 1033 );

--敵束縛する
SE016 = playSe( spep_4 + 28, 1240 );
setSeVolumeByWorkId( spep_4 + 28, SE016, 141 );
stopSe( spep_4 +112, SE016, 30 );

--敵束縛する
SE017 = playSe( spep_4 + 28, 1130,"",0.6 );
setSeVolumeByWorkId( spep_4 + 28, SE017, 100 );
setPitch( spep_4 + 28, SE017, -700 );
setTimeStretch( SE017, 0.53, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;


------------------------------------------------------
-- 杖振り(68F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
wand = entryEffectLife( spep_5 + 0, SP_06, 68, 0x100, -1, 0, 0, 0 );  --杖振り	ef_005
setEffMoveKey( spep_5 + 0, wand, 0, 0 , 0 );
setEffMoveKey( spep_5 + 68, wand, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, wand, -1.0, 1.0 );
setEffScaleKey( spep_5 + 68, wand, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, wand, 0 );
setEffRotateKey( spep_5 + 68, wand, 0 );
setEffAlphaKey( spep_5 + 0, wand, 255 );
setEffAlphaKey( spep_5 + 68 -1, wand, 255 );
setEffAlphaKey( spep_5 + 68, wand, 0 );

-- ** 音 ** --
--杖かざす
SE019 = playSe( spep_5 + 18, 1042 );
setPitch( spep_5 + 18, SE019, 1000 );
setTimeStretch( SE019, 1.67, 10, 1 );

--杖かざす
SE020 = playSe( spep_5 + 22, 1246 );
setSeVolumeByWorkId( spep_5 + 22, SE020, 155 );
stopSe( spep_5 + 32, SE020, 2 );

--杖かざす
SE021 = playSe( spep_5 + 22, 1289 );
setSeVolumeByWorkId( spep_5 + 22, SE021, 40 );
setPitch( spep_5 + 22, SE021, 400 );
setTimeStretch( SE021, 1.27, 10, 1 );

--玉縮む
SE022 = playSe( spep_5 + 58, 1248,"",0.6 );
setSeVolumeByWorkId( spep_5 + 58, SE022, 132 );
setPitch( spep_5 + 58, SE022, -1000 );
setTimeStretch( SE022, 0.33, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 68 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 68;


------------------------------------------------------
-- フィニッシュ(164F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --フィニッシュ(味方側)	ef_006_front
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 164, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 164, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 164, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 164, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_08r, 0x80, -1, 0, 0, 0 );  --フィニッシュ(味方側)	ef_006_back
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 164, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 164, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 164, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 164, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 56, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );

a6 = 5;
b6 = 15;
setMoveKey( spep_6 + 0, 1, 134.3 -a6, -17.5 +b6 , 0 );
setMoveKey( spep_6 + 1, 1, 139.5 -a6, -17.4 +b6 , 0 );
setMoveKey( spep_6 + 2, 1, 126.9 -a6, -17.3 +b6 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 138 -a6, -17.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 125.6 -a6, -17.1 +b6 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 136.6 -a6, -17 +b6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 124.2 -a6, -16.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 135 -a6, -16.8 +b6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 122.8 -a6, -16.7 +b6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 133.5 -a6, -16.6 +b6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 121.4 -a6, -16.5 +b6 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 132.1 -a6, -16.4 +b6 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 120.1 -a6, -16.3 +b6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 130.5 -a6, -16.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 118.7 -a6, -16.1 +b6 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 129 -a6, -16.1 +b6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 117.3 -a6, -15.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 127.5 -a6, -15.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 115.9 -a6, -15.7 +b6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 126 -a6, -15.7 +b6 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 114.6 -a6, -15.6 +b6 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 124.5 -a6, -15.5 +b6 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 113.2 -a6, -15.4 +b6 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 123 -a6, -15.3 +b6 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 111.8 -a6, -15.2 +b6 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 121.5 -a6, -15.1 +b6 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 110.4 -a6, -15 +b6 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 120 -a6, -14.9 +b6 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 120 -a6, -14.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 56, 1, 46.1 -a6, -52.2 +b6 , 0 );--
--setMoveKey( spep_6 -3 + 58, 1, 147.7 -a6, 67.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 60, 1, 36.2 -a6, -99.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 62, 1, 31.6 -a6, 58.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 64, 1, 172.8 -a6, -83.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 66, 1, 64.9 -a6, 26.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 68, 1, 100.3 -a6, -35.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 70, 1, 105.4 -a6, -37.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 72, 1, 91.3 -a6, -38.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 74, 1, 103.1 -a6, -40 +b6 , 0 );
--setMoveKey( spep_6 -3 + 76, 1, 88.5 -a6, -41.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 78, 1, 100.8 -a6, -42.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 80, 1, 85.8 -a6, -44 +b6 , 0 );
--setMoveKey( spep_6 -3 + 82, 1, 98.6 -a6, -45.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 84, 1, 83.1 -a6, -46.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 86, 1, 96.3 -a6, -48.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 88, 1, 80.3 -a6, -49.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 90, 1, 94 -a6, -50.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 92, 1, 77.5 -a6, -52.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 94, 1, 91.7 -a6, -53.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 96, 1, 74.8 -a6, -55 +b6 , 0 );
--setMoveKey( spep_6 -3 + 98, 1, 89.5 -a6, -56.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 100, 1, 72 -a6, -57.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 102, 1, 87.1 -a6, -59.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 104, 1, 69.3 -a6, -60.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 106, 1, 84.9 -a6, -61.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 108, 1, 66.5 -a6, -63.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 110, 1, 82.6 -a6, -64.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 112, 1, 63.8 -a6, -66 +b6 , 0 );
--setMoveKey( spep_6 -3 + 114, 1, 80.3 -a6, -67.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 116, 1, 61 -a6, -68.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 118, 1, 78 -a6, -70 +b6 , 0 );
--setMoveKey( spep_6 -3 + 120, 1, 58.3 -a6, -71.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 122, 1, 75.8 -a6, -72.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 124, 1, 55.5 -a6, -74.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 126, 1, 73.4 -a6, -75.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 128, 1, 52.8 -a6, -76.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 130, 1, 71.2 -a6, -78.3 +b6 , 0 );
--setMoveKey( spep_6 -3 + 132, 1, 50 -a6, -79.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 134, 1, 68.9 -a6, -81 +b6 , 0 );
--setMoveKey( spep_6 -3 + 136, 1, 47.3 -a6, -82.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 138, 1, 66.6 -a6, -83.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 140, 1, 44.5 -a6, -85.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 142, 1, 64.3 -a6, -86.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 144, 1, 41.8 -a6, -87.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 146, 1, 62 -a6, -89.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 148, 1, 39 -a6, -90.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 150, 1, 59.8 -a6, -91.9 +b6 , 0 );
--setMoveKey( spep_6 -3 + 152, 1, 36.3 -a6, -93.4 +b6 , 0 );
--setMoveKey( spep_6 -3 + 154, 1, 57.5 -a6, -94.7 +b6 , 0 );
--setMoveKey( spep_6 -3 + 156, 1, 33.5 -a6, -96.1 +b6 , 0 );
--setMoveKey( spep_6 -3 + 158, 1, 55.2 -a6, -97.5 +b6 , 0 );
--setMoveKey( spep_6 -3 + 160, 1, 30.8 -a6, -98.8 +b6 , 0 );
--setMoveKey( spep_6 -3 + 162, 1, 52.9 -a6, -100.2 +b6 , 0 );
--setMoveKey( spep_6 -3 + 164, 1, 28 -a6, -101.6 +b6 , 0 );
--setMoveKey( spep_6 -3 + 166, 1, 26.6 -a6, -103 +b6 , 0 );
--setMoveKey( spep_6 -3 + 167, 1, 26.6 -a6, -103 +b6 , 0 );

setScaleKey( spep_6 + 0, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 8, 1, 0.39, 0.39 );
--setScaleKey( spep_6 -3 + 32, 1, 0.39, 0.39 );
--setScaleKey( spep_6 -3 + 34, 1, 0.36, 0.36 );
setScaleKey( spep_6 -3 + 56, 1, 0.36, 0.36 );
--setScaleKey( spep_6 -3 + 58, 1, 0.36, 0.36 );--
--setScaleKey( spep_6 -3 + 60, 1, 0.39, 0.39 );
--setScaleKey( spep_6 -3 + 62, 1, 0.39, 0.39 );
--setScaleKey( spep_6 -3 + 64, 1, 0.42000000000000004, 0.42000000000000004 );
--setScaleKey( spep_6 -3 + 68, 1, 0.42000000000000004, 0.42000000000000004 );
--setScaleKey( spep_6 -3 + 70, 1, 0.44999999999999996, 0.44999999999999996 );
--setScaleKey( spep_6 -3 + 76, 1, 0.44999999999999996, 0.44999999999999996 );
--setScaleKey( spep_6 -3 + 78, 1, 0.48, 0.48 );
--setScaleKey( spep_6 -3 + 84, 1, 0.48, 0.48 );
--setScaleKey( spep_6 -3 + 86, 1, 0.51, 0.51 );
--setScaleKey( spep_6 -3 + 90, 1, 0.51, 0.51 );
--setScaleKey( spep_6 -3 + 92, 1, 0.54, 0.54 );
--setScaleKey( spep_6 -3 + 98, 1, 0.54, 0.54 );
--setScaleKey( spep_6 -3 + 100, 1, 0.5700000000000001, 0.5700000000000001 );
--setScaleKey( spep_6 -3 + 106, 1, 0.5700000000000001, 0.5700000000000001 );
--setScaleKey( spep_6 -3 + 108, 1, 0.6000000000000001, 0.6000000000000001 );
--setScaleKey( spep_6 -3 + 114, 1, 0.6000000000000001, 0.6000000000000001 );
--setScaleKey( spep_6 -3 + 116, 1, 0.63, 0.63 );
--setScaleKey( spep_6 -3 + 120, 1, 0.63, 0.63 );
--setScaleKey( spep_6 -3 + 122, 1, 0.66, 0.66 );
--setScaleKey( spep_6 -3 + 128, 1, 0.66, 0.66 );
--setScaleKey( spep_6 -3 + 130, 1, 0.6900000000000001, 0.6900000000000001 );
--setScaleKey( spep_6 -3 + 136, 1, 0.6900000000000001, 0.6900000000000001 );
--setScaleKey( spep_6 -3 + 138, 1, 0.72, 0.72 );
--setScaleKey( spep_6 -3 + 142, 1, 0.72, 0.72 );
--setScaleKey( spep_6 -3 + 144, 1, 0.75, 0.75 );
--setScaleKey( spep_6 -3 + 150, 1, 0.75, 0.75 );
--setScaleKey( spep_6 -3 + 152, 1, 0.78, 0.78 );
--setScaleKey( spep_6 -3 + 158, 1, 0.78, 0.78 );
--setScaleKey( spep_6 -3 + 160, 1, 0.81, 0.81 );
--setScaleKey( spep_6 -3 + 167, 1, 0.81, 0.81 );

setRotateKey( spep_6 + 0, 1, -33.9 );
setRotateKey( spep_6 -3 + 56, 1, -33.9 );
--setRotateKey( spep_6 -3 + 167, 1, -33.9 );

-- ** 音 ** --
--玉縮む
SE018 = playSe( spep_6 + 0, 1329 );
setSeVolumeByWorkId( spep_6 + 0, SE018, 33 );
setSeVolumeByWorkId( spep_6 + 2, SE018, 66 );
setSeVolumeByWorkId( spep_6 + 4, SE018, 99 );
setSeVolumeByWorkId( spep_6 + 6, SE018, 132 );
setSeVolumeByWorkId( spep_6 + 8, SE018, 166 );
stopSe( spep_6 + 54, SE018, 6 );
setStartTimeMs( SE018,  1633 );

--玉縮む
SE023 = playSe( spep_6 + 12, 1240 );
stopSe( spep_6 + 54, SE023, 14 );

--爆発
SE024 = playSe( spep_6 + 54, 1023 );
setSeVolumeByWorkId( spep_6 + 54, SE024, 92 );

--爆発
SE025 = playSe( spep_6 + 54, 1159 );
setSeVolumeByWorkId( spep_6 + 54, SE025, 92 );

--爆発
SE026 = playSe( spep_6 + 104, 1024 );
setSeVolumeByWorkId( spep_6 + 104, SE026, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 164 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 54 );
endPhase( spep_6 + 154 );

end