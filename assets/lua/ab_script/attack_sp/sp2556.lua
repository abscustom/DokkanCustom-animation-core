--9026540:孫悟空_舞空術アタック(復活カウンター)
--sp_effect_b1_00251

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
SP_01 = 161791;  --開幕〜フィニッシュまで ef_001
SP_02 = 161792;  --開幕〜フィニッシュまで ef_001b

--エフェクト(敵)
SP_01r = 161793;  --敵側：開幕〜フィニッシュまで ef_001r
SP_02r = 161794;  --敵側：開幕〜フィニッシュまで ef_001br

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
changeAnime( 0, 1, 0);

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
--開幕〜フィニッシュまで(896f)
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開幕〜フィニッシュまで  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 896, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 896, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 896, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 896, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --開幕〜フィニッシュまで  ef_001b
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 896, first_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 896, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 896, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 896, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 120, 1, 1 );
setDisp( spep_0 -1 + 218, 1, 0 );

changeAnime( spep_0 -1 + 120, 1, 2 );
changeAnime( spep_0 -1 + 180, 1, 4 );

setMoveKey( spep_0 -1 + 120, 1, -97.8, -63.4 , 0 );
setMoveKey( spep_0 -1 + 122, 1, -110.1, -70 , 0 );
setMoveKey( spep_0 -1 + 129, 1, -110.1, -70 , 0 );
setMoveKey( spep_0 -1 + 130, 1, -119.9, -75.3 , 0 );
setMoveKey( spep_0 -1 + 137, 1, -119.9, -75.3 , 0 );
setMoveKey( spep_0 -1 + 138, 1, -127.9, -79.7 , 0 );
setMoveKey( spep_0 -1 + 143, 1, -127.9, -79.7 , 0 );
setMoveKey( spep_0 -1 + 144, 1, -132.9, -82.5 , 0 );
setMoveKey( spep_0 -1 + 151, 1, -132.9, -82.5 , 0 );
setMoveKey( spep_0 -1 + 152, 1, -138.7, -85.5 , 0 );
setMoveKey( spep_0 -1 + 157, 1, -138.7, -85.5 , 0 );
setMoveKey( spep_0 -1 + 158, 1, -142.2, -87.6 , 0 );
setMoveKey( spep_0 -1 + 163, 1, -142.2, -87.6 , 0 );
setMoveKey( spep_0 -1 + 164, 1, -145.2, -89.2 , 0 );
setMoveKey( spep_0 -1 + 169, 1, -145.2, -89.2 , 0 );
setMoveKey( spep_0 -1 + 170, 1, -147.6, -90.5 , 0 );
setMoveKey( spep_0 -1 + 175, 1, -147.6, -90.5 , 0 );
setMoveKey( spep_0 -1 + 176, 1, -149.5, -91.5 , 0 );
setMoveKey( spep_0 -1 + 179, 1, -149.5, -91.5 , 0 );
setMoveKey( spep_0 -1 + 180, 1, -150.3, -92 , 0 );
setMoveKey( spep_0 -1 + 182, 1, -150.3, -91.9 , 0 );
setMoveKey( spep_0 -1 + 205, 1, -150.3, -91.9 , 0 );
setMoveKey( spep_0 -1 + 206, 1, -150.3, -92 , 0 );
setMoveKey( spep_0 -1 + 218, 1, -150.3, -92 , 0 );

setScaleKey( spep_0 -1 + 120, 1, 2.35, 2.35 );
setScaleKey( spep_0 -1 + 122, 1, 2.24, 2.24 );
setScaleKey( spep_0 -1 + 129, 1, 2.24, 2.24 );
setScaleKey( spep_0 -1 + 130, 1, 2.16, 2.16 );
setScaleKey( spep_0 -1 + 137, 1, 2.16, 2.16 );
setScaleKey( spep_0 -1 + 138, 1, 2.09, 2.09 );
setScaleKey( spep_0 -1 + 143, 1, 2.09, 2.09 );
setScaleKey( spep_0 -1 + 144, 1, 2.05, 2.05 );
setScaleKey( spep_0 -1 + 151, 1, 2.05, 2.05 );
setScaleKey( spep_0 -1 + 152, 1, 2, 2 );
setScaleKey( spep_0 -1 + 157, 1, 2, 2 );
setScaleKey( spep_0 -1 + 158, 1, 1.97, 1.97 );
setScaleKey( spep_0 -1 + 163, 1, 1.97, 1.97 );
setScaleKey( spep_0 -1 + 164, 1, 1.94, 1.94 );
setScaleKey( spep_0 -1 + 169, 1, 1.94, 1.94 );
setScaleKey( spep_0 -1 + 170, 1, 1.92, 1.92 );
setScaleKey( spep_0 -1 + 175, 1, 1.92, 1.92 );
setScaleKey( spep_0 -1 + 176, 1, 1.91, 1.91 );
setScaleKey( spep_0 -1 + 179, 1, 1.91, 1.91 );
setScaleKey( spep_0 -1 + 180, 1, 1.9, 1.9 );
setScaleKey( spep_0 -1 + 182, 1, 1.9, 1.9 );
setScaleKey( spep_0 -1 + 218, 1, 1.9, 1.9 );

setRotateKey( spep_0 -1 + 120, 1, -5 );
setRotateKey( spep_0 -1 + 180, 1, -5 );
setRotateKey( spep_0 -1 + 218, 1, -5 );

setBlendColor( spep_0 -1 + 198, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 -1 + 199, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_0 -1 + 200, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 -1 + 202, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 -1 + 204, 1, 3, 0, 0, 0, 0.5);
setBlendColor( spep_0 -1 + 218, 1, 3, 0, 0, 0, 0);


-- ** 音 ** --
--飛行音
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE002 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE004 = playSeVer2( spep_0 + 64, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE004, 71 );
SE006 = playSeVer2( spep_0 + 108, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE006, 41 );
setTimeStretch( SE006, 1.25, 30, 4 );
SE007 = playSeVer2( spep_0 + 128, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE007, 71 );
SE008 = playSeVer2( spep_0 + 128, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 48 );
SE009 = playSeVer2( spep_0 + 192, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE009, 71 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE003, 50 );

--画面遷移
SE005 = playSeVer2( spep_0 + 80, 1072, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 896 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 218 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 340, 1, 1 );
setDisp( spep_0 -1 + 604, 1, 0 );

changeAnime( spep_0 -1 + 340, 1, 4 );
changeAnime( spep_0 -1 + 372, 1, 8 );
changeAnime( spep_0 -1 + 484, 1, 105 );

setMoveKey( spep_0 -1 + 340, 1, 33.4, -17.9 , 0 );
setMoveKey( spep_0 -1 + 370, 1, 33.4, -17.9 , 0 );
setMoveKey( spep_0 -1 + 371, 1, 33.4, -17.9 , 0 );
setMoveKey( spep_0 -1 + 372, 1, -31.4, -28.6 , 0 );
setMoveKey( spep_0 -1 + 374, 1, -31.4, -28.6 , 0 );
setMoveKey( spep_0 -1 + 375, 1, -31.4, -28.6 , 0 );
setMoveKey( spep_0 -1 + 376, 1, -32.2, -28.7 , 0 );
setMoveKey( spep_0 -1 + 378, 1, -32.2, -28.7 , 0 );
setMoveKey( spep_0 -1 + 379, 1, -32.2, -28.7 , 0 );
setMoveKey( spep_0 -1 + 380, 1, -34.2, -29.5 , 0 );
setMoveKey( spep_0 -1 + 382, 1, -34.2, -29.5 , 0 );
setMoveKey( spep_0 -1 + 383, 1, -34.2, -29.5 , 0 );
setMoveKey( spep_0 -1 + 384, 1, -37.7, -30.8 , 0 );
setMoveKey( spep_0 -1 + 386, 1, -37.7, -30.8 , 0 );
setMoveKey( spep_0 -1 + 387, 1, -37.7, -30.8 , 0 );
setMoveKey( spep_0 -1 + 388, 1, -42.5, -32.4 , 0 );
setMoveKey( spep_0 -1 + 390, 1, -42.5, -32.4 , 0 );
setMoveKey( spep_0 -1 + 391, 1, -42.5, -32.4 , 0 );
setMoveKey( spep_0 -1 + 392, 1, -48.7, -34.3 , 0 );
setMoveKey( spep_0 -1 + 394, 1, -48.7, -34.3 , 0 );
setMoveKey( spep_0 -1 + 395, 1, -48.7, -34.3 , 0 );
setMoveKey( spep_0 -1 + 396, 1, -56.1, -36.8 , 0 );
setMoveKey( spep_0 -1 + 398, 1, -56.1, -36.8 , 0 );
setMoveKey( spep_0 -1 + 399, 1, -56.1, -36.8 , 0 );
setMoveKey( spep_0 -1 + 400, 1, -63, -39 , 0 );
setMoveKey( spep_0 -1 + 402, 1, -63, -39 , 0 );
setMoveKey( spep_0 -1 + 403, 1, -63, -39 , 0 );
setMoveKey( spep_0 -1 + 404, 1, -68.2, -41 , 0 );
setMoveKey( spep_0 -1 + 406, 1, -68.2, -41 , 0 );
setMoveKey( spep_0 -1 + 407, 1, -68.2, -41 , 0 );
setMoveKey( spep_0 -1 + 408, 1, -72.5, -42.2 , 0 );
setMoveKey( spep_0 -1 + 410, 1, -72.5, -42.2 , 0 );
setMoveKey( spep_0 -1 + 411, 1, -72.5, -42.2 , 0 );
setMoveKey( spep_0 -1 + 412, 1, -75.2, -43.2 , 0 );
setMoveKey( spep_0 -1 + 414, 1, -75.2, -43.2 , 0 );
setMoveKey( spep_0 -1 + 415, 1, -75.2, -43.2 , 0 );
setMoveKey( spep_0 -1 + 416, 1, -76.4, -43.8 , 0 );
setMoveKey( spep_0 -1 + 417, 1, -76.4, -43.8 , 0 );
setMoveKey( spep_0 -1 + 418, 1, -77.2, -43.9 , 0 );
setMoveKey( spep_0 -1 + 421, 1, -77.2, -43.9 , 0 );

setMoveKey( spep_0 -1 + 422, 1, -34, -82 , 0 );
setMoveKey( spep_0 -1 + 426, 1, -34, -82 , 0 );
setMoveKey( spep_0 -1 + 427, 1, -34, -82 , 0 );
setMoveKey( spep_0 -1 + 428, 1, -56.6, -91.1 , 0 );
setMoveKey( spep_0 -1 + 432, 1, -56.6, -91.1 , 0 );
setMoveKey( spep_0 -1 + 433, 1, -56.6, -91.1 , 0 );
setMoveKey( spep_0 -1 + 434, 1, -79.4, -100.3 , 0 );
setMoveKey( spep_0 -1 + 438, 1, -79.4, -100.3 , 0 );
setMoveKey( spep_0 -1 + 439, 1, -79.4, -100.3 , 0 );
setMoveKey( spep_0 -1 + 440, 1, -102.2, -109.5 , 0 );
setMoveKey( spep_0 -1 + 444, 1, -102.2, -109.5 , 0 );
setMoveKey( spep_0 -1 + 445, 1, -102.2, -109.5 , 0 );
setMoveKey( spep_0 -1 + 446, 1, -125, -118.7 , 0 );
setMoveKey( spep_0 -1 + 450, 1, -125, -118.7 , 0 );
setMoveKey( spep_0 -1 + 451, 1, -125, -118.7 , 0 );
setMoveKey( spep_0 -1 + 452, 1, -147.8, -127.8 , 0 );
setMoveKey( spep_0 -1 + 456, 1, -147.8, -127.8 , 0 );
setMoveKey( spep_0 -1 + 457, 1, -147.8, -127.8 , 0 );
setMoveKey( spep_0 -1 + 458, 1, -170.6, -137.1 , 0 );
setMoveKey( spep_0 -1 + 462, 1, -170.6, -137.1 , 0 );
setMoveKey( spep_0 -1 + 463, 1, -170.6, -137.1 , 0 );
setMoveKey( spep_0 -1 + 464, 1, -193.4, -146.3 , 0 );
setMoveKey( spep_0 -1 + 468, 1, -193.4, -146.3 , 0 );
setMoveKey( spep_0 -1 + 469, 1, -193.4, -146.3 , 0 );
setMoveKey( spep_0 -1 + 470, 1, -216.2, -155.5 , 0 );
setMoveKey( spep_0 -1 + 474, 1, -216.2, -155.5 , 0 );
setMoveKey( spep_0 -1 + 475, 1, -216.2, -155.5 , 0 );
setMoveKey( spep_0 -1 + 476, 1, -239, -164.7 , 0 );
setMoveKey( spep_0 -1 + 480, 1, -239, -164.7 , 0 );
setMoveKey( spep_0 -1 + 481, 1, -239, -164.7 , 0 );
setMoveKey( spep_0 -1 + 482, 1, -262, -174 , 0 );
setMoveKey( spep_0 -1 + 483, 1, -262, -174 , 0 );

setMoveKey( spep_0 -1 + 484, 1, 687.7, -66.5 , 0 );
setMoveKey( spep_0 -1 + 491, 1, 687.7, -66.5 , 0 ); 
setMoveKey( spep_0 -1 + 492, 1, 260.1, 122 , 0 );
setMoveKey( spep_0 -1 + 497, 1, 260.1, 122 , 0 );
setMoveKey( spep_0 -1 + 498, 1, 80.5, -11 , 0 );
setMoveKey( spep_0 -1 + 499, 1, 80.5, -11 , 0 );
setMoveKey( spep_0 -1 + 500, 1, 80.5, -10.9 , 0 );
setMoveKey( spep_0 -1 + 501, 1, 80.5, -10.9 , 0 );
setMoveKey( spep_0 -1 + 502, 1, 80.5, 3.8 , 0 );
setMoveKey( spep_0 -1 + 503, 1, 80.5, 3.8 , 0 );
setMoveKey( spep_0 -1 + 504, 1, 80.5, -6.2 , 0 );
setMoveKey( spep_0 -1 + 505, 1, 80.5, -6.2 , 0 );
setMoveKey( spep_0 -1 + 506, 1, 43.8, 1.3 , 0 );
setMoveKey( spep_0 -1 + 507, 1, 43.8, 1.3 , 0 );
setMoveKey( spep_0 -1 + 508, 1, 43.8, -8.7 , 0 );
setMoveKey( spep_0 -1 + 510, 1, 43.8, -8.7 , 0 );
setMoveKey( spep_0 -1 + 511, 1, 43.8, -8.7 , 0 );
setMoveKey( spep_0 -1 + 512, 1, 43.8, -0.7 , 0 );
setMoveKey( spep_0 -1 + 513, 1, 43.8, -0.7 , 0 );
setMoveKey( spep_0 -1 + 514, 1, 10.8, -12.8 , 0 );
setMoveKey( spep_0 -1 + 515, 1, 10.8, -12.8 , 0 );
setMoveKey( spep_0 -1 + 516, 1, 10.8, -4.8 , 0 );
setMoveKey( spep_0 -1 + 517, 1, 10.8, -4.8 , 0 );
setMoveKey( spep_0 -1 + 518, 1, 10.8, -10.8 , 0 );
setMoveKey( spep_0 -1 + 520, 1, 10.8, -10.8 , 0 );
setMoveKey( spep_0 -1 + 521, 1, 10.8, -10.8 , 0 );
setMoveKey( spep_0 -1 + 522, 1, -19.1, -8.5 , 0 );
setMoveKey( spep_0 -1 + 523, 1, -19.1, -8.5 , 0 );
setMoveKey( spep_0 -1 + 524, 1, -19.1, -16.5 , 0 );
setMoveKey( spep_0 -1 + 525, 1, -19.1, -16.5 , 0 );
setMoveKey( spep_0 -1 + 526, 1, -19.1, -8.5 , 0 );
setMoveKey( spep_0 -1 + 527, 1, -19.1, -8.5 , 0 );
setMoveKey( spep_0 -1 + 528, 1, -39.7, -16.9 , 0 );
setMoveKey( spep_0 -1 + 530, 1, -39.7, -16.9 , 0 );
setMoveKey( spep_0 -1 + 531, 1, -39.7, -16.9 , 0 );
setMoveKey( spep_0 -1 + 532, 1, -39.7, -9 , 0 );
setMoveKey( spep_0 -1 + 533, 1, -39.7, -9 , 0 );
setMoveKey( spep_0 -1 + 534, 1, -39.7, -17 , 0 );
setMoveKey( spep_0 -1 + 535, 1, -39.7, -17 , 0 );
setMoveKey( spep_0 -1 + 536, 1, -65.2, -12.2 , 0 );
setMoveKey( spep_0 -1 + 537, 1, -65.2, -12.2 , 0 );
setMoveKey( spep_0 -1 + 538, 1, -65.2, -18.3 , 0 );
setMoveKey( spep_0 -1 + 540, 1, -65.2, -18.3 , 0 );
setMoveKey( spep_0 -1 + 541, 1, -65.2, -18.3 , 0 );
setMoveKey( spep_0 -1 + 542, 1, -65.2, -12.3 , 0 );
setMoveKey( spep_0 -1 + 543, 1, -65.2, -12.3 , 0 );
setMoveKey( spep_0 -1 + 544, 1, -88.4, -19.2 , 0 );
setMoveKey( spep_0 -1 + 545, 1, -88.4, -19.2 , 0 );
setMoveKey( spep_0 -1 + 546, 1, -88.4, -13.2 , 0 );
setMoveKey( spep_0 -1 + 547, 1, -88.4, -13.2 , 0 );
setMoveKey( spep_0 -1 + 548, 1, -88.4, -17.3 , 0 );
setMoveKey( spep_0 -1 + 549, 1, -88.4, -17.3 , 0 );
setMoveKey( spep_0 -1 + 550, 1, -88.4, -17.4 , 0 );
setMoveKey( spep_0 -1 + 551, 1, -88.4, -17.4 , 0 );
setMoveKey( spep_0 -1 + 552, 1, -109.3, -16 , 0 );
setMoveKey( spep_0 -1 + 553, 1, -109.3, -16 , 0 );
setMoveKey( spep_0 -1 + 554, 1, -109.3, -18.1 , 0 );
setMoveKey( spep_0 -1 + 555, 1, -109.3, -18.1 , 0 );
setMoveKey( spep_0 -1 + 556, 1, -109.3, -16.2 , 0 );
setMoveKey( spep_0 -1 + 557, 1, -109.3, -16.2 , 0 );
setMoveKey( spep_0 -1 + 558, 1, -123.7, -18.1 , 0 );
setMoveKey( spep_0 -1 + 559, 1, -123.7, -18.1 , 0 );
setMoveKey( spep_0 -1 + 560, 1, -123.7, -20.2 , 0 );
setMoveKey( spep_0 -1 + 561, 1, -123.7, -20.2 , 0 );
setMoveKey( spep_0 -1 + 562, 1, -123.7, -20.3 , 0 );
setMoveKey( spep_0 -1 + 563, 1, -123.7, -20.3 , 0 );
setMoveKey( spep_0 -1 + 564, 1, -123.7, -20.4 , 0 );
setMoveKey( spep_0 -1 + 565, 1, -123.7, -20.4 , 0 );
setMoveKey( spep_0 -1 + 566, 1, -140.9, -22.5 , 0 );
setMoveKey( spep_0 -1 + 568, 1, -140.9, -22.5 , 0 );
setMoveKey( spep_0 -1 + 569, 1, -140.9, -22.5 , 0 );
setMoveKey( spep_0 -1 + 570, 1, -140.9, -22.6 , 0 );
setMoveKey( spep_0 -1 + 571, 1, -140.9, -22.6 , 0 );
setMoveKey( spep_0 -1 + 572, 1, -140.9, -22.7 , 0 );
setMoveKey( spep_0 -1 + 573, 1, -140.9, -22.7 , 0 );
setMoveKey( spep_0 -1 + 574, 1, -155.8, -24.7 , 0 );
setMoveKey( spep_0 -1 + 575, 1, -155.8, -24.7 , 0 );
setMoveKey( spep_0 -1 + 576, 1, -155.8, -24.8 , 0 );
setMoveKey( spep_0 -1 + 577, 1, -155.8, -24.8 , 0 );
setMoveKey( spep_0 -1 + 578, 1, -155.8, -24.9 , 0 );
setMoveKey( spep_0 -1 + 580, 1, -155.8, -24.9 , 0 );
setMoveKey( spep_0 -1 + 581, 1, -155.8, -24.9 , 0 );
setMoveKey( spep_0 -1 + 582, 1, -168.3, -26.5 , 0 );
setMoveKey( spep_0 -1 + 583, 1, -168.3, -26.5 , 0 );
setMoveKey( spep_0 -1 + 584, 1, -168.3, -26.6 , 0 );
setMoveKey( spep_0 -1 + 586, 1, -168.3, -26.6 , 0 );
setMoveKey( spep_0 -1 + 587, 1, -168.3, -26.6 , 0 );
setMoveKey( spep_0 -1 + 588, 1, -175.8, -28.2 , 0 );
setMoveKey( spep_0 -1 + 594, 1, -175.8, -28.2 , 0 );
setMoveKey( spep_0 -1 + 595, 1, -175.8, -28.2 , 0 );
setMoveKey( spep_0 -1 + 596, 1, -182.5, -29.1 , 0 );
setMoveKey( spep_0 -1 + 604, 1, -182.5, -29.1 , 0 );

setScaleKey( spep_0 -1 + 340, 1, 3.6, 3.6 );
setScaleKey( spep_0 -1 + 370, 1, 3.6, 3.6 );
setScaleKey( spep_0 -1 + 371, 1, 3.6, 3.6 );
setScaleKey( spep_0 -1 + 372, 1, 3.77, 3.77 );
setScaleKey( spep_0 -1 + 421, 1, 3.77, 3.77 );

setScaleKey( spep_0 -1 + 422, 1, 12, 12 );
setScaleKey( spep_0 -1 + 483, 1, 12, 12 );

setScaleKey( spep_0 -1 + 484, 1, 12, 12 );
setScaleKey( spep_0 -1 + 491, 1, 12, 12 );
setScaleKey( spep_0 -1 + 492, 1, 4, 4 );
setScaleKey( spep_0 -1 + 497, 1, 4, 4 );
setScaleKey( spep_0 -1 + 498, 1, 1.4, 1.4 );
setScaleKey( spep_0 -1 + 505, 1, 1.4, 1.4 );
setScaleKey( spep_0 -1 + 506, 1, 1.26, 1.26 );
setScaleKey( spep_0 -1 + 513, 1, 1.26, 1.26 );
setScaleKey( spep_0 -1 + 514, 1, 1.14, 1.14 );
setScaleKey( spep_0 -1 + 521, 1, 1.14, 1.14 );
setScaleKey( spep_0 -1 + 522, 1, 1.02, 1.02 );
setScaleKey( spep_0 -1 + 527, 1, 1.02, 1.02 );
setScaleKey( spep_0 -1 + 528, 1, 0.95, 0.95 );
setScaleKey( spep_0 -1 + 535, 1, 0.95, 0.95 );
setScaleKey( spep_0 -1 + 536, 1, 0.85, 0.85 );
setScaleKey( spep_0 -1 + 543, 1, 0.85, 0.85 );
setScaleKey( spep_0 -1 + 544, 1, 0.76, 0.76 );
setScaleKey( spep_0 -1 + 551, 1, 0.76, 0.76 );
setScaleKey( spep_0 -1 + 552, 1, 0.68, 0.68 );
setScaleKey( spep_0 -1 + 557, 1, 0.68, 0.68 );
setScaleKey( spep_0 -1 + 558, 1, 0.63, 0.63 );
setScaleKey( spep_0 -1 + 565, 1, 0.63, 0.63 );
setScaleKey( spep_0 -1 + 566, 1, 0.56, 0.56 );
setScaleKey( spep_0 -1 + 573, 1, 0.56, 0.56 );
setScaleKey( spep_0 -1 + 574, 1, 0.51, 0.51 );
setScaleKey( spep_0 -1 + 581, 1, 0.51, 0.51 );
setScaleKey( spep_0 -1 + 582, 1, 0.46, 0.46 );
setScaleKey( spep_0 -1 + 587, 1, 0.46, 0.46 );
setScaleKey( spep_0 -1 + 588, 1, 0.43, 0.43 );
setScaleKey( spep_0 -1 + 595, 1, 0.43, 0.43 );
setScaleKey( spep_0 -1 + 596, 1, 0.41, 0.41 );
setScaleKey( spep_0 -1 + 604, 1, 0.41, 0.41 );

setRotateKey( spep_0 -1 + 340, 1, -4.8 );
setRotateKey( spep_0 -1 + 370, 1, -4.8 );
setRotateKey( spep_0 -1 + 371, 1, -4.8 );
setRotateKey( spep_0 -1 + 372, 1, -20.9 );
setRotateKey( spep_0 -1 + 374, 1, -20.9 );
setRotateKey( spep_0 -1 + 375, 1, -20.9 );
setRotateKey( spep_0 -1 + 376, 1, -21.1 );
setRotateKey( spep_0 -1 + 378, 1, -21.1 );
setRotateKey( spep_0 -1 + 379, 1, -21.1 );
setRotateKey( spep_0 -1 + 380, 1, -21.9 );
setRotateKey( spep_0 -1 + 382, 1, -21.9 );
setRotateKey( spep_0 -1 + 383, 1, -21.9 );
setRotateKey( spep_0 -1 + 384, 1, -23.2 );
setRotateKey( spep_0 -1 + 386, 1, -23.2 );
setRotateKey( spep_0 -1 + 387, 1, -23.2 );
setRotateKey( spep_0 -1 + 388, 1, -25 );
setRotateKey( spep_0 -1 + 390, 1, -25 );
setRotateKey( spep_0 -1 + 391, 1, -25 );
setRotateKey( spep_0 -1 + 392, 1, -27.3 );
setRotateKey( spep_0 -1 + 394, 1, -27.3 );
setRotateKey( spep_0 -1 + 395, 1, -27.3 );
setRotateKey( spep_0 -1 + 396, 1, -30.1 );
setRotateKey( spep_0 -1 + 398, 1, -30.1 );
setRotateKey( spep_0 -1 + 399, 1, -30.1 );
setRotateKey( spep_0 -1 + 400, 1, -32.6 );
setRotateKey( spep_0 -1 + 402, 1, -32.6 );
setRotateKey( spep_0 -1 + 403, 1, -32.6 );
setRotateKey( spep_0 -1 + 404, 1, -34.7 );
setRotateKey( spep_0 -1 + 406, 1, -34.7 );
setRotateKey( spep_0 -1 + 407, 1, -34.7 );
setRotateKey( spep_0 -1 + 408, 1, -36.2 );
setRotateKey( spep_0 -1 + 410, 1, -36.2 );
setRotateKey( spep_0 -1 + 411, 1, -36.2 );
setRotateKey( spep_0 -1 + 412, 1, -37.2 );
setRotateKey( spep_0 -1 + 414, 1, -37.2 );
setRotateKey( spep_0 -1 + 415, 1, -37.2 );
setRotateKey( spep_0 -1 + 416, 1, -37.8 );
setRotateKey( spep_0 -1 + 421, 1, -37.8 );

setRotateKey( spep_0 -1 + 422, 1, -45 );
setRotateKey( spep_0 -1 + 426, 1, -45 );
setRotateKey( spep_0 -1 + 427, 1, -45 );
setRotateKey( spep_0 -1 + 428, 1, -45.5 );
setRotateKey( spep_0 -1 + 432, 1, -45.5 );
setRotateKey( spep_0 -1 + 433, 1, -45.5 );
setRotateKey( spep_0 -1 + 434, 1, -46 );
setRotateKey( spep_0 -1 + 438, 1, -46 );
setRotateKey( spep_0 -1 + 439, 1, -46 );
setRotateKey( spep_0 -1 + 440, 1, -46.5 );
setRotateKey( spep_0 -1 + 444, 1, -46.5 );
setRotateKey( spep_0 -1 + 445, 1, -46.5 );
setRotateKey( spep_0 -1 + 446, 1, -47 );
setRotateKey( spep_0 -1 + 450, 1, -47 );
setRotateKey( spep_0 -1 + 451, 1, -47 );
setRotateKey( spep_0 -1 + 452, 1, -47.5 );
setRotateKey( spep_0 -1 + 456, 1, -47.5 );
setRotateKey( spep_0 -1 + 457, 1, -47.5 );
setRotateKey( spep_0 -1 + 458, 1, -48 );
setRotateKey( spep_0 -1 + 462, 1, -48 );
setRotateKey( spep_0 -1 + 463, 1, -48 );
setRotateKey( spep_0 -1 + 464, 1, -48.5 );
setRotateKey( spep_0 -1 + 468, 1, -48.5 );
setRotateKey( spep_0 -1 + 469, 1, -48.5 );
setRotateKey( spep_0 -1 + 470, 1, -49 );
setRotateKey( spep_0 -1 + 474, 1, -49 );
setRotateKey( spep_0 -1 + 475, 1, -49 );
setRotateKey( spep_0 -1 + 476, 1, -49.5 );
setRotateKey( spep_0 -1 + 480, 1, -49.5 );
setRotateKey( spep_0 -1 + 481, 1, -49.5 );
setRotateKey( spep_0 -1 + 482, 1, -50 );
setRotateKey( spep_0 -1 + 483, 1, -50 );

setRotateKey( spep_0 -1 + 484, 1, -60 );
setRotateKey( spep_0 -1 + 491, 1, -60 );
setRotateKey( spep_0 -1 + 492, 1, -70 );
setRotateKey( spep_0 -1 + 497, 1, -70 );
setRotateKey( spep_0 -1 + 498, 1, -85 );
setRotateKey( spep_0 -1 + 505, 1, -85 );
setRotateKey( spep_0 -1 + 506, 1, -86.5 );
setRotateKey( spep_0 -1 + 604, 1, -86.5 );

-- ** 音 ** --
--白い中突っ込んでくる
SE010 = playSeVer2( spep_0 + 248, 1116, "", 0, 0, 0, -1);

--飛行音
SE011 = playSeVer2( spep_0 + 256, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE011, 71 );
SE012 = playSeVer2( spep_0 + 320, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE012, 71 );

--飛び込む
SE013 = playSeVer2( spep_0 + 338, 1117, "", 0, 0, 0, -1);

--敵ヒット
SE014 = playSeVer2( spep_0 + 372, 1120, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 372, 1153, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 380, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE016, 79 );
SE017 = playSeVer2( spep_0 + 388, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE017, 78 );
SE018 = playSeVer2( spep_0 + 394, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE018, 65 );

--敵吹っ飛ぶ
SE019 = playSeVer2( spep_0 + 488, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE019, 76 );
SE020 = playSeVer2( spep_0 + 502, 1159, "", 0, 0, 0, 0.6);
SE021 = playSeVer2( spep_0 + 526, 1168, "",spep_0 + 660, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 526, SE021, 73 );

--悟空着地
SE022 = playSeVer2( spep_0 + 632, 1010, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 638, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 638, SE023, 71 );
SE024 = playSeVer2( spep_0 + 658, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE024, 232 );

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 580 );
endPhase( spep_0 + 894 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--開幕〜フィニッシュまで(896f)
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --開幕〜フィニッシュまで  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 896, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 896, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 896, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 896, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0 );  --開幕〜フィニッシュまで  ef_001b
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 896, first_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 896, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 896, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 896, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 120, 1, 1 );
setDisp( spep_0 -1 + 218, 1, 0 );

changeAnime( spep_0 -1 + 120, 1, 102 );
changeAnime( spep_0 -1 + 180, 1, 104 );

setMoveKey( spep_0 -1 + 120, 1, 97.8, -63.4 , 0 );
setMoveKey( spep_0 -1 + 122, 1, 110.1, -70 , 0 );
setMoveKey( spep_0 -1 + 129, 1, 110.1, -70 , 0 );
setMoveKey( spep_0 -1 + 130, 1, 119.9, -75.3 , 0 );
setMoveKey( spep_0 -1 + 137, 1, 119.9, -75.3 , 0 );
setMoveKey( spep_0 -1 + 138, 1, 127.9, -79.7 , 0 );
setMoveKey( spep_0 -1 + 143, 1, 127.9, -79.7 , 0 );
setMoveKey( spep_0 -1 + 144, 1, 132.9, -82.5 , 0 );
setMoveKey( spep_0 -1 + 151, 1, 132.9, -82.5 , 0 );
setMoveKey( spep_0 -1 + 152, 1, 138.7, -85.5 , 0 );
setMoveKey( spep_0 -1 + 157, 1, 138.7, -85.5 , 0 );
setMoveKey( spep_0 -1 + 158, 1, 142.2, -87.6 , 0 );
setMoveKey( spep_0 -1 + 163, 1, 142.2, -87.6 , 0 );
setMoveKey( spep_0 -1 + 164, 1, 145.2, -89.2 , 0 );
setMoveKey( spep_0 -1 + 169, 1, 145.2, -89.2 , 0 );
setMoveKey( spep_0 -1 + 170, 1, 147.6, -90.5 , 0 );
setMoveKey( spep_0 -1 + 175, 1, 147.6, -90.5 , 0 );
setMoveKey( spep_0 -1 + 176, 1, 149.5, -91.5 , 0 );
setMoveKey( spep_0 -1 + 179, 1, 149.5, -91.5 , 0 );
setMoveKey( spep_0 -1 + 180, 1, 150.3, -92 , 0 );
setMoveKey( spep_0 -1 + 182, 1, 150.3, -91.9 , 0 );
setMoveKey( spep_0 -1 + 205, 1, 150.3, -91.9 , 0 );
setMoveKey( spep_0 -1 + 206, 1, 150.3, -92 , 0 );
setMoveKey( spep_0 -1 + 218, 1, 150.3, -92 , 0 );

setScaleKey( spep_0 -1 + 120, 1, 2.35, 2.35 );
setScaleKey( spep_0 -1 + 122, 1, 2.24, 2.24 );
setScaleKey( spep_0 -1 + 129, 1, 2.24, 2.24 );
setScaleKey( spep_0 -1 + 130, 1, 2.16, 2.16 );
setScaleKey( spep_0 -1 + 137, 1, 2.16, 2.16 );
setScaleKey( spep_0 -1 + 138, 1, 2.09, 2.09 );
setScaleKey( spep_0 -1 + 143, 1, 2.09, 2.09 );
setScaleKey( spep_0 -1 + 144, 1, 2.05, 2.05 );
setScaleKey( spep_0 -1 + 151, 1, 2.05, 2.05 );
setScaleKey( spep_0 -1 + 152, 1, 2, 2 );
setScaleKey( spep_0 -1 + 157, 1, 2, 2 );
setScaleKey( spep_0 -1 + 158, 1, 1.97, 1.97 );
setScaleKey( spep_0 -1 + 163, 1, 1.97, 1.97 );
setScaleKey( spep_0 -1 + 164, 1, 1.94, 1.94 );
setScaleKey( spep_0 -1 + 169, 1, 1.94, 1.94 );
setScaleKey( spep_0 -1 + 170, 1, 1.92, 1.92 );
setScaleKey( spep_0 -1 + 175, 1, 1.92, 1.92 );
setScaleKey( spep_0 -1 + 176, 1, 1.91, 1.91 );
setScaleKey( spep_0 -1 + 179, 1, 1.91, 1.91 );
setScaleKey( spep_0 -1 + 180, 1, 1.9, 1.9 );
setScaleKey( spep_0 -1 + 182, 1, 1.9, 1.9 );
setScaleKey( spep_0 -1 + 218, 1, 1.9, 1.9 );

setRotateKey( spep_0 -1 + 120, 1, 5 );
setRotateKey( spep_0 -1 + 180, 1, 5 );
setRotateKey( spep_0 -1 + 218, 1, 5 );

setBlendColor( spep_0 -1 + 198, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_0 -1 + 199, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_0 -1 + 200, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 -1 + 202, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 -1 + 204, 1, 3, 0, 0, 0, 0.5);
setBlendColor( spep_0 -1 + 218, 1, 3, 0, 0, 0, 0);


-- ** 音 ** --
--飛行音
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE002 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE004 = playSeVer2( spep_0 + 64, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE004, 71 );
SE006 = playSeVer2( spep_0 + 108, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE006, 41 );
setTimeStretch( SE006, 1.25, 30, 4 );
SE007 = playSeVer2( spep_0 + 128, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE007, 71 );
SE008 = playSeVer2( spep_0 + 128, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 48 );
SE009 = playSeVer2( spep_0 + 192, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE009, 71 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE003, 50 );

--画面遷移
SE005 = playSeVer2( spep_0 + 80, 1072, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 896 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 218 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 340, 1, 1 );
setDisp( spep_0 -1 + 604, 1, 0 );

changeAnime( spep_0 -1 + 340, 1, 104 );
changeAnime( spep_0 -1 + 372, 1, 108 );
changeAnime( spep_0 -1 + 484, 1, 5 );

setMoveKey( spep_0 -1 + 340, 1, -33.4, -17.9 , 0 );
setMoveKey( spep_0 -1 + 370, 1, -33.4, -17.9 , 0 );
setMoveKey( spep_0 -1 + 371, 1, -33.4, -17.9 , 0 );
setMoveKey( spep_0 -1 + 372, 1, 31.4, -28.6 , 0 );
setMoveKey( spep_0 -1 + 374, 1, 31.4, -28.6 , 0 );
setMoveKey( spep_0 -1 + 375, 1, 31.4, -28.6 , 0 );
setMoveKey( spep_0 -1 + 376, 1, 32.2, -28.7 , 0 );
setMoveKey( spep_0 -1 + 378, 1, 32.2, -28.7 , 0 );
setMoveKey( spep_0 -1 + 379, 1, 32.2, -28.7 , 0 );
setMoveKey( spep_0 -1 + 380, 1, 34.2, -29.5 , 0 );
setMoveKey( spep_0 -1 + 382, 1, 34.2, -29.5 , 0 );
setMoveKey( spep_0 -1 + 383, 1, 34.2, -29.5 , 0 );
setMoveKey( spep_0 -1 + 384, 1, 37.7, -30.8 , 0 );
setMoveKey( spep_0 -1 + 386, 1, 37.7, -30.8 , 0 );
setMoveKey( spep_0 -1 + 387, 1, 37.7, -30.8 , 0 );
setMoveKey( spep_0 -1 + 388, 1, 42.5, -32.4 , 0 );
setMoveKey( spep_0 -1 + 390, 1, 42.5, -32.4 , 0 );
setMoveKey( spep_0 -1 + 391, 1, 42.5, -32.4 , 0 );
setMoveKey( spep_0 -1 + 392, 1, 48.7, -34.3 , 0 );
setMoveKey( spep_0 -1 + 394, 1, 48.7, -34.3 , 0 );
setMoveKey( spep_0 -1 + 395, 1, 48.7, -34.3 , 0 );
setMoveKey( spep_0 -1 + 396, 1, 56.1, -36.8 , 0 );
setMoveKey( spep_0 -1 + 398, 1, 56.1, -36.8 , 0 );
setMoveKey( spep_0 -1 + 399, 1, 56.1, -36.8 , 0 );
setMoveKey( spep_0 -1 + 400, 1, 63, -39 , 0 );
setMoveKey( spep_0 -1 + 402, 1, 63, -39 , 0 );
setMoveKey( spep_0 -1 + 403, 1, 63, -39 , 0 );
setMoveKey( spep_0 -1 + 404, 1, 68.2, -41 , 0 );
setMoveKey( spep_0 -1 + 406, 1, 68.2, -41 , 0 );
setMoveKey( spep_0 -1 + 407, 1, 68.2, -41 , 0 );
setMoveKey( spep_0 -1 + 408, 1, 72.5, -42.2 , 0 );
setMoveKey( spep_0 -1 + 410, 1, 72.5, -42.2 , 0 );
setMoveKey( spep_0 -1 + 411, 1, 72.5, -42.2 , 0 );
setMoveKey( spep_0 -1 + 412, 1, 75.2, -43.2 , 0 );
setMoveKey( spep_0 -1 + 414, 1, 75.2, -43.2 , 0 );
setMoveKey( spep_0 -1 + 415, 1, 75.2, -43.2 , 0 );
setMoveKey( spep_0 -1 + 416, 1, 76.4, -43.8 , 0 );
setMoveKey( spep_0 -1 + 417, 1, 76.4, -43.8 , 0 );
setMoveKey( spep_0 -1 + 418, 1, 77.2, -43.9 , 0 );
setMoveKey( spep_0 -1 + 421, 1, 77.2, -43.9 , 0 );

setMoveKey( spep_0 -1 + 422, 1, 34, -82 , 0 );
setMoveKey( spep_0 -1 + 426, 1, 34, -82 , 0 );
setMoveKey( spep_0 -1 + 427, 1, 34, -82 , 0 );
setMoveKey( spep_0 -1 + 428, 1, 56.6, -91.1 , 0 );
setMoveKey( spep_0 -1 + 432, 1, 56.6, -91.1 , 0 );
setMoveKey( spep_0 -1 + 433, 1, 56.6, -91.1 , 0 );
setMoveKey( spep_0 -1 + 434, 1, 79.4, -100.3 , 0 );
setMoveKey( spep_0 -1 + 438, 1, 79.4, -100.3 , 0 );
setMoveKey( spep_0 -1 + 439, 1, 79.4, -100.3 , 0 );
setMoveKey( spep_0 -1 + 440, 1, 102.2, -109.5 , 0 );
setMoveKey( spep_0 -1 + 444, 1, 102.2, -109.5 , 0 );
setMoveKey( spep_0 -1 + 445, 1, 102.2, -109.5 , 0 );
setMoveKey( spep_0 -1 + 446, 1, 125, -118.7 , 0 );
setMoveKey( spep_0 -1 + 450, 1, 125, -118.7 , 0 );
setMoveKey( spep_0 -1 + 451, 1, 125, -118.7 , 0 );
setMoveKey( spep_0 -1 + 452, 1, 147.8, -127.8 , 0 );
setMoveKey( spep_0 -1 + 456, 1, 147.8, -127.8 , 0 );
setMoveKey( spep_0 -1 + 457, 1, 147.8, -127.8 , 0 );
setMoveKey( spep_0 -1 + 458, 1, 170.6, -137.1 , 0 );
setMoveKey( spep_0 -1 + 462, 1, 170.6, -137.1 , 0 );
setMoveKey( spep_0 -1 + 463, 1, 170.6, -137.1 , 0 );
setMoveKey( spep_0 -1 + 464, 1, 193.4, -146.3 , 0 );
setMoveKey( spep_0 -1 + 468, 1, 193.4, -146.3 , 0 );
setMoveKey( spep_0 -1 + 469, 1, 193.4, -146.3 , 0 );
setMoveKey( spep_0 -1 + 470, 1, 216.2, -155.5 , 0 );
setMoveKey( spep_0 -1 + 474, 1, 216.2, -155.5 , 0 );
setMoveKey( spep_0 -1 + 475, 1, 216.2, -155.5 , 0 );
setMoveKey( spep_0 -1 + 476, 1, 239, -164.7 , 0 );
setMoveKey( spep_0 -1 + 480, 1, 239, -164.7 , 0 );
setMoveKey( spep_0 -1 + 481, 1, 239, -164.7 , 0 );
setMoveKey( spep_0 -1 + 482, 1, 262, -174 , 0 );
setMoveKey( spep_0 -1 + 483, 1, 262, -174 , 0 );

setMoveKey( spep_0 -1 + 484, 1, -687.7, -66.5 , 0 );
setMoveKey( spep_0 -1 + 491, 1, -687.7, -66.5 , 0 ); 
setMoveKey( spep_0 -1 + 492, 1, -260.1, 122 , 0 );
setMoveKey( spep_0 -1 + 497, 1, -260.1, 122 , 0 );
setMoveKey( spep_0 -1 + 498, 1, -80.5, -11 , 0 );
setMoveKey( spep_0 -1 + 499, 1, -80.5, -11 , 0 );
setMoveKey( spep_0 -1 + 500, 1, -80.5, -10.9 , 0 );
setMoveKey( spep_0 -1 + 501, 1, -80.5, -10.9 , 0 );
setMoveKey( spep_0 -1 + 502, 1, -80.5, 3.8 , 0 );
setMoveKey( spep_0 -1 + 503, 1, -80.5, 3.8 , 0 );
setMoveKey( spep_0 -1 + 504, 1, -80.5, -6.2 , 0 );
setMoveKey( spep_0 -1 + 505, 1, -80.5, -6.2 , 0 );
setMoveKey( spep_0 -1 + 506, 1, -43.8, 1.3 , 0 );
setMoveKey( spep_0 -1 + 507, 1, -43.8, 1.3 , 0 );
setMoveKey( spep_0 -1 + 508, 1, -43.8, -8.7 , 0 );
setMoveKey( spep_0 -1 + 510, 1, -43.8, -8.7 , 0 );
setMoveKey( spep_0 -1 + 511, 1, -43.8, -8.7 , 0 );
setMoveKey( spep_0 -1 + 512, 1, -43.8, -0.7 , 0 );
setMoveKey( spep_0 -1 + 513, 1, -43.8, -0.7 , 0 );
setMoveKey( spep_0 -1 + 514, 1, -10.8, -12.8 , 0 );
setMoveKey( spep_0 -1 + 515, 1, -10.8, -12.8 , 0 );
setMoveKey( spep_0 -1 + 516, 1, -10.8, -4.8 , 0 );
setMoveKey( spep_0 -1 + 517, 1, -10.8, -4.8 , 0 );
setMoveKey( spep_0 -1 + 518, 1, -10.8, -10.8 , 0 );
setMoveKey( spep_0 -1 + 520, 1, -10.8, -10.8 , 0 );
setMoveKey( spep_0 -1 + 521, 1, -10.8, -10.8 , 0 );
setMoveKey( spep_0 -1 + 522, 1, 19.1, -8.5 , 0 );
setMoveKey( spep_0 -1 + 523, 1, 19.1, -8.5 , 0 );
setMoveKey( spep_0 -1 + 524, 1, 19.1, -16.5 , 0 );
setMoveKey( spep_0 -1 + 525, 1, 19.1, -16.5 , 0 );
setMoveKey( spep_0 -1 + 526, 1, 19.1, -8.5 , 0 );
setMoveKey( spep_0 -1 + 527, 1, 19.1, -8.5 , 0 );
setMoveKey( spep_0 -1 + 528, 1, 39.7, -16.9 , 0 );
setMoveKey( spep_0 -1 + 530, 1, 39.7, -16.9 , 0 );
setMoveKey( spep_0 -1 + 531, 1, 39.7, -16.9 , 0 );
setMoveKey( spep_0 -1 + 532, 1, 39.7, -9 , 0 );
setMoveKey( spep_0 -1 + 533, 1, 39.7, -9 , 0 );
setMoveKey( spep_0 -1 + 534, 1, 39.7, -17 , 0 );
setMoveKey( spep_0 -1 + 535, 1, 39.7, -17 , 0 );
setMoveKey( spep_0 -1 + 536, 1, 65.2, -12.2 , 0 );
setMoveKey( spep_0 -1 + 537, 1, 65.2, -12.2 , 0 );
setMoveKey( spep_0 -1 + 538, 1, 65.2, -18.3 , 0 );
setMoveKey( spep_0 -1 + 540, 1, 65.2, -18.3 , 0 );
setMoveKey( spep_0 -1 + 541, 1, 65.2, -18.3 , 0 );
setMoveKey( spep_0 -1 + 542, 1, 65.2, -12.3 , 0 );
setMoveKey( spep_0 -1 + 543, 1, 65.2, -12.3 , 0 );
setMoveKey( spep_0 -1 + 544, 1, 88.4, -19.2 , 0 );
setMoveKey( spep_0 -1 + 545, 1, 88.4, -19.2 , 0 );
setMoveKey( spep_0 -1 + 546, 1, 88.4, -13.2 , 0 );
setMoveKey( spep_0 -1 + 547, 1, 88.4, -13.2 , 0 );
setMoveKey( spep_0 -1 + 548, 1, 88.4, -17.3 , 0 );
setMoveKey( spep_0 -1 + 549, 1, 88.4, -17.3 , 0 );
setMoveKey( spep_0 -1 + 550, 1, 88.4, -17.4 , 0 );
setMoveKey( spep_0 -1 + 551, 1, 88.4, -17.4 , 0 );
setMoveKey( spep_0 -1 + 552, 1, 109.3, -16 , 0 );
setMoveKey( spep_0 -1 + 553, 1, 109.3, -16 , 0 );
setMoveKey( spep_0 -1 + 554, 1, 109.3, -18.1 , 0 );
setMoveKey( spep_0 -1 + 555, 1, 109.3, -18.1 , 0 );
setMoveKey( spep_0 -1 + 556, 1, 109.3, -16.2 , 0 );
setMoveKey( spep_0 -1 + 557, 1, 109.3, -16.2 , 0 );
setMoveKey( spep_0 -1 + 558, 1, 123.7, -18.1 , 0 );
setMoveKey( spep_0 -1 + 559, 1, 123.7, -18.1 , 0 );
setMoveKey( spep_0 -1 + 560, 1, 123.7, -20.2 , 0 );
setMoveKey( spep_0 -1 + 561, 1, 123.7, -20.2 , 0 );
setMoveKey( spep_0 -1 + 562, 1, 123.7, -20.3 , 0 );
setMoveKey( spep_0 -1 + 563, 1, 123.7, -20.3 , 0 );
setMoveKey( spep_0 -1 + 564, 1, 123.7, -20.4 , 0 );
setMoveKey( spep_0 -1 + 565, 1, 123.7, -20.4 , 0 );
setMoveKey( spep_0 -1 + 566, 1, 140.9, -22.5 , 0 );
setMoveKey( spep_0 -1 + 568, 1, 140.9, -22.5 , 0 );
setMoveKey( spep_0 -1 + 569, 1, 140.9, -22.5 , 0 );
setMoveKey( spep_0 -1 + 570, 1, 140.9, -22.6 , 0 );
setMoveKey( spep_0 -1 + 571, 1, 140.9, -22.6 , 0 );
setMoveKey( spep_0 -1 + 572, 1, 140.9, -22.7 , 0 );
setMoveKey( spep_0 -1 + 573, 1, 140.9, -22.7 , 0 );
setMoveKey( spep_0 -1 + 574, 1, 155.8, -24.7 , 0 );
setMoveKey( spep_0 -1 + 575, 1, 155.8, -24.7 , 0 );
setMoveKey( spep_0 -1 + 576, 1, 155.8, -24.8 , 0 );
setMoveKey( spep_0 -1 + 577, 1, 155.8, -24.8 , 0 );
setMoveKey( spep_0 -1 + 578, 1, 155.8, -24.9 , 0 );
setMoveKey( spep_0 -1 + 580, 1, 155.8, -24.9 , 0 );
setMoveKey( spep_0 -1 + 581, 1, 155.8, -24.9 , 0 );
setMoveKey( spep_0 -1 + 582, 1, 168.3, -26.5 , 0 );
setMoveKey( spep_0 -1 + 583, 1, 168.3, -26.5 , 0 );
setMoveKey( spep_0 -1 + 584, 1, 168.3, -26.6 , 0 );
setMoveKey( spep_0 -1 + 586, 1, 168.3, -26.6 , 0 );
setMoveKey( spep_0 -1 + 587, 1, 168.3, -26.6 , 0 );
setMoveKey( spep_0 -1 + 588, 1, 175.8, -28.2 , 0 );
setMoveKey( spep_0 -1 + 594, 1, 175.8, -28.2 , 0 );
setMoveKey( spep_0 -1 + 595, 1, 175.8, -28.2 , 0 );
setMoveKey( spep_0 -1 + 596, 1, 182.5, -29.1 , 0 );
setMoveKey( spep_0 -1 + 604, 1, 182.5, -29.1 , 0 );

setScaleKey( spep_0 -1 + 340, 1, 3.6, 3.6 );
setScaleKey( spep_0 -1 + 370, 1, 3.6, 3.6 );
setScaleKey( spep_0 -1 + 371, 1, 3.6, 3.6 );
setScaleKey( spep_0 -1 + 372, 1, 3.77, 3.77 );
setScaleKey( spep_0 -1 + 421, 1, 3.77, 3.77 );

setScaleKey( spep_0 -1 + 422, 1, 12, 12 );
setScaleKey( spep_0 -1 + 483, 1, 12, 12 );

setScaleKey( spep_0 -1 + 484, 1, 12, 12 );
setScaleKey( spep_0 -1 + 491, 1, 12, 12 );
setScaleKey( spep_0 -1 + 492, 1, 4, 4 );
setScaleKey( spep_0 -1 + 497, 1, 4, 4 );
setScaleKey( spep_0 -1 + 498, 1, 1.4, 1.4 );
setScaleKey( spep_0 -1 + 505, 1, 1.4, 1.4 );
setScaleKey( spep_0 -1 + 506, 1, 1.26, 1.26 );
setScaleKey( spep_0 -1 + 513, 1, 1.26, 1.26 );
setScaleKey( spep_0 -1 + 514, 1, 1.14, 1.14 );
setScaleKey( spep_0 -1 + 521, 1, 1.14, 1.14 );
setScaleKey( spep_0 -1 + 522, 1, 1.02, 1.02 );
setScaleKey( spep_0 -1 + 527, 1, 1.02, 1.02 );
setScaleKey( spep_0 -1 + 528, 1, 0.95, 0.95 );
setScaleKey( spep_0 -1 + 535, 1, 0.95, 0.95 );
setScaleKey( spep_0 -1 + 536, 1, 0.85, 0.85 );
setScaleKey( spep_0 -1 + 543, 1, 0.85, 0.85 );
setScaleKey( spep_0 -1 + 544, 1, 0.76, 0.76 );
setScaleKey( spep_0 -1 + 551, 1, 0.76, 0.76 );
setScaleKey( spep_0 -1 + 552, 1, 0.68, 0.68 );
setScaleKey( spep_0 -1 + 557, 1, 0.68, 0.68 );
setScaleKey( spep_0 -1 + 558, 1, 0.63, 0.63 );
setScaleKey( spep_0 -1 + 565, 1, 0.63, 0.63 );
setScaleKey( spep_0 -1 + 566, 1, 0.56, 0.56 );
setScaleKey( spep_0 -1 + 573, 1, 0.56, 0.56 );
setScaleKey( spep_0 -1 + 574, 1, 0.51, 0.51 );
setScaleKey( spep_0 -1 + 581, 1, 0.51, 0.51 );
setScaleKey( spep_0 -1 + 582, 1, 0.46, 0.46 );
setScaleKey( spep_0 -1 + 587, 1, 0.46, 0.46 );
setScaleKey( spep_0 -1 + 588, 1, 0.43, 0.43 );
setScaleKey( spep_0 -1 + 595, 1, 0.43, 0.43 );
setScaleKey( spep_0 -1 + 596, 1, 0.41, 0.41 );
setScaleKey( spep_0 -1 + 604, 1, 0.41, 0.41 );

setRotateKey( spep_0 -1 + 340, 1, 4.8 );
setRotateKey( spep_0 -1 + 370, 1, 4.8 );
setRotateKey( spep_0 -1 + 371, 1, 4.8 );
setRotateKey( spep_0 -1 + 372, 1, 20.9 );
setRotateKey( spep_0 -1 + 374, 1, 20.9 );
setRotateKey( spep_0 -1 + 375, 1, 20.9 );
setRotateKey( spep_0 -1 + 376, 1, 21.1 );
setRotateKey( spep_0 -1 + 378, 1, 21.1 );
setRotateKey( spep_0 -1 + 379, 1, 21.1 );
setRotateKey( spep_0 -1 + 380, 1, 21.9 );
setRotateKey( spep_0 -1 + 382, 1, 21.9 );
setRotateKey( spep_0 -1 + 383, 1, 21.9 );
setRotateKey( spep_0 -1 + 384, 1, 23.2 );
setRotateKey( spep_0 -1 + 386, 1, 23.2 );
setRotateKey( spep_0 -1 + 387, 1, 23.2 );
setRotateKey( spep_0 -1 + 388, 1, 25 );
setRotateKey( spep_0 -1 + 390, 1, 25 );
setRotateKey( spep_0 -1 + 391, 1, 25 );
setRotateKey( spep_0 -1 + 392, 1, 27.3 );
setRotateKey( spep_0 -1 + 394, 1, 27.3 );
setRotateKey( spep_0 -1 + 395, 1, 27.3 );
setRotateKey( spep_0 -1 + 396, 1, 30.1 );
setRotateKey( spep_0 -1 + 398, 1, 30.1 );
setRotateKey( spep_0 -1 + 399, 1, 30.1 );
setRotateKey( spep_0 -1 + 400, 1, 32.6 );
setRotateKey( spep_0 -1 + 402, 1, 32.6 );
setRotateKey( spep_0 -1 + 403, 1, 32.6 );
setRotateKey( spep_0 -1 + 404, 1, 34.7 );
setRotateKey( spep_0 -1 + 406, 1, 34.7 );
setRotateKey( spep_0 -1 + 407, 1, 34.7 );
setRotateKey( spep_0 -1 + 408, 1, 36.2 );
setRotateKey( spep_0 -1 + 410, 1, 36.2 );
setRotateKey( spep_0 -1 + 411, 1, 36.2 );
setRotateKey( spep_0 -1 + 412, 1, 37.2 );
setRotateKey( spep_0 -1 + 414, 1, 37.2 );
setRotateKey( spep_0 -1 + 415, 1, 37.2 );
setRotateKey( spep_0 -1 + 416, 1, 37.8 );
setRotateKey( spep_0 -1 + 421, 1, 37.8 );

setRotateKey( spep_0 -1 + 422, 1, 45 );
setRotateKey( spep_0 -1 + 426, 1, 45 );
setRotateKey( spep_0 -1 + 427, 1, 45 );
setRotateKey( spep_0 -1 + 428, 1, 45.5 );
setRotateKey( spep_0 -1 + 432, 1, 45.5 );
setRotateKey( spep_0 -1 + 433, 1, 45.5 );
setRotateKey( spep_0 -1 + 434, 1, 46 );
setRotateKey( spep_0 -1 + 438, 1, 46 );
setRotateKey( spep_0 -1 + 439, 1, 46 );
setRotateKey( spep_0 -1 + 440, 1, 46.5 );
setRotateKey( spep_0 -1 + 444, 1, 46.5 );
setRotateKey( spep_0 -1 + 445, 1, 46.5 );
setRotateKey( spep_0 -1 + 446, 1, 47 );
setRotateKey( spep_0 -1 + 450, 1, 47 );
setRotateKey( spep_0 -1 + 451, 1, 47 );
setRotateKey( spep_0 -1 + 452, 1, 47.5 );
setRotateKey( spep_0 -1 + 456, 1, 47.5 );
setRotateKey( spep_0 -1 + 457, 1, 47.5 );
setRotateKey( spep_0 -1 + 458, 1, 48 );
setRotateKey( spep_0 -1 + 462, 1, 48 );
setRotateKey( spep_0 -1 + 463, 1, 48 );
setRotateKey( spep_0 -1 + 464, 1, 48.5 );
setRotateKey( spep_0 -1 + 468, 1, 48.5 );
setRotateKey( spep_0 -1 + 469, 1, 48.5 );
setRotateKey( spep_0 -1 + 470, 1, 49 );
setRotateKey( spep_0 -1 + 474, 1, 49 );
setRotateKey( spep_0 -1 + 475, 1, 49 );
setRotateKey( spep_0 -1 + 476, 1, 49.5 );
setRotateKey( spep_0 -1 + 480, 1, 49.5 );
setRotateKey( spep_0 -1 + 481, 1, 49.5 );
setRotateKey( spep_0 -1 + 482, 1, 50 );
setRotateKey( spep_0 -1 + 483, 1, 50 );

setRotateKey( spep_0 -1 + 484, 1, 60 );
setRotateKey( spep_0 -1 + 491, 1, 60 );
setRotateKey( spep_0 -1 + 492, 1, 70 );
setRotateKey( spep_0 -1 + 497, 1, 70 );
setRotateKey( spep_0 -1 + 498, 1, 85 );
setRotateKey( spep_0 -1 + 505, 1, 85 );
setRotateKey( spep_0 -1 + 506, 1, 86.5 );
setRotateKey( spep_0 -1 + 604, 1, 86.5 );

-- ** 音 ** --
--白い中突っ込んでくる
SE010 = playSeVer2( spep_0 + 248, 1116, "", 0, 0, 0, -1);

--飛行音
SE011 = playSeVer2( spep_0 + 256, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE011, 71 );
SE012 = playSeVer2( spep_0 + 320, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE012, 71 );

--飛び込む
SE013 = playSeVer2( spep_0 + 338, 1117, "", 0, 0, 0, -1);

--敵ヒット
SE014 = playSeVer2( spep_0 + 372, 1120, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 372, 1153, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 380, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE016, 79 );
SE017 = playSeVer2( spep_0 + 388, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE017, 78 );
SE018 = playSeVer2( spep_0 + 394, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE018, 65 );

--敵吹っ飛ぶ
SE019 = playSeVer2( spep_0 + 488, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE019, 76 );
SE020 = playSeVer2( spep_0 + 502, 1159, "", 0, 0, 0, 0.6);
SE021 = playSeVer2( spep_0 + 526, 1168, "",spep_0 + 660, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 526, SE021, 73 );

--悟空着地
SE022 = playSeVer2( spep_0 + 632, 1010, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 638, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 638, SE023, 71 );
SE024 = playSeVer2( spep_0 + 658, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE024, 232 );

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 580 );
endPhase( spep_0 + 894 );

end