--1024350:超サイヤ人孫悟空&超サイヤ人孫悟飯(少年期)_超必殺技：かめはめ波&魔閃光_sp2372
--sp_effect_b4_00229

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
SP_01 = 159805;	--溜め	ef_001
SP_02 = 159806;	--発射	ef_002
SP_03 = 159807;	--迫る	ef_003

--敵側
SP_01r = 159808;	--溜め(敵側)	ef_001r
SP_02r = 159809;	--発射(敵側)	ef_002r
SP_03r = 159810;	--迫る(敵側)	ef_003r

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
-- 溜め(576F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 576, 0x100, -1, 0, 0, 0 );  --溜め	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 576, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 576, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 576, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 576 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 576, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 576, 0x80, -1, 0, 0, 0 );  --発射	ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 576, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 576, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 576, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 576 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 576, first_b, 0 );

spep_x = spep_0 + 18;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 35, 515.5 , 0 );
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
--気だめ
SE001 = playSeVer2( spep_0 + 16, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 16, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 80 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE004, 79 );
SE005 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE005, 79 );
SE007 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE007, 79 );
SE008 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE008, 79 );
SE009 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE009, 79 );


--悟飯かまえる
SE006 = playSeVer2( spep_0 + 108, 1007, "", 0, 0, 0, -1);

--悟飯飛び出す
SE010 = playSeVer2( spep_0 + 166, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 166, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE011, 73 );
SE012 = playSeVer2( spep_0 + 172, 1277, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 172, SE012, 160 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 576 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 188 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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
setDisp( spep_0 -3 + 212, 1, 1 );
setDisp( spep_0 -3 + 280, 1, 0 );
changeAnime( spep_0 -3 + 212, 1, 104 );
changeAnime( spep_0 -3 + 226, 1, 108 );
changeAnime( spep_0 -3 + 246, 1, 106 );
changeAnime( spep_0 -3 + 264, 1, 108 );

setMoveKey( spep_0 -3 + 212, 1, 599.9, 172.3 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 548.1, 155.3 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 483, 134.2 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 404.2, 109 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 311.9, 79.7 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 205.8, 46.1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 85.8, 8.2 , 0 );
setMoveKey( spep_0 -3 + 225, 1, 85.8, 8.2 , 0 );--
setMoveKey( spep_0 -3 + 226, 1, 71.2, -7.5 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 73.7, 3.7 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 71.7, 12 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 77.8, 4.4 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 77.9, -1.3 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 79.7, 3.9 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 73.5, -0.9 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 79.4, 2.2 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 79.2, 1.4 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 79.1, 0.6 , 0 );
setMoveKey( spep_0 -3 + 245, 1, 79.1, 0.6 , 0 );--
setMoveKey( spep_0 -3 + 246, 1, 35.4, 71.3 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 36.9, 68.3 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 33.3, 81.2 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 45.7, 78.2 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 48.2, 75.2 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 54.7, 88.2 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 53.2, 89.3 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 63.7, 98.4 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 68.3, 103.5 , 0 );
setMoveKey( spep_0 -3 + 263, 1, 68.3, 103.5 , 0 );--
setMoveKey( spep_0 -3 + 264, 1, 142.4, 81.8 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 134.7, 69 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 137.3, 75.2 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 150.7, 69.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 154.8, 63.4 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 161.6, 69.5 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 161.1, 63.6 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 167.4, 69.7 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 167.4, 69.7 , 0 );

s1 = 0.2;
setScaleKey( spep_0 -3 + 212, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 214, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 216, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 218, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 220, 1, 1.92, 1.92 );
setScaleKey( spep_0 -3 + 222, 1, 1.93, 1.93 );
setScaleKey( spep_0 -3 + 225, 1, 1.93, 1.93 );--
setScaleKey( spep_0 -3 + 226, 1, 2.34, 2.34 );
setScaleKey( spep_0 -3 + 228, 1, 2, 2 );
setScaleKey( spep_0 -3 + 230, 1, 2, 2 );
setScaleKey( spep_0 -3 + 232, 1, 2.01, 2.01 );
setScaleKey( spep_0 -3 + 234, 1, 2.02, 2.02 );
setScaleKey( spep_0 -3 + 236, 1, 2.02, 2.02 );
setScaleKey( spep_0 -3 + 238, 1, 2.03, 2.03 );
setScaleKey( spep_0 -3 + 240, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 242, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 244, 1, 2.05, 2.05 );
setScaleKey( spep_0 -3 + 245, 1, 2.05, 2.05 );--
setScaleKey( spep_0 -3 + 246, 1, 2.05 +s1, 2.05 +s1 );
setScaleKey( spep_0 -3 + 248, 1, 1.84 +s1, 1.84 +s1 );
setScaleKey( spep_0 -3 + 250, 1, 1.84 +s1, 1.84 +s1 );
setScaleKey( spep_0 -3 + 252, 1, 1.85 +s1, 1.85 +s1 );
setScaleKey( spep_0 -3 + 254, 1, 1.86 +s1, 1.86 +s1 );
setScaleKey( spep_0 -3 + 256, 1, 1.86 +s1, 1.86 +s1 );
setScaleKey( spep_0 -3 + 258, 1, 1.87 +s1, 1.87 +s1 );
setScaleKey( spep_0 -3 + 260, 1, 1.87 +s1, 1.87 +s1 );
setScaleKey( spep_0 -3 + 262, 1, 1.88 +s1, 1.88 +s1 );
setScaleKey( spep_0 -3 + 263, 1, 1.88 +s1, 1.88 +s1 );--
setScaleKey( spep_0 -3 + 264, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 266, 1, 2.12, 2.12 );
setScaleKey( spep_0 -3 + 268, 1, 2.13, 2.13 );
setScaleKey( spep_0 -3 + 270, 1, 2.14, 2.14 );
setScaleKey( spep_0 -3 + 272, 1, 2.14, 2.14 );
setScaleKey( spep_0 -3 + 274, 1, 2.15, 2.15 );
setScaleKey( spep_0 -3 + 276, 1, 2.16, 2.16 );
setScaleKey( spep_0 -3 + 278, 1, 2.16, 2.16 );
setScaleKey( spep_0 -3 + 280, 1, 2.16, 2.16 );

setRotateKey( spep_0 -3 + 212, 1, -7 );
setRotateKey( spep_0 -3 + 225, 1, -7 );--
setRotateKey( spep_0 -3 + 226, 1, -11.1 );
setRotateKey( spep_0 -3 + 245, 1, -11.1 );--
setRotateKey( spep_0 -3 + 246, 1, -53.7 );
setRotateKey( spep_0 -3 + 248, 1, -52 );
setRotateKey( spep_0 -3 + 250, 1, -50.2 );
setRotateKey( spep_0 -3 + 252, 1, -48.5 );
setRotateKey( spep_0 -3 + 254, 1, -46.7 );
setRotateKey( spep_0 -3 + 256, 1, -45 );
setRotateKey( spep_0 -3 + 258, 1, -43.3 );
setRotateKey( spep_0 -3 + 260, 1, -41.5 );
setRotateKey( spep_0 -3 + 262, 1, -39.8 );
setRotateKey( spep_0 -3 + 263, 1, -39.8 );--
setRotateKey( spep_0 -3 + 264, 1, 10.1 );
setRotateKey( spep_0 -3 + 278, 1, 10.1 );
setRotateKey( spep_0 -3 + 280, 1, 10.1 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 336, 1, 1 );
setDisp( spep_0 -3 + 432, 1, 0 );
changeAnime( spep_0 -3 + 336, 1, 108 );
changeAnime( spep_0 -3 + 352, 1, 106 );
changeAnime( spep_0 -3 + 408, 1, 108 );

setMoveKey( spep_0 -3 + 336, 1, 87.1, 128 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 123.1, 225.9 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 99.3, 213.3 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 104.3, 180.1 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 94.8, 172.1 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 101.3, 180.1 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 111.8, 192.2 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 114.3, 196.2 , 0 );
setMoveKey( spep_0 -3 + 351, 1, 114.3, 196.2 , 0 );--
setMoveKey( spep_0 -3 + 352, 1, 152.5, 274.7 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 155.1, 317.5 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 153.6, 345.8 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 148, 359.6 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 139.4, 314.4 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 137.6, 311 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 135.8, 307.6 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 134, 304.1 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 132.2, 300.6 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 130.4, 297.1 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 128.5, 293.6 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 126.7, 290.1 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 124.8, 286.5 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 122.9, 282.9 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 119.6, 255 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 112.2, 200.8 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 100.7, 120.5 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 85.4, 14.3 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 85.3, 12.2 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 85.3, 10.1 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 85.3, 8 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 85.3, 5.9 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 85.3, 3.9 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 85.3, 1.8 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 85.3, -0.3 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 85.2, -2.4 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 85.2, -4.5 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 85.2, -6.5 , 0 );
setMoveKey( spep_0 -3 + 407, 1, 85.2, -6.5 , 0 );--
setMoveKey( spep_0 -3 + 408, 1, 220.5, -64 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 196.7, -47.2 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 165.7, -37.8 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 182, -36.7 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 184.3, -33.6 , 0 );
setMoveKey( spep_0 -3 + 418, 1, 194.6, -18.5 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 192.9, -11.4 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 207.3, -0.3 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 205.6, 18.8 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 220, 18 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 220.3, 21.2 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 232.7, 36.4 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 232.7, 36.4 , 0 );

s2 = 0.3;
setScaleKey( spep_0 -3 + 336, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 338, 1, 3.92, 3.92 );
setScaleKey( spep_0 -3 + 340, 1, 3.35, 3.35 );
setScaleKey( spep_0 -3 + 342, 1, 3, 3 );
setScaleKey( spep_0 -3 + 351, 1, 3, 3 );--
setScaleKey( spep_0 -3 + 352, 1, 2.44 +s2, 2.44 +s2 );
setScaleKey( spep_0 -3 + 354, 1, 2.32 +s2, 2.32 +s2 );
setScaleKey( spep_0 -3 + 356, 1, 2.21 +s2, 2.21 +s2 );
setScaleKey( spep_0 -3 + 358, 1, 2.09 +s2, 2.09 +s2 );
setScaleKey( spep_0 -3 + 360, 1, 1.97 +s2, 1.97 +s2 );
setScaleKey( spep_0 -3 + 362, 1, 1.97 +s2, 1.97 +s2 );
setScaleKey( spep_0 -3 + 364, 1, 1.96 +s2, 1.96 +s2 );
setScaleKey( spep_0 -3 + 366, 1, 1.95 +s2, 1.95 +s2 );
setScaleKey( spep_0 -3 + 368, 1, 1.94 +s2, 1.94 +s2 );
setScaleKey( spep_0 -3 + 370, 1, 1.94 +s2, 1.94 +s2 );
setScaleKey( spep_0 -3 + 372, 1, 1.93 +s2, 1.93 +s2 );
setScaleKey( spep_0 -3 + 374, 1, 1.92 +s2, 1.92 +s2 );
setScaleKey( spep_0 -3 + 376, 1, 1.92 +s2, 1.92 +s2 );
setScaleKey( spep_0 -3 + 378, 1, 1.91 +s2, 1.91 +s2 );
setScaleKey( spep_0 -3 + 380, 1, 1.94 +s2, 1.94 +s2 );
setScaleKey( spep_0 -3 + 382, 1, 2.01 +s2, 2.01 +s2 );
setScaleKey( spep_0 -3 + 384, 1, 2.1 +s2, 2.1 +s2 );
setScaleKey( spep_0 -3 + 386, 1, 2.23 +s2, 2.23 +s2 );
setScaleKey( spep_0 -3 + 407, 1, 2.23 +s2, 2.23 +s2 );--
setScaleKey( spep_0 -3 + 408, 1, 3.15, 3.15 );
setScaleKey( spep_0 -3 + 410, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 412, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 414, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 416, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 418, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 420, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 422, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 424, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 426, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 428, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 432, 1, 2.62, 2.62 );

setRotateKey( spep_0 -3 + 336, 1, -26.6 );
setRotateKey( spep_0 -3 + 351, 1, -26.6 );--
setRotateKey( spep_0 -3 + 352, 1, -76.1 );
setRotateKey( spep_0 -3 + 354, 1, -68 );
setRotateKey( spep_0 -3 + 356, 1, -59.9 );
setRotateKey( spep_0 -3 + 358, 1, -51.8 );
setRotateKey( spep_0 -3 + 360, 1, -46.5 );
setRotateKey( spep_0 -3 + 362, 1, -46.4 );
setRotateKey( spep_0 -3 + 364, 1, -46.2 );
setRotateKey( spep_0 -3 + 366, 1, -46.1 );
setRotateKey( spep_0 -3 + 368, 1, -46 );
setRotateKey( spep_0 -3 + 370, 1, -45.9 );
setRotateKey( spep_0 -3 + 372, 1, -45.8 );
setRotateKey( spep_0 -3 + 374, 1, -45.7 );
setRotateKey( spep_0 -3 + 376, 1, -45.6 );
setRotateKey( spep_0 -3 + 378, 1, -45.5 );
setRotateKey( spep_0 -3 + 380, 1, -45.4 );
setRotateKey( spep_0 -3 + 382, 1, -45.3 );
setRotateKey( spep_0 -3 + 384, 1, -45.2 );
setRotateKey( spep_0 -3 + 386, 1, -45 );
setRotateKey( spep_0 -3 + 388, 1, -44.9 );
setRotateKey( spep_0 -3 + 390, 1, -44.8 );
setRotateKey( spep_0 -3 + 392, 1, -44.7 );
setRotateKey( spep_0 -3 + 394, 1, -44.6 );
setRotateKey( spep_0 -3 + 396, 1, -44.5 );
setRotateKey( spep_0 -3 + 398, 1, -44.4 );
setRotateKey( spep_0 -3 + 400, 1, -44.3 );
setRotateKey( spep_0 -3 + 402, 1, -44.2 );
setRotateKey( spep_0 -3 + 404, 1, -44.1 );
setRotateKey( spep_0 -3 + 406, 1, -44 );
setRotateKey( spep_0 -3 + 407, 1, -44 );--
setRotateKey( spep_0 -3 + 408, 1, 11.3 );
setRotateKey( spep_0 -3 + 432, 1, 11.3 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 490, 1, 1 );
setDisp( spep_0 -3 + 508, 1, 0 );
changeAnime( spep_0 -3 + 490, 1, 107 );

setMoveKey( spep_0 -3 + 490, 1, -67.8, -47.8 , 0 );
setMoveKey( spep_0 -3 + 492, 1, -183.6, -18.4 , 0 );
setMoveKey( spep_0 -3 + 494, 1, -140.8, -3 , 0 );
setMoveKey( spep_0 -3 + 496, 1, -50.8, -26.6 , 0 );
setMoveKey( spep_0 -3 + 498, 1, -53.1, -40.5 , 0 );
setMoveKey( spep_0 -3 + 500, 1, -47.4, -30.3 , 0 );
setMoveKey( spep_0 -3 + 502, 1, -65.7, -40.1 , 0 );
setMoveKey( spep_0 -3 + 504, 1, -44, -34 , 0 );
setMoveKey( spep_0 -3 + 506, 1, -42.3, -35.8 , 0 );
setMoveKey( spep_0 -3 + 508, 1, -42.3, -35.8 , 0 );

setScaleKey( spep_0 -3 + 490, 1, 2.67, 2.67 );
setScaleKey( spep_0 -3 + 492, 1, 4, 4 );
setScaleKey( spep_0 -3 + 494, 1, 3.32, 3.32 );
setScaleKey( spep_0 -3 + 496, 1, 2.65, 2.65 );
setScaleKey( spep_0 -3 + 498, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 500, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 502, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 504, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 506, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 508, 1, 2.6, 2.6 );

setRotateKey( spep_0 -3 + 490, 1, -31 );
setRotateKey( spep_0 -3 + 508, 1, -31 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 520, 1, 1 );
setDisp( spep_0 -3 + 540, 1, 0 );
changeAnime( spep_0 -3 + 520, 1, 107 );

setMoveKey( spep_0 -3 + 520, 1, -159, 392.9 , 0 );
setMoveKey( spep_0 -3 + 522, 1, -147.6, 372.8 , 0 );
setMoveKey( spep_0 -3 + 524, 1, -131.2, 342.6 , 0 );
setMoveKey( spep_0 -3 + 526, 1, -109.8, 302.6 , 0 );
setMoveKey( spep_0 -3 + 528, 1, -83.6, 253.1 , 0 );
setMoveKey( spep_0 -3 + 530, 1, -52.9, 194.4 , 0 );
setMoveKey( spep_0 -3 + 532, 1, -17.7, 127 , 0 );
setMoveKey( spep_0 -3 + 534, 1, 21.6, 51.1 , 0 );
setMoveKey( spep_0 -3 + 536, 1, 62.3, -33.6 , 0 );
setMoveKey( spep_0 -3 + 538, 1, 105.1, -122.7 , 0 );
setMoveKey( spep_0 -3 + 540, 1, 105.1, -122.7 , 0 );

setScaleKey( spep_0 -3 + 520, 1, 0.05, 0.05 );
setScaleKey( spep_0 -3 + 522, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 524, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 526, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 528, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 530, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 532, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 534, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 536, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 538, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 540, 1, 0.45, 0.45 );

setRotateKey( spep_0 -3 + 520, 1, 57.8 );
setRotateKey( spep_0 -3 + 540, 1, 57.8 );

-- ** 音 ** --
--オーラ
SE013 = playSeVer2( spep_0 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE013, 56 );
SE030 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE030, 63 );
SE033 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE033, 63 );
SE034 = playSeVer2( spep_0 + 472, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE034, 63 );

--悟飯キック
SE014 = playSeVer2( spep_0 + 210, 1189, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 216, 1187, "", 0, 0, 0, -1);

--蹴り上げ
SE016 = playSeVer2( spep_0 + 234, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE016, 68 );
SE017 = playSeVer2( spep_0 + 236, 1110, "", 0, 0, 0, -1);

--画面遷移
SE018 = playSeVer2( spep_0 + 246, 1072, "", 0, 0, 0, -1);

--パンチ
SE019 = playSeVer2( spep_0 + 258, 1009, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 258, 1110, "", 0, 0, 0, -1);

--悟飯振りかぶる
SE021 = playSeVer2( spep_0 + 260, 1278, "",spep_0 + 338, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 260, SE021, 74 );
SE022 = playSeVer2( spep_0 + 294, 1116, "",spep_0 + 338, 0, 8, -1);

--アッパー
SE023 = playSeVer2( spep_0 + 330, 1187, "",spep_0 + 426, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 330, SE023, 73 );
SE024 = playSeVer2( spep_0 + 330, 1190, "",spep_0 + 374, 0, 18, -1);
SE025 = playSeVer2( spep_0 + 330, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE026 = playSeVer2( spep_0 + 376, 1109, "", 0, 0, 0, -1);

--悟空蹴り
SE027 = playSeVer2( spep_0 + 402, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE027, 68 );
SE028 = playSeVer2( spep_0 + 404, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE028, 83 );
SE029 = playSeVer2( spep_0 + 404, 1187, "",spep_0 + 470, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 404, SE029, 85 );

--悟空振りかぶる
SE031 = playSeVer2( spep_0 + 450, 1182, "",spep_0 + 500, 10, 22, -1);
setStartTimeMs( SE031,  117 );
SE032 = playSeVer2( spep_0 + 444, 1116, "",spep_0 + 488, 0, 18, -1);
SE035 = playSeVer2( spep_0 + 476, 1004, "", 0, 0, 0, -1);

--悟空パンチ
SE036 = playSeVer2( spep_0 + 484, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE036, 83 );
SE037 = playSeVer2( spep_0 + 484, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE037, 92 );

--敵飛んでいく
SE038 = playSeVer2( spep_0 + 500, 1121, "",spep_0 + 562, 0, 24, -1);

--岩激突
SE039 = playSeVer2( spep_0 + 532, 1159, "",spep_0 + 586, 0, 10, -1);
SE040 = playSeVer2( spep_0 + 532, 1188, "",spep_0 + 586, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 576;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
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

--オーラ
SE043 = playSeVer2( spep_1 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE043, 50 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 迫る(306F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --迫る	ef_003
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 306, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 306, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 306, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 306, finish, 255 );

-- ** 音 ** --
--気弾溜め
SE041 = playSeVer2( spep_2 + 4, 1210, "",spep_2 + 60, 6, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 4, SE041, 115 );
setStartTimeMs( SE041,  2367 );
SE044 = playSeVer2( spep_2 + 4, 1209, "",spep_2 + 60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 4, SE044, 82 );
SE045 = playSeVer2( spep_2 + 4, 1282, "",spep_2 + 60, 0, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 4, SE045, 58 );
SE046 = playSeVer2( spep_2 + 4, 1276, "",spep_2 + 60, 0, 10, -1);

--オーラ
SE047 = playSeVer2( spep_2 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE047, 50 );
--SE048 = playSeVer2( spep_2 + 36, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 36, SE048, 50 );
SE053 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE053, 50 );
SE054 = playSeVer2( spep_2 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE054, 50 );

--気弾発射
SE049 = playSeVer2( spep_2 + 46, 1133, "",spep_2 + 170, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 46, SE049, 95 );
SE050 = playSeVer2( spep_2 + 46, 1146, "",spep_2 + 170, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 46, SE050, 82 );
SE051 = playSeVer2( spep_2 + 46, 1213, "",spep_2 + 170, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 46, SE051, 62 );
SE052 = playSeVer2( spep_2 + 46, 1193, "",spep_2 + 170, 0, 18, -1);


--気弾飛んでいく
SE055 = playSeVer2( spep_2 + 112, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE055, 132 );

--爆発
SE056 = playSeVer2( spep_2 + 154, 1024, "",spep_2 + 196, 0, 10, -1);
SE057 = playSeVer2( spep_2 + 154, 1159, "", 0, 0, 0, -1);

--ラスト爆発
SE058 = playSeVer2( spep_2 + 182, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 182, SE058, -400 );
setTimeStretch( SE058, 0.73, 30, 4 );
SE059 = playSeVer2( spep_2 + 184, 1067, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 184, 1109, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 206, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE061, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 306 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 196 );
endPhase( spep_2 + 296 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め(576F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 576, 0x100, -1, 0, 0, 0 );  --溜め	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 576, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 576, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 576, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 576 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 576, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 576, 0x80, -1, 0, 0, 0 );  --発射	ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 576, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 576, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 576, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 576 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 576, first_b, 0 );

spep_x = spep_0 + 18;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 35, 515.5 , 0 );
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
--気だめ
SE001 = playSeVer2( spep_0 + 16, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 16, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 80 );

--顔カットイン
--SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE004, 79 );
SE005 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE005, 79 );
SE007 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE007, 79 );
SE008 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE008, 79 );
SE009 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 160, SE009, 79 );


--悟飯かまえる
SE006 = playSeVer2( spep_0 + 108, 1007, "", 0, 0, 0, -1);

--悟飯飛び出す
SE010 = playSeVer2( spep_0 + 166, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 166, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE011, 73 );
SE012 = playSeVer2( spep_0 + 172, 1277, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 172, SE012, 160 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 576 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 188 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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
setDisp( spep_0 -3 + 212, 1, 1 );
setDisp( spep_0 -3 + 280, 1, 0 );
changeAnime( spep_0 -3 + 212, 1, 104 );
changeAnime( spep_0 -3 + 226, 1, 108 );
changeAnime( spep_0 -3 + 246, 1, 106 );
changeAnime( spep_0 -3 + 264, 1, 108 );

setMoveKey( spep_0 -3 + 212, 1, 599.9, 172.3 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 548.1, 155.3 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 483, 134.2 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 404.2, 109 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 311.9, 79.7 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 205.8, 46.1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 85.8, 8.2 , 0 );
setMoveKey( spep_0 -3 + 225, 1, 85.8, 8.2 , 0 );--
setMoveKey( spep_0 -3 + 226, 1, 71.2, -7.5 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 73.7, 3.7 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 71.7, 12 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 77.8, 4.4 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 77.9, -1.3 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 79.7, 3.9 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 73.5, -0.9 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 79.4, 2.2 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 79.2, 1.4 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 79.1, 0.6 , 0 );
setMoveKey( spep_0 -3 + 245, 1, 79.1, 0.6 , 0 );--
setMoveKey( spep_0 -3 + 246, 1, 35.4, 71.3 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 36.9, 68.3 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 33.3, 81.2 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 45.7, 78.2 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 48.2, 75.2 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 54.7, 88.2 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 53.2, 89.3 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 63.7, 98.4 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 68.3, 103.5 , 0 );
setMoveKey( spep_0 -3 + 263, 1, 68.3, 103.5 , 0 );--
setMoveKey( spep_0 -3 + 264, 1, 142.4, 81.8 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 134.7, 69 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 137.3, 75.2 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 150.7, 69.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 154.8, 63.4 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 161.6, 69.5 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 161.1, 63.6 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 167.4, 69.7 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 167.4, 69.7 , 0 );

s1 = 0.2;
setScaleKey( spep_0 -3 + 212, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 214, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 216, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 218, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 220, 1, 1.92, 1.92 );
setScaleKey( spep_0 -3 + 222, 1, 1.93, 1.93 );
setScaleKey( spep_0 -3 + 225, 1, 1.93, 1.93 );--
setScaleKey( spep_0 -3 + 226, 1, 2.34, 2.34 );
setScaleKey( spep_0 -3 + 228, 1, 2, 2 );
setScaleKey( spep_0 -3 + 230, 1, 2, 2 );
setScaleKey( spep_0 -3 + 232, 1, 2.01, 2.01 );
setScaleKey( spep_0 -3 + 234, 1, 2.02, 2.02 );
setScaleKey( spep_0 -3 + 236, 1, 2.02, 2.02 );
setScaleKey( spep_0 -3 + 238, 1, 2.03, 2.03 );
setScaleKey( spep_0 -3 + 240, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 242, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 244, 1, 2.05, 2.05 );
setScaleKey( spep_0 -3 + 245, 1, 2.05, 2.05 );--
setScaleKey( spep_0 -3 + 246, 1, 2.05 +s1, 2.05 +s1 );
setScaleKey( spep_0 -3 + 248, 1, 1.84 +s1, 1.84 +s1 );
setScaleKey( spep_0 -3 + 250, 1, 1.84 +s1, 1.84 +s1 );
setScaleKey( spep_0 -3 + 252, 1, 1.85 +s1, 1.85 +s1 );
setScaleKey( spep_0 -3 + 254, 1, 1.86 +s1, 1.86 +s1 );
setScaleKey( spep_0 -3 + 256, 1, 1.86 +s1, 1.86 +s1 );
setScaleKey( spep_0 -3 + 258, 1, 1.87 +s1, 1.87 +s1 );
setScaleKey( spep_0 -3 + 260, 1, 1.87 +s1, 1.87 +s1 );
setScaleKey( spep_0 -3 + 262, 1, 1.88 +s1, 1.88 +s1 );
setScaleKey( spep_0 -3 + 263, 1, 1.88 +s1, 1.88 +s1 );--
setScaleKey( spep_0 -3 + 264, 1, 2.41, 2.41 );
setScaleKey( spep_0 -3 + 266, 1, 2.12, 2.12 );
setScaleKey( spep_0 -3 + 268, 1, 2.13, 2.13 );
setScaleKey( spep_0 -3 + 270, 1, 2.14, 2.14 );
setScaleKey( spep_0 -3 + 272, 1, 2.14, 2.14 );
setScaleKey( spep_0 -3 + 274, 1, 2.15, 2.15 );
setScaleKey( spep_0 -3 + 276, 1, 2.16, 2.16 );
setScaleKey( spep_0 -3 + 278, 1, 2.16, 2.16 );
setScaleKey( spep_0 -3 + 280, 1, 2.16, 2.16 );

setRotateKey( spep_0 -3 + 212, 1, -7 );
setRotateKey( spep_0 -3 + 225, 1, -7 );--
setRotateKey( spep_0 -3 + 226, 1, -11.1 );
setRotateKey( spep_0 -3 + 245, 1, -11.1 );--
setRotateKey( spep_0 -3 + 246, 1, -53.7 );
setRotateKey( spep_0 -3 + 248, 1, -52 );
setRotateKey( spep_0 -3 + 250, 1, -50.2 );
setRotateKey( spep_0 -3 + 252, 1, -48.5 );
setRotateKey( spep_0 -3 + 254, 1, -46.7 );
setRotateKey( spep_0 -3 + 256, 1, -45 );
setRotateKey( spep_0 -3 + 258, 1, -43.3 );
setRotateKey( spep_0 -3 + 260, 1, -41.5 );
setRotateKey( spep_0 -3 + 262, 1, -39.8 );
setRotateKey( spep_0 -3 + 263, 1, -39.8 );--
setRotateKey( spep_0 -3 + 264, 1, 10.1 );
setRotateKey( spep_0 -3 + 278, 1, 10.1 );
setRotateKey( spep_0 -3 + 280, 1, 10.1 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 336, 1, 1 );
setDisp( spep_0 -3 + 432, 1, 0 );
changeAnime( spep_0 -3 + 336, 1, 108 );
changeAnime( spep_0 -3 + 352, 1, 106 );
changeAnime( spep_0 -3 + 408, 1, 108 );

setMoveKey( spep_0 -3 + 336, 1, 87.1, 128 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 123.1, 225.9 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 99.3, 213.3 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 104.3, 180.1 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 94.8, 172.1 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 101.3, 180.1 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 111.8, 192.2 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 114.3, 196.2 , 0 );
setMoveKey( spep_0 -3 + 351, 1, 114.3, 196.2 , 0 );--
setMoveKey( spep_0 -3 + 352, 1, 152.5, 274.7 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 155.1, 317.5 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 153.6, 345.8 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 148, 359.6 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 139.4, 314.4 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 137.6, 311 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 135.8, 307.6 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 134, 304.1 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 132.2, 300.6 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 130.4, 297.1 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 128.5, 293.6 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 126.7, 290.1 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 124.8, 286.5 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 122.9, 282.9 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 119.6, 255 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 112.2, 200.8 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 100.7, 120.5 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 85.4, 14.3 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 85.3, 12.2 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 85.3, 10.1 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 85.3, 8 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 85.3, 5.9 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 85.3, 3.9 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 85.3, 1.8 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 85.3, -0.3 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 85.2, -2.4 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 85.2, -4.5 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 85.2, -6.5 , 0 );
setMoveKey( spep_0 -3 + 407, 1, 85.2, -6.5 , 0 );--
setMoveKey( spep_0 -3 + 408, 1, 220.5, -64 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 196.7, -47.2 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 165.7, -37.8 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 182, -36.7 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 184.3, -33.6 , 0 );
setMoveKey( spep_0 -3 + 418, 1, 194.6, -18.5 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 192.9, -11.4 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 207.3, -0.3 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 205.6, 18.8 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 220, 18 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 220.3, 21.2 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 232.7, 36.4 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 232.7, 36.4 , 0 );

s2 = 0.3;
setScaleKey( spep_0 -3 + 336, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 338, 1, 3.92, 3.92 );
setScaleKey( spep_0 -3 + 340, 1, 3.35, 3.35 );
setScaleKey( spep_0 -3 + 342, 1, 3, 3 );
setScaleKey( spep_0 -3 + 351, 1, 3, 3 );--
setScaleKey( spep_0 -3 + 352, 1, 2.44 +s2, 2.44 +s2 );
setScaleKey( spep_0 -3 + 354, 1, 2.32 +s2, 2.32 +s2 );
setScaleKey( spep_0 -3 + 356, 1, 2.21 +s2, 2.21 +s2 );
setScaleKey( spep_0 -3 + 358, 1, 2.09 +s2, 2.09 +s2 );
setScaleKey( spep_0 -3 + 360, 1, 1.97 +s2, 1.97 +s2 );
setScaleKey( spep_0 -3 + 362, 1, 1.97 +s2, 1.97 +s2 );
setScaleKey( spep_0 -3 + 364, 1, 1.96 +s2, 1.96 +s2 );
setScaleKey( spep_0 -3 + 366, 1, 1.95 +s2, 1.95 +s2 );
setScaleKey( spep_0 -3 + 368, 1, 1.94 +s2, 1.94 +s2 );
setScaleKey( spep_0 -3 + 370, 1, 1.94 +s2, 1.94 +s2 );
setScaleKey( spep_0 -3 + 372, 1, 1.93 +s2, 1.93 +s2 );
setScaleKey( spep_0 -3 + 374, 1, 1.92 +s2, 1.92 +s2 );
setScaleKey( spep_0 -3 + 376, 1, 1.92 +s2, 1.92 +s2 );
setScaleKey( spep_0 -3 + 378, 1, 1.91 +s2, 1.91 +s2 );
setScaleKey( spep_0 -3 + 380, 1, 1.94 +s2, 1.94 +s2 );
setScaleKey( spep_0 -3 + 382, 1, 2.01 +s2, 2.01 +s2 );
setScaleKey( spep_0 -3 + 384, 1, 2.1 +s2, 2.1 +s2 );
setScaleKey( spep_0 -3 + 386, 1, 2.23 +s2, 2.23 +s2 );
setScaleKey( spep_0 -3 + 407, 1, 2.23 +s2, 2.23 +s2 );--
setScaleKey( spep_0 -3 + 408, 1, 3.15, 3.15 );
setScaleKey( spep_0 -3 + 410, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 412, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 414, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 416, 1, 2.58, 2.58 );
setScaleKey( spep_0 -3 + 418, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 420, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 422, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 424, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 426, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 428, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 432, 1, 2.62, 2.62 );

setRotateKey( spep_0 -3 + 336, 1, -26.6 );
setRotateKey( spep_0 -3 + 351, 1, -26.6 );--
setRotateKey( spep_0 -3 + 352, 1, -76.1 );
setRotateKey( spep_0 -3 + 354, 1, -68 );
setRotateKey( spep_0 -3 + 356, 1, -59.9 );
setRotateKey( spep_0 -3 + 358, 1, -51.8 );
setRotateKey( spep_0 -3 + 360, 1, -46.5 );
setRotateKey( spep_0 -3 + 362, 1, -46.4 );
setRotateKey( spep_0 -3 + 364, 1, -46.2 );
setRotateKey( spep_0 -3 + 366, 1, -46.1 );
setRotateKey( spep_0 -3 + 368, 1, -46 );
setRotateKey( spep_0 -3 + 370, 1, -45.9 );
setRotateKey( spep_0 -3 + 372, 1, -45.8 );
setRotateKey( spep_0 -3 + 374, 1, -45.7 );
setRotateKey( spep_0 -3 + 376, 1, -45.6 );
setRotateKey( spep_0 -3 + 378, 1, -45.5 );
setRotateKey( spep_0 -3 + 380, 1, -45.4 );
setRotateKey( spep_0 -3 + 382, 1, -45.3 );
setRotateKey( spep_0 -3 + 384, 1, -45.2 );
setRotateKey( spep_0 -3 + 386, 1, -45 );
setRotateKey( spep_0 -3 + 388, 1, -44.9 );
setRotateKey( spep_0 -3 + 390, 1, -44.8 );
setRotateKey( spep_0 -3 + 392, 1, -44.7 );
setRotateKey( spep_0 -3 + 394, 1, -44.6 );
setRotateKey( spep_0 -3 + 396, 1, -44.5 );
setRotateKey( spep_0 -3 + 398, 1, -44.4 );
setRotateKey( spep_0 -3 + 400, 1, -44.3 );
setRotateKey( spep_0 -3 + 402, 1, -44.2 );
setRotateKey( spep_0 -3 + 404, 1, -44.1 );
setRotateKey( spep_0 -3 + 406, 1, -44 );
setRotateKey( spep_0 -3 + 407, 1, -44 );--
setRotateKey( spep_0 -3 + 408, 1, 11.3 );
setRotateKey( spep_0 -3 + 432, 1, 11.3 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 490, 1, 1 );
setDisp( spep_0 -3 + 508, 1, 0 );
changeAnime( spep_0 -3 + 490, 1, 107 );

setMoveKey( spep_0 -3 + 490, 1, -67.8, -47.8 , 0 );
setMoveKey( spep_0 -3 + 492, 1, -183.6, -18.4 , 0 );
setMoveKey( spep_0 -3 + 494, 1, -140.8, -3 , 0 );
setMoveKey( spep_0 -3 + 496, 1, -50.8, -26.6 , 0 );
setMoveKey( spep_0 -3 + 498, 1, -53.1, -40.5 , 0 );
setMoveKey( spep_0 -3 + 500, 1, -47.4, -30.3 , 0 );
setMoveKey( spep_0 -3 + 502, 1, -65.7, -40.1 , 0 );
setMoveKey( spep_0 -3 + 504, 1, -44, -34 , 0 );
setMoveKey( spep_0 -3 + 506, 1, -42.3, -35.8 , 0 );
setMoveKey( spep_0 -3 + 508, 1, -42.3, -35.8 , 0 );

setScaleKey( spep_0 -3 + 490, 1, 2.67, 2.67 );
setScaleKey( spep_0 -3 + 492, 1, 4, 4 );
setScaleKey( spep_0 -3 + 494, 1, 3.32, 3.32 );
setScaleKey( spep_0 -3 + 496, 1, 2.65, 2.65 );
setScaleKey( spep_0 -3 + 498, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 500, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 502, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 504, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 506, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 508, 1, 2.6, 2.6 );

setRotateKey( spep_0 -3 + 490, 1, -31 );
setRotateKey( spep_0 -3 + 508, 1, -31 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 520, 1, 1 );
setDisp( spep_0 -3 + 540, 1, 0 );
changeAnime( spep_0 -3 + 520, 1, 107 );

setMoveKey( spep_0 -3 + 520, 1, -159, 392.9 , 0 );
setMoveKey( spep_0 -3 + 522, 1, -147.6, 372.8 , 0 );
setMoveKey( spep_0 -3 + 524, 1, -131.2, 342.6 , 0 );
setMoveKey( spep_0 -3 + 526, 1, -109.8, 302.6 , 0 );
setMoveKey( spep_0 -3 + 528, 1, -83.6, 253.1 , 0 );
setMoveKey( spep_0 -3 + 530, 1, -52.9, 194.4 , 0 );
setMoveKey( spep_0 -3 + 532, 1, -17.7, 127 , 0 );
setMoveKey( spep_0 -3 + 534, 1, 21.6, 51.1 , 0 );
setMoveKey( spep_0 -3 + 536, 1, 62.3, -33.6 , 0 );
setMoveKey( spep_0 -3 + 538, 1, 105.1, -122.7 , 0 );
setMoveKey( spep_0 -3 + 540, 1, 105.1, -122.7 , 0 );

setScaleKey( spep_0 -3 + 520, 1, 0.05, 0.05 );
setScaleKey( spep_0 -3 + 522, 1, 0.07, 0.07 );
setScaleKey( spep_0 -3 + 524, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 526, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 528, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 530, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 532, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 534, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 536, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 538, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 540, 1, 0.45, 0.45 );

setRotateKey( spep_0 -3 + 520, 1, 57.8 );
setRotateKey( spep_0 -3 + 540, 1, 57.8 );

-- ** 音 ** --
--オーラ
SE013 = playSeVer2( spep_0 + 184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE013, 56 );
SE030 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE030, 63 );
SE033 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE033, 63 );
SE034 = playSeVer2( spep_0 + 472, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE034, 63 );

--悟飯キック
SE014 = playSeVer2( spep_0 + 210, 1189, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 216, 1187, "", 0, 0, 0, -1);

--蹴り上げ
SE016 = playSeVer2( spep_0 + 234, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE016, 68 );
SE017 = playSeVer2( spep_0 + 236, 1110, "", 0, 0, 0, -1);

--画面遷移
SE018 = playSeVer2( spep_0 + 246, 1072, "", 0, 0, 0, -1);

--パンチ
SE019 = playSeVer2( spep_0 + 258, 1009, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 258, 1110, "", 0, 0, 0, -1);

--悟飯振りかぶる
SE021 = playSeVer2( spep_0 + 260, 1278, "",spep_0 + 338, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 260, SE021, 74 );
SE022 = playSeVer2( spep_0 + 294, 1116, "",spep_0 + 338, 0, 8, -1);

--アッパー
SE023 = playSeVer2( spep_0 + 330, 1187, "",spep_0 + 426, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 330, SE023, 73 );
SE024 = playSeVer2( spep_0 + 330, 1190, "",spep_0 + 374, 0, 18, -1);
SE025 = playSeVer2( spep_0 + 330, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE026 = playSeVer2( spep_0 + 376, 1109, "", 0, 0, 0, -1);

--悟空蹴り
SE027 = playSeVer2( spep_0 + 402, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE027, 68 );
SE028 = playSeVer2( spep_0 + 404, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE028, 83 );
SE029 = playSeVer2( spep_0 + 404, 1187, "",spep_0 + 470, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 404, SE029, 85 );

--悟空振りかぶる
SE031 = playSeVer2( spep_0 + 450, 1182, "",spep_0 + 500, 10, 22, -1);
setStartTimeMs( SE031,  117 );
SE032 = playSeVer2( spep_0 + 444, 1116, "",spep_0 + 488, 0, 18, -1);
SE035 = playSeVer2( spep_0 + 476, 1004, "", 0, 0, 0, -1);

--悟空パンチ
SE036 = playSeVer2( spep_0 + 484, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE036, 83 );
SE037 = playSeVer2( spep_0 + 484, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE037, 92 );

--敵飛んでいく
SE038 = playSeVer2( spep_0 + 500, 1121, "",spep_0 + 562, 0, 24, -1);

--岩激突
SE039 = playSeVer2( spep_0 + 532, 1159, "",spep_0 + 586, 0, 10, -1);
SE040 = playSeVer2( spep_0 + 532, 1188, "",spep_0 + 586, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 576;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--オーラ
SE043 = playSeVer2( spep_1 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE043, 50 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 迫る(306F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --迫る	ef_003
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 306, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 306, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 306, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 306, finish, 255 );

-- ** 音 ** --
--気弾溜め
SE041 = playSeVer2( spep_2 + 4, 1210, "",spep_2 + 60, 6, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 4, SE041, 115 );
setStartTimeMs( SE041,  2367 );
SE044 = playSeVer2( spep_2 + 4, 1209, "",spep_2 + 60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 4, SE044, 82 );
SE045 = playSeVer2( spep_2 + 4, 1282, "",spep_2 + 60, 0, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 4, SE045, 58 );
SE046 = playSeVer2( spep_2 + 4, 1276, "",spep_2 + 60, 0, 10, -1);

--オーラ
SE047 = playSeVer2( spep_2 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE047, 50 );
--SE048 = playSeVer2( spep_2 + 36, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 36, SE048, 50 );
SE053 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE053, 50 );
SE054 = playSeVer2( spep_2 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE054, 50 );

--気弾発射
SE049 = playSeVer2( spep_2 + 46, 1133, "",spep_2 + 170, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 46, SE049, 95 );
SE050 = playSeVer2( spep_2 + 46, 1146, "",spep_2 + 170, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 46, SE050, 82 );
SE051 = playSeVer2( spep_2 + 46, 1213, "",spep_2 + 170, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 46, SE051, 62 );
SE052 = playSeVer2( spep_2 + 46, 1193, "",spep_2 + 170, 0, 18, -1);


--気弾飛んでいく
SE055 = playSeVer2( spep_2 + 112, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE055, 132 );

--爆発
SE056 = playSeVer2( spep_2 + 154, 1024, "",spep_2 + 196, 0, 10, -1);
SE057 = playSeVer2( spep_2 + 154, 1159, "", 0, 0, 0, -1);

--ラスト爆発
SE058 = playSeVer2( spep_2 + 182, 1061, "", 0, 0, 0, -1);
setPitch( spep_2 + 182, SE058, -400 );
setTimeStretch( SE058, 0.73, 30, 4 );
SE059 = playSeVer2( spep_2 + 184, 1067, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_2 + 184, 1109, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 206, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 206, SE061, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 306 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 196 );
endPhase( spep_2 + 296 );


end