--1021880:邪悪龍軍団_超必殺技：邪悪龍大進撃
--sp_effect_a9_00084
--sp2188

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
SP_01=	157309	;--	邪悪龍軍団登場
SP_02=	157310	;--	巨大化した五星龍の攻撃
SP_03=	157311	;--	巨大化した五星龍の攻撃_敵に当たる
SP_04=	157312	;--	六星龍の攻撃
SP_05=	157313	;--	六星龍の攻撃_敵に当たる_敵より手前
SP_06=	157314	;--	六星龍の攻撃_敵に当たる_敵より奥
SP_07=	157315	;--	七星龍攻撃
SP_08=	157317	;--	七星龍攻撃_敵に当たる_敵より手前
SP_09=	157318	;--	七星龍攻撃_敵に当たる_敵より奥
SP_10=	157321	;--	二星龍攻撃
SP_11=	157322	;--	二星龍攻撃_敵に当たる_敵より手前
SP_12=	157323	;--	二星龍攻撃_敵に当たる_敵より奥
SP_13=	157326	;--	三星龍アップ
SP_14=	157327	;--	三星龍気弾溜め
SP_15=	157329	;--	四星龍、三星龍攻撃
SP_16=	157331	;--	敵に気弾が迫る
SP_17=	157332	;--	一星龍のフィニッシュ気溜め
SP_18=	157334	;--	一星龍のフィニッシュ発射
SP_19=	157336	;--	フィニッシュ 

--エフェクト(てき)
SP_01x=	157309	;--	邪悪龍軍団登場	
SP_02x=	157310	;--	巨大化した五星龍の攻撃	
SP_03x=	157311	;--	巨大化した五星龍の攻撃_敵に当たる	
SP_04x=	157346	;--	六星龍の攻撃	
SP_05x=	157313	;--	六星龍の攻撃_敵に当たる_敵より手前	
SP_06x=	157314	;--	六星龍の攻撃_敵に当たる_敵より奥	
SP_07x=	157316	;--	七星龍攻撃	(敵)
SP_08x=	157319	;--	七星龍攻撃_敵に当たる_敵より手前	(敵)
SP_09x=	157320	;--	七星龍攻撃_敵に当たる_敵より奥	(敵)
SP_10x=	157321	;--	二星龍攻撃	
SP_11x=	157324	;--	二星龍攻撃_敵に当たる_敵より手前	
SP_12x=	157325	;--	二星龍攻撃_敵に当たる_敵より奥	
SP_13x=	157326	;--	三星龍アップ	
SP_14x=	157328	;--	三星龍気弾溜め	
SP_15x=	157330	;--	四星龍、三星龍攻撃	(敵)
SP_16x=	157331	;--	敵に気弾が迫る	
SP_17x=	157333	;--	一星龍のフィニッシュ気溜め	(敵)
SP_18x=	157335	;--	一星龍のフィニッシュ発射	(敵)
SP_19x=	157336	;--	フィニッシュ 	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

adjustAttackerLabel( 0, 205);

ENABLE_AUTO_TIME_STRETCH(0.75);


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
--[[
--変数一覧
a=40;
b=20;
c=75;
d=80;
e=10;
f=60;
]]
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 邪悪龍軍団登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 126, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126, appearance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 126, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 124, appearance, 255 );
setEffAlphaKey( spep_0 + 125, appearance, 255 );
setEffAlphaKey( spep_0 + 126, appearance, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 22, 1072 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 22, SE001, 87 );

--瞬間移動
SE002 = playSe( spep_0 + 52, 1235 );
setSeVolumeByWorkId( spep_0 + 52, SE002, 58 );
SE003 = playSe( spep_0 + 56, 1109 );

--五星龍巨大化
SE004 = playSe( spep_0 + 74, 49 );
setSeVolumeByWorkId( spep_0 + 74, SE004, 112 );
SE005 = playSe( spep_0 + 74, 1113 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 200 );
SE006 = playSe( spep_0 + 84, 1113 );
setSeVolumeByWorkId( spep_0 + 84, SE006, 158 );
SE007 = playSe( spep_0 + 92, 1113 );
setSeVolumeByWorkId( spep_0 + 92, SE007, 200 );
setPitch( spep_0 + 92, SE007, -600 );
setTimeStretch( SE007, 0.6, 10, 1 );
SE008 = playSe( spep_0 + 98, 49 );
setSeVolumeByWorkId( spep_0 + 98, SE008, 126 );
SE009 = playSe( spep_0 + 104, 1113 );
setSeVolumeByWorkId( spep_0 + 104, SE009, 200 );
SE010 = playSe( spep_0 + 112, 1113 );
SE012 = playSe( spep_0 + 118, 1113 );
setSeVolumeByWorkId( spep_0 + 118, SE012, 200 );
setPitch( spep_0 + 118, SE012, -600 );
setTimeStretch( SE012, 0.6, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+126;
------------------------------------------------------
-- 巨大化した五星龍の攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
giant = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, giant, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, giant, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, giant, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, giant, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, giant, 0 );
setEffRotateKey( spep_1 + 76, giant, 0 );
setEffAlphaKey( spep_1 + 0, giant, 255 );
setEffAlphaKey( spep_1 + 74, giant, 255 );
setEffAlphaKey( spep_1 + 75, giant, 255 );
setEffAlphaKey( spep_1 + 76, giant, 0 );

--SE
--五星龍気弾溜め
SE013 = playSe( spep_1 + 0, 1274 );
setSeVolumeByWorkId( spep_1 + 0, SE013, 72 );
setTimeStretch( SE013, 0.67, 10, 1 );
SE014 = playSe( spep_1 + 8, 1004 );
setSeVolumeByWorkId( spep_1 + 8, SE014, 73 );
setPitch( spep_1 + 8, SE014, -300 );
setTimeStretch( SE014, 0.8, 10, 1 );
SE016 = playSe( spep_1 + 34, 1130 );
setSeVolumeByWorkId( spep_1 + 34, SE016, 67 );
setPitch( spep_1 + 34, SE016, -500 );
setTimeStretch( SE016, 0.67, 10, 1 );
stopSe( spep_1 + 58, SE016, 10 );

--五星龍ビーム発射
SE011 = playSe( spep_1 + 42, 1242 );
setSeVolumeByWorkId( spep_1 + 42, SE011, 0 );
setSeVolumeByWorkId( spep_1 + 43, SE011, 21 );
setSeVolumeByWorkId( spep_1 + 44, SE011, 42 );
setSeVolumeByWorkId( spep_1 + 45, SE011, 63 );
setSeVolumeByWorkId( spep_1 + 46, SE011, 84 );
setSeVolumeByWorkId( spep_1 + 47, SE011, 105 );
setSeVolumeByWorkId( spep_1 + 48, SE011, 126 );
setStartTimeMs( SE011,  1000 );
SE015 = playSe( spep_1 + 44, 1305 );
setSeVolumeByWorkId( spep_1 + 44, SE015, 0 );
setSeVolumeByWorkId( spep_1 + 45, SE015, 31.5 );
setSeVolumeByWorkId( spep_1 + 46, SE015, 63 );
setSeVolumeByWorkId( spep_1 + 47, SE015, 94.5 );
setSeVolumeByWorkId( spep_1 + 48, SE015, 126 );
setStartTimeMs( SE015,  633 );
SE017 = playSe( spep_1 + 46, 1243 );
setSeVolumeByWorkId( spep_1 + 46, SE017, 126 );
SE018 = playSe( spep_1 + 46, 1114 );
setSeVolumeByWorkId( spep_1 + 46, SE018, 83 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--次の準備
spep_2=spep_1+76;
------------------------------------------------------
-- 巨大化した五星龍の攻撃_敵に当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_2 + 46, hit, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, hit, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit, 0 );
setEffRotateKey( spep_2 + 46, hit, 0 );
setEffAlphaKey( spep_2 + 0, hit, 255 );
setEffAlphaKey( spep_2 + 44, hit, 255 );
setEffAlphaKey( spep_2 + 45, hit, 255 );
setEffAlphaKey( spep_2 + 46, hit, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 46, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-3 + 22, 1, 108 );
changeAnime( spep_2-3 + 28, 1, 106 );
changeAnime( spep_2-3 + 34, 1, 108 );
changeAnime( spep_2-3 + 40, 1, 106 );
changeAnime( spep_2-3 + 46, 1, 108 );
setBlendColor(spep_2-3 + 22,1,3,0,0.8,1,0.5);
setBlendColor(spep_2 + 46,1,3,0,0.8,1,0);

a=40;
b=20;
c=75;
d=80;
g=10;
h=50;

setMoveKey( spep_2 + 0, 1, 0+a, 0+b , 0 );
setMoveKey( spep_2-3 + 21, 1, 0+a, 0+b , 0 );
setMoveKey( spep_2-3 + 22, 1, -0.6+c, 21+b , 0 );
setMoveKey( spep_2-3 + 24, 1, -0.5+c, -31+b , 0 );
setMoveKey( spep_2-3 + 27, 1, -0.6+c, 14.5+b , 0 );
setMoveKey( spep_2-3 + 28, 1, 21.9+g, -35.4+h , 0 );
setMoveKey( spep_2-3 + 30, 1, 21.9+g, 3.6+h , 0 );
setMoveKey( spep_2-3 + 33, 1, 21.9+g, -28.9+h , 0 );
setMoveKey( spep_2-3 + 34, 1, -0.5+c, 8+b , 0 );
setMoveKey( spep_2-3 + 36, 1, -0.5+c, -18+b , 0 );
setMoveKey( spep_2-3 + 39, 1, -0.5+c, 1.5+b , 0 );
setMoveKey( spep_2-3 + 40, 1, 21.9+g, -15.9+h , 0 );
setMoveKey( spep_2-3 + 45, 1, 21.9+g, -15.9+h , 0 );
setMoveKey( spep_2 + 46, 1, -0.5+c, -5+b , 0 );

setScaleKey( spep_2 + 0, 1,1.17,1.17);
setScaleKey( spep_2-3 + 4, 1, 1.29,1.29);
setScaleKey( spep_2-3 + 6, 1, 1.32,1.32);
setScaleKey( spep_2-3 + 8, 1, 1.35,1.35);
setScaleKey( spep_2-3 + 10, 1,1.35,1.35);
setScaleKey( spep_2-3 + 12, 1,1.38,1.38);
setScaleKey( spep_2-3 + 21, 1,1.38,1.38);
setScaleKey( spep_2-3 + 22, 1,1.5,1.5);
setScaleKey( spep_2 + 46, 1,1.5,1.5);

setRotateKey( spep_2-3 + 0, 1, 0 );
setRotateKey( spep_2-3 + 27, 1, 0 );
setRotateKey( spep_2-3 + 28, 1, -20 );
setRotateKey( spep_2-3 + 33, 1, -20 );
setRotateKey( spep_2-3 + 34, 1, 0 );
setRotateKey( spep_2-3 + 39, 1, 0 );
setRotateKey( spep_2-3 + 40, 1, -20 );
setRotateKey( spep_2-3 + 45, 1, -20 );
setRotateKey( spep_2-3 + 46, 1, 0 );
setRotateKey( spep_2 + 46, 1, 0 );

--SE
--五星龍ビーム発射
stopSe( spep_2 + 22, SE011, 14 );
stopSe( spep_2 + 22, SE015, 8 );
stopSe( spep_2 + 22, SE017, 10 );

--ビームヒット
SE019 = playSe( spep_2 + 20, 1023 );
SE020 = playSe( spep_2 + 20, 1038 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+44;
------------------------------------------------------
-- 六星龍の攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
six = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, six, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, six, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, six, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, six, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, six, 0 );
setEffRotateKey( spep_3 + 96, six, 0 );
setEffAlphaKey( spep_3 + 0, six, 255 );
setEffAlphaKey( spep_3 + 94, six, 255 );
setEffAlphaKey( spep_3 + 95, six, 255 );
setEffAlphaKey( spep_3 + 96, six, 0 );

--SE
--ビームヒット
stopSe( spep_3 + 4, SE019, 36 );
stopSe( spep_3 + 6, SE020, 20 );

--六星龍腕クロス
SE021 = playSe( spep_3 + 0, 1048 );

--六星龍ビーム発射
SE022 = playSe( spep_3 + 38, 1227 );	
setSeVolumeByWorkId( spep_3 + 38, SE022, 0 );
setSeVolumeByWorkId( spep_3 + 39, SE022, 10 );
setSeVolumeByWorkId( spep_3 + 40, SE022, 20 );
setSeVolumeByWorkId( spep_3 + 41, SE022, 30 );
setSeVolumeByWorkId( spep_3 + 42, SE022, 40 );
setSeVolumeByWorkId( spep_3 + 43, SE022, 50 );
setSeVolumeByWorkId( spep_3 + 44, SE022, 60 );
setSeVolumeByWorkId( spep_3 + 45, SE022, 70 );
setSeVolumeByWorkId( spep_3 + 46, SE022, 80 );
setSeVolumeByWorkId( spep_3 + 47, SE022, 90 );
setSeVolumeByWorkId( spep_3 + 48, SE022, 100 );
setStartTimeMs( SE022,  600 );
SE023 = playSe( spep_3 + 38, 1027 );
setSeVolumeByWorkId( spep_3 + 38, SE023, 79 );
SE024 = playSe( spep_3 + 38, 1239 );
SE025 = playSe( spep_3 + 38, 1249 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+96;
------------------------------------------------------
-- 六星龍の攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit2_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 26, hit2_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 26, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit2_f, 0 );
setEffRotateKey( spep_4 + 26, hit2_f, 0 );
setEffAlphaKey( spep_4 + 0, hit2_f, 255 );
setEffAlphaKey( spep_4 + 24, hit2_f, 255 );
setEffAlphaKey( spep_4 + 25, hit2_f, 255 );
setEffAlphaKey( spep_4 + 26, hit2_f, 0 );

-- ** エフェクト等 ** --
hit2_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit2_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 26, hit2_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit2_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 26, hit2_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit2_b, 0 );
setEffRotateKey( spep_4 + 26, hit2_b, 0 );
setEffAlphaKey( spep_4 + 0, hit2_b, 255 );
setEffAlphaKey( spep_4 + 24, hit2_b, 255 );
setEffAlphaKey( spep_4 + 25, hit2_b, 255 );
setEffAlphaKey( spep_4 + 26, hit2_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 28, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 22, -123+a , 0 );
setMoveKey( spep_4 + 2, 1, 28, -119.2+a , 0 );
setMoveKey( spep_4 + 4, 1, 18, -115.6+a , 0 );
setMoveKey( spep_4 + 6, 1, 26, -112.1+a , 0 );
setMoveKey( spep_4 + 8, 1, 18, -108.8+a , 0 );
setMoveKey( spep_4 + 10, 1, 26, -105.7+a , 0 );
setMoveKey( spep_4 + 12, 1, 18, -102.7+a , 0 );
setMoveKey( spep_4 + 14, 1, 26, -99.9+a , 0 );
setMoveKey( spep_4 + 16, 1, 18, -97.3+a , 0 );
setMoveKey( spep_4 + 18, 1, 26, -94.8+a , 0 );
setMoveKey( spep_4 + 20, 1, 18, -92.4+a , 0 );
setMoveKey( spep_4 + 22, 1, 26, -90.3+a , 0 );
setMoveKey( spep_4 + 24, 1, 16, -88.3+a , 0 );
setMoveKey( spep_4 + 26, 1, 26, -86.5+a , 0 );
setMoveKey( spep_4 + 28, 1, 20, -84.8+a , 0 );

setScaleKey( spep_4 + 0, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 28, 1, 1.36, 1.36 );

setRotateKey( spep_4 + 0, 1, -35.9 );
setRotateKey( spep_4 + 28, 1, -35.9 );

--SE
--六星龍ビーム発射
stopSe( spep_4 + 4, SE022, 10 );
stopSe( spep_4 + 4, SE024, 10 );
stopSe( spep_4 + 4, SE025, 10 );

--六星龍竜巻きヒット
SE026 = playSe( spep_4 + 0, 1258 );	
setSeVolumeByWorkId( spep_4 + 0, SE026, 70 );
SE027 = playSe( spep_4 + 4, 1025 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 30, 0,  0, 0, 0, 255 ); --くろ 背景

spep_5=spep_4+24;
------------------------------------------------------
-- 七星龍攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
seven = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, seven, 0, 0, 0 );
setEffMoveKey( spep_5 + 44, seven, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, seven, 1.0, 1.0 );
setEffScaleKey( spep_5 + 44, seven, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, seven, 0 );
setEffRotateKey( spep_5 + 44, seven, 0 );
setEffAlphaKey( spep_5 + 0, seven, 255 );
setEffAlphaKey( spep_5 + 42, seven, 255 );
setEffAlphaKey( spep_5 + 43, seven, 255 );
setEffAlphaKey( spep_5 + 44, seven, 0 );

--SE
--六星龍竜巻きヒット
stopSe( spep_5 + 6, SE026, 46 );
stopSe( spep_5 + 6, SE027, 44 );

--七星龍地面殴る
SE028 = playSe( spep_5 + 24, 1231 );
SE030 = playSe( spep_5 + 30, 1192 );
SE031 = playSe( spep_5 + 30, 1190 );
setTimeStretch( SE031, 0.77, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

spep_6=spep_5+44;
------------------------------------------------------
-- 七星龍攻撃_敵に当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit3_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit3_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, hit3_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit3_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, hit3_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit3_f, 0 );
setEffRotateKey( spep_6 + 46, hit3_f, 0 );
setEffAlphaKey( spep_6 + 0, hit3_f, 255 );
setEffAlphaKey( spep_6 + 44, hit3_f, 255 );
setEffAlphaKey( spep_6 + 45, hit3_f, 255 );
setEffAlphaKey( spep_6 + 46, hit3_f, 0 );

-- ** エフェクト等 ** --
hit3_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit3_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, hit3_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit3_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, hit3_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit3_b, 0 );
setEffRotateKey( spep_6 + 46, hit3_b, 0 );
setEffAlphaKey( spep_6 + 0, hit3_b, 255 );
setEffAlphaKey( spep_6 + 44, hit3_b, 255 );
setEffAlphaKey( spep_6 + 45, hit3_b, 255 );
setEffAlphaKey( spep_6 + 46, hit3_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 46, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6-3 + 26, 1, 108 );

setBlendColor(spep_6-3 + 26,1,3,0,0,0,1);
setBlendColor(spep_6 + 46,1,3,0,0,0,0);

e=10;
f=60;

setMoveKey( spep_6 + 0, 1, 21.9, -35.9+a , 0 );
--setMoveKey( spep_6-3 + 2, 1, 24.7, -35.6 , 0 );
setMoveKey( spep_6-3 + 4, 1, 22.7, -35.4+a , 0 );
setMoveKey( spep_6-3 + 6, 1, 22.7, -35.1+a , 0 );
setMoveKey( spep_6-3 + 8, 1, 14.7, -41.6+a , 0 );
setMoveKey( spep_6-3 + 10, 1, 29.1, -41.4+a , 0 );
setMoveKey( spep_6-3 + 12, 1, 14.7, -41.1+a , 0 );
setMoveKey( spep_6-3 + 14, 1, 27.5, -40.9+a , 0 );
setMoveKey( spep_6-3 + 16, 1, 14.7, -40.6+a , 0 );
setMoveKey( spep_6-3 + 18, 1, 25.9, -40.4+a , 0 );
setMoveKey( spep_6-3 + 20, 1, 19.1, -33.7+a , 0 );
setMoveKey( spep_6-3 + 22, 1, 24.3, -44.6+a , 0 );
setMoveKey( spep_6-3 + 25, 1, 25.9, -36.4+a , 0 );
setMoveKey( spep_6-3 + 26, 1, -13.8+f, -6+e , 0 );
setMoveKey( spep_6-3 + 28, 1, -5.8+f, 1.8+e , 0 );
setMoveKey( spep_6-3 + 30, 1, -13.8+f, -3.2+e , 0 );
setMoveKey( spep_6-3 + 32, 1, -5.8+f, 4.7+e , 0 );
setMoveKey( spep_6-3 + 34, 1, -5.8+f, -1.9+e , 0 );
setMoveKey( spep_6-3 + 36, 1, -13.8+f, 9.1+e , 0 );
setMoveKey( spep_6-3 + 38, 1, -5.8+f, 2.5+e , 0 );
setMoveKey( spep_6-3 + 40, 1, -13.8+f, 10.3+e , 0 );
setMoveKey( spep_6-3 + 42, 1, -5.8+f, 6.9+e , 0 );
setMoveKey( spep_6-3 + 44, 1, -15.8+f, 13.2+e , 0 );
setMoveKey( spep_6-3 + 46, 1, -5.8+f, 8.2+e , 0 );
setMoveKey( spep_6 + 48, 1, -11.8+f, 16+e , 0 );


setScaleKey( spep_6 + 0, 1, 1.33, 1.33 );
setScaleKey( spep_6 + 48, 1, 1.33, 1.33 );

setRotateKey( spep_6 + 0, 1, -35.9 );
setRotateKey( spep_6-3 + 25, 1, -35.9 );
setRotateKey( spep_6-3 + 26, 1, 0 );
setRotateKey( spep_6 + 46, 1, 0 );

--SE
--地面からビーム出る
SE029 = playSe( spep_6 + 0, 1265 );
setSeVolumeByWorkId( spep_6 + 0, SE029, 0 );
setSeVolumeByWorkId( spep_6 + 1, SE029, 25 );
setSeVolumeByWorkId( spep_6 + 2, SE029, 50 );
setSeVolumeByWorkId( spep_6 + 3, SE029, 75 );
setSeVolumeByWorkId( spep_6 + 4, SE029, 100 );
setStartTimeMs( SE029,  350 );
stopSe( spep_6 + 36, SE029, 26 );
SE032 = playSe( spep_6 + 0, 1278 );
stopSe( spep_6 + 44, SE032, 18 );

--地面爆発
SE033 = playSe( spep_6 + 16, 1067 );
SE034 = playSe( spep_6 + 16, 1159 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

spep_7=spep_6+44;
------------------------------------------------------
-- 二星龍攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
two = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, two, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, two, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, two, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, two, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, two, 0 );
setEffRotateKey( spep_7 + 56, two, 0 );
setEffAlphaKey( spep_7 + 0, two, 255 );
setEffAlphaKey( spep_7 + 54, two, 255 );
setEffAlphaKey( spep_7 + 55, two, 255 );
setEffAlphaKey( spep_7 + 56, two, 0 );

--SE
--二星龍気弾溜め
SE035 = playSe( spep_7 + 2, 1276 );
setSeVolumeByWorkId( spep_7 + 2, SE035, 0 );
setSeVolumeByWorkId( spep_7 + 3, SE035, 13.2 );
setSeVolumeByWorkId( spep_7 + 4, SE035, 26.4 );
setSeVolumeByWorkId( spep_7 + 5, SE035, 39.6 );
setSeVolumeByWorkId( spep_7 + 6, SE035, 52.8 );
setSeVolumeByWorkId( spep_7 + 7, SE035, 66 );
setSeVolumeByWorkId( spep_7 + 8, SE035, 79 );
setStartTimeMs( SE035,  200 );
setPitch( spep_7 + 2, SE035, -200 );
setTimeStretch( SE035, 0.87, 10, 1 );
SE036 = playSe( spep_7 + 0, 1316 );
setSeVolumeByWorkId( spep_7 + 0, SE036, 174 );
stopSe( spep_7 + 26, SE036, 8 );
setPitch( spep_7 + 0, SE036, -200 );
setTimeStretch( SE036, 0.87, 10, 1 );
SE037 = playSe( spep_7 + 0, 1144 );
setSeVolumeByWorkId( spep_7 + 0, SE037, 70 );
stopSe( spep_7 + 26, SE037, 8 );
setPitch( spep_7 + 0, SE037, 300 );
setTimeStretch( SE037, 1.2, 10, 1 );

--二星龍気弾発射
SE038 = playSe( spep_7 + 28, 1022 );
SE039 = playSe( spep_7 + 32, 1027 );
SE040 = playSe( spep_7 + 32, 1178 );
setSeVolumeByWorkId( spep_7 + 32, SE040, 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

spep_8=spep_7+56;
------------------------------------------------------
-- 二星龍攻撃_敵に当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit4_f = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit4_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 36, hit4_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit4_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, hit4_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit4_f, 0 );
setEffRotateKey( spep_8 + 36, hit4_f, 0 );
setEffAlphaKey( spep_8 + 0, hit4_f, 255 );
setEffAlphaKey( spep_8 + 34, hit4_f, 255 );
setEffAlphaKey( spep_8 + 35, hit4_f, 255 );
setEffAlphaKey( spep_8 + 36, hit4_f, 0 );

-- ** エフェクト等 ** --
hit4_b = entryEffect( spep_8 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit4_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 36, hit4_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit4_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, hit4_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit4_b, 0 );
setEffRotateKey( spep_8 + 36, hit4_b, 0 );
setEffAlphaKey( spep_8 + 0, hit4_b, 255 );
setEffAlphaKey( spep_8 + 34, hit4_b, 255 );
setEffAlphaKey( spep_8 + 35, hit4_b, 255 );
setEffAlphaKey( spep_8 + 36, hit4_b, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-3 + 18, 1, 0 );

changeAnime( spep_8 + 0, 1, 108 );

setMoveKey( spep_8 + 0, 1, 516.1+c, 25.9 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 409.1, -15.7 , 0 );
setMoveKey( spep_8-3 + 4, 1, 302+c, -54.9 , 0 );
setMoveKey( spep_8-3 + 5, 1, 302+c, -54.9 , 0 );
setMoveKey( spep_8-3 + 6, 1, 194.9+c, -91.7 , 0 );
setMoveKey( spep_8-3 + 7, 1, 194.9+c, -91.7 , 0 );
setMoveKey( spep_8-3 + 8, 1, 91.1+c, -99.3 , 0 );
setMoveKey( spep_8-3 + 9, 1, 91.1+c, -99.3 , 0 );
setMoveKey( spep_8-3 + 10, 1, 13.2+c, -90.7 , 0 );
setMoveKey( spep_8-3 + 11, 1, 13.2+c, -90.7 , 0 );
setMoveKey( spep_8-3 + 12, 1, 42.4+c, -75.5 , 0 );
setMoveKey( spep_8-3 + 13, 1, 42.4+c, -75.5 , 0 );
setMoveKey( spep_8-3 + 14, 1, 351.6+c, -90.3 , 0 );
setMoveKey( spep_8-3 + 15, 1, 351.6+c, -90.3 , 0 );
setMoveKey( spep_8-3 + 16, 1, 660.9+c, -65.2 , 0 );
setMoveKey( spep_8-3 + 17, 1, 660.9+c, -65.2 , 0 );
setMoveKey( spep_8-3 + 18, 1, 692.4+c, -81.2 , 0 );

setScaleKey( spep_8 + 0, 1,1.71,1.71);
setScaleKey( spep_8-3 + 4, 1, 1.59,1.59);
setScaleKey( spep_8-3 + 5, 1, 1.59,1.59);
setScaleKey( spep_8-3 + 6, 1, 1.56,1.56);
setScaleKey( spep_8-3 + 7, 1, 1.56,1.56);
setScaleKey( spep_8-3 + 8, 1, 1.44,1.44);
setScaleKey( spep_8-3 + 9, 1, 1.44,1.44);
setScaleKey( spep_8-3 + 10, 1,1.32,1.32);
setScaleKey( spep_8-3 + 11, 1,1.32,1.32);
setScaleKey( spep_8-3 + 12, 1,1.26,1.26);
setScaleKey( spep_8-3 + 13, 1,1.26,1.26);
setScaleKey( spep_8-3 + 14, 1,1.2,1.2);
setScaleKey( spep_8-3 + 15, 1,1.2,1.2);
setScaleKey( spep_8-3 + 16, 1,1.14,1.14);
setScaleKey( spep_8-3 + 18, 1,1.14,1.14);

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8-3 + 18, 1, 0 );

--SE
--気弾ヒット
SE041 = playSe( spep_8 + 10, 1017 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

spep_9=spep_8+36;
------------------------------------------------------
-- 三星龍アップ
------------------------------------------------------
-- ** エフェクト等 ** --
three = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, three, 0, 0, 0 );
setEffMoveKey( spep_9 + 26, three, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, three, 1.0, 1.0 );
setEffScaleKey( spep_9 + 26, three, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, three, 0 );
setEffRotateKey( spep_9 + 26, three, 0 );
setEffAlphaKey( spep_9 + 0, three, 255 );
setEffAlphaKey( spep_9 + 24, three, 255 );
setEffAlphaKey( spep_9 + 25, three, 255 );
setEffAlphaKey( spep_9 + 26, three, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 30, 0,  0, 0, 0, 255 ); --くろ 背景

spep_10=spep_9+24;
------------------------------------------------------
-- 三星龍気弾溜め	
------------------------------------------------------
-- ** エフェクト等 ** --
three_tame = entryEffect( spep_10 + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, three_tame, 0, 0, 0 );
setEffMoveKey( spep_10 + 56, three_tame, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, three_tame, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, three_tame, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, three_tame, 0 );
setEffRotateKey( spep_10 + 56, three_tame, 0 );
setEffAlphaKey( spep_10 + 0, three_tame, 255 );
setEffAlphaKey( spep_10 + 54, three_tame, 255 );
setEffAlphaKey( spep_10 + 55, three_tame, 255 );
setEffAlphaKey( spep_10 + 56, three_tame, 0 );

--SE
--三星龍手が変形して気弾溜め
SE043 = playSe( spep_10 + 6, 1291 );
SE044 = playSe( spep_10 + 6, 1183 );
setSeVolumeByWorkId( spep_10 + 6, SE044, 88 );
SE045 = playSe( spep_10 + 18, 1276 );
setSeVolumeByWorkId( spep_10 + 18, SE045, 63 );
stopSe( spep_10 + 34, SE045, 8 );
SE042 = playSe( spep_10 + 26, 1136 );
setSeVolumeByWorkId( spep_10 + 26, SE042, 0 );
setSeVolumeByWorkId( spep_10 + 27, SE042, 10 );
setSeVolumeByWorkId( spep_10 + 28, SE042, 20 );
setSeVolumeByWorkId( spep_10 + 29, SE042, 30 );
setSeVolumeByWorkId( spep_10 + 30, SE042, 40 );
setSeVolumeByWorkId( spep_10 + 31, SE042, 50 );
setSeVolumeByWorkId( spep_10 + 32, SE042, 60 );
setSeVolumeByWorkId( spep_10 + 33, SE042, 70 );
setSeVolumeByWorkId( spep_10 + 34, SE042, 80 );
setSeVolumeByWorkId( spep_10 + 35, SE042, 90 );
setSeVolumeByWorkId( spep_10 + 36, SE042, 100 );
setStartTimeMs( SE042,  1317 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

spep_11=spep_10+56;
------------------------------------------------------
-- 四星龍、三星龍攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
wattack = entryEffect( spep_11 + 0, SP_15, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, wattack, 0, 0, 0 );
setEffMoveKey( spep_11 + 146, wattack, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, wattack, 1.0, 1.0 );
setEffScaleKey( spep_11 + 146, wattack, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, wattack, 0 );
setEffRotateKey( spep_11 + 146, wattack, 0 );
setEffAlphaKey( spep_11 + 0, wattack, 255 );
setEffAlphaKey( spep_11 + 144, wattack, 255 );
setEffAlphaKey( spep_11 + 145, wattack, 255 );
setEffAlphaKey( spep_11 + 146, wattack, 0 );

--敵の動き
setDisp( spep_11-3 + 90, 1, 1 );
setDisp( spep_11-1 + 148, 1, 0 );

changeAnime( spep_11-3 + 90, 1, 105 );

setMoveKey( spep_11-3 + 90, 1, 6017.6, -5160.9+b , 0 );
setMoveKey( spep_11-3 + 92, 1, 2352.1, -2202.6+b , 0 );
setMoveKey( spep_11-3 + 94, 1, 1435.6, -1462.6+b , 0 );
setMoveKey( spep_11-3 + 96, 1, 521.5, -732.8+b , 0 );
setMoveKey( spep_11-3 + 98, 1, 411.3, -646.2+b , 0 );
setMoveKey( spep_11-3 + 100, 1, 301.4, -560.9+b , 0 );
setMoveKey( spep_11-3 + 102, 1, 191.7, -476.8+b , 0 );
setMoveKey( spep_11-3 + 104, 1, 82.4, -393.9+b , 0 );
setMoveKey( spep_11-3 + 106, 1, 80.9, -389.5+b , 0 );
setMoveKey( spep_11-3 + 108, 1, 79.4, -385+b , 0 );
setMoveKey( spep_11-3 + 110, 1, 77.9, -380.7+b , 0 );
setMoveKey( spep_11-3 + 112, 1, 76.5, -376.3+b , 0 );
setMoveKey( spep_11-3 + 114, 1, 75, -372.1+b , 0 );
setMoveKey( spep_11-3 + 116, 1, 73.6, -367.7+b , 0 );
setMoveKey( spep_11-3 + 118, 1, 72.1, -363.5+b , 0 );
setMoveKey( spep_11-3 + 120, 1, 70.7, -359.3+b , 0 );
setMoveKey( spep_11-3 + 122, 1, 69.3, -355.1+b , 0 );
setMoveKey( spep_11-3 + 124, 1, 67.9, -351+b , 0 );
setMoveKey( spep_11-3 + 126, 1, 66.5, -346.9+b , 0 );
setMoveKey( spep_11-3 + 128, 1, 65, -330.8+b , 0 );
setMoveKey( spep_11-3 + 130, 1, 63.6, -336.8+b , 0 );
setMoveKey( spep_11-3 + 132, 1, 52.3, -348.7+b , 0 );
setMoveKey( spep_11-3 + 134, 1, 60.9, -330.8+b , 0 );
setMoveKey( spep_11-3 + 136, 1, 67.5, -318.8+b , 0 );
setMoveKey( spep_11-3 + 138, 1, 58.1, -330.9+b , 0 );
setMoveKey( spep_11-3 + 140, 1, 56.7, -309+b , 0 );
setMoveKey( spep_11-3 + 142, 1, 55.4, -327.1+b , 0 );
setMoveKey( spep_11-3 + 144, 1, 58, -309.3+b , 0 );
setMoveKey( spep_11-3 + 146, 1, 46.7, -309.5+b , 0 );
setMoveKey( spep_11-1 + 148, 1, 51.4, -303.7+b , 0 );

setScaleKey( spep_11-3 + 90, 1, 63.66,63.66);
setScaleKey( spep_11-3 + 92, 1, 25.89,25.89);
setScaleKey( spep_11-3 + 94, 1, 16.44,16.44);
setScaleKey( spep_11-3 + 96, 1, 7.08,7.08);
setScaleKey( spep_11-3 + 98, 1, 5.94,5.94);
setScaleKey( spep_11-3 + 100, 1,4.83,4.83);
setScaleKey( spep_11-3 + 102, 1,3.69,3.69);
setScaleKey( spep_11-3 + 104, 1,2.61,2.61);
setScaleKey( spep_11-3 + 106, 1,2.55,2.55);
setScaleKey( spep_11-3 + 108, 1,2.52,2.52);
setScaleKey( spep_11-3 + 110, 1,2.46,2.46);
setScaleKey( spep_11-3 + 112, 1,2.43,2.43);
setScaleKey( spep_11-3 + 114, 1,2.4,2.4);
setScaleKey( spep_11-3 + 116, 1,2.34,2.34);
setScaleKey( spep_11-3 + 118, 1,2.31,2.31);
setScaleKey( spep_11-3 + 120, 1,2.28,2.28);
setScaleKey( spep_11-3 + 122, 1,2.22,2.22);
setScaleKey( spep_11-3 + 124, 1,2.19,2.19);
setScaleKey( spep_11-3 + 126, 1,2.16,2.16);
setScaleKey( spep_11-3 + 128, 1,2.1,2.1);
setScaleKey( spep_11-3 + 130, 1,2.07,2.07);
setScaleKey( spep_11-3 + 132, 1,2.04,2.04);
setScaleKey( spep_11-3 + 134, 1,2.01,2.01);
setScaleKey( spep_11-3 + 136, 1,1.95,1.95);
setScaleKey( spep_11-3 + 138, 1,1.92,1.92);
setScaleKey( spep_11-3 + 140, 1,1.89,1.89);
setScaleKey( spep_11-3 + 142, 1,1.86,1.86);
setScaleKey( spep_11-3 + 144, 1,1.8,1.8);
setScaleKey( spep_11-3 + 146, 1,1.77,1.77);
setScaleKey( spep_11-1 + 148, 1,1.74,1.74);

setRotateKey( spep_11-3 + 90, 1, -12.8 );
setRotateKey( spep_11-3 + 92, 1, -12.7 );
setRotateKey( spep_11-3 + 94, 1, -12.5 );
setRotateKey( spep_11-3 + 96, 1, -12.2 );
setRotateKey( spep_11-3 + 98, 1, -11.9 );
setRotateKey( spep_11-3 + 100, 1, -11.7 );
setRotateKey( spep_11-3 + 102, 1, -11.4 );
setRotateKey( spep_11-3 + 104, 1, -11.2 );
setRotateKey( spep_11-3 + 106, 1, -10.9 );
setRotateKey( spep_11-3 + 108, 1, -10.6 );
setRotateKey( spep_11-3 + 110, 1, -10.4 );
setRotateKey( spep_11-3 + 112, 1, -10.1 );
setRotateKey( spep_11-3 + 114, 1, -9.9 );
setRotateKey( spep_11-3 + 116, 1, -9.6 );
setRotateKey( spep_11-3 + 118, 1, -9.3 );
setRotateKey( spep_11-3 + 120, 1, -9.1 );
setRotateKey( spep_11-3 + 122, 1, -8.8 );
setRotateKey( spep_11-3 + 124, 1, -8.6 );
setRotateKey( spep_11-3 + 126, 1, -8.3 );
setRotateKey( spep_11-3 + 128, 1, -8 );
setRotateKey( spep_11-3 + 130, 1, -7.8 );
setRotateKey( spep_11-3 + 132, 1, -7.5 );
setRotateKey( spep_11-3 + 134, 1, -7.3 );
setRotateKey( spep_11-3 + 136, 1, -7 );
setRotateKey( spep_11-3 + 138, 1, -6.7 );
setRotateKey( spep_11-3 + 140, 1, -6.5 );
setRotateKey( spep_11-3 + 142, 1, -6.2 );
setRotateKey( spep_11-3 + 144, 1, -6 );
setRotateKey( spep_11-3 + 146, 1, -5.7 );
setRotateKey( spep_11-1 + 148, 1, -5.4 );

--SE
--三星龍手が変形して気弾溜め
stopSe( spep_11 + 18, SE042, 28 );
stopSe( spep_11 + 56, SE043, 16 );
stopSe( spep_11 + 14, SE044, 10 );

--四星龍気弾溜め
SE047 = playSe( spep_11 + 0, 1295 );
SE048 = playSe( spep_11 + 0, 1239 );
stopSe( spep_11 + 140, SE048, 18 );
SE049 = playSe( spep_11 + 2, 1056 );
setSeVolumeByWorkId( spep_11 + 2, SE049, 68 );
SE046 = playSe( spep_11 + 2, 1200 );
setSeVolumeByWorkId( spep_11 + 2, SE046, 0 );
setSeVolumeByWorkId( spep_11 + 3, SE046, 31.4 );
setSeVolumeByWorkId( spep_11 + 4, SE046, 62.8 );
setSeVolumeByWorkId( spep_11 + 5, SE046, 94.2 );
setSeVolumeByWorkId( spep_11 + 6, SE046, 125.6 );
setSeVolumeByWorkId( spep_11 + 7, SE046, 157 );
setSeVolumeByWorkId( spep_11 + 8, SE046, 188.4 );
setSeVolumeByWorkId( spep_11 + 9, SE046, 219.8 );
setSeVolumeByWorkId( spep_11 + 10, SE046, 251 );
stopSe( spep_11 + 66, SE046, 12 );
setStartTimeMs( SE046,  333 );
SE050 = playSe( spep_11 + 28, 1116 );
stopSe( spep_11 + 56, SE050, 18 );
SE051 = playSe( spep_11 + 56, 1200 );
setSeVolumeByWorkId( spep_11 + 56, SE051, 0 );
setSeVolumeByWorkId( spep_11 + 57, SE051, 25.1 );
setSeVolumeByWorkId( spep_11 + 58, SE051, 50.2 );
setSeVolumeByWorkId( spep_11 + 59, SE051, 75.3 );
setSeVolumeByWorkId( spep_11 + 60, SE051, 100.4 );
setSeVolumeByWorkId( spep_11 + 61, SE051, 125.5 );
setSeVolumeByWorkId( spep_11 + 62, SE051, 150.6 );
setSeVolumeByWorkId( spep_11 + 63, SE051, 175.7 );
setSeVolumeByWorkId( spep_11 + 64, SE051, 200.8 );
setSeVolumeByWorkId( spep_11 + 65, SE051, 225.9 );
setSeVolumeByWorkId( spep_11 + 66, SE051, 251 );
stopSe( spep_11 + 126, SE051, 18 );
setStartTimeMs( SE051,  300 );
SE053 = playSe( spep_11 + 50, 1056 );
setSeVolumeByWorkId( spep_11 + 50, SE053, 60 );

--四星龍アップ
SE054 = playSe( spep_11-10 + 56, 1072 );
setSeVolumeByWorkId( spep_11-10 + 56, SE054, 141 );
SE052 = playSe( spep_11-10 + 80, 1188 );
setSeVolumeByWorkId( spep_11-10 + 80, SE052, 0 );
setSeVolumeByWorkId( spep_11-10 + 81, SE052, 9.4 );
setSeVolumeByWorkId( spep_11-10 + 82, SE052, 18.8 );
setSeVolumeByWorkId( spep_11-10 + 83, SE052, 28.2 );
setSeVolumeByWorkId( spep_11-10 + 84, SE052, 37.6 );
setSeVolumeByWorkId( spep_11-10 + 85, SE052, 47 );
setSeVolumeByWorkId( spep_11-10 + 86, SE052, 56.4 );
setSeVolumeByWorkId( spep_11-10 + 87, SE052, 65.8 );
setSeVolumeByWorkId( spep_11-10 + 88, SE052, 75.2 );
setSeVolumeByWorkId( spep_11-10 + 89, SE052, 84.6 );
setSeVolumeByWorkId( spep_11-10 + 90, SE052, 94 );
setSeVolumeByWorkId( spep_11-10 + 91, SE052, 103.4 );
setSeVolumeByWorkId( spep_11-10 + 92, SE052, 112 );
setStartTimeMs( SE052,  600 );

--四星龍気弾溜め
SE055 = playSe( spep_11 + 98, 1056 );
setSeVolumeByWorkId( spep_11 + 98, SE055, 60 );

--気弾発射
SE056 = playSe( spep_11 + 126, 1027 );
setSeVolumeByWorkId( spep_11 + 126, SE056, 86 );
SE057 = playSe( spep_11 + 126, 1193 );
setSeVolumeByWorkId( spep_11 + 126, SE057, 89 );
SE058 = playSe( spep_11 + 126, 1202 );


-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景

spep_12=spep_11+144;
------------------------------------------------------
-- 敵に気弾が迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit5 = entryEffect( spep_12 + 0, SP_16, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, hit5, 0, 0, 0 );
setEffMoveKey( spep_12 + 40, hit5, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, hit5, 1.0, 1.0 );
setEffScaleKey( spep_12 + 40, hit5, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, hit5, 0 );
setEffRotateKey( spep_12 + 40, hit5, 0 );
setEffAlphaKey( spep_12 + 0, hit5, 255 );
setEffAlphaKey( spep_12 + 40, hit5, 255 );

--SE
--気弾発射
stopSe( spep_12 + 4, SE056, 8 );
stopSe( spep_12 + 4, SE057, 8 );
stopSe( spep_12 + 4, SE058, 8 );

--爆発
SE059 = playSe( spep_12 + 0, 1068 );
SE060 = playSe( spep_12 + 0, 1268 );
SE061 = playSe( spep_12 + 0, 1024 );

--白フェード
entryFade( spep_12 + 32, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_12 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

spep_13=spep_12+40;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_13 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff2 = entryEffectLife( spep_13 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
    spname = entryEffectLife( spep_13 + 0, 1512, 90, 0x100, -1, 0, 0, -110 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
    -- ** 放射線(黄) ** --
    housha = entryEffectLife( spep_13 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
    setEffMoveKey( spep_13 + 0, housha, 0, 0 , 0 );
    setEffMoveKey( spep_13 + 90, housha, 0, 0 , 0 );
    setEffScaleKey( spep_13 + 0, housha, 1.0, 1.0 );
    setEffScaleKey( spep_13 + 90, housha, 1.0, 1.0 );
    setEffRotateKey( spep_13 + 0, housha, 0 );
    setEffRotateKey( spep_13 + 90, housha, 0 );
    setEffAlphaKey( spep_13 + 0, housha, 255 );
    setEffAlphaKey( spep_13 + 90, housha, 255 );
 
    -- ** 集中線 ** --
    shuchusen = entryEffectLife( spep_13 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
    setEffShake( spep_13 + 0, shuchusen, 90, 20 );
    setEffMoveKey( spep_13 + 0, shuchusen, 0, 0 , 0 );
    setEffMoveKey( spep_13 + 90, shuchusen, 0, 0 , 0 );
    setEffScaleKey( spep_13 + 0, shuchusen, 1.6, 1.6 );
    setEffScaleKey( spep_13 + 90, shuchusen, 1.6, 1.6 );
    setEffRotateKey( spep_13 + 0, shuchusen, 0 );
    setEffRotateKey( spep_13 + 90, shuchusen, 0 );
    setEffAlphaKey( spep_13 + 0, shuchusen, 255 );
    setEffAlphaKey( spep_13 + 90, shuchusen, 255 );
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    speff2 = entryEffectLife( spep_13 + 0, 3248, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_13 + 0, 3247, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_13 + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_13 + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_13 + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_13 + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_13 + 0, kaminari, 0 );
    setEffRotateKey( spep_13 + 90, kaminari, 0 );
    setEffAlphaKey( spep_13 + 0, kaminari, 255 );
    setEffAlphaKey( spep_13 + 90, kaminari, 255 );
 
    spname = entryEffectLife( spep_13 + 0, 3246, 90, 0x100, -1, 0, 0, -110 );
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_13 + 0, 3249, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_13 + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_13 + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_13 + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_13 + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_13 + 0, haikei, 0 );
    setEffRotateKey( spep_13 + 90, haikei, 0 );
    setEffAlphaKey( spep_13 + 0, haikei, 255 );
    setEffAlphaKey( spep_13 + 90, haikei, 255 );
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    speff2 = entryEffectLife( spep_13 + 0, 3252, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_13 + 0, 3251, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_13 + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_13 + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_13 + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_13 + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_13 + 0, kaminari, 0 );
    setEffRotateKey( spep_13 + 90, kaminari, 0 );
    setEffAlphaKey( spep_13 + 0, kaminari, 255 );
    setEffAlphaKey( spep_13 + 90, kaminari, 255 );
 
    spname = entryEffectLife( spep_13 + 0, 3250, 90, 0x100, -1, 0, 0, -110 ); 
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_13 + 0, 3253, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_13 + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_13 + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_13 + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_13 + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_13 + 0, haikei, 0 );
    setEffRotateKey( spep_13 + 90, haikei, 0 );
    setEffAlphaKey( spep_13 + 0, haikei, 255 );
    setEffAlphaKey( spep_13 + 90, haikei, 255 );
end

-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_13 + 0, 1035, "", 0, 0, 0, -1);

--爆発
stopSe( spep_13 + 2, SE059, 0 );
stopSe( spep_13 + 2, SE060, 0 );
stopSe( spep_13 + 2, SE061, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_13 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
  
-- ** 白フェード ** --
entryFade( spep_13 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_13 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_14 = spep_13 + 94;
------------------------------------------------------
-- 一星龍のフィニッシュ気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_14 + 0, SP_17, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_14 + 114, tame, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_14 + 114, tame, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, tame, 0 );
setEffRotateKey( spep_14 + 114, tame, 0 );
setEffAlphaKey( spep_14 + 0, tame, 255 );
setEffAlphaKey( spep_14 + 112, tame, 255 );
setEffAlphaKey( spep_14 + 113, tame, 255 );
setEffAlphaKey( spep_14 + 114, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_14 +24;

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
--一星龍気弾溜め
SE063 = playSe( spep_14 + 0, 1175 );
setSeVolumeByWorkId( spep_14 + 0, SE063, 32 );

--一星龍構える
SE064 = playSe( spep_14 + 6, 1004 );

--顔カットイン
SE065 = playSe( spep_x + 12, 1018 );

--一星龍気弾溜め
SE066 = playSe( spep_14 + 44, 1262 );
setSeVolumeByWorkId( spep_14 + 44, SE066, 160 );
SE067 = playSe( spep_14 + 44, 1191 );
setSeVolumeByWorkId( spep_14 + 44, SE067, 197 );
SE068 = playSe( spep_14 + 44, 1271 );

-- ** くろ背景 ** --
entryFadeBg( spep_14 , 0, 118, 0,  0, 0, 0, 255 ); --くろ 背景

spep_15=spep_14+114;
------------------------------------------------------
-- 一星龍のフィニッシュ発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_15 + 0, SP_18, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_15 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_15 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_15 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_15 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_15 + 0, beam, 0 );
setEffRotateKey( spep_15 + 56, beam, 0 );
setEffAlphaKey( spep_15 + 0, beam, 255 );
setEffAlphaKey( spep_15 + 54, beam, 255 );
setEffAlphaKey( spep_15 + 55, beam, 255 );
setEffAlphaKey( spep_15 + 56, beam, 0 );

--SE
--一星龍気弾溜め
stopSe( spep_15 + 18, SE067, 10 );
stopSe( spep_15 + 18, SE068, 10 );

--気弾発射
SE069 = playSe( spep_15 + 18, 1027 );
setSeVolumeByWorkId( spep_15 + 18, SE069, 83 );
SE070 = playSe( spep_15 + 18, 1213 );
setSeVolumeByWorkId( spep_15 + 18, SE070, 68 );
SE071 = playSe( spep_15 + 18, 1193 );

-- ** くろ背景 ** --
entryFadeBg( spep_15 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

spep_16=spep_15+56;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_16 + 0, SP_19, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_16 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_16 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_16 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_16 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_16 + 0, finish, 0 );
setEffRotateKey( spep_16 + 120, finish, 0 );
setEffAlphaKey( spep_16 + 0, finish, 255 );
setEffAlphaKey( spep_16 + 120, finish, 255 );

--SE
----気弾発射
stopSe( spep_16 + 2, SE071, 20 );

--ラスト爆発
SE072 = playSe( spep_16 + 0, 1024 );
setSeVolumeByWorkId( spep_16 + 0, SE072, 81 );
SE073 = playSe( spep_16 + 0, 1159 );
setSeVolumeByWorkId( spep_16 + 0, SE073, 83 );
SE074 = playSe( spep_16 + 0, 1188 );
setSeVolumeByWorkId( spep_16 + 0, SE074, 88 );

-- ** くろ背景 ** --
entryFadeBg( spep_16 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_16 +10 );
endPhase( spep_16 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 邪悪龍軍団登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 126, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, -1.0, 1.0 );
setEffScaleKey( spep_0 + 126, appearance, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 126, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 124, appearance, 255 );
setEffAlphaKey( spep_0 + 125, appearance, 255 );
setEffAlphaKey( spep_0 + 126, appearance, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 22, 1072 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 22, SE001, 87 );

--瞬間移動
SE002 = playSe( spep_0 + 52, 1235 );
setSeVolumeByWorkId( spep_0 + 52, SE002, 58 );
SE003 = playSe( spep_0 + 56, 1109 );

--五星龍巨大化
SE004 = playSe( spep_0 + 74, 49 );
setSeVolumeByWorkId( spep_0 + 74, SE004, 112 );
SE005 = playSe( spep_0 + 74, 1113 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 200 );
SE006 = playSe( spep_0 + 84, 1113 );
setSeVolumeByWorkId( spep_0 + 84, SE006, 158 );
SE007 = playSe( spep_0 + 92, 1113 );
setSeVolumeByWorkId( spep_0 + 92, SE007, 200 );
setPitch( spep_0 + 92, SE007, -600 );
setTimeStretch( SE007, 0.6, 10, 1 );
SE008 = playSe( spep_0 + 98, 49 );
setSeVolumeByWorkId( spep_0 + 98, SE008, 126 );
SE009 = playSe( spep_0 + 104, 1113 );
setSeVolumeByWorkId( spep_0 + 104, SE009, 200 );
SE010 = playSe( spep_0 + 112, 1113 );
SE012 = playSe( spep_0 + 118, 1113 );
setSeVolumeByWorkId( spep_0 + 118, SE012, 200 );
setPitch( spep_0 + 118, SE012, -600 );
setTimeStretch( SE012, 0.6, 10, 1 );



--次の準備
spep_1=spep_0+126;
------------------------------------------------------
-- 巨大化した五星龍の攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
giant = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, giant, 0, 0, 0 );
setEffMoveKey( spep_1 + 76, giant, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, giant, -1.0, 1.0 );
setEffScaleKey( spep_1 + 76, giant, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, giant, 0 );
setEffRotateKey( spep_1 + 76, giant, 0 );
setEffAlphaKey( spep_1 + 0, giant, 255 );
setEffAlphaKey( spep_1 + 74, giant, 255 );
setEffAlphaKey( spep_1 + 75, giant, 255 );
setEffAlphaKey( spep_1 + 76, giant, 0 );

--SE
--五星龍気弾溜め
SE013 = playSe( spep_1 + 0, 1274 );
setSeVolumeByWorkId( spep_1 + 0, SE013, 72 );
setTimeStretch( SE013, 0.67, 10, 1 );
SE014 = playSe( spep_1 + 8, 1004 );
setSeVolumeByWorkId( spep_1 + 8, SE014, 73 );
setPitch( spep_1 + 8, SE014, -300 );
setTimeStretch( SE014, 0.8, 10, 1 );
SE016 = playSe( spep_1 + 34, 1130 );
setSeVolumeByWorkId( spep_1 + 34, SE016, 67 );
setPitch( spep_1 + 34, SE016, -500 );
setTimeStretch( SE016, 0.67, 10, 1 );
stopSe( spep_1 + 58, SE016, 10 );

--五星龍ビーム発射
SE011 = playSe( spep_1 + 42, 1242 );
setSeVolumeByWorkId( spep_1 + 42, SE011, 0 );
setSeVolumeByWorkId( spep_1 + 43, SE011, 21 );
setSeVolumeByWorkId( spep_1 + 44, SE011, 42 );
setSeVolumeByWorkId( spep_1 + 45, SE011, 63 );
setSeVolumeByWorkId( spep_1 + 46, SE011, 84 );
setSeVolumeByWorkId( spep_1 + 47, SE011, 105 );
setSeVolumeByWorkId( spep_1 + 48, SE011, 126 );
setStartTimeMs( SE011,  1000 );
SE015 = playSe( spep_1 + 44, 1305 );
setSeVolumeByWorkId( spep_1 + 44, SE015, 0 );
setSeVolumeByWorkId( spep_1 + 45, SE015, 31.5 );
setSeVolumeByWorkId( spep_1 + 46, SE015, 63 );
setSeVolumeByWorkId( spep_1 + 47, SE015, 94.5 );
setSeVolumeByWorkId( spep_1 + 48, SE015, 126 );
setStartTimeMs( SE015,  633 );
SE017 = playSe( spep_1 + 46, 1243 );
setSeVolumeByWorkId( spep_1 + 46, SE017, 126 );
SE018 = playSe( spep_1 + 46, 1114 );
setSeVolumeByWorkId( spep_1 + 46, SE018, 83 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+76;
------------------------------------------------------
-- 巨大化した五星龍の攻撃_敵に当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_2 + 46, hit, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, hit, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit, 0 );
setEffRotateKey( spep_2 + 46, hit, 0 );
setEffAlphaKey( spep_2 + 0, hit, 255 );
setEffAlphaKey( spep_2 + 44, hit, 255 );
setEffAlphaKey( spep_2 + 45, hit, 255 );
setEffAlphaKey( spep_2 + 46, hit, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-1 + 46, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2-3 + 22, 1, 108 );
changeAnime( spep_2-3 + 28, 1, 106 );
changeAnime( spep_2-3 + 34, 1, 108 );
changeAnime( spep_2-3 + 40, 1, 106 );
changeAnime( spep_2-3 + 46, 1, 108 );
setBlendColor(spep_2-3 + 22,1,3,0,0.8,1,0.5);
setBlendColor(spep_2 + 46,1,3,0,0.8,1,0);

a=40;
b=20;
c=75;
d=80;
g=10;
h=50;

setMoveKey( spep_2 + 0, 1, 0+a, 0+b , 0 );
setMoveKey( spep_2-3 + 21, 1, 0+a, 0+b , 0 );
setMoveKey( spep_2-3 + 22, 1, -0.6+c, 21+b , 0 );
setMoveKey( spep_2-3 + 24, 1, -0.5+c, -31+b , 0 );
setMoveKey( spep_2-3 + 27, 1, -0.6+c, 14.5+b , 0 );
setMoveKey( spep_2-3 + 28, 1, 21.9+g, -35.4+h , 0 );
setMoveKey( spep_2-3 + 30, 1, 21.9+g, 3.6+h , 0 );
setMoveKey( spep_2-3 + 33, 1, 21.9+g, -28.9+h , 0 );
setMoveKey( spep_2-3 + 34, 1, -0.5+c, 8+b , 0 );
setMoveKey( spep_2-3 + 36, 1, -0.5+c, -18+b , 0 );
setMoveKey( spep_2-3 + 39, 1, -0.5+c, 1.5+b , 0 );
setMoveKey( spep_2-3 + 40, 1, 21.9+g, -15.9+h , 0 );
setMoveKey( spep_2-3 + 45, 1, 21.9+g, -15.9+h , 0 );
setMoveKey( spep_2 + 46, 1, -0.5+c, -5+b , 0 );

setScaleKey( spep_2 + 0, 1,1.17,1.17);
setScaleKey( spep_2-3 + 4, 1, 1.29,1.29);
setScaleKey( spep_2-3 + 6, 1, 1.32,1.32);
setScaleKey( spep_2-3 + 8, 1, 1.35,1.35);
setScaleKey( spep_2-3 + 10, 1,1.35,1.35);
setScaleKey( spep_2-3 + 12, 1,1.38,1.38);
setScaleKey( spep_2-3 + 21, 1,1.38,1.38);
setScaleKey( spep_2-3 + 22, 1,1.5,1.5);
setScaleKey( spep_2 + 46, 1,1.5,1.5);

setRotateKey( spep_2-3 + 0, 1, 0 );
setRotateKey( spep_2-3 + 27, 1, 0 );
setRotateKey( spep_2-3 + 28, 1, -20 );
setRotateKey( spep_2-3 + 33, 1, -20 );
setRotateKey( spep_2-3 + 34, 1, 0 );
setRotateKey( spep_2-3 + 39, 1, 0 );
setRotateKey( spep_2-3 + 40, 1, -20 );
setRotateKey( spep_2-3 + 45, 1, -20 );
setRotateKey( spep_2-3 + 46, 1, 0 );
setRotateKey( spep_2 + 46, 1, 0 );

--SE
--五星龍ビーム発射
stopSe( spep_2 + 22, SE011, 14 );
stopSe( spep_2 + 22, SE015, 8 );
stopSe( spep_2 + 22, SE017, 10 );

--ビームヒット
SE019 = playSe( spep_2 + 20, 1023 );
SE020 = playSe( spep_2 + 20, 1038 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+44;
------------------------------------------------------
-- 六星龍の攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
six = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, six, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, six, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, six, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, six, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, six, 0 );
setEffRotateKey( spep_3 + 96, six, 0 );
setEffAlphaKey( spep_3 + 0, six, 255 );
setEffAlphaKey( spep_3 + 94, six, 255 );
setEffAlphaKey( spep_3 + 95, six, 255 );
setEffAlphaKey( spep_3 + 96, six, 0 );

--SE
--ビームヒット
stopSe( spep_3 + 4, SE019, 36 );
stopSe( spep_3 + 6, SE020, 20 );

--六星龍腕クロス
SE021 = playSe( spep_3 + 0, 1048 );

--六星龍ビーム発射
SE022 = playSe( spep_3 + 38, 1227 );	
setSeVolumeByWorkId( spep_3 + 38, SE022, 0 );
setSeVolumeByWorkId( spep_3 + 39, SE022, 10 );
setSeVolumeByWorkId( spep_3 + 40, SE022, 20 );
setSeVolumeByWorkId( spep_3 + 41, SE022, 30 );
setSeVolumeByWorkId( spep_3 + 42, SE022, 40 );
setSeVolumeByWorkId( spep_3 + 43, SE022, 50 );
setSeVolumeByWorkId( spep_3 + 44, SE022, 60 );
setSeVolumeByWorkId( spep_3 + 45, SE022, 70 );
setSeVolumeByWorkId( spep_3 + 46, SE022, 80 );
setSeVolumeByWorkId( spep_3 + 47, SE022, 90 );
setSeVolumeByWorkId( spep_3 + 48, SE022, 100 );
setStartTimeMs( SE022,  600 );
SE023 = playSe( spep_3 + 38, 1027 );
setSeVolumeByWorkId( spep_3 + 38, SE023, 79 );
SE024 = playSe( spep_3 + 38, 1239 );
SE025 = playSe( spep_3 + 38, 1249 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+96;
------------------------------------------------------
-- 六星龍の攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit2_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 26, hit2_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 26, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit2_f, 0 );
setEffRotateKey( spep_4 + 26, hit2_f, 0 );
setEffAlphaKey( spep_4 + 0, hit2_f, 255 );
setEffAlphaKey( spep_4 + 24, hit2_f, 255 );
setEffAlphaKey( spep_4 + 25, hit2_f, 255 );
setEffAlphaKey( spep_4 + 26, hit2_f, 0 );

-- ** エフェクト等 ** --
hit2_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit2_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 26, hit2_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hit2_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 26, hit2_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit2_b, 0 );
setEffRotateKey( spep_4 + 26, hit2_b, 0 );
setEffAlphaKey( spep_4 + 0, hit2_b, 255 );
setEffAlphaKey( spep_4 + 24, hit2_b, 255 );
setEffAlphaKey( spep_4 + 25, hit2_b, 255 );
setEffAlphaKey( spep_4 + 26, hit2_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 28, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 22, -123+a , 0 );
setMoveKey( spep_4 + 2, 1, 28, -119.2+a , 0 );
setMoveKey( spep_4 + 4, 1, 18, -115.6+a , 0 );
setMoveKey( spep_4 + 6, 1, 26, -112.1+a , 0 );
setMoveKey( spep_4 + 8, 1, 18, -108.8+a , 0 );
setMoveKey( spep_4 + 10, 1, 26, -105.7+a , 0 );
setMoveKey( spep_4 + 12, 1, 18, -102.7+a , 0 );
setMoveKey( spep_4 + 14, 1, 26, -99.9+a , 0 );
setMoveKey( spep_4 + 16, 1, 18, -97.3+a , 0 );
setMoveKey( spep_4 + 18, 1, 26, -94.8+a , 0 );
setMoveKey( spep_4 + 20, 1, 18, -92.4+a , 0 );
setMoveKey( spep_4 + 22, 1, 26, -90.3+a , 0 );
setMoveKey( spep_4 + 24, 1, 16, -88.3+a , 0 );
setMoveKey( spep_4 + 26, 1, 26, -86.5+a , 0 );
setMoveKey( spep_4 + 28, 1, 20, -84.8+a , 0 );

setScaleKey( spep_4 + 0, 1, 1.36, 1.36 );
setScaleKey( spep_4 + 28, 1, 1.36, 1.36 );

setRotateKey( spep_4 + 0, 1, -35.9 );
setRotateKey( spep_4 + 28, 1, -35.9 );

--SE
--六星龍ビーム発射
stopSe( spep_4 + 4, SE022, 10 );
stopSe( spep_4 + 4, SE024, 10 );
stopSe( spep_4 + 4, SE025, 10 );

--六星龍竜巻きヒット
SE026 = playSe( spep_4 + 0, 1258 );	
setSeVolumeByWorkId( spep_4 + 0, SE026, 70 );
SE027 = playSe( spep_4 + 4, 1025 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 30, 0,  0, 0, 0, 255 ); --くろ 背景

spep_5=spep_4+24;
------------------------------------------------------
-- 七星龍攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
seven = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, seven, 0, 0, 0 );
setEffMoveKey( spep_5 + 44, seven, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, seven, 1.0, 1.0 );
setEffScaleKey( spep_5 + 44, seven, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, seven, 0 );
setEffRotateKey( spep_5 + 44, seven, 0 );
setEffAlphaKey( spep_5 + 0, seven, 255 );
setEffAlphaKey( spep_5 + 42, seven, 255 );
setEffAlphaKey( spep_5 + 43, seven, 255 );
setEffAlphaKey( spep_5 + 44, seven, 0 );

--SE
--六星龍竜巻きヒット
stopSe( spep_5 + 6, SE026, 46 );
stopSe( spep_5 + 6, SE027, 44 );

--七星龍地面殴る
SE028 = playSe( spep_5 + 24, 1231 );
SE030 = playSe( spep_5 + 30, 1192 );
SE031 = playSe( spep_5 + 30, 1190 );
setTimeStretch( SE031, 0.77, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

spep_6=spep_5+44;
------------------------------------------------------
-- 七星龍攻撃_敵に当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit3_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit3_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, hit3_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit3_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, hit3_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit3_f, 0 );
setEffRotateKey( spep_6 + 46, hit3_f, 0 );
setEffAlphaKey( spep_6 + 0, hit3_f, 255 );
setEffAlphaKey( spep_6 + 44, hit3_f, 255 );
setEffAlphaKey( spep_6 + 45, hit3_f, 255 );
setEffAlphaKey( spep_6 + 46, hit3_f, 0 );

-- ** エフェクト等 ** --
hit3_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit3_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 46, hit3_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit3_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 46, hit3_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit3_b, 0 );
setEffRotateKey( spep_6 + 46, hit3_b, 0 );
setEffAlphaKey( spep_6 + 0, hit3_b, 255 );
setEffAlphaKey( spep_6 + 44, hit3_b, 255 );
setEffAlphaKey( spep_6 + 45, hit3_b, 255 );
setEffAlphaKey( spep_6 + 46, hit3_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 46, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6-3 + 26, 1, 108 );

setBlendColor(spep_6-3 + 26,1,3,0,0,0,1);
setBlendColor(spep_6 + 46,1,3,0,0,0,0);

e=10;
f=60;

setMoveKey( spep_6 + 0, 1, 21.9, -35.9+a , 0 );
--setMoveKey( spep_6-3 + 2, 1, 24.7, -35.6 , 0 );
setMoveKey( spep_6-3 + 4, 1, 22.7, -35.4+a , 0 );
setMoveKey( spep_6-3 + 6, 1, 22.7, -35.1+a , 0 );
setMoveKey( spep_6-3 + 8, 1, 14.7, -41.6+a , 0 );
setMoveKey( spep_6-3 + 10, 1, 29.1, -41.4+a , 0 );
setMoveKey( spep_6-3 + 12, 1, 14.7, -41.1+a , 0 );
setMoveKey( spep_6-3 + 14, 1, 27.5, -40.9+a , 0 );
setMoveKey( spep_6-3 + 16, 1, 14.7, -40.6+a , 0 );
setMoveKey( spep_6-3 + 18, 1, 25.9, -40.4+a , 0 );
setMoveKey( spep_6-3 + 20, 1, 19.1, -33.7+a , 0 );
setMoveKey( spep_6-3 + 22, 1, 24.3, -44.6+a , 0 );
setMoveKey( spep_6-3 + 25, 1, 25.9, -36.4+a , 0 );
setMoveKey( spep_6-3 + 26, 1, -13.8+f, -6+e , 0 );
setMoveKey( spep_6-3 + 28, 1, -5.8+f, 1.8+e , 0 );
setMoveKey( spep_6-3 + 30, 1, -13.8+f, -3.2+e , 0 );
setMoveKey( spep_6-3 + 32, 1, -5.8+f, 4.7+e , 0 );
setMoveKey( spep_6-3 + 34, 1, -5.8+f, -1.9+e , 0 );
setMoveKey( spep_6-3 + 36, 1, -13.8+f, 9.1+e , 0 );
setMoveKey( spep_6-3 + 38, 1, -5.8+f, 2.5+e , 0 );
setMoveKey( spep_6-3 + 40, 1, -13.8+f, 10.3+e , 0 );
setMoveKey( spep_6-3 + 42, 1, -5.8+f, 6.9+e , 0 );
setMoveKey( spep_6-3 + 44, 1, -15.8+f, 13.2+e , 0 );
setMoveKey( spep_6-3 + 46, 1, -5.8+f, 8.2+e , 0 );
setMoveKey( spep_6 + 48, 1, -11.8+f, 16+e , 0 );


setScaleKey( spep_6 + 0, 1, 1.33, 1.33 );
setScaleKey( spep_6 + 48, 1, 1.33, 1.33 );

setRotateKey( spep_6 + 0, 1, -35.9 );
setRotateKey( spep_6-3 + 25, 1, -35.9 );
setRotateKey( spep_6-3 + 26, 1, 0 );
setRotateKey( spep_6 + 46, 1, 0 );

--SE
--地面からビーム出る
SE029 = playSe( spep_6 + 0, 1265 );
setSeVolumeByWorkId( spep_6 + 0, SE029, 0 );
setSeVolumeByWorkId( spep_6 + 1, SE029, 25 );
setSeVolumeByWorkId( spep_6 + 2, SE029, 50 );
setSeVolumeByWorkId( spep_6 + 3, SE029, 75 );
setSeVolumeByWorkId( spep_6 + 4, SE029, 100 );
setStartTimeMs( SE029,  350 );
stopSe( spep_6 + 36, SE029, 26 );
SE032 = playSe( spep_6 + 0, 1278 );
stopSe( spep_6 + 44, SE032, 18 );

--地面爆発
SE033 = playSe( spep_6 + 16, 1067 );
SE034 = playSe( spep_6 + 16, 1159 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

spep_7=spep_6+44;
------------------------------------------------------
-- 二星龍攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
two = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, two, 0, 0, 0 );
setEffMoveKey( spep_7 + 56, two, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, two, -1.0, 1.0 );
setEffScaleKey( spep_7 + 56, two, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, two, 0 );
setEffRotateKey( spep_7 + 56, two, 0 );
setEffAlphaKey( spep_7 + 0, two, 255 );
setEffAlphaKey( spep_7 + 54, two, 255 );
setEffAlphaKey( spep_7 + 55, two, 255 );
setEffAlphaKey( spep_7 + 56, two, 0 );

--SE
--二星龍気弾溜め
SE035 = playSe( spep_7 + 2, 1276 );
setSeVolumeByWorkId( spep_7 + 2, SE035, 0 );
setSeVolumeByWorkId( spep_7 + 3, SE035, 13.2 );
setSeVolumeByWorkId( spep_7 + 4, SE035, 26.4 );
setSeVolumeByWorkId( spep_7 + 5, SE035, 39.6 );
setSeVolumeByWorkId( spep_7 + 6, SE035, 52.8 );
setSeVolumeByWorkId( spep_7 + 7, SE035, 66 );
setSeVolumeByWorkId( spep_7 + 8, SE035, 79 );
setStartTimeMs( SE035,  200 );
setPitch( spep_7 + 2, SE035, -200 );
setTimeStretch( SE035, 0.87, 10, 1 );
SE036 = playSe( spep_7 + 0, 1316 );
setSeVolumeByWorkId( spep_7 + 0, SE036, 174 );
stopSe( spep_7 + 26, SE036, 8 );
setPitch( spep_7 + 0, SE036, -200 );
setTimeStretch( SE036, 0.87, 10, 1 );
SE037 = playSe( spep_7 + 0, 1144 );
setSeVolumeByWorkId( spep_7 + 0, SE037, 70 );
stopSe( spep_7 + 26, SE037, 8 );
setPitch( spep_7 + 0, SE037, 300 );
setTimeStretch( SE037, 1.2, 10, 1 );

--二星龍気弾発射
SE038 = playSe( spep_7 + 28, 1022 );
SE039 = playSe( spep_7 + 32, 1027 );
SE040 = playSe( spep_7 + 32, 1178 );
setSeVolumeByWorkId( spep_7 + 32, SE040, 82 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

spep_8=spep_7+56;
------------------------------------------------------
-- 二星龍攻撃_敵に当たる
------------------------------------------------------
-- ** エフェクト等 ** --
hit4_f = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit4_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 36, hit4_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit4_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, hit4_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit4_f, 0 );
setEffRotateKey( spep_8 + 36, hit4_f, 0 );
setEffAlphaKey( spep_8 + 0, hit4_f, 255 );
setEffAlphaKey( spep_8 + 34, hit4_f, 255 );
setEffAlphaKey( spep_8 + 35, hit4_f, 255 );
setEffAlphaKey( spep_8 + 36, hit4_f, 0 );

-- ** エフェクト等 ** --
hit4_b = entryEffect( spep_8 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit4_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 36, hit4_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit4_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 36, hit4_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit4_b, 0 );
setEffRotateKey( spep_8 + 36, hit4_b, 0 );
setEffAlphaKey( spep_8 + 0, hit4_b, 255 );
setEffAlphaKey( spep_8 + 34, hit4_b, 255 );
setEffAlphaKey( spep_8 + 35, hit4_b, 255 );
setEffAlphaKey( spep_8 + 36, hit4_b, 0 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8-3 + 18, 1, 0 );

changeAnime( spep_8 + 0, 1, 108 );

setMoveKey( spep_8 + 0, 1, 516.1+c, 25.9 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 409.1, -15.7 , 0 );
setMoveKey( spep_8-3 + 4, 1, 302+c, -54.9 , 0 );
setMoveKey( spep_8-3 + 5, 1, 302+c, -54.9 , 0 );
setMoveKey( spep_8-3 + 6, 1, 194.9+c, -91.7 , 0 );
setMoveKey( spep_8-3 + 7, 1, 194.9+c, -91.7 , 0 );
setMoveKey( spep_8-3 + 8, 1, 91.1+c, -99.3 , 0 );
setMoveKey( spep_8-3 + 9, 1, 91.1+c, -99.3 , 0 );
setMoveKey( spep_8-3 + 10, 1, 13.2+c, -90.7 , 0 );
setMoveKey( spep_8-3 + 11, 1, 13.2+c, -90.7 , 0 );
setMoveKey( spep_8-3 + 12, 1, 42.4+c, -75.5 , 0 );
setMoveKey( spep_8-3 + 13, 1, 42.4+c, -75.5 , 0 );
setMoveKey( spep_8-3 + 14, 1, 351.6+c, -90.3 , 0 );
setMoveKey( spep_8-3 + 15, 1, 351.6+c, -90.3 , 0 );
setMoveKey( spep_8-3 + 16, 1, 660.9+c, -65.2 , 0 );
setMoveKey( spep_8-3 + 17, 1, 660.9+c, -65.2 , 0 );
setMoveKey( spep_8-3 + 18, 1, 692.4+c, -81.2 , 0 );

setScaleKey( spep_8 + 0, 1,1.71,1.71);
setScaleKey( spep_8-3 + 4, 1, 1.59,1.59);
setScaleKey( spep_8-3 + 5, 1, 1.59,1.59);
setScaleKey( spep_8-3 + 6, 1, 1.56,1.56);
setScaleKey( spep_8-3 + 7, 1, 1.56,1.56);
setScaleKey( spep_8-3 + 8, 1, 1.44,1.44);
setScaleKey( spep_8-3 + 9, 1, 1.44,1.44);
setScaleKey( spep_8-3 + 10, 1,1.32,1.32);
setScaleKey( spep_8-3 + 11, 1,1.32,1.32);
setScaleKey( spep_8-3 + 12, 1,1.26,1.26);
setScaleKey( spep_8-3 + 13, 1,1.26,1.26);
setScaleKey( spep_8-3 + 14, 1,1.2,1.2);
setScaleKey( spep_8-3 + 15, 1,1.2,1.2);
setScaleKey( spep_8-3 + 16, 1,1.14,1.14);
setScaleKey( spep_8-3 + 18, 1,1.14,1.14);

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8-3 + 18, 1, 0 );

--SE
--気弾ヒット
SE041 = playSe( spep_8 + 10, 1017 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

spep_9=spep_8+36;
------------------------------------------------------
-- 三星龍アップ
------------------------------------------------------
-- ** エフェクト等 ** --
three = entryEffect( spep_9 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, three, 0, 0, 0 );
setEffMoveKey( spep_9 + 26, three, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, three, -1.0, 1.0 );
setEffScaleKey( spep_9 + 26, three, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, three, 0 );
setEffRotateKey( spep_9 + 26, three, 0 );
setEffAlphaKey( spep_9 + 0, three, 255 );
setEffAlphaKey( spep_9 + 24, three, 255 );
setEffAlphaKey( spep_9 + 25, three, 255 );
setEffAlphaKey( spep_9 + 26, three, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 30, 0,  0, 0, 0, 255 ); --くろ 背景

spep_10=spep_9+24;
------------------------------------------------------
-- 三星龍気弾溜め	
------------------------------------------------------
-- ** エフェクト等 ** --
three_tame = entryEffect( spep_10 + 0, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, three_tame, 0, 0, 0 );
setEffMoveKey( spep_10 + 56, three_tame, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, three_tame, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, three_tame, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, three_tame, 0 );
setEffRotateKey( spep_10 + 56, three_tame, 0 );
setEffAlphaKey( spep_10 + 0, three_tame, 255 );
setEffAlphaKey( spep_10 + 54, three_tame, 255 );
setEffAlphaKey( spep_10 + 55, three_tame, 255 );
setEffAlphaKey( spep_10 + 56, three_tame, 0 );

--SE
--三星龍手が変形して気弾溜め
SE043 = playSe( spep_10 + 6, 1291 );
SE044 = playSe( spep_10 + 6, 1183 );
setSeVolumeByWorkId( spep_10 + 6, SE044, 88 );
SE045 = playSe( spep_10 + 18, 1276 );
setSeVolumeByWorkId( spep_10 + 18, SE045, 63 );
stopSe( spep_10 + 34, SE045, 8 );
SE042 = playSe( spep_10 + 26, 1136 );
setSeVolumeByWorkId( spep_10 + 26, SE042, 0 );
setSeVolumeByWorkId( spep_10 + 27, SE042, 10 );
setSeVolumeByWorkId( spep_10 + 28, SE042, 20 );
setSeVolumeByWorkId( spep_10 + 29, SE042, 30 );
setSeVolumeByWorkId( spep_10 + 30, SE042, 40 );
setSeVolumeByWorkId( spep_10 + 31, SE042, 50 );
setSeVolumeByWorkId( spep_10 + 32, SE042, 60 );
setSeVolumeByWorkId( spep_10 + 33, SE042, 70 );
setSeVolumeByWorkId( spep_10 + 34, SE042, 80 );
setSeVolumeByWorkId( spep_10 + 35, SE042, 90 );
setSeVolumeByWorkId( spep_10 + 36, SE042, 100 );
setStartTimeMs( SE042,  1317 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

spep_11=spep_10+56;
------------------------------------------------------
-- 四星龍、三星龍攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
wattack = entryEffect( spep_11 + 0, SP_15x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_11 + 0, wattack, 0, 0, 0 );
setEffMoveKey( spep_11 + 146, wattack, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, wattack, 1.0, 1.0 );
setEffScaleKey( spep_11 + 146, wattack, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, wattack, 0 );
setEffRotateKey( spep_11 + 146, wattack, 0 );
setEffAlphaKey( spep_11 + 0, wattack, 255 );
setEffAlphaKey( spep_11 + 144, wattack, 255 );
setEffAlphaKey( spep_11 + 145, wattack, 255 );
setEffAlphaKey( spep_11 + 146, wattack, 0 );

--敵の動き
setDisp( spep_11-3 + 90, 1, 1 );
setDisp( spep_11-1 + 148, 1, 0 );

changeAnime( spep_11-3 + 90, 1, 105 );

setMoveKey( spep_11-3 + 90, 1, 6017.6, -5160.9+b , 0 );
setMoveKey( spep_11-3 + 92, 1, 2352.1, -2202.6+b , 0 );
setMoveKey( spep_11-3 + 94, 1, 1435.6, -1462.6+b , 0 );
setMoveKey( spep_11-3 + 96, 1, 521.5, -732.8+b , 0 );
setMoveKey( spep_11-3 + 98, 1, 411.3, -646.2+b , 0 );
setMoveKey( spep_11-3 + 100, 1, 301.4, -560.9+b , 0 );
setMoveKey( spep_11-3 + 102, 1, 191.7, -476.8+b , 0 );
setMoveKey( spep_11-3 + 104, 1, 82.4, -393.9+b , 0 );
setMoveKey( spep_11-3 + 106, 1, 80.9, -389.5+b , 0 );
setMoveKey( spep_11-3 + 108, 1, 79.4, -385+b , 0 );
setMoveKey( spep_11-3 + 110, 1, 77.9, -380.7+b , 0 );
setMoveKey( spep_11-3 + 112, 1, 76.5, -376.3+b , 0 );
setMoveKey( spep_11-3 + 114, 1, 75, -372.1+b , 0 );
setMoveKey( spep_11-3 + 116, 1, 73.6, -367.7+b , 0 );
setMoveKey( spep_11-3 + 118, 1, 72.1, -363.5+b , 0 );
setMoveKey( spep_11-3 + 120, 1, 70.7, -359.3+b , 0 );
setMoveKey( spep_11-3 + 122, 1, 69.3, -355.1+b , 0 );
setMoveKey( spep_11-3 + 124, 1, 67.9, -351+b , 0 );
setMoveKey( spep_11-3 + 126, 1, 66.5, -346.9+b , 0 );
setMoveKey( spep_11-3 + 128, 1, 65, -330.8+b , 0 );
setMoveKey( spep_11-3 + 130, 1, 63.6, -336.8+b , 0 );
setMoveKey( spep_11-3 + 132, 1, 52.3, -348.7+b , 0 );
setMoveKey( spep_11-3 + 134, 1, 60.9, -330.8+b , 0 );
setMoveKey( spep_11-3 + 136, 1, 67.5, -318.8+b , 0 );
setMoveKey( spep_11-3 + 138, 1, 58.1, -330.9+b , 0 );
setMoveKey( spep_11-3 + 140, 1, 56.7, -309+b , 0 );
setMoveKey( spep_11-3 + 142, 1, 55.4, -327.1+b , 0 );
setMoveKey( spep_11-3 + 144, 1, 58, -309.3+b , 0 );
setMoveKey( spep_11-3 + 146, 1, 46.7, -309.5+b , 0 );
setMoveKey( spep_11-1 + 148, 1, 51.4, -303.7+b , 0 );

setScaleKey( spep_11-3 + 90, 1, 63.66,63.66);
setScaleKey( spep_11-3 + 92, 1, 25.89,25.89);
setScaleKey( spep_11-3 + 94, 1, 16.44,16.44);
setScaleKey( spep_11-3 + 96, 1, 7.08,7.08);
setScaleKey( spep_11-3 + 98, 1, 5.94,5.94);
setScaleKey( spep_11-3 + 100, 1,4.83,4.83);
setScaleKey( spep_11-3 + 102, 1,3.69,3.69);
setScaleKey( spep_11-3 + 104, 1,2.61,2.61);
setScaleKey( spep_11-3 + 106, 1,2.55,2.55);
setScaleKey( spep_11-3 + 108, 1,2.52,2.52);
setScaleKey( spep_11-3 + 110, 1,2.46,2.46);
setScaleKey( spep_11-3 + 112, 1,2.43,2.43);
setScaleKey( spep_11-3 + 114, 1,2.4,2.4);
setScaleKey( spep_11-3 + 116, 1,2.34,2.34);
setScaleKey( spep_11-3 + 118, 1,2.31,2.31);
setScaleKey( spep_11-3 + 120, 1,2.28,2.28);
setScaleKey( spep_11-3 + 122, 1,2.22,2.22);
setScaleKey( spep_11-3 + 124, 1,2.19,2.19);
setScaleKey( spep_11-3 + 126, 1,2.16,2.16);
setScaleKey( spep_11-3 + 128, 1,2.1,2.1);
setScaleKey( spep_11-3 + 130, 1,2.07,2.07);
setScaleKey( spep_11-3 + 132, 1,2.04,2.04);
setScaleKey( spep_11-3 + 134, 1,2.01,2.01);
setScaleKey( spep_11-3 + 136, 1,1.95,1.95);
setScaleKey( spep_11-3 + 138, 1,1.92,1.92);
setScaleKey( spep_11-3 + 140, 1,1.89,1.89);
setScaleKey( spep_11-3 + 142, 1,1.86,1.86);
setScaleKey( spep_11-3 + 144, 1,1.8,1.8);
setScaleKey( spep_11-3 + 146, 1,1.77,1.77);
setScaleKey( spep_11-1 + 148, 1,1.74,1.74);

setRotateKey( spep_11-3 + 90, 1, -12.8 );
setRotateKey( spep_11-3 + 92, 1, -12.7 );
setRotateKey( spep_11-3 + 94, 1, -12.5 );
setRotateKey( spep_11-3 + 96, 1, -12.2 );
setRotateKey( spep_11-3 + 98, 1, -11.9 );
setRotateKey( spep_11-3 + 100, 1, -11.7 );
setRotateKey( spep_11-3 + 102, 1, -11.4 );
setRotateKey( spep_11-3 + 104, 1, -11.2 );
setRotateKey( spep_11-3 + 106, 1, -10.9 );
setRotateKey( spep_11-3 + 108, 1, -10.6 );
setRotateKey( spep_11-3 + 110, 1, -10.4 );
setRotateKey( spep_11-3 + 112, 1, -10.1 );
setRotateKey( spep_11-3 + 114, 1, -9.9 );
setRotateKey( spep_11-3 + 116, 1, -9.6 );
setRotateKey( spep_11-3 + 118, 1, -9.3 );
setRotateKey( spep_11-3 + 120, 1, -9.1 );
setRotateKey( spep_11-3 + 122, 1, -8.8 );
setRotateKey( spep_11-3 + 124, 1, -8.6 );
setRotateKey( spep_11-3 + 126, 1, -8.3 );
setRotateKey( spep_11-3 + 128, 1, -8 );
setRotateKey( spep_11-3 + 130, 1, -7.8 );
setRotateKey( spep_11-3 + 132, 1, -7.5 );
setRotateKey( spep_11-3 + 134, 1, -7.3 );
setRotateKey( spep_11-3 + 136, 1, -7 );
setRotateKey( spep_11-3 + 138, 1, -6.7 );
setRotateKey( spep_11-3 + 140, 1, -6.5 );
setRotateKey( spep_11-3 + 142, 1, -6.2 );
setRotateKey( spep_11-3 + 144, 1, -6 );
setRotateKey( spep_11-3 + 146, 1, -5.7 );
setRotateKey( spep_11-1 + 148, 1, -5.4 );

--SE
--三星龍手が変形して気弾溜め
stopSe( spep_11 + 18, SE042, 28 );
stopSe( spep_11 + 56, SE043, 16 );
stopSe( spep_11 + 14, SE044, 10 );

--四星龍気弾溜め
SE047 = playSe( spep_11 + 0, 1295 );
SE048 = playSe( spep_11 + 0, 1239 );
stopSe( spep_11 + 140, SE048, 18 );
SE049 = playSe( spep_11 + 2, 1056 );
setSeVolumeByWorkId( spep_11 + 2, SE049, 68 );
SE046 = playSe( spep_11 + 2, 1200 );
setSeVolumeByWorkId( spep_11 + 2, SE046, 0 );
setSeVolumeByWorkId( spep_11 + 3, SE046, 31.4 );
setSeVolumeByWorkId( spep_11 + 4, SE046, 62.8 );
setSeVolumeByWorkId( spep_11 + 5, SE046, 94.2 );
setSeVolumeByWorkId( spep_11 + 6, SE046, 125.6 );
setSeVolumeByWorkId( spep_11 + 7, SE046, 157 );
setSeVolumeByWorkId( spep_11 + 8, SE046, 188.4 );
setSeVolumeByWorkId( spep_11 + 9, SE046, 219.8 );
setSeVolumeByWorkId( spep_11 + 10, SE046, 251 );
stopSe( spep_11 + 66, SE046, 12 );
setStartTimeMs( SE046,  333 );
SE050 = playSe( spep_11 + 28, 1116 );
stopSe( spep_11 + 56, SE050, 18 );
SE051 = playSe( spep_11 + 56, 1200 );
setSeVolumeByWorkId( spep_11 + 56, SE051, 0 );
setSeVolumeByWorkId( spep_11 + 57, SE051, 25.1 );
setSeVolumeByWorkId( spep_11 + 58, SE051, 50.2 );
setSeVolumeByWorkId( spep_11 + 59, SE051, 75.3 );
setSeVolumeByWorkId( spep_11 + 60, SE051, 100.4 );
setSeVolumeByWorkId( spep_11 + 61, SE051, 125.5 );
setSeVolumeByWorkId( spep_11 + 62, SE051, 150.6 );
setSeVolumeByWorkId( spep_11 + 63, SE051, 175.7 );
setSeVolumeByWorkId( spep_11 + 64, SE051, 200.8 );
setSeVolumeByWorkId( spep_11 + 65, SE051, 225.9 );
setSeVolumeByWorkId( spep_11 + 66, SE051, 251 );
stopSe( spep_11 + 126, SE051, 18 );
setStartTimeMs( SE051,  300 );
SE053 = playSe( spep_11 + 50, 1056 );
setSeVolumeByWorkId( spep_11 + 50, SE053, 60 );

--四星龍アップ
SE054 = playSe( spep_11-10 + 56, 1072 );
setSeVolumeByWorkId( spep_11-10 + 56, SE054, 141 );
SE052 = playSe( spep_11-10 + 80, 1188 );
setSeVolumeByWorkId( spep_11-10 + 80, SE052, 0 );
setSeVolumeByWorkId( spep_11-10 + 81, SE052, 9.4 );
setSeVolumeByWorkId( spep_11-10 + 82, SE052, 18.8 );
setSeVolumeByWorkId( spep_11-10 + 83, SE052, 28.2 );
setSeVolumeByWorkId( spep_11-10 + 84, SE052, 37.6 );
setSeVolumeByWorkId( spep_11-10 + 85, SE052, 47 );
setSeVolumeByWorkId( spep_11-10 + 86, SE052, 56.4 );
setSeVolumeByWorkId( spep_11-10 + 87, SE052, 65.8 );
setSeVolumeByWorkId( spep_11-10 + 88, SE052, 75.2 );
setSeVolumeByWorkId( spep_11-10 + 89, SE052, 84.6 );
setSeVolumeByWorkId( spep_11-10 + 90, SE052, 94 );
setSeVolumeByWorkId( spep_11-10 + 91, SE052, 103.4 );
setSeVolumeByWorkId( spep_11-10 + 92, SE052, 112 );
setStartTimeMs( SE052,  600 );

--四星龍気弾溜め
SE055 = playSe( spep_11 + 98, 1056 );
setSeVolumeByWorkId( spep_11 + 98, SE055, 60 );

--気弾発射
SE056 = playSe( spep_11 + 126, 1027 );
setSeVolumeByWorkId( spep_11 + 126, SE056, 86 );
SE057 = playSe( spep_11 + 126, 1193 );
setSeVolumeByWorkId( spep_11 + 126, SE057, 89 );
SE058 = playSe( spep_11 + 126, 1202 );


-- ** くろ背景 ** --
entryFadeBg( spep_11 , 0, 160, 0,  0, 0, 0, 255 ); --くろ 背景

spep_12=spep_11+144;
------------------------------------------------------
-- 敵に気弾が迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit5 = entryEffect( spep_12 + 0, SP_16x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_12 + 0, hit5, 0, 0, 0 );
setEffMoveKey( spep_12 + 40, hit5, 0, 0, 0 );
setEffScaleKey( spep_12 + 0, hit5, -1.0, 1.0 );
setEffScaleKey( spep_12 + 40, hit5, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, hit5, 0 );
setEffRotateKey( spep_12 + 40, hit5, 0 );
setEffAlphaKey( spep_12 + 0, hit5, 255 );
setEffAlphaKey( spep_12 + 40, hit5, 255 );

--SE
--気弾発射
stopSe( spep_12 + 4, SE056, 8 );
stopSe( spep_12 + 4, SE057, 8 );
stopSe( spep_12 + 4, SE058, 8 );

--爆発
SE059 = playSe( spep_12 + 0, 1068 );
SE060 = playSe( spep_12 + 0, 1268 );
SE061 = playSe( spep_12 + 0, 1024 );

--白フェード
entryFade( spep_12 + 32, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_12 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

spep_13=spep_12+40;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_13 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_13 + 0, speff2, -1.0, 1.0); -- 敵側のみ 
setEffScaleKey( spep_13 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_13 + 0, 1512, 90, 0x100, -1, 0, 0, -110 );
setEffScaleKey( spep_13 + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_13 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_13 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_13 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_13 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_13 + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, housha, 0 );
setEffRotateKey( spep_13 + 90, housha, 0 );
setEffAlphaKey( spep_13 + 0, housha, 255 );
setEffAlphaKey( spep_13 + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_13 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_13 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_13 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_13 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_13 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_13 + 0, shuchusen, 0 );
setEffRotateKey( spep_13 + 90, shuchusen, 0 );
setEffAlphaKey( spep_13 + 0, shuchusen, 255 );
setEffAlphaKey( spep_13 + 90, shuchusen, 255 );
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_13 + 0, 1035, "", 0, 0, 0, -1);

--爆発
stopSe( spep_13 + 2, SE059, 0 );
stopSe( spep_13 + 2, SE060, 0 );
stopSe( spep_13 + 2, SE061, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_13 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_13 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_13 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_14 = spep_13 + 94;
------------------------------------------------------
-- 一星龍のフィニッシュ気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_14 + 0, SP_17x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_14 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_14 + 114, tame, 0, 0, 0 );
setEffScaleKey( spep_14 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_14 + 114, tame, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, tame, 0 );
setEffRotateKey( spep_14 + 114, tame, 0 );
setEffAlphaKey( spep_14 + 0, tame, 255 );
setEffAlphaKey( spep_14 + 112, tame, 255 );
setEffAlphaKey( spep_14 + 113, tame, 255 );
setEffAlphaKey( spep_14 + 114, tame, 0 );

--顔カットインのタイミング指定
spep_x=spep_14 +24;

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
--一星龍気弾溜め
SE063 = playSe( spep_14 + 0, 1175 );
setSeVolumeByWorkId( spep_14 + 0, SE063, 32 );

--一星龍構える
SE064 = playSe( spep_14 + 6, 1004 );

--顔カットイン
--SE065 = playSe( spep_x + 12, 1018 );

--一星龍気弾溜め
SE066 = playSe( spep_14 + 44, 1262 );
setSeVolumeByWorkId( spep_14 + 44, SE066, 160 );
SE067 = playSe( spep_14 + 44, 1191 );
setSeVolumeByWorkId( spep_14 + 44, SE067, 197 );
SE068 = playSe( spep_14 + 44, 1271 );

-- ** くろ背景 ** --
entryFadeBg( spep_14 , 0, 118, 0,  0, 0, 0, 255 ); --くろ 背景

spep_15=spep_14+114;
------------------------------------------------------
-- 一星龍のフィニッシュ発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_15 + 0, SP_18x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_15 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_15 + 56, beam, 0, 0, 0 );
setEffScaleKey( spep_15 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_15 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_15 + 0, beam, 0 );
setEffRotateKey( spep_15 + 56, beam, 0 );
setEffAlphaKey( spep_15 + 0, beam, 255 );
setEffAlphaKey( spep_15 + 54, beam, 255 );
setEffAlphaKey( spep_15 + 55, beam, 255 );
setEffAlphaKey( spep_15 + 56, beam, 0 );

--SE
--一星龍気弾溜め
stopSe( spep_15 + 18, SE067, 10 );
stopSe( spep_15 + 18, SE068, 10 );

--気弾発射
SE069 = playSe( spep_15 + 18, 1027 );
setSeVolumeByWorkId( spep_15 + 18, SE069, 83 );
SE070 = playSe( spep_15 + 18, 1213 );
setSeVolumeByWorkId( spep_15 + 18, SE070, 68 );
SE071 = playSe( spep_15 + 18, 1193 );

-- ** くろ背景 ** --
entryFadeBg( spep_15 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

spep_16=spep_15+56;
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_16 + 0, SP_19x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_16 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_16 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_16 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_16 + 120, finish, -1.0, 1.0 );
setEffRotateKey( spep_16 + 0, finish, 0 );
setEffRotateKey( spep_16 + 120, finish, 0 );
setEffAlphaKey( spep_16 + 0, finish, 255 );
setEffAlphaKey( spep_16 + 120, finish, 255 );

--SE
----気弾発射
stopSe( spep_16 + 2, SE071, 20 );

--ラスト爆発
SE072 = playSe( spep_16 + 0, 1024 );
setSeVolumeByWorkId( spep_16 + 0, SE072, 81 );
SE073 = playSe( spep_16 + 0, 1159 );
setSeVolumeByWorkId( spep_16 + 0, SE073, 83 );
SE074 = playSe( spep_16 + 0, 1188 );
setSeVolumeByWorkId( spep_16 + 0, SE074, 88 );

-- ** くろ背景 ** --
entryFadeBg( spep_16 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_16 +10 );
endPhase( spep_16 + 110 );
end