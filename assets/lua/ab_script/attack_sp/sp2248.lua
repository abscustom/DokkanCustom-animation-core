--1022710:キャウェイ_キャウェイの不意打ち
--sp_effect_b4_00199

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
SP_01	=	157819	;--	ブーメランが飛んできて敵にあたる
SP_02	=	157820	;--	ブーメランが飛んできて敵にあたる
SP_03	=	157823	;--	岩裏からキャウェイが飛び出る
SP_04	=	157825	;--	セリフカットイン
SP_05	=	157827	;--	槍をつく～フィニッシュ
SP_06	=	157828	;--	槍をつく～フィニッシュ

--エフェクト(てき)
SP_01x	=	157821	;--	ブーメランが飛んできて敵にあたる	(敵)
SP_02x	=	157822	;--	ブーメランが飛んできて敵にあたる	(敵)
SP_03x	=	157824	;--	岩裏からキャウェイが飛び出る	(敵)
SP_04x	=	157826	;--	セリフカットイン	(敵)
SP_05x	=	157829	;--	槍をつく～フィニッシュ	(敵)
SP_06x	=	157830	;--	槍をつく～フィニッシュ	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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
--ブーメランが飛んできて敵にあたる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
boomerang_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, boomerang_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, boomerang_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, boomerang_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, boomerang_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boomerang_f, 0 );
setEffRotateKey( spep_0 + 116, boomerang_f, 0 );
setEffAlphaKey( spep_0 + 0, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 114, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 115, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 116, boomerang_f, 0 );

-- ** エフェクト等 ** --
boomerang_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, boomerang_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, boomerang_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, boomerang_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, boomerang_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boomerang_b, 0 );
setEffRotateKey( spep_0 + 116, boomerang_b, 0 );
setEffAlphaKey( spep_0 + 0, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 114, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 115, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 116, boomerang_b, 0 );

--SE
--ブーメラン飛んでくる
SE001 = playSe( spep_0 + 8, 1117 );
SE002 = playSe( spep_0 + 8, 1116 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 66 );
setPitch( spep_0 + 8, SE002, 500 );
setTimeStretch( SE002, 1.33, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    
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
setDisp( spep_0-3 + 72, 1, 1);
setDisp( spep_0-3 + 116, 1, 0);

changeAnime( spep_0-3 + 72, 1, 100);
changeAnime( spep_0-3 + 80, 1, 106);

setMoveKey( spep_0-3 + 72, 1, 3.4, -19.8 , 0 );
setMoveKey( spep_0-3 + 74, 1, -0.2, -19.7 , 0 );
setMoveKey( spep_0-3 + 76, 1, -0.2, -19.7 , 0 );
setMoveKey( spep_0-3 + 78, 1, -0.2, -33.7 , 0 );
setMoveKey( spep_0-3 + 79, 1, -0.2, -33.7 , 0 );

setMoveKey( spep_0-3 + 80, 1, -121.9, 49.6 , 0 );
setMoveKey( spep_0-3 + 82, 1, -194.5, 76.9 , 0 );
setMoveKey( spep_0-3 + 84, 1, -234.1, 140 , 0 );
setMoveKey( spep_0-3 + 86, 1, -274.6, 193.2 , 0 );
setMoveKey( spep_0-3 + 88, 1, -326.2, 214.5 , 0 );
setMoveKey( spep_0-3 + 90, 1, -373.2, 226 , 0 );
setMoveKey( spep_0-3 + 92, 1, -399.6, 274.1 , 0 );
setMoveKey( spep_0-3 + 94, 1, -437.6, 306.5 , 0 );
setMoveKey( spep_0-3 + 96, 1, -455.4, 313.6 , 0 );
setMoveKey( spep_0-3 + 98, 1, -477, 337.5 , 0 );
setMoveKey( spep_0-3 + 100, 1, -498.8, 355.1 , 0 );
setMoveKey( spep_0-3 + 102, 1, -517.2, 370 , 0 );
setMoveKey( spep_0-3 + 104, 1, -532.3, 382.3 , 0 );
setMoveKey( spep_0-3 + 106, 1, -544, 392 , 0 );
setMoveKey( spep_0-3 + 108, 1, -552.6, 399.1 , 0 );
setMoveKey( spep_0-3 + 110, 1, -558, 403.7 , 0 );
setMoveKey( spep_0-3 + 112, 1, -560.4, 406 , 0 );
setMoveKey( spep_0-3 + 114, 1, -559.8, 405.9 , 0 );
setMoveKey( spep_0-3 + 116, 1, -556.3, 403.4 , 0 );

setScaleKey( spep_0-3 + 72, 1, 1.5,1.5);
setScaleKey( spep_0-3 + 80, 1, 1.5,1.5);
setScaleKey( spep_0-3 + 82, 1, 1.44,1.44);
setScaleKey( spep_0-3 + 86, 1, 1.44,1.44);
setScaleKey( spep_0-3 + 88, 1, 1.38,1.38);
setScaleKey( spep_0-3 + 92, 1, 1.38,1.38);
setScaleKey( spep_0-3 + 94, 1, 1.32,1.32);
setScaleKey( spep_0-3 + 98, 1, 1.32,1.32);
setScaleKey( spep_0-3 + 100, 1, 1.26,1.26);
setScaleKey( spep_0-3 + 110, 1, 1.26,1.26);
setScaleKey( spep_0-3 + 112, 1, 1.2,1.2);
setScaleKey( spep_0-3 + 116, 1, 1.2,1.2);

setRotateKey( spep_0-3 + 72, 1, 0 );
setRotateKey( spep_0-3 + 79, 1, 0 );

setRotateKey( spep_0-3 + 80, 1, -96.5 );
setRotateKey( spep_0-3 + 116, 1, -96.5 );

--SE
--ブーメラン飛んでくる
stopSe( spep_0 + 28, SE001, 6 );
stopSe( spep_0 + 86, SE002, 8 );
SE003 = playSe( spep_0 + 26, 1117 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 107 );
setPitch( spep_0 + 26, SE003, 100 );
setTimeStretch( SE003, 1.07, 10, 1 );
stopSe( spep_0 + 40, SE003, 8 );
SE004 = playSe( spep_0 + 38, 1117 );
setSeVolumeByWorkId( spep_0 + 38, SE004, 111 );
setPitch( spep_0 + 38, SE004, 200 );
setTimeStretch( SE004, 1.13, 10, 1 );
stopSe( spep_0 + 56, SE004, 4 );
SE005 = playSe( spep_0 + 48, 1117 );
setSeVolumeByWorkId( spep_0 + 48, SE005, 127 );
setPitch( spep_0 + 48, SE005, 300 );
setTimeStretch( SE005, 1.2, 10, 1 );
stopSe( spep_0 + 64, SE005, 6 );
SE006 = playSe( spep_0 + 56, 1117 );
setSeVolumeByWorkId( spep_0 + 56, SE006, 143 );
setPitch( spep_0 + 56, SE006, 400 );
setTimeStretch( SE006, 1.27, 10, 1 );
stopSe( spep_0 + 70, SE006, 10 );

--ブーメランヒット
SE007 = playSe( spep_0 + 76, 1003 );
SE008 = playSe( spep_0 + 82, 1159 );
setSeVolumeByWorkId( spep_0 + 82, SE008, 80 );

--次の準備
spep_1=spep_0+116;
------------------------------------------------------
--岩裏からキャウェイが飛び出る
------------------------------------------------------
-- ** エフェクト等 ** --
fri = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fri, 0, 0, 0 );
setEffMoveKey( spep_1 + 110, fri, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fri, 1.0, 1.0 );
setEffScaleKey( spep_1 + 110, fri, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fri, 0 );
setEffRotateKey( spep_1 + 110, fri, 0 );
setEffAlphaKey( spep_1 + 0, fri, 255 );
setEffAlphaKey( spep_1 + 108, fri, 255 );
setEffAlphaKey( spep_1 + 109, fri, 255 );
setEffAlphaKey( spep_1 + 110, fri, 0 );

--SE
--ブーメランヒット
stopSe( spep_1 + 18, SE008, 74 );

--岩から顔出す
SE009 = playSe( spep_1 + 0, 4 );
setSeVolumeByWorkId( spep_1 + 0, SE009, 124 );

--岩から出てくる
SE010 = playSe( spep_1 + 34, 1048 );
SE011 = playSe( spep_1 + 34, 1106 );
setSeVolumeByWorkId( spep_1 + 34, SE011, 168 );
SE012 = playSe( spep_1 + 34, 1182 );
setSeVolumeByWorkId( spep_1 + 34, SE012, 83 );

--ダッシュ
SE013 = playSe( spep_1 + 52, 44 );
SE014 = playSe( spep_1 + 52, 1314 );

--回転
SE015 = playSe( spep_1 + 88, 1004 );
setSeVolumeByWorkId( spep_1 + 88, SE015, 188 );
setPitch( spep_1 + 88, SE015, -400 );
setTimeStretch( SE015, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+110;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
serif = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, serif, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, serif, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, serif, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, serif, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, serif, 0 );
setEffRotateKey( spep_2 + 90, serif, 0 );
setEffAlphaKey( spep_2 + 0, serif, 255 );
setEffAlphaKey( spep_2 + 90, serif, 255 );

--顔カットインのタイミング指定
spep_x=spep_2 +10;

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
--ダッシュ
stopSe( spep_2 + 80, SE014, 8 );

--顔カットイン
SE016 = playSe( spep_x + 12, 1018 );

--白フェード
entryFade( spep_2 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4= spep_3 + 94;
------------------------------------------------------
--槍をつく
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 212, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 212, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 212, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 212, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 212, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 212, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 212, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 212, finish_b, 255 );

--敵の動き
setDisp( spep_4-3 + 62, 1, 1);

changeAnime( spep_4-3 + 62, 1, 108);
changeAnime( spep_4-3 + 78, 1, 5);

a=100;
b=40;

setMoveKey( spep_4-3 + 62, 1, 191.7+a, 62.3+b , 0 );
setMoveKey( spep_4-3 + 64, 1, 153.2+a, 33.3+b , 0 );
setMoveKey( spep_4-3 + 66, 1, 162.8+a, 68.3+b , 0 );
setMoveKey( spep_4-3 + 68, 1, 149+a, 38.6+b , 0 );
setMoveKey( spep_4-3 + 70, 1, 180.6+a, 50.1+b , 0 );
setMoveKey( spep_4-3 + 72, 1, 138.2+a, 34.8+b , 0 );
setMoveKey( spep_4-3 + 74, 1, 173.3+a, 72.8+b , 0 );
setMoveKey( spep_4-3 + 76, 1, 162.5+a, 32.2+b , 0 );
setMoveKey( spep_4-3 + 77, 1, 162.5+a, 32.2+b , 0 );

setMoveKey( spep_4-3 + 78, 1, 197.1, 89.6 , 0 );
setMoveKey( spep_4-3 + 80, 1, 216.1, 35.9 , 0 );
setMoveKey( spep_4-3 + 82, 1, 231, 58 , 0 );
setMoveKey( spep_4-3 + 84, 1, 190, 48.3 , 0 );
setMoveKey( spep_4-3 + 86, 1, 200.9, 66.4 , 0 );
setMoveKey( spep_4-3 + 88, 1, 195.9, 52.6 , 0 );
setMoveKey( spep_4-3 + 90, 1, 174.7, 34.4 , 0 );
setMoveKey( spep_4-3 + 92, 1, 153.5, 16.1 , 0 );
setMoveKey( spep_4-3 + 94, 1, 132.3, -2.2 , 0 );
setMoveKey( spep_4-3 + 96, 1, 111.1, -20.5 , 0 );
setMoveKey( spep_4-3 + 98, 1, 89.8, -38.7 , 0 );
setMoveKey( spep_4-3 + 100, 1, 88.6, -39.6 , 0 );
setMoveKey( spep_4-3 + 102, 1, 87.3, -40.4 , 0 );
setMoveKey( spep_4-3 + 104, 1, 86.1, -41.3 , 0 );
setMoveKey( spep_4-3 + 106, 1, 84.8, -42.2 , 0 );
setMoveKey( spep_4-3 + 108, 1, 83.5, -43 , 0 );
setMoveKey( spep_4-3 + 110, 1, 82.3, -43.9 , 0 );
setMoveKey( spep_4-3 + 112, 1, 81.1, -44.7 , 0 );
setMoveKey( spep_4-3 + 114, 1, 79.8, -45.6 , 0 );
setMoveKey( spep_4-3 + 116, 1, 78.6, -46.5 , 0 );
setMoveKey( spep_4-3 + 118, 1, 77.4, -47.3 , 0 );
setMoveKey( spep_4-3 + 120, 1, 76.2, -48.1 , 0 );
setMoveKey( spep_4-3 + 122, 1, 74.9, -49 , 0 );
setMoveKey( spep_4-3 + 124, 1, 73.7, -49.9 , 0 );
setMoveKey( spep_4-3 + 126, 1, 72.5, -50.7 , 0 );
setMoveKey( spep_4-3 + 128, 1, 71.3, -51.6 , 0 );
setMoveKey( spep_4-3 + 130, 1, 70.1, -52.4 , 0 );
setMoveKey( spep_4-3 + 132, 1, 68.9, -53.3 , 0 );
setMoveKey( spep_4-3 + 134, 1, 67.7, -54.2 , 0 );
setMoveKey( spep_4-3 + 136, 1, 66.5, -55 , 0 );
setMoveKey( spep_4-3 + 138, 1, 65.3, -55.9 , 0 );
setMoveKey( spep_4-3 + 140, 1, 64.2, -56.7 , 0 );
setMoveKey( spep_4-3 + 142, 1, 63, -57.6 , 0 );
setMoveKey( spep_4-3 + 144, 1, 61.8, -58.5 , 0 );
setMoveKey( spep_4-3 + 146, 1, 60.6, -59.3 , 0 );
setMoveKey( spep_4-3 + 148, 1, 59.5, -60.1 , 0 );
setMoveKey( spep_4-3 + 150, 1, 58.3, -61.1 , 0 );
setMoveKey( spep_4-3 + 152, 1, 57.1, -61.9 , 0 );
setMoveKey( spep_4-3 + 154, 1, 56, -62.8 , 0 );
setMoveKey( spep_4-3 + 156, 1, 54.9, -63.6 , 0 );
setMoveKey( spep_4-3 + 158, 1, 53.7, -64.5 , 0 );
setMoveKey( spep_4-3 + 160, 1, 52.6, -65.4 , 0 );
setMoveKey( spep_4-3 + 162, 1, 51.4, -66.2 , 0 );
setMoveKey( spep_4-3 + 164, 1, 50.3, -67.1 , 0 );
setMoveKey( spep_4-3 + 166, 1, 49.2, -67.9 , 0 );
setMoveKey( spep_4-3 + 168, 1, 48.1, -68.8 , 0 );
setMoveKey( spep_4-3 + 170, 1, 47, -69.7 , 0 );
setMoveKey( spep_4-3 + 172, 1, 45.8, -70.5 , 0 );
setMoveKey( spep_4-3 + 174, 1, 44.8, -71.3 , 0 );
setMoveKey( spep_4-3 + 176, 1, 43.6, -72.2 , 0 );
setMoveKey( spep_4-3 + 178, 1, 42.6, -73.1 , 0 );
setMoveKey( spep_4-3 + 180, 1, 41.4, -73.9 , 0 );
setMoveKey( spep_4-3 + 182, 1, 40.4, -74.8 , 0 );
setMoveKey( spep_4-3 + 184, 1, 39.3, -75.7 , 0 );
setMoveKey( spep_4-3 + 186, 1, 38.2, -76.5 , 0 );
setMoveKey( spep_4-3 + 188, 1, 37.2, -77.4 , 0 );
setMoveKey( spep_4-3 + 190, 1, 36.1, -78.3 , 0 );
setMoveKey( spep_4-3 + 192, 1, 35, -79.1 , 0 );
setMoveKey( spep_4-3 + 194, 1, 34, -80 , 0 );
setMoveKey( spep_4-3 + 196, 1, 33, -80.9 , 0 );
setMoveKey( spep_4-3 + 198, 1, 31.9, -81.7 , 0 );
setMoveKey( spep_4-3 + 200, 1, 30.9, -82.5 , 0 );
setMoveKey( spep_4-3 + 202, 1, 29.8, -83.4 , 0 );
setMoveKey( spep_4-3 + 204, 1, 28.8, -84.2 , 0 );
setMoveKey( spep_4-3 + 206, 1, 27.8, -85.1 , 0 );
setMoveKey( spep_4-3 + 208, 1, 26.8, -86 , 0 );
setMoveKey( spep_4-3 + 210, 1, 25.8, -86.8 , 0 );

setScaleKey( spep_4-3 + 62, 1, 2.93,2.93);
setScaleKey( spep_4-3 + 64, 1, 2.86,2.86);
setScaleKey( spep_4-3 + 66, 1, 2.66,2.66);
setScaleKey( spep_4-3 + 74, 1, 2.66,2.66);
setScaleKey( spep_4-3 + 76, 1, 2.61,2.61);
setScaleKey( spep_4-3 + 77, 1, 2.61,2.61);

setScaleKey( spep_4-3 + 78, 1, 1.34,1.34);
setScaleKey( spep_4-3 + 88, 1, 1.44,1.44);
setScaleKey( spep_4-3 + 90, 1, 1.58,1.58);
setScaleKey( spep_4-3 + 92, 1, 1.68,1.68);
setScaleKey( spep_4-3 + 94, 1, 1.8,1.8);
setScaleKey( spep_4-3 + 96, 1, 1.92,1.92);
setScaleKey( spep_4-3 + 98, 1, 2.02,2.02);
setScaleKey( spep_4-3 + 126, 1, 1.92,1.92);
setScaleKey( spep_4-3 + 210, 1, 1.8,1.8);

setRotateKey( spep_4-3 + 62, 1, 0 );
setRotateKey( spep_4-3 + 77, 1, 0 );

setRotateKey( spep_4-3 + 78, 1, 58 );
setRotateKey( spep_4-3 + 210, 1, 58 );

--SE
--飛んでいく
SE018 = playSe( spep_4 + 0, 1314 );
stopSe( spep_4 + 58, SE018, 8 );
SE019 = playSe( spep_4 + 0, 9 );

--槍突き出す
SE020 = playSe( spep_4 + 22, 1003 );

--槍ヒット
SE021 = playSe( spep_4 + 62, 1009 ,"",1.0);
SE022 = playSe( spep_4 + 62, 1153 ,"",1.0);
setSeVolumeByWorkId( spep_4 + 62, SE022, 79 );
SE023 = playSe( spep_4 + 64, 1110 ,"",1.0);

--敵飛んでいく
SE024 = playSe( spep_4 + 76, 1183 );
setSeVolumeByWorkId( spep_4 + 76, SE024, 79 );
SE025 = playSe( spep_4 + 80, 1027 );
setSeVolumeByWorkId( spep_4 + 80, SE025, 79 );

-- ダメージ表示
dealDamage(spep_4+82);
endPhase( spep_4 + 202 ); 
else 
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ブーメランが飛んできて敵にあたる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
boomerang_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, boomerang_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, boomerang_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, boomerang_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, boomerang_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boomerang_f, 0 );
setEffRotateKey( spep_0 + 116, boomerang_f, 0 );
setEffAlphaKey( spep_0 + 0, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 114, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 115, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 116, boomerang_f, 0 );

-- ** エフェクト等 ** --
boomerang_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, boomerang_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, boomerang_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, boomerang_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, boomerang_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boomerang_b, 0 );
setEffRotateKey( spep_0 + 116, boomerang_b, 0 );
setEffAlphaKey( spep_0 + 0, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 114, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 115, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 116, boomerang_b, 0 );

--SE
--ブーメラン飛んでくる
SE001 = playSe( spep_0 + 8, 1117 );
SE002 = playSe( spep_0 + 8, 1116 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 66 );
setPitch( spep_0 + 8, SE002, 500 );
setTimeStretch( SE002, 1.33, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    
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
setDisp( spep_0-3 + 72, 1, 1);
setDisp( spep_0-3 + 116, 1, 0);

changeAnime( spep_0-3 + 72, 1, 100);
changeAnime( spep_0-3 + 80, 1, 106);

setMoveKey( spep_0-3 + 72, 1, 3.4, -19.8 , 0 );
setMoveKey( spep_0-3 + 74, 1, -0.2, -19.7 , 0 );
setMoveKey( spep_0-3 + 76, 1, -0.2, -19.7 , 0 );
setMoveKey( spep_0-3 + 78, 1, -0.2, -33.7 , 0 );
setMoveKey( spep_0-3 + 79, 1, -0.2, -33.7 , 0 );

setMoveKey( spep_0-3 + 80, 1, -121.9, 49.6 , 0 );
setMoveKey( spep_0-3 + 82, 1, -194.5, 76.9 , 0 );
setMoveKey( spep_0-3 + 84, 1, -234.1, 140 , 0 );
setMoveKey( spep_0-3 + 86, 1, -274.6, 193.2 , 0 );
setMoveKey( spep_0-3 + 88, 1, -326.2, 214.5 , 0 );
setMoveKey( spep_0-3 + 90, 1, -373.2, 226 , 0 );
setMoveKey( spep_0-3 + 92, 1, -399.6, 274.1 , 0 );
setMoveKey( spep_0-3 + 94, 1, -437.6, 306.5 , 0 );
setMoveKey( spep_0-3 + 96, 1, -455.4, 313.6 , 0 );
setMoveKey( spep_0-3 + 98, 1, -477, 337.5 , 0 );
setMoveKey( spep_0-3 + 100, 1, -498.8, 355.1 , 0 );
setMoveKey( spep_0-3 + 102, 1, -517.2, 370 , 0 );
setMoveKey( spep_0-3 + 104, 1, -532.3, 382.3 , 0 );
setMoveKey( spep_0-3 + 106, 1, -544, 392 , 0 );
setMoveKey( spep_0-3 + 108, 1, -552.6, 399.1 , 0 );
setMoveKey( spep_0-3 + 110, 1, -558, 403.7 , 0 );
setMoveKey( spep_0-3 + 112, 1, -560.4, 406 , 0 );
setMoveKey( spep_0-3 + 114, 1, -559.8, 405.9 , 0 );
setMoveKey( spep_0-3 + 116, 1, -556.3, 403.4 , 0 );

setScaleKey( spep_0-3 + 72, 1, 1.5,1.5);
setScaleKey( spep_0-3 + 80, 1, 1.5,1.5);
setScaleKey( spep_0-3 + 82, 1, 1.44,1.44);
setScaleKey( spep_0-3 + 86, 1, 1.44,1.44);
setScaleKey( spep_0-3 + 88, 1, 1.38,1.38);
setScaleKey( spep_0-3 + 92, 1, 1.38,1.38);
setScaleKey( spep_0-3 + 94, 1, 1.32,1.32);
setScaleKey( spep_0-3 + 98, 1, 1.32,1.32);
setScaleKey( spep_0-3 + 100, 1, 1.26,1.26);
setScaleKey( spep_0-3 + 110, 1, 1.26,1.26);
setScaleKey( spep_0-3 + 112, 1, 1.2,1.2);
setScaleKey( spep_0-3 + 116, 1, 1.2,1.2);

setRotateKey( spep_0-3 + 72, 1, 0 );
setRotateKey( spep_0-3 + 79, 1, 0 );

setRotateKey( spep_0-3 + 80, 1, -96.5 );
setRotateKey( spep_0-3 + 116, 1, -96.5 );

--SE
--ブーメラン飛んでくる
stopSe( spep_0 + 28, SE001, 6 );
stopSe( spep_0 + 86, SE002, 8 );
SE003 = playSe( spep_0 + 26, 1117 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 107 );
setPitch( spep_0 + 26, SE003, 100 );
setTimeStretch( SE003, 1.07, 10, 1 );
stopSe( spep_0 + 40, SE003, 8 );
SE004 = playSe( spep_0 + 38, 1117 );
setSeVolumeByWorkId( spep_0 + 38, SE004, 111 );
setPitch( spep_0 + 38, SE004, 200 );
setTimeStretch( SE004, 1.13, 10, 1 );
stopSe( spep_0 + 56, SE004, 4 );
SE005 = playSe( spep_0 + 48, 1117 );
setSeVolumeByWorkId( spep_0 + 48, SE005, 127 );
setPitch( spep_0 + 48, SE005, 300 );
setTimeStretch( SE005, 1.2, 10, 1 );
stopSe( spep_0 + 64, SE005, 6 );
SE006 = playSe( spep_0 + 56, 1117 );
setSeVolumeByWorkId( spep_0 + 56, SE006, 143 );
setPitch( spep_0 + 56, SE006, 400 );
setTimeStretch( SE006, 1.27, 10, 1 );
stopSe( spep_0 + 70, SE006, 10 );

--ブーメランヒット
SE007 = playSe( spep_0 + 76, 1003 );
SE008 = playSe( spep_0 + 82, 1159 );
setSeVolumeByWorkId( spep_0 + 82, SE008, 80 );

--次の準備
spep_1=spep_0+116;
------------------------------------------------------
--岩裏からキャウェイが飛び出る
------------------------------------------------------
-- ** エフェクト等 ** --
fri = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fri, 0, 0, 0 );
setEffMoveKey( spep_1 + 110, fri, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fri, 1.0, 1.0 );
setEffScaleKey( spep_1 + 110, fri, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fri, 0 );
setEffRotateKey( spep_1 + 110, fri, 0 );
setEffAlphaKey( spep_1 + 0, fri, 255 );
setEffAlphaKey( spep_1 + 108, fri, 255 );
setEffAlphaKey( spep_1 + 109, fri, 255 );
setEffAlphaKey( spep_1 + 110, fri, 0 );

--SE
--ブーメランヒット
stopSe( spep_1 + 18, SE008, 74 );

--岩から顔出す
SE009 = playSe( spep_1 + 0, 4 );
setSeVolumeByWorkId( spep_1 + 0, SE009, 124 );

--岩から出てくる
SE010 = playSe( spep_1 + 34, 1048 );
SE011 = playSe( spep_1 + 34, 1106 );
setSeVolumeByWorkId( spep_1 + 34, SE011, 168 );
SE012 = playSe( spep_1 + 34, 1182 );
setSeVolumeByWorkId( spep_1 + 34, SE012, 83 );

--ダッシュ
SE013 = playSe( spep_1 + 52, 44 );
SE014 = playSe( spep_1 + 52, 1314 );

--回転
SE015 = playSe( spep_1 + 88, 1004 );
setSeVolumeByWorkId( spep_1 + 88, SE015, 188 );
setPitch( spep_1 + 88, SE015, -400 );
setTimeStretch( SE015, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+110;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
serif = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, serif, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, serif, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, serif, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, serif, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, serif, 0 );
setEffRotateKey( spep_2 + 90, serif, 0 );
setEffAlphaKey( spep_2 + 0, serif, 255 );
setEffAlphaKey( spep_2 + 90, serif, 255 );

--顔カットインのタイミング指定
spep_x=spep_2 +10;

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
--ダッシュ
stopSe( spep_2 + 80, SE014, 8 );

--顔カットイン
SE016 = playSe( spep_x + 12, 1018 );

--白フェード
entryFade( spep_2 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4= spep_3 + 94;
------------------------------------------------------
--槍をつく
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 212, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 212, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 212, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 212, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 212, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 212, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 212, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 212, finish_b, 255 );

--敵の動き
setDisp( spep_4-3 + 62, 1, 1);

changeAnime( spep_4-3 + 62, 1, 108);
changeAnime( spep_4-3 + 78, 1, 5);

a=100;
b=40;

setMoveKey( spep_4-3 + 62, 1, 191.7+a, 62.3+b , 0 );
setMoveKey( spep_4-3 + 64, 1, 153.2+a, 33.3+b , 0 );
setMoveKey( spep_4-3 + 66, 1, 162.8+a, 68.3+b , 0 );
setMoveKey( spep_4-3 + 68, 1, 149+a, 38.6+b , 0 );
setMoveKey( spep_4-3 + 70, 1, 180.6+a, 50.1+b , 0 );
setMoveKey( spep_4-3 + 72, 1, 138.2+a, 34.8+b , 0 );
setMoveKey( spep_4-3 + 74, 1, 173.3+a, 72.8+b , 0 );
setMoveKey( spep_4-3 + 76, 1, 162.5+a, 32.2+b , 0 );
setMoveKey( spep_4-3 + 77, 1, 162.5+a, 32.2+b , 0 );

setMoveKey( spep_4-3 + 78, 1, 197.1, 89.6 , 0 );
setMoveKey( spep_4-3 + 80, 1, 216.1, 35.9 , 0 );
setMoveKey( spep_4-3 + 82, 1, 231, 58 , 0 );
setMoveKey( spep_4-3 + 84, 1, 190, 48.3 , 0 );
setMoveKey( spep_4-3 + 86, 1, 200.9, 66.4 , 0 );
setMoveKey( spep_4-3 + 88, 1, 195.9, 52.6 , 0 );
setMoveKey( spep_4-3 + 90, 1, 174.7, 34.4 , 0 );
setMoveKey( spep_4-3 + 92, 1, 153.5, 16.1 , 0 );
setMoveKey( spep_4-3 + 94, 1, 132.3, -2.2 , 0 );
setMoveKey( spep_4-3 + 96, 1, 111.1, -20.5 , 0 );
setMoveKey( spep_4-3 + 98, 1, 89.8, -38.7 , 0 );
setMoveKey( spep_4-3 + 100, 1, 88.6, -39.6 , 0 );
setMoveKey( spep_4-3 + 102, 1, 87.3, -40.4 , 0 );
setMoveKey( spep_4-3 + 104, 1, 86.1, -41.3 , 0 );
setMoveKey( spep_4-3 + 106, 1, 84.8, -42.2 , 0 );
setMoveKey( spep_4-3 + 108, 1, 83.5, -43 , 0 );
setMoveKey( spep_4-3 + 110, 1, 82.3, -43.9 , 0 );
setMoveKey( spep_4-3 + 112, 1, 81.1, -44.7 , 0 );
setMoveKey( spep_4-3 + 114, 1, 79.8, -45.6 , 0 );
setMoveKey( spep_4-3 + 116, 1, 78.6, -46.5 , 0 );
setMoveKey( spep_4-3 + 118, 1, 77.4, -47.3 , 0 );
setMoveKey( spep_4-3 + 120, 1, 76.2, -48.1 , 0 );
setMoveKey( spep_4-3 + 122, 1, 74.9, -49 , 0 );
setMoveKey( spep_4-3 + 124, 1, 73.7, -49.9 , 0 );
setMoveKey( spep_4-3 + 126, 1, 72.5, -50.7 , 0 );
setMoveKey( spep_4-3 + 128, 1, 71.3, -51.6 , 0 );
setMoveKey( spep_4-3 + 130, 1, 70.1, -52.4 , 0 );
setMoveKey( spep_4-3 + 132, 1, 68.9, -53.3 , 0 );
setMoveKey( spep_4-3 + 134, 1, 67.7, -54.2 , 0 );
setMoveKey( spep_4-3 + 136, 1, 66.5, -55 , 0 );
setMoveKey( spep_4-3 + 138, 1, 65.3, -55.9 , 0 );
setMoveKey( spep_4-3 + 140, 1, 64.2, -56.7 , 0 );
setMoveKey( spep_4-3 + 142, 1, 63, -57.6 , 0 );
setMoveKey( spep_4-3 + 144, 1, 61.8, -58.5 , 0 );
setMoveKey( spep_4-3 + 146, 1, 60.6, -59.3 , 0 );
setMoveKey( spep_4-3 + 148, 1, 59.5, -60.1 , 0 );
setMoveKey( spep_4-3 + 150, 1, 58.3, -61.1 , 0 );
setMoveKey( spep_4-3 + 152, 1, 57.1, -61.9 , 0 );
setMoveKey( spep_4-3 + 154, 1, 56, -62.8 , 0 );
setMoveKey( spep_4-3 + 156, 1, 54.9, -63.6 , 0 );
setMoveKey( spep_4-3 + 158, 1, 53.7, -64.5 , 0 );
setMoveKey( spep_4-3 + 160, 1, 52.6, -65.4 , 0 );
setMoveKey( spep_4-3 + 162, 1, 51.4, -66.2 , 0 );
setMoveKey( spep_4-3 + 164, 1, 50.3, -67.1 , 0 );
setMoveKey( spep_4-3 + 166, 1, 49.2, -67.9 , 0 );
setMoveKey( spep_4-3 + 168, 1, 48.1, -68.8 , 0 );
setMoveKey( spep_4-3 + 170, 1, 47, -69.7 , 0 );
setMoveKey( spep_4-3 + 172, 1, 45.8, -70.5 , 0 );
setMoveKey( spep_4-3 + 174, 1, 44.8, -71.3 , 0 );
setMoveKey( spep_4-3 + 176, 1, 43.6, -72.2 , 0 );
setMoveKey( spep_4-3 + 178, 1, 42.6, -73.1 , 0 );
setMoveKey( spep_4-3 + 180, 1, 41.4, -73.9 , 0 );
setMoveKey( spep_4-3 + 182, 1, 40.4, -74.8 , 0 );
setMoveKey( spep_4-3 + 184, 1, 39.3, -75.7 , 0 );
setMoveKey( spep_4-3 + 186, 1, 38.2, -76.5 , 0 );
setMoveKey( spep_4-3 + 188, 1, 37.2, -77.4 , 0 );
setMoveKey( spep_4-3 + 190, 1, 36.1, -78.3 , 0 );
setMoveKey( spep_4-3 + 192, 1, 35, -79.1 , 0 );
setMoveKey( spep_4-3 + 194, 1, 34, -80 , 0 );
setMoveKey( spep_4-3 + 196, 1, 33, -80.9 , 0 );
setMoveKey( spep_4-3 + 198, 1, 31.9, -81.7 , 0 );
setMoveKey( spep_4-3 + 200, 1, 30.9, -82.5 , 0 );
setMoveKey( spep_4-3 + 202, 1, 29.8, -83.4 , 0 );
setMoveKey( spep_4-3 + 204, 1, 28.8, -84.2 , 0 );
setMoveKey( spep_4-3 + 206, 1, 27.8, -85.1 , 0 );
setMoveKey( spep_4-3 + 208, 1, 26.8, -86 , 0 );
setMoveKey( spep_4-3 + 210, 1, 25.8, -86.8 , 0 );

setScaleKey( spep_4-3 + 62, 1, 2.93,2.93);
setScaleKey( spep_4-3 + 64, 1, 2.86,2.86);
setScaleKey( spep_4-3 + 66, 1, 2.66,2.66);
setScaleKey( spep_4-3 + 74, 1, 2.66,2.66);
setScaleKey( spep_4-3 + 76, 1, 2.61,2.61);
setScaleKey( spep_4-3 + 77, 1, 2.61,2.61);

setScaleKey( spep_4-3 + 78, 1, 1.34,1.34);
setScaleKey( spep_4-3 + 88, 1, 1.44,1.44);
setScaleKey( spep_4-3 + 90, 1, 1.58,1.58);
setScaleKey( spep_4-3 + 92, 1, 1.68,1.68);
setScaleKey( spep_4-3 + 94, 1, 1.8,1.8);
setScaleKey( spep_4-3 + 96, 1, 1.92,1.92);
setScaleKey( spep_4-3 + 98, 1, 2.02,2.02);
setScaleKey( spep_4-3 + 126, 1, 1.92,1.92);
setScaleKey( spep_4-3 + 210, 1, 1.8,1.8);

setRotateKey( spep_4-3 + 62, 1, 0 );
setRotateKey( spep_4-3 + 77, 1, 0 );

setRotateKey( spep_4-3 + 78, 1, 58 );
setRotateKey( spep_4-3 + 210, 1, 58 );

--SE
--飛んでいく
SE018 = playSe( spep_4 + 0, 1314 );
stopSe( spep_4 + 58, SE018, 8 );
SE019 = playSe( spep_4 + 0, 9 );

--槍突き出す
SE020 = playSe( spep_4 + 22, 1003 );

--槍ヒット
SE021 = playSe( spep_4 + 62, 1009 ,"",1.0);
SE022 = playSe( spep_4 + 62, 1153 ,"",1.0);
setSeVolumeByWorkId( spep_4 + 62, SE022, 79 );
SE023 = playSe( spep_4 + 64, 1110 ,"",1.0);

--敵飛んでいく
SE024 = playSe( spep_4 + 76, 1183 );
setSeVolumeByWorkId( spep_4 + 76, SE024, 79 );
SE025 = playSe( spep_4 + 80, 1027 );
setSeVolumeByWorkId( spep_4 + 80, SE025, 79 );

-- ダメージ表示
dealDamage(spep_4+82);
endPhase( spep_4 + 202 ); 
end