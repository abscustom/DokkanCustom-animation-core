--1023050:SSR超サイヤ人孫悟空_乱調メテオスマッシュ_sp2273
--sp_effect_a1_00320

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
SP_01 = 158497;  --顔アップ、オーラ発生  ef_001
SP_02 = 158498;  --正面突進    ef_002
SP_03 = 158499;  --背後登場、蹴り飛ばし：キャラ、文字   ef_003
SP_04 = 158500;  --背後登場、蹴り飛ばし背景    ef_004
SP_05 = 158501;  --空中戦：エフェクト   ef_005
SP_06 = 158502;  --空中戦：キャラ ef_006
SP_07 = 158503;  --空中戦：背景  ef_007
SP_08 = 158504;  --蹴り落とし：エフェクト文字   ef_008
SP_09 = 158505;  --蹴り落とし：キャラ   ef_009
SP_10 = 158506;  --蹴り落とし：背景    ef_010

--敵側
SP_03r = 158507;    --背後登場、蹴り飛ばし：反転 ef_003_r
SP_08r = 158508;    --蹴り落としエフェクト文字：反転    ef_008_r
SP_05r = 158533;    --空中戦：エフェクト：反転

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
-- 顔アップ、オーラ発生(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --顔アップ、オーラ発生   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 76, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 76, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 50, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 51 );
SE002 = playSeVer2( spep_0 + 0, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );

--気ダメ
SE003 = playSeVer2( spep_0 +34, 1035, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);

--空力音
SE006 = playSeVer2( spep_0 + 74, 1278, "",spep_0 +74 +156 + 72, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 74 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;


------------------------------------------------------
-- 正面突進(156F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
rush = entryEffectLife( spep_1 + 0, SP_02, 156, 0x100, -1, 0, 0, 0 );  --正面突進   ef_002
setEffMoveKey( spep_1 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, rush, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 156, rush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 156, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 156 -1, rush, 255 );
setEffAlphaKey( spep_1 + 156, rush, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_1 + 16, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 40, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 64, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 88, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 112, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 140 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
   
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
--突っ込んでくる
SE013 = playSeVer2( spep_1 + 132, 1182, "",spep_1 +156 + 16, 0, 18, -1);
SE014 = playSeVer2( spep_1 + 132, 9, "",spep_1 +156 + 16, 0, 18, -1);

--瞬間移動
SE015 = playSeVer2( spep_1 + 152, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 156;


------------------------------------------------------
-- 背後登場、蹴り飛ばし背景(176F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_2 + 0, SP_03, 176, 0x100, -1, 0, 0, 0 );  --背後登場、蹴り飛ばし：キャラ、文字    ef_003
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 176, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 176 -1, kick_f, 255 );
setEffAlphaKey( spep_2 + 176, kick_f, 0 );

kidk_b = entryEffectLife( spep_2 + 0, SP_04, 176, 0x80, -1, 0, 0, 0 );  --背後登場、蹴り飛ばし背景  ef_004
setEffMoveKey( spep_2 + 0, kidk_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, kidk_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kidk_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, kidk_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidk_b, 0 );
setEffRotateKey( spep_2 + 176, kidk_b, 0 );
setEffAlphaKey( spep_2 + 0, kidk_b, 255 );
setEffAlphaKey( spep_2 + 176 -1, kidk_b, 255 );
setEffAlphaKey( spep_2 + 176, kidk_b, 0 );

-- ** 書き文字エントリー ** --
ctsyun1 = entryEffectLife( spep_2 + 0,  10011, 22 -1, 0x100, -1, 0, 141.7, -140.2 ); --シュンッ
setEffMoveKey( spep_2 + 0, ctsyun1, 141.7, -140.2 , 0 );
setEffMoveKey( spep_2 -3 + 4, ctsyun1, 141.7, -83.4 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctsyun1, 141.7, -81.3 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctsyun1, 141.7, -79.2 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctsyun1, 141.7, -77 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctsyun1, 141.7, -74.9 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctsyun1, 141.7, -72.8 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctsyun1, 141.7, -70.7 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctsyun1, 141.7, -68.5 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctsyun1, 141.7, -66.4 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctsyun1, 141.7, -6.5 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctsyun1, 141.7, 53.2 , 0 );

setEffScaleKey( spep_2 + 0, ctsyun1, 1.37, 1.36 );
setEffScaleKey( spep_2 -3 + 4, ctsyun1, 1.44, 1.43 );
setEffScaleKey( spep_2 -3 + 20, ctsyun1, 1.44, 1.43 );
setEffScaleKey( spep_2 -3 + 22, ctsyun1, 1.8, 1.79 );
setEffScaleKey( spep_2 -3 + 24, ctsyun1, 2.17, 2.15 );

setEffRotateKey( spep_2 + 0, ctsyun1, 0 );
setEffRotateKey( spep_2 -3 + 24, ctsyun1, 0 );

setEffAlphaKey( spep_2 + 0, ctsyun1, 128 );
setEffAlphaKey( spep_2 -3 + 4, ctsyun1, 255 );
setEffAlphaKey( spep_2 -3 + 20, ctsyun1, 255 );
setEffAlphaKey( spep_2 -3 + 22, ctsyun1, 128 );
setEffAlphaKey( spep_2 -3 + 24, ctsyun1, 0 );

-- ** 書き文字エントリー ** --
ctsyun2 = entryEffectLife( spep_2 -3 + 68,  10011, 20, 0x100, -1, 0, -131.3, -101.2 );
setEffMoveKey( spep_2 -3 + 68, ctsyun2, -131.3, -101.2 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctsyun2, -131.3, -44.4 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctsyun2, -131.3, -42 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctsyun2, -131.3, -39.6 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctsyun2, -131.3, -37.1 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctsyun2, -131.3, -34.7 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctsyun2, -131.3, -32.3 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctsyun2, -131.3, -29.8 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctsyun2, -131.3, -27.4 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctsyun2, -131.3, 32.4 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctsyun2, -131.3, 92.2 , 0 );

setEffScaleKey( spep_2 -3 + 68, ctsyun2, 1.37, 1.36 );
setEffScaleKey( spep_2 -3 + 70, ctsyun2, 1.44, 1.43 );
setEffScaleKey( spep_2 -3 + 84, ctsyun2, 1.44, 1.43 );
setEffScaleKey( spep_2 -3 + 86, ctsyun2, 1.8, 1.79 );
setEffScaleKey( spep_2 -3 + 88, ctsyun2, 2.17, 2.15 );

setEffRotateKey( spep_2 -3 + 68, ctsyun2, 0 );
setEffRotateKey( spep_2 -3 + 88, ctsyun2, 0 );

setEffAlphaKey( spep_2 -3 + 68, ctsyun2, 128 );
setEffAlphaKey( spep_2 -3 + 70, ctsyun2, 255 );
setEffAlphaKey( spep_2 -3 + 84, ctsyun2, 255 );
setEffAlphaKey( spep_2 -3 + 86, ctsyun2, 128 );
setEffAlphaKey( spep_2 -3 + 88, ctsyun2, 0 );

-- ** 書き文字エントリー ** --
ctbaki1 = entryEffectLife( spep_2 -3 + 42,  10020, 16, 0x100, -1, 0, -79.1, 188.8 ); --バキッ
setEffMoveKey( spep_2 -3 + 42, ctbaki1, -79.1, 188.8 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctbaki1, -82.4, 206.7 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctbaki1, -67.3, 211.2 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctbaki1, -79, 219.1 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctbaki1, -67.1, 209.8 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctbaki1, -79.2, 217.9 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctbaki1, -66.9, 208.4 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctbaki1, -79.6, 232.1 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctbaki1, -79.9, 246.9 , 0 );

setEffScaleKey( spep_2 -3 + 42, ctbaki1, 1, 1 );
setEffScaleKey( spep_2 -3 + 44, ctbaki1, 1.35, 1.35 );
setEffScaleKey( spep_2 -3 + 46, ctbaki1, 1.7, 1.7 );
setEffScaleKey( spep_2 -3 + 48, ctbaki1, 1.72, 1.72 );
setEffScaleKey( spep_2 -3 + 50, ctbaki1, 1.75, 1.75 );
setEffScaleKey( spep_2 -3 + 52, ctbaki1, 1.77, 1.77 );
setEffScaleKey( spep_2 -3 + 54, ctbaki1, 1.8, 1.8 );
setEffScaleKey( spep_2 -3 + 56, ctbaki1, 1.97, 1.97 );
setEffScaleKey( spep_2 -3 + 58, ctbaki1, 2.15, 2.15 );

setEffRotateKey( spep_2 -3 + 42, ctbaki1, -9 );
setEffRotateKey( spep_2 -3 + 58, ctbaki1, -9 );

setEffAlphaKey( spep_2 -3 + 42, ctbaki1, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctbaki1, 255 );
setEffAlphaKey( spep_2 -3 + 56, ctbaki1, 128 );
setEffAlphaKey( spep_2 -3 + 58, ctbaki1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 63, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 -3 + 42, 1, 105 );

setMoveKey( spep_2 + 0, 1, -37.4, 17.7 , 0 );
setMoveKey( spep_2 + 1, 1, -34.3, 13.5 , 0 );
setMoveKey( spep_2 + 2, 1, -31.6, 9.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -29.3, 6.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -27.3, 4.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -25.7, 1.9 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -24.5, 0.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -23.6, -1.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -23, -1.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -22.9, -2 , 0 );
setMoveKey( spep_2 -3 + 41, 1, -22.9, -2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -78, 29.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -95.4, 31.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -141.6, 37 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -211.9, 26.5 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -269.3, 25.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -323.5, 31.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -379.3, 33.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -435.2, 35.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -491, 38.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -546.8, 40.5 , 0 );
setMoveKey( spep_2 -3 + 63, 1, -602.7, 42.8 , 0 );

setScaleKey( spep_2 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 1, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 2, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 6, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 8, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 10, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 12, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 14, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 16, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 41, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 42, 1, 1.705, 1.705 );
setScaleKey( spep_2 -3 + 44, 1, 1.573, 1.573 );
setScaleKey( spep_2 -3 + 46, 1, 1.452, 1.452 );
setScaleKey( spep_2 -3 + 48, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 50, 1, 1.199, 1.199 );
setScaleKey( spep_2 -3 + 52, 1, 1.067, 1.067 );
setScaleKey( spep_2 -3 + 54, 1, 0.946, 0.946 );
setScaleKey( spep_2 -3 + 56, 1, 0.814, 0.814 );
setScaleKey( spep_2 -3 + 58, 1, 0.693, 0.693 );
setScaleKey( spep_2 -3 + 60, 1, 0.561, 0.561 );
setScaleKey( spep_2 -3 + 63, 1, 0.440, 0.440 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 41, 1, 0 );
setRotateKey( spep_2 -3 + 42, 1, -52.3 );
setRotateKey( spep_2 -3 + 54, 1, -52.3 );
setRotateKey( spep_2 -3 + 56, 1, -52.4 );
setRotateKey( spep_2 -3 + 63, 1, -52.4 );

setDisp( spep_2 -3 + 86, 1, 1 );
setDisp( spep_2 -3 + 179, 1, 0 );
changeAnime( spep_2 -3 + 86, 1, 106 );
changeAnime( spep_2 -3 + 134, 1, 108 );

setMoveKey( spep_2 -3 + 86, 1, 767.9, 65.6 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 692.6, 65.6 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 617.3, 65.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 542, 65.6 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 466.8, 65.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 391.5, 65.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 316.2, 65.6 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 240.9, 65.6 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 165.6, 65.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 163.1, 66.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 165.6, 65.6 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 165.9, 67.9 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 164.6, 67.1 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 166.5, 72.8 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 165.2, 72.2 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 167.1, 78 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 167.3, 80.6 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 167.6, 83.4 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 167.8, 86.2 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 168, 89.1 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 168.2, 92 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 168.4, 95 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 168.6, 98.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 168.8, 101.2 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 168.8, 101.2 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 96.2, -70.7 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 110.5, -101.6 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 89.2, -109.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 120.6, -80.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 157.4, -122.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 123.3, -102.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 134.6, -85.6 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 133.9, -86.6 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 138.2, -71.6 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 141.1, -53.3 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 148.9, -18.9 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 155.2, 19 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 166.7, 73.2 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 176.9, 131.1 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 192.2, 205.6 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 204.6, 274.1 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 218.5, 339.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 227.5, 389.1 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 238, 435.5 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 243.4, 465.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 250.1, 492.5 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 251.8, 503 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 254.8, 509.9 , 0 );
setMoveKey( spep_2 -3 + 179, 1, 254.8, 509.9 , 0 );

setScaleKey( spep_2 -3 + 86, 1, 1.815, 1.815 );
setScaleKey( spep_2 -3 + 102, 1, 1.815, 1.815 );
setScaleKey( spep_2 -3 + 104, 1, 1.738, 1.804 );
setScaleKey( spep_2 -3 + 106, 1, 1.815, 1.815 );
setScaleKey( spep_2 -3 + 133, 1, 1.815, 1.815 );
setScaleKey( spep_2 -3 + 134, 1, 3.19, 3.19 );
setScaleKey( spep_2 -3 + 136, 1, 3.432, 3.432 );
setScaleKey( spep_2 -3 + 138, 1, 3.663, 3.663 );
setScaleKey( spep_2 -3 + 140, 1, 3.905, 3.905 );
setScaleKey( spep_2 -3 + 142, 1, 4.147, 4.147 );
setScaleKey( spep_2 -3 + 144, 1, 4.158, 4.158 );
setScaleKey( spep_2 -3 + 146, 1, 4.169, 4.169 );
setScaleKey( spep_2 -3 + 148, 1, 4.147, 4.147 );
setScaleKey( spep_2 -3 + 150, 1, 4.059, 4.059 );
setScaleKey( spep_2 -3 + 152, 1, 3.916, 3.916 );
setScaleKey( spep_2 -3 + 154, 1, 3.707, 3.707 );
setScaleKey( spep_2 -3 + 156, 1, 3.432, 3.432 );
setScaleKey( spep_2 -3 + 158, 1, 3.091, 3.091 );
setScaleKey( spep_2 -3 + 160, 1, 2.695, 2.695 );
setScaleKey( spep_2 -3 + 162, 1, 2.222, 2.222 );
setScaleKey( spep_2 -3 + 164, 1, 1.760, 1.760 );
setScaleKey( spep_2 -3 + 166, 1, 1.353, 1.353 );
setScaleKey( spep_2 -3 + 168, 1, 1.012, 1.012 );
setScaleKey( spep_2 -3 + 170, 1, 0.726, 0.726 );
setScaleKey( spep_2 -3 + 172, 1, 0.506, 0.506 );
setScaleKey( spep_2 -3 + 174, 1, 0.352, 0.352 );
setScaleKey( spep_2 -3 + 176, 1, 0.253, 0.253 );
setScaleKey( spep_2 -3 + 178, 1, 0.220, 0.220 );
setScaleKey( spep_2 -3 + 179, 1, 0.220, 0.220 );

setRotateKey( spep_2 -3 + 86, 1, -150 );
setRotateKey( spep_2 -3 + 102, 1, -150 );
setRotateKey( spep_2 -3 + 104, 1, -150.2 );
setRotateKey( spep_2 -3 + 106, 1, -150 );
setRotateKey( spep_2 -3 + 108, 1, -149.4 );
setRotateKey( spep_2 -3 + 110, 1, -148.8 );
setRotateKey( spep_2 -3 + 112, 1, -148.2 );
setRotateKey( spep_2 -3 + 114, 1, -147.5 );
setRotateKey( spep_2 -3 + 116, 1, -146.9 );
setRotateKey( spep_2 -3 + 118, 1, -146.3 );
setRotateKey( spep_2 -3 + 120, 1, -145.7 );
setRotateKey( spep_2 -3 + 122, 1, -145.1 );
setRotateKey( spep_2 -3 + 124, 1, -144.5 );
setRotateKey( spep_2 -3 + 126, 1, -143.8 );
setRotateKey( spep_2 -3 + 128, 1, -143.2 );
setRotateKey( spep_2 -3 + 130, 1, -142.6 );
setRotateKey( spep_2 -3 + 132, 1, -142 );
setRotateKey( spep_2 -3 + 133, 1, -142 );
setRotateKey( spep_2 -3 + 134, 1, -10 );
setRotateKey( spep_2 -3 + 136, 1, -9.9 );
setRotateKey( spep_2 -3 + 138, 1, -9.8 );
setRotateKey( spep_2 -3 + 140, 1, -9.5 );
setRotateKey( spep_2 -3 + 142, 1, -9.1 );
setRotateKey( spep_2 -3 + 144, 1, -8.6 );
setRotateKey( spep_2 -3 + 146, 1, -8 );
setRotateKey( spep_2 -3 + 178, 1, -8 );
setRotateKey( spep_2 -3 + 179, 1, -8 );

-- ** 音 ** --
--瞬間移動
SE020 = playSeVer2( spep_2 + 62, 1109, "", 0, 0, 0, -1);

--肘打ち
SE016 = playSeVer2( spep_2 + 34, 1189, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 40, 1012, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 40, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE018, 86 );
SE019 = playSeVer2( spep_2 + 42, 1110, "", 0, 0, 0, -1);

--敵止める
SE021 = playSeVer2( spep_2 + 94, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE021, 91 );
SE022 = playSeVer2( spep_2 + 94, 1012, "", 0, 0, 0, -1);

--振りかぶる
SE023 = playSeVer2( spep_2 + 112, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 112, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE024, 81 );

--蹴り上げる
SE025 = playSeVer2( spep_2 + 128, 1120, "", 0, 0, 0, -1);

--飛び上がる
SE026 = playSeVer2( spep_2 + 174, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 174, 1167, "",spep_2 +176 + 36, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 174, SE027, 54 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 176;


------------------------------------------------------
-- 空中戦(88F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
antenna_f = entryEffectLife( spep_3 + 0, SP_05, 88, 0x100, -1, 0, 0, 0 );  --空中戦：エフェクト文字    ef_005
setEffMoveKey( spep_3 + 0, antenna_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, antenna_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, antenna_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, antenna_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, antenna_f, 0 );
setEffRotateKey( spep_3 + 88, antenna_f, 0 );
setEffAlphaKey( spep_3 + 0, antenna_f, 255 );
setEffAlphaKey( spep_3 + 88 -1, antenna_f, 255 );
setEffAlphaKey( spep_3 + 88, antenna_f, 0 );

antenna_e = entryEffectLife( spep_3 + 0, SP_07, 88, 0x80, -1, 0, 0, 0 );  --空中戦：背景 ef_007
setEffMoveKey( spep_3 + 0, antenna_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, antenna_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, antenna_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, antenna_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, antenna_e, 0 );
setEffRotateKey( spep_3 + 88, antenna_e, 0 );
setEffAlphaKey( spep_3 + 0, antenna_e, 255 );
setEffAlphaKey( spep_3 + 88 -1, antenna_e, 255 );
setEffAlphaKey( spep_3 + 88, antenna_e, 0 );

antenna_b = entryEffectLife( spep_3 + 0, SP_06, 88, 0x80, -1, 0, 0, 0 );  --空中戦：キャラ    ef_006
setEffMoveKey( spep_3 + 0, antenna_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, antenna_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, antenna_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, antenna_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, antenna_b, 0 );
setEffRotateKey( spep_3 + 88, antenna_b, 0 );
setEffAlphaKey( spep_3 + 0, antenna_b, 255 );
setEffAlphaKey( spep_3 + 88 -1, antenna_b, 255 );
setEffAlphaKey( spep_3 + 88, antenna_b, 0 );

-- ** 書き文字エントリー ** --
ctbaki2 = entryEffectLife( spep_3 -3 + 36,  10020, 16, 0x100, -1, 0, 47.8, 292.2 );  --バキッ
setEffMoveKey( spep_3 -3 + 36, ctbaki2, 47.8, 292.2 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctbaki2, 70.9, 308.8 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctbaki2, 101.7, 304 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctbaki2, 96.5, 317.2 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctbaki2, 101.1, 302.8 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctbaki2, 95.8, 316.3 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctbaki2, 100.5, 301.5 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctbaki2, 103.5, 328.2 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctbaki2, 111.6, 340.6 , 0 );
setEffScaleKey( spep_3 -3 + 36, ctbaki2, 1, 1 );
setEffScaleKey( spep_3 -3 + 38, ctbaki2, 1.35, 1.35 );
setEffScaleKey( spep_3 -3 + 40, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 42, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_3 -3 + 44, ctbaki2, 1.75, 1.75 );
setEffScaleKey( spep_3 -3 + 46, ctbaki2, 1.77, 1.77 );
setEffScaleKey( spep_3 -3 + 48, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 50, ctbaki2, 1.97, 1.97 );
setEffScaleKey( spep_3 -3 + 52, ctbaki2, 2.15, 2.15 );
setEffRotateKey( spep_3 -3 + 36, ctbaki2, 25.5 );
setEffRotateKey( spep_3 -3 + 52, ctbaki2, 25.5 );
setEffAlphaKey( spep_3 -3 + 36, ctbaki2, 255 );
setEffAlphaKey( spep_3 -3 + 48, ctbaki2, 255 );
setEffAlphaKey( spep_3 -3 + 50, ctbaki2, 128 );
setEffAlphaKey( spep_3 -3 + 52, ctbaki2, 0 );

-- ** 書き文字エントリー ** --
ctdogaga = entryEffectLife( spep_3 -3 + 60,  10017, 28 +2, 0x100, -1, 0, 8.7, 308.1 );  --ドガガガッ
setEffMoveKey( spep_3 -3 + 60, ctdogaga, 8.7, 308.1 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctdogaga, 3.7, 315.1 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctdogaga, 8.9, 310.4 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctdogaga, 3.8, 317.5 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctdogaga, 9.1, 312.8 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctdogaga, 4, 319.9 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctdogaga, 9.3, 315.2 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctdogaga, 4.2, 322.3 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctdogaga, 9.5, 317.6 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctdogaga, 4.4, 324.7 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctdogaga, 9.7, 319.9 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctdogaga, 4.5, 327.1 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctdogaga, 9.9, 322.3 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctdogaga, 4.7, 329.5 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctdogaga, 10.1, 324.7 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctdogaga, 10.1, 324.7 , 0 );
setEffScaleKey( spep_3 -3 + 60, ctdogaga, 2, 2 );
setEffScaleKey( spep_3 -3 + 62, ctdogaga, 2, 2 );
setEffScaleKey( spep_3 -3 + 64, ctdogaga, 2.01, 2.01 );
setEffScaleKey( spep_3 -3 + 68, ctdogaga, 2.01, 2.01 );
setEffScaleKey( spep_3 -3 + 70, ctdogaga, 2.02, 2.02 );
setEffScaleKey( spep_3 -3 + 74, ctdogaga, 2.02, 2.02 );
setEffScaleKey( spep_3 -3 + 76, ctdogaga, 2.03, 2.03 );
setEffScaleKey( spep_3 -3 + 80, ctdogaga, 2.03, 2.03 );
setEffScaleKey( spep_3 -3 + 82, ctdogaga, 2.04, 2.04 );
setEffScaleKey( spep_3 -3 + 86, ctdogaga, 2.04, 2.04 );
setEffScaleKey( spep_3 -3 + 88, ctdogaga, 2.05, 2.05 );
setEffScaleKey( spep_3 -3 + 90, ctdogaga, 2.05, 2.05 );
setEffRotateKey( spep_3 -3 + 60, ctdogaga, 14.3 );
setEffRotateKey( spep_3 -3 + 90, ctdogaga, 14.3 );
setEffAlphaKey( spep_3 -3 + 60, ctdogaga, 255 );
setEffAlphaKey( spep_3 -3 + 90, ctdogaga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 36, 1, 1 );
setDisp( spep_3 -3 + 91, 1, 0 );
changeAnime( spep_3 -3 + 36, 1, 107 );
changeAnime( spep_3 -3 + 60, 1, 106 );
changeAnime( spep_3 -3 + 74, 1, 107 );
changeAnime( spep_3 -3 + 84, 1, 106 );

setMoveKey( spep_3 -3 + 36, 1, 38.5, 98.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 13.3, 73.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 6.8, 72.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 14.7, 77.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 14.8, 65.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 23.3, 69.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 24.1, 57.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 33.2, 60.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 34.8, 47.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 40.7, 42.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 47, 36.8 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 53.9, 31 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 53.9, 31 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 105.1, 37.2 , 0 );--
setMoveKey( spep_3 -3 + 62, 1, 117.7, 49.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 119.8, 41.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 131.1, 51.6 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 125.4, 53.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 119.7, 55.6 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 114.1, 57.5 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 114.1, 57.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 45.1, 34.9 , 0 );--
setMoveKey( spep_3 -3 + 76, 1, 39.6, 4.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 42.2, -9.7 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 35.6, -4.3 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 37.1, 17.1 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 37.1, 17.1 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 105.1, 37.2 , 0 );--
setMoveKey( spep_3 -3 + 86, 1, 123.3, 48.9 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 133.6, 44.6 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 151.8, 56.3 , 0 );
setMoveKey( spep_3 -3 + 91, 1, 151.8, 56.3 , 0 );

setScaleKey( spep_3 -3 + 36, 1, 0.792, 0.792 );
setScaleKey( spep_3 -3 + 59, 1, 0.792, 0.792 );
setScaleKey( spep_3 -3 + 60, 1, 1.925, 1.925 );--
setScaleKey( spep_3 -3 + 73, 1, 1.925, 1.925 );
setScaleKey( spep_3 -3 + 74, 1, 0.792, 0.792 );--
setScaleKey( spep_3 -3 + 83, 1, 0.792, 0.792 );
setScaleKey( spep_3 -3 + 84, 1, 1.925, 1.925 );--
setScaleKey( spep_3 -3 + 88, 1, 1.925, 1.925 );
setScaleKey( spep_3 -3 + 90, 1, 1.914, 1.914 );
setScaleKey( spep_3 -3 + 91, 1, 1.914, 1.914 );

setRotateKey( spep_3 -3 + 36, 1, -33.1 );
setRotateKey( spep_3 -3 + 38, 1, -32.6 );
setRotateKey( spep_3 -3 + 40, 1, -32.2 );
setRotateKey( spep_3 -3 + 42, 1, -31.6 );
setRotateKey( spep_3 -3 + 44, 1, -31 );
setRotateKey( spep_3 -3 + 46, 1, -30.3 );
setRotateKey( spep_3 -3 + 48, 1, -29.6 );
setRotateKey( spep_3 -3 + 50, 1, -28.8 );
setRotateKey( spep_3 -3 + 52, 1, -27.9 );
setRotateKey( spep_3 -3 + 54, 1, -27 );
setRotateKey( spep_3 -3 + 56, 1, -26 );
setRotateKey( spep_3 -3 + 58, 1, -24.8 );
setRotateKey( spep_3 -3 + 59, 1, -24.8 );
setRotateKey( spep_3 -3 + 60, 1, -33.3 );--
setRotateKey( spep_3 -3 + 62, 1, -33 );
setRotateKey( spep_3 -3 + 64, 1, -32.6 );
setRotateKey( spep_3 -3 + 66, 1, -32.2 );
setRotateKey( spep_3 -3 + 68, 1, -31.8 );
setRotateKey( spep_3 -3 + 70, 1, -31.5 );
setRotateKey( spep_3 -3 + 72, 1, -31.1 );
setRotateKey( spep_3 -3 + 73, 1, -31.1 );
setRotateKey( spep_3 -3 + 74, 1, -28.8 );--
setRotateKey( spep_3 -3 + 76, 1, -28.1 );
setRotateKey( spep_3 -3 + 78, 1, -27.3 );
setRotateKey( spep_3 -3 + 80, 1, -26.6 );
setRotateKey( spep_3 -3 + 82, 1, -25.8 );
setRotateKey( spep_3 -3 + 83, 1, -25.8 );
setRotateKey( spep_3 -3 + 84, 1, -33.3 );--
setRotateKey( spep_3 -3 + 86, 1, -36.7 );
setRotateKey( spep_3 -3 + 88, 1, -40.2 );
setRotateKey( spep_3 -3 + 90, 1, -43.6 );
setRotateKey( spep_3 -3 + 91, 1, -43.6 );

-- ** 音 ** --
--ラッシュ
SE028 = playSeVer2( spep_3 + 30, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_3 + 30, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_3 + 52, 1000, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_3 + 52, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_3 + 68, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 768, SE032, 119 );
setPitch( spep_3 + 768, SE032, -200 );
setTimeStretch( SE032, 0.87, 30, 4 );
SE033 = playSeVer2( spep_3 + 68, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE033, 74 );
SE034 = playSeVer2( spep_3 + 78, 1110, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 246 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 78, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--宙返り
SE036 = playSeVer2( spep_4 + 86, 1116, "",spep_4 +96 + 26, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 86, SE036, 119 );
SE037 = playSeVer2( spep_4 + 92, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 92, SE037, 79 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 蹴り落とし(226F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --蹴り落とし：エフェクト文字   ef_008
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 64, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 64, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 64, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 64, finish_f, 255 );

finish_e = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --蹴り落とし：背景    ef_010
setEffMoveKey( spep_5 + 0, finish_e, 0, 0 , 0 );
setEffMoveKey( spep_5 + 226, finish_e, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_e, 1.0, 1.0 );
setEffScaleKey( spep_5 + 226, finish_e, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_e, 0 );
setEffRotateKey( spep_5 + 226, finish_e, 0 );
setEffAlphaKey( spep_5 + 0, finish_e, 255 );
setEffAlphaKey( spep_5 + 226, finish_e, 255 );

finish_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --蹴り落とし：キャラ   ef_009
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 78, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 78, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 78, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 38, 1, 1 );
setDisp( spep_5 -3 + 108, 1, 0 );
changeAnime( spep_5 -3 + 38, 1, 107 );
changeAnime( spep_5 -3 + 80, 1, 108 );

setMoveKey( spep_5 -3 + 38, 1, -21.4, 292.1 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -19.7, 294.3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 15, 305.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -13.4, 283.1 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -41.4, 278.2 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 15.6, 304.6 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -12.7, 282.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 16.2, 303.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -40.2, 276.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -17.6, 291.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -18.8, 288.9 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 9.6, 260.9 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 38.4, 224.2 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 74.2, 187.6 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 111, 141.9 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 153.6, 93.6 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 200.7, 40.2 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 252.7, -18.6 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 309.6, -83.2 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 371.9, -153.8 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 439.7, -230.8 , 0 );
setMoveKey( spep_5 -3 + 79, 1, 439.7, -230.8 , 0 );
setMoveKey( spep_5 -3 + 80, 1, -218.7, 248.1 , 0 );--
setMoveKey( spep_5 -3 + 82, 1, -134.9 -60, 184.4 +20 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -60.2 -100, 123.1 +15 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 5.7 -140, 64.1 +25 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 62.6 -165, 7.5 +30 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 110.5 -185, -46.8 +40 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 149.5 -195, -98.8 +45 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 179.6 -195, -148.4 +45 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 200.7 -190, -195.7 +45 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 212.9 -170, -240.6 +27 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 216.1 -155, -283.2 +30 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 210.4 -115, -323.5 +30 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 195.7 -70, -361.5 +20 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 172.1 , -397.1 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 172.1, -397.1 , 0 );

setScaleKey( spep_5 -3 + 38, 1, 0.528, 0.528 );
setScaleKey( spep_5 -3 + 46, 1, 0.528, 0.528 );
setScaleKey( spep_5 -3 + 48, 1, 0.539, 0.539 );
setScaleKey( spep_5 -3 + 54, 1, 0.539, 0.539 );
setScaleKey( spep_5 -3 + 56, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 58, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 60, 1, 0.693, 0.693 );
setScaleKey( spep_5 -3 + 62, 1, 0.847, 0.847 );
setScaleKey( spep_5 -3 + 64, 1, 1.034, 1.034 );
setScaleKey( spep_5 -3 + 66, 1, 1.232, 1.232 );
setScaleKey( spep_5 -3 + 68, 1, 1.452, 1.452 );
setScaleKey( spep_5 -3 + 70, 1, 1.705, 1.705 );
setScaleKey( spep_5 -3 + 72, 1, 1.980, 1.980 );
setScaleKey( spep_5 -3 + 74, 1, 2.277, 2.277 );
setScaleKey( spep_5 -3 + 76, 1, 2.607, 2.607 );
setScaleKey( spep_5 -3 + 78, 1, 2.97, 2.97 );
setScaleKey( spep_5 -3 + 79, 1, 2.97, 2.97 );
setScaleKey( spep_5 -3 + 80, 1, 6.49, 6.49 );--
setScaleKey( spep_5 -3 + 82, 1, 6, 6 );
setScaleKey( spep_5 -3 + 84, 1, 5.51, 5.51 );
setScaleKey( spep_5 -3 + 86, 1, 5.03, 5.02 );
setScaleKey( spep_5 -3 + 88, 1, 4.54, 4.54 );
setScaleKey( spep_5 -3 + 90, 1, 4.05, 4.05 );
setScaleKey( spep_5 -3 + 92, 1, 3.56, 3.56 );
setScaleKey( spep_5 -3 + 94, 1, 3.08, 3.07 );
setScaleKey( spep_5 -3 + 96, 1, 2.59, 2.59 );
setScaleKey( spep_5 -3 + 98, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 100, 1, 1.61, 1.61 );
setScaleKey( spep_5 -3 + 102, 1, 1.12, 1.12 );
setScaleKey( spep_5 -3 + 104, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 106, 1, 0.15, 0.15 );
setScaleKey( spep_5 -3 + 108, 1, 0.15, 0.15 );

setRotateKey( spep_5 -3 + 38, 1, 38.6 );
setRotateKey( spep_5 -3 + 108, 1, 38.6 );

-- ** 音 ** --
--宙返り
SE038 = playSeVer2( spep_5 + 8, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 8, SE038, 68 );

--蹴り落とし
SE039 = playSeVer2( spep_5 + 30, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE040 = playSeVer2( spep_5 + 50, 1121, "",spep_5 + 120, 0, 22, -1);
setSeVolumeByWorkId( spep_5 + 50, SE040, 65 );
SE041 = playSeVer2( spep_5 + 50, 1183, "",spep_5 + 120, 0, 22, -1);
setSeVolumeByWorkId( spep_5 + 50, SE041, 91 );

--地面爆発
SE042 = playSeVer2( spep_5 + 98, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 98, SE042, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 226 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_5 + 76, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 106 );
endPhase( spep_5 + 216 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 顔アップ、オーラ発生(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --顔アップ、オーラ発生   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 76, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 76, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 50, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 51 );
SE002 = playSeVer2( spep_0 + 0, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );

--気ダメ
SE003 = playSeVer2( spep_0 +34, 1035, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);

--空力音
SE006 = playSeVer2( spep_0 + 74, 1278, "",spep_0 +74 +156 + 72, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 74 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;


------------------------------------------------------
-- 正面突進(156F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
rush = entryEffectLife( spep_1 + 0, SP_02, 156, 0x100, -1, 0, 0, 0 );  --正面突進   ef_002
setEffMoveKey( spep_1 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, rush, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_1 + 156, rush, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush, 0 );
setEffRotateKey( spep_1 + 156, rush, 0 );
setEffAlphaKey( spep_1 + 0, rush, 255 );
setEffAlphaKey( spep_1 + 156 -1, rush, 255 );
setEffAlphaKey( spep_1 + 156, rush, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
--顔カットイン
SE007 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_1 + 16, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 40, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 64, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 88, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 112, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 140 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
   
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
--突っ込んでくる
SE013 = playSeVer2( spep_1 + 132, 1182, "",spep_1 +156 + 16, 0, 18, -1);
SE014 = playSeVer2( spep_1 + 132, 9, "",spep_1 +156 + 16, 0, 18, -1);

--瞬間移動
SE015 = playSeVer2( spep_1 + 152, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 156;


------------------------------------------------------
-- 背後登場、蹴り飛ばし背景(176F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_2 + 0, SP_03r, 176, 0x100, -1, 0, 0, 0 );  --背後登場、蹴り飛ばし：キャラ、文字    ef_003
setEffMoveKey( spep_2 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 176, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 176 -1, kick_f, 255 );
setEffAlphaKey( spep_2 + 176, kick_f, 0 );

kidk_b = entryEffectLife( spep_2 + 0, SP_04, 176, 0x80, -1, 0, 0, 0 );  --背後登場、蹴り飛ばし背景  ef_004
setEffMoveKey( spep_2 + 0, kidk_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, kidk_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kidk_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, kidk_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kidk_b, 0 );
setEffRotateKey( spep_2 + 176, kidk_b, 0 );
setEffAlphaKey( spep_2 + 0, kidk_b, 255 );
setEffAlphaKey( spep_2 + 176 -1, kidk_b, 255 );
setEffAlphaKey( spep_2 + 176, kidk_b, 0 );

-- ** 書き文字エントリー ** --
ctsyun1 = entryEffectLife( spep_2 + 0,  10011, 22 -1, 0x100, -1, 0, 141.7, -140.2 ); --シュンッ
setEffMoveKey( spep_2 + 0, ctsyun1, 141.7, -140.2 , 0 );
setEffMoveKey( spep_2 -3 + 4, ctsyun1, 141.7, -83.4 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctsyun1, 141.7, -81.3 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctsyun1, 141.7, -79.2 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctsyun1, 141.7, -77 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctsyun1, 141.7, -74.9 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctsyun1, 141.7, -72.8 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctsyun1, 141.7, -70.7 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctsyun1, 141.7, -68.5 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctsyun1, 141.7, -66.4 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctsyun1, 141.7, -6.5 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctsyun1, 141.7, 53.2 , 0 );

setEffScaleKey( spep_2 + 0, ctsyun1, 1.37, 1.36 );
setEffScaleKey( spep_2 -3 + 4, ctsyun1, 1.44, 1.43 );
setEffScaleKey( spep_2 -3 + 20, ctsyun1, 1.44, 1.43 );
setEffScaleKey( spep_2 -3 + 22, ctsyun1, 1.8, 1.79 );
setEffScaleKey( spep_2 -3 + 24, ctsyun1, 2.17, 2.15 );

setEffRotateKey( spep_2 + 0, ctsyun1, 0 );
setEffRotateKey( spep_2 -3 + 24, ctsyun1, 0 );

setEffAlphaKey( spep_2 + 0, ctsyun1, 128 );
setEffAlphaKey( spep_2 -3 + 4, ctsyun1, 255 );
setEffAlphaKey( spep_2 -3 + 20, ctsyun1, 255 );
setEffAlphaKey( spep_2 -3 + 22, ctsyun1, 128 );
setEffAlphaKey( spep_2 -3 + 24, ctsyun1, 0 );

-- ** 書き文字エントリー ** --
ctsyun2 = entryEffectLife( spep_2 -3 + 68,  10011, 20, 0x100, -1, 0, -131.3, -101.2 );
setEffMoveKey( spep_2 -3 + 68, ctsyun2, -131.3, -101.2 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctsyun2, -131.3, -44.4 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctsyun2, -131.3, -42 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctsyun2, -131.3, -39.6 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctsyun2, -131.3, -37.1 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctsyun2, -131.3, -34.7 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctsyun2, -131.3, -32.3 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctsyun2, -131.3, -29.8 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctsyun2, -131.3, -27.4 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctsyun2, -131.3, 32.4 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctsyun2, -131.3, 92.2 , 0 );

setEffScaleKey( spep_2 -3 + 68, ctsyun2, 1.37, 1.36 );
setEffScaleKey( spep_2 -3 + 70, ctsyun2, 1.44, 1.43 );
setEffScaleKey( spep_2 -3 + 84, ctsyun2, 1.44, 1.43 );
setEffScaleKey( spep_2 -3 + 86, ctsyun2, 1.8, 1.79 );
setEffScaleKey( spep_2 -3 + 88, ctsyun2, 2.17, 2.15 );

setEffRotateKey( spep_2 -3 + 68, ctsyun2, 0 );
setEffRotateKey( spep_2 -3 + 88, ctsyun2, 0 );

setEffAlphaKey( spep_2 -3 + 68, ctsyun2, 128 );
setEffAlphaKey( spep_2 -3 + 70, ctsyun2, 255 );
setEffAlphaKey( spep_2 -3 + 84, ctsyun2, 255 );
setEffAlphaKey( spep_2 -3 + 86, ctsyun2, 128 );
setEffAlphaKey( spep_2 -3 + 88, ctsyun2, 0 );

-- ** 書き文字エントリー ** --
ctbaki1 = entryEffectLife( spep_2 -3 + 42,  10020, 16, 0x100, -1, 0, -79.1, 188.8 ); --バキッ
setEffMoveKey( spep_2 -3 + 42, ctbaki1, -79.1, 188.8 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctbaki1, -82.4, 206.7 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctbaki1, -67.3, 211.2 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctbaki1, -79, 219.1 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctbaki1, -67.1, 209.8 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctbaki1, -79.2, 217.9 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctbaki1, -66.9, 208.4 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctbaki1, -79.6, 232.1 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctbaki1, -79.9, 246.9 , 0 );

setEffScaleKey( spep_2 -3 + 42, ctbaki1, 1, 1 );
setEffScaleKey( spep_2 -3 + 44, ctbaki1, 1.35, 1.35 );
setEffScaleKey( spep_2 -3 + 46, ctbaki1, 1.7, 1.7 );
setEffScaleKey( spep_2 -3 + 48, ctbaki1, 1.72, 1.72 );
setEffScaleKey( spep_2 -3 + 50, ctbaki1, 1.75, 1.75 );
setEffScaleKey( spep_2 -3 + 52, ctbaki1, 1.77, 1.77 );
setEffScaleKey( spep_2 -3 + 54, ctbaki1, 1.8, 1.8 );
setEffScaleKey( spep_2 -3 + 56, ctbaki1, 1.97, 1.97 );
setEffScaleKey( spep_2 -3 + 58, ctbaki1, 2.15, 2.15 );

setEffRotateKey( spep_2 -3 + 42, ctbaki1, -9 );
setEffRotateKey( spep_2 -3 + 58, ctbaki1, -9 );

setEffAlphaKey( spep_2 -3 + 42, ctbaki1, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctbaki1, 255 );
setEffAlphaKey( spep_2 -3 + 56, ctbaki1, 128 );
setEffAlphaKey( spep_2 -3 + 58, ctbaki1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 63, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 -3 + 42, 1, 105 );

setMoveKey( spep_2 + 0, 1, -37.4, 17.7 , 0 );
setMoveKey( spep_2 + 1, 1, -34.3, 13.5 , 0 );
setMoveKey( spep_2 + 2, 1, -31.6, 9.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -29.3, 6.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -27.3, 4.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -25.7, 1.9 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -24.5, 0.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -23.6, -1.1 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -23, -1.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -22.9, -2 , 0 );
setMoveKey( spep_2 -3 + 41, 1, -22.9, -2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -78, 29.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -95.4, 31.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -141.6, 37 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -211.9, 26.5 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -269.3, 25.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -323.5, 31.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -379.3, 33.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -435.2, 35.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -491, 38.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -546.8, 40.5 , 0 );
setMoveKey( spep_2 -3 + 63, 1, -602.7, 42.8 , 0 );

setScaleKey( spep_2 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 1, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 2, 1, 1.8, 1.8 );
setScaleKey( spep_2 -3 + 6, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 8, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 10, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 12, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 14, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 16, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 41, 1, 1.65, 1.65 );
setScaleKey( spep_2 -3 + 42, 1, 1.705, 1.705 );
setScaleKey( spep_2 -3 + 44, 1, 1.573, 1.573 );
setScaleKey( spep_2 -3 + 46, 1, 1.452, 1.452 );
setScaleKey( spep_2 -3 + 48, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 50, 1, 1.199, 1.199 );
setScaleKey( spep_2 -3 + 52, 1, 1.067, 1.067 );
setScaleKey( spep_2 -3 + 54, 1, 0.946, 0.946 );
setScaleKey( spep_2 -3 + 56, 1, 0.814, 0.814 );
setScaleKey( spep_2 -3 + 58, 1, 0.693, 0.693 );
setScaleKey( spep_2 -3 + 60, 1, 0.561, 0.561 );
setScaleKey( spep_2 -3 + 63, 1, 0.440, 0.440 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 41, 1, 0 );
setRotateKey( spep_2 -3 + 42, 1, -52.3 );
setRotateKey( spep_2 -3 + 54, 1, -52.3 );
setRotateKey( spep_2 -3 + 56, 1, -52.4 );
setRotateKey( spep_2 -3 + 63, 1, -52.4 );

setDisp( spep_2 -3 + 86, 1, 1 );
setDisp( spep_2 -3 + 179, 1, 0 );
changeAnime( spep_2 -3 + 86, 1, 106 );
changeAnime( spep_2 -3 + 134, 1, 108 );

setMoveKey( spep_2 -3 + 86, 1, 767.9, 65.6 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 692.6, 65.6 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 617.3, 65.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 542, 65.6 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 466.8, 65.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 391.5, 65.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 316.2, 65.6 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 240.9, 65.6 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 165.6, 65.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 163.1, 66.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 165.6, 65.6 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 165.9, 67.9 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 164.6, 67.1 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 166.5, 72.8 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 165.2, 72.2 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 167.1, 78 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 167.3, 80.6 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 167.6, 83.4 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 167.8, 86.2 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 168, 89.1 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 168.2, 92 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 168.4, 95 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 168.6, 98.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 168.8, 101.2 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 168.8, 101.2 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 96.2, -70.7 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 110.5, -101.6 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 89.2, -109.9 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 120.6, -80.9 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 157.4, -122.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 123.3, -102.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 134.6, -85.6 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 133.9, -86.6 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 138.2, -71.6 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 141.1, -53.3 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 148.9, -18.9 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 155.2, 19 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 166.7, 73.2 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 176.9, 131.1 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 192.2, 205.6 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 204.6, 274.1 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 218.5, 339.6 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 227.5, 389.1 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 238, 435.5 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 243.4, 465.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 250.1, 492.5 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 251.8, 503 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 254.8, 509.9 , 0 );
setMoveKey( spep_2 -3 + 179, 1, 254.8, 509.9 , 0 );

setScaleKey( spep_2 -3 + 86, 1, 1.815, 1.815 );
setScaleKey( spep_2 -3 + 102, 1, 1.815, 1.815 );
setScaleKey( spep_2 -3 + 104, 1, 1.738, 1.804 );
setScaleKey( spep_2 -3 + 106, 1, 1.815, 1.815 );
setScaleKey( spep_2 -3 + 133, 1, 1.815, 1.815 );
setScaleKey( spep_2 -3 + 134, 1, 3.19, 3.19 );
setScaleKey( spep_2 -3 + 136, 1, 3.432, 3.432 );
setScaleKey( spep_2 -3 + 138, 1, 3.663, 3.663 );
setScaleKey( spep_2 -3 + 140, 1, 3.905, 3.905 );
setScaleKey( spep_2 -3 + 142, 1, 4.147, 4.147 );
setScaleKey( spep_2 -3 + 144, 1, 4.158, 4.158 );
setScaleKey( spep_2 -3 + 146, 1, 4.169, 4.169 );
setScaleKey( spep_2 -3 + 148, 1, 4.147, 4.147 );
setScaleKey( spep_2 -3 + 150, 1, 4.059, 4.059 );
setScaleKey( spep_2 -3 + 152, 1, 3.916, 3.916 );
setScaleKey( spep_2 -3 + 154, 1, 3.707, 3.707 );
setScaleKey( spep_2 -3 + 156, 1, 3.432, 3.432 );
setScaleKey( spep_2 -3 + 158, 1, 3.091, 3.091 );
setScaleKey( spep_2 -3 + 160, 1, 2.695, 2.695 );
setScaleKey( spep_2 -3 + 162, 1, 2.222, 2.222 );
setScaleKey( spep_2 -3 + 164, 1, 1.760, 1.760 );
setScaleKey( spep_2 -3 + 166, 1, 1.353, 1.353 );
setScaleKey( spep_2 -3 + 168, 1, 1.012, 1.012 );
setScaleKey( spep_2 -3 + 170, 1, 0.726, 0.726 );
setScaleKey( spep_2 -3 + 172, 1, 0.506, 0.506 );
setScaleKey( spep_2 -3 + 174, 1, 0.352, 0.352 );
setScaleKey( spep_2 -3 + 176, 1, 0.253, 0.253 );
setScaleKey( spep_2 -3 + 178, 1, 0.220, 0.220 );
setScaleKey( spep_2 -3 + 179, 1, 0.220, 0.220 );

setRotateKey( spep_2 -3 + 86, 1, -150 );
setRotateKey( spep_2 -3 + 102, 1, -150 );
setRotateKey( spep_2 -3 + 104, 1, -150.2 );
setRotateKey( spep_2 -3 + 106, 1, -150 );
setRotateKey( spep_2 -3 + 108, 1, -149.4 );
setRotateKey( spep_2 -3 + 110, 1, -148.8 );
setRotateKey( spep_2 -3 + 112, 1, -148.2 );
setRotateKey( spep_2 -3 + 114, 1, -147.5 );
setRotateKey( spep_2 -3 + 116, 1, -146.9 );
setRotateKey( spep_2 -3 + 118, 1, -146.3 );
setRotateKey( spep_2 -3 + 120, 1, -145.7 );
setRotateKey( spep_2 -3 + 122, 1, -145.1 );
setRotateKey( spep_2 -3 + 124, 1, -144.5 );
setRotateKey( spep_2 -3 + 126, 1, -143.8 );
setRotateKey( spep_2 -3 + 128, 1, -143.2 );
setRotateKey( spep_2 -3 + 130, 1, -142.6 );
setRotateKey( spep_2 -3 + 132, 1, -142 );
setRotateKey( spep_2 -3 + 133, 1, -142 );
setRotateKey( spep_2 -3 + 134, 1, -10 );
setRotateKey( spep_2 -3 + 136, 1, -9.9 );
setRotateKey( spep_2 -3 + 138, 1, -9.8 );
setRotateKey( spep_2 -3 + 140, 1, -9.5 );
setRotateKey( spep_2 -3 + 142, 1, -9.1 );
setRotateKey( spep_2 -3 + 144, 1, -8.6 );
setRotateKey( spep_2 -3 + 146, 1, -8 );
setRotateKey( spep_2 -3 + 178, 1, -8 );
setRotateKey( spep_2 -3 + 179, 1, -8 );

-- ** 音 ** --
--瞬間移動
SE020 = playSeVer2( spep_2 + 62, 1109, "", 0, 0, 0, -1);

--肘打ち
SE016 = playSeVer2( spep_2 + 34, 1189, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 40, 1012, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 40, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE018, 86 );
SE019 = playSeVer2( spep_2 + 42, 1110, "", 0, 0, 0, -1);

--敵止める
SE021 = playSeVer2( spep_2 + 94, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE021, 91 );
SE022 = playSeVer2( spep_2 + 94, 1012, "", 0, 0, 0, -1);

--振りかぶる
SE023 = playSeVer2( spep_2 + 112, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 112, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE024, 81 );

--蹴り上げる
SE025 = playSeVer2( spep_2 + 128, 1120, "", 0, 0, 0, -1);

--飛び上がる
SE026 = playSeVer2( spep_2 + 174, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 174, 1167, "",spep_2 +176 + 36, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 174, SE027, 54 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 176;


------------------------------------------------------
-- 空中戦(88F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
antenna_f = entryEffectLife( spep_3 + 0, SP_05r, 88, 0x100, -1, 0, 0, 0 );  --空中戦：エフェクト文字    ef_005
setEffMoveKey( spep_3 + 0, antenna_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, antenna_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, antenna_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, antenna_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, antenna_f, 0 );
setEffRotateKey( spep_3 + 88, antenna_f, 0 );
setEffAlphaKey( spep_3 + 0, antenna_f, 255 );
setEffAlphaKey( spep_3 + 88 -1, antenna_f, 255 );
setEffAlphaKey( spep_3 + 88, antenna_f, 0 );

antenna_e = entryEffectLife( spep_3 + 0, SP_07, 88, 0x80, -1, 0, 0, 0 );  --空中戦：背景 ef_007
setEffMoveKey( spep_3 + 0, antenna_e, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, antenna_e, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, antenna_e, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, antenna_e, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, antenna_e, 0 );
setEffRotateKey( spep_3 + 88, antenna_e, 0 );
setEffAlphaKey( spep_3 + 0, antenna_e, 255 );
setEffAlphaKey( spep_3 + 88 -1, antenna_e, 255 );
setEffAlphaKey( spep_3 + 88, antenna_e, 0 );

antenna_b = entryEffectLife( spep_3 + 0, SP_06, 88, 0x80, -1, 0, 0, 0 );  --空中戦：キャラ    ef_006
setEffMoveKey( spep_3 + 0, antenna_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, antenna_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, antenna_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, antenna_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, antenna_b, 0 );
setEffRotateKey( spep_3 + 88, antenna_b, 0 );
setEffAlphaKey( spep_3 + 0, antenna_b, 255 );
setEffAlphaKey( spep_3 + 88 -1, antenna_b, 255 );
setEffAlphaKey( spep_3 + 88, antenna_b, 0 );

-- ** 書き文字エントリー ** --
ctbaki2 = entryEffectLife( spep_3 -3 + 36,  10020, 16, 0x100, -1, 0, 47.8, 292.2 );  --バキッ
setEffMoveKey( spep_3 -3 + 36, ctbaki2, 47.8, 292.2 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctbaki2, 70.9, 308.8 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctbaki2, 101.7, 304 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctbaki2, 96.5, 317.2 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctbaki2, 101.1, 302.8 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctbaki2, 95.8, 316.3 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctbaki2, 100.5, 301.5 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctbaki2, 103.5, 328.2 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctbaki2, 111.6, 340.6 , 0 );
setEffScaleKey( spep_3 -3 + 36, ctbaki2, 1, 1 );
setEffScaleKey( spep_3 -3 + 38, ctbaki2, 1.35, 1.35 );
setEffScaleKey( spep_3 -3 + 40, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 42, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_3 -3 + 44, ctbaki2, 1.75, 1.75 );
setEffScaleKey( spep_3 -3 + 46, ctbaki2, 1.77, 1.77 );
setEffScaleKey( spep_3 -3 + 48, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_3 -3 + 50, ctbaki2, 1.97, 1.97 );
setEffScaleKey( spep_3 -3 + 52, ctbaki2, 2.15, 2.15 );
setEffRotateKey( spep_3 -3 + 36, ctbaki2, 25.5 );
setEffRotateKey( spep_3 -3 + 52, ctbaki2, 25.5 );
setEffAlphaKey( spep_3 -3 + 36, ctbaki2, 255 );
setEffAlphaKey( spep_3 -3 + 48, ctbaki2, 255 );
setEffAlphaKey( spep_3 -3 + 50, ctbaki2, 128 );
setEffAlphaKey( spep_3 -3 + 52, ctbaki2, 0 );

-- ** 書き文字エントリー ** --
ctdogaga = entryEffectLife( spep_3 -3 + 60,  10017, 28 +2, 0x100, -1, 0, 8.7, 308.1 );  --ドガガガッ
setEffMoveKey( spep_3 -3 + 60, ctdogaga, 8.7, 308.1 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctdogaga, 3.7, 315.1 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctdogaga, 8.9, 310.4 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctdogaga, 3.8, 317.5 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctdogaga, 9.1, 312.8 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctdogaga, 4, 319.9 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctdogaga, 9.3, 315.2 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctdogaga, 4.2, 322.3 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctdogaga, 9.5, 317.6 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctdogaga, 4.4, 324.7 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctdogaga, 9.7, 319.9 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctdogaga, 4.5, 327.1 , 0 );
setEffMoveKey( spep_3 -3 + 84, ctdogaga, 9.9, 322.3 , 0 );
setEffMoveKey( spep_3 -3 + 86, ctdogaga, 4.7, 329.5 , 0 );
setEffMoveKey( spep_3 -3 + 88, ctdogaga, 10.1, 324.7 , 0 );
setEffMoveKey( spep_3 -3 + 90, ctdogaga, 10.1, 324.7 , 0 );
setEffScaleKey( spep_3 -3 + 60, ctdogaga, 2, 2 );
setEffScaleKey( spep_3 -3 + 62, ctdogaga, 2, 2 );
setEffScaleKey( spep_3 -3 + 64, ctdogaga, 2.01, 2.01 );
setEffScaleKey( spep_3 -3 + 68, ctdogaga, 2.01, 2.01 );
setEffScaleKey( spep_3 -3 + 70, ctdogaga, 2.02, 2.02 );
setEffScaleKey( spep_3 -3 + 74, ctdogaga, 2.02, 2.02 );
setEffScaleKey( spep_3 -3 + 76, ctdogaga, 2.03, 2.03 );
setEffScaleKey( spep_3 -3 + 80, ctdogaga, 2.03, 2.03 );
setEffScaleKey( spep_3 -3 + 82, ctdogaga, 2.04, 2.04 );
setEffScaleKey( spep_3 -3 + 86, ctdogaga, 2.04, 2.04 );
setEffScaleKey( spep_3 -3 + 88, ctdogaga, 2.05, 2.05 );
setEffScaleKey( spep_3 -3 + 90, ctdogaga, 2.05, 2.05 );
setEffRotateKey( spep_3 -3 + 60, ctdogaga, 14.3 );
setEffRotateKey( spep_3 -3 + 90, ctdogaga, 14.3 );
setEffAlphaKey( spep_3 -3 + 60, ctdogaga, 255 );
setEffAlphaKey( spep_3 -3 + 90, ctdogaga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 36, 1, 1 );
setDisp( spep_3 -3 + 91, 1, 0 );
changeAnime( spep_3 -3 + 36, 1, 107 );
changeAnime( spep_3 -3 + 60, 1, 106 );
changeAnime( spep_3 -3 + 74, 1, 107 );
changeAnime( spep_3 -3 + 84, 1, 106 );

setMoveKey( spep_3 -3 + 36, 1, 38.5, 98.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 13.3, 73.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 6.8, 72.9 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 14.7, 77.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 14.8, 65.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 23.3, 69.6 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 24.1, 57.3 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 33.2, 60.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 34.8, 47.7 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 40.7, 42.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 47, 36.8 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 53.9, 31 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 53.9, 31 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 105.1, 37.2 , 0 );--
setMoveKey( spep_3 -3 + 62, 1, 117.7, 49.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 119.8, 41.4 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 131.1, 51.6 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 125.4, 53.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 119.7, 55.6 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 114.1, 57.5 , 0 );
setMoveKey( spep_3 -3 + 73, 1, 114.1, 57.5 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 45.1, 34.9 , 0 );--
setMoveKey( spep_3 -3 + 76, 1, 39.6, 4.6 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 42.2, -9.7 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 35.6, -4.3 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 37.1, 17.1 , 0 );
setMoveKey( spep_3 -3 + 83, 1, 37.1, 17.1 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 105.1, 37.2 , 0 );--
setMoveKey( spep_3 -3 + 86, 1, 123.3, 48.9 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 133.6, 44.6 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 151.8, 56.3 , 0 );
setMoveKey( spep_3 -3 + 91, 1, 151.8, 56.3 , 0 );

setScaleKey( spep_3 -3 + 36, 1, 0.792, 0.792 );
setScaleKey( spep_3 -3 + 59, 1, 0.792, 0.792 );
setScaleKey( spep_3 -3 + 60, 1, 1.925, 1.925 );--
setScaleKey( spep_3 -3 + 73, 1, 1.925, 1.925 );
setScaleKey( spep_3 -3 + 74, 1, 0.792, 0.792 );--
setScaleKey( spep_3 -3 + 83, 1, 0.792, 0.792 );
setScaleKey( spep_3 -3 + 84, 1, 1.925, 1.925 );--
setScaleKey( spep_3 -3 + 88, 1, 1.925, 1.925 );
setScaleKey( spep_3 -3 + 90, 1, 1.914, 1.914 );
setScaleKey( spep_3 -3 + 91, 1, 1.914, 1.914 );

setRotateKey( spep_3 -3 + 36, 1, -33.1 );
setRotateKey( spep_3 -3 + 38, 1, -32.6 );
setRotateKey( spep_3 -3 + 40, 1, -32.2 );
setRotateKey( spep_3 -3 + 42, 1, -31.6 );
setRotateKey( spep_3 -3 + 44, 1, -31 );
setRotateKey( spep_3 -3 + 46, 1, -30.3 );
setRotateKey( spep_3 -3 + 48, 1, -29.6 );
setRotateKey( spep_3 -3 + 50, 1, -28.8 );
setRotateKey( spep_3 -3 + 52, 1, -27.9 );
setRotateKey( spep_3 -3 + 54, 1, -27 );
setRotateKey( spep_3 -3 + 56, 1, -26 );
setRotateKey( spep_3 -3 + 58, 1, -24.8 );
setRotateKey( spep_3 -3 + 59, 1, -24.8 );
setRotateKey( spep_3 -3 + 60, 1, -33.3 );--
setRotateKey( spep_3 -3 + 62, 1, -33 );
setRotateKey( spep_3 -3 + 64, 1, -32.6 );
setRotateKey( spep_3 -3 + 66, 1, -32.2 );
setRotateKey( spep_3 -3 + 68, 1, -31.8 );
setRotateKey( spep_3 -3 + 70, 1, -31.5 );
setRotateKey( spep_3 -3 + 72, 1, -31.1 );
setRotateKey( spep_3 -3 + 73, 1, -31.1 );
setRotateKey( spep_3 -3 + 74, 1, -28.8 );--
setRotateKey( spep_3 -3 + 76, 1, -28.1 );
setRotateKey( spep_3 -3 + 78, 1, -27.3 );
setRotateKey( spep_3 -3 + 80, 1, -26.6 );
setRotateKey( spep_3 -3 + 82, 1, -25.8 );
setRotateKey( spep_3 -3 + 83, 1, -25.8 );
setRotateKey( spep_3 -3 + 84, 1, -33.3 );--
setRotateKey( spep_3 -3 + 86, 1, -36.7 );
setRotateKey( spep_3 -3 + 88, 1, -40.2 );
setRotateKey( spep_3 -3 + 90, 1, -43.6 );
setRotateKey( spep_3 -3 + 91, 1, -43.6 );

-- ** 音 ** --
--ラッシュ
SE028 = playSeVer2( spep_3 + 30, 1010, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_3 + 30, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_3 + 52, 1000, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_3 + 52, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_3 + 68, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 768, SE032, 119 );
setPitch( spep_3 + 768, SE032, -200 );
setTimeStretch( SE032, 0.87, 30, 4 );
SE033 = playSeVer2( spep_3 + 68, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE033, 74 );
SE034 = playSeVer2( spep_3 + 78, 1110, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 246 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 78, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--宙返り
SE036 = playSeVer2( spep_4 + 86, 1116, "",spep_4 +96 + 26, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 86, SE036, 119 );
SE037 = playSeVer2( spep_4 + 92, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 92, SE037, 79 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 蹴り落とし(226F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --蹴り落とし：エフェクト文字   ef_008
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 64, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 64, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 64, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 64, finish_f, 255 );

finish_e = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --蹴り落とし：背景    ef_010
setEffMoveKey( spep_5 + 0, finish_e, 0, 0 , 0 );
setEffMoveKey( spep_5 + 226, finish_e, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_e, 1.0, 1.0 );
setEffScaleKey( spep_5 + 226, finish_e, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_e, 0 );
setEffRotateKey( spep_5 + 226, finish_e, 0 );
setEffAlphaKey( spep_5 + 0, finish_e, 255 );
setEffAlphaKey( spep_5 + 226, finish_e, 255 );

finish_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --蹴り落とし：キャラ   ef_009
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 78, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 78, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 78, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 78, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 38, 1, 1 );
setDisp( spep_5 -3 + 108, 1, 0 );
changeAnime( spep_5 -3 + 38, 1, 107 );
changeAnime( spep_5 -3 + 80, 1, 108 );

setMoveKey( spep_5 -3 + 38, 1, -21.4, 292.1 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -19.7, 294.3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 15, 305.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -13.4, 283.1 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -41.4, 278.2 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 15.6, 304.6 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -12.7, 282.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 16.2, 303.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -40.2, 276.7 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -17.6, 291.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -18.8, 288.9 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 9.6, 260.9 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 38.4, 224.2 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 74.2, 187.6 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 111, 141.9 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 153.6, 93.6 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 200.7, 40.2 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 252.7, -18.6 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 309.6, -83.2 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 371.9, -153.8 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 439.7, -230.8 , 0 );
setMoveKey( spep_5 -3 + 79, 1, 439.7, -230.8 , 0 );
setMoveKey( spep_5 -3 + 80, 1, -218.7, 248.1 , 0 );--
setMoveKey( spep_5 -3 + 82, 1, -134.9 -60, 184.4 +20 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -60.2 -100, 123.1 +15 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 5.7 -140, 64.1 +25 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 62.6 -165, 7.5 +30 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 110.5 -185, -46.8 +40 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 149.5 -195, -98.8 +45 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 179.6 -195, -148.4 +45 , 0 );
setMoveKey( spep_5 -3 + 96, 1, 200.7 -190, -195.7 +45 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 212.9 -170, -240.6 +27 , 0 );
setMoveKey( spep_5 -3 + 100, 1, 216.1 -155, -283.2 +30 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 210.4 -115, -323.5 +30 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 195.7 -70, -361.5 +20 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 172.1 , -397.1 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 172.1, -397.1 , 0 );

setScaleKey( spep_5 -3 + 38, 1, 0.528, 0.528 );
setScaleKey( spep_5 -3 + 46, 1, 0.528, 0.528 );
setScaleKey( spep_5 -3 + 48, 1, 0.539, 0.539 );
setScaleKey( spep_5 -3 + 54, 1, 0.539, 0.539 );
setScaleKey( spep_5 -3 + 56, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 58, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 60, 1, 0.693, 0.693 );
setScaleKey( spep_5 -3 + 62, 1, 0.847, 0.847 );
setScaleKey( spep_5 -3 + 64, 1, 1.034, 1.034 );
setScaleKey( spep_5 -3 + 66, 1, 1.232, 1.232 );
setScaleKey( spep_5 -3 + 68, 1, 1.452, 1.452 );
setScaleKey( spep_5 -3 + 70, 1, 1.705, 1.705 );
setScaleKey( spep_5 -3 + 72, 1, 1.980, 1.980 );
setScaleKey( spep_5 -3 + 74, 1, 2.277, 2.277 );
setScaleKey( spep_5 -3 + 76, 1, 2.607, 2.607 );
setScaleKey( spep_5 -3 + 78, 1, 2.97, 2.97 );
setScaleKey( spep_5 -3 + 79, 1, 2.97, 2.97 );
setScaleKey( spep_5 -3 + 80, 1, 6.49, 6.49 );--
setScaleKey( spep_5 -3 + 82, 1, 6, 6 );
setScaleKey( spep_5 -3 + 84, 1, 5.51, 5.51 );
setScaleKey( spep_5 -3 + 86, 1, 5.03, 5.02 );
setScaleKey( spep_5 -3 + 88, 1, 4.54, 4.54 );
setScaleKey( spep_5 -3 + 90, 1, 4.05, 4.05 );
setScaleKey( spep_5 -3 + 92, 1, 3.56, 3.56 );
setScaleKey( spep_5 -3 + 94, 1, 3.08, 3.07 );
setScaleKey( spep_5 -3 + 96, 1, 2.59, 2.59 );
setScaleKey( spep_5 -3 + 98, 1, 2.1, 2.1 );
setScaleKey( spep_5 -3 + 100, 1, 1.61, 1.61 );
setScaleKey( spep_5 -3 + 102, 1, 1.12, 1.12 );
setScaleKey( spep_5 -3 + 104, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 106, 1, 0.15, 0.15 );
setScaleKey( spep_5 -3 + 108, 1, 0.15, 0.15 );

setRotateKey( spep_5 -3 + 38, 1, 38.6 );
setRotateKey( spep_5 -3 + 108, 1, 38.6 );

-- ** 音 ** --
--宙返り
SE038 = playSeVer2( spep_5 + 8, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 8, SE038, 68 );

--蹴り落とし
SE039 = playSeVer2( spep_5 + 30, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE040 = playSeVer2( spep_5 + 50, 1121, "",spep_5 + 120, 0, 22, -1);
setSeVolumeByWorkId( spep_5 + 50, SE040, 65 );
SE041 = playSeVer2( spep_5 + 50, 1183, "",spep_5 + 120, 0, 22, -1);
setSeVolumeByWorkId( spep_5 + 50, SE041, 91 );

--地面爆発
SE042 = playSeVer2( spep_5 + 98, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 98, SE042, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 226 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_5 + 76, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 106 );
endPhase( spep_5 + 216 );

end