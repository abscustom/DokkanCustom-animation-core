--1025650:ハッチヒャック(巨大化)_スーパーリベンジャーカノン
--sp_effect_a3_00098

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
SP_01 = 160986;	--ヒッチヒャック突進	ef_001
SP_02 = 160988;	--ヒッチヒャック頭突き	ef_002
SP_03 = 160990;	--ヒッチヒャック頭突き　裏	ef_002_back
SP_04 = 160992;	--ヒッチヒャックパンチ	ef_003
SP_05 = 160994;	--ヒッチヒャックパンチ　裏	ef_003_back
SP_06 = 160996;	--ヒッチヒャックビーム	ef_004
SP_07 = 160998;	--爆発	ef_005

--敵側
SP_01r = 160987;	--ヒッチヒャック突進　敵側	ef_001_re
SP_02r = 160989;	--ヒッチヒャック頭突き　敵側	ef_002_re
SP_03r = 160991;	--ヒッチヒャック頭突き　敵側　裏	ef_002_back_re
SP_04r = 160993;	--ヒッチヒャックパンチ　敵側	ef_003_re
SP_05r = 160995;	--ヒッチヒャックパンチ　敵側　裏	ef_003_back_re
SP_06r = 160997;	--ヒッチヒャックビーム　敵側	ef_004_re
SP_07r = 160999;	--爆発　敵側	ef_005_re

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- ヒッチヒャック突進(118F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --ヒッチヒャック突進	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 113, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 113, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 113, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 113 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 113, first_f, 0 );

--走ってくる
SE001 = playSeVer2( spep_0 + 0, 1014, "",spep_0 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 75 );
SE002 = playSeVer2( spep_0 + 0, 1190, "",spep_0 + 26, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE004 = playSeVer2( spep_0 + 18, 1002, "",spep_0 + 52, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 78 );
SE005 = playSeVer2( spep_0 + 18, 1190, "",spep_0 + 42, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 113 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
   
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

spep_x = spep_0 + 18;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
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
--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--走ってくる
SE006 = playSeVer2( spep_0 + 38, 1014, "",spep_0 + 78, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 38, SE006, 69 );
SE007 = playSeVer2( spep_0 + 38, 1190, "",spep_0 + 64, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 38, SE007, 69 );
SE008 = playSeVer2( spep_0 + 58, 1002, "",spep_0 + 96, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 58, SE008, 77 );
SE009 = playSeVer2( spep_0 + 58, 1190, "",spep_0 + 82, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 58, SE009, 65 );
SE010 = playSeVer2( spep_0 + 74, 1014, "",spep_0 + 106, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 74, SE010, 74 );
SE011 = playSeVer2( spep_0 + 74, 1190, "",spep_0 + 100, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 74, SE011, 76 );
SE012 = playSeVer2( spep_0 + 92, 1014, "",spep_0 + 120 -1, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 92, SE012, 71 );
SE013 = playSeVer2( spep_0 + 92, 1190, "",spep_0 + 120 -1, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 92, SE013, 74 );
SE014 = playSeVer2( spep_0 + 106, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE014, 65 );
SE015 = playSeVer2( spep_0 + 106, 1190, "",spep_0 + 132 -1, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 106, SE015, 72 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 113;


------------------------------------------------------
-- ヒッチヒャック頭突き(186F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
butting_f = entryEffectLife( spep_1 + 0, SP_02, 184, 0x100, -1, 0, 0, 0 );  --ヒッチヒャック頭突き	ef_002
setEffMoveKey( spep_1 + 0, butting_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 184, butting_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, butting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 184, butting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, butting_f, 0 );
setEffRotateKey( spep_1 + 184, butting_f, 0 );
setEffAlphaKey( spep_1 + 0, butting_f, 255 );
setEffAlphaKey( spep_1 + 184 -1, butting_f, 255 );
setEffAlphaKey( spep_1 + 184, butting_f, 0 );

butting_g = entryEffectLife( spep_1 + 0, SP_03, 184, 0x80, -1, 0, 0, 0 );  --ヒッチヒャック頭突き　裏	ef_002_back
setEffMoveKey( spep_1 + 0, butting_g, 0, 0 , 0 );
setEffMoveKey( spep_1 + 184, butting_g, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, butting_g, 1.0, 1.0 );
setEffScaleKey( spep_1 + 184, butting_g, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, butting_g, 0 );
setEffRotateKey( spep_1 + 184, butting_g, 0 );
setEffAlphaKey( spep_1 + 0, butting_g, 255 );
setEffAlphaKey( spep_1 + 184 -1, butting_g, 255 );
setEffAlphaKey( spep_1 + 184, butting_g, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 8, 1, 1 );
setDisp( spep_1 -3 + 58, 1, 0 );
changeAnime( spep_1 -3 + 8, 1, 106 );

setMoveKey( spep_1 -3 + 8, 1, 453, -401.4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 331, -390.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 209.1, -379.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 255.1, -388.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 293.2, -495 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 375.6, -462.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 282.2, -502 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 361.1, -423.6 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 349.2, -542.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 348.6, -463 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 286.3, -466.4 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 336.2, -441 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 319.4, -518.8 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 356.9, -482.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 393.7, -462 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 400.7, -516.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 397, -491.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 446.6, -497.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 451.4, -476.5 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 461.6, -511.7 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 508.5, -495.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 539.9, -498.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 574.1, -502.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 611, -506.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 650.8, -510.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 650.8, -510.9 , 0 );

setScaleKey( spep_1 -3 + 8, 1, 6.75, 6.75 );
setScaleKey( spep_1 -3 + 48, 1, 6.75, 6.75 );
setScaleKey( spep_1 -3 + 50, 1, 6.76, 6.76 );
setScaleKey( spep_1 -3 + 52, 1, 6.78, 6.78 );
setScaleKey( spep_1 -3 + 54, 1, 6.8, 6.8 );
setScaleKey( spep_1 -3 + 56, 1, 6.82, 6.82 );
setScaleKey( spep_1 -3 + 58, 1, 6.82, 6.82 );

setRotateKey( spep_1 -3 + 8, 1, -79.4 );
setRotateKey( spep_1 -3 + 14, 1, -79.4 );
setRotateKey( spep_1 -3 + 16, 1, -78.5 );
setRotateKey( spep_1 -3 + 18, 1, -77.8 );
setRotateKey( spep_1 -3 + 20, 1, -77.4 );
setRotateKey( spep_1 -3 + 22, 1, -77.3 );
setRotateKey( spep_1 -3 + 24, 1, -77.2 );
setRotateKey( spep_1 -3 + 28, 1, -77.2 );
setRotateKey( spep_1 -3 + 30, 1, -77.1 );
setRotateKey( spep_1 -3 + 32, 1, -77 );
setRotateKey( spep_1 -3 + 34, 1, -76.8 );
setRotateKey( spep_1 -3 + 36, 1, -76.7 );
setRotateKey( spep_1 -3 + 38, 1, -76.5 );
setRotateKey( spep_1 -3 + 40, 1, -76.3 );
setRotateKey( spep_1 -3 + 42, 1, -76.1 );
setRotateKey( spep_1 -3 + 44, 1, -75.9 );
setRotateKey( spep_1 -3 + 46, 1, -75.6 );
setRotateKey( spep_1 -3 + 48, 1, -75.3 );
setRotateKey( spep_1 -3 + 50, 1, -75 );
setRotateKey( spep_1 -3 + 52, 1, -74.7 );
setRotateKey( spep_1 -3 + 54, 1, -74.4 );
setRotateKey( spep_1 -3 + 56, 1, -74 );
setRotateKey( spep_1 -3 + 58, 1, -74 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 82, 1, 1 );
setDisp( spep_1 -3 + 187, 1, 0 );
changeAnime( spep_1 -3 + 82, 1, 106 );
changeAnime( spep_1 -3 + 90, 1, 108 );
changeAnime( spep_1 -3 + 94, 1, 6 );
changeAnime( spep_1 -3 + 98, 1, 106 );
changeAnime( spep_1 -3 + 106, 1, 108 );
changeAnime( spep_1 -3 + 110, 1, 6 );
changeAnime( spep_1 -3 + 114, 1, 106 );
changeAnime( spep_1 -3 + 122, 1, 108 );
changeAnime( spep_1 -3 + 126, 1, 6 );
changeAnime( spep_1 -3 + 130, 1, 106 );
changeAnime( spep_1 -3 + 136, 1, 108 );
changeAnime( spep_1 -3 + 142, 1, 106 );
changeAnime( spep_1 -3 + 150, 1, 7 );
changeAnime( spep_1 -3 + 154, 1, 108 );
changeAnime( spep_1 -3 + 158, 1, 106 );
changeAnime( spep_1 -3 + 166, 1, 7 );
changeAnime( spep_1 -3 + 170, 1, 108 );
changeAnime( spep_1 -3 + 174, 1, 106 );
changeAnime( spep_1 -3 + 178, 1, 108 );
changeAnime( spep_1 -3 + 182, 1, 106 );

setMoveKey( spep_1 -3 + 82, 1, 74.8, -29.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 60.9, -94.1 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 36.5, -80.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 102.7, -50.4 , 0 );
setMoveKey( spep_1 -3 + 89, 1, 102.7, -50.4 , 0 );--
setMoveKey( spep_1 -3 + 90, 1, 34.9, -2.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 83.1, -20.4 , 0 );
setMoveKey( spep_1 -3 + 93, 1, 83.1, -20.4 , 0 );--
setMoveKey( spep_1 -3 + 94, 1, -19, -89 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 19, -17.1 , 0 );
setMoveKey( spep_1 -3 + 97, 1, 19, -17.1 , 0 );--
setMoveKey( spep_1 -3 + 98, 1, 39.8, -119.1 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -2.1, -79.3 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 26, -47.5 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 96.2, -31.6 , 0 );
setMoveKey( spep_1 -3 + 105, 1, 96.2, -31.6 , 0 );--
setMoveKey( spep_1 -3 + 106, 1, 84.5, -77.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 40.7, -63.2 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 40.7, -63.2 , 0 );--
setMoveKey( spep_1 -3 + 110, 1, 32.9, -46.1 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -37.1, -16.2 , 0 );
setMoveKey( spep_1 -3 + 113, 1, -37.1, -16.2 , 0 );--
setMoveKey( spep_1 -3 + 114, 1, 62.9, -40.4 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 33, -96.5 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 91.5, -24.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 61.7, -120.9 , 0 );
setMoveKey( spep_1 -3 + 121, 1, 61.7, -120.9 , 0 );--
setMoveKey( spep_1 -3 + 122, 1, 22, -61.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 30.2, -30 , 0 );
setMoveKey( spep_1 -3 + 125, 1, 30.2, -30 , 0 );--
setMoveKey( spep_1 -3 + 126, 1, 24.8, -27.2 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 10.8, -91.3 , 0 );
setMoveKey( spep_1 -3 + 129, 1, 10.8, -91.3 , 0 );--
setMoveKey( spep_1 -3 + 130, 1, 19.9, -83.6 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 60, -29.7 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 55, -61.9 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 55, -61.9 , 0 );--
setMoveKey( spep_1 -3 + 136, 1, 93.4, -20.5 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 93.4, -20.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 154.4, -116.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 102.8, -77.1 , 0 );
setMoveKey( spep_1 -3 + 141, 1, 102.8, -77.1 , 0 );--
setMoveKey( spep_1 -3 + 142, 1, -135.4, -49.6 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -105.8, 2.3 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -112.6, -160.9 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -64.9, -123.4 , 0 );
setMoveKey( spep_1 -3 + 149, 1, -64.9, -123.4 , 0 );--
setMoveKey( spep_1 -3 + 150, 1, 112.6, -221.9 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 60.9, -182.6 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 60.9, -182.6 , 0 );--
setMoveKey( spep_1 -3 + 154, 1, 114.8, -87.7 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 145.3, -36 , 0 );
setMoveKey( spep_1 -3 + 157, 1, 145.3, -36 , 0 );--
setMoveKey( spep_1 -3 + 158, 1, -59, -53.6 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -11.1, -15.8 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -60.2, -190.9 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -112.5, -151.5 , 0 );
setMoveKey( spep_1 -3 + 165, 1, -112.5, -151.5 , 0 );--
setMoveKey( spep_1 -3 + 166, 1, 99.9, -218.2 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 130.3, -166.9 , 0 );
setMoveKey( spep_1 -3 + 169, 1, 130.3, -166.9 , 0 );--
setMoveKey( spep_1 -3 + 170, 1, 119.5, -105.3 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 168, -67.6 , 0 );
setMoveKey( spep_1 -3 + 173, 1, 168, -67.6 , 0 );--
setMoveKey( spep_1 -3 + 174, 1, -98.6, 13.4 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -151.1, 53.5 , 0 );
setMoveKey( spep_1 -3 + 177, 1, -151.1, 53.5 , 0 );--
setMoveKey( spep_1 -3 + 178, 1, 43.3, -104.8 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 47.4, -147.3 , 0 );
setMoveKey( spep_1 -3 + 181, 1, 47.4, -147.3 , 0 );--
setMoveKey( spep_1 -3 + 182, 1, 12.2, -131.5 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 18.4, -162 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 80.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 187, 1, 45.2, -87.8 , 0 );
--setMoveKey( spep_1 -3 + 189, 1, 45.2, -87.8 , 0 );

s1 = 0.7;
setScaleKey( spep_1 -3 + 82, 1, 3.51, 3.51 );
setScaleKey( spep_1 -3 + 84, 1, 3.52, 3.52 );
setScaleKey( spep_1 -3 + 86, 1, 3.53, 3.53 );
setScaleKey( spep_1 -3 + 88, 1, 3.54, 3.54 );
setScaleKey( spep_1 -3 + 88, 1, 3.54, 3.54 );
setScaleKey( spep_1 -3 + 89, 1, 3.54, 3.54 );--
setScaleKey( spep_1 -3 + 90, 1, 3.81, 3.81 );
setScaleKey( spep_1 -3 + 92, 1, 3.82, 3.82 );
setScaleKey( spep_1 -3 + 93, 1, 3.82, 3.82 );--
setScaleKey( spep_1 -3 + 94, 1, 3.83, 3.83 );
setScaleKey( spep_1 -3 + 96, 1, 3.84, 3.84 );
setScaleKey( spep_1 -3 + 97, 1, 3.84, 3.84 );--
setScaleKey( spep_1 -3 + 98, 1, 3.59, 3.59 );
setScaleKey( spep_1 -3 + 100, 1, 3.6, 3.6 );
setScaleKey( spep_1 -3 + 102, 1, 3.61, 3.61 );
setScaleKey( spep_1 -3 + 104, 1, 3.62, 3.62 );
setScaleKey( spep_1 -3 + 105, 1, 3.62, 3.62 );--
setScaleKey( spep_1 -3 + 106, 1, 3.9, 3.9 );
setScaleKey( spep_1 -3 + 108, 1, 3.91, 3.91 );
setScaleKey( spep_1 -3 + 109, 1, 3.91, 3.91 );--
setScaleKey( spep_1 -3 + 110, 1, 3.92, 3.92 );
setScaleKey( spep_1 -3 + 112, 1, 3.93, 3.93 );
setScaleKey( spep_1 -3 + 113, 1, 3.93, 3.93 );--
setScaleKey( spep_1 -3 + 114, 1, 3.67, 3.67 );
setScaleKey( spep_1 -3 + 116, 1, 3.68, 3.68 );
setScaleKey( spep_1 -3 + 118, 1, 3.69, 3.69 );
setScaleKey( spep_1 -3 + 120, 1, 3.7, 3.7 );
setScaleKey( spep_1 -3 + 121, 1, 3.7, 3.7 );--
setScaleKey( spep_1 -3 + 122, 1, 3.99, 3.99 );
setScaleKey( spep_1 -3 + 124, 1, 4, 4 );
setScaleKey( spep_1 -3 + 125, 1, 4, 4 );--
setScaleKey( spep_1 -3 + 126, 1, 4.01, 4.01 );
setScaleKey( spep_1 -3 + 128, 1, 4.02, 4.02 );
setScaleKey( spep_1 -3 + 129, 1, 4.02, 4.02 );--
setScaleKey( spep_1 -3 + 130, 1, 3.76, 3.76 );
setScaleKey( spep_1 -3 + 132, 1, 3.77, 3.77 );
setScaleKey( spep_1 -3 + 134, 1, 3.78, 3.78 );
setScaleKey( spep_1 -3 + 135, 1, 3.78, 3.78 );--
setScaleKey( spep_1 -3 + 136, 1, 4.06, 4.06 );
setScaleKey( spep_1 -3 + 137, 1, 4.06, 4.06 );
setScaleKey( spep_1 -3 + 138, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 140, 1, 2.3, 2.3 );
setScaleKey( spep_1 -3 + 141, 1, 2.3, 2.3 );--
setScaleKey( spep_1 -3 + 142, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 144, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 146, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 148, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 149, 1, 2.34, 2.34 );--
setScaleKey( spep_1 -3 + 150, 1, 1.43 -s1, 1.43-s1 );
setScaleKey( spep_1 -3 + 152, 1, 1.44-s1, 1.44-s1 );
setScaleKey( spep_1 -3 + 153, 1, 1.44-s1, 1.44-s1 );--
setScaleKey( spep_1 -3 + 154, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 156, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 157, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 158, 1, 2.38, 2.38 );
setScaleKey( spep_1 -3 + 160, 1, 2.39, 2.39 );
setScaleKey( spep_1 -3 + 162, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 164, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 165, 1, 2.41, 2.41 );--
setScaleKey( spep_1 -3 + 166, 1, 1.48-s1, 1.48-s1 );
setScaleKey( spep_1 -3 + 169, 1, 1.48-s1, 1.48-s1 );--
setScaleKey( spep_1 -3 + 170, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 172, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 173, 1, 2.44, 2.44 );--
setScaleKey( spep_1 -3 + 174, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 176, 1, 2.46, 2.46 );
setScaleKey( spep_1 -3 + 177, 1, 2.46, 2.46 );--
setScaleKey( spep_1 -3 + 178, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 180, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 181, 1, 2.48, 2.48 );--
setScaleKey( spep_1 -3 + 182, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 184, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 186, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 187, 1, 2.51, 2.51 );
--setScaleKey( spep_1 -3 + 189, 1, 2.51, 2.51 );

setRotateKey( spep_1 -3 + 82, 1, -55.4 );
setRotateKey( spep_1 -3 + 84, 1, -55.4 );
setRotateKey( spep_1 -3 + 86, 1, -41.5 );
setRotateKey( spep_1 -3 + 88, 1, -41.5 );
setRotateKey( spep_1 -3 + 89, 1, -41.5 );--
setRotateKey( spep_1 -3 + 90, 1, 49.9 );
setRotateKey( spep_1 -3 + 92, 1, 49.9 );
setRotateKey( spep_1 -3 + 93, 1, 49.9 );--
setRotateKey( spep_1 -3 + 94, 1, 115.3 );
setRotateKey( spep_1 -3 + 96, 1, 115.3 );
setRotateKey( spep_1 -3 + 97, 1, 115.3 );--
setRotateKey( spep_1 -3 + 98, 1, -55.4 );
setRotateKey( spep_1 -3 + 100, 1, -55.4 );
setRotateKey( spep_1 -3 + 102, 1, -41.5 );
setRotateKey( spep_1 -3 + 104, 1, -41.5 );
setRotateKey( spep_1 -3 + 105, 1, -41.5 );--
setRotateKey( spep_1 -3 + 106, 1, 49.9 );
setRotateKey( spep_1 -3 + 108, 1, 49.9 );
setRotateKey( spep_1 -3 + 109, 1, 49.9 );--
setRotateKey( spep_1 -3 + 110, 1, 115.3 );
setRotateKey( spep_1 -3 + 112, 1, 115.3 );
setRotateKey( spep_1 -3 + 113, 1, 115.3 );--
setRotateKey( spep_1 -3 + 114, 1, -55.4 );
setRotateKey( spep_1 -3 + 116, 1, -55.4 );
setRotateKey( spep_1 -3 + 118, 1, -41.5 );
setRotateKey( spep_1 -3 + 120, 1, -41.5 );
setRotateKey( spep_1 -3 + 121, 1, -41.5 );--
setRotateKey( spep_1 -3 + 122, 1, 49.9 );
setRotateKey( spep_1 -3 + 124, 1, 49.9 );
setRotateKey( spep_1 -3 + 125, 1, 49.9 );--
setRotateKey( spep_1 -3 + 126, 1, 115.3 );
setRotateKey( spep_1 -3 + 129, 1, 115.3 );
setRotateKey( spep_1 -3 + 130, 1, -55.4 );
setRotateKey( spep_1 -3 + 132, 1, -55.4 );
setRotateKey( spep_1 -3 + 134, 1, -41.5 );
setRotateKey( spep_1 -3 + 135, 1, -41.5 );--
setRotateKey( spep_1 -3 + 136, 1, 49.9 );
setRotateKey( spep_1 -3 + 137, 1, 49.9 );
setRotateKey( spep_1 -3 + 138, 1, 0 );
setRotateKey( spep_1 -3 + 140, 1, 0 );
setRotateKey( spep_1 -3 + 141, 1, 0 );--
setRotateKey( spep_1 -3 + 142, 1, -39.7 );
setRotateKey( spep_1 -3 + 144, 1, -39.7 );
setRotateKey( spep_1 -3 + 146, 1, -79.9 );
setRotateKey( spep_1 -3 + 148, 1, -79.9 );
setRotateKey( spep_1 -3 + 149, 1, -79.9 );--
setRotateKey( spep_1 -3 + 150, 1, -238.2 );
setRotateKey( spep_1 -3 + 152, 1, -238.2 );
setRotateKey( spep_1 -3 + 153, 1, -238.2 );--
setRotateKey( spep_1 -3 + 154, 1, -360 );
setRotateKey( spep_1 -3 + 156, 1, -360 );
setRotateKey( spep_1 -3 + 157, 1, -360 );--
setRotateKey( spep_1 -3 + 158, 1, -399.7 );
setRotateKey( spep_1 -3 + 160, 1, -399.7 );
setRotateKey( spep_1 -3 + 162, 1, -439.9 );
setRotateKey( spep_1 -3 + 164, 1, -439.9 );
setRotateKey( spep_1 -3 + 165, 1, -439.9 );--
setRotateKey( spep_1 -3 + 166, 1, -598.2 );
setRotateKey( spep_1 -3 + 169, 1, -598.2 );--
setRotateKey( spep_1 -3 + 170, 1, -720 );
setRotateKey( spep_1 -3 + 172, 1, -720 );
setRotateKey( spep_1 -3 + 173, 1, -720 );--
setRotateKey( spep_1 -3 + 174, 1, -759.7 );
setRotateKey( spep_1 -3 + 176, 1, -759.7 );
setRotateKey( spep_1 -3 + 177, 1, -759.7 );--
setRotateKey( spep_1 -3 + 178, 1, -720 );
setRotateKey( spep_1 -3 + 181, 1, -720 );--
setRotateKey( spep_1 -3 + 182, 1, -759.7 );
setRotateKey( spep_1 -3 + 184, 1, -759.7 );
setRotateKey( spep_1 -3 + 186, 1, -799.9 );
setRotateKey( spep_1 -3 + 187, 1, -799.9 );
--setRotateKey( spep_1 -3 + 189, 1, -799.9 );

-- ** 音 ** --
--頭突き
SE016 = playSeVer2( spep_1 + 2, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE016, 89 );
SE017 = playSeVer2( spep_1 + 2, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE017, 75 );
SE018 = playSeVer2( spep_1 + 2, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE018, 52 );

--画面遷移
SE019 = playSeVer2( spep_1 + 16, 1072, "", 0, 0, 0, -1);

--連続攻撃（速）
SE020 = playSeVer2( spep_1 + 76, 1187, "",spep_1 + 100, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 76, SE020, 66 );
SE021 = playSeVer2( spep_1 + 76, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 86, 1187, "",spep_1 + 110, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 86, SE022, 58 );
SE023 = playSeVer2( spep_1 + 96, 1187, "",spep_1 + 120, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 96, SE023, 58 );
SE024 = playSeVer2( spep_1 + 96, 1010, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 106, 1187, "",spep_1 + 130, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 106, SE025, 60 );
SE026 = playSeVer2( spep_1 + 116, 1187, "",spep_1 + 140, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 116, SE026, 56 );

--正面連打
SE027 = playSeVer2( spep_1 + 124, 1187, "",spep_1 + 148, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 124, SE027, 82 );
SE028 = playSeVer2( spep_1 + 124, 1359, "",spep_1 + 162, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 124, SE028, 63 );
SE029 = playSeVer2( spep_1 + 138, 1187, "",spep_1 + 162, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 138, SE029, 81 );
SE030 = playSeVer2( spep_1 + 138, 1359, "",spep_1 + 166, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 138, SE030, 71 );
SE031 = playSeVer2( spep_1 + 152, 1187, "",spep_1 + 174, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 152, SE031, 83 );
SE032 = playSeVer2( spep_1 + 152, 1359, "",spep_1 + 178, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 152, SE032, 58 );
SE033 = playSeVer2( spep_1 + 164, 1187, "",spep_1 + 194, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 164, SE033, 69 );
SE034 = playSeVer2( spep_1 + 164, 1359, "",spep_1 + 194, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 164, SE034, 65 );
SE036 = playSeVer2( spep_1 + 178, 1187, "",spep_1 + 234, 0, 44, -1);
setSeVolumeByWorkId( spep_1 + 178, SE036, 63 );
SE037 = playSeVer2( spep_1 + 178, 1359, "",spep_1 + 234, 0, 44, -1);
setSeVolumeByWorkId( spep_1 + 178, SE037, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 184 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 184;


------------------------------------------------------
-- ヒッチヒャックパンチ(168F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_2 + 0, SP_04, 166, 0x100, -1, 0, 0, 0 );  --ヒッチヒャックパンチ	ef_003
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 166, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 166, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 166, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 166 -1, punch_f, 255 );
setEffAlphaKey( spep_2 + 166, punch_f, 0 );

punch_b = entryEffectLife( spep_2 + 0, SP_05, 166, 0x80, -1, 0, 0, 0 );  --ヒッチヒャックパンチ　裏	ef_003_back
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 166, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 166, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 166, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 166 -1, punch_b, 255 );
setEffAlphaKey( spep_2 + 166, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 92, 1, 1 );
setDisp( spep_2 -3 + 169, 1, 0 );
changeAnime( spep_2 -3 + 92, 1, 108 );
changeAnime( spep_2 -3 + 110, 1, 106 );

setMoveKey( spep_2 -3 + 92, 1, -243.8, 135.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -191.7, 121.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -143.1, 108.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -98.3, 95.8 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -57.6, 82.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -20.5, 69.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 14.8, 54.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 54, 36.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 103.1, 11 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 103.1, 11 , 0 );--
setMoveKey( spep_2 -3 + 110, 1, 47.9, 4 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 47.9, 4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 50.5, 56.6 , 0 );
setMoveKey( spep_2 -3 + 113, 1, 50.5, 56.6 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -40.8, -35 , 0 );
setMoveKey( spep_2 -3 + 115, 1, -40.8, -35 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 92.3, -22.6 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 92.3, -22.6 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 13.7, 49.6 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 13.7, 49.6 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -26.5, -8.5 , 0 );
setMoveKey( spep_2 -3 + 121, 1, -26.5, -8.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 17.8, -24.7 , 0 );
setMoveKey( spep_2 -3 + 123, 1, 17.8, -24.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -23.5, 6.8 , 0 );
setMoveKey( spep_2 -3 + 125, 1, -23.5, 6.8 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 61.6, 28.2 , 0 );
setMoveKey( spep_2 -3 + 127, 1, 61.6, 28.2 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -16.9, 33.3 , 0 );
setMoveKey( spep_2 -3 + 129, 1, -16.9, 33.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 20.9, -11.6 , 0 );
setMoveKey( spep_2 -3 + 131, 1, 20.9, -11.6 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 44.8, 35.2 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 44.8, 35.2 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -24.9, 20.1 , 0 );
setMoveKey( spep_2 -3 + 135, 1, -24.9, 20.1 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 7.5, -3.2 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 7.5, -3.2 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 18, 41.5 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 18, 41.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -15.3, 16.1 , 0 );
setMoveKey( spep_2 -3 + 141, 1, -15.3, 16.1 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 7.5, 32.7 , 0 );
setMoveKey( spep_2 -3 + 143, 1, 7.5, 32.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -1.6, 27.2 , 0 );
setMoveKey( spep_2 -3 + 145, 1, -1.6, 27.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -2.7, 27.6 , 0 );
setMoveKey( spep_2 -3 + 147, 1, -2.7, 27.6 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -3.6, 28.1 , 0 );
setMoveKey( spep_2 -3 + 149, 1, -3.6, 28.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -4.5, 28.5 , 0 );
setMoveKey( spep_2 -3 + 151, 1, -4.5, 28.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -5.4, 28.8 , 0 );
setMoveKey( spep_2 -3 + 153, 1, -5.4, 28.8 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -6.2, 29.2 , 0 );
setMoveKey( spep_2 -3 + 155, 1, -6.2, 29.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -6.9, 29.5 , 0 );
setMoveKey( spep_2 -3 + 157, 1, -6.9, 29.5 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -7.7, 29.9 , 0 );
setMoveKey( spep_2 -3 + 159, 1, -7.7, 29.9 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -8.3, 30.2 , 0 );
setMoveKey( spep_2 -3 + 161, 1, -8.3, 30.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -9.1, 30.4 , 0 );
setMoveKey( spep_2 -3 + 169, 1, -9.1, 30.4 , 0 );

setScaleKey( spep_2 -3 + 92, 1, 4.67, 4.67 );
setScaleKey( spep_2 -3 + 94, 1, 4.37, 4.37 );
setScaleKey( spep_2 -3 + 96, 1, 4.07, 4.07 );
setScaleKey( spep_2 -3 + 98, 1, 3.79, 3.79 );
setScaleKey( spep_2 -3 + 100, 1, 3.51, 3.51 );
setScaleKey( spep_2 -3 + 102, 1, 3.23, 3.23 );
setScaleKey( spep_2 -3 + 104, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 106, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 108, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 109, 1, 2.12, 2.12 );--
setScaleKey( spep_2 -3 + 110, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 111, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 112, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 113, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 114, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 115, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 116, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 117, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 118, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 119, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 120, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 121, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 122, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 123, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 124, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 125, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 126, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 127, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 128, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 129, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 130, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 131, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 132, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 133, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 134, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 135, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 136, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 137, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 138, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 139, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 140, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 141, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 142, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 143, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 144, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 145, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 146, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 150, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 151, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 152, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 160, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 161, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 162, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 169, 1, 1.95, 1.95 );

setRotateKey( spep_2 -3 + 92, 1, -5 );
setRotateKey( spep_2 -3 + 94, 1, -4.7 );
setRotateKey( spep_2 -3 + 96, 1, -4.4 );
setRotateKey( spep_2 -3 + 98, 1, -4 );
setRotateKey( spep_2 -3 + 100, 1, -3.6 );
setRotateKey( spep_2 -3 + 102, 1, -3.1 );
setRotateKey( spep_2 -3 + 104, 1, -2.6 );
setRotateKey( spep_2 -3 + 106, 1, -1.9 );
setRotateKey( spep_2 -3 + 108, 1, -1 );
setRotateKey( spep_2 -3 + 109, 1, -1 );--
setRotateKey( spep_2 -3 + 110, 1, -46.4 );
setRotateKey( spep_2 -3 + 169, 1, -46.4 );

-- ** 音 ** --
--振りかぶる
SE038 = playSeVer2( spep_2 + 10, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE038, 63 );
setPitch( spep_2 + 10, SE038, -400 );
setTimeStretch( SE038, 0.73, 30, 4 );
SE039 = playSeVer2( spep_2 + 10, 1278, "",spep_2 + 72, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 10, SE039, 77 );
SE040 = playSeVer2( spep_2 + 10, 1116, "",spep_2 + 52, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 10, SE040, 79 );

--パンチ
SE041 = playSeVer2( spep_2 + 40, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE041, 71 );
SE042 = playSeVer2( spep_2 + 46, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE042, 78 );

--敵飛んでいく
SE043 = playSeVer2( spep_2 + 72, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE043, 71 );
SE044 = playSeVer2( spep_2 + 72, 1183, "",spep_2 + 128, 0, 12, -1);

--柱ぶつかる
SE045 = playSeVer2( spep_2 + 104, 1159, "",spep_2 + 180, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 104, SE045, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 166;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--立ち止まる
SE047 = playSeVer2( spep_3 + 80, 1275, "",spep_3 + 180, 0, 42, 0.5);
SE035 = playSeVer2( spep_3 + 86, 1336, "", 0, 14, 0, 0.5);
setStartTimeMs( SE035,  4600 );
SE048 = playSeVer2( spep_3 + 90, 8, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- ヒッチヒャックビーム(198F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_4 + 0, SP_06, 198, 0x100, -1, 0, 0, 0 );  --ヒッチヒャックビーム	ef_004
setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 198, beam, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 198, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 198, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 198 -1, beam, 255 );
setEffAlphaKey( spep_4 + 198, beam, 0 );

-- ** 音 ** --
--腕クロスする
SE049 = playSeVer2( spep_4 + 54, 1004, "", 0, 0, 0, -1);

--体光る
SE050 = playSeVer2( spep_4 + 80, 1282, "",spep_4 + 186, 0, 22, 0.6);
setSeVolumeByWorkId( spep_4 + 80, SE050, 72 );
SE051 = playSeVer2( spep_4 + 80, 1334, "",spep_4 + 186, 0, 22, 0.6);
setSeVolumeByWorkId( spep_4 + 80, SE051, 85 );
SE052 = playSeVer2( spep_4 + 112, 1296, "",spep_4 + 186, 0, 22, -1);
setSeVolumeByWorkId( spep_4 + 112, SE052, 79 );

--レーザー発射
SE053 = playSeVer2( spep_4 + 158, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 158, SE053, 130 );
SE054 = playSeVer2( spep_4 + 158, 1177, "",spep_4 + 234, 0, 32, -1);
setSeVolumeByWorkId( spep_4 + 158, SE054, 77 );
SE055 = playSeVer2( spep_4 + 158, 1179, "",spep_4 + 234, 0, 32, -1);
SE056 = playSeVer2( spep_4 + 158, 1109, "", 0, 0, 0, -1);

--連続爆発
SE057 = playSeVer2( spep_4 + 196, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 196, SE057, 78 );
SE058 = playSeVer2( spep_4 + 196, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 196, SE058, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 198 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 198;


------------------------------------------------------
-- 爆発(176F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --爆発	ef_005
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 144, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 144, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 144, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 144, finish, 255 );

-- ** 音 ** --
--連続爆発
SE059 = playSeVer2( spep_5 + 24, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 24, SE059, 85 );
E060 = playSeVer2( spep_5 + 24, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 24, SE060, 84 );
E061 = playSeVer2( spep_5 + 54, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 54, SE061, 79 );
E062 = playSeVer2( spep_5 + 54, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 54, SE062, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 4 );
endPhase( spep_5 + 154 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ヒッチヒャック突進(118F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --ヒッチヒャック突進    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 113, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 113, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 113, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 113 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 113, first_f, 0 );

--走ってくる
SE001 = playSeVer2( spep_0 + 0, 1014, "",spep_0 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 75 );
SE002 = playSeVer2( spep_0 + 0, 1190, "",spep_0 + 26, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE004 = playSeVer2( spep_0 + 18, 1002, "",spep_0 + 52, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 78 );
SE005 = playSeVer2( spep_0 + 18, 1190, "",spep_0 + 42, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 113 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
   
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

spep_x = spep_0 + 18;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
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
--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--走ってくる
SE006 = playSeVer2( spep_0 + 38, 1014, "",spep_0 + 78, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 38, SE006, 69 );
SE007 = playSeVer2( spep_0 + 38, 1190, "",spep_0 + 64, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 38, SE007, 69 );
SE008 = playSeVer2( spep_0 + 58, 1002, "",spep_0 + 96, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 58, SE008, 77 );
SE009 = playSeVer2( spep_0 + 58, 1190, "",spep_0 + 82, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 58, SE009, 65 );
SE010 = playSeVer2( spep_0 + 74, 1014, "",spep_0 + 106, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 74, SE010, 74 );
SE011 = playSeVer2( spep_0 + 74, 1190, "",spep_0 + 100, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 74, SE011, 76 );
SE012 = playSeVer2( spep_0 + 92, 1014, "",spep_0 + 120 -1, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 92, SE012, 71 );
SE013 = playSeVer2( spep_0 + 92, 1190, "",spep_0 + 120 -1, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 92, SE013, 74 );
SE014 = playSeVer2( spep_0 + 106, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE014, 65 );
SE015 = playSeVer2( spep_0 + 106, 1190, "",spep_0 + 132 -1, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 106, SE015, 72 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 113;


------------------------------------------------------
-- ヒッチヒャック頭突き(186F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
butting_f = entryEffectLife( spep_1 + 0, SP_02r, 184, 0x100, -1, 0, 0, 0 );  --ヒッチヒャック頭突き	ef_002
setEffMoveKey( spep_1 + 0, butting_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 184, butting_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, butting_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 184, butting_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, butting_f, 0 );
setEffRotateKey( spep_1 + 184, butting_f, 0 );
setEffAlphaKey( spep_1 + 0, butting_f, 255 );
setEffAlphaKey( spep_1 + 184 -1, butting_f, 255 );
setEffAlphaKey( spep_1 + 184, butting_f, 0 );

butting_g = entryEffectLife( spep_1 + 0, SP_03r, 184, 0x80, -1, 0, 0, 0 );  --ヒッチヒャック頭突き　裏	ef_002_back
setEffMoveKey( spep_1 + 0, butting_g, 0, 0 , 0 );
setEffMoveKey( spep_1 + 184, butting_g, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, butting_g, -1.0, 1.0 );
setEffScaleKey( spep_1 + 184, butting_g, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, butting_g, 0 );
setEffRotateKey( spep_1 + 184, butting_g, 0 );
setEffAlphaKey( spep_1 + 0, butting_g, 255 );
setEffAlphaKey( spep_1 + 184 -1, butting_g, 255 );
setEffAlphaKey( spep_1 + 184, butting_g, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 8, 1, 1 );
setDisp( spep_1 -3 + 58, 1, 0 );
changeAnime( spep_1 -3 + 8, 1, 106 );

setMoveKey( spep_1 -3 + 8, 1, 453, -401.4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 331, -390.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 209.1, -379.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 255.1, -388.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 293.2, -495 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 375.6, -462.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 282.2, -502 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 361.1, -423.6 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 349.2, -542.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 348.6, -463 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 286.3, -466.4 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 336.2, -441 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 319.4, -518.8 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 356.9, -482.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 393.7, -462 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 400.7, -516.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 397, -491.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 446.6, -497.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 451.4, -476.5 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 461.6, -511.7 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 508.5, -495.4 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 539.9, -498.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 574.1, -502.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 611, -506.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 650.8, -510.9 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 650.8, -510.9 , 0 );

setScaleKey( spep_1 -3 + 8, 1, 6.75, 6.75 );
setScaleKey( spep_1 -3 + 48, 1, 6.75, 6.75 );
setScaleKey( spep_1 -3 + 50, 1, 6.76, 6.76 );
setScaleKey( spep_1 -3 + 52, 1, 6.78, 6.78 );
setScaleKey( spep_1 -3 + 54, 1, 6.8, 6.8 );
setScaleKey( spep_1 -3 + 56, 1, 6.82, 6.82 );
setScaleKey( spep_1 -3 + 58, 1, 6.82, 6.82 );

setRotateKey( spep_1 -3 + 8, 1, -79.4 );
setRotateKey( spep_1 -3 + 14, 1, -79.4 );
setRotateKey( spep_1 -3 + 16, 1, -78.5 );
setRotateKey( spep_1 -3 + 18, 1, -77.8 );
setRotateKey( spep_1 -3 + 20, 1, -77.4 );
setRotateKey( spep_1 -3 + 22, 1, -77.3 );
setRotateKey( spep_1 -3 + 24, 1, -77.2 );
setRotateKey( spep_1 -3 + 28, 1, -77.2 );
setRotateKey( spep_1 -3 + 30, 1, -77.1 );
setRotateKey( spep_1 -3 + 32, 1, -77 );
setRotateKey( spep_1 -3 + 34, 1, -76.8 );
setRotateKey( spep_1 -3 + 36, 1, -76.7 );
setRotateKey( spep_1 -3 + 38, 1, -76.5 );
setRotateKey( spep_1 -3 + 40, 1, -76.3 );
setRotateKey( spep_1 -3 + 42, 1, -76.1 );
setRotateKey( spep_1 -3 + 44, 1, -75.9 );
setRotateKey( spep_1 -3 + 46, 1, -75.6 );
setRotateKey( spep_1 -3 + 48, 1, -75.3 );
setRotateKey( spep_1 -3 + 50, 1, -75 );
setRotateKey( spep_1 -3 + 52, 1, -74.7 );
setRotateKey( spep_1 -3 + 54, 1, -74.4 );
setRotateKey( spep_1 -3 + 56, 1, -74 );
setRotateKey( spep_1 -3 + 58, 1, -74 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 82, 1, 1 );
setDisp( spep_1 -3 + 187, 1, 0 );
changeAnime( spep_1 -3 + 82, 1, 106 );
changeAnime( spep_1 -3 + 90, 1, 108 );
changeAnime( spep_1 -3 + 94, 1, 6 );
changeAnime( spep_1 -3 + 98, 1, 106 );
changeAnime( spep_1 -3 + 106, 1, 108 );
changeAnime( spep_1 -3 + 110, 1, 6 );
changeAnime( spep_1 -3 + 114, 1, 106 );
changeAnime( spep_1 -3 + 122, 1, 108 );
changeAnime( spep_1 -3 + 126, 1, 6 );
changeAnime( spep_1 -3 + 130, 1, 106 );
changeAnime( spep_1 -3 + 136, 1, 108 );
changeAnime( spep_1 -3 + 142, 1, 106 );
changeAnime( spep_1 -3 + 150, 1, 7 );
changeAnime( spep_1 -3 + 154, 1, 108 );
changeAnime( spep_1 -3 + 158, 1, 106 );
changeAnime( spep_1 -3 + 166, 1, 7 );
changeAnime( spep_1 -3 + 170, 1, 108 );
changeAnime( spep_1 -3 + 174, 1, 106 );
changeAnime( spep_1 -3 + 178, 1, 108 );
changeAnime( spep_1 -3 + 182, 1, 106 );

setMoveKey( spep_1 -3 + 82, 1, 74.8, -29.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 60.9, -94.1 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 36.5, -80.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 102.7, -50.4 , 0 );
setMoveKey( spep_1 -3 + 89, 1, 102.7, -50.4 , 0 );--
setMoveKey( spep_1 -3 + 90, 1, 34.9, -2.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 83.1, -20.4 , 0 );
setMoveKey( spep_1 -3 + 93, 1, 83.1, -20.4 , 0 );--
setMoveKey( spep_1 -3 + 94, 1, -19, -89 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 19, -17.1 , 0 );
setMoveKey( spep_1 -3 + 97, 1, 19, -17.1 , 0 );--
setMoveKey( spep_1 -3 + 98, 1, 39.8, -119.1 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -2.1, -79.3 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 26, -47.5 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 96.2, -31.6 , 0 );
setMoveKey( spep_1 -3 + 105, 1, 96.2, -31.6 , 0 );--
setMoveKey( spep_1 -3 + 106, 1, 84.5, -77.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 40.7, -63.2 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 40.7, -63.2 , 0 );--
setMoveKey( spep_1 -3 + 110, 1, 32.9, -46.1 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -37.1, -16.2 , 0 );
setMoveKey( spep_1 -3 + 113, 1, -37.1, -16.2 , 0 );--
setMoveKey( spep_1 -3 + 114, 1, 62.9, -40.4 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 33, -96.5 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 91.5, -24.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 61.7, -120.9 , 0 );
setMoveKey( spep_1 -3 + 121, 1, 61.7, -120.9 , 0 );--
setMoveKey( spep_1 -3 + 122, 1, 22, -61.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 30.2, -30 , 0 );
setMoveKey( spep_1 -3 + 125, 1, 30.2, -30 , 0 );--
setMoveKey( spep_1 -3 + 126, 1, 24.8, -27.2 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 10.8, -91.3 , 0 );
setMoveKey( spep_1 -3 + 129, 1, 10.8, -91.3 , 0 );--
setMoveKey( spep_1 -3 + 130, 1, 19.9, -83.6 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 60, -29.7 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 55, -61.9 , 0 );
setMoveKey( spep_1 -3 + 135, 1, 55, -61.9 , 0 );--
setMoveKey( spep_1 -3 + 136, 1, 93.4, -20.5 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 93.4, -20.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 154.4, -116.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 102.8, -77.1 , 0 );
setMoveKey( spep_1 -3 + 141, 1, 102.8, -77.1 , 0 );--
setMoveKey( spep_1 -3 + 142, 1, -135.4, -49.6 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -105.8, 2.3 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -112.6, -160.9 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -64.9, -123.4 , 0 );
setMoveKey( spep_1 -3 + 149, 1, -64.9, -123.4 , 0 );--
setMoveKey( spep_1 -3 + 150, 1, 112.6, -221.9 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 60.9, -182.6 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 60.9, -182.6 , 0 );--
setMoveKey( spep_1 -3 + 154, 1, 114.8, -87.7 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 145.3, -36 , 0 );
setMoveKey( spep_1 -3 + 157, 1, 145.3, -36 , 0 );--
setMoveKey( spep_1 -3 + 158, 1, -59, -53.6 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -11.1, -15.8 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -60.2, -190.9 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -112.5, -151.5 , 0 );
setMoveKey( spep_1 -3 + 165, 1, -112.5, -151.5 , 0 );--
setMoveKey( spep_1 -3 + 166, 1, 99.9, -218.2 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 130.3, -166.9 , 0 );
setMoveKey( spep_1 -3 + 169, 1, 130.3, -166.9 , 0 );--
setMoveKey( spep_1 -3 + 170, 1, 119.5, -105.3 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 168, -67.6 , 0 );
setMoveKey( spep_1 -3 + 173, 1, 168, -67.6 , 0 );--
setMoveKey( spep_1 -3 + 174, 1, -98.6, 13.4 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -151.1, 53.5 , 0 );
setMoveKey( spep_1 -3 + 177, 1, -151.1, 53.5 , 0 );--
setMoveKey( spep_1 -3 + 178, 1, 43.3, -104.8 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 47.4, -147.3 , 0 );
setMoveKey( spep_1 -3 + 181, 1, 47.4, -147.3 , 0 );--
setMoveKey( spep_1 -3 + 182, 1, 12.2, -131.5 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 18.4, -162 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 80.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 187, 1, 45.2, -87.8 , 0 );
--setMoveKey( spep_1 -3 + 189, 1, 45.2, -87.8 , 0 );

s1 = 0.7;
setScaleKey( spep_1 -3 + 82, 1, 3.51, 3.51 );
setScaleKey( spep_1 -3 + 84, 1, 3.52, 3.52 );
setScaleKey( spep_1 -3 + 86, 1, 3.53, 3.53 );
setScaleKey( spep_1 -3 + 88, 1, 3.54, 3.54 );
setScaleKey( spep_1 -3 + 88, 1, 3.54, 3.54 );
setScaleKey( spep_1 -3 + 89, 1, 3.54, 3.54 );--
setScaleKey( spep_1 -3 + 90, 1, 3.81, 3.81 );
setScaleKey( spep_1 -3 + 92, 1, 3.82, 3.82 );
setScaleKey( spep_1 -3 + 93, 1, 3.82, 3.82 );--
setScaleKey( spep_1 -3 + 94, 1, 3.83, 3.83 );
setScaleKey( spep_1 -3 + 96, 1, 3.84, 3.84 );
setScaleKey( spep_1 -3 + 97, 1, 3.84, 3.84 );--
setScaleKey( spep_1 -3 + 98, 1, 3.59, 3.59 );
setScaleKey( spep_1 -3 + 100, 1, 3.6, 3.6 );
setScaleKey( spep_1 -3 + 102, 1, 3.61, 3.61 );
setScaleKey( spep_1 -3 + 104, 1, 3.62, 3.62 );
setScaleKey( spep_1 -3 + 105, 1, 3.62, 3.62 );--
setScaleKey( spep_1 -3 + 106, 1, 3.9, 3.9 );
setScaleKey( spep_1 -3 + 108, 1, 3.91, 3.91 );
setScaleKey( spep_1 -3 + 109, 1, 3.91, 3.91 );--
setScaleKey( spep_1 -3 + 110, 1, 3.92, 3.92 );
setScaleKey( spep_1 -3 + 112, 1, 3.93, 3.93 );
setScaleKey( spep_1 -3 + 113, 1, 3.93, 3.93 );--
setScaleKey( spep_1 -3 + 114, 1, 3.67, 3.67 );
setScaleKey( spep_1 -3 + 116, 1, 3.68, 3.68 );
setScaleKey( spep_1 -3 + 118, 1, 3.69, 3.69 );
setScaleKey( spep_1 -3 + 120, 1, 3.7, 3.7 );
setScaleKey( spep_1 -3 + 121, 1, 3.7, 3.7 );--
setScaleKey( spep_1 -3 + 122, 1, 3.99, 3.99 );
setScaleKey( spep_1 -3 + 124, 1, 4, 4 );
setScaleKey( spep_1 -3 + 125, 1, 4, 4 );--
setScaleKey( spep_1 -3 + 126, 1, 4.01, 4.01 );
setScaleKey( spep_1 -3 + 128, 1, 4.02, 4.02 );
setScaleKey( spep_1 -3 + 129, 1, 4.02, 4.02 );--
setScaleKey( spep_1 -3 + 130, 1, 3.76, 3.76 );
setScaleKey( spep_1 -3 + 132, 1, 3.77, 3.77 );
setScaleKey( spep_1 -3 + 134, 1, 3.78, 3.78 );
setScaleKey( spep_1 -3 + 135, 1, 3.78, 3.78 );--
setScaleKey( spep_1 -3 + 136, 1, 4.06, 4.06 );
setScaleKey( spep_1 -3 + 137, 1, 4.06, 4.06 );
setScaleKey( spep_1 -3 + 138, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 140, 1, 2.3, 2.3 );
setScaleKey( spep_1 -3 + 141, 1, 2.3, 2.3 );--
setScaleKey( spep_1 -3 + 142, 1, 2.31, 2.31 );
setScaleKey( spep_1 -3 + 144, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 146, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 148, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 149, 1, 2.34, 2.34 );--
setScaleKey( spep_1 -3 + 150, 1, 1.43 -s1, 1.43-s1 );
setScaleKey( spep_1 -3 + 152, 1, 1.44-s1, 1.44-s1 );
setScaleKey( spep_1 -3 + 153, 1, 1.44-s1, 1.44-s1 );--
setScaleKey( spep_1 -3 + 154, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 156, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 157, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 158, 1, 2.38, 2.38 );
setScaleKey( spep_1 -3 + 160, 1, 2.39, 2.39 );
setScaleKey( spep_1 -3 + 162, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 164, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 165, 1, 2.41, 2.41 );--
setScaleKey( spep_1 -3 + 166, 1, 1.48-s1, 1.48-s1 );
setScaleKey( spep_1 -3 + 169, 1, 1.48-s1, 1.48-s1 );--
setScaleKey( spep_1 -3 + 170, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 172, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 173, 1, 2.44, 2.44 );--
setScaleKey( spep_1 -3 + 174, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 176, 1, 2.46, 2.46 );
setScaleKey( spep_1 -3 + 177, 1, 2.46, 2.46 );--
setScaleKey( spep_1 -3 + 178, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 180, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 181, 1, 2.48, 2.48 );--
setScaleKey( spep_1 -3 + 182, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 184, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 186, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 187, 1, 2.51, 2.51 );
--setScaleKey( spep_1 -3 + 189, 1, 2.51, 2.51 );

setRotateKey( spep_1 -3 + 82, 1, -55.4 );
setRotateKey( spep_1 -3 + 84, 1, -55.4 );
setRotateKey( spep_1 -3 + 86, 1, -41.5 );
setRotateKey( spep_1 -3 + 88, 1, -41.5 );
setRotateKey( spep_1 -3 + 89, 1, -41.5 );--
setRotateKey( spep_1 -3 + 90, 1, 49.9 );
setRotateKey( spep_1 -3 + 92, 1, 49.9 );
setRotateKey( spep_1 -3 + 93, 1, 49.9 );--
setRotateKey( spep_1 -3 + 94, 1, 115.3 );
setRotateKey( spep_1 -3 + 96, 1, 115.3 );
setRotateKey( spep_1 -3 + 97, 1, 115.3 );--
setRotateKey( spep_1 -3 + 98, 1, -55.4 );
setRotateKey( spep_1 -3 + 100, 1, -55.4 );
setRotateKey( spep_1 -3 + 102, 1, -41.5 );
setRotateKey( spep_1 -3 + 104, 1, -41.5 );
setRotateKey( spep_1 -3 + 105, 1, -41.5 );--
setRotateKey( spep_1 -3 + 106, 1, 49.9 );
setRotateKey( spep_1 -3 + 108, 1, 49.9 );
setRotateKey( spep_1 -3 + 109, 1, 49.9 );--
setRotateKey( spep_1 -3 + 110, 1, 115.3 );
setRotateKey( spep_1 -3 + 112, 1, 115.3 );
setRotateKey( spep_1 -3 + 113, 1, 115.3 );--
setRotateKey( spep_1 -3 + 114, 1, -55.4 );
setRotateKey( spep_1 -3 + 116, 1, -55.4 );
setRotateKey( spep_1 -3 + 118, 1, -41.5 );
setRotateKey( spep_1 -3 + 120, 1, -41.5 );
setRotateKey( spep_1 -3 + 121, 1, -41.5 );--
setRotateKey( spep_1 -3 + 122, 1, 49.9 );
setRotateKey( spep_1 -3 + 124, 1, 49.9 );
setRotateKey( spep_1 -3 + 125, 1, 49.9 );--
setRotateKey( spep_1 -3 + 126, 1, 115.3 );
setRotateKey( spep_1 -3 + 129, 1, 115.3 );
setRotateKey( spep_1 -3 + 130, 1, -55.4 );
setRotateKey( spep_1 -3 + 132, 1, -55.4 );
setRotateKey( spep_1 -3 + 134, 1, -41.5 );
setRotateKey( spep_1 -3 + 135, 1, -41.5 );--
setRotateKey( spep_1 -3 + 136, 1, 49.9 );
setRotateKey( spep_1 -3 + 137, 1, 49.9 );
setRotateKey( spep_1 -3 + 138, 1, 0 );
setRotateKey( spep_1 -3 + 140, 1, 0 );
setRotateKey( spep_1 -3 + 141, 1, 0 );--
setRotateKey( spep_1 -3 + 142, 1, -39.7 );
setRotateKey( spep_1 -3 + 144, 1, -39.7 );
setRotateKey( spep_1 -3 + 146, 1, -79.9 );
setRotateKey( spep_1 -3 + 148, 1, -79.9 );
setRotateKey( spep_1 -3 + 149, 1, -79.9 );--
setRotateKey( spep_1 -3 + 150, 1, -238.2 );
setRotateKey( spep_1 -3 + 152, 1, -238.2 );
setRotateKey( spep_1 -3 + 153, 1, -238.2 );--
setRotateKey( spep_1 -3 + 154, 1, -360 );
setRotateKey( spep_1 -3 + 156, 1, -360 );
setRotateKey( spep_1 -3 + 157, 1, -360 );--
setRotateKey( spep_1 -3 + 158, 1, -399.7 );
setRotateKey( spep_1 -3 + 160, 1, -399.7 );
setRotateKey( spep_1 -3 + 162, 1, -439.9 );
setRotateKey( spep_1 -3 + 164, 1, -439.9 );
setRotateKey( spep_1 -3 + 165, 1, -439.9 );--
setRotateKey( spep_1 -3 + 166, 1, -598.2 );
setRotateKey( spep_1 -3 + 169, 1, -598.2 );--
setRotateKey( spep_1 -3 + 170, 1, -720 );
setRotateKey( spep_1 -3 + 172, 1, -720 );
setRotateKey( spep_1 -3 + 173, 1, -720 );--
setRotateKey( spep_1 -3 + 174, 1, -759.7 );
setRotateKey( spep_1 -3 + 176, 1, -759.7 );
setRotateKey( spep_1 -3 + 177, 1, -759.7 );--
setRotateKey( spep_1 -3 + 178, 1, -720 );
setRotateKey( spep_1 -3 + 181, 1, -720 );--
setRotateKey( spep_1 -3 + 182, 1, -759.7 );
setRotateKey( spep_1 -3 + 184, 1, -759.7 );
setRotateKey( spep_1 -3 + 186, 1, -799.9 );
setRotateKey( spep_1 -3 + 187, 1, -799.9 );
--setRotateKey( spep_1 -3 + 189, 1, -799.9 );

-- ** 音 ** --
--頭突き
SE016 = playSeVer2( spep_1 + 2, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE016, 89 );
SE017 = playSeVer2( spep_1 + 2, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE017, 75 );
SE018 = playSeVer2( spep_1 + 2, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE018, 52 );

--画面遷移
SE019 = playSeVer2( spep_1 + 16, 1072, "", 0, 0, 0, -1);

--連続攻撃（速）
SE020 = playSeVer2( spep_1 + 76, 1187, "",spep_1 + 100, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 76, SE020, 66 );
SE021 = playSeVer2( spep_1 + 76, 1009, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 86, 1187, "",spep_1 + 110, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 86, SE022, 58 );
SE023 = playSeVer2( spep_1 + 96, 1187, "",spep_1 + 120, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 96, SE023, 58 );
SE024 = playSeVer2( spep_1 + 96, 1010, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 106, 1187, "",spep_1 + 130, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 106, SE025, 60 );
SE026 = playSeVer2( spep_1 + 116, 1187, "",spep_1 + 140, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 116, SE026, 56 );

--正面連打
SE027 = playSeVer2( spep_1 + 124, 1187, "",spep_1 + 148, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 124, SE027, 82 );
SE028 = playSeVer2( spep_1 + 124, 1359, "",spep_1 + 162, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 124, SE028, 63 );
SE029 = playSeVer2( spep_1 + 138, 1187, "",spep_1 + 162, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 138, SE029, 81 );
SE030 = playSeVer2( spep_1 + 138, 1359, "",spep_1 + 166, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 138, SE030, 71 );
SE031 = playSeVer2( spep_1 + 152, 1187, "",spep_1 + 174, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 152, SE031, 83 );
SE032 = playSeVer2( spep_1 + 152, 1359, "",spep_1 + 178, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 152, SE032, 58 );
SE033 = playSeVer2( spep_1 + 164, 1187, "",spep_1 + 194, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 164, SE033, 69 );
SE034 = playSeVer2( spep_1 + 164, 1359, "",spep_1 + 194, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 164, SE034, 65 );
SE036 = playSeVer2( spep_1 + 178, 1187, "",spep_1 + 234, 0, 44, -1);
setSeVolumeByWorkId( spep_1 + 178, SE036, 63 );
SE037 = playSeVer2( spep_1 + 178, 1359, "",spep_1 + 234, 0, 44, -1);
setSeVolumeByWorkId( spep_1 + 178, SE037, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 184 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 184;


------------------------------------------------------
-- ヒッチヒャックパンチ(168F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_2 + 0, SP_04r, 166, 0x100, -1, 0, 0, 0 );  --ヒッチヒャックパンチ	ef_003
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 166, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 166, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 166, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 166 -1, punch_f, 255 );
setEffAlphaKey( spep_2 + 166, punch_f, 0 );

punch_b = entryEffectLife( spep_2 + 0, SP_05r, 166, 0x80, -1, 0, 0, 0 );  --ヒッチヒャックパンチ　裏	ef_003_back
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 166, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 166, punch_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 166, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 166 -1, punch_b, 255 );
setEffAlphaKey( spep_2 + 166, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 92, 1, 1 );
setDisp( spep_2 -3 + 169, 1, 0 );
changeAnime( spep_2 -3 + 92, 1, 108 );
changeAnime( spep_2 -3 + 110, 1, 106 );

setMoveKey( spep_2 -3 + 92, 1, -243.8, 135.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -191.7, 121.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -143.1, 108.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -98.3, 95.8 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -57.6, 82.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -20.5, 69.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 14.8, 54.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 54, 36.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 103.1, 11 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 103.1, 11 , 0 );--
setMoveKey( spep_2 -3 + 110, 1, 47.9, 4 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 47.9, 4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 50.5, 56.6 , 0 );
setMoveKey( spep_2 -3 + 113, 1, 50.5, 56.6 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -40.8, -35 , 0 );
setMoveKey( spep_2 -3 + 115, 1, -40.8, -35 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 92.3, -22.6 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 92.3, -22.6 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 13.7, 49.6 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 13.7, 49.6 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -26.5, -8.5 , 0 );
setMoveKey( spep_2 -3 + 121, 1, -26.5, -8.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 17.8, -24.7 , 0 );
setMoveKey( spep_2 -3 + 123, 1, 17.8, -24.7 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -23.5, 6.8 , 0 );
setMoveKey( spep_2 -3 + 125, 1, -23.5, 6.8 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 61.6, 28.2 , 0 );
setMoveKey( spep_2 -3 + 127, 1, 61.6, 28.2 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -16.9, 33.3 , 0 );
setMoveKey( spep_2 -3 + 129, 1, -16.9, 33.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 20.9, -11.6 , 0 );
setMoveKey( spep_2 -3 + 131, 1, 20.9, -11.6 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 44.8, 35.2 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 44.8, 35.2 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -24.9, 20.1 , 0 );
setMoveKey( spep_2 -3 + 135, 1, -24.9, 20.1 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 7.5, -3.2 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 7.5, -3.2 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 18, 41.5 , 0 );
setMoveKey( spep_2 -3 + 139, 1, 18, 41.5 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -15.3, 16.1 , 0 );
setMoveKey( spep_2 -3 + 141, 1, -15.3, 16.1 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 7.5, 32.7 , 0 );
setMoveKey( spep_2 -3 + 143, 1, 7.5, 32.7 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -1.6, 27.2 , 0 );
setMoveKey( spep_2 -3 + 145, 1, -1.6, 27.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -2.7, 27.6 , 0 );
setMoveKey( spep_2 -3 + 147, 1, -2.7, 27.6 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -3.6, 28.1 , 0 );
setMoveKey( spep_2 -3 + 149, 1, -3.6, 28.1 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -4.5, 28.5 , 0 );
setMoveKey( spep_2 -3 + 151, 1, -4.5, 28.5 , 0 );
setMoveKey( spep_2 -3 + 152, 1, -5.4, 28.8 , 0 );
setMoveKey( spep_2 -3 + 153, 1, -5.4, 28.8 , 0 );
setMoveKey( spep_2 -3 + 154, 1, -6.2, 29.2 , 0 );
setMoveKey( spep_2 -3 + 155, 1, -6.2, 29.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -6.9, 29.5 , 0 );
setMoveKey( spep_2 -3 + 157, 1, -6.9, 29.5 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -7.7, 29.9 , 0 );
setMoveKey( spep_2 -3 + 159, 1, -7.7, 29.9 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -8.3, 30.2 , 0 );
setMoveKey( spep_2 -3 + 161, 1, -8.3, 30.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -9.1, 30.4 , 0 );
setMoveKey( spep_2 -3 + 169, 1, -9.1, 30.4 , 0 );

setScaleKey( spep_2 -3 + 92, 1, 4.67, 4.67 );
setScaleKey( spep_2 -3 + 94, 1, 4.37, 4.37 );
setScaleKey( spep_2 -3 + 96, 1, 4.07, 4.07 );
setScaleKey( spep_2 -3 + 98, 1, 3.79, 3.79 );
setScaleKey( spep_2 -3 + 100, 1, 3.51, 3.51 );
setScaleKey( spep_2 -3 + 102, 1, 3.23, 3.23 );
setScaleKey( spep_2 -3 + 104, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 106, 1, 2.57, 2.57 );
setScaleKey( spep_2 -3 + 108, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 109, 1, 2.12, 2.12 );--
setScaleKey( spep_2 -3 + 110, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 111, 1, 1.69, 1.69 );
setScaleKey( spep_2 -3 + 112, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 113, 1, 1.72, 1.72 );
setScaleKey( spep_2 -3 + 114, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 115, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 116, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 117, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 118, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 119, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 120, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 121, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 122, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 123, 1, 1.83, 1.83 );
setScaleKey( spep_2 -3 + 124, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 125, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 126, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 127, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 128, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 129, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 130, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 131, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 132, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 133, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 134, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 135, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 136, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 137, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 138, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 139, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 140, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 141, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 142, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 143, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 144, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 145, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 146, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 150, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 151, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 152, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 160, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 161, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 162, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 169, 1, 1.95, 1.95 );

setRotateKey( spep_2 -3 + 92, 1, -5 );
setRotateKey( spep_2 -3 + 94, 1, -4.7 );
setRotateKey( spep_2 -3 + 96, 1, -4.4 );
setRotateKey( spep_2 -3 + 98, 1, -4 );
setRotateKey( spep_2 -3 + 100, 1, -3.6 );
setRotateKey( spep_2 -3 + 102, 1, -3.1 );
setRotateKey( spep_2 -3 + 104, 1, -2.6 );
setRotateKey( spep_2 -3 + 106, 1, -1.9 );
setRotateKey( spep_2 -3 + 108, 1, -1 );
setRotateKey( spep_2 -3 + 109, 1, -1 );--
setRotateKey( spep_2 -3 + 110, 1, -46.4 );
setRotateKey( spep_2 -3 + 169, 1, -46.4 );

-- ** 音 ** --
--振りかぶる
SE038 = playSeVer2( spep_2 + 10, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE038, 63 );
setPitch( spep_2 + 10, SE038, -400 );
setTimeStretch( SE038, 0.73, 30, 4 );
SE039 = playSeVer2( spep_2 + 10, 1278, "",spep_2 + 72, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 10, SE039, 77 );
SE040 = playSeVer2( spep_2 + 10, 1116, "",spep_2 + 52, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 10, SE040, 79 );

--パンチ
SE041 = playSeVer2( spep_2 + 40, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE041, 71 );
SE042 = playSeVer2( spep_2 + 46, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE042, 78 );

--敵飛んでいく
SE043 = playSeVer2( spep_2 + 72, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE043, 71 );
SE044 = playSeVer2( spep_2 + 72, 1183, "",spep_2 + 128, 0, 12, -1);

--柱ぶつかる
SE045 = playSeVer2( spep_2 + 104, 1159, "",spep_2 + 180, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 104, SE045, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 166;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_3 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--立ち止まる
SE047 = playSeVer2( spep_3 + 80, 1275, "",spep_3 + 180, 0, 42, 0.5);
SE035 = playSeVer2( spep_3 + 86, 1336, "", 0, 14, 0, 0.5);
setStartTimeMs( SE035,  4600 );
SE048 = playSeVer2( spep_3 + 90, 8, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- ヒッチヒャックビーム(198F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
beam = entryEffectLife( spep_4 + 0, SP_06r, 198, 0x100, -1, 0, 0, 0 );  --ヒッチヒャックビーム	ef_004
setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 198, beam, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_4 + 198, beam, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 198, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 198 -1, beam, 255 );
setEffAlphaKey( spep_4 + 198, beam, 0 );

-- ** 音 ** --
--腕クロスする
SE049 = playSeVer2( spep_4 + 54, 1004, "", 0, 0, 0, -1);

--体光る
SE050 = playSeVer2( spep_4 + 80, 1282, "",spep_4 + 186, 0, 22, 0.6);
setSeVolumeByWorkId( spep_4 + 80, SE050, 72 );
SE051 = playSeVer2( spep_4 + 80, 1334, "",spep_4 + 186, 0, 22, 0.6);
setSeVolumeByWorkId( spep_4 + 80, SE051, 85 );
SE052 = playSeVer2( spep_4 + 112, 1296, "",spep_4 + 186, 0, 22, -1);
setSeVolumeByWorkId( spep_4 + 112, SE052, 79 );

--レーザー発射
SE053 = playSeVer2( spep_4 + 158, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 158, SE053, 130 );
SE054 = playSeVer2( spep_4 + 158, 1177, "",spep_4 + 234, 0, 32, -1);
setSeVolumeByWorkId( spep_4 + 158, SE054, 77 );
SE055 = playSeVer2( spep_4 + 158, 1179, "",spep_4 + 234, 0, 32, -1);
SE056 = playSeVer2( spep_4 + 158, 1109, "", 0, 0, 0, -1);

--連続爆発
SE057 = playSeVer2( spep_4 + 196, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 196, SE057, 78 );
SE058 = playSeVer2( spep_4 + 196, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 196, SE058, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 198 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 198;


------------------------------------------------------
-- 爆発(176F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --爆発	ef_005
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 144, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_5 + 144, finish, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 144, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 144, finish, 255 );

-- ** 音 ** --
--連続爆発
SE059 = playSeVer2( spep_5 + 24, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 24, SE059, 85 );
E060 = playSeVer2( spep_5 + 24, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 24, SE060, 84 );
E061 = playSeVer2( spep_5 + 54, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 54, SE061, 79 );
E062 = playSeVer2( spep_5 + 54, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 54, SE062, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 4 );
endPhase( spep_5 + 154 );


end