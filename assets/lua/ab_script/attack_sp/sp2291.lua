--1023230:超サイヤ人ゴッドトランクス(ゼノ)_バーニングブレイカー
--sp_effect_a9_00088

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
SP_01=	158564	;--	構える
SP_02=	158565	;--	敵に接近する　手前
SP_03=	158566	;--	敵に接近する　奥
SP_04=	158567	;--	斬撃
SP_05=	158568	;--	フィニッシュ　手前
SP_06=	158569	;--	フィニッシュ　奥

--エフェクト(敵)
SP_01x=	158588	;--	構える (敵)
SP_02x=	158565	;--	敵に接近する　手前
SP_03x=	158589	;--	敵に接近する　奥 (敵)
SP_04x=	158590	;--	斬撃 (敵)
SP_05x=	158591	;--	フィニッシュ　手前 (敵)
SP_06x=	158569	;--	フィニッシュ　奥

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
--前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
hold = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, hold, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, hold, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, hold, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, hold, 0 );
setEffRotateKey( spep_0 + 100, hold, 0 );
setEffAlphaKey( spep_0 + 0, hold, 255 );
setEffAlphaKey( spep_0 + 100, hold, 255 );
setEffAlphaKey( spep_0 + 101, hold, 0 );
setEffAlphaKey( spep_0 + 102, hold, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 140, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  140,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  140,  515);

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
--炎
SE001 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 108, 0, 4, -1);

--顔カットイン
SE002 = playSeVer2( spep_x +12 , 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 26, 1233, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 38, 1007, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--敵に接近する
------------------------------------------------------
-- ** エフェクト等 ** --
hold_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hold_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, hold_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hold_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, hold_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hold_f, 0 );
setEffRotateKey( spep_2 + 56, hold_f, 0 );
setEffAlphaKey( spep_2 + 0, hold_f, 255 );
setEffAlphaKey( spep_2 + 54, hold_f, 255 );
setEffAlphaKey( spep_2 + 55, hold_f, 255 );
setEffAlphaKey( spep_2 + 56, hold_f, 0 );

-- ** エフェクト等 ** --
hold_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hold_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, hold_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hold_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, hold_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hold_b, 0 );
setEffRotateKey( spep_2 + 56, hold_b, 0 );
setEffAlphaKey( spep_2 + 0, hold_b, 255 );
setEffAlphaKey( spep_2 + 54, hold_b, 255 );
setEffAlphaKey( spep_2 + 55, hold_b, 255 );
setEffAlphaKey( spep_2 + 56, hold_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 102 );

a=150;

setMoveKey( spep_2 + 0, 1, 525.1+a, -714.8 , 0 );
setMoveKey( spep_2 + 2, 1, 422.6+a, -574.1 , 0 );
setMoveKey( spep_2 + 4, 1, 320+a, -433.6 , 0 );
setMoveKey( spep_2 + 6, 1, 215.7+a, -294.7 , 0 );
setMoveKey( spep_2 + 8, 1, 111.4+a, -156 , 0 );
setMoveKey( spep_2 + 10, 1, 111.9+a, -156.1 , 0 );
setMoveKey( spep_2 + 12, 1, 112.4+a, -156.2 , 0 );
setMoveKey( spep_2 + 14, 1, 110.8+a, -154.2 , 0 );
setMoveKey( spep_2 + 16, 1, 109.3+a, -152.2 , 0 );
setMoveKey( spep_2 + 18, 1, 107.7+a, -150.2 , 0 );
setMoveKey( spep_2 + 20, 1, 107.6+a, -148.4 , 0 );
setMoveKey( spep_2 + 22, 1, 107.5+a, -146.6 , 0 );
setMoveKey( spep_2 + 24, 1, 107.6+a, -146.2 , 0 );
setMoveKey( spep_2 + 26, 1, 107.7+a, -145.9 , 0 );
setMoveKey( spep_2 + 28, 1, 107.8+a, -145.6 , 0 );
setMoveKey( spep_2 + 30, 1, 105.8+a, -143.2 , 0 );

setScaleKey( spep_2 + 0, 1, 5.83,5.83);
setScaleKey( spep_2 + 2, 1, 5.25,5.25);
setScaleKey( spep_2 + 4, 1, 4.65,4.65);
setScaleKey( spep_2 + 6, 1, 4.06,4.06);
setScaleKey( spep_2 + 8, 1, 3.47,3.47);
setScaleKey( spep_2 + 10, 1, 3.46,3.46);
setScaleKey( spep_2 + 12, 1, 3.46,3.46);
setScaleKey( spep_2 + 14, 1, 3.45,3.45);
setScaleKey( spep_2 + 16, 1, 3.45,3.45);
setScaleKey( spep_2 + 18, 1, 3.44,3.44);
setScaleKey( spep_2 + 20, 1,  3.43,3.43);
setScaleKey( spep_2 + 22, 1, 3.42,3.42);
setScaleKey( spep_2 + 24, 1, 3.42,3.42);
setScaleKey( spep_2 + 26, 1, 3.41,3.41);
setScaleKey( spep_2 + 28, 1, 3.4,3.4);
setScaleKey( spep_2 + 30, 1, 3.39,3.39);

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 30, 1, 0 );

--SE
--突っ込んでくる
SE006 = playSeVer2( spep_2 + 10, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 10, 9, "", 0, 0, 0, -1);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 105.8+a, -143.2 , 0 );
    setScaleKey( SP_dodge + 9, 1, 4.48, 4.47 );
    setRotateKey( SP_dodge + 9, 1, 0 );


    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_2 + 56, 1, 0 );

setMoveKey( spep_2 + 32, 1, 103.8+a, -140.8 , 0 );
setMoveKey( spep_2 + 34, 1, 104.9+a, -138.4 , 0 );
setMoveKey( spep_2 + 36, 1, 106.1+a, -136 , 0 );
setMoveKey( spep_2 + 38, 1, 109.1+a, -137.4 , 0 );
setMoveKey( spep_2 + 40, 1, 105.9+a, -138.7 , 0 );
setMoveKey( spep_2 + 42, 1, 109.5+a, -129.4 , 0 );
setMoveKey( spep_2 + 44, 1, 100.7+a, -132.6 , 0 );
setMoveKey( spep_2 + 46, 1, 95+a, -136.5 , 0 );
setMoveKey( spep_2 + 48, 1, 97.9+a, -139.1 , 0 );
setMoveKey( spep_2 + 50, 1, 94.2+a, -135.3 , 0 );
setMoveKey( spep_2 + 52, 1, 97.9+a, -132.8 , 0 );
setMoveKey( spep_2 + 54, 1, 101.7+a, -136.6 , 0 );
setMoveKey( spep_2 + 56, 1, 97.9+a, -132.8 , 0 );

setScaleKey( spep_2 + 32, 1, 3.38,3.38);
setScaleKey( spep_2 + 34, 1, 3.38,3.38);
setScaleKey( spep_2 + 36, 1, 3.38,3.38);
setScaleKey( spep_2 + 38, 1, 3.37,3.37);
setScaleKey( spep_2 + 40, 1, 3.36,3.36);
setScaleKey( spep_2 + 42, 1, 3.35,3.35);
setScaleKey( spep_2 + 44, 1, 3.35,3.35);
setScaleKey( spep_2 + 46, 1, 3.34,3.34);
setScaleKey( spep_2 + 48, 1, 3.33,3.33);
setScaleKey( spep_2 + 56, 1, 3.33,3.33);

setRotateKey( spep_2 + 56, 1, 0 );

-- ** 次の準備 ** --
spep_3= spep_2 + 56; 
------------------------------------------------------
--斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, cut, 0, 0, 0 );
setEffMoveKey( spep_3 + 36, cut, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, cut, 1.0, 1.0 );
setEffScaleKey( spep_3 + 36, cut, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cut, 0 );
setEffRotateKey( spep_3 + 36, cut, 0 );
setEffAlphaKey( spep_3 + 0, cut, 255 );
setEffAlphaKey( spep_3 + 34, cut, 255 );
setEffAlphaKey( spep_3 + 35, cut, 255 );
setEffAlphaKey( spep_3 + 36, cut, 0 );

--SE
--斬る
SE008 = playSeVer2( spep_3 + 0, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_3 + 4, 1142, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_3 + 8, 1032, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 8, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE011, 53 );
SE012 = playSeVer2( spep_3 + 12, 1032, "", 0, 0, 0, -1);
setPitch( spep_3 + 12, SE012, -300 );
setTimeStretch( SE012, 0.8, 30, 4 );

--エネルギー溜まる
SE013 = playSeVer2( spep_3 + 26, 1179, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 30, 1147, "",spep_3 + 36 + 84, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 30, SE014, 60 );
SE015 = playSeVer2( spep_3 + 30, 1271, "",spep_3 + 36 + 84, 0, 8, 0.5);
setSeVolumeByWorkId( spep_3 + 30, SE015, 142 );

-- ** 次の準備 ** --
spep_4= spep_3 + 36; 
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 140, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 140, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 140, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 140, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 140, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 140, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 140, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 140, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 62, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

b=-40;

setMoveKey( spep_4 + 0, 1, -150.4, 121+b , 0 );
setMoveKey( spep_4 + 2, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 4, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 6, 1, -150.4, 121+b , 0 );
setMoveKey( spep_4 + 8, 1, -150.4, 121+b , 0 );
setMoveKey( spep_4 + 10, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 12, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 14, 1, -150.3, 121.1+b , 0 );
setMoveKey( spep_4 + 16, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 18, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 20, 1, -150.4, 121+b , 0 );
setMoveKey( spep_4 + 22, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 24, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 26, 1, -150.4, 121+b , 0 );
setMoveKey( spep_4 + 28, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 30, 1, -150.3, 121.1+b , 0 );
setMoveKey( spep_4 + 32, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 58, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 60, 1, -147.3, 127+b , 0 );
setMoveKey( spep_4 + 62, 1, -144.3, 133+b , 0 );

setScaleKey( spep_4 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 62, 1, 1.3, 1.3 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 0.3 );
setRotateKey( spep_4 + 4, 1, 0.6 );
setRotateKey( spep_4 + 6, 1, 0.9 );
setRotateKey( spep_4 + 8, 1, 1.3 );
setRotateKey( spep_4 + 10, 1, 1.6 );
setRotateKey( spep_4 + 12, 1, 1.9 );
setRotateKey( spep_4 + 14, 1, 2.2 );
setRotateKey( spep_4 + 16, 1, 2.5 );
setRotateKey( spep_4 + 18, 1, 2.8 );
setRotateKey( spep_4 + 20, 1, 3.1 );
setRotateKey( spep_4 + 22, 1, 3.4 );
setRotateKey( spep_4 + 24, 1, 3.8 );
setRotateKey( spep_4 + 26, 1, 4.1 );
setRotateKey( spep_4 + 28, 1, 4.4 );
setRotateKey( spep_4 + 30, 1, 4.7 );
setRotateKey( spep_4 + 32, 1, 5 );
setRotateKey( spep_4 + 34, 1, 5.3 );
setRotateKey( spep_4 + 36, 1, 5.6 );
setRotateKey( spep_4 + 38, 1, 5.9 );
setRotateKey( spep_4 + 40, 1, 6.3 );
setRotateKey( spep_4 + 42, 1, 6.6 );
setRotateKey( spep_4 + 44, 1, 6.9 );
setRotateKey( spep_4 + 46, 1, 7.2 );
setRotateKey( spep_4 + 48, 1, 7.5 );
setRotateKey( spep_4 + 50, 1, 7.8 );
setRotateKey( spep_4 + 52, 1, 8.1 );
setRotateKey( spep_4 + 54, 1, 8.4 );
setRotateKey( spep_4 + 56, 1, 8.8 );
setRotateKey( spep_4 + 58, 1, 9.1 );
setRotateKey( spep_4 + 60, 1, 9.4 );
setRotateKey( spep_4 + 62, 1, 9.7 );

--SE
--エネルギー溜まる
SE016 = playSeVer2( spep_4 + 12, 1311, "",spep_4 + 84, 0, 8, -1);

--爆発
SE017 = playSeVer2( spep_4 + 60, 1024, "", 0, 0, 0, -1);	

--剣しまう
SE018 = playSeVer2( spep_4 + 60, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 60, SE018, 133 );

--終わり
dealDamage(spep_4+0);
endPhase( spep_4 + 130 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
hold = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, hold, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, hold, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, hold, -1.0, 1.0 );
setEffScaleKey( spep_0 + 100, hold, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, hold, 0 );
setEffRotateKey( spep_0 + 100, hold, 0 );
setEffAlphaKey( spep_0 + 0, hold, 255 );
setEffAlphaKey( spep_0 + 100, hold, 255 );
setEffAlphaKey( spep_0 + 101, hold, 0 );
setEffAlphaKey( spep_0 + 102, hold, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 140, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  140,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  140,  515);

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
--炎
SE001 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 108, 0, 4, -1);

--顔カットイン
SE002 = playSeVer2( spep_x +12 , 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 26, 1233, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 38, 1007, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94; 
------------------------------------------------------
--敵に接近する
------------------------------------------------------
-- ** エフェクト等 ** --
hold_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hold_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, hold_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hold_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, hold_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hold_f, 0 );
setEffRotateKey( spep_2 + 56, hold_f, 0 );
setEffAlphaKey( spep_2 + 0, hold_f, 255 );
setEffAlphaKey( spep_2 + 54, hold_f, 255 );
setEffAlphaKey( spep_2 + 55, hold_f, 255 );
setEffAlphaKey( spep_2 + 56, hold_f, 0 );

-- ** エフェクト等 ** --
hold_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hold_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, hold_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hold_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, hold_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hold_b, 0 );
setEffRotateKey( spep_2 + 56, hold_b, 0 );
setEffAlphaKey( spep_2 + 0, hold_b, 255 );
setEffAlphaKey( spep_2 + 54, hold_b, 255 );
setEffAlphaKey( spep_2 + 55, hold_b, 255 );
setEffAlphaKey( spep_2 + 56, hold_b, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );

changeAnime( spep_2 + 0, 1, 102 );

a=150;

setMoveKey( spep_2 + 0, 1, 525.1+a, -714.8 , 0 );
setMoveKey( spep_2 + 2, 1, 422.6+a, -574.1 , 0 );
setMoveKey( spep_2 + 4, 1, 320+a, -433.6 , 0 );
setMoveKey( spep_2 + 6, 1, 215.7+a, -294.7 , 0 );
setMoveKey( spep_2 + 8, 1, 111.4+a, -156 , 0 );
setMoveKey( spep_2 + 10, 1, 111.9+a, -156.1 , 0 );
setMoveKey( spep_2 + 12, 1, 112.4+a, -156.2 , 0 );
setMoveKey( spep_2 + 14, 1, 110.8+a, -154.2 , 0 );
setMoveKey( spep_2 + 16, 1, 109.3+a, -152.2 , 0 );
setMoveKey( spep_2 + 18, 1, 107.7+a, -150.2 , 0 );
setMoveKey( spep_2 + 20, 1, 107.6+a, -148.4 , 0 );
setMoveKey( spep_2 + 22, 1, 107.5+a, -146.6 , 0 );
setMoveKey( spep_2 + 24, 1, 107.6+a, -146.2 , 0 );
setMoveKey( spep_2 + 26, 1, 107.7+a, -145.9 , 0 );
setMoveKey( spep_2 + 28, 1, 107.8+a, -145.6 , 0 );
setMoveKey( spep_2 + 30, 1, 105.8+a, -143.2 , 0 );

setScaleKey( spep_2 + 0, 1, 5.83,5.83);
setScaleKey( spep_2 + 2, 1, 5.25,5.25);
setScaleKey( spep_2 + 4, 1, 4.65,4.65);
setScaleKey( spep_2 + 6, 1, 4.06,4.06);
setScaleKey( spep_2 + 8, 1, 3.47,3.47);
setScaleKey( spep_2 + 10, 1, 3.46,3.46);
setScaleKey( spep_2 + 12, 1, 3.46,3.46);
setScaleKey( spep_2 + 14, 1, 3.45,3.45);
setScaleKey( spep_2 + 16, 1, 3.45,3.45);
setScaleKey( spep_2 + 18, 1, 3.44,3.44);
setScaleKey( spep_2 + 20, 1,  3.43,3.43);
setScaleKey( spep_2 + 22, 1, 3.42,3.42);
setScaleKey( spep_2 + 24, 1, 3.42,3.42);
setScaleKey( spep_2 + 26, 1, 3.41,3.41);
setScaleKey( spep_2 + 28, 1, 3.4,3.4);
setScaleKey( spep_2 + 30, 1, 3.39,3.39);

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 30, 1, 0 );

--SE
--突っ込んでくる
SE006 = playSeVer2( spep_2 + 10, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 10, 9, "", 0, 0, 0, -1);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 105.8+a, -143.2 , 0 );
    setScaleKey( SP_dodge + 9, 1, 4.48, 4.47 );
    setRotateKey( SP_dodge + 9, 1, 0 );


    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_2 + 56, 1, 0 );

setMoveKey( spep_2 + 32, 1, 103.8+a, -140.8 , 0 );
setMoveKey( spep_2 + 34, 1, 104.9+a, -138.4 , 0 );
setMoveKey( spep_2 + 36, 1, 106.1+a, -136 , 0 );
setMoveKey( spep_2 + 38, 1, 109.1+a, -137.4 , 0 );
setMoveKey( spep_2 + 40, 1, 105.9+a, -138.7 , 0 );
setMoveKey( spep_2 + 42, 1, 109.5+a, -129.4 , 0 );
setMoveKey( spep_2 + 44, 1, 100.7+a, -132.6 , 0 );
setMoveKey( spep_2 + 46, 1, 95+a, -136.5 , 0 );
setMoveKey( spep_2 + 48, 1, 97.9+a, -139.1 , 0 );
setMoveKey( spep_2 + 50, 1, 94.2+a, -135.3 , 0 );
setMoveKey( spep_2 + 52, 1, 97.9+a, -132.8 , 0 );
setMoveKey( spep_2 + 54, 1, 101.7+a, -136.6 , 0 );
setMoveKey( spep_2 + 56, 1, 97.9+a, -132.8 , 0 );

setScaleKey( spep_2 + 32, 1, 3.38,3.38);
setScaleKey( spep_2 + 34, 1, 3.38,3.38);
setScaleKey( spep_2 + 36, 1, 3.38,3.38);
setScaleKey( spep_2 + 38, 1, 3.37,3.37);
setScaleKey( spep_2 + 40, 1, 3.36,3.36);
setScaleKey( spep_2 + 42, 1, 3.35,3.35);
setScaleKey( spep_2 + 44, 1, 3.35,3.35);
setScaleKey( spep_2 + 46, 1, 3.34,3.34);
setScaleKey( spep_2 + 48, 1, 3.33,3.33);
setScaleKey( spep_2 + 56, 1, 3.33,3.33);

setRotateKey( spep_2 + 56, 1, 0 );

-- ** 次の準備 ** --
spep_3= spep_2 + 56; 
------------------------------------------------------
--斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
cut = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, cut, 0, 0, 0 );
setEffMoveKey( spep_3 + 36, cut, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, cut, -1.0, 1.0 );
setEffScaleKey( spep_3 + 36, cut, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cut, 0 );
setEffRotateKey( spep_3 + 36, cut, 0 );
setEffAlphaKey( spep_3 + 0, cut, 255 );
setEffAlphaKey( spep_3 + 34, cut, 255 );
setEffAlphaKey( spep_3 + 35, cut, 255 );
setEffAlphaKey( spep_3 + 36, cut, 0 );

--SE
--斬る
SE008 = playSeVer2( spep_3 + 0, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_3 + 4, 1142, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_3 + 8, 1032, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 8, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 8, SE011, 53 );
SE012 = playSeVer2( spep_3 + 12, 1032, "", 0, 0, 0, -1);
setPitch( spep_3 + 12, SE012, -300 );
setTimeStretch( SE012, 0.8, 30, 4 );

--エネルギー溜まる
SE013 = playSeVer2( spep_3 + 26, 1179, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 30, 1147, "",spep_3 + 36 + 84, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 30, SE014, 60 );
SE015 = playSeVer2( spep_3 + 30, 1271, "",spep_3 + 36 + 84, 0, 8, 0.5);
setSeVolumeByWorkId( spep_3 + 30, SE015, 142 );

-- ** 次の準備 ** --
spep_4= spep_3 + 36; 
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 140, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 140, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 140, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 140, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 140, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 140, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 140, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 140, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 62, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );

b=-40;

setMoveKey( spep_4 + 0, 1, -150.4, 121+b , 0 );
setMoveKey( spep_4 + 2, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 4, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 6, 1, -150.4, 121+b , 0 );
setMoveKey( spep_4 + 8, 1, -150.4, 121+b , 0 );
setMoveKey( spep_4 + 10, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 12, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 14, 1, -150.3, 121.1+b , 0 );
setMoveKey( spep_4 + 16, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 18, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 20, 1, -150.4, 121+b , 0 );
setMoveKey( spep_4 + 22, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 24, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 26, 1, -150.4, 121+b , 0 );
setMoveKey( spep_4 + 28, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 30, 1, -150.3, 121.1+b , 0 );
setMoveKey( spep_4 + 32, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 58, 1, -150.3, 121+b , 0 );
setMoveKey( spep_4 + 60, 1, -147.3, 127+b , 0 );
setMoveKey( spep_4 + 62, 1, -144.3, 133+b , 0 );

setScaleKey( spep_4 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 62, 1, 1.3, 1.3 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 0.3 );
setRotateKey( spep_4 + 4, 1, 0.6 );
setRotateKey( spep_4 + 6, 1, 0.9 );
setRotateKey( spep_4 + 8, 1, 1.3 );
setRotateKey( spep_4 + 10, 1, 1.6 );
setRotateKey( spep_4 + 12, 1, 1.9 );
setRotateKey( spep_4 + 14, 1, 2.2 );
setRotateKey( spep_4 + 16, 1, 2.5 );
setRotateKey( spep_4 + 18, 1, 2.8 );
setRotateKey( spep_4 + 20, 1, 3.1 );
setRotateKey( spep_4 + 22, 1, 3.4 );
setRotateKey( spep_4 + 24, 1, 3.8 );
setRotateKey( spep_4 + 26, 1, 4.1 );
setRotateKey( spep_4 + 28, 1, 4.4 );
setRotateKey( spep_4 + 30, 1, 4.7 );
setRotateKey( spep_4 + 32, 1, 5 );
setRotateKey( spep_4 + 34, 1, 5.3 );
setRotateKey( spep_4 + 36, 1, 5.6 );
setRotateKey( spep_4 + 38, 1, 5.9 );
setRotateKey( spep_4 + 40, 1, 6.3 );
setRotateKey( spep_4 + 42, 1, 6.6 );
setRotateKey( spep_4 + 44, 1, 6.9 );
setRotateKey( spep_4 + 46, 1, 7.2 );
setRotateKey( spep_4 + 48, 1, 7.5 );
setRotateKey( spep_4 + 50, 1, 7.8 );
setRotateKey( spep_4 + 52, 1, 8.1 );
setRotateKey( spep_4 + 54, 1, 8.4 );
setRotateKey( spep_4 + 56, 1, 8.8 );
setRotateKey( spep_4 + 58, 1, 9.1 );
setRotateKey( spep_4 + 60, 1, 9.4 );
setRotateKey( spep_4 + 62, 1, 9.7 );

--SE
--エネルギー溜まる
SE016 = playSeVer2( spep_4 + 12, 1311, "",spep_4 + 84, 0, 8, -1);

--爆発
SE017 = playSeVer2( spep_4 + 60, 1024, "", 0, 0, 0, -1);	

--剣しまう
SE018 = playSeVer2( spep_4 + 60, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 60, SE018, 133 );

--終わり
dealDamage(spep_4+0);
endPhase( spep_4 + 130 );
end