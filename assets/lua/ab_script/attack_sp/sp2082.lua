--1020920:魔神ドミグラ_エナジージェット
--sp_effect_a7_00041
--sp2082

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
SP_01=	156207	;--	杖構え
SP_02=	156209	;--	技発動
SP_03=	156211	;--	フィニッシュ
SP_04=	156213	;--	フィニッシュ　背景

--エフェクト(てき)
SP_01x=	156208	;--	杖構え
SP_02x=	156210	;--	技発動
SP_03x=	156212	;--	フィニッシュ
SP_04x=	156213	;--	フィニッシュ　背景

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.9);

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
-- 杖構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 +196, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 +196, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 +196, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 +196, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 112,  906, 82+3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 112, shuchusen1, 82+3, 20 );
setEffMoveKey( spep_0-3 + 112, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 194, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 112, shuchusen1, 1.81, 1.81 );
setEffScaleKey( spep_0 + 194, shuchusen1, 1.81, 1.81 );

setEffRotateKey( spep_0-3 + 112, shuchusen1, 180 );
setEffRotateKey( spep_0 + 194, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 112, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 194, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+108  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+108  , 1505, 0x100, -1, 0, 0, 0, 1920 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +120, 190006, 72, 0x100, -1, 0, -050, 390, 1192);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +120,  ctgogo,  -105,  390);
setEffMoveKey(  spep_0 +192,  ctgogo,  -105,  390);

setEffAlphaKey( spep_0 +120, ctgogo, 0 );
setEffAlphaKey( spep_0 + 121, ctgogo, 255 );
setEffAlphaKey( spep_0 + 192, ctgogo, 255 );

setEffRotateKey(  spep_0 +120,  ctgogo,  0);
setEffRotateKey(  spep_0 +192,  ctgogo,  0);

setEffScaleKey(  spep_0 +120,  ctgogo,  0.87,  0.87);
setEffScaleKey(  spep_0 +192,  ctgogo, 0.87, 0.87);

--SE
--杖テイクオフ
SE001 = playSe( spep_0 + 24, 1003 );
SE002 = playSe( spep_0 + 24, 1117 );
stopSe( spep_0 + 36, SE002, 32 );
SE003 = playSe( spep_0 + 24, 1026 );
setSeVolumeByWorkId( spep_0 + 24, SE003, 72 );

--杖ぐるぐる回る
SE004 = playSe( spep_0 + 38, 1175 );
setSeVolumeByWorkId( spep_0 + 38, SE004, 60 );
stopSe( spep_0 + 190, SE004, 52 );
SE005 = playSe( spep_0 + 38, 1194 );
stopSe( spep_0 + 190, SE005, 40 );
SE006 = playSe( spep_0 + 38, 1226 );
setSeVolumeByWorkId( spep_0 + 38, SE006, 45 );
SE007 = playSe( spep_0 + 46, 1004 );
setSeVolumeByWorkId( spep_0 + 46, SE007, 85 );
setPitch( spep_0 + 46, SE007, -400 );
setTimeStretch( SE007, 0.73, 10, 1 );
SE008 = playSe( spep_0 + 74, 1004 );
setSeVolumeByWorkId( spep_0 + 74, SE008, 83 );
setPitch( spep_0 + 74, SE008, -400 );
setTimeStretch( SE008, 0.73, 10, 1 );
SE009 = playSe( spep_0 + 98, 1004 );
setSeVolumeByWorkId( spep_0 + 98, SE009, 78 );
setPitch( spep_0 + 98, SE009, -400 );
setTimeStretch( SE009, 0.73, 10, 1 );

--顔カットイン
SE011 = playSe( spep_0 + 120, 1018 );

--杖キャッチ
SE010 = playSe( spep_0 + 110, 1233 );
setSeVolumeByWorkId( spep_0 + 110, SE010, 54 );
SE012 = playSe( spep_0 + 120, 1006 );

--白フェード
entryFade( spep_0+0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+188 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 196, 0,  0, 0, 0, 160 ); --くろ 背景

--次の準備
spep_1=spep_0+196;
------------------------------------------------------
-- 技発動
------------------------------------------------------
-- ** エフェクト等 ** --
technique = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, technique, 0, 0, 0 );
setEffMoveKey( spep_1 +74, technique, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, technique, 1.0, 1.0 );
setEffScaleKey( spep_1 +74, technique, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, technique, 0 );
setEffRotateKey( spep_1 +74, technique, 0 );
setEffAlphaKey( spep_1 + 0, technique, 255 );
setEffAlphaKey( spep_1 +74, technique, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 74, 1, 0 );

changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 505, -394 , 0 );
setMoveKey( spep_1 + 14, 1, 505, -394 , 0 );
setMoveKey( spep_1 + 16, 1, 478.3, -376.2 , 0 );
setMoveKey( spep_1 + 18, 1, 451.6, -358.5 , 0 );
setMoveKey( spep_1 + 20, 1, 425, -340.8 , 0 );
setMoveKey( spep_1 + 22, 1, 398.3, -323.1 , 0 );
setMoveKey( spep_1 + 24, 1, 371.7, -305.4 , 0 );
setMoveKey( spep_1 + 26, 1, 345, -287.7 , 0 );
setMoveKey( spep_1 + 28, 1, 318.3, -270 , 0 );
setMoveKey( spep_1 + 30, 1, 291.7, -252.3 , 0 );
setMoveKey( spep_1 + 32, 1, 265, -234.6 , 0 );
setMoveKey( spep_1 + 34, 1, 238.4, -216.9 , 0 );
setMoveKey( spep_1 + 36, 1, 211.7, -199.2 , 0 );
setMoveKey( spep_1 + 38, 1, 185.1, -181.5 , 0 );
setMoveKey( spep_1 + 50, 1, 185.1, -181.5 , 0 );

a=-0.2;

setScaleKey( spep_1 + 0, 1, 3.94+a, 3.94+a );
setScaleKey( spep_1 + 14, 1, 3.94+a, 3.94+a );
setScaleKey( spep_1 + 16, 1, 3.81+a, 3.81+a );
setScaleKey( spep_1 + 18, 1, 3.68+a, 3.68+a );
setScaleKey( spep_1 + 20, 1, 3.55+a, 3.55+a );
setScaleKey( spep_1 + 22, 1, 3.42+a, 3.42+a );
setScaleKey( spep_1 + 24, 1, 3.3+a, 3.3+a );
setScaleKey( spep_1 + 26, 1, 3.17+a, 3.17+a );
setScaleKey( spep_1 + 28, 1, 3.04+a, 3.04+a );
setScaleKey( spep_1 + 30, 1, 2.91+a, 2.91+a );
setScaleKey( spep_1 + 32, 1, 2.78+a, 2.78+a );
setScaleKey( spep_1 + 34, 1, 2.66+a, 2.66+a );
setScaleKey( spep_1 + 36, 1, 2.53+a, 2.53+a );
setScaleKey( spep_1 + 38, 1, 2.4+a, 2.4+a );
setScaleKey( spep_1 + 50, 1, 2.4+a, 2.4+a );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 50, 1, 0 );

--SE
--気弾手に溜める
SE013 = playSe( spep_1 + 8, 1222 );
setSeVolumeByWorkId( spep_1 + 8, SE013, 71 );
SE014 = playSe( spep_1 + 8, 1265 );
setSeVolumeByWorkId( spep_1 + 8, SE014, 83 );
setPitch( spep_1 + 8, SE014, -500 );
setTimeStretch( SE014, 0.67, 10, 1 );
SE015 = playSe( spep_1 + 8, 1200 );
setSeVolumeByWorkId( spep_1 + 8, SE015, 224 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );

    pauseAll( SP_dodge, 67 );
    

    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵座標の固定
    setMoveKey( SP_dodge + 9, 1, 185.1, -181.5 , 0 );
    setScaleKey( SP_dodge + 9, 1, 2.4, 2.4 );
    setRotateKey( SP_dodge + 9, 1, 0 );

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setMoveKey( spep_1 + 74, 1, 185.1, -181.5 , 0 );
setScaleKey( spep_1 + 74, 1, 2.4+a, 2.4+a );
setRotateKey( spep_1 + 74, 1, 0 );
--白フェード
entryFade( spep_1+70 , 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+74;
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
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_2, SE_05);
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

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --

-- playSe( spep_2 + 0, SE_05 );

--杖ぐるぐる回る
stopSe( spep_2 + 2, SE006, 0 );

--気弾手に溜める
stopSe( spep_2 + 2, SE013, 0 );
stopSe( spep_2 + 2, SE014, 0 );
stopSe( spep_2 + 2, SE015, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 技発動
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 +230, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 +230, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 +230, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 +230, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 +230, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 +230, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 +230, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 +230, finish_b, 255 );

--SE
--気弾溜める
SE017 = playSe( spep_3 + 0, 1227 );
SE018 = playSe( spep_3 + 14, 1226 );
stopSe( spep_3 + 88, SE018, 16 );
SE019 = playSe( spep_3 + 14, 1240 );
setSeVolumeByWorkId( spep_3 + 14, SE019, 200 );
stopSe( spep_3 + 94, SE019, 10 );
SE020 = playSe( spep_3 + 14, 1243 );
setPitch( spep_3 + 14, SE020, -600 );
setTimeStretch( SE020, 0.6, 10, 1 );
stopSe( spep_3 + 98, SE020, 12 );

--爆発
SE021 = playSe( spep_3 + 90, 1069 );
SE022 = playSe( spep_3 + 106, 1159 );
SE023 = playSe( spep_3 + 120, 1023 );
setSeVolumeByWorkId( spep_3 + 120, SE023, 78 );
SE024 = playSe( spep_3 + 134, 1188 );
setSeVolumeByWorkId( spep_3 + 134, SE024, 71 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 230, 0,  0, 0, 0, 160 ); --くろ 背景

--終わり
dealDamage( spep_3 +100 );
endPhase( spep_3 + 220 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 杖構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 +196, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 +196, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 +196, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 +196, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 112,  906, 82+3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 112, shuchusen1, 82+3, 20 );
setEffMoveKey( spep_0-3 + 112, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 194, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 112, shuchusen1, 1.81, 1.81 );
setEffScaleKey( spep_0 + 194, shuchusen1, 1.81, 1.81 );

setEffRotateKey( spep_0-3 + 112, shuchusen1, 180 );
setEffRotateKey( spep_0 + 194, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 112, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 194, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+108  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+108  , 1505, 0x100, -1, 0, 0, 0, 1920 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +120, 190006, 72, 0x100, -1, 0, -050, 390, 1192);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +120,  ctgogo,  -105,  390);
setEffMoveKey(  spep_0 +192,  ctgogo,  -105,  390);

setEffAlphaKey( spep_0 +120, ctgogo, 0 );
setEffAlphaKey( spep_0 + 121, ctgogo, 255 );
setEffAlphaKey( spep_0 + 192, ctgogo, 255 );

setEffRotateKey(  spep_0 +120,  ctgogo,  0);
setEffRotateKey(  spep_0 +192,  ctgogo,  0);

setEffScaleKey(  spep_0 +120,  ctgogo,  -0.87,  0.87);
setEffScaleKey(  spep_0 +192,  ctgogo, -0.87, 0.87);

--SE
--杖テイクオフ
SE001 = playSe( spep_0 + 24, 1003 );
SE002 = playSe( spep_0 + 24, 1117 );
stopSe( spep_0 + 36, SE002, 32 );
SE003 = playSe( spep_0 + 24, 1026 );
setSeVolumeByWorkId( spep_0 + 24, SE003, 72 );

--杖ぐるぐる回る
SE004 = playSe( spep_0 + 38, 1175 );
setSeVolumeByWorkId( spep_0 + 38, SE004, 60 );
stopSe( spep_0 + 190, SE004, 52 );
SE005 = playSe( spep_0 + 38, 1194 );
stopSe( spep_0 + 190, SE005, 40 );
SE006 = playSe( spep_0 + 38, 1226 );
setSeVolumeByWorkId( spep_0 + 38, SE006, 45 );
SE007 = playSe( spep_0 + 46, 1004 );
setSeVolumeByWorkId( spep_0 + 46, SE007, 85 );
setPitch( spep_0 + 46, SE007, -400 );
setTimeStretch( SE007, 0.73, 10, 1 );
SE008 = playSe( spep_0 + 74, 1004 );
setSeVolumeByWorkId( spep_0 + 74, SE008, 83 );
setPitch( spep_0 + 74, SE008, -400 );
setTimeStretch( SE008, 0.73, 10, 1 );
SE009 = playSe( spep_0 + 98, 1004 );
setSeVolumeByWorkId( spep_0 + 98, SE009, 78 );
setPitch( spep_0 + 98, SE009, -400 );
setTimeStretch( SE009, 0.73, 10, 1 );

--顔カットイン
--SE011 = playSe( spep_0 + 120, 1018 );

--杖キャッチ
SE010 = playSe( spep_0 + 110, 1233 );
setSeVolumeByWorkId( spep_0 + 110, SE010, 54 );
SE012 = playSe( spep_0 + 120, 1006 );

--白フェード
entryFade( spep_0+0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0+188 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 196, 0,  0, 0, 0, 160 ); --くろ 背景

--次の準備
spep_1=spep_0+196;
------------------------------------------------------
-- 技発動
------------------------------------------------------
-- ** エフェクト等 ** --
technique = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, technique, 0, 0, 0 );
setEffMoveKey( spep_1 +74, technique, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, technique, 1.0, 1.0 );
setEffScaleKey( spep_1 +74, technique, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, technique, 0 );
setEffRotateKey( spep_1 +74, technique, 0 );
setEffAlphaKey( spep_1 + 0, technique, 255 );
setEffAlphaKey( spep_1 +74, technique, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 74, 1, 0 );

changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 505, -394 , 0 );
setMoveKey( spep_1 + 14, 1, 505, -394 , 0 );
setMoveKey( spep_1 + 16, 1, 478.3, -376.2 , 0 );
setMoveKey( spep_1 + 18, 1, 451.6, -358.5 , 0 );
setMoveKey( spep_1 + 20, 1, 425, -340.8 , 0 );
setMoveKey( spep_1 + 22, 1, 398.3, -323.1 , 0 );
setMoveKey( spep_1 + 24, 1, 371.7, -305.4 , 0 );
setMoveKey( spep_1 + 26, 1, 345, -287.7 , 0 );
setMoveKey( spep_1 + 28, 1, 318.3, -270 , 0 );
setMoveKey( spep_1 + 30, 1, 291.7, -252.3 , 0 );
setMoveKey( spep_1 + 32, 1, 265, -234.6 , 0 );
setMoveKey( spep_1 + 34, 1, 238.4, -216.9 , 0 );
setMoveKey( spep_1 + 36, 1, 211.7, -199.2 , 0 );
setMoveKey( spep_1 + 38, 1, 185.1, -181.5 , 0 );
setMoveKey( spep_1 + 50, 1, 185.1, -181.5 , 0 );

a=-0.2;

setScaleKey( spep_1 + 0, 1, 3.94+a, 3.94+a );
setScaleKey( spep_1 + 14, 1, 3.94+a, 3.94+a );
setScaleKey( spep_1 + 16, 1, 3.81+a, 3.81+a );
setScaleKey( spep_1 + 18, 1, 3.68+a, 3.68+a );
setScaleKey( spep_1 + 20, 1, 3.55+a, 3.55+a );
setScaleKey( spep_1 + 22, 1, 3.42+a, 3.42+a );
setScaleKey( spep_1 + 24, 1, 3.3+a, 3.3+a );
setScaleKey( spep_1 + 26, 1, 3.17+a, 3.17+a );
setScaleKey( spep_1 + 28, 1, 3.04+a, 3.04+a );
setScaleKey( spep_1 + 30, 1, 2.91+a, 2.91+a );
setScaleKey( spep_1 + 32, 1, 2.78+a, 2.78+a );
setScaleKey( spep_1 + 34, 1, 2.66+a, 2.66+a );
setScaleKey( spep_1 + 36, 1, 2.53+a, 2.53+a );
setScaleKey( spep_1 + 38, 1, 2.4+a, 2.4+a );
setScaleKey( spep_1 + 50, 1, 2.4+a, 2.4+a );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 50, 1, 0 );

--SE
--気弾手に溜める
SE013 = playSe( spep_1 + 8, 1222 );
setSeVolumeByWorkId( spep_1 + 8, SE013, 71 );
SE014 = playSe( spep_1 + 8, 1265 );
setSeVolumeByWorkId( spep_1 + 8, SE014, 83 );
setPitch( spep_1 + 8, SE014, -500 );
setTimeStretch( SE014, 0.67, 10, 1 );
SE015 = playSe( spep_1 + 8, 1200 );
setSeVolumeByWorkId( spep_1 + 8, SE015, 224 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );

    pauseAll( SP_dodge, 67 );
    

    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵座標の固定
    setMoveKey( SP_dodge + 9, 1, 185.1, -181.5 , 0 );
    setScaleKey( SP_dodge + 9, 1, 2.4, 2.4 );
    setRotateKey( SP_dodge + 9, 1, 0 );

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setMoveKey( spep_1 + 74, 1, 185.1, -181.5 , 0 );
setScaleKey( spep_1 + 74, 1, 2.4+a, 2.4+a );
setRotateKey( spep_1 + 74, 1, 0 );
--白フェード
entryFade( spep_1+70 , 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+74;
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

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--杖ぐるぐる回る
stopSe( spep_2 + 2, SE006, 0 );

--気弾手に溜める
stopSe( spep_2 + 2, SE013, 0 );
stopSe( spep_2 + 2, SE014, 0 );
stopSe( spep_2 + 2, SE015, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 技発動
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 +230, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 +230, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 +230, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 +230, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 +230, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 +230, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 +230, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 +230, finish_b, 255 );

--SE
--気弾溜める
SE017 = playSe( spep_3 + 0, 1227 );
SE018 = playSe( spep_3 + 14, 1226 );
stopSe( spep_3 + 88, SE018, 16 );
SE019 = playSe( spep_3 + 14, 1240 );
setSeVolumeByWorkId( spep_3 + 14, SE019, 200 );
stopSe( spep_3 + 94, SE019, 10 );
SE020 = playSe( spep_3 + 14, 1243 );
setPitch( spep_3 + 14, SE020, -600 );
setTimeStretch( SE020, 0.6, 10, 1 );
stopSe( spep_3 + 98, SE020, 12 );

--爆発
SE021 = playSe( spep_3 + 90, 1069 );
SE022 = playSe( spep_3 + 106, 1159 );
SE023 = playSe( spep_3 + 120, 1023 );
setSeVolumeByWorkId( spep_3 + 120, SE023, 78 );
SE024 = playSe( spep_3 + 134, 1188 );
setSeVolumeByWorkId( spep_3 + 134, SE024, 71 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 230, 0,  0, 0, 0, 160 ); --くろ 背景

--終わり
dealDamage( spep_3 +100 );
endPhase( spep_3 + 220 );
end