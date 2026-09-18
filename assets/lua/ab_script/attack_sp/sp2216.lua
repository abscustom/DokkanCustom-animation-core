--1022340:桃白白_連振青竜刀
--sp_effect_b2_00044
--sp2216

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
SP_01= 157538 ;-- 構え
SP_02= 157539 ;-- ホイポイカプセルから剣を出す
SP_03= 157540 ;-- 突進
SP_04= 157541 ;-- エネミーを斬る：手前
SP_05= 157543 ;-- エネミーを斬る：奥
SP_06= 157544 ;-- 連続斬：手前
SP_07= 157546 ;-- 連続斬：奥
SP_08= 157547 ;-- 斬る→突進：手前
SP_09= 157549 ;-- 斬る→突進：奥
SP_10= 157551 ;-- 斬撃：手前
SP_11= 157553 ;-- 斬撃：奥

--エフェクト(敵)
SP_01x= 157538 ;-- 構え 
SP_02x= 157539 ;-- ホイポイカプセルから剣を出す 
SP_03x= 157540 ;-- 突進 
SP_04x= 157542 ;-- エネミーを斬る：手前 (敵)
SP_05x= 157543 ;-- エネミーを斬る：奥 
SP_06x= 157545 ;-- 連続斬：手前 (敵)
SP_07x= 157546 ;-- 連続斬：奥 
SP_08x= 157548 ;-- 斬る→突進：手前 (敵)
SP_09x= 157550 ;-- 斬る→突進：奥 (敵)
SP_10x= 157552 ;-- 斬撃：手前 (敵)
SP_11x= 157554 ;-- 斬撃：奥 (敵)

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
-- 構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
ready = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, ready, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, ready, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready, 0 );
setEffRotateKey( spep_0 + 96, ready, 0 );
setEffAlphaKey( spep_0 + 0, ready, 255 );
setEffAlphaKey( spep_0 + 96, ready, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0+1 + 14,  906, 80, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0+1 + 14, shuchusen1, 80, 20 );
setEffMoveKey( spep_0+1 + 14, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0+1 + 94, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0+1 + 14, shuchusen1, 1, 1 );
setEffScaleKey( spep_0+1 + 94, shuchusen1, 1, 1 );

setEffRotateKey( spep_0+1 + 14, shuchusen1, 180 );
setEffRotateKey( spep_0+1 + 94, shuchusen1, 180 );

setEffAlphaKey( spep_0+1 + 14, shuchusen1, 255 );
setEffAlphaKey( spep_0+1 + 94, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -100,  515);

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
--構える
SE001 = playSe( spep_0 + 8, 1233 );

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 88, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 96;
------------------------------------------------------
-- ホイポイカプセルから剣を出す
------------------------------------------------------
-- ** エフェクト等 ** --
kapsel = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kapsel, 0, 0, 0 );
setEffMoveKey( spep_1 + 240, kapsel, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kapsel, 1.0, 1.0 );
setEffScaleKey( spep_1 + 240, kapsel, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kapsel, 0 );
setEffRotateKey( spep_1 + 240, kapsel, 0 );
setEffAlphaKey( spep_1 + 0, kapsel, 255 );
setEffAlphaKey( spep_1 + 240, kapsel, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 128,  906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 128, shuchusen2, 10, 20 );
setEffMoveKey( spep_1-3 + 128, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 138, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 128, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_1-3 + 138, shuchusen2, 1.05, 1.05 );

setEffRotateKey( spep_1-3 + 128, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 138, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 128, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 138, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 224,  906, 14, 0x100, -1, 0, 0, -148.4 );
setEffShake( spep_1-3 + 224, shuchusen3, 6, 20 );
setEffMoveKey( spep_1-3 + 224, shuchusen3, 0, -148.4 , 0 );
setEffMoveKey( spep_1-3 + 238, shuchusen3, 0, -148.4 , 0 );

setEffScaleKey( spep_1-3 + 224, shuchusen3, 1.38, 1.28 );
setEffScaleKey( spep_1-3 + 238, shuchusen3, 1.38, 1.28 );

setEffRotateKey( spep_1-3 + 224, shuchusen3, 180 );
setEffRotateKey( spep_1-3 + 238, shuchusen3, 180 );

setEffAlphaKey( spep_1-3 + 224, shuchusen3, 255 );
setEffAlphaKey( spep_1-3 + 238, shuchusen3, 255 );

--SE
--カプセル投げる
SE003 = playSe( spep_1 + 34, 23 );
SE004 = playSe( spep_1 + 34, 27 );
SE005 = playSe( spep_1 + 34, 13 );
setSeVolumeByWorkId( spep_1 + 34, SE005, 58 );
setPitch( spep_1 + 34, SE005, -100 );
setTimeStretch( SE005, 0.93, 10, 1 );
setBandpassFilter( spep_1 + 34, SE005, 2000, 24000 );

--カプセル光る
SE007 = playSe( spep_1 + 98, 1307 );
stopSe( spep_1 + 128, SE007, 30 );

--カプセル爆発
SE008 = playSe( spep_1 + 126, 1014 );
SE009 = playSe( spep_1 + 126, 40 );
setSeVolumeByWorkId( spep_1 + 126, SE009, 55 );
SE010 = playSe( spep_1 + 130, 1291 );

--剣出現
SE006 = playSe( spep_1 + 144, 1177 );
setSeVolumeByWorkId( spep_1 + 144, SE006, 0 );
setSeVolumeByWorkId( spep_1 + 145, SE006, 4.3 );
setSeVolumeByWorkId( spep_1 + 146, SE006, 8.6 );
setSeVolumeByWorkId( spep_1 + 147, SE006, 12.9 );
setSeVolumeByWorkId( spep_1 + 148, SE006, 17.2 );
setSeVolumeByWorkId( spep_1 + 149, SE006, 21.5 );
setSeVolumeByWorkId( spep_1 + 150, SE006, 25.8 );
setSeVolumeByWorkId( spep_1 + 151, SE006, 30.1 );
setSeVolumeByWorkId( spep_1 + 152, SE006, 34.4 );
setSeVolumeByWorkId( spep_1 + 153, SE006, 38.7 );
setSeVolumeByWorkId( spep_1 + 154, SE006, 43 );
setSeVolumeByWorkId( spep_1 + 155, SE006, 47.3 );
setSeVolumeByWorkId( spep_1 + 156, SE006, 51.6 );
setSeVolumeByWorkId( spep_1 + 157, SE006, 55.9 );
setSeVolumeByWorkId( spep_1 + 158, SE006, 60.2 );
setSeVolumeByWorkId( spep_1 + 159, SE006, 64.5 );
setSeVolumeByWorkId( spep_1 + 160, SE006, 69 );
stopSe( spep_1 + 216, SE006, 20 );
setStartTimeMs( SE006,  1083 );
setPitch( spep_1 + 144, SE006, -600 );
setTimeStretch( SE006, 0.6, 10, 1 );

--剣握る
SE011 = playSe( spep_1 + 216, 1061 );
setSeVolumeByWorkId( spep_1 + 216, SE011, 66 );
stopSe( spep_1 + 232, SE011, 14 );
SE012 = playSe( spep_1 + 216, 1013 );

--白フェード
entryFade( spep_1 + 232, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 240, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2= spep_1 + 240;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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

-- ** 音 ** --
-- playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_3 + 68, rush, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_3 + 68, rush, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush, 0 );
setEffRotateKey( spep_3 + 68, rush, 0 );
setEffAlphaKey( spep_3 + 0, rush, 255 );
setEffAlphaKey( spep_3 + 66, rush, 255 );
setEffAlphaKey( spep_3 + 67, rush, 255 );
setEffAlphaKey( spep_3 + 68, rush, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 68, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen4, 68, 20 );
setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 68, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.05, 1.05 );
setEffScaleKey( spep_3 + 68, shuchusen4, 1.05, 1.05 );

setEffRotateKey( spep_3 + 0, shuchusen4, 180 );
setEffRotateKey( spep_3 + 68, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 68, shuchusen4, 255 );

--SE
--向かってくる
SE014 = playSe( spep_3 + 0, 1182 );
SE015 = playSe( spep_3 + 0, 1167 );
setSeVolumeByWorkId( spep_3 + 0, SE015, 49 );
SE016 = playSe( spep_3 + 0, 1278 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );

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
--SE
--向かってくる
stopSe( spep_3 + 60, SE016, 14 );

--振りかぶる
SE017 = playSe( spep_3 + 52, 1116 );
SE018 = playSe( spep_3 + 56, 1004 );


-- ** 次の準備 ** --
spep_4= spep_3 + 68;
------------------------------------------------------
-- エネミーを斬る
------------------------------------------------------
-- ** エフェクト等 ** --
slashing_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, slashing_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 84, slashing_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, slashing_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, slashing_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slashing_f, 0 );
setEffRotateKey( spep_4 + 84, slashing_f, 0 );
setEffAlphaKey( spep_4 + 0, slashing_f, 255 );
setEffAlphaKey( spep_4 + 83, slashing_f, 255 );
setEffAlphaKey( spep_4 + 84, slashing_f, 0 );

-- ** エフェクト等 ** --
slashing_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, slashing_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 84, slashing_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, slashing_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, slashing_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slashing_b, 0 );
setEffRotateKey( spep_4 + 84, slashing_b, 0 );
setEffAlphaKey( spep_4 + 0, slashing_b, 255 );
setEffAlphaKey( spep_4 + 83, slashing_b, 255 );
setEffAlphaKey( spep_4 + 84, slashing_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4-3 + 10, 1, 106 );
changeAnime( spep_4-3 + 36, 1, 108 );
changeAnime( spep_4-3 + 68, 1, 105 );

setMoveKey( spep_4 + 0, 1, 90, -90 , 0 );
setMoveKey( spep_4-3 + 9, 1, 90, -90 , 0 );
setMoveKey( spep_4-3 + 10, 1, 29.9, -49.9 , 0 );
setMoveKey( spep_4-3 + 12, 1, 19.9, -89.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 9.9, -129.9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 9.9, -89.9 , 0 );
setMoveKey( spep_4-3 + 18, 1, 9.9, -49.9 , 0 );
setMoveKey( spep_4-3 + 20, 1, 9.9, -54.9 , 0 );
setMoveKey( spep_4-3 + 22, 1, 9.9, -59.9 , 0 );
setMoveKey( spep_4-3 + 24, 1, 9.9, -64.9 , 0 );
setMoveKey( spep_4-3 + 26, 1, 9.9, -69.9 , 0 );
setMoveKey( spep_4-3 + 28, 1, 9.9, -74.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 9.9, -79.9 , 0 );
setMoveKey( spep_4-3 + 32, 1, 9.9, -84.9 , 0 );
setMoveKey( spep_4-3 + 35, 1, 9.9, -89.9 , 0 );
setMoveKey( spep_4-3 + 36, 1, 89.8, -89.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 99.8, -79.8 , 0 );
setMoveKey( spep_4-3 + 40, 1, 109.8, -69.8 , 0 );
setMoveKey( spep_4-3 + 42, 1, 99.8, -79.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 89.8, -89.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 91.6, -89.9 , 0 );
setMoveKey( spep_4-3 + 48, 1, 93.4, -89.9 , 0 );
setMoveKey( spep_4-3 + 50, 1, 95.3, -89.9 , 0 );
setMoveKey( spep_4-3 + 52, 1, 97.1, -89.9 , 0 );
setMoveKey( spep_4-3 + 54, 1, 98.9, -89.9 , 0 );
setMoveKey( spep_4-3 + 56, 1, 100.7, -89.8 , 0 );
setMoveKey( spep_4-3 + 58, 1, 102.5, -89.8 , 0 );
setMoveKey( spep_4-3 + 60, 1, 104.3, -89.8 , 0 );
setMoveKey( spep_4-3 + 62, 1, 106.2, -89.8 , 0 );
setMoveKey( spep_4-3 + 64, 1, 108, -89.8 , 0 );
setMoveKey( spep_4-3 + 67, 1, 109.8, -89.8 , 0 );
setMoveKey( spep_4-3 + 68, 1, -10.1, -9.9 , 0 );
setMoveKey( spep_4-3 + 70, 1, -10.1, 10.1 , 0 );
setMoveKey( spep_4-3 + 72, 1, -10.1, 30.1 , 0 );
setMoveKey( spep_4-3 + 74, 1, -0.1, 20.1 , 0 );
setMoveKey( spep_4-3 + 76, 1, 9.9, 10.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 6.5, 16.8 , 0 );
setMoveKey( spep_4-3 + 80, 1, 3.2, 23.4 , 0 );
setMoveKey( spep_4-3 + 82, 1, -0.1, 30.1 , 0 );
setMoveKey( spep_4-3 + 84, 1, -3.4, 36.8 , 0 );
setMoveKey( spep_4-3 + 86, 1, -6.8, 43.4 , 0 );

setScaleKey( spep_4 + 0, 1, 2.5, 2.5 );
--setScaleKey( spep_4-3 + 2, 1, 2.47, 2.47 );
setScaleKey( spep_4-3 + 4, 1, 2.45, 2.45 );
setScaleKey( spep_4-3 + 6, 1, 2.42, 2.42 );
setScaleKey( spep_4-3 + 9, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 10, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 12, 1, 2.35, 2.35 );
setScaleKey( spep_4-3 + 14, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 16, 1, 2.35, 2.35 );
setScaleKey( spep_4-3 + 18, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 20, 1, 2.37, 2.37 );
setScaleKey( spep_4-3 + 22, 1, 2.35, 2.35 );
setScaleKey( spep_4-3 + 24, 1, 2.32, 2.32 );
setScaleKey( spep_4-3 + 26, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 28, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 30, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 32, 1, 2.22, 2.22 );
setScaleKey( spep_4-3 + 35, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 36, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 38, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 40, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 42, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 44, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 46, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 48, 1, 2.28, 2.28 );
setScaleKey( spep_4-3 + 50, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 52, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 54, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 56, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 58, 1, 2.24, 2.24 );
setScaleKey( spep_4-3 + 60, 1, 2.23, 2.23 );
setScaleKey( spep_4-3 + 62, 1, 2.22, 2.22 );
setScaleKey( spep_4-3 + 64, 1, 2.21, 2.21 );
setScaleKey( spep_4-3 + 67, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 68, 1, 2, 2 );
setScaleKey( spep_4-3 + 70, 1, 1.95, 1.95 );
setScaleKey( spep_4-3 + 72, 1, 1.9, 1.9 );
setScaleKey( spep_4-3 + 74, 1, 1.95, 1.95 );
setScaleKey( spep_4-3 + 76, 1, 2, 2 );
setScaleKey( spep_4-3 + 78, 1, 1.98, 1.98 );
setScaleKey( spep_4-3 + 80, 1, 1.97, 1.97 );
setScaleKey( spep_4-3 + 82, 1, 1.95, 1.95 );
setScaleKey( spep_4-3 + 84, 1, 1.93, 1.93 );
setScaleKey( spep_4-3 + 86, 1, 1.92, 1.92 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 9, 1, 0 );
setRotateKey( spep_4-3 + 10, 1, -42.1 );
setRotateKey( spep_4-3 + 35, 1, -42.1 );
setRotateKey( spep_4-3 + 36, 1, 0 );
setRotateKey( spep_4-3 + 86, 1, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_4-3 + 10,  906, 10, 0x100, -1, 0, 0, -80 );
setEffShake( spep_4-3 + 10, shuchusen4, 6, 20 );
setEffMoveKey( spep_4-3 + 10, shuchusen4, 0, -80 , 0 );
setEffMoveKey( spep_4-3 + 20, shuchusen4, 0, -80 , 0 );

setEffScaleKey( spep_4-3 + 10, shuchusen4, 1.1, 1.2 );
setEffScaleKey( spep_4-3 + 20, shuchusen4, 1.1, 1.2 );

setEffRotateKey( spep_4-3 + 10, shuchusen4, 180 );
setEffRotateKey( spep_4-3 + 10, shuchusen4, 180 );

setEffAlphaKey( spep_4-3 + 10, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 10, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_4-3 + 36,  906, 10, 0x100, -1, 0, 0, -59.9 );
setEffShake( spep_4-3 + 36, shuchusen5, 10, 20 );
setEffMoveKey( spep_4-3 + 36, shuchusen5, 0, -59.9 , 0 );
setEffMoveKey( spep_4-3 + 46, shuchusen5, 0, -59.9 , 0 );

setEffScaleKey( spep_4-3 + 36, shuchusen5, 1.2, 1.15 );
setEffScaleKey( spep_4-3 + 46, shuchusen5, 1.2, 1.15 );

setEffRotateKey( spep_4-3 + 36, shuchusen5, 180 );
setEffRotateKey( spep_4-3 + 46, shuchusen5, 180 );

setEffAlphaKey( spep_4-3 + 36, shuchusen5, 255 );
setEffAlphaKey( spep_4-3 + 46, shuchusen5, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_4-3 + 68,  906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4-3 + 68, shuchusen6, 10, 20 );
setEffMoveKey( spep_4-3 + 68, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 78, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_4-3 + 68, shuchusen6, 1.1, 1.05 );
setEffScaleKey( spep_4-3 + 78, shuchusen6, 1.1, 1.05 );

setEffRotateKey( spep_4-3 + 68, shuchusen6, 180 );
setEffRotateKey( spep_4-3 + 78, shuchusen6, 180 );

setEffAlphaKey( spep_4-3 + 68, shuchusen6, 255 );
setEffAlphaKey( spep_4-3 + 78, shuchusen6, 255 );

--SE
--振りかぶる
stopSe( spep_4 + 6, SE017, 20 );

--斬る１
SE019 = playSe( spep_4 + 0, 1235 );
setSeVolumeByWorkId( spep_4 + 0, SE019, 52 );
stopSe( spep_4 + 32, SE019, 26 );
setPitch( spep_4 + 0, SE019, -200 );
setTimeStretch( SE019, 0.87, 10, 1 );
SE020 = playSe( spep_4 + 4, 1142 );
SE021 = playSe( spep_4 + 4, 1032 );

--斬る２
SE022 = playSe( spep_4 + 28, 1235 );
setSeVolumeByWorkId( spep_4 + 28, SE022, 56 );
stopSe( spep_4 + 58, SE022, 28 );
setPitch( spep_4 + 28, SE022, -200 );
setTimeStretch( SE022, 0.87, 10, 1 );
SE023 = playSe( spep_4 + 32, 1142 );
SE024 = playSe( spep_4 + 32, 1032 );

--斬る３
SE025 = playSe( spep_4 + 58, 1235 );
setSeVolumeByWorkId( spep_4 + 58, SE025, 54 );
setPitch( spep_4 + 58, SE025, -200 );
setTimeStretch( SE025, 0.87, 10, 1 );
SE026 = playSe( spep_4 + 62, 1142 );
SE027 = playSe( spep_4 + 62, 1032 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 86-2;
------------------------------------------------------
-- 連続斬
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, rush_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, rush_f, 0 );
setEffRotateKey( spep_5 + 84, rush_f, 0 );
setEffAlphaKey( spep_5 + 0, rush_f, 255 );
setEffAlphaKey( spep_5 + 83, rush_f, 255 );
setEffAlphaKey( spep_5 + 84, rush_f, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, rush_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, rush_b, 0 );
setEffRotateKey( spep_5 + 84, rush_b, 0 );
setEffAlphaKey( spep_5 + 0, rush_b, 255 );
setEffAlphaKey( spep_5 + 83, rush_b, 255 );
setEffAlphaKey( spep_5 + 84, rush_b, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_5-3 + 36,  906, 10, 0x100, -1, 0, 200.1, 40 );
setEffShake( spep_5-3 +  36, shuchusen6, 10, 20 );
setEffMoveKey( spep_5-3 + 36, shuchusen6, 200.1, 40 , 0 );
setEffMoveKey( spep_5-3 + 46, shuchusen6, 200.1, 40 , 0 );

setEffScaleKey( spep_5-3 + 36, shuchusen6, 1.55, 1.1 );
setEffScaleKey( spep_5-3 + 46, shuchusen6, 1.55, 1.1 );

setEffRotateKey( spep_5-3 + 36, shuchusen6, 180 );
setEffRotateKey( spep_5-3 + 46, shuchusen6, 180 );

setEffAlphaKey( spep_5-3 + 36, shuchusen6, 255 );
setEffAlphaKey( spep_5-3 + 46, shuchusen6, 255 );

--集中線
shuchusen7 = entryEffectLife( spep_5-3 + 68,  906, 10, 0x100, -1, 0, 150.2, 0 );
setEffShake( spep_5-3 +  68, shuchusen7, 10, 20 );
setEffMoveKey( spep_5-3 + 68, shuchusen7, 150.2, 0 , 0 );
setEffMoveKey( spep_5-3 + 78, shuchusen7, 150.2, 0 , 0 );

setEffScaleKey( spep_5-3 + 68, shuchusen7, 1.4, 1.1 );
setEffScaleKey( spep_5-3 + 78, shuchusen7, 1.4, 1.1 );

setEffRotateKey( spep_5-3 + 68, shuchusen7, 180 );
setEffRotateKey( spep_5-3 + 78, shuchusen7, 180 );

setEffAlphaKey( spep_5-3 + 68, shuchusen7, 255 );
setEffAlphaKey( spep_5-3 + 78, shuchusen7, 255 );

--敵の動き
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 36, 1, 108 );
changeAnime( spep_5-3 + 70, 1, 106 );

setMoveKey( spep_5 + 0, 1, 53.9, -80.9 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 63.4, -77.8 , 0 );
setMoveKey( spep_5-3 + 4, 1, 73, -74.6 , 0 );
setMoveKey( spep_5-3 + 6, 1, 82.5, -71.4 , 0 );
setMoveKey( spep_5-3 + 8, 1, 92, -68.3 , 0 );
setMoveKey( spep_5-3 + 10, 1, 101.6, -65.1 , 0 );
setMoveKey( spep_5-3 + 12, 1, 111.1, -61.9 , 0 );
setMoveKey( spep_5-3 + 14, 1, 120.6, -58.7 , 0 );
setMoveKey( spep_5-3 + 16, 1, 130.2, -55.6 , 0 );
setMoveKey( spep_5-3 + 18, 1, 139.7, -52.4 , 0 );
setMoveKey( spep_5-3 + 20, 1, 149.3, -49.2 , 0 );
setMoveKey( spep_5-3 + 22, 1, 158.8, -46 , 0 );
setMoveKey( spep_5-3 + 24, 1, 168.3, -42.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 177.9, -39.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 187.4, -36.5 , 0 );
setMoveKey( spep_5-3 + 30, 1, 196.9, -33.3 , 0 );
setMoveKey( spep_5-3 + 32, 1, 206.5, -30.2 , 0 );
setMoveKey( spep_5-3 + 35, 1, 216, -27 , 0 );
setMoveKey( spep_5-3 + 36, 1, 243, 33 , 0 );
setMoveKey( spep_5-3 + 38, 1, 317.2, 70 , 0 );
setMoveKey( spep_5-3 + 40, 1, 291.5, 47 , 0 );
setMoveKey( spep_5-3 + 42, 1, 301.8, 50.4 , 0 );
setMoveKey( spep_5-3 + 44, 1, 311, 53.5 , 0 );
setMoveKey( spep_5-3 + 46, 1, 319.4, 56.2 , 0 );
setMoveKey( spep_5-3 + 48, 1, 327.1, 58.8 , 0 );
setMoveKey( spep_5-3 + 50, 1, 334, 61.1 , 0 );
setMoveKey( spep_5-3 + 52, 1, 340.1, 63.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 345.3, 64.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 349.5, 66.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 352.4, 67.1 , 0 );
setMoveKey( spep_5-3 + 60, 1, 353.5, 67.5 , 0 );
setMoveKey( spep_5-3 + 62, 1, 301, 48.9 , 0 );
setMoveKey( spep_5-3 + 64, 1, 248.5, 30.3 , 0 );
setMoveKey( spep_5-3 + 66, 1, 196, 11.6 , 0 );
setMoveKey( spep_5-3 + 69, 1, 143.5, -7 , 0 );
setMoveKey( spep_5-3 + 70, 1, 213.5, 26.6 , 0 );
setMoveKey( spep_5-3 + 72, 1, 172.7, 5.3 , 0 );
setMoveKey( spep_5-3 + 74, 1, 209.7, 15.4 , 0 );
setMoveKey( spep_5-3 + 76, 1, 236.9, 22.8 , 0 );
setMoveKey( spep_5-3 + 78, 1, 258.7, 28.8 , 0 );
setMoveKey( spep_5-3 + 80, 1, 277, 33.8 , 0 );
setMoveKey( spep_5-3 + 82, 1, 292.6, 38 , 0 );
setMoveKey( spep_5-3 + 84, 1, 306, 41.7 , 0 );
setMoveKey( spep_5-3 + 86, 1, 317.6, 44.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_5-3 + 35, 1, 1.7, 1.7 );
setScaleKey( spep_5-3 + 36, 1, 1.9, 1.9 );
setScaleKey( spep_5-3 + 69, 1, 1.9, 1.9 );
setScaleKey( spep_5-3 + 70, 1, 1.7, 1.7 );
setScaleKey( spep_5-3 + 86, 1, 1.7, 1.7 );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5-3 + 35, 1, -40 );
setRotateKey( spep_5-3 + 36, 1, -20 );
setRotateKey( spep_5-3 + 69, 1, -20 );
setRotateKey( spep_5-3 + 70, 1, -25 );
setRotateKey( spep_5-3 + 86, 1, -25 );

--SE
--斬る３
stopSe( spep_5 + 0, SE025, 26 );

--敵に向かっていく
SE028 = playSe( spep_5 + 0, 1117 );

--斬る４
SE029 = playSe( spep_5 + 32, 1189 );
SE030 = playSe( spep_5 + 32, 1235 );
setSeVolumeByWorkId( spep_5 + 32, SE030, 52 );
stopSe( spep_5 + 62, SE030, 28 );
setPitch( spep_5 + 32, SE030, -200 );
setTimeStretch( SE030, 0.87, 10, 1 );
SE031 = playSe( spep_5 + 36, 1142 );
SE032 = playSe( spep_5 + 36, 1032 );

--斬る５
SE033 = playSe( spep_5 + 66, 1235 );
setSeVolumeByWorkId( spep_5 + 66, SE033, 55 );
setPitch( spep_5 + 66, SE033, -200 );
setTimeStretch( SE033, 0.87, 10, 1 );
SE034 = playSe( spep_5 + 70, 1142 );
SE035 = playSe( spep_5 + 70, 1032 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 86-2;
------------------------------------------------------
-- 斬る→突進
------------------------------------------------------
-- ** エフェクト等 ** --
slashing2_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, slashing2_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 116, slashing2_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, slashing2_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, slashing2_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, slashing2_f, 0 );
setEffRotateKey( spep_6 + 116, slashing2_f, 0 );
setEffAlphaKey( spep_6 + 0, slashing2_f, 255 );
setEffAlphaKey( spep_6 + 114, slashing2_f, 255 );
setEffAlphaKey( spep_6 + 115, slashing2_f, 255 );
setEffAlphaKey( spep_6 + 116, slashing2_f, 0 );

-- ** エフェクト等 ** --
slashing2_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, slashing2_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 116, slashing2_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, slashing2_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, slashing2_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, slashing2_b, 0 );
setEffRotateKey( spep_6 + 116, slashing2_b, 0 );
setEffAlphaKey( spep_6 + 0, slashing2_b, 255 );
setEffAlphaKey( spep_6 + 114, slashing2_b, 255 );
setEffAlphaKey( spep_6 + 115, slashing2_b, 255 );
setEffAlphaKey( spep_6 + 116, slashing2_b, 0 );

--集中線
shuchusen8 = entryEffectLife( spep_6-3 + 8,  906, 10, 0x100, -1, 0, 0, -162.4 );
setEffShake( spep_6-3 + 8, shuchusen8, 10, 20 );
setEffMoveKey( spep_6-3 + 8, shuchusen8, 0, -162.4 , 0 );
setEffMoveKey( spep_6-3 + 18, shuchusen8, 0, -162.4 , 0 );

setEffScaleKey( spep_6-3 + 8, shuchusen8, 1.3, 1.3 );
setEffScaleKey( spep_6-3 + 18, shuchusen8, 1.3, 1.3 );


setEffRotateKey( spep_6-3 + 8, shuchusen8, 180 );
setEffRotateKey( spep_6-3 + 18, shuchusen8, 180 );

setEffAlphaKey( spep_6-3 + 8, shuchusen8, 255 );
setEffAlphaKey( spep_6-3 + 18, shuchusen8, 255 );

--集中線
shuchusen9 = entryEffectLife( spep_6-3 + 50,  906, 68, 0x100, -1, 0, 0, -59.8 );
setEffShake( spep_6-3 + 50, shuchusen9, 68, 20 );
setEffMoveKey( spep_6-3 + 50, shuchusen9, 0, -59.8 , 0 );
setEffMoveKey( spep_6-3 + 118, shuchusen9, 0, -59.8 , 0 );

setEffScaleKey( spep_6-3 + 50, shuchusen9, 1.5, 1.15 );
setEffScaleKey( spep_6-3 + 118, shuchusen9, 1.5, 1.15 );

setEffRotateKey( spep_6-3 + 50, shuchusen9, 180 );
setEffRotateKey( spep_6-3 + 118, shuchusen9, 180 );

setEffAlphaKey( spep_6-3 + 50, shuchusen9, 255 );
setEffAlphaKey( spep_6-3 + 118, shuchusen9, 255 );

--敵の動き
setDisp( spep_6-3 + 18, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 111.9, -89.1 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 101.4, -104 , 0 );
setMoveKey( spep_6-3 + 4, 1, 87.8, -123.3 , 0 );
setMoveKey( spep_6-3 + 6, 1, 70.1, -148.5 , 0 );
setMoveKey( spep_6-3 + 8, 1, 41.9, -188.9 , 0 );
setMoveKey( spep_6-3 + 10, 1, 105.8, -307.3 , 0 );
setMoveKey( spep_6-3 + 12, 1, 184.1, -452.4 , 0 );
setMoveKey( spep_6-3 + 14, 1, 279.5, -629.1 , 0 );
setMoveKey( spep_6-3 + 16, 1, 401.3, -854.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 588.2, -1200 , 0 );

setScaleKey( spep_6 + 0, 1, 1, 1 );
--setScaleKey( spep_6-3 + 2, 1, 1.05, 1.05 );
setScaleKey( spep_6-3 + 4, 1, 1.11, 1.11 );
setScaleKey( spep_6-3 + 6, 1, 1.2, 1.2 );
setScaleKey( spep_6-3 + 8, 1, 1.33, 1.33 );
setScaleKey( spep_6-3 + 10, 1, 2.11, 2.11 );
setScaleKey( spep_6-3 + 12, 1, 3.06, 3.06 );
setScaleKey( spep_6-3 + 14, 1, 4.23, 4.23 );
setScaleKey( spep_6-3 + 16, 1, 5.71, 5.71 );
setScaleKey( spep_6-3 + 18, 1, 7.99, 7.99 );

setRotateKey( spep_6 + 0, 1, -110 );
--setRotateKey( spep_6-3 + 2, 1, -103.7 );
setRotateKey( spep_6-3 + 4, 1, -95.7 );
setRotateKey( spep_6-3 + 6, 1, -85.2 );
setRotateKey( spep_6-3 + 8, 1, -68.4 );
setRotateKey( spep_6-3 + 10, 1, -66.2 );
setRotateKey( spep_6-3 + 12, 1, -63.6 );
setRotateKey( spep_6-3 + 14, 1, -60.4 );
setRotateKey( spep_6-3 + 16, 1, -56.3 );
setRotateKey( spep_6-3 + 18, 1, -50 );

--SE
--斬る５
stopSe( spep_6 + 4, SE033, 26 );

--斬る６
SE036 = playSe( spep_6 + 0, 1142 );
SE037 = playSe( spep_6 + 0, 1032 );
SE038 = playSe( spep_6 + 0, 1061 );
SE039 = playSe( spep_6 + 0, 1235 );
setSeVolumeByWorkId( spep_6 + 0, SE039, 51 );
stopSe( spep_6 + 28, SE039, 26 );
setPitch( spep_6 + 0, SE039, -200 );
setTimeStretch( SE039, 0.87, 10, 1 );

--敵に飛びかかる
SE040 = playSe( spep_6 + 48, 1207 );
setSeVolumeByWorkId( spep_6 + 48, SE040, 0 );
setSeVolumeByWorkId( spep_6 + 49, SE040, 5 );
setSeVolumeByWorkId( spep_6 + 50, SE040, 10 );
setSeVolumeByWorkId( spep_6 + 51, SE040, 30 );
setSeVolumeByWorkId( spep_6 + 52, SE040, 55 );
setSeVolumeByWorkId( spep_6 + 53, SE040, 100 );
setStartTimeMs( SE040,  100 );
SE041 = playSe( spep_6 + 48, 1182 );
SE042 = playSe( spep_6 + 56, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 116;
------------------------------------------------------
-- 斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 120, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 120, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 120, finish_b, 255 );

--集中線
shuchusen10 = entryEffectLife( spep_7-3 + 8,  906, 104, 0x100, -1, 0, 223.7, 0 );
setEffShake( spep_7-3 + 8, shuchusen10, 104, 20 );
setEffMoveKey( spep_7-3 + 8, shuchusen10, 223.7, 0 , 0 );
setEffMoveKey( spep_7-3 + 112, shuchusen10, 223.7, 0 , 0 );

setEffScaleKey( spep_7-3 + 8, shuchusen10, 1.35, 1.05 );
setEffScaleKey( spep_7-3 + 112, shuchusen10, 1.35, 1.05 );

setEffRotateKey( spep_7-3 + 8, shuchusen10, 180 );
setEffRotateKey( spep_7-3 + 112, shuchusen10, 180 );

setEffAlphaKey( spep_7-3 + 8, shuchusen10, 255 );
setEffAlphaKey( spep_7-3 + 112, shuchusen10, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 108 );
changeAnime( spep_7-3 + 8, 1, 105 );

setMoveKey( spep_7 + 0, 1, 65.8, -137.8 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 0.8, -162.9 , 0 );
setMoveKey( spep_7-3 + 4, 1, -64.1, -187.9 , 0 );
setMoveKey( spep_7-3 + 7, 1, -39, -193 , 0 );
setMoveKey( spep_7-3 + 8, 1, -13.9, -198 , 0 );
setMoveKey( spep_7-3 + 10, 1, -94.2, -119.5 , 0 );
setMoveKey( spep_7-3 + 12, 1, -107.1, -169.3 , 0 );
setMoveKey( spep_7-3 + 14, 1, -117.5, -209.5 , 0 );
setMoveKey( spep_7-3 + 16, 1, -75.5, -199 , 0 );
setMoveKey( spep_7-3 + 18, 1, -36.3, -189.2 , 0 );
setMoveKey( spep_7-3 + 20, 1, -41.4, -181.5 , 0 );
setMoveKey( spep_7-3 + 22, 1, -45.9, -174.6 , 0 );
setMoveKey( spep_7-3 + 24, 1, -36.7, -177.8 , 0 );
setMoveKey( spep_7-3 + 26, 1, -28.3, -180.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, -26.7, -178.9 , 0 );
setMoveKey( spep_7-3 + 30, 1, -25.2, -177.3 , 0 );
setMoveKey( spep_7-3 + 32, 1, -23.8, -175.8 , 0 );
setMoveKey( spep_7-3 + 34, 1, -22.4, -174.3 , 0 );
setMoveKey( spep_7-3 + 36, 1, -21.2, -173 , 0 );
setMoveKey( spep_7-3 + 38, 1, -20, -171.7 , 0 );
setMoveKey( spep_7-3 + 40, 1, -18.8, -170.4 , 0 );
setMoveKey( spep_7-3 + 42, 1, -17.7, -169.2 , 0 );
setMoveKey( spep_7-3 + 44, 1, -16.6, -168.1 , 0 );
setMoveKey( spep_7-3 + 46, 1, -15.6, -167 , 0 );
setMoveKey( spep_7-3 + 48, 1, -14.7, -166 , 0 );
setMoveKey( spep_7-3 + 50, 1, -13.7, -165 , 0 );
setMoveKey( spep_7-3 + 52, 1, -12.8, -164 , 0 );
setMoveKey( spep_7-3 + 54, 1, -12, -163.1 , 0 );
setMoveKey( spep_7-3 + 56, 1, -11.1, -162.2 , 0 );
setMoveKey( spep_7-3 + 58, 1, -10.3, -161.3 , 0 );
setMoveKey( spep_7-3 + 60, 1, -9.5, -160.4 , 0 );
setMoveKey( spep_7-3 + 62, 1, -8.8, -159.6 , 0 );
setMoveKey( spep_7-3 + 64, 1, -8, -158.8 , 0 );
setMoveKey( spep_7-3 + 66, 1, -7.3, -158.1 , 0 );
setMoveKey( spep_7-3 + 68, 1, -6.6, -157.3 , 0 );
setMoveKey( spep_7-3 + 70, 1, -6, -156.6 , 0 );
setMoveKey( spep_7-3 + 72, 1, -5.3, -155.9 , 0 );
setMoveKey( spep_7-3 + 74, 1, -4.7, -155.3 , 0 );
setMoveKey( spep_7-3 + 76, 1, -4.1, -154.6 , 0 );
setMoveKey( spep_7-3 + 78, 1, -3.5, -154 , 0 );
setMoveKey( spep_7-3 + 80, 1, -2.9, -153.4 , 0 );
setMoveKey( spep_7-3 + 82, 1, -2.4, -152.8 , 0 );
setMoveKey( spep_7-3 + 84, 1, -1.9, -152.2 , 0 );
setMoveKey( spep_7-3 + 86, 1, -1.3, -151.6 , 0 );
setMoveKey( spep_7-3 + 88, 1, -0.8, -151.1 , 0 );
setMoveKey( spep_7-3 + 90, 1, -0.3, -150.5 , 0 );
setMoveKey( spep_7-3 + 92, 1, 0.1, -150 , 0 );
setMoveKey( spep_7-3 + 94, 1, 0.6, -149.5 , 0 );
setMoveKey( spep_7-3 + 96, 1, 1, -149.1 , 0 );
setMoveKey( spep_7-3 + 98, 1, 1.5, -148.6 , 0 );
setMoveKey( spep_7-3 + 100, 1, 1.9, -148.2 , 0 );
setMoveKey( spep_7-3 + 102, 1, 2.3, -147.7 , 0 );
setMoveKey( spep_7-3 + 104, 1, 2.7, -147.3 , 0 );
setMoveKey( spep_7-3 + 106, 1, 3.1, -146.9 , 0 );
setMoveKey( spep_7-3 + 108, 1, 3.4, -146.5 , 0 );
setMoveKey( spep_7-3 + 110, 1, 3.8, -146.1 , 0 );
setMoveKey( spep_7-3 + 112, 1, 4.1, -145.8 , 0 );
setMoveKey( spep_7-3 + 114, 1, 4.4, -145.4 , 0 );
setMoveKey( spep_7-3 + 116, 1, 4.7, -145.1 , 0 );
setMoveKey( spep_7-3 + 118, 1, 4.9, -144.9 , 0 );

setScaleKey( spep_7 + 0, 1,  6.5,6.5);
setScaleKey( spep_7-3 + 4, 1, 5.2,5.2);
setScaleKey( spep_7-3 + 7, 1, 4.55,4.55);
setScaleKey( spep_7-3 + 8, 1, 3.9,3.9);
setScaleKey( spep_7-3 + 10, 1, 3.4,3.4);
setScaleKey( spep_7-3 + 12, 1, 3.54,3.54);
setScaleKey( spep_7-3 + 14, 1, 3.65,3.65);
setScaleKey( spep_7-3 + 16, 1, 3.62,3.62);
setScaleKey( spep_7-3 + 18, 1, 3.6,3.6);
setScaleKey( spep_7-3 + 20, 1, 3.54,3.54);
setScaleKey( spep_7-3 + 22, 1, 3.51,3.51);
setScaleKey( spep_7-3 + 24, 1, 3.47,3.47);
setScaleKey( spep_7-3 + 26, 1, 3.43,3.43);
setScaleKey( spep_7-3 + 28, 1, 3.39,3.39);
setScaleKey( spep_7-3 + 30, 1, 3.36,3.36);
setScaleKey( spep_7-3 + 32, 1, 3.34,3.34);
setScaleKey( spep_7-3 + 34, 1, 3.3,3.3);
setScaleKey( spep_7-3 + 36, 1, 3.27,3.27);
setScaleKey( spep_7-3 + 38, 1, 3.25,3.25);
setScaleKey( spep_7-3 + 40, 1, 3.23,3.23);
setScaleKey( spep_7-3 + 42, 1, 3.21,3.21);
setScaleKey( spep_7-3 + 44, 1, 3.18,3.18);
setScaleKey( spep_7-3 + 46, 1, 3.15,3.15);
setScaleKey( spep_7-3 + 48, 1, 3.14,3.14);
setScaleKey( spep_7-3 + 50, 1, 3.12,3.12);
setScaleKey( spep_7-3 + 52, 1, 3.1,3.1);
setScaleKey( spep_7-3 + 54, 1, 3.08,3.08);
setScaleKey( spep_7-3 + 56, 1, 3.06,3.06);
setScaleKey( spep_7-3 + 58, 1, 3.05,3.05);
setScaleKey( spep_7-3 + 60, 1, 3.04,3.04);
setScaleKey( spep_7-3 + 62, 1, 3.01,3.01);
setScaleKey( spep_7-3 + 64, 1, 3,3);
setScaleKey( spep_7-3 + 66, 1, 2.99,2.99);
setScaleKey( spep_7-3 + 68, 1, 2.97,2.97);
setScaleKey( spep_7-3 + 70, 1, 2.96,2.96);
setScaleKey( spep_7-3 + 72, 1, 2.95,2.95);
setScaleKey( spep_7-3 + 74, 1, 2.93,2.93);
setScaleKey( spep_7-3 + 76, 1, 2.92,2.92);
setScaleKey( spep_7-3 + 78, 1, 2.91,2.91);
setScaleKey( spep_7-3 + 80, 1, 2.89,2.89);
setScaleKey( spep_7-3 + 82, 1, 2.88,2.88);
setScaleKey( spep_7-3 + 84, 1, 2.87,2.87);
setScaleKey( spep_7-3 + 86, 1, 2.86,2.86);
setScaleKey( spep_7-3 + 88, 1, 2.84,2.84);
setScaleKey( spep_7-3 + 90, 1, 2.84,2.84);
setScaleKey( spep_7-3 + 92, 1, 2.83,2.83);
setScaleKey( spep_7-3 + 94, 1, 2.82,2.82);
setScaleKey( spep_7-3 + 96, 1, 2.8,2.8);
setScaleKey( spep_7-3 + 98, 1, 2.8,2.8);
setScaleKey( spep_7-3 + 100, 1,2.79,2.79);
setScaleKey( spep_7-3 + 102, 1,2.78,2.78);
setScaleKey( spep_7-3 + 104, 1,2.78,2.78);
setScaleKey( spep_7-3 + 106, 1,2.76,2.76);
setScaleKey( spep_7-3 + 108, 1,2.76,2.76);
setScaleKey( spep_7-3 + 110, 1,2.75,2.75);
setScaleKey( spep_7-3 + 112, 1,2.74,2.74);
setScaleKey( spep_7-3 + 114, 1,2.74,2.74);
setScaleKey( spep_7-3 + 118, 1,2.73,2.73);

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7-3 + 118, 1, 0 );

--SE
--ラスト斬る
SE043 = playSe( spep_7 + 0, 1003 );
SE044 = playSe( spep_7 + 8, 1235 );
setSeVolumeByWorkId( spep_7 + 8, SE044, 63 );
setPitch( spep_7 + 8, SE044, -200 );
setTimeStretch( SE044, 0.87, 10, 1 );
SE045 = playSe( spep_7 + 8, 1142 );
SE046 = playSe( spep_7 + 8, 1032 );
SE047 = playSe( spep_7 + 8, 1061 );
setSeVolumeByWorkId( spep_7 + 8, SE047, 59 );
SE048 = playSe( spep_7 + 12, 1143 );
setSeVolumeByWorkId( spep_7 + 12, SE048, 65 );
SE049 = playSe( spep_7 + 20, 1109 );
setSeVolumeByWorkId( spep_7 + 20, SE049, 0 );
setSeVolumeByWorkId( spep_7 + 21, SE049, 15 );
setSeVolumeByWorkId( spep_7 + 22, SE049, 30 );
setSeVolumeByWorkId( spep_7 + 23, SE049, 45 );
setSeVolumeByWorkId( spep_7 + 24, SE049, 60 );
setSeVolumeByWorkId( spep_7 + 25, SE049, 75 );
setSeVolumeByWorkId( spep_7 + 26, SE049, 90 );
setSeVolumeByWorkId( spep_7 + 27, SE049, 105 );
setSeVolumeByWorkId( spep_7 + 28, SE049, 120 );
setStartTimeMs( SE049,  117 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 0 );
endPhase( spep_7 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
ready = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ready, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, ready, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ready, -1.0, 1.0 );
setEffScaleKey( spep_0 + 96, ready, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ready, 0 );
setEffRotateKey( spep_0 + 96, ready, 0 );
setEffAlphaKey( spep_0 + 0, ready, 255 );
setEffAlphaKey( spep_0 + 96, ready, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0+1 + 14,  906, 80, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0+1 + 14, shuchusen1, 80, 20 );
setEffMoveKey( spep_0+1 + 14, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0+1 + 94, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0+1 + 14, shuchusen1, 1, 1 );
setEffScaleKey( spep_0+1 + 94, shuchusen1, 1, 1 );

setEffRotateKey( spep_0+1 + 14, shuchusen1, 180 );
setEffRotateKey( spep_0+1 + 94, shuchusen1, 180 );

setEffAlphaKey( spep_0+1 + 14, shuchusen1, 255 );
setEffAlphaKey( spep_0+1 + 94, shuchusen1, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +2;

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
--構える
SE001 = playSe( spep_0 + 8, 1233 );

--顔カットイン
SE002 = playSe( spep_x + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0 + 88, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 96;
------------------------------------------------------
-- ホイポイカプセルから剣を出す
------------------------------------------------------
-- ** エフェクト等 ** --
kapsel = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kapsel, 0, 0, 0 );
setEffMoveKey( spep_1 + 240, kapsel, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kapsel, -1.0, 1.0 );
setEffScaleKey( spep_1 + 240, kapsel, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kapsel, 0 );
setEffRotateKey( spep_1 + 240, kapsel, 0 );
setEffAlphaKey( spep_1 + 0, kapsel, 255 );
setEffAlphaKey( spep_1 + 240, kapsel, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 128,  906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 128, shuchusen2, 10, 20 );
setEffMoveKey( spep_1-3 + 128, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 138, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 128, shuchusen2, 1.05, 1.05 );
setEffScaleKey( spep_1-3 + 138, shuchusen2, 1.05, 1.05 );

setEffRotateKey( spep_1-3 + 128, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 138, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 128, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 138, shuchusen2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_1-3 + 224,  906, 14, 0x100, -1, 0, 0, -148.4 );
setEffShake( spep_1-3 + 224, shuchusen3, 6, 20 );
setEffMoveKey( spep_1-3 + 224, shuchusen3, 0, -148.4 , 0 );
setEffMoveKey( spep_1-3 + 238, shuchusen3, 0, -148.4 , 0 );

setEffScaleKey( spep_1-3 + 224, shuchusen3, 1.38, 1.28 );
setEffScaleKey( spep_1-3 + 238, shuchusen3, 1.38, 1.28 );

setEffRotateKey( spep_1-3 + 224, shuchusen3, 180 );
setEffRotateKey( spep_1-3 + 238, shuchusen3, 180 );

setEffAlphaKey( spep_1-3 + 224, shuchusen3, 255 );
setEffAlphaKey( spep_1-3 + 238, shuchusen3, 255 );

--SE
--カプセル投げる
SE003 = playSe( spep_1 + 34, 23 );
SE004 = playSe( spep_1 + 34, 27 );
SE005 = playSe( spep_1 + 34, 13 );
setSeVolumeByWorkId( spep_1 + 34, SE005, 58 );
setPitch( spep_1 + 34, SE005, -100 );
setTimeStretch( SE005, 0.93, 10, 1 );
setBandpassFilter( spep_1 + 34, SE005, 2000, 24000 );

--カプセル光る
SE007 = playSe( spep_1 + 98, 1307 );
stopSe( spep_1 + 128, SE007, 30 );

--カプセル爆発
SE008 = playSe( spep_1 + 126, 1014 );
SE009 = playSe( spep_1 + 126, 40 );
setSeVolumeByWorkId( spep_1 + 126, SE009, 55 );
SE010 = playSe( spep_1 + 130, 1291 );

--剣出現
SE006 = playSe( spep_1 + 144, 1177 );
setSeVolumeByWorkId( spep_1 + 144, SE006, 0 );
setSeVolumeByWorkId( spep_1 + 145, SE006, 4.3 );
setSeVolumeByWorkId( spep_1 + 146, SE006, 8.6 );
setSeVolumeByWorkId( spep_1 + 147, SE006, 12.9 );
setSeVolumeByWorkId( spep_1 + 148, SE006, 17.2 );
setSeVolumeByWorkId( spep_1 + 149, SE006, 21.5 );
setSeVolumeByWorkId( spep_1 + 150, SE006, 25.8 );
setSeVolumeByWorkId( spep_1 + 151, SE006, 30.1 );
setSeVolumeByWorkId( spep_1 + 152, SE006, 34.4 );
setSeVolumeByWorkId( spep_1 + 153, SE006, 38.7 );
setSeVolumeByWorkId( spep_1 + 154, SE006, 43 );
setSeVolumeByWorkId( spep_1 + 155, SE006, 47.3 );
setSeVolumeByWorkId( spep_1 + 156, SE006, 51.6 );
setSeVolumeByWorkId( spep_1 + 157, SE006, 55.9 );
setSeVolumeByWorkId( spep_1 + 158, SE006, 60.2 );
setSeVolumeByWorkId( spep_1 + 159, SE006, 64.5 );
setSeVolumeByWorkId( spep_1 + 160, SE006, 69 );
stopSe( spep_1 + 216, SE006, 20 );
setStartTimeMs( SE006,  1083 );
setPitch( spep_1 + 144, SE006, -600 );
setTimeStretch( SE006, 0.6, 10, 1 );

--剣握る
SE011 = playSe( spep_1 + 216, 1061 );
setSeVolumeByWorkId( spep_1 + 216, SE011, 66 );
stopSe( spep_1 + 232, SE011, 14 );
SE012 = playSe( spep_1 + 216, 1013 );

--白フェード
entryFade( spep_1 + 232, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 240, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_2= spep_1 + 240;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush = entryEffect( spep_3 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_3 + 68, rush, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_3 + 68, rush, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush, 0 );
setEffRotateKey( spep_3 + 68, rush, 0 );
setEffAlphaKey( spep_3 + 0, rush, 255 );
setEffAlphaKey( spep_3 + 66, rush, 255 );
setEffAlphaKey( spep_3 + 67, rush, 255 );
setEffAlphaKey( spep_3 + 68, rush, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 68, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen4, 68, 20 );
setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 68, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.05, 1.05 );
setEffScaleKey( spep_3 + 68, shuchusen4, 1.05, 1.05 );

setEffRotateKey( spep_3 + 0, shuchusen4, 180 );
setEffRotateKey( spep_3 + 68, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 68, shuchusen4, 255 );

--SE
--向かってくる
SE014 = playSe( spep_3 + 0, 1182 );
SE015 = playSe( spep_3 + 0, 1167 );
setSeVolumeByWorkId( spep_3 + 0, SE015, 49 );
SE016 = playSe( spep_3 + 0, 1278 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );

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
--SE
--向かってくる
stopSe( spep_3 + 60, SE016, 14 );

--振りかぶる
SE017 = playSe( spep_3 + 52, 1116 );
SE018 = playSe( spep_3 + 56, 1004 );



-- ** 次の準備 ** --
spep_4= spep_3 + 68;
------------------------------------------------------
-- エネミーを斬る
------------------------------------------------------
-- ** エフェクト等 ** --
slashing_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, slashing_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 84, slashing_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, slashing_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, slashing_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slashing_f, 0 );
setEffRotateKey( spep_4 + 84, slashing_f, 0 );
setEffAlphaKey( spep_4 + 0, slashing_f, 255 );
setEffAlphaKey( spep_4 + 83, slashing_f, 255 );
setEffAlphaKey( spep_4 + 84, slashing_f, 0 );

-- ** エフェクト等 ** --
slashing_b = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, slashing_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 84, slashing_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, slashing_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, slashing_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slashing_b, 0 );
setEffRotateKey( spep_4 + 84, slashing_b, 0 );
setEffAlphaKey( spep_4 + 0, slashing_b, 255 );
setEffAlphaKey( spep_4 + 83, slashing_b, 255 );
setEffAlphaKey( spep_4 + 84, slashing_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 100 );
changeAnime( spep_4-3 + 10, 1, 106 );
changeAnime( spep_4-3 + 36, 1, 108 );
changeAnime( spep_4-3 + 68, 1, 105 );

setMoveKey( spep_4 + 0, 1, 90, -90 , 0 );
setMoveKey( spep_4-3 + 9, 1, 90, -90 , 0 );
setMoveKey( spep_4-3 + 10, 1, 29.9, -49.9 , 0 );
setMoveKey( spep_4-3 + 12, 1, 19.9, -89.9 , 0 );
setMoveKey( spep_4-3 + 14, 1, 9.9, -129.9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 9.9, -89.9 , 0 );
setMoveKey( spep_4-3 + 18, 1, 9.9, -49.9 , 0 );
setMoveKey( spep_4-3 + 20, 1, 9.9, -54.9 , 0 );
setMoveKey( spep_4-3 + 22, 1, 9.9, -59.9 , 0 );
setMoveKey( spep_4-3 + 24, 1, 9.9, -64.9 , 0 );
setMoveKey( spep_4-3 + 26, 1, 9.9, -69.9 , 0 );
setMoveKey( spep_4-3 + 28, 1, 9.9, -74.9 , 0 );
setMoveKey( spep_4-3 + 30, 1, 9.9, -79.9 , 0 );
setMoveKey( spep_4-3 + 32, 1, 9.9, -84.9 , 0 );
setMoveKey( spep_4-3 + 35, 1, 9.9, -89.9 , 0 );
setMoveKey( spep_4-3 + 36, 1, 89.8, -89.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 99.8, -79.8 , 0 );
setMoveKey( spep_4-3 + 40, 1, 109.8, -69.8 , 0 );
setMoveKey( spep_4-3 + 42, 1, 99.8, -79.9 , 0 );
setMoveKey( spep_4-3 + 44, 1, 89.8, -89.9 , 0 );
setMoveKey( spep_4-3 + 46, 1, 91.6, -89.9 , 0 );
setMoveKey( spep_4-3 + 48, 1, 93.4, -89.9 , 0 );
setMoveKey( spep_4-3 + 50, 1, 95.3, -89.9 , 0 );
setMoveKey( spep_4-3 + 52, 1, 97.1, -89.9 , 0 );
setMoveKey( spep_4-3 + 54, 1, 98.9, -89.9 , 0 );
setMoveKey( spep_4-3 + 56, 1, 100.7, -89.8 , 0 );
setMoveKey( spep_4-3 + 58, 1, 102.5, -89.8 , 0 );
setMoveKey( spep_4-3 + 60, 1, 104.3, -89.8 , 0 );
setMoveKey( spep_4-3 + 62, 1, 106.2, -89.8 , 0 );
setMoveKey( spep_4-3 + 64, 1, 108, -89.8 , 0 );
setMoveKey( spep_4-3 + 67, 1, 109.8, -89.8 , 0 );
setMoveKey( spep_4-3 + 68, 1, -10.1, -9.9 , 0 );
setMoveKey( spep_4-3 + 70, 1, -10.1, 10.1 , 0 );
setMoveKey( spep_4-3 + 72, 1, -10.1, 30.1 , 0 );
setMoveKey( spep_4-3 + 74, 1, -0.1, 20.1 , 0 );
setMoveKey( spep_4-3 + 76, 1, 9.9, 10.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, 6.5, 16.8 , 0 );
setMoveKey( spep_4-3 + 80, 1, 3.2, 23.4 , 0 );
setMoveKey( spep_4-3 + 82, 1, -0.1, 30.1 , 0 );
setMoveKey( spep_4-3 + 84, 1, -3.4, 36.8 , 0 );
setMoveKey( spep_4-3 + 86, 1, -6.8, 43.4 , 0 );

setScaleKey( spep_4 + 0, 1, 2.5, 2.5 );
--setScaleKey( spep_4-3 + 2, 1, 2.47, 2.47 );
setScaleKey( spep_4-3 + 4, 1, 2.45, 2.45 );
setScaleKey( spep_4-3 + 6, 1, 2.42, 2.42 );
setScaleKey( spep_4-3 + 9, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 10, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 12, 1, 2.35, 2.35 );
setScaleKey( spep_4-3 + 14, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 16, 1, 2.35, 2.35 );
setScaleKey( spep_4-3 + 18, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 20, 1, 2.37, 2.37 );
setScaleKey( spep_4-3 + 22, 1, 2.35, 2.35 );
setScaleKey( spep_4-3 + 24, 1, 2.32, 2.32 );
setScaleKey( spep_4-3 + 26, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 28, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 30, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 32, 1, 2.22, 2.22 );
setScaleKey( spep_4-3 + 35, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 36, 1, 2.4, 2.4 );
setScaleKey( spep_4-3 + 38, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 40, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 42, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 44, 1, 2.3, 2.3 );
setScaleKey( spep_4-3 + 46, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 48, 1, 2.28, 2.28 );
setScaleKey( spep_4-3 + 50, 1, 2.27, 2.27 );
setScaleKey( spep_4-3 + 52, 1, 2.26, 2.26 );
setScaleKey( spep_4-3 + 54, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 56, 1, 2.25, 2.25 );
setScaleKey( spep_4-3 + 58, 1, 2.24, 2.24 );
setScaleKey( spep_4-3 + 60, 1, 2.23, 2.23 );
setScaleKey( spep_4-3 + 62, 1, 2.22, 2.22 );
setScaleKey( spep_4-3 + 64, 1, 2.21, 2.21 );
setScaleKey( spep_4-3 + 67, 1, 2.2, 2.2 );
setScaleKey( spep_4-3 + 68, 1, 2, 2 );
setScaleKey( spep_4-3 + 70, 1, 1.95, 1.95 );
setScaleKey( spep_4-3 + 72, 1, 1.9, 1.9 );
setScaleKey( spep_4-3 + 74, 1, 1.95, 1.95 );
setScaleKey( spep_4-3 + 76, 1, 2, 2 );
setScaleKey( spep_4-3 + 78, 1, 1.98, 1.98 );
setScaleKey( spep_4-3 + 80, 1, 1.97, 1.97 );
setScaleKey( spep_4-3 + 82, 1, 1.95, 1.95 );
setScaleKey( spep_4-3 + 84, 1, 1.93, 1.93 );
setScaleKey( spep_4-3 + 86, 1, 1.92, 1.92 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 9, 1, 0 );
setRotateKey( spep_4-3 + 10, 1, -42.1 );
setRotateKey( spep_4-3 + 35, 1, -42.1 );
setRotateKey( spep_4-3 + 36, 1, 0 );
setRotateKey( spep_4-3 + 86, 1, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_4-3 + 10,  906, 10, 0x100, -1, 0, 0, -80 );
setEffShake( spep_4-3 + 10, shuchusen4, 6, 20 );
setEffMoveKey( spep_4-3 + 10, shuchusen4, 0, -80 , 0 );
setEffMoveKey( spep_4-3 + 20, shuchusen4, 0, -80 , 0 );

setEffScaleKey( spep_4-3 + 10, shuchusen4, 1.1, 1.2 );
setEffScaleKey( spep_4-3 + 20, shuchusen4, 1.1, 1.2 );

setEffRotateKey( spep_4-3 + 10, shuchusen4, 180 );
setEffRotateKey( spep_4-3 + 10, shuchusen4, 180 );

setEffAlphaKey( spep_4-3 + 10, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 10, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_4-3 + 36,  906, 10, 0x100, -1, 0, 0, -59.9 );
setEffShake( spep_4-3 + 36, shuchusen5, 10, 20 );
setEffMoveKey( spep_4-3 + 36, shuchusen5, 0, -59.9 , 0 );
setEffMoveKey( spep_4-3 + 46, shuchusen5, 0, -59.9 , 0 );

setEffScaleKey( spep_4-3 + 36, shuchusen5, 1.2, 1.15 );
setEffScaleKey( spep_4-3 + 46, shuchusen5, 1.2, 1.15 );

setEffRotateKey( spep_4-3 + 36, shuchusen5, 180 );
setEffRotateKey( spep_4-3 + 46, shuchusen5, 180 );

setEffAlphaKey( spep_4-3 + 36, shuchusen5, 255 );
setEffAlphaKey( spep_4-3 + 46, shuchusen5, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_4-3 + 68,  906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4-3 + 68, shuchusen6, 10, 20 );
setEffMoveKey( spep_4-3 + 68, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 78, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_4-3 + 68, shuchusen6, 1.1, 1.05 );
setEffScaleKey( spep_4-3 + 78, shuchusen6, 1.1, 1.05 );

setEffRotateKey( spep_4-3 + 68, shuchusen6, 180 );
setEffRotateKey( spep_4-3 + 78, shuchusen6, 180 );

setEffAlphaKey( spep_4-3 + 68, shuchusen6, 255 );
setEffAlphaKey( spep_4-3 + 78, shuchusen6, 255 );

--SE
--振りかぶる
stopSe( spep_4 + 6, SE017, 20 );

--斬る１
SE019 = playSe( spep_4 + 0, 1235 );
setSeVolumeByWorkId( spep_4 + 0, SE019, 52 );
stopSe( spep_4 + 32, SE019, 26 );
setPitch( spep_4 + 0, SE019, -200 );
setTimeStretch( SE019, 0.87, 10, 1 );
SE020 = playSe( spep_4 + 4, 1142 );
SE021 = playSe( spep_4 + 4, 1032 );

--斬る２
SE022 = playSe( spep_4 + 28, 1235 );
setSeVolumeByWorkId( spep_4 + 28, SE022, 56 );
stopSe( spep_4 + 58, SE022, 28 );
setPitch( spep_4 + 28, SE022, -200 );
setTimeStretch( SE022, 0.87, 10, 1 );
SE023 = playSe( spep_4 + 32, 1142 );
SE024 = playSe( spep_4 + 32, 1032 );

--斬る３
SE025 = playSe( spep_4 + 58, 1235 );
setSeVolumeByWorkId( spep_4 + 58, SE025, 54 );
setPitch( spep_4 + 58, SE025, -200 );
setTimeStretch( SE025, 0.87, 10, 1 );
SE026 = playSe( spep_4 + 62, 1142 );
SE027 = playSe( spep_4 + 62, 1032 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 86 -2;
------------------------------------------------------
-- 連続斬
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, rush_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, rush_f, 0 );
setEffRotateKey( spep_5 + 84, rush_f, 0 );
setEffAlphaKey( spep_5 + 0, rush_f, 255 );
setEffAlphaKey( spep_5 + 83, rush_f, 255 );
setEffAlphaKey( spep_5 + 84, rush_f, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 84, rush_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 84, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, rush_b, 0 );
setEffRotateKey( spep_5 + 84, rush_b, 0 );
setEffAlphaKey( spep_5 + 0, rush_b, 255 );
setEffAlphaKey( spep_5 + 83, rush_b, 255 );
setEffAlphaKey( spep_5 + 84, rush_b, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_5-3 + 36,  906, 10, 0x100, -1, 0, 200.1, 40 );
setEffShake( spep_5-3 +  36, shuchusen6, 10, 20 );
setEffMoveKey( spep_5-3 + 36, shuchusen6, 200.1, 40 , 0 );
setEffMoveKey( spep_5-3 + 46, shuchusen6, 200.1, 40 , 0 );

setEffScaleKey( spep_5-3 + 36, shuchusen6, 1.55, 1.1 );
setEffScaleKey( spep_5-3 + 46, shuchusen6, 1.55, 1.1 );

setEffRotateKey( spep_5-3 + 36, shuchusen6, 180 );
setEffRotateKey( spep_5-3 + 46, shuchusen6, 180 );

setEffAlphaKey( spep_5-3 + 36, shuchusen6, 255 );
setEffAlphaKey( spep_5-3 + 46, shuchusen6, 255 );

--集中線
shuchusen7 = entryEffectLife( spep_5-3 + 68,  906, 10, 0x100, -1, 0, 150.2, 0 );
setEffShake( spep_5-3 +  68, shuchusen7, 10, 20 );
setEffMoveKey( spep_5-3 + 68, shuchusen7, 150.2, 0 , 0 );
setEffMoveKey( spep_5-3 + 78, shuchusen7, 150.2, 0 , 0 );

setEffScaleKey( spep_5-3 + 68, shuchusen7, 1.4, 1.1 );
setEffScaleKey( spep_5-3 + 78, shuchusen7, 1.4, 1.1 );

setEffRotateKey( spep_5-3 + 68, shuchusen7, 180 );
setEffRotateKey( spep_5-3 + 78, shuchusen7, 180 );

setEffAlphaKey( spep_5-3 + 68, shuchusen7, 255 );
setEffAlphaKey( spep_5-3 + 78, shuchusen7, 255 );

--敵の動き
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 36, 1, 108 );
changeAnime( spep_5-3 + 70, 1, 106 );

setMoveKey( spep_5 + 0, 1, 53.9, -80.9 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 63.4, -77.8 , 0 );
setMoveKey( spep_5-3 + 4, 1, 73, -74.6 , 0 );
setMoveKey( spep_5-3 + 6, 1, 82.5, -71.4 , 0 );
setMoveKey( spep_5-3 + 8, 1, 92, -68.3 , 0 );
setMoveKey( spep_5-3 + 10, 1, 101.6, -65.1 , 0 );
setMoveKey( spep_5-3 + 12, 1, 111.1, -61.9 , 0 );
setMoveKey( spep_5-3 + 14, 1, 120.6, -58.7 , 0 );
setMoveKey( spep_5-3 + 16, 1, 130.2, -55.6 , 0 );
setMoveKey( spep_5-3 + 18, 1, 139.7, -52.4 , 0 );
setMoveKey( spep_5-3 + 20, 1, 149.3, -49.2 , 0 );
setMoveKey( spep_5-3 + 22, 1, 158.8, -46 , 0 );
setMoveKey( spep_5-3 + 24, 1, 168.3, -42.9 , 0 );
setMoveKey( spep_5-3 + 26, 1, 177.9, -39.7 , 0 );
setMoveKey( spep_5-3 + 28, 1, 187.4, -36.5 , 0 );
setMoveKey( spep_5-3 + 30, 1, 196.9, -33.3 , 0 );
setMoveKey( spep_5-3 + 32, 1, 206.5, -30.2 , 0 );
setMoveKey( spep_5-3 + 35, 1, 216, -27 , 0 );
setMoveKey( spep_5-3 + 36, 1, 243, 33 , 0 );
setMoveKey( spep_5-3 + 38, 1, 317.2, 70 , 0 );
setMoveKey( spep_5-3 + 40, 1, 291.5, 47 , 0 );
setMoveKey( spep_5-3 + 42, 1, 301.8, 50.4 , 0 );
setMoveKey( spep_5-3 + 44, 1, 311, 53.5 , 0 );
setMoveKey( spep_5-3 + 46, 1, 319.4, 56.2 , 0 );
setMoveKey( spep_5-3 + 48, 1, 327.1, 58.8 , 0 );
setMoveKey( spep_5-3 + 50, 1, 334, 61.1 , 0 );
setMoveKey( spep_5-3 + 52, 1, 340.1, 63.1 , 0 );
setMoveKey( spep_5-3 + 54, 1, 345.3, 64.8 , 0 );
setMoveKey( spep_5-3 + 56, 1, 349.5, 66.2 , 0 );
setMoveKey( spep_5-3 + 58, 1, 352.4, 67.1 , 0 );
setMoveKey( spep_5-3 + 60, 1, 353.5, 67.5 , 0 );
setMoveKey( spep_5-3 + 62, 1, 301, 48.9 , 0 );
setMoveKey( spep_5-3 + 64, 1, 248.5, 30.3 , 0 );
setMoveKey( spep_5-3 + 66, 1, 196, 11.6 , 0 );
setMoveKey( spep_5-3 + 69, 1, 143.5, -7 , 0 );
setMoveKey( spep_5-3 + 70, 1, 213.5, 26.6 , 0 );
setMoveKey( spep_5-3 + 72, 1, 172.7, 5.3 , 0 );
setMoveKey( spep_5-3 + 74, 1, 209.7, 15.4 , 0 );
setMoveKey( spep_5-3 + 76, 1, 236.9, 22.8 , 0 );
setMoveKey( spep_5-3 + 78, 1, 258.7, 28.8 , 0 );
setMoveKey( spep_5-3 + 80, 1, 277, 33.8 , 0 );
setMoveKey( spep_5-3 + 82, 1, 292.6, 38 , 0 );
setMoveKey( spep_5-3 + 84, 1, 306, 41.7 , 0 );
setMoveKey( spep_5-3 + 86, 1, 317.6, 44.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.7, 1.7 );
setScaleKey( spep_5-3 + 35, 1, 1.7, 1.7 );
setScaleKey( spep_5-3 + 36, 1, 1.9, 1.9 );
setScaleKey( spep_5-3 + 69, 1, 1.9, 1.9 );
setScaleKey( spep_5-3 + 70, 1, 1.7, 1.7 );
setScaleKey( spep_5-3 + 86, 1, 1.7, 1.7 );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5-3 + 35, 1, -40 );
setRotateKey( spep_5-3 + 36, 1, -20 );
setRotateKey( spep_5-3 + 69, 1, -20 );
setRotateKey( spep_5-3 + 70, 1, -25 );
setRotateKey( spep_5-3 + 86, 1, -25 );

--SE
--斬る３
stopSe( spep_5 + 0, SE025, 26 );

--敵に向かっていく
SE028 = playSe( spep_5 + 0, 1117 );

--斬る４
SE029 = playSe( spep_5 + 32, 1189 );
SE030 = playSe( spep_5 + 32, 1235 );
setSeVolumeByWorkId( spep_5 + 32, SE030, 52 );
stopSe( spep_5 + 62, SE030, 28 );
setPitch( spep_5 + 32, SE030, -200 );
setTimeStretch( SE030, 0.87, 10, 1 );
SE031 = playSe( spep_5 + 36, 1142 );
SE032 = playSe( spep_5 + 36, 1032 );

--斬る５
SE033 = playSe( spep_5 + 66, 1235 );
setSeVolumeByWorkId( spep_5 + 66, SE033, 55 );
setPitch( spep_5 + 66, SE033, -200 );
setTimeStretch( SE033, 0.87, 10, 1 );
SE034 = playSe( spep_5 + 70, 1142 );
SE035 = playSe( spep_5 + 70, 1032 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 86 -2;
------------------------------------------------------
-- 斬る→突進
------------------------------------------------------
-- ** エフェクト等 ** --
slashing2_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, slashing2_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 116, slashing2_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, slashing2_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, slashing2_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, slashing2_f, 0 );
setEffRotateKey( spep_6 + 116, slashing2_f, 0 );
setEffAlphaKey( spep_6 + 0, slashing2_f, 255 );
setEffAlphaKey( spep_6 + 114, slashing2_f, 255 );
setEffAlphaKey( spep_6 + 115, slashing2_f, 255 );
setEffAlphaKey( spep_6 + 116, slashing2_f, 0 );

-- ** エフェクト等 ** --
slashing2_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, slashing2_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 116, slashing2_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, slashing2_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, slashing2_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, slashing2_b, 0 );
setEffRotateKey( spep_6 + 116, slashing2_b, 0 );
setEffAlphaKey( spep_6 + 0, slashing2_b, 255 );
setEffAlphaKey( spep_6 + 114, slashing2_b, 255 );
setEffAlphaKey( spep_6 + 115, slashing2_b, 255 );
setEffAlphaKey( spep_6 + 116, slashing2_b, 0 );

--集中線
shuchusen8 = entryEffectLife( spep_6-3 + 8,  906, 10, 0x100, -1, 0, 0, -162.4 );
setEffShake( spep_6-3 + 8, shuchusen8, 10, 20 );
setEffMoveKey( spep_6-3 + 8, shuchusen8, 0, -162.4 , 0 );
setEffMoveKey( spep_6-3 + 18, shuchusen8, 0, -162.4 , 0 );

setEffScaleKey( spep_6-3 + 8, shuchusen8, 1.3, 1.3 );
setEffScaleKey( spep_6-3 + 18, shuchusen8, 1.3, 1.3 );


setEffRotateKey( spep_6-3 + 8, shuchusen8, 180 );
setEffRotateKey( spep_6-3 + 18, shuchusen8, 180 );

setEffAlphaKey( spep_6-3 + 8, shuchusen8, 255 );
setEffAlphaKey( spep_6-3 + 18, shuchusen8, 255 );

--集中線
shuchusen9 = entryEffectLife( spep_6-3 + 50,  906, 68, 0x100, -1, 0, 0, -59.8 );
setEffShake( spep_6-3 + 50, shuchusen9, 68, 20 );
setEffMoveKey( spep_6-3 + 50, shuchusen9, 0, -59.8 , 0 );
setEffMoveKey( spep_6-3 + 118, shuchusen9, 0, -59.8 , 0 );

setEffScaleKey( spep_6-3 + 50, shuchusen9, 1.5, 1.15 );
setEffScaleKey( spep_6-3 + 118, shuchusen9, 1.5, 1.15 );

setEffRotateKey( spep_6-3 + 50, shuchusen9, 180 );
setEffRotateKey( spep_6-3 + 118, shuchusen9, 180 );

setEffAlphaKey( spep_6-3 + 50, shuchusen9, 255 );
setEffAlphaKey( spep_6-3 + 118, shuchusen9, 255 );

--敵の動き
setDisp( spep_6-3 + 18, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 111.9, -89.1 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 101.4, -104 , 0 );
setMoveKey( spep_6-3 + 4, 1, 87.8, -123.3 , 0 );
setMoveKey( spep_6-3 + 6, 1, 70.1, -148.5 , 0 );
setMoveKey( spep_6-3 + 8, 1, 41.9, -188.9 , 0 );
setMoveKey( spep_6-3 + 10, 1, 105.8, -307.3 , 0 );
setMoveKey( spep_6-3 + 12, 1, 184.1, -452.4 , 0 );
setMoveKey( spep_6-3 + 14, 1, 279.5, -629.1 , 0 );
setMoveKey( spep_6-3 + 16, 1, 401.3, -854.5 , 0 );
setMoveKey( spep_6-3 + 18, 1, 588.2, -1200 , 0 );

setScaleKey( spep_6 + 0, 1, 1, 1 );
--setScaleKey( spep_6-3 + 2, 1, 1.05, 1.05 );
setScaleKey( spep_6-3 + 4, 1, 1.11, 1.11 );
setScaleKey( spep_6-3 + 6, 1, 1.2, 1.2 );
setScaleKey( spep_6-3 + 8, 1, 1.33, 1.33 );
setScaleKey( spep_6-3 + 10, 1, 2.11, 2.11 );
setScaleKey( spep_6-3 + 12, 1, 3.06, 3.06 );
setScaleKey( spep_6-3 + 14, 1, 4.23, 4.23 );
setScaleKey( spep_6-3 + 16, 1, 5.71, 5.71 );
setScaleKey( spep_6-3 + 18, 1, 7.99, 7.99 );

setRotateKey( spep_6 + 0, 1, -110 );
--setRotateKey( spep_6-3 + 2, 1, -103.7 );
setRotateKey( spep_6-3 + 4, 1, -95.7 );
setRotateKey( spep_6-3 + 6, 1, -85.2 );
setRotateKey( spep_6-3 + 8, 1, -68.4 );
setRotateKey( spep_6-3 + 10, 1, -66.2 );
setRotateKey( spep_6-3 + 12, 1, -63.6 );
setRotateKey( spep_6-3 + 14, 1, -60.4 );
setRotateKey( spep_6-3 + 16, 1, -56.3 );
setRotateKey( spep_6-3 + 18, 1, -50 );

--SE
--斬る５
stopSe( spep_6 + 4, SE033, 26 );

--斬る６
SE036 = playSe( spep_6 + 0, 1142 );
SE037 = playSe( spep_6 + 0, 1032 );
SE038 = playSe( spep_6 + 0, 1061 );
SE039 = playSe( spep_6 + 0, 1235 );
setSeVolumeByWorkId( spep_6 + 0, SE039, 51 );
stopSe( spep_6 + 28, SE039, 26 );
setPitch( spep_6 + 0, SE039, -200 );
setTimeStretch( SE039, 0.87, 10, 1 );

--敵に飛びかかる
SE040 = playSe( spep_6 + 48, 1207 );
setSeVolumeByWorkId( spep_6 + 48, SE040, 0 );
setSeVolumeByWorkId( spep_6 + 49, SE040, 5 );
setSeVolumeByWorkId( spep_6 + 50, SE040, 10 );
setSeVolumeByWorkId( spep_6 + 51, SE040, 30 );
setSeVolumeByWorkId( spep_6 + 52, SE040, 55 );
setSeVolumeByWorkId( spep_6 + 53, SE040, 100 );
setStartTimeMs( SE040,  100 );
SE041 = playSe( spep_6 + 48, 1182 );
SE042 = playSe( spep_6 + 56, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 116;
------------------------------------------------------
-- 斬撃
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 120, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 120, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 120, finish_b, 255 );

--集中線
shuchusen10 = entryEffectLife( spep_7-3 + 8,  906, 104, 0x100, -1, 0, 223.7, 0 );
setEffShake( spep_7-3 + 8, shuchusen10, 104, 20 );
setEffMoveKey( spep_7-3 + 8, shuchusen10, 223.7, 0 , 0 );
setEffMoveKey( spep_7-3 + 112, shuchusen10, 223.7, 0 , 0 );

setEffScaleKey( spep_7-3 + 8, shuchusen10, 1.35, 1.05 );
setEffScaleKey( spep_7-3 + 112, shuchusen10, 1.35, 1.05 );

setEffRotateKey( spep_7-3 + 8, shuchusen10, 180 );
setEffRotateKey( spep_7-3 + 112, shuchusen10, 180 );

setEffAlphaKey( spep_7-3 + 8, shuchusen10, 255 );
setEffAlphaKey( spep_7-3 + 112, shuchusen10, 255 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );

changeAnime( spep_7 + 0, 1, 108 );
changeAnime( spep_7-3 + 8, 1, 105 );

setMoveKey( spep_7 + 0, 1, 65.8, -137.8 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 0.8, -162.9 , 0 );
setMoveKey( spep_7-3 + 4, 1, -64.1, -187.9 , 0 );
setMoveKey( spep_7-3 + 7, 1, -39, -193 , 0 );
setMoveKey( spep_7-3 + 8, 1, -13.9, -198 , 0 );
setMoveKey( spep_7-3 + 10, 1, -94.2, -119.5 , 0 );
setMoveKey( spep_7-3 + 12, 1, -107.1, -169.3 , 0 );
setMoveKey( spep_7-3 + 14, 1, -117.5, -209.5 , 0 );
setMoveKey( spep_7-3 + 16, 1, -75.5, -199 , 0 );
setMoveKey( spep_7-3 + 18, 1, -36.3, -189.2 , 0 );
setMoveKey( spep_7-3 + 20, 1, -41.4, -181.5 , 0 );
setMoveKey( spep_7-3 + 22, 1, -45.9, -174.6 , 0 );
setMoveKey( spep_7-3 + 24, 1, -36.7, -177.8 , 0 );
setMoveKey( spep_7-3 + 26, 1, -28.3, -180.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, -26.7, -178.9 , 0 );
setMoveKey( spep_7-3 + 30, 1, -25.2, -177.3 , 0 );
setMoveKey( spep_7-3 + 32, 1, -23.8, -175.8 , 0 );
setMoveKey( spep_7-3 + 34, 1, -22.4, -174.3 , 0 );
setMoveKey( spep_7-3 + 36, 1, -21.2, -173 , 0 );
setMoveKey( spep_7-3 + 38, 1, -20, -171.7 , 0 );
setMoveKey( spep_7-3 + 40, 1, -18.8, -170.4 , 0 );
setMoveKey( spep_7-3 + 42, 1, -17.7, -169.2 , 0 );
setMoveKey( spep_7-3 + 44, 1, -16.6, -168.1 , 0 );
setMoveKey( spep_7-3 + 46, 1, -15.6, -167 , 0 );
setMoveKey( spep_7-3 + 48, 1, -14.7, -166 , 0 );
setMoveKey( spep_7-3 + 50, 1, -13.7, -165 , 0 );
setMoveKey( spep_7-3 + 52, 1, -12.8, -164 , 0 );
setMoveKey( spep_7-3 + 54, 1, -12, -163.1 , 0 );
setMoveKey( spep_7-3 + 56, 1, -11.1, -162.2 , 0 );
setMoveKey( spep_7-3 + 58, 1, -10.3, -161.3 , 0 );
setMoveKey( spep_7-3 + 60, 1, -9.5, -160.4 , 0 );
setMoveKey( spep_7-3 + 62, 1, -8.8, -159.6 , 0 );
setMoveKey( spep_7-3 + 64, 1, -8, -158.8 , 0 );
setMoveKey( spep_7-3 + 66, 1, -7.3, -158.1 , 0 );
setMoveKey( spep_7-3 + 68, 1, -6.6, -157.3 , 0 );
setMoveKey( spep_7-3 + 70, 1, -6, -156.6 , 0 );
setMoveKey( spep_7-3 + 72, 1, -5.3, -155.9 , 0 );
setMoveKey( spep_7-3 + 74, 1, -4.7, -155.3 , 0 );
setMoveKey( spep_7-3 + 76, 1, -4.1, -154.6 , 0 );
setMoveKey( spep_7-3 + 78, 1, -3.5, -154 , 0 );
setMoveKey( spep_7-3 + 80, 1, -2.9, -153.4 , 0 );
setMoveKey( spep_7-3 + 82, 1, -2.4, -152.8 , 0 );
setMoveKey( spep_7-3 + 84, 1, -1.9, -152.2 , 0 );
setMoveKey( spep_7-3 + 86, 1, -1.3, -151.6 , 0 );
setMoveKey( spep_7-3 + 88, 1, -0.8, -151.1 , 0 );
setMoveKey( spep_7-3 + 90, 1, -0.3, -150.5 , 0 );
setMoveKey( spep_7-3 + 92, 1, 0.1, -150 , 0 );
setMoveKey( spep_7-3 + 94, 1, 0.6, -149.5 , 0 );
setMoveKey( spep_7-3 + 96, 1, 1, -149.1 , 0 );
setMoveKey( spep_7-3 + 98, 1, 1.5, -148.6 , 0 );
setMoveKey( spep_7-3 + 100, 1, 1.9, -148.2 , 0 );
setMoveKey( spep_7-3 + 102, 1, 2.3, -147.7 , 0 );
setMoveKey( spep_7-3 + 104, 1, 2.7, -147.3 , 0 );
setMoveKey( spep_7-3 + 106, 1, 3.1, -146.9 , 0 );
setMoveKey( spep_7-3 + 108, 1, 3.4, -146.5 , 0 );
setMoveKey( spep_7-3 + 110, 1, 3.8, -146.1 , 0 );
setMoveKey( spep_7-3 + 112, 1, 4.1, -145.8 , 0 );
setMoveKey( spep_7-3 + 114, 1, 4.4, -145.4 , 0 );
setMoveKey( spep_7-3 + 116, 1, 4.7, -145.1 , 0 );
setMoveKey( spep_7-3 + 118, 1, 4.9, -144.9 , 0 );

setScaleKey( spep_7 + 0, 1,  6.5,6.5);
setScaleKey( spep_7-3 + 4, 1, 5.2,5.2);
setScaleKey( spep_7-3 + 7, 1, 4.55,4.55);
setScaleKey( spep_7-3 + 8, 1, 3.9,3.9);
setScaleKey( spep_7-3 + 10, 1, 3.4,3.4);
setScaleKey( spep_7-3 + 12, 1, 3.54,3.54);
setScaleKey( spep_7-3 + 14, 1, 3.65,3.65);
setScaleKey( spep_7-3 + 16, 1, 3.62,3.62);
setScaleKey( spep_7-3 + 18, 1, 3.6,3.6);
setScaleKey( spep_7-3 + 20, 1, 3.54,3.54);
setScaleKey( spep_7-3 + 22, 1, 3.51,3.51);
setScaleKey( spep_7-3 + 24, 1, 3.47,3.47);
setScaleKey( spep_7-3 + 26, 1, 3.43,3.43);
setScaleKey( spep_7-3 + 28, 1, 3.39,3.39);
setScaleKey( spep_7-3 + 30, 1, 3.36,3.36);
setScaleKey( spep_7-3 + 32, 1, 3.34,3.34);
setScaleKey( spep_7-3 + 34, 1, 3.3,3.3);
setScaleKey( spep_7-3 + 36, 1, 3.27,3.27);
setScaleKey( spep_7-3 + 38, 1, 3.25,3.25);
setScaleKey( spep_7-3 + 40, 1, 3.23,3.23);
setScaleKey( spep_7-3 + 42, 1, 3.21,3.21);
setScaleKey( spep_7-3 + 44, 1, 3.18,3.18);
setScaleKey( spep_7-3 + 46, 1, 3.15,3.15);
setScaleKey( spep_7-3 + 48, 1, 3.14,3.14);
setScaleKey( spep_7-3 + 50, 1, 3.12,3.12);
setScaleKey( spep_7-3 + 52, 1, 3.1,3.1);
setScaleKey( spep_7-3 + 54, 1, 3.08,3.08);
setScaleKey( spep_7-3 + 56, 1, 3.06,3.06);
setScaleKey( spep_7-3 + 58, 1, 3.05,3.05);
setScaleKey( spep_7-3 + 60, 1, 3.04,3.04);
setScaleKey( spep_7-3 + 62, 1, 3.01,3.01);
setScaleKey( spep_7-3 + 64, 1, 3,3);
setScaleKey( spep_7-3 + 66, 1, 2.99,2.99);
setScaleKey( spep_7-3 + 68, 1, 2.97,2.97);
setScaleKey( spep_7-3 + 70, 1, 2.96,2.96);
setScaleKey( spep_7-3 + 72, 1, 2.95,2.95);
setScaleKey( spep_7-3 + 74, 1, 2.93,2.93);
setScaleKey( spep_7-3 + 76, 1, 2.92,2.92);
setScaleKey( spep_7-3 + 78, 1, 2.91,2.91);
setScaleKey( spep_7-3 + 80, 1, 2.89,2.89);
setScaleKey( spep_7-3 + 82, 1, 2.88,2.88);
setScaleKey( spep_7-3 + 84, 1, 2.87,2.87);
setScaleKey( spep_7-3 + 86, 1, 2.86,2.86);
setScaleKey( spep_7-3 + 88, 1, 2.84,2.84);
setScaleKey( spep_7-3 + 90, 1, 2.84,2.84);
setScaleKey( spep_7-3 + 92, 1, 2.83,2.83);
setScaleKey( spep_7-3 + 94, 1, 2.82,2.82);
setScaleKey( spep_7-3 + 96, 1, 2.8,2.8);
setScaleKey( spep_7-3 + 98, 1, 2.8,2.8);
setScaleKey( spep_7-3 + 100, 1,2.79,2.79);
setScaleKey( spep_7-3 + 102, 1,2.78,2.78);
setScaleKey( spep_7-3 + 104, 1,2.78,2.78);
setScaleKey( spep_7-3 + 106, 1,2.76,2.76);
setScaleKey( spep_7-3 + 108, 1,2.76,2.76);
setScaleKey( spep_7-3 + 110, 1,2.75,2.75);
setScaleKey( spep_7-3 + 112, 1,2.74,2.74);
setScaleKey( spep_7-3 + 114, 1,2.74,2.74);
setScaleKey( spep_7-3 + 118, 1,2.73,2.73);

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7-3 + 118, 1, 0 );

--SE
--ラスト斬る
SE043 = playSe( spep_7 + 0, 1003 );
SE044 = playSe( spep_7 + 8, 1235 );
setSeVolumeByWorkId( spep_7 + 8, SE044, 63 );
setPitch( spep_7 + 8, SE044, -200 );
setTimeStretch( SE044, 0.87, 10, 1 );
SE045 = playSe( spep_7 + 8, 1142 );
SE046 = playSe( spep_7 + 8, 1032 );
SE047 = playSe( spep_7 + 8, 1061 );
setSeVolumeByWorkId( spep_7 + 8, SE047, 59 );
SE048 = playSe( spep_7 + 12, 1143 );
setSeVolumeByWorkId( spep_7 + 12, SE048, 65 );
SE049 = playSe( spep_7 + 20, 1109 );
setSeVolumeByWorkId( spep_7 + 20, SE049, 0 );
setSeVolumeByWorkId( spep_7 + 21, SE049, 15 );
setSeVolumeByWorkId( spep_7 + 22, SE049, 30 );
setSeVolumeByWorkId( spep_7 + 23, SE049, 45 );
setSeVolumeByWorkId( spep_7 + 24, SE049, 60 );
setSeVolumeByWorkId( spep_7 + 25, SE049, 75 );
setSeVolumeByWorkId( spep_7 + 26, SE049, 90 );
setSeVolumeByWorkId( spep_7 + 27, SE049, 105 );
setSeVolumeByWorkId( spep_7 + 28, SE049, 120 );
setStartTimeMs( SE049,  117 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 0 );
endPhase( spep_7 + 110 );
end