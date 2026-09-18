--1021390:ベジータ(GT)(大猿)_ファイナルシャインアタック
--sp_effect_a1_00261
--sp2101

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
SP_01=	156301	;--	カメラTU→構える→気弾を溜める
SP_02=	156302	;--	空に向かって発射
SP_03=	156303	;--	着弾(エフェクト)
SP_04=	156304	;--	着弾(背景)
SP_05=	156313	;--	爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.8);


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



kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- カメラTU→構える→気弾を溜める(140F)
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 140, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 140, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 140, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 50,  906, 88, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 50, shuchusen1, 88, 20 );
setEffMoveKey( spep_0-3 + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 138, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 50, shuchusen1, 1.06, 1.06 );
setEffScaleKey( spep_0-3 + 138, shuchusen1, 1.06, 1.06 );

setEffRotateKey( spep_0-3 + 50, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 138, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 50, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 138, shuchusen1, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 30, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 211.5, -33.8 , 0 );
setMoveKey( spep_0 + 2, 1, 211.5, -33.7 , 0 );
setMoveKey( spep_0 + 14, 1, 211.5, -33.7 , 0 );
setMoveKey( spep_0 + 16, 1, 336.3, -73.9 , 0 );
setMoveKey( spep_0 + 18, 1, 461.1, -114 , 0 );
setMoveKey( spep_0 + 20, 1, 585.9, -154.1 , 0 );
setMoveKey( spep_0 + 22, 1, 710.7, -194.3 , 0 );
setMoveKey( spep_0 + 24, 1, 835.4, -234.4 , 0 );
setMoveKey( spep_0 + 26, 1, 960.2, -274.5 , 0 );
setMoveKey( spep_0 + 28, 1, 1085, -314.6 , 0 );
setMoveKey( spep_0 + 30, 1, 1209.7, -354.8 , 0 );

setScaleKey( spep_0 + 0, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 1, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 2, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 3, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 4, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 5, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 14, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 16, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 18, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 20, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 22, 1, 5.15, 5.15 );
setScaleKey( spep_0 + 24, 1, 5.9, 5.9 );
setScaleKey( spep_0 + 26, 1, 6.65, 6.65 );
setScaleKey( spep_0 + 28, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 30, 1, 8.15, 8.15 );

setRotateKey( spep_0 + 0, 1, 11 );
setRotateKey( spep_0 + 1, 1, 11 );
setRotateKey( spep_0 + 2, 1, 11 );
setRotateKey( spep_0 + 3, 1, 11 );
setRotateKey( spep_0 + 4, 1, 11 );
setRotateKey( spep_0 + 30, 1, 11 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+42  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+42  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +54, 190006, 72, 0x102, -1, 0, 140, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +54,  ctgogo,  140,  510);
setEffMoveKey(  spep_0 +122,  ctgogo,  140,  510);

setEffAlphaKey( spep_0 +54, ctgogo, 0 );
setEffAlphaKey( spep_0 + 55, ctgogo, 255 );
setEffAlphaKey( spep_0 + 56, ctgogo, 255 );
setEffAlphaKey( spep_0 + 116, ctgogo, 255 );
setEffAlphaKey( spep_0 + 118, ctgogo, 191 );
setEffAlphaKey( spep_0 + 120, ctgogo, 154 );
setEffAlphaKey( spep_0 + 122, ctgogo, 64 );

setEffRotateKey(  spep_0 +54,  ctgogo,  0);
setEffRotateKey(  spep_0 +122,  ctgogo,  0);

setEffScaleKey(  spep_0 +54,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +112,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +122,  ctgogo, 1.07, 1.07);

--SE
--手を広げる
SE001 = playSe( spep_0 + 14, 44 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 120 );
setPitch( spep_0 + 14, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );
SE002 = playSe( spep_0 + 24, 1003 );

--手を前に出す
SE003 = playSe( spep_0 + 48, 1233 );
SE005 = playSe( spep_0 + 60, 1006 )
setSeVolumeByWorkId( spep_0 + 60, SE005, 89 );

--顔カットイン
SE004 = playSe( spep_0 + 54, 1018 );

--気弾溜め
SE006 = playSe( spep_0 + 64, 1276 );
SE007 = playSe( spep_0 + 64, 1144 );
setSeVolumeByWorkId( spep_0 + 64, SE007, 69 );
setPitch( spep_0 + 64, SE007, 200 );
setTimeStretch( SE007, 1.13, 10, 1 );
SE008 = playSe( spep_0 + 70, 1037 );
setSeVolumeByWorkId( spep_0 + 70, SE008, 59 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+140;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1, SE_05);
speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1, SE_05);
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

--気弾溜め
stopSe( spep_1 + 2, SE006, 0 );
stopSe( spep_1 + 2, SE007, 0 );
stopSe( spep_1 + 2, SE008, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 空に向かって発射(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 76, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 76, beam, 255 );
setEffAlphaKey( spep_2 + 77, beam, 0 );
setEffAlphaKey( spep_2 + 78, beam, 0 );

--SE
--気弾発射
SE010 = playSe( spep_2 + 10, 1146 );
SE011 = playSe( spep_2 + 10, 1027 );
setSeVolumeByWorkId( spep_2 + 10, SE011, 47 );
SE012 = playSe( spep_2 + 10, 1177 );
setSeVolumeByWorkId( spep_2 + 10, SE012, 63 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );

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
spep_3=spep_2+76;
------------------------------------------------------
-- 着弾(64F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 64, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 64, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 62, hit_f, 255 );
setEffAlphaKey( spep_3 + 63, hit_f, 255 );
setEffAlphaKey( spep_3 + 64, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 64, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 64, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 62, hit_b, 255 );
setEffAlphaKey( spep_3 + 63, hit_b, 255 );
setEffAlphaKey( spep_3 + 64, hit_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 14, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, 31.2, 18.8 , 0 );
setMoveKey( spep_3 + 2, 1, 56.9, 53.5 , 0 );
setMoveKey( spep_3 + 4, 1, 82.8, 88.2 , 0 );
setMoveKey( spep_3 + 6, 1, 108.5, 123 , 0 );
setMoveKey( spep_3 + 8, 1, 134.2, 157.7 , 0 );
setMoveKey( spep_3 + 10, 1, 152, 169.1 , 0 );
setMoveKey( spep_3 + 12, 1, 131.6, 159.5 , 0 );
setMoveKey( spep_3 + 14, 1, 145.4, 157.3 , 0 );

setScaleKey( spep_3 + 0, 1, 1.39, 1.37 );
setScaleKey( spep_3 + 2, 1, 1.23, 1.21 );
setScaleKey( spep_3 + 4, 1, 1.07, 1.05 );
setScaleKey( spep_3 + 6, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 8, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 12, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 14, 1, 0.73, 0.73 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 14, 1, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 8,  10012, 58, 0x100, -1, 0, 35.4, 260.1 );
setEffShake( spep_3-3 + 8, ctzuo, 58, 10 );
setEffMoveKey( spep_3-3 + 8, ctzuo, 35.4, 260.1 , 0 );
setEffMoveKey( spep_3-3 + 10, ctzuo, 17.4, 289 , 0 );
setEffMoveKey( spep_3-3 + 12, ctzuo, -21.7, 319.1 , 0 );
setEffMoveKey( spep_3-3 + 14, ctzuo, -32.1, 355.7 , 0 );
setEffMoveKey( spep_3-3 + 16, ctzuo, -75.3, 395.3 , 0 );
setEffMoveKey( spep_3-3 + 18, ctzuo, -55.8, 395 , 0 );
setEffMoveKey( spep_3-3 + 20, ctzuo, -76.6, 395.5 , 0 );
setEffMoveKey( spep_3-3 + 22, ctzuo, -57, 395.2 , 0 );
setEffMoveKey( spep_3-3 + 24, ctzuo, -77.9, 395.7 , 0 );
setEffMoveKey( spep_3-3 + 26, ctzuo, -58.2, 395.4 , 0 );
setEffMoveKey( spep_3-3 + 28, ctzuo, -79.1, 395.8 , 0 );
setEffMoveKey( spep_3-3 + 30, ctzuo, -59.3, 395.5 , 0 );
setEffMoveKey( spep_3-3 + 32, ctzuo, -80.4, 396 , 0 );
setEffMoveKey( spep_3-3 + 34, ctzuo, -60.5, 395.7 , 0 );
setEffMoveKey( spep_3-3 + 36, ctzuo, -81.7, 396.2 , 0 );
setEffMoveKey( spep_3-3 + 38, ctzuo, -61.7, 395.9 , 0 );
setEffMoveKey( spep_3-3 + 40, ctzuo, -82.9, 396.3 , 0 );
setEffMoveKey( spep_3-3 + 42, ctzuo, -62.9, 396.1 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzuo, -84.2, 396.5 , 0 );
setEffMoveKey( spep_3-3 + 46, ctzuo, -64, 396.2 , 0 );
setEffMoveKey( spep_3-3 + 48, ctzuo, -85.5, 396.7 , 0 );
setEffMoveKey( spep_3-3 + 50, ctzuo, -65.2, 396.4 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzuo, -86.7, 396.9 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzuo, -66.4, 396.6 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzuo, -88, 397 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzuo, -67.5, 396.8 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzuo, -68.1, 396.8 , 0 );
setEffMoveKey( spep_3-3 + 62, ctzuo, -166.1, 422.8 , 0 );
setEffMoveKey( spep_3-3 + 64, ctzuo, -207.4, 447.8 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzuo, -319.8, 474 , 0 );

setEffScaleKey( spep_3-3 + 8, ctzuo, 0.95, 0.95 );
setEffScaleKey( spep_3-3 + 10, ctzuo, 1.31, 1.31 );
setEffScaleKey( spep_3-3 + 12, ctzuo, 1.68, 1.68 );
setEffScaleKey( spep_3-3 + 14, ctzuo, 2.04, 2.04 );
setEffScaleKey( spep_3-3 + 16, ctzuo, 2.41, 2.41 );
setEffScaleKey( spep_3-3 + 18, ctzuo, 2.41, 2.41 );
setEffScaleKey( spep_3-3 + 20, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_3-3 + 22, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_3-3 + 24, ctzuo, 2.43, 2.43 );
setEffScaleKey( spep_3-3 + 26, ctzuo, 2.43, 2.43 );
setEffScaleKey( spep_3-3 + 28, ctzuo, 2.44, 2.44 );
setEffScaleKey( spep_3-3 + 30, ctzuo, 2.44, 2.44 );
setEffScaleKey( spep_3-3 + 32, ctzuo, 2.45, 2.45 );
setEffScaleKey( spep_3-3 + 34, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_3-3 + 36, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_3-3 + 38, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_3-3 + 40, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_3-3 + 42, ctzuo, 2.48, 2.48 );
setEffScaleKey( spep_3-3 + 44, ctzuo, 2.48, 2.48 );
setEffScaleKey( spep_3-3 + 46, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_3-3 + 48, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_3-3 + 50, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_3-3 + 52, ctzuo, 2.51, 2.51 );
setEffScaleKey( spep_3-3 + 54, ctzuo, 2.51, 2.51 );
setEffScaleKey( spep_3-3 + 56, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_3-3 + 58, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_3-3 + 60, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_3-3 + 62, ctzuo, 3.39, 3.39 );
setEffScaleKey( spep_3-3 + 64, ctzuo, 4.25, 4.25 );
setEffScaleKey( spep_3-3 + 66, ctzuo, 5.11, 5.11 );

setEffRotateKey( spep_3-3 + 8, ctzuo, -30.1 );
setEffRotateKey( spep_3-3 + 10, ctzuo, -27.1 );
setEffRotateKey( spep_3-3 + 12, ctzuo, -24.1 );
setEffRotateKey( spep_3-3 + 14, ctzuo, -21.1 );
setEffRotateKey( spep_3-3 + 16, ctzuo, -18.1 );
setEffRotateKey( spep_3-3 + 30, ctzuo, -18.1 );
setEffRotateKey( spep_3-3 + 32, ctzuo, -18.2 );

setEffAlphaKey( spep_3-3 + 8, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 58, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 60, ctzuo, 191 );
setEffAlphaKey( spep_3-3 + 62, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 64, ctzuo, 64 );
setEffAlphaKey( spep_3-1 + 66, ctzuo, 0 );

--SE
--敵重なる
SE013 = playSe( spep_3 + 14, 1021 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 66, 0,  0, 0, 0, 255 ); --くろ 背景

spep_4=spep_3+64;
------------------------------------------------------
-- ガ(98F)
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffectLife( spep_4 + 0, SP_05,110, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 100, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga, 0 );
setEffRotateKey( spep_4 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_4 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_4 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_4 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_4 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_4 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_4 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_4 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_4 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_4 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_4 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

--SE
playSe( spep_4 + 0, 1023 );--爆発
playSe( spep_4 + 14, 1054 );--ガッ

--気弾発射
stopSe( spep_4 + 26, SE010, 0 )
stopSe( spep_4 + 26, SE012, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 98 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- カメラTU→構える→気弾を溜める(140F)
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 140, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 140, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 140, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 140, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 50,  906, 88, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 50, shuchusen1, 88, 20 );
setEffMoveKey( spep_0-3 + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 138, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 50, shuchusen1, 1.06, 1.06 );
setEffScaleKey( spep_0-3 + 138, shuchusen1, 1.06, 1.06 );

setEffRotateKey( spep_0-3 + 50, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 138, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 50, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 138, shuchusen1, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 30, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 211.5, -33.8 , 0 );
setMoveKey( spep_0 + 2, 1, 211.5, -33.7 , 0 );
setMoveKey( spep_0 + 14, 1, 211.5, -33.7 , 0 );
setMoveKey( spep_0 + 16, 1, 336.3, -73.9 , 0 );
setMoveKey( spep_0 + 18, 1, 461.1, -114 , 0 );
setMoveKey( spep_0 + 20, 1, 585.9, -154.1 , 0 );
setMoveKey( spep_0 + 22, 1, 710.7, -194.3 , 0 );
setMoveKey( spep_0 + 24, 1, 835.4, -234.4 , 0 );
setMoveKey( spep_0 + 26, 1, 960.2, -274.5 , 0 );
setMoveKey( spep_0 + 28, 1, 1085, -314.6 , 0 );
setMoveKey( spep_0 + 30, 1, 1209.7, -354.8 , 0 );

setScaleKey( spep_0 + 0, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 1, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 2, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 3, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 4, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 5, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 14, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 16, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 18, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 20, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 22, 1, 5.15, 5.15 );
setScaleKey( spep_0 + 24, 1, 5.9, 5.9 );
setScaleKey( spep_0 + 26, 1, 6.65, 6.65 );
setScaleKey( spep_0 + 28, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 30, 1, 8.15, 8.15 );

setRotateKey( spep_0 + 0, 1, 11 );
setRotateKey( spep_0 + 1, 1, 11 );
setRotateKey( spep_0 + 2, 1, 11 );
setRotateKey( spep_0 + 3, 1, 11 );
setRotateKey( spep_0 + 4, 1, 11 );
setRotateKey( spep_0 + 30, 1, 11 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+42  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+42  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +54, 190006, 72, 0x102, -1, 0, 140, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +54,  ctgogo,  140,  510);
setEffMoveKey(  spep_0 +122,  ctgogo,  140,  510);

setEffAlphaKey( spep_0 +54, ctgogo, 0 );
setEffAlphaKey( spep_0 + 55, ctgogo, 255 );
setEffAlphaKey( spep_0 + 56, ctgogo, 255 );
setEffAlphaKey( spep_0 + 116, ctgogo, 255 );
setEffAlphaKey( spep_0 + 118, ctgogo, 191 );
setEffAlphaKey( spep_0 + 120, ctgogo, 154 );
setEffAlphaKey( spep_0 + 122, ctgogo, 64 );

setEffRotateKey(  spep_0 +54,  ctgogo,  0);
setEffRotateKey(  spep_0 +122,  ctgogo,  0);

setEffScaleKey(  spep_0 +54,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +112,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +122,  ctgogo, -1.07, 1.07);

--SE
--手を広げる
SE001 = playSe( spep_0 + 14, 44 );
setSeVolumeByWorkId( spep_0 + 14, SE001, 120 );
setPitch( spep_0 + 14, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );
SE002 = playSe( spep_0 + 24, 1003 );

--手を前に出す
SE003 = playSe( spep_0 + 48, 1233 );
SE005 = playSe( spep_0 + 60, 1006 )
setSeVolumeByWorkId( spep_0 + 60, SE005, 89 );

--顔カットイン
SE004 = playSe( spep_0 + 54, 1018 );

--気弾溜め
SE006 = playSe( spep_0 + 64, 1276 );
SE007 = playSe( spep_0 + 64, 1144 );
setSeVolumeByWorkId( spep_0 + 64, SE007, 69 );
setPitch( spep_0 + 64, SE007, 200 );
setTimeStretch( SE007, 1.13, 10, 1 );
SE008 = playSe( spep_0 + 70, 1037 );
setSeVolumeByWorkId( spep_0 + 70, SE008, 59 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 132, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+140;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
playSe( spep_1 + 0, SE_05 );

--気弾溜め
stopSe( spep_1 + 2, SE006, 0 );
stopSe( spep_1 + 2, SE007, 0 );
stopSe( spep_1 + 2, SE008, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 空に向かって発射(76F)
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 76, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 76, beam, 255 );
setEffAlphaKey( spep_2 + 77, beam, 0 );
setEffAlphaKey( spep_2 + 78, beam, 0 );

--SE
--気弾発射
SE010 = playSe( spep_2 + 10, 1146 );
SE011 = playSe( spep_2 + 10, 1027 );
setSeVolumeByWorkId( spep_2 + 10, SE011, 47 );
SE012 = playSe( spep_2 + 10, 1177 );
setSeVolumeByWorkId( spep_2 + 10, SE012, 63 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );

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
spep_3=spep_2+76;
------------------------------------------------------
-- 着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 64, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 64, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 62, hit_f, 255 );
setEffAlphaKey( spep_3 + 63, hit_f, 255 );
setEffAlphaKey( spep_3 + 64, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 64, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 64, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 64, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 62, hit_b, 255 );
setEffAlphaKey( spep_3 + 63, hit_b, 255 );
setEffAlphaKey( spep_3 + 64, hit_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 14, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 + 0, 1, 31.2, 18.8 , 0 );
setMoveKey( spep_3 + 2, 1, 56.9, 53.5 , 0 );
setMoveKey( spep_3 + 4, 1, 82.8, 88.2 , 0 );
setMoveKey( spep_3 + 6, 1, 108.5, 123 , 0 );
setMoveKey( spep_3 + 8, 1, 134.2, 157.7 , 0 );
setMoveKey( spep_3 + 10, 1, 152, 169.1 , 0 );
setMoveKey( spep_3 + 12, 1, 131.6, 159.5 , 0 );
setMoveKey( spep_3 + 14, 1, 145.4, 157.3 , 0 );

setScaleKey( spep_3 + 0, 1, 1.39, 1.37 );
setScaleKey( spep_3 + 2, 1, 1.23, 1.21 );
setScaleKey( spep_3 + 4, 1, 1.07, 1.05 );
setScaleKey( spep_3 + 6, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 8, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 12, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 14, 1, 0.73, 0.73 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 14, 1, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 8,  10012, 58, 0x100, -1, 0, 35.4, 260.1 );
setEffShake( spep_3-3 + 8, ctzuo, 58, 10 );
setEffMoveKey( spep_3-3 + 8, ctzuo, 35.4, 260.1 , 0 );
setEffMoveKey( spep_3-3 + 10, ctzuo, 17.4, 289 , 0 );
setEffMoveKey( spep_3-3 + 12, ctzuo, -21.7, 319.1 , 0 );
setEffMoveKey( spep_3-3 + 14, ctzuo, -32.1, 355.7 , 0 );
setEffMoveKey( spep_3-3 + 16, ctzuo, -75.3, 395.3 , 0 );
setEffMoveKey( spep_3-3 + 18, ctzuo, -55.8, 395 , 0 );
setEffMoveKey( spep_3-3 + 20, ctzuo, -76.6, 395.5 , 0 );
setEffMoveKey( spep_3-3 + 22, ctzuo, -57, 395.2 , 0 );
setEffMoveKey( spep_3-3 + 24, ctzuo, -77.9, 395.7 , 0 );
setEffMoveKey( spep_3-3 + 26, ctzuo, -58.2, 395.4 , 0 );
setEffMoveKey( spep_3-3 + 28, ctzuo, -79.1, 395.8 , 0 );
setEffMoveKey( spep_3-3 + 30, ctzuo, -59.3, 395.5 , 0 );
setEffMoveKey( spep_3-3 + 32, ctzuo, -80.4, 396 , 0 );
setEffMoveKey( spep_3-3 + 34, ctzuo, -60.5, 395.7 , 0 );
setEffMoveKey( spep_3-3 + 36, ctzuo, -81.7, 396.2 , 0 );
setEffMoveKey( spep_3-3 + 38, ctzuo, -61.7, 395.9 , 0 );
setEffMoveKey( spep_3-3 + 40, ctzuo, -82.9, 396.3 , 0 );
setEffMoveKey( spep_3-3 + 42, ctzuo, -62.9, 396.1 , 0 );
setEffMoveKey( spep_3-3 + 44, ctzuo, -84.2, 396.5 , 0 );
setEffMoveKey( spep_3-3 + 46, ctzuo, -64, 396.2 , 0 );
setEffMoveKey( spep_3-3 + 48, ctzuo, -85.5, 396.7 , 0 );
setEffMoveKey( spep_3-3 + 50, ctzuo, -65.2, 396.4 , 0 );
setEffMoveKey( spep_3-3 + 52, ctzuo, -86.7, 396.9 , 0 );
setEffMoveKey( spep_3-3 + 54, ctzuo, -66.4, 396.6 , 0 );
setEffMoveKey( spep_3-3 + 56, ctzuo, -88, 397 , 0 );
setEffMoveKey( spep_3-3 + 58, ctzuo, -67.5, 396.8 , 0 );
setEffMoveKey( spep_3-3 + 60, ctzuo, -68.1, 396.8 , 0 );
setEffMoveKey( spep_3-3 + 62, ctzuo, -166.1, 422.8 , 0 );
setEffMoveKey( spep_3-3 + 64, ctzuo, -207.4, 447.8 , 0 );
setEffMoveKey( spep_3-3 + 66, ctzuo, -319.8, 474 , 0 );

setEffScaleKey( spep_3-3 + 8, ctzuo, 0.95, 0.95 );
setEffScaleKey( spep_3-3 + 10, ctzuo, 1.31, 1.31 );
setEffScaleKey( spep_3-3 + 12, ctzuo, 1.68, 1.68 );
setEffScaleKey( spep_3-3 + 14, ctzuo, 2.04, 2.04 );
setEffScaleKey( spep_3-3 + 16, ctzuo, 2.41, 2.41 );
setEffScaleKey( spep_3-3 + 18, ctzuo, 2.41, 2.41 );
setEffScaleKey( spep_3-3 + 20, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_3-3 + 22, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_3-3 + 24, ctzuo, 2.43, 2.43 );
setEffScaleKey( spep_3-3 + 26, ctzuo, 2.43, 2.43 );
setEffScaleKey( spep_3-3 + 28, ctzuo, 2.44, 2.44 );
setEffScaleKey( spep_3-3 + 30, ctzuo, 2.44, 2.44 );
setEffScaleKey( spep_3-3 + 32, ctzuo, 2.45, 2.45 );
setEffScaleKey( spep_3-3 + 34, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_3-3 + 36, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_3-3 + 38, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_3-3 + 40, ctzuo, 2.47, 2.47 );
setEffScaleKey( spep_3-3 + 42, ctzuo, 2.48, 2.48 );
setEffScaleKey( spep_3-3 + 44, ctzuo, 2.48, 2.48 );
setEffScaleKey( spep_3-3 + 46, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_3-3 + 48, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_3-3 + 50, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_3-3 + 52, ctzuo, 2.51, 2.51 );
setEffScaleKey( spep_3-3 + 54, ctzuo, 2.51, 2.51 );
setEffScaleKey( spep_3-3 + 56, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_3-3 + 58, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_3-3 + 60, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_3-3 + 62, ctzuo, 3.39, 3.39 );
setEffScaleKey( spep_3-3 + 64, ctzuo, 4.25, 4.25 );
setEffScaleKey( spep_3-3 + 66, ctzuo, 5.11, 5.11 );

setEffRotateKey( spep_3-3 + 8, ctzuo, -30.1 );
setEffRotateKey( spep_3-3 + 10, ctzuo, -27.1 );
setEffRotateKey( spep_3-3 + 12, ctzuo, -24.1 );
setEffRotateKey( spep_3-3 + 14, ctzuo, -21.1 );
setEffRotateKey( spep_3-3 + 16, ctzuo, -18.1 );
setEffRotateKey( spep_3-3 + 30, ctzuo, -18.1 );
setEffRotateKey( spep_3-3 + 32, ctzuo, -18.2 );

setEffAlphaKey( spep_3-3 + 8, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 58, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 60, ctzuo, 191 );
setEffAlphaKey( spep_3-3 + 62, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 64, ctzuo, 64 );
setEffAlphaKey( spep_3-1 + 66, ctzuo, 0 );

--SE
--敵重なる
SE013 = playSe( spep_3 + 14, 1021 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 66, 0,  0, 0, 0, 255 ); --くろ 背景

spep_4=spep_3+64;
------------------------------------------------------
-- ガ(98F)
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffectLife( spep_4 + 0, SP_05,110, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 100, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga, 0 );
setEffRotateKey( spep_4 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_4 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_4 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_4 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_4 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_4 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_4 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_4 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_4 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_4 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_4 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

--SE
playSe( spep_4 + 0, 1023 );--爆発
playSe( spep_4 + 14, 1054 );--ガッ

--気弾発射
stopSe( spep_4 + 26, SE010, 0 )
stopSe( spep_4 + 26, SE012, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 98 );
end