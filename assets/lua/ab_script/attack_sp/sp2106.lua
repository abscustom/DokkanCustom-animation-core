--1020310:孫悟空(身勝手の極意)_完全なる極意
--sp_effect_b2_00144
--sp2106

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
SP_01 = 156670;  --正面立ち〜顔アップ   ef_001
SP_02 = 156671;  --足の位置を整える〜キック    ef_002_front
SP_03 = 156672;  --足の位置を整える〜キック    ef_002_back
SP_04 = 156675;  --横顔アップ〜壁に叩きつけて煙  ef_003_front
SP_05 = 156676;  --横顔アップ〜壁に叩きつけて煙  ef_003_back

--敵側
SP_02r = 156673;  --足の位置を整える〜キック    ef_002_front_re
SP_03r = 156674;  --足の位置を整える〜キック    ef_002_back_re

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
-- ご対面(122F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --正面立ち〜顔アップ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 122, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 122, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 122, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 122, first_f, 255 );

spep_x = spep_0 + 36;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--環境＋オーラ
SE001 = playSe( spep_0 + 0, 1181 );
stopSe( spep_0 +122 + 102, SE001, 26 );

--環境＋オーラ
SE002 = playSe( spep_0 + 0, 1267 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );
stopSe( spep_0 +122 + 72, SE002, 26 );

--環境＋オーラ
SE003 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 28 );
stopSe( spep_0 +122 + 100, SE003, 28 );

--顔カットイン
SE004 = playSe( spep_0 + 44, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 124, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 122;


------------------------------------------------------
-- 足の位置を整える〜キック(560F)
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --足の位置を整える〜キック(ef_002_front)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 560, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 560, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 560, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 560, kick_f, 255 );

kick_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ご対面　背景(ef_002)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 560, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 560, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 560, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 560, kick_b, 255 );

-- ** 音 ** --
--足踏ん張る
SE005 = playSe( spep_1 + 8, 1233 );
setSeVolumeByWorkId( spep_1 + 8, SE005, 34 );
setSeVolumeByWorkId( spep_1 + 9, SE005, 68 );
setSeVolumeByWorkId( spep_1 + 10, SE005, 100 );
setStartTimeMs( SE005,  167 );
setPitch( spep_1 + 8, SE005, 200 );
setTimeStretch( SE005, 1.13, 10, 1 );

--足踏ん張る
SE006 = playSe( spep_1 + 10, 1192 );
setPitch( spep_1 + 10, SE006, 400 );
setTimeStretch( SE006, 1.27, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 562, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 48 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_1 -3 + 152, 1, 1 );
setDisp( spep_1 -3 + 244, 1, 0 );
setDisp( spep_1 -3 + 436, 1, 1 );
setDisp( spep_1 -3 + 500, 1, 0 );
setDisp( spep_1 -3 + 528, 1, 1 );
setDisp( spep_1 -3 + 546, 1, 0 );

changeAnime( spep_1 -3 + 152, 1, 5 );
changeAnime( spep_1 -3 + 228, 1, 7 );
changeAnime( spep_1 -3 + 436, 1, 7 );
changeAnime( spep_1 -3 + 476, 1, 6 );
changeAnime( spep_1 -3 + 528, 1, 8 );
changeAnime( spep_1 -3 + 530, 1, 6 );

setMoveKey( spep_1 -3 + 152, 1, -174.3, -38.5 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -163.3, -39.5 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -159.5, -39.9 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -157.3, -40.2 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -155.9, -40.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -154.8, -40.6 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -154, -40.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -153.4, -40.8 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -152.9, -40.9 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -152.5, -41.1 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -152.2, -41.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -151.9, -41.3 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -151.7, -41.3 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -151.5, -41.5 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -151.3, -41.5 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -151.2, -41.6 , 0 );
setMoveKey( spep_1 -3 + 184, 1, -151.1, -41.7 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -151, -41.8 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -150.9, -41.9 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -150.9, -42 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -150.8, -42 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -150.7, -42.1 , 0 );
setMoveKey( spep_1 -3 + 196, 1, -150.7, -42.2 , 0 );
setMoveKey( spep_1 -3 + 198, 1, -150.7, -42.3 , 0 );
setMoveKey( spep_1 -3 + 200, 1, -150.6, -42.3 , 0 );
setMoveKey( spep_1 -3 + 202, 1, -150.6, -42.4 , 0 );
setMoveKey( spep_1 -3 + 204, 1, -150.6, -42.5 , 0 );
setMoveKey( spep_1 -3 + 206, 1, -150.6, -42.6 , 0 );
setMoveKey( spep_1 -3 + 208, 1, -150.5, -32.6 , 0 );
setMoveKey( spep_1 -3 + 210, 1, -141.5, -57.6 , 0 );
setMoveKey( spep_1 -3 + 212, 1, -151.5, -32.6 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -140.5, -52.6 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -148.5, -19.6 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -137.4, -51.6 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -140.4, -16.6 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -163.4, -39.5 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -175, -17 , 0 );
setMoveKey( spep_1 -3 + 226, 1, -167.5, -30.5 , 0 );
setMoveKey( spep_1 -3 + 227, 1, -167.5, -30.5 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -199.2, -49.2 , 0 );
setMoveKey( spep_1 -3 + 230, 1, -197.1, -51.2 , 0 );
setMoveKey( spep_1 -3 + 232, 1, -209.8, -31.4 , 0 );
setMoveKey( spep_1 -3 + 234, 1, -227.3, -47.8 , 0 );
setMoveKey( spep_1 -3 + 236, 1, -248.6, -33.3 , 0 );
setMoveKey( spep_1 -3 + 238, 1, -274.6, -48 , 0 );
setMoveKey( spep_1 -3 + 240, 1, -300.4, 1.1 , 0 );
setMoveKey( spep_1 -3 + 242, 1, -336, -17.9 , 0 );
setMoveKey( spep_1 -3 + 244, 1, -336, -17.9 , 0 );

a1=400;
setMoveKey( spep_1 -3 + 436, 1, -192 + a1, 86.5 , 0 );
setMoveKey( spep_1 -3 + 438, 1, -186 + a1, 86.5 , 0 );
setMoveKey( spep_1 -3 + 440, 1, -426 + a1, 166.5 , 0 );
setMoveKey( spep_1 -3 + 442, 1, -426.5 + a1, 166.5 , 0 );
setMoveKey( spep_1 -3 + 444, 1, -430.9 + a1, 166.5 , 0 );
setMoveKey( spep_1 -3 + 446, 1, -483.4 + a1, 166.5 , 0 );
setMoveKey( spep_1 -3 + 448, 1, -441.9 + a1, 168.5 , 0 );
setMoveKey( spep_1 -3 + 450, 1, -490.4 + a1, 174.4 , 0 );
setMoveKey( spep_1 -3 + 452, 1, -490.9 + a1, 176.4 , 0 );
setMoveKey( spep_1 -3 + 454, 1, -433.4 + a1, 174.4 , 0 );
setMoveKey( spep_1 -3 + 456, 1, -489.9 + a1, 174.4 , 0 );
setMoveKey( spep_1 -3 + 458, 1, -454.3 + a1, 170.4 , 0 );
setMoveKey( spep_1 -3 + 460, 1, -488.8 + a1, 174.4 , 0 );
setMoveKey( spep_1 -3 + 462, 1, -491.3 + a1, 172.4 , 0 );
setMoveKey( spep_1 -3 + 463, 1, -491.3 + a1, 172.4 , 0 );

a2=100;
b2=200;
setMoveKey( spep_1 -3 + 464, 1, -176.9 + a2, -215.5 , 0 );
setMoveKey( spep_1 -3 + 472, 1, -176.9 + a2, -215.5 , 0 );
setMoveKey( spep_1 -3 + 474, 1, -148.9 + a2, -97.6 , 0 );
setMoveKey( spep_1 -3 + 475, 1, -148.9 + a2, -97.6 , 0 );
setMoveKey( spep_1 -3 + 476, 1, -263.7, -354.6 +b2 , 0 );
setMoveKey( spep_1 -3 + 478, 1, -214, -146 +b2 , 0 );
setMoveKey( spep_1 -3 + 480, 1, -266.3, -45.2 +b2 , 0 );
setMoveKey( spep_1 -3 + 482, 1, -466.3, 142.8 +b2 , 0 );
setMoveKey( spep_1 -3 + 484, 1, -853.9, 352.5 +b2 , 0 );
setMoveKey( spep_1 -3 + 486, 1, -851.9, 372.5 +b2 , 0 );
setMoveKey( spep_1 -3 + 488, 1, -852.2, 369.6 +b2 , 0 );
setMoveKey( spep_1 -3 + 490, 1, -862.4, 383.8 +b2 , 0 );
setMoveKey( spep_1 -3 + 492, 1, -852.8, 363.9 +b2 , 0 );
setMoveKey( spep_1 -3 + 494, 1, -847, 381.1 +b2 , 0 );
setMoveKey( spep_1 -3 + 496, 1, -853.3, 358.2 +b2 , 0 );
setMoveKey( spep_1 -3 + 498, 1, -853.6, 357.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 500, 1, -853.6, 357.4 +b2 , 0 );

b3=100;
setMoveKey( spep_1 -3 + 528, 1, 186.5, -91.1 +b3 , 0 );
setMoveKey( spep_1 -3 + 529, 1, 186.5, -91.1 +b3 , 0 );
setMoveKey( spep_1 -3 + 530, 1, 176.8, -203.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 532, 1, 172.6, -179 +b3 , 0 );
setMoveKey( spep_1 -3 + 534, 1, 152.6, -179 +b3 , 0 );
setMoveKey( spep_1 -3 + 536, 1, 132.6, -199 +b3 , 0 );
setMoveKey( spep_1 -3 + 538, 1, 32.5, -272.9 +b3 , 0 );
setMoveKey( spep_1 -3 + 540, 1, 14.5, -300.8 +b3 , 0 );
setMoveKey( spep_1 -3 + 542, 1, -63.6, -342.8 +b3 , 0 );
setMoveKey( spep_1 -3 + 544, 1, -425.7, -504.9 +b3 , 0 );
setMoveKey( spep_1 -3 + 546, 1, -425.7, -504.9 +b3 , 0 );

setScaleKey( spep_1 -3 + 152, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 154, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 156, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 158, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 160, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 162, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 170, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 172, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 222, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 224, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 226, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 227, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 228, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 230, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 232, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 234, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 236, 1, 0.48, 0.48 );
setScaleKey( spep_1 -3 + 238, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 240, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 242, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 244, 1, 0.95, 0.95 );

s1=0.6;
setScaleKey( spep_1 -3 + 436, 1, 4.3, 4.3 );
setScaleKey( spep_1 -3 + 463, 1, 4.3, 4.3 );

setScaleKey( spep_1 -3 + 464, 1, 1.95 + s1, 1.95 + s1 );
setScaleKey( spep_1 -3 + 472, 1, 1.95 + s1, 1.95 + s1 );
setScaleKey( spep_1 -3 + 474, 1, 1.99 + s1, 1.99 + s1 );
setScaleKey( spep_1 -3 + 475, 1, 1.99 + s1, 1.99 + s1 );
setScaleKey( spep_1 -3 + 476, 1, 9.79 + s1, 9.79 + s1 );
setScaleKey( spep_1 -3 + 478, 1, 9.78 + s1, 9.78 + s1 );
setScaleKey( spep_1 -3 + 498, 1, 9.78 + s1, 9.78 + s1 );
setScaleKey( spep_1 -3 + 500, 1, 9.78 + s1, 9.78 + s1 );

s2=2.0;
s3=1.4;
setScaleKey( spep_1 -3 + 528, 1, 4.89 + s2, 4.89 + s2 );
setScaleKey( spep_1 -3 + 529, 1, 4.89 + s2, 4.89 + s2 );
setScaleKey( spep_1 -3 + 530, 1, 5 + s3, 5 + s3 );
setScaleKey( spep_1 -3 + 546, 1, 5 + s3, 5 + s3 );

setRotateKey( spep_1 -3 + 152, 1, 51.5 );
setRotateKey( spep_1 -3 + 154, 1, 53.3 );
setRotateKey( spep_1 -3 + 156, 1, 54 );
setRotateKey( spep_1 -3 + 158, 1, 54.3 );
setRotateKey( spep_1 -3 + 160, 1, 54.6 );
setRotateKey( spep_1 -3 + 162, 1, 54.8 );
setRotateKey( spep_1 -3 + 164, 1, 54.9 );
setRotateKey( spep_1 -3 + 166, 1, 55 );
setRotateKey( spep_1 -3 + 168, 1, 55.1 );
setRotateKey( spep_1 -3 + 170, 1, 55.1 );
setRotateKey( spep_1 -3 + 172, 1, 55.2 );
setRotateKey( spep_1 -3 + 174, 1, 55.2 );
setRotateKey( spep_1 -3 + 176, 1, 55.3 );
setRotateKey( spep_1 -3 + 182, 1, 55.3 );
setRotateKey( spep_1 -3 + 184, 1, 55.4 );
setRotateKey( spep_1 -3 + 200, 1, 55.4 );
setRotateKey( spep_1 -3 + 202, 1, 55.5 );
setRotateKey( spep_1 -3 + 222, 1, 55.5 );
setRotateKey( spep_1 -3 + 224, 1, 48.3 );
setRotateKey( spep_1 -3 + 226, 1, 41 );
setRotateKey( spep_1 -3 + 227, 1, 41 );
setRotateKey( spep_1 -3 + 228, 1, 54 );
setRotateKey( spep_1 -3 + 230, 1, 53.8 );
setRotateKey( spep_1 -3 + 232, 1, 53.2 );
setRotateKey( spep_1 -3 + 234, 1, 52.3 );
setRotateKey( spep_1 -3 + 236, 1, 50.9 );
setRotateKey( spep_1 -3 + 238, 1, 49.2 );
setRotateKey( spep_1 -3 + 240, 1, 47.1 );
setRotateKey( spep_1 -3 + 242, 1, 44.5 );
setRotateKey( spep_1 -3 + 244, 1, 44.5 );

setRotateKey( spep_1 -3 + 436, 1, 119.5 );
setRotateKey( spep_1 -3 + 463, 1, 119.5 );
setRotateKey( spep_1 -3 + 464, 1, 162 );
setRotateKey( spep_1 -3 + 472, 1, 162 );
setRotateKey( spep_1 -3 + 474, 1, 152.1 );
setRotateKey( spep_1 -3 + 475, 1, 152.1 );
setRotateKey( spep_1 -3 + 476, 1, 87 );
setRotateKey( spep_1 -3 + 478, 1, 77 );
setRotateKey( spep_1 -3 + 480, 1, 48 );
setRotateKey( spep_1 -3 + 482, 1, 48 );
setRotateKey( spep_1 -3 + 484, 1, 25 );
setRotateKey( spep_1 -3 + 498, 1, 25 );
setRotateKey( spep_1 -3 + 500, 1, 25 );

setRotateKey( spep_1 -3 + 528, 1, 0 );
setRotateKey( spep_1 -3 + 529, 1, 0 );
setRotateKey( spep_1 -3 + 530, 1, 41.6 );
setRotateKey( spep_1 -3 + 532, 1, 32 );
setRotateKey( spep_1 -3 + 534, 1, 31 );
setRotateKey( spep_1 -3 + 536, 1, 31 );
setRotateKey( spep_1 -3 + 538, 1, 30 );
setRotateKey( spep_1 -3 + 540, 1, 29 );
setRotateKey( spep_1 -3 + 542, 1, 25 );
setRotateKey( spep_1 -3 + 544, 1, 10 );
setRotateKey( spep_1 -3 + 546, 1, 10 );

-- ** 音 ** --
--光の速さで飛んでくる
SE007 = playSe( spep_1 + 62, 1118 );
setSeVolumeByWorkId( spep_1 + 62, SE007, 73 );
stopSe( spep_1 + 84, SE007, 22 );
setPitch( spep_1 + 62, SE007, 100 );
setTimeStretch( SE007, 1.07, 10, 1 );

--光の速さで飛んでくる
SE008 = playSe( spep_1 + 62, 1182 );
stopSe( spep_1 + 74, SE008, 38 );

--光の速さで飛んでくる
SE009 = playSe( spep_1 + 68, 1277 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 68, SE009, 126 );
setPitch( spep_1 + 68, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );

--地面爆発
SE010 = playSe( spep_1 + 104, 1069 );
setSeVolumeByWorkId( spep_1 + 104, SE010, 20 );
setSeVolumeByWorkId( spep_1 + 105, SE010, 40 );
setSeVolumeByWorkId( spep_1 + 106, SE010, 60 );
setSeVolumeByWorkId( spep_1 + 107, SE010, 80 );
setSeVolumeByWorkId( spep_1 + 108, SE010, 100 );
setStartTimeMs( SE010,  333 );

--地面爆発
SE011 = playSe( spep_1 + 102, 1188 );
setSeVolumeByWorkId( spep_1 + 102, SE011, 72 );

--地面爆発
SE012 = playSe( spep_1 + 114, 1278 );
setSeVolumeByWorkId( spep_1 + 114, SE012, 77 );
stopSe( spep_1 + 154, SE012, 28 );

--岩光る
SE013 = playSe( spep_1 + 176, 1021 );
setSeVolumeByWorkId( spep_1 + 176, SE013, 58 );
setStartTimeMs( SE013,  333 );

--岩光る
SE014 = playSe( spep_1 + 176, 1302 );

--岩爆発する
SE015 = playSe( spep_1 + 206, 1024 );
stopSe( spep_1 + 300, SE015, 16 );

--岩爆発する
SE016 = playSe( spep_1 + 208, 1017 );
setSeVolumeByWorkId( spep_1 + 208, SE016, 82 );

--くるくる
SE017 = playSe( spep_1 + 250, 1255 );
setSeVolumeByWorkId( spep_1 + 250, SE017, 25 );
setSeVolumeByWorkId( spep_1 + 252, SE017, 50 );
setSeVolumeByWorkId( spep_1 + 254, SE017, 75 );
setSeVolumeByWorkId( spep_1 + 256, SE017, 100 );
stopSe( spep_1 + 280, SE017, 22 );
setStartTimeMs( SE017,  700 );		

--岩爆発する
SE018 = playSe( spep_1 + 216, 1160 );
stopSe( spep_1 + 310, SE018, 52 );

--くるくる
SE019 = playSe( spep_1 + 246, 1117 );
stopSe( spep_1 + 282, SE019, 52 );

--着地
SE020 = playSe( spep_1 + 312, 1033 );
setSeVolumeByWorkId( spep_1 + 312, SE020, 73 );
stopSe( spep_1 + 346, SE020, 20 );

--着地
SE021 = playSe( spep_1 + 312, 1012 );

--着地
SE022 = playSe( spep_1 + 312, 1197 );
setSeVolumeByWorkId( spep_1 + 312, SE022, 71 );

--着地
SE023 = playSe( spep_1 + 320, 1192 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 320, SE023, 316 );
setTimeStretch( SE023, 1.12, 10, 1 );

--着地
SE024 = playSe( spep_1 + 320, 1007 );

--走って向かってくる（空力音）
SE025 = playSe( spep_1 + 342, 1314 );
setSeVolumeByWorkId( spep_1 + 342, SE025, 29 );
stopSe( spep_1 + 412, SE025, 24 );

--走って向かってくる（空力音）
SE026 = playSe( spep_1 + 350, 1278 );
setSeVolumeByWorkId( spep_1 + 350, SE026, 44 );
stopSe( spep_1 + 410, SE026, 36 );

--走って向かってくる
SE027 = playSe( spep_1 + 358, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 358, SE027, 77 );
stopSe( spep_1 + 362, SE027, 4 );

--走って向かってくる
--SE028 = playSe( spep_1 + 360, 1106 ,"",0.5);
--setSeVolumeByWorkId( spep_1 + 360, SE028, 66 );

--走って向かってくる
SE029 = playSe( spep_1 + 364, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 364, SE029, 74 );
stopSe( spep_1 + 368, SE029, 4 );

--走って向かってくる
SE030 = playSe( spep_1 + 368, 1107 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 368, SE030, 68 );

--走って向かってくる
SE031 = playSe( spep_1 + 372, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 372, SE031, 120 );
stopSe( spep_1 + 376, SE031, 4 );

--走って向かってくる
--SE032 = playSe( spep_1 + 374, 1106 ,"",0.5);
--setSeVolumeByWorkId( spep_1 + 374, SE032, 129 );

--走って向かってくる
SE033 = playSe( spep_1 + 378, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 378, SE033, 126 );
stopSe( spep_1 + 382, SE033, 4 );

--走って向かってくる（空力音）
SE034 = playSe( spep_1 + 378, 1072 );

--走って向かってくる
SE035 = playSe( spep_1 + 384, 1107 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 384, SE035, 112 );

--走って向かってくる
SE036 = playSe( spep_1 + 386, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 386, SE036, 97 );
stopSe( spep_1 + 390, SE036, 4 );

--走って向かってくる
SE037 = playSe( spep_1 + 392, 1107 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 392, SE037, 108 );

--エルボ
SE038 = playSe( spep_1 + 418, 1233 );
setPitch( spep_1 + 418, SE038, 400 );
setTimeStretch( SE038, 1.27, 10, 1 );

--エルボ
SE039 = playSe( spep_1 + 424, 1189 );
setSeVolumeByWorkId( spep_1 + 424, SE039, 122 );

--エルボ
SE040 = playSe( spep_1 + 428, 1182 );
setSeVolumeByWorkId( spep_1 + 428, SE040, 141 );
stopSe( spep_1 + 442, SE040, 10 );

--エルボ
SE041 = playSe( spep_1 + 428, 1153 );
setSeVolumeByWorkId( spep_1 + 430, SE041, 60 );

--エルボ
SE042 = playSe( spep_1 + 430, 1190 );

--アッパー
SE043 = playSe( spep_1 + 462, 1189 );
setSeVolumeByWorkId( spep_1 + 464, SE043, 145 );

--アッパー
SE044 = playSe( spep_1 + 464, 1006 );
setSeVolumeByWorkId( spep_1 + 466, SE044, 79 );

--アッパー
SE045 = playSe( spep_1 + 470, 1010 );

--アッパー
SE046 = playSe( spep_1 + 470, 1110 );
setSeVolumeByWorkId( spep_1 + 472, SE046, 91 );

--振りかぶり
SE047 = playSe( spep_1 + 494, 1117 );
stopSe( spep_1 + 506, SE047, 28 );

--振りかぶり
SE048 = playSe( spep_1 + 498, 1274 );
setSeVolumeByWorkId( spep_1 + 498, SE048, 36 );
setPitch( spep_1 + 498, SE048, 300 );
setTimeStretch( SE048, 0.61, 10, 1 );

--振りかぶり
SE049 = playSe( spep_1 + 512, 1004 );

--ハイキック
SE050 = playSe( spep_1 + 524, 1010 );
setSeVolumeByWorkId( spep_1 + 524, SE050, 98 );

--ハイキック
SE051 = playSe( spep_1 + 524, 1110 );
setSeVolumeByWorkId( spep_1 + 524, SE051, 93 );

--ハイキック
SE052 = playSe( spep_1 + 524, 1001 );
setSeVolumeByWorkId( spep_1 + 524, SE052, 55 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 560;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_2

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --


-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_c + 94;

------------------------------------------------------
-- 横顔アップ〜壁に叩きつけて煙(294F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --横顔アップ〜壁に叩きつけて煙(ef_003_front)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 294, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 294, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 294, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 294, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --横顔アップ〜壁に叩きつけて煙(ef_003_back)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 294, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 294, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 294, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 294, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 82, 1, 1 );
setDisp( spep_3 -3 + 132, 1, 0 );

setDisp( spep_3 -3 + 186, 1, 1 );
setDisp( spep_3 -3 + 194, 1, 0 );

changeAnime( spep_3 -3 + 82, 1, 8 );
changeAnime( spep_3 -3 + 186, 1, 8 );

a4=50;
b4=50;
setMoveKey( spep_3 -3 + 82, 1, 440.9 -a4, 43.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 336.9 -a4, 23.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 214.9 -a4, 41.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 110.9 -a4, 33.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 12.9 -a4, 39.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -101.1 -a4, 31.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -107.1 -a4, 33.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -107.1 -a4, 37.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -119.1 -a4, 45.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -113.1 -a4, 27.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -121.1 -a4, 31.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -129.1 -a4, 41.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -131.1 -a4, 37.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -137.1 -a4, 25.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -143.1 -a4, 30.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -151.1 -a4, 37.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -149.1 -a4, 33 -b4 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -153.1 -a4, 27.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -159.1 -a4, 33 -b4 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -169.1 -a4, 39.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -171.1 -a4, 31 -b4 , 0 );
setMoveKey( spep_3 -3 + 124, 1, -177.1 -a4, 31 -b4 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -337.1 -a4, 67 -b4 , 0 );
setMoveKey( spep_3 -3 + 128, 1, -479.1 -a4, 11.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 130, 1, -607.1 -a4, 41.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 132, 1, -727.1 -a4, 25.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 186, 1, 128.5, 99.9 , 0 );
setMoveKey( spep_3 -3 + 187, 1, 128.5, 99.9 , 0 );
setMoveKey( spep_3 -3 + 188, 1, 36.5, 21.9 , 0 );
setMoveKey( spep_3 -3 + 189, 1, 36.5, 21.9 , 0 );
setMoveKey( spep_3 -3 + 190, 1, -59.5, -62.1 , 0 );
setMoveKey( spep_3 -3 + 191, 1, -59.5, -62.1 , 0 );
setMoveKey( spep_3 -3 + 192, 1, -154, -133.7 , 0 );
setMoveKey( spep_3 -3 + 193, 1, -154, -133.7 , 0 );
setMoveKey( spep_3 -3 + 194, 1, -154, -133.7 , 0 );

s4=0.4;
setScaleKey( spep_3 -3 + 82, 1, 2.13 + s4, 2.13 + s4 );
setScaleKey( spep_3 -3 + 132, 1, 2.13 + s4, 2.13 + s4 );
setScaleKey( spep_3 -3 + 186, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 194, 1, 0.29, 0.29 );


setRotateKey( spep_3 -3 + 82, 1, 46.2 );
setRotateKey( spep_3 -3 + 132, 1, 46.2 );

setRotateKey( spep_3 -3 + 186, 1, -46.6 );
setRotateKey( spep_3 -3 + 194, 1, -46.6 );

-- ** 音 ** --
--目光る
SE054 = playSe( spep_3 + 2, 1181 );
stopSe( spep_3 + 58, SE054, 28 );

--目光る
SE055 = playSe( spep_3 + 4, 1303 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 4, SE055, 75 );
stopSe( spep_3 + 44, SE055, 44 );

--腕振りかぶる
SE056 = playSe( spep_3 + 54, 1116 );
stopSe( spep_3 + 80, SE056, 14 );

--ボディブロー
SE057 = playSe( spep_3 + 74, 1208 );
setSeVolumeByWorkId( spep_3 + 74, SE057, 19 );
setSeVolumeByWorkId( spep_3 + 75, SE057, 29 );
setSeVolumeByWorkId( spep_3 + 76, SE057, 39 );
setSeVolumeByWorkId( spep_3 + 77, SE057, 59 );
setSeVolumeByWorkId( spep_3 + 78, SE057, 79 );
setStartTimeMs( SE057,  117 );

--ボディブロー
SE058 = playSe( spep_3 + 82, 1187 );
setSeVolumeByWorkId( spep_3 + 82, SE058, 75 );

--ボディブロー
SE059 = playSe( spep_3 + 84, 1153 );

--ボディブロー
SE060 = playSe( spep_3 + 86, 1190 );

--ボディブロー
SE061 = playSe( spep_3 + 96, 1170 );
setPitch( spep_3 + 96, SE061, -400 );
setTimeStretch( SE061, 0.73, 10, 1 );

--岩爆発１
SE062 = playSe( spep_3 + 128, 1061 );
setSeVolumeByWorkId( spep_3 + 128, SE062, 36 );
stopSe( spep_3 + 142, SE062, 14 );
setPitch( spep_3 + 128, SE062, 300 );
setTimeStretch( SE062, 1.2, 10, 1 );

--岩爆発１
SE063 = playSe( spep_3 + 128, 1141 );
setSeVolumeByWorkId( spep_3 + 128, SE063, 27 );
stopSe( spep_3 + 134, SE063, 14 );
setPitch( spep_3 + 128, SE063, 200 );
setTimeStretch( SE063, 1.13, 10, 1 );

--岩爆発１
SE064 = playSe( spep_3 + 130, 1159 );
setSeVolumeByWorkId( spep_3 + 130, SE064, 89 );
stopSe( spep_3 + 148, SE064, 14 );

--岩爆発２
SE065 = playSe( spep_3 + 142, 1061 );
setSeVolumeByWorkId( spep_3 + 142, SE065, 40 );
stopSe( spep_3 + 156, SE065, 12 );
setPitch( spep_3 + 142, SE065, 300 );
setTimeStretch( SE065, 1.2, 10, 1 );

--岩爆発２
SE066 = playSe( spep_3 + 142, 1141 );
setSeVolumeByWorkId( spep_3 + 142, SE066, 18 );
stopSe( spep_3 + 152, SE066, 10 );
setPitch( spep_3 + 142, SE066, 200 );
setTimeStretch( SE066, 1.13, 10, 1 );

--岩爆発２
SE067 = playSe( spep_3 + 144, 1159 );
setSeVolumeByWorkId( spep_3 + 144, SE067, 91 );
stopSe( spep_3 + 162, SE067, 20 );

--岩爆発３
SE068 = playSe( spep_3 + 164, 1061 );
setSeVolumeByWorkId( spep_3 + 164, SE068, 40 );
stopSe( spep_3 + 178, SE068, 12 );
setPitch( spep_3 + 164, SE068, 300 );
setTimeStretch( SE068, 1.2, 10, 1 );

--岩爆発３
SE069 = playSe( spep_3 + 164, 1141 );
setSeVolumeByWorkId( spep_3 + 164, SE069, 18 );
stopSe( spep_3 + 174, SE069, 10 );
setPitch( spep_3 + 174, SE069, 300 );
setTimeStretch( SE069, 1.2, 10, 1 );

--岩爆発３
SE070 = playSe( spep_3 + 166, 1159 );
setSeVolumeByWorkId( spep_3 + 166, SE070, 94 );

--岩に激突
SE071 = playSe( spep_3 + 194, 1024 );

--岩に激突
SE072 = playSe( spep_3 + 194, 1160 );
setSeVolumeByWorkId( spep_3 + 194, SE072, 83 );

--煙あがる
SE073 = playSe( spep_3 + 220, 1258 );
setSeVolumeByWorkId( spep_3 + 220, SE073, 14 );
setSeVolumeByWorkId( spep_3 + 224, SE073, 28 );
setSeVolumeByWorkId( spep_3 + 228, SE073, 42 );
setSeVolumeByWorkId( spep_3 + 232, SE073, 56 );
setSeVolumeByWorkId( spep_3 + 236, SE073, 70 );
setSeVolumeByWorkId( spep_3 + 240, SE073, 84 );
setSeVolumeByWorkId( spep_3 + 244, SE073, 100 );
setStartTimeMs( SE073,  350 );

--煙あがる
SE074 = playSe( spep_3 + 242, 1278 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 290, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 184 );
endPhase( spep_3 + 284 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ご対面(122F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --正面立ち〜顔アップ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 122, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 122, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 122, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 122, first_f, 255 );

--spep_x = spep_0 + 36;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--環境＋オーラ
SE001 = playSe( spep_0 + 0, 1181 );
stopSe( spep_0 +122 + 102, SE001, 26 );

--環境＋オーラ
SE002 = playSe( spep_0 + 0, 1267 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 16 );
stopSe( spep_0 +122 + 72, SE002, 26 );

--環境＋オーラ
SE003 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 28 );
stopSe( spep_0 +122 + 100, SE003, 28 );

--顔カットイン
SE004 = playSe( spep_0 + 44, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 124, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 122;

------------------------------------------------------
-- 足の位置を整える〜キック(560F)
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --足の位置を整える〜キック(ef_002_front)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 560, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 560, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 560, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 560, kick_f, 255 );

kick_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --ご対面　背景(ef_002)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 560, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 560, kick_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 560, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 560, kick_b, 255 );

-- ** 音 ** --
--足踏ん張る
SE005 = playSe( spep_1 + 8, 1233 );
setSeVolumeByWorkId( spep_1 + 8, SE005, 34 );
setSeVolumeByWorkId( spep_1 + 9, SE005, 68 );
setSeVolumeByWorkId( spep_1 + 10, SE005, 100 );
setStartTimeMs( SE005,  167 );
setPitch( spep_1 + 8, SE005, 200 );
setTimeStretch( SE005, 1.13, 10, 1 );

--足踏ん張る
SE006 = playSe( spep_1 + 10, 1192 );
setPitch( spep_1 + 10, SE006, 400 );
setTimeStretch( SE006, 1.27, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 562, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 48 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_1 -3 + 152, 1, 1 );
setDisp( spep_1 -3 + 244, 1, 0 );
setDisp( spep_1 -3 + 436, 1, 1 );
setDisp( spep_1 -3 + 500, 1, 0 );
setDisp( spep_1 -3 + 528, 1, 1 );
setDisp( spep_1 -3 + 546, 1, 0 );

changeAnime( spep_1 -3 + 152, 1, 5 );
changeAnime( spep_1 -3 + 228, 1, 7 );
changeAnime( spep_1 -3 + 436, 1, 107 );
changeAnime( spep_1 -3 + 476, 1, 106 );
changeAnime( spep_1 -3 + 528, 1, 108 );
changeAnime( spep_1 -3 + 530, 1, 106 );

setMoveKey( spep_1 -3 + 152, 1, -174.3, -38.5 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -163.3, -39.5 , 0 );
setMoveKey( spep_1 -3 + 156, 1, -159.5, -39.9 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -157.3, -40.2 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -155.9, -40.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, -154.8, -40.6 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -154, -40.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -153.4, -40.8 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -152.9, -40.9 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -152.5, -41.1 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -152.2, -41.1 , 0 );
setMoveKey( spep_1 -3 + 174, 1, -151.9, -41.3 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -151.7, -41.3 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -151.5, -41.5 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -151.3, -41.5 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -151.2, -41.6 , 0 );
setMoveKey( spep_1 -3 + 184, 1, -151.1, -41.7 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -151, -41.8 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -150.9, -41.9 , 0 );
setMoveKey( spep_1 -3 + 190, 1, -150.9, -42 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -150.8, -42 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -150.7, -42.1 , 0 );
setMoveKey( spep_1 -3 + 196, 1, -150.7, -42.2 , 0 );
setMoveKey( spep_1 -3 + 198, 1, -150.7, -42.3 , 0 );
setMoveKey( spep_1 -3 + 200, 1, -150.6, -42.3 , 0 );
setMoveKey( spep_1 -3 + 202, 1, -150.6, -42.4 , 0 );
setMoveKey( spep_1 -3 + 204, 1, -150.6, -42.5 , 0 );
setMoveKey( spep_1 -3 + 206, 1, -150.6, -42.6 , 0 );
setMoveKey( spep_1 -3 + 208, 1, -150.5, -32.6 , 0 );
setMoveKey( spep_1 -3 + 210, 1, -141.5, -57.6 , 0 );
setMoveKey( spep_1 -3 + 212, 1, -151.5, -32.6 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -140.5, -52.6 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -148.5, -19.6 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -137.4, -51.6 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -140.4, -16.6 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -163.4, -39.5 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -175, -17 , 0 );
setMoveKey( spep_1 -3 + 226, 1, -167.5, -30.5 , 0 );
setMoveKey( spep_1 -3 + 227, 1, -167.5, -30.5 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -199.2, -49.2 , 0 );
setMoveKey( spep_1 -3 + 230, 1, -197.1, -51.2 , 0 );
setMoveKey( spep_1 -3 + 232, 1, -209.8, -31.4 , 0 );
setMoveKey( spep_1 -3 + 234, 1, -227.3, -47.8 , 0 );
setMoveKey( spep_1 -3 + 236, 1, -248.6, -33.3 , 0 );
setMoveKey( spep_1 -3 + 238, 1, -274.6, -48 , 0 );
setMoveKey( spep_1 -3 + 240, 1, -300.4, 1.1 , 0 );
setMoveKey( spep_1 -3 + 242, 1, -336, -17.9 , 0 );
setMoveKey( spep_1 -3 + 244, 1, -336, -17.9 , 0 );

a1=400;
setMoveKey( spep_1 -3 + 436, 1, 192 - a1, 86.5 , 0 );
setMoveKey( spep_1 -3 + 438, 1, 186 - a1, 86.5 , 0 );
setMoveKey( spep_1 -3 + 440, 1, 426 - a1, 166.5 , 0 );
setMoveKey( spep_1 -3 + 442, 1, 426.5 - a1, 166.5 , 0 );
setMoveKey( spep_1 -3 + 444, 1, 430.9 - a1, 166.5 , 0 );
setMoveKey( spep_1 -3 + 446, 1, 483.4 - a1, 166.5 , 0 );
setMoveKey( spep_1 -3 + 448, 1, 441.9 - a1, 168.5 , 0 );
setMoveKey( spep_1 -3 + 450, 1, 490.4 - a1, 174.4 , 0 );
setMoveKey( spep_1 -3 + 452, 1, 490.9 - a1, 176.4 , 0 );
setMoveKey( spep_1 -3 + 454, 1, 433.4 - a1, 174.4 , 0 );
setMoveKey( spep_1 -3 + 456, 1, 489.9 - a1, 174.4 , 0 );
setMoveKey( spep_1 -3 + 458, 1, 454.3 - a1, 170.4 , 0 );
setMoveKey( spep_1 -3 + 460, 1, 488.8 - a1, 174.4 , 0 );
setMoveKey( spep_1 -3 + 462, 1, 491.3 - a1, 172.4 , 0 );
setMoveKey( spep_1 -3 + 463, 1, 491.3 - a1, 172.4 , 0 );

a2=100;
b2=200;
setMoveKey( spep_1 -3 + 464, 1, 176.9 - a2, -215.5 , 0 );
setMoveKey( spep_1 -3 + 472, 1, 176.9 - a2, -215.5 , 0 );
setMoveKey( spep_1 -3 + 474, 1, 148.9 - a2, -97.6 , 0 );
setMoveKey( spep_1 -3 + 475, 1, 148.9 - a2, -97.6 , 0 );
setMoveKey( spep_1 -3 + 476, 1, 263.7, -354.6 +b2 , 0 );
setMoveKey( spep_1 -3 + 478, 1, 214, -146 +b2 , 0 );
setMoveKey( spep_1 -3 + 480, 1, 266.3, -45.2 +b2 , 0 );
setMoveKey( spep_1 -3 + 482, 1, 466.3, 142.8 +b2 , 0 );
setMoveKey( spep_1 -3 + 484, 1, 853.9, 352.5 +b2 , 0 );
setMoveKey( spep_1 -3 + 486, 1, 851.9, 372.5 +b2 , 0 );
setMoveKey( spep_1 -3 + 488, 1, 852.2, 369.6 +b2 , 0 );
setMoveKey( spep_1 -3 + 490, 1, 862.4, 383.8 +b2 , 0 );
setMoveKey( spep_1 -3 + 492, 1, 852.8, 363.9 +b2 , 0 );
setMoveKey( spep_1 -3 + 494, 1, 847, 381.1 +b2 , 0 );
setMoveKey( spep_1 -3 + 496, 1, 853.3, 358.2 +b2 , 0 );
setMoveKey( spep_1 -3 + 498, 1, 853.6, 357.4 +b2 , 0 );
setMoveKey( spep_1 -3 + 500, 1, 853.6, 357.4 +b2 , 0 );

b3=100;
setMoveKey( spep_1 -3 + 528, 1, -186.5, -91.1 +b3 , 0 );
setMoveKey( spep_1 -3 + 529, 1, -186.5, -91.1 +b3 , 0 );
setMoveKey( spep_1 -3 + 530, 1, -176.8, -203.2 +b3 , 0 );
setMoveKey( spep_1 -3 + 532, 1, -172.6, -179 +b3 , 0 );
setMoveKey( spep_1 -3 + 534, 1, -152.6, -179 +b3 , 0 );
setMoveKey( spep_1 -3 + 536, 1, -132.6, -199 +b3 , 0 );
setMoveKey( spep_1 -3 + 538, 1, -32.5, -272.9 +b3 , 0 );
setMoveKey( spep_1 -3 + 540, 1, -14.5, -300.8 +b3 , 0 );
setMoveKey( spep_1 -3 + 542, 1, 63.6, -342.8 +b3 , 0 );
setMoveKey( spep_1 -3 + 544, 1, 425.7, -504.9 +b3 , 0 );
setMoveKey( spep_1 -3 + 546, 1, 425.7, -504.9 +b3 , 0 );

setScaleKey( spep_1 -3 + 152, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 154, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 156, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 158, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 160, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 162, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 170, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 172, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 222, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 224, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 226, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 227, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 228, 1, 0.25, 0.25 );
setScaleKey( spep_1 -3 + 230, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 232, 1, 0.31, 0.31 );
setScaleKey( spep_1 -3 + 234, 1, 0.38, 0.38 );
setScaleKey( spep_1 -3 + 236, 1, 0.48, 0.48 );
setScaleKey( spep_1 -3 + 238, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 240, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 242, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 244, 1, 0.95, 0.95 );

s1=0.6;
setScaleKey( spep_1 -3 + 436, 1, 4.3, 4.3 );
setScaleKey( spep_1 -3 + 463, 1, 4.3, 4.3 );

setScaleKey( spep_1 -3 + 464, 1, 1.95 + s1, 1.95 + s1 );
setScaleKey( spep_1 -3 + 472, 1, 1.95 + s1, 1.95 + s1 );
setScaleKey( spep_1 -3 + 474, 1, 1.99 + s1, 1.99 + s1 );
setScaleKey( spep_1 -3 + 475, 1, 1.99 + s1, 1.99 + s1 );
setScaleKey( spep_1 -3 + 476, 1, 9.79 + s1, 9.79 + s1 );
setScaleKey( spep_1 -3 + 478, 1, 9.78 + s1, 9.78 + s1 );
setScaleKey( spep_1 -3 + 498, 1, 9.78 + s1, 9.78 + s1 );
setScaleKey( spep_1 -3 + 500, 1, 9.78 + s1, 9.78 + s1 );

s2=2.0;
s3=1.4;
setScaleKey( spep_1 -3 + 528, 1, 4.89 + s2, 4.89 + s2 );
setScaleKey( spep_1 -3 + 529, 1, 4.89 + s2, 4.89 + s2 );
setScaleKey( spep_1 -3 + 530, 1, 5 + s3, 5 + s3 );
setScaleKey( spep_1 -3 + 546, 1, 5 + s3, 5 + s3 );

setRotateKey( spep_1 -3 + 152, 1, 51.5 );
setRotateKey( spep_1 -3 + 154, 1, 53.3 );
setRotateKey( spep_1 -3 + 156, 1, 54 );
setRotateKey( spep_1 -3 + 158, 1, 54.3 );
setRotateKey( spep_1 -3 + 160, 1, 54.6 );
setRotateKey( spep_1 -3 + 162, 1, 54.8 );
setRotateKey( spep_1 -3 + 164, 1, 54.9 );
setRotateKey( spep_1 -3 + 166, 1, 55 );
setRotateKey( spep_1 -3 + 168, 1, 55.1 );
setRotateKey( spep_1 -3 + 170, 1, 55.1 );
setRotateKey( spep_1 -3 + 172, 1, 55.2 );
setRotateKey( spep_1 -3 + 174, 1, 55.2 );
setRotateKey( spep_1 -3 + 176, 1, 55.3 );
setRotateKey( spep_1 -3 + 182, 1, 55.3 );
setRotateKey( spep_1 -3 + 184, 1, 55.4 );
setRotateKey( spep_1 -3 + 200, 1, 55.4 );
setRotateKey( spep_1 -3 + 202, 1, 55.5 );
setRotateKey( spep_1 -3 + 222, 1, 55.5 );
setRotateKey( spep_1 -3 + 224, 1, 48.3 );
setRotateKey( spep_1 -3 + 226, 1, 41 );
setRotateKey( spep_1 -3 + 227, 1, 41 );--
setRotateKey( spep_1 -3 + 228, 1, 54 );
setRotateKey( spep_1 -3 + 230, 1, 53.8 );
setRotateKey( spep_1 -3 + 232, 1, 53.2 );
setRotateKey( spep_1 -3 + 234, 1, 52.3 );
setRotateKey( spep_1 -3 + 236, 1, 50.9 );
setRotateKey( spep_1 -3 + 238, 1, 49.2 );
setRotateKey( spep_1 -3 + 240, 1, 47.1 );
setRotateKey( spep_1 -3 + 242, 1, 44.5 );
setRotateKey( spep_1 -3 + 244, 1, 44.5 );
setRotateKey( spep_1 -3 + 436, 1, -119.5 );
setRotateKey( spep_1 -3 + 463, 1, -119.5 );
setRotateKey( spep_1 -3 + 464, 1, -162 );
setRotateKey( spep_1 -3 + 472, 1, -162 );
setRotateKey( spep_1 -3 + 474, 1, -152.1 );
setRotateKey( spep_1 -3 + 475, 1, -152.1 );
setRotateKey( spep_1 -3 + 476, 1, -87 );
setRotateKey( spep_1 -3 + 478, 1, -77 );
setRotateKey( spep_1 -3 + 480, 1, -48 );
setRotateKey( spep_1 -3 + 482, 1, -48 );
setRotateKey( spep_1 -3 + 484, 1, -25 );
setRotateKey( spep_1 -3 + 498, 1, -25 );
setRotateKey( spep_1 -3 + 500, 1, -25 );
setRotateKey( spep_1 -3 + 528, 1, -0 );
setRotateKey( spep_1 -3 + 529, 1, -0 );
setRotateKey( spep_1 -3 + 530, 1, -41.6 );
setRotateKey( spep_1 -3 + 532, 1, -32 );
setRotateKey( spep_1 -3 + 534, 1, -31 );
setRotateKey( spep_1 -3 + 536, 1, -31 );
setRotateKey( spep_1 -3 + 538, 1, -30 );
setRotateKey( spep_1 -3 + 540, 1, -29 );
setRotateKey( spep_1 -3 + 542, 1, -25 );
setRotateKey( spep_1 -3 + 544, 1, -10 );
setRotateKey( spep_1 -3 + 546, 1, -10 );

-- ** 音 ** --
--光の速さで飛んでくる
SE007 = playSe( spep_1 + 62, 1118 );
setSeVolumeByWorkId( spep_1 + 62, SE007, 73 );
stopSe( spep_1 + 84, SE007, 22 );
setPitch( spep_1 + 62, SE007, 100 );
setTimeStretch( SE007, 1.07, 10, 1 );

--光の速さで飛んでくる
SE008 = playSe( spep_1 + 62, 1182 );
stopSe( spep_1 + 74, SE008, 38 );

--光の速さで飛んでくる
SE009 = playSe( spep_1 + 68, 1277 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 68, SE009, 126 );
setPitch( spep_1 + 68, SE009, -300 );
setTimeStretch( SE009, 0.8, 10, 1 );

--地面爆発
SE010 = playSe( spep_1 + 104, 1069 );
setSeVolumeByWorkId( spep_1 + 104, SE010, 20 );
setSeVolumeByWorkId( spep_1 + 105, SE010, 40 );
setSeVolumeByWorkId( spep_1 + 106, SE010, 60 );
setSeVolumeByWorkId( spep_1 + 107, SE010, 80 );
setSeVolumeByWorkId( spep_1 + 108, SE010, 100 );
setStartTimeMs( SE010,  333 );

--地面爆発
SE011 = playSe( spep_1 + 102, 1188 );
setSeVolumeByWorkId( spep_1 + 102, SE011, 72 );

--地面爆発
SE012 = playSe( spep_1 + 114, 1278 );
setSeVolumeByWorkId( spep_1 + 114, SE012, 77 );
stopSe( spep_1 + 154, SE012, 28 );

--岩光る
SE013 = playSe( spep_1 + 176, 1021 );
setSeVolumeByWorkId( spep_1 + 176, SE013, 58 );
setStartTimeMs( SE013,  333 );

--岩光る
SE014 = playSe( spep_1 + 176, 1302 );

--岩爆発する
SE015 = playSe( spep_1 + 206, 1024 );
stopSe( spep_1 + 300, SE015, 16 );

--岩爆発する
SE016 = playSe( spep_1 + 208, 1017 );
setSeVolumeByWorkId( spep_1 + 208, SE016, 82 );

--くるくる
SE017 = playSe( spep_1 + 250, 1255 );
setSeVolumeByWorkId( spep_1 + 250, SE017, 25 );
setSeVolumeByWorkId( spep_1 + 252, SE017, 50 );
setSeVolumeByWorkId( spep_1 + 254, SE017, 75 );
setSeVolumeByWorkId( spep_1 + 256, SE017, 100 );
stopSe( spep_1 + 280, SE017, 22 );
setStartTimeMs( SE017,  700 );      

--岩爆発する
SE018 = playSe( spep_1 + 216, 1160 );
stopSe( spep_1 + 310, SE018, 52 );

--くるくる
SE019 = playSe( spep_1 + 246, 1117 );
stopSe( spep_1 + 282, SE019, 52 );

--着地
SE020 = playSe( spep_1 + 312, 1033 );
setSeVolumeByWorkId( spep_1 + 312, SE020, 73 );
stopSe( spep_1 + 346, SE020, 20 );

--着地
SE021 = playSe( spep_1 + 312, 1012 );

--着地
SE022 = playSe( spep_1 + 312, 1197 );
setSeVolumeByWorkId( spep_1 + 312, SE022, 71 );

--着地
SE023 = playSe( spep_1 + 320, 1192 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 320, SE023, 316 );
setTimeStretch( SE023, 1.12, 10, 1 );

--着地
SE024 = playSe( spep_1 + 320, 1007 );

--走って向かってくる（空力音）
SE025 = playSe( spep_1 + 342, 1314 );
setSeVolumeByWorkId( spep_1 + 342, SE025, 29 );
stopSe( spep_1 + 412, SE025, 24 );

--走って向かってくる（空力音）
SE026 = playSe( spep_1 + 350, 1278 );
setSeVolumeByWorkId( spep_1 + 350, SE026, 44 );
stopSe( spep_1 + 410, SE026, 36 );

--走って向かってくる
SE027 = playSe( spep_1 + 358, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 358, SE027, 77 );
stopSe( spep_1 + 362, SE027, 4 );

--走って向かってくる
--SE028 = playSe( spep_1 + 360, 1106 ,"",0.5);
--setSeVolumeByWorkId( spep_1 + 360, SE028, 66 );

--走って向かってくる
SE029 = playSe( spep_1 + 364, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 364, SE029, 74 );
stopSe( spep_1 + 368, SE029, 4 );

--走って向かってくる
SE030 = playSe( spep_1 + 368, 1107 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 368, SE030, 68 );

--走って向かってくる
SE031 = playSe( spep_1 + 372, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 372, SE031, 120 );
stopSe( spep_1 + 376, SE031, 4 );

--走って向かってくる
--SE032 = playSe( spep_1 + 374, 1106 ,"",0.5);
--setSeVolumeByWorkId( spep_1 + 374, SE032, 129 );

--走って向かってくる
SE033 = playSe( spep_1 + 378, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 378, SE033, 126 );
stopSe( spep_1 + 382, SE033, 4 );

--走って向かってくる（空力音）
SE034 = playSe( spep_1 + 378, 1072 );

--走って向かってくる
SE035 = playSe( spep_1 + 384, 1107 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 384, SE035, 112 );

--走って向かってくる
SE036 = playSe( spep_1 + 386, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 386, SE036, 97 );
stopSe( spep_1 + 390, SE036, 4 );

--走って向かってくる
SE037 = playSe( spep_1 + 392, 1107 ,"",0.5);
setSeVolumeByWorkId( spep_1 + 392, SE037, 108 );

--エルボ
SE038 = playSe( spep_1 + 418, 1233 );
setPitch( spep_1 + 418, SE038, 400 );
setTimeStretch( SE038, 1.27, 10, 1 );

--エルボ
SE039 = playSe( spep_1 + 424, 1189 );
setSeVolumeByWorkId( spep_1 + 424, SE039, 122 );

--エルボ
SE040 = playSe( spep_1 + 428, 1182 );
setSeVolumeByWorkId( spep_1 + 428, SE040, 141 );
stopSe( spep_1 + 442, SE040, 10 );

--エルボ
SE041 = playSe( spep_1 + 428, 1153 );
setSeVolumeByWorkId( spep_1 + 430, SE041, 60 );

--エルボ
SE042 = playSe( spep_1 + 430, 1190 );

--アッパー
SE043 = playSe( spep_1 + 462, 1189 );
setSeVolumeByWorkId( spep_1 + 464, SE043, 145 );

--アッパー
SE044 = playSe( spep_1 + 464, 1006 );
setSeVolumeByWorkId( spep_1 + 466, SE044, 79 );

--アッパー
SE045 = playSe( spep_1 + 470, 1010 );

--アッパー
SE046 = playSe( spep_1 + 470, 1110 );
setSeVolumeByWorkId( spep_1 + 472, SE046, 91 );

--振りかぶり
SE047 = playSe( spep_1 + 494, 1117 );
stopSe( spep_1 + 506, SE047, 28 );

--振りかぶり
SE048 = playSe( spep_1 + 498, 1274 );
setSeVolumeByWorkId( spep_1 + 498, SE048, 36 );
setPitch( spep_1 + 498, SE048, 300 );
setTimeStretch( SE048, 0.61, 10, 1 );

--振りかぶり
SE049 = playSe( spep_1 + 512, 1004 );

--ハイキック
SE050 = playSe( spep_1 + 524, 1010 );
setSeVolumeByWorkId( spep_1 + 524, SE050, 98 );

--ハイキック
SE051 = playSe( spep_1 + 524, 1110 );
setSeVolumeByWorkId( spep_1 + 524, SE051, 93 );

--ハイキック
SE052 = playSe( spep_1 + 524, 1001 );
setSeVolumeByWorkId( spep_1 + 524, SE052, 55 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 560;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_2

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_c + 94;


------------------------------------------------------
-- 横顔アップ〜壁に叩きつけて煙(294F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --横顔アップ〜壁に叩きつけて煙(ef_003_front)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 294, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 294, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 294, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 294, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --横顔アップ〜壁に叩きつけて煙(ef_003_back)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 294, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 294, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 294, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 294, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 82, 1, 1 );
setDisp( spep_3 -3 + 132, 1, 0 );

setDisp( spep_3 -3 + 186, 1, 1 );
setDisp( spep_3 -3 + 194, 1, 0 );

changeAnime( spep_3 -3 + 82, 1, 108 );
changeAnime( spep_3 -3 + 186, 1, 108 );

a4=50;
b4=50;
setMoveKey( spep_3 -3 + 82, 1, -440.9 +a4, 43.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -336.9 +a4, 23.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -214.9 +a4, 41.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -110.9 +a4, 33.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -12.9 +a4, 39.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 101.1 +a4, 31.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 107.1 +a4, 33.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 96, 1, 107.1 +a4, 37.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 119.1 +a4, 45.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 113.1 +a4, 27.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 121.1 +a4, 31.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 129.1 +a4, 41.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 131.1 +a4, 37.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 137.1 +a4, 25.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 143.1 +a4, 30.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 151.1 +a4, 37.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 149.1 +a4, 33 -b4 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 153.1 +a4, 27.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 159.1 +a4, 33 -b4 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 169.1 +a4, 39.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 171.1 +a4, 31 -b4 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 177.1 +a4, 31 -b4 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 337.1 +a4, 67 -b4 , 0 );
setMoveKey( spep_3 -3 + 128, 1, 479.1 +a4, 11.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 130, 1, 607.1 +a4, 41.9 -b4 , 0 );
setMoveKey( spep_3 -3 + 132, 1, 727.1 +a4, 25.9 -b4 , 0 );

setMoveKey( spep_3 -3 + 186, 1, -128.5, 99.9 , 0 );
setMoveKey( spep_3 -3 + 187, 1, -128.5, 99.9 , 0 );
setMoveKey( spep_3 -3 + 188, 1, -36.5, 21.9 , 0 );
setMoveKey( spep_3 -3 + 189, 1, -36.5, 21.9 , 0 );
setMoveKey( spep_3 -3 + 190, 1, 59.5, -62.1 , 0 );
setMoveKey( spep_3 -3 + 191, 1, 59.5, -62.1 , 0 );
setMoveKey( spep_3 -3 + 192, 1, 154, -133.7 , 0 );
setMoveKey( spep_3 -3 + 193, 1, 154, -133.7 , 0 );
setMoveKey( spep_3 -3 + 194, 1, 154, -133.7 , 0 );

s4=0.4;
setScaleKey( spep_3 -3 + 82, 1, 2.13 + s4, 2.13 + s4 );
setScaleKey( spep_3 -3 + 132, 1, 2.13 + s4, 2.13 + s4 );
setScaleKey( spep_3 -3 + 186, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 194, 1, 0.29, 0.29 );

setRotateKey( spep_3 -3 + 82, 1, -46.2 );
setRotateKey( spep_3 -3 + 132, 1, -46.2 );
setRotateKey( spep_3 -3 + 186, 1, 46.6 );
setRotateKey( spep_3 -3 + 194, 1, 46.6 );

-- ** 音 ** --
--目光る
SE054 = playSe( spep_3 + 2, 1181 );
stopSe( spep_3 + 58, SE054, 28 );

--目光る
SE055 = playSe( spep_3 + 4, 1303 ,"",0.6);
setSeVolumeByWorkId( spep_3 + 4, SE055, 75 );
stopSe( spep_3 + 44, SE055, 44 );

--腕振りかぶる
SE056 = playSe( spep_3 + 54, 1116 );
stopSe( spep_3 + 80, SE056, 14 );

--ボディブロー
SE057 = playSe( spep_3 + 74, 1208 );
setSeVolumeByWorkId( spep_3 + 74, SE057, 19 );
setSeVolumeByWorkId( spep_3 + 75, SE057, 29 );
setSeVolumeByWorkId( spep_3 + 76, SE057, 39 );
setSeVolumeByWorkId( spep_3 + 77, SE057, 59 );
setSeVolumeByWorkId( spep_3 + 78, SE057, 79 );
setStartTimeMs( SE057,  117 );

--ボディブロー
SE058 = playSe( spep_3 + 82, 1187 );
setSeVolumeByWorkId( spep_3 + 82, SE058, 75 );

--ボディブロー
SE059 = playSe( spep_3 + 84, 1153 );

--ボディブロー
SE060 = playSe( spep_3 + 86, 1190 );

--ボディブロー
SE061 = playSe( spep_3 + 96, 1170 );
setPitch( spep_3 + 96, SE061, -400 );
setTimeStretch( SE061, 0.73, 10, 1 );

--岩爆発１
SE062 = playSe( spep_3 + 128, 1061 );
setSeVolumeByWorkId( spep_3 + 128, SE062, 36 );
stopSe( spep_3 + 142, SE062, 14 );
setPitch( spep_3 + 128, SE062, 300 );
setTimeStretch( SE062, 1.2, 10, 1 );

--岩爆発１
SE063 = playSe( spep_3 + 128, 1141 );
setSeVolumeByWorkId( spep_3 + 128, SE063, 27 );
stopSe( spep_3 + 134, SE063, 14 );
setPitch( spep_3 + 128, SE063, 200 );
setTimeStretch( SE063, 1.13, 10, 1 );

--岩爆発１
SE064 = playSe( spep_3 + 130, 1159 );
setSeVolumeByWorkId( spep_3 + 130, SE064, 89 );
stopSe( spep_3 + 148, SE064, 14 );

--岩爆発２
SE065 = playSe( spep_3 + 142, 1061 );
setSeVolumeByWorkId( spep_3 + 142, SE065, 40 );
stopSe( spep_3 + 156, SE065, 12 );
setPitch( spep_3 + 142, SE065, 300 );
setTimeStretch( SE065, 1.2, 10, 1 );

--岩爆発２
SE066 = playSe( spep_3 + 142, 1141 );
setSeVolumeByWorkId( spep_3 + 142, SE066, 18 );
stopSe( spep_3 + 152, SE066, 10 );
setPitch( spep_3 + 142, SE066, 200 );
setTimeStretch( SE066, 1.13, 10, 1 );

--岩爆発２
SE067 = playSe( spep_3 + 144, 1159 );
setSeVolumeByWorkId( spep_3 + 144, SE067, 91 );
stopSe( spep_3 + 162, SE067, 20 );

--岩爆発３
SE068 = playSe( spep_3 + 164, 1061 );
setSeVolumeByWorkId( spep_3 + 164, SE068, 40 );
stopSe( spep_3 + 178, SE068, 12 );
setPitch( spep_3 + 164, SE068, 300 );
setTimeStretch( SE068, 1.2, 10, 1 );

--岩爆発３
SE069 = playSe( spep_3 + 164, 1141 );
setSeVolumeByWorkId( spep_3 + 164, SE069, 18 );
stopSe( spep_3 + 174, SE069, 10 );
setPitch( spep_3 + 174, SE069, 300 );
setTimeStretch( SE069, 1.2, 10, 1 );

--岩爆発３
SE070 = playSe( spep_3 + 166, 1159 );
setSeVolumeByWorkId( spep_3 + 166, SE070, 94 );

--岩に激突
SE071 = playSe( spep_3 + 194, 1024 );

--岩に激突
SE072 = playSe( spep_3 + 194, 1160 );
setSeVolumeByWorkId( spep_3 + 194, SE072, 83 );

--煙あがる
SE073 = playSe( spep_3 + 220, 1258 );
setSeVolumeByWorkId( spep_3 + 220, SE073, 14 );
setSeVolumeByWorkId( spep_3 + 224, SE073, 28 );
setSeVolumeByWorkId( spep_3 + 228, SE073, 42 );
setSeVolumeByWorkId( spep_3 + 232, SE073, 56 );
setSeVolumeByWorkId( spep_3 + 236, SE073, 70 );
setSeVolumeByWorkId( spep_3 + 240, SE073, 84 );
setSeVolumeByWorkId( spep_3 + 244, SE073, 100 );
setStartTimeMs( SE073,  350 );

--煙あがる
SE074 = playSe( spep_3 + 242, 1278 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 290, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 184 );
endPhase( spep_3 + 284 );

end