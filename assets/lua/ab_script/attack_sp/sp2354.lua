--1024050:ラディッツ_ウィークエンド
--sp_effect_b4_00226

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
SP_01=	159497	;--	両手に気を溜める
SP_02=	159498	;--	両手に気を溜める
SP_03=	159499	;--	気功波を撃つ〜敵に着弾
SP_04=	159500	;--	気功波を撃つ〜敵に着弾
SP_05=	159501	;--	遠くで爆発

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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
--両手に気を溜める
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 214, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 214, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 214, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 214, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 214, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 214, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 214, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 214, tame_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +118;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
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
]]

--SE
--飛び上がる
SE001 = playSeVer2( spep_0 + 0, 1207, "",spep_0 + 112, 0, 46, -1);
SE002 = playSeVer2( spep_0 + 16, 44, "", 0, 0, 0, -1);

--腕あげる
SE003 = playSeVer2( spep_0 + 62, 1004, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜める
SE005 = playSeVer2( spep_0 + 138, 1296, "",spep_0 + 224, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 138, 1281, "",spep_0 + 224, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 138, SE006, 61 );
SE007 = playSeVer2( spep_0 + 138, 1273, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 138, 1240, "",spep_0 + 224, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 138, SE008, 166 );
setPitch( spep_0 + 138, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 216, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 +206 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 =spep_0 +214 ;
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
entryFadeBg( spep_1 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--気功波を撃つ〜敵に着弾
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 176, beam_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_f, 0 );
setEffRotateKey( spep_2 + 176, beam_f, 0 );
setEffAlphaKey( spep_2 + 0, beam_f, 255 );
setEffAlphaKey( spep_2 + 174, beam_f, 255 );
setEffAlphaKey( spep_2 + 175, beam_f, 255 );
setEffAlphaKey( spep_2 + 176, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 176, beam_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_b, 0 );
setEffRotateKey( spep_2 + 176, beam_b, 0 );
setEffAlphaKey( spep_2 + 0, beam_b, 255 );
setEffAlphaKey( spep_2 + 174, beam_b, 255 );
setEffAlphaKey( spep_2 + 175, beam_b, 255 );
setEffAlphaKey( spep_2 + 176, beam_b, 0 );


--SE
--気弾発射
SE010 = playSeVer2( spep_2 + 14, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE010, 67 );
SE011 = playSeVer2( spep_2 + 14, 1146, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 16, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE012, 224 );
setPitch( spep_2 + 16, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );
SE013 = playSeVer2( spep_2 + 16, 1213, "",spep_2 + 268, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 16, SE013, 74 );

--気弾飛んでいく
SE014 = playSeVer2( spep_2 + 52, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 52, SE014, 166 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 74; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    
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
setDisp( spep_2-3 + 84, 1, 1);
setDisp( spep_2-3 + 118, 1, 0);

changeAnime( spep_2-3 + 84, 1, 4);
changeAnime( spep_2-3 + 112, 1, 6);

setAlphaKey( spep_2-3 + 84, 1, 255 );
setAlphaKey( spep_2-3 + 111, 1, 255 );
setAlphaKey( spep_2-3 + 112, 1, 77 );
setAlphaKey( spep_2-3 + 118, 1, 77 );
setAlphaKey( spep_2 + 118, 1, 255 );

setMoveKey( spep_2-3 + 84, 1, 120.5, -622.5 , 0 );
setMoveKey( spep_2-3 + 86, 1, 72.9, -520.2 , 0 );
setMoveKey( spep_2-3 + 88, 1, 30.3, -428.6 , 0 );
setMoveKey( spep_2-3 + 90, 1, -7.3, -347.9 , 0 );
setMoveKey( spep_2-3 + 92, 1, -39.9, -277.9 , 0 );
setMoveKey( spep_2-3 + 94, 1, -67.5, -218.7 , 0 );
setMoveKey( spep_2-3 + 96, 1, -90.1, -170.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, -107.6, -132.5 , 0 );
setMoveKey( spep_2-3 + 100, 1, -120.1, -105.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, -127.7, -89.5 , 0 );
setMoveKey( spep_2-3 + 104, 1, -130.2, -84.1 , 0 );
setMoveKey( spep_2-3 + 106, 1, -130.2, -84.1 , 0 );
setMoveKey( spep_2-3 + 108, 1, -74.4, -45.2 , 0 );

setMoveKey( spep_2-3 + 112, 1, -74, -44.7 , 0 );
setMoveKey( spep_2-3 + 118, 1, -74, -44.7 , 0 );

setScaleKey( spep_2-3 + 84, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 86, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 88, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 90, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 92, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 94, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 96, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 98, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 100, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 106, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 108, 1, 2.67, 2.67 );
setScaleKey( spep_2-3 + 118, 1, 2.67, 2.67 );

setRotateKey( spep_2-3 + 84, 1, -27.1 );
setRotateKey( spep_2-3 + 86, 1, -26.9 );
setRotateKey( spep_2-3 + 88, 1, -26.7 );
setRotateKey( spep_2-3 + 90, 1, -26.5 );
setRotateKey( spep_2-3 + 92, 1, -26.4 );
setRotateKey( spep_2-3 + 94, 1, -26.3 );
setRotateKey( spep_2-3 + 96, 1, -26.2 );
setRotateKey( spep_2-3 + 98, 1, -26.1 );
setRotateKey( spep_2-3 + 100, 1, -26 );
setRotateKey( spep_2-3 + 106, 1, -26 );
setRotateKey( spep_2-3 + 108, 1, -22 );
setRotateKey( spep_2-3 + 111, 1, -22 );
setRotateKey( spep_2-3 + 112, 1, 24 );
setRotateKey( spep_2-3 + 118, 1, 24 );

--SE
--敵飲み込まれる
SE015 = playSeVer2( spep_2 + 106, 1017, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 106, 1021, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 106, 1161, "",spep_2 + 230, 0, 54, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 176;
------------------------------------------------------
--遠くで爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 194, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 194, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 194, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 194, finish, 255 );

--SE
--気弾と共に飛んでいく
SE018 = playSeVer2( spep_3 + 0, 1277, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_3 + 0, SE018, 184 );
SE019 = playSeVer2( spep_3 + 0, 1145, "",spep_3 + 94, 0, 66, 0.7);

--爆発
SE020 = playSeVer2( spep_3 + 60, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE020, 68 );
SE021 = playSeVer2( spep_3 + 84, 1188, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 84, 1024, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_3+60);
endPhase( spep_3 + 184 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--両手に気を溜める
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 214, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 214, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 214, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 214, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 214, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 214, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 214, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 214, tame_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +118;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
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
]]

--SE
--飛び上がる
SE001 = playSeVer2( spep_0 + 0, 1207, "",spep_0 + 112, 0, 46, -1);
SE002 = playSeVer2( spep_0 + 16, 44, "", 0, 0, 0, -1);

--腕あげる
SE003 = playSeVer2( spep_0 + 62, 1004, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜める
SE005 = playSeVer2( spep_0 + 138, 1296, "",spep_0 + 224, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 138, 1281, "",spep_0 + 224, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 138, SE006, 61 );
SE007 = playSeVer2( spep_0 + 138, 1273, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 138, 1240, "",spep_0 + 224, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 138, SE008, 166 );
setPitch( spep_0 + 138, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 216, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 +206 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 =spep_0 +214 ;
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
entryFadeBg( spep_1 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--気功波を撃つ〜敵に着弾
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 176, beam_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 176, beam_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_f, 0 );
setEffRotateKey( spep_2 + 176, beam_f, 0 );
setEffAlphaKey( spep_2 + 0, beam_f, 255 );
setEffAlphaKey( spep_2 + 174, beam_f, 255 );
setEffAlphaKey( spep_2 + 175, beam_f, 255 );
setEffAlphaKey( spep_2 + 176, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 176, beam_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, beam_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 176, beam_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_b, 0 );
setEffRotateKey( spep_2 + 176, beam_b, 0 );
setEffAlphaKey( spep_2 + 0, beam_b, 255 );
setEffAlphaKey( spep_2 + 174, beam_b, 255 );
setEffAlphaKey( spep_2 + 175, beam_b, 255 );
setEffAlphaKey( spep_2 + 176, beam_b, 0 );

--SE
--気弾発射
SE010 = playSeVer2( spep_2 + 14, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE010, 67 );
SE011 = playSeVer2( spep_2 + 14, 1146, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 16, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE012, 224 );
setPitch( spep_2 + 16, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );
SE013 = playSeVer2( spep_2 + 16, 1213, "",spep_2 + 268, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 16, SE013, 74 );

--気弾飛んでいく
SE014 = playSeVer2( spep_2 + 52, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 52, SE014, 166 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 74; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    
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
setDisp( spep_2-3 + 84, 1, 1);
setDisp( spep_2-3 + 118, 1, 0);

changeAnime( spep_2-3 + 84, 1, 104);
changeAnime( spep_2-3 + 112, 1, 106);

setAlphaKey( spep_2-3 + 84, 1, 255 );
setAlphaKey( spep_2-3 + 111, 1, 255 );
setAlphaKey( spep_2-3 + 112, 1, 77 );
setAlphaKey( spep_2-3 + 118, 1, 77 );
setAlphaKey( spep_2 + 118, 1, 255 );

setMoveKey( spep_2-3 + 84, 1, -120.5, -622.5 , 0 );
setMoveKey( spep_2-3 + 86, 1, -72.9, -520.2 , 0 );
setMoveKey( spep_2-3 + 88, 1, -30.3, -428.6 , 0 );
setMoveKey( spep_2-3 + 90, 1, 7.3, -347.9 , 0 );
setMoveKey( spep_2-3 + 92, 1, 39.9, -277.9 , 0 );
setMoveKey( spep_2-3 + 94, 1, 67.5, -218.7 , 0 );
setMoveKey( spep_2-3 + 96, 1, 90.1, -170.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, 107.6, -132.5 , 0 );
setMoveKey( spep_2-3 + 100, 1, 120.1, -105.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, 127.7, -89.5 , 0 );
setMoveKey( spep_2-3 + 104, 1, 130.2, -84.1 , 0 );
setMoveKey( spep_2-3 + 106, 1, 130.2, -84.1 , 0 );
setMoveKey( spep_2-3 + 108, 1, 74.4, -45.2 , 0 );

setMoveKey( spep_2-3 + 112, 1, 74, -44.7 , 0 );
setMoveKey( spep_2-3 + 118, 1, 74, -44.7 , 0 );

setScaleKey( spep_2-3 + 84, 1, 1.49, 1.49 );
setScaleKey( spep_2-3 + 86, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 88, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 90, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 92, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 94, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 96, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 98, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 100, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 106, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 108, 1, 2.67, 2.67 );
setScaleKey( spep_2-3 + 118, 1, 2.67, 2.67 );

setRotateKey( spep_2-3 + 84, 1, 27.1 );
setRotateKey( spep_2-3 + 86, 1, 26.9 );
setRotateKey( spep_2-3 + 88, 1, 26.7 );
setRotateKey( spep_2-3 + 90, 1, 26.5 );
setRotateKey( spep_2-3 + 92, 1, 26.4 );
setRotateKey( spep_2-3 + 94, 1, 26.3 );
setRotateKey( spep_2-3 + 96, 1, 26.2 );
setRotateKey( spep_2-3 + 98, 1, 26.1 );
setRotateKey( spep_2-3 + 100, 1, 26 );
setRotateKey( spep_2-3 + 106, 1, 26 );
setRotateKey( spep_2-3 + 108, 1, 22 );
setRotateKey( spep_2-3 + 111, 1, 22 );
setRotateKey( spep_2-3 + 112, 1, -24 );
setRotateKey( spep_2-3 + 118, 1, -24 );

--SE
--敵飲み込まれる
SE015 = playSeVer2( spep_2 + 106, 1017, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 106, 1021, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 106, 1161, "",spep_2 + 230, 0, 54, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3= spep_2 + 176;
------------------------------------------------------
--遠くで爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 194, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_3 + 194, finish, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 194, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 194, finish, 255 );

--SE
--気弾と共に飛んでいく
SE018 = playSeVer2( spep_3 + 0, 1277, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_3 + 0, SE018, 184 );
SE019 = playSeVer2( spep_3 + 0, 1145, "",spep_3 + 94, 0, 66, 0.7);

--爆発
SE020 = playSeVer2( spep_3 + 60, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE020, 68 );
SE021 = playSeVer2( spep_3 + 84, 1188, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 84, 1024, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_3+60);
endPhase( spep_3 + 184 );
end