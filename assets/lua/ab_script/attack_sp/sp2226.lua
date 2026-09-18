--4022130:孫悟空&ピッコロ_龍虎閃空乱舞(服装チェンジ)
--sp_effect_a1_00298
--sp2226

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
SP_01= 157438;-- 二人が並ぶ〜連続パンチ
SP_02= 157440;-- 二人が並ぶ〜連続パンチ
SP_03= 157442;-- 悟空叫ぶ〜爆発
SP_04= 157444;-- 悟空叫ぶ〜爆発

--エフェクト(敵)
SP_01x= 157439;-- 二人が並ぶ〜連続パンチ (敵)
SP_02x= 157441;-- 二人が並ぶ〜連続パンチ (敵)
SP_03x= 157443;-- 悟空叫ぶ〜爆発 (敵)
SP_04x= 157445;-- 悟空叫ぶ〜爆発 (敵)

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
-- 二人が並ぶ〜連続パンチ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 668, panting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 668, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_f, 0 );
setEffRotateKey( spep_0 + 668, panting_f, 0 );
setEffAlphaKey( spep_0 + 0, panting_f, 255 );
setEffAlphaKey( spep_0 + 668, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 668, panting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 668, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_b, 0 );
setEffRotateKey( spep_0 + 668, panting_b, 0 );
setEffAlphaKey( spep_0 + 0, panting_b, 255 );
setEffAlphaKey( spep_0 + 668, panting_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE001 = playSe( spep_x + 12, 1018 );

--入り環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );
setPitch( spep_0 + 0, SE002, -300 );
setTimeStretch( SE002, 0.8, 10, 1 );

--ピッコロと悟空走っていく
SE003 = playSe( spep_0-6 + 92, 1182 );
SE004 = playSe( spep_0-6 + 98, 1314 );
setSeVolumeByWorkId( spep_0-6 + 98, SE004, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 670, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );


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

--敵の動き
setDisp( spep_0-3 + 170, 1, 1);
setDisp( spep_0 + 248, 1, 0);

changeAnime( spep_0-3 + 170, 1, 117);
changeAnime( spep_0-3 + 210, 1, 108);
changeAnime( spep_0-3 + 212, 1, 105);

setMoveKey( spep_0-3 + 170, 1, -1.9, -120.1 , 0 );
setMoveKey( spep_0-3 + 172, 1, -2, -120.1 , 0 );
setMoveKey( spep_0-3 + 174, 1, -2, -120.1 , 0 );
setMoveKey( spep_0-3 + 176, 1, -2, -120 , 0 );
setMoveKey( spep_0-3 + 178, 1, -2, -119.9 , 0 );
setMoveKey( spep_0-3 + 180, 1, -2, -119.7 , 0 );
setMoveKey( spep_0-3 + 182, 1, -2, -119.5 , 0 );
setMoveKey( spep_0-3 + 184, 1, -2, -119.1 , 0 );
setMoveKey( spep_0-3 + 186, 1, -2, -118.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, -2, -118 , 0 );
setMoveKey( spep_0-3 + 190, 1, -2, -117.2 , 0 );
setMoveKey( spep_0-3 + 192, 1, -2, -116.2 , 0 );
setMoveKey( spep_0-3 + 194, 1, -2, -115.1 , 0 );
setMoveKey( spep_0-3 + 196, 1, -2, -113.7 , 0 );
setMoveKey( spep_0-3 + 198, 1, -2, -112.2 , 0 );
setMoveKey( spep_0-3 + 200, 1, -2.1, -110.3 , 0 );
setMoveKey( spep_0-3 + 202, 1, -2.1, -108.2 , 0 );
setMoveKey( spep_0-3 + 204, 1, -2.1, -105.9 , 0 );
setMoveKey( spep_0-3 + 206, 1, -2.1, -103.2 , 0 );
setMoveKey( spep_0-3 + 208, 1, -2.1, -100.3 , 0 );
setMoveKey( spep_0-3 + 209, 1, -2.1, -100.3 , 0 );

setMoveKey( spep_0-3 + 210, 1, 47.2, 23.5 , 0 );
setMoveKey( spep_0-3 + 211, 1, 47.2, 23.5 , 0 );

setMoveKey( spep_0-3 + 212, 1, 58.3, 19.4 , 0 );
setMoveKey( spep_0-3 + 214, 1, 55.9, 19.9 , 0 );
setMoveKey( spep_0-3 + 216, 1, 49.9, 16.7 , 0 );
setMoveKey( spep_0-3 + 218, 1, 62.7, 17.7 , 0 );
setMoveKey( spep_0-3 + 220, 1, 59.6, 17.9 , 0 );
setMoveKey( spep_0-3 + 222, 1, 46.3, 8.1 , 0 );
setMoveKey( spep_0-3 + 224, 1, 45.6, -7.4 , 0 );
setMoveKey( spep_0-3 + 226, 1, 36.2, -18.5 , 0 );
setMoveKey( spep_0-3 + 228, 1, 41.6, -32 , 0 );
setMoveKey( spep_0-3 + 230, 1, 34.7, -30.3 , 0 );
setMoveKey( spep_0-3 + 232, 1, 25.9, -41.7 , 0 );
setMoveKey( spep_0-3 + 234, 1, 29.6, -46.9 , 0 );
setMoveKey( spep_0-3 + 236, 1, 26.3, -53 , 0 );
setMoveKey( spep_0-3 + 238, 1, 25, -56.4 , 0 );
setMoveKey( spep_0-3 + 240, 1, 24.3, -58.1 , 0 );
setMoveKey( spep_0-3 + 242, 1, 23.9, -59.2 , 0 );
setMoveKey( spep_0-3 + 244, 1, 23.6, -59.8 , 0 );
setMoveKey( spep_0 + 248, 1, 23.6, -60 , 0 );

setScaleKey( spep_0-3 + 170, 1,1.1,1.1);
setScaleKey( spep_0-3 + 174, 1,1.1,1.1);
setScaleKey( spep_0-3 + 176, 1,1.11,1.11);
setScaleKey( spep_0-3 + 178, 1,1.11,1.11);
setScaleKey( spep_0-3 + 180, 1,1.13,1.13);
setScaleKey( spep_0-3 + 182, 1,1.15,1.15);
setScaleKey( spep_0-3 + 184, 1,1.18,1.18);
setScaleKey( spep_0-3 + 186, 1,1.22,1.22);
setScaleKey( spep_0-3 + 188, 1,1.27,1.27);
setScaleKey( spep_0-3 + 190, 1,1.34,1.34);
setScaleKey( spep_0-3 + 192, 1,1.43,1.43);
setScaleKey( spep_0-3 + 194, 1,1.51,1.51);
setScaleKey( spep_0-3 + 196, 1,1.63,1.63);
setScaleKey( spep_0-3 + 198, 1,1.77,1.77);
setScaleKey( spep_0-3 + 200, 1,1.92,1.92);
setScaleKey( spep_0-3 + 202, 1,2.1,2.1);
setScaleKey( spep_0-3 + 204, 1,2.29,2.29);
setScaleKey( spep_0-3 + 206, 1,2.53,2.53);
setScaleKey( spep_0-3 + 208, 1,2.77,2.77);
setScaleKey( spep_0-3 + 209, 1,2.77,2.77);

setScaleKey( spep_0-3 + 210, 1, 2.82, 2.82 );
setScaleKey( spep_0-3 + 211, 1, 2.82, 2.82 );

setScaleKey( spep_0-3 + 212, 1,2.77,2.77);
setScaleKey( spep_0-3 + 220, 1,2.77,2.77);
setScaleKey( spep_0-3 + 222, 1,2.33,2.33);
setScaleKey( spep_0-3 + 224, 1,1.94,1.94);
setScaleKey( spep_0-3 + 226, 1,1.62,1.62);
setScaleKey( spep_0-3 + 228, 1,1.36,1.36);
setScaleKey( spep_0-3 + 230, 1,1.14,1.14);
setScaleKey( spep_0-3 + 232, 1,0.96,0.96);
setScaleKey( spep_0-3 + 234, 1,0.82,0.82);
setScaleKey( spep_0-3 + 236, 1,0.72,0.72);
setScaleKey( spep_0-3 + 238, 1,0.64,0.64);
setScaleKey( spep_0-3 + 240, 1,0.6,0.6);
setScaleKey( spep_0-3 + 242, 1,0.57,0.57);
setScaleKey( spep_0-3 + 244, 1,0.56,0.56);
setScaleKey( spep_0 + 248, 1,0.55,0.55);

setRotateKey( spep_0-3 + 170, 1, 0 );
setRotateKey( spep_0 + 248, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 274, 1, 1);
setDisp( spep_0 + 304, 1, 0);

changeAnime( spep_0-3 + 274, 1, 105);
changeAnime( spep_0-3 + 290, 1, 106);

setMoveKey( spep_0-3 + 274, 1, 23.6, -59.7 , 0 );
setMoveKey( spep_0-3 + 276, 1, 22.5, -59.1 , 0 );
setMoveKey( spep_0-3 + 278, 1, 21.4, -58.4 , 0 );
setMoveKey( spep_0-3 + 280, 1, 20.2, -57.8 , 0 );
setMoveKey( spep_0-3 + 282, 1, 19.1, -57.1 , 0 );
setMoveKey( spep_0-3 + 284, 1, 17.9, -56.4 , 0 );
setMoveKey( spep_0-3 + 286, 1, 16.8, -55.7 , 0 );
setMoveKey( spep_0-3 + 288, 1, 12.2, -48.1 , 0 );
setMoveKey( spep_0-3 + 288, 1, 12.2, -48.1 , 0 );
setMoveKey( spep_0-3 + 289, 1, 12.2, -48.1 , 0 );

setMoveKey( spep_0-3 + 290, 1, 129.8, 131.2 , 0 );
setMoveKey( spep_0-3 + 292, 1, 130.2, 133.4 , 0 );
setMoveKey( spep_0-3 + 294, 1, 130.5, 130 , 0 );
setMoveKey( spep_0-3 + 296, 1, 136.8, 136.7 , 0 );
setMoveKey( spep_0-3 + 298, 1, 230.8, 251.7 , 0 );
setMoveKey( spep_0-3 + 300, 1, 329.6, 364.9 , 0 );
setMoveKey( spep_0-3 + 302, 1, 444.1, 478.6 , 0 );
setMoveKey( spep_0 + 304, 1, 540.8, 590.2 , 0 );

setScaleKey( spep_0-3 + 274, 1,5.59,5.59);
setScaleKey( spep_0-3 + 276, 1,4.99,4.99);
setScaleKey( spep_0-3 + 278, 1,4.4,4.4);
setScaleKey( spep_0-3 + 280, 1,3.8,3.8);
setScaleKey( spep_0-3 + 282, 1,3.21,3.21);
setScaleKey( spep_0-3 + 284, 1,2.63,2.63);
setScaleKey( spep_0-3 + 286, 1,2.04,2.04);
setScaleKey( spep_0-3 + 288, 1,1.44,1.44);
setScaleKey( spep_0-3 + 289, 1,1.44,1.44);

setScaleKey( spep_0-3 + 290, 1, 1.12, 1.12 );
setScaleKey( spep_0-3 + 296, 1, 1.12, 1.12 );
setScaleKey( spep_0-3 + 298, 1, 1.11, 1.11 );
setScaleKey( spep_0-3 + 300, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 304, 1, 1.09, 1.09 );

setRotateKey( spep_0-3 + 274, 1, 0 );
setRotateKey( spep_0-3 + 289, 1, 0 );

setRotateKey( spep_0-3 + 290, 1, -23.2 );
setRotateKey( spep_0 + 304, 1, -23.2 );

--敵の動き
setDisp( spep_0-3 + 374, 1, 1);
setDisp( spep_0-1 + 512, 1, 0);

changeAnime( spep_0-3 + 374, 1, 6);
changeAnime( spep_0-3 + 430, 1, 7);
changeAnime( spep_0-3 + 494, 1, 108);

setMoveKey( spep_0-3 + 374, 1, -613.6, -456.2 , 0 );
setMoveKey( spep_0-3 + 376, 1, -559.2, -412.1 , 0 );
setMoveKey( spep_0-3 + 378, 1, -504.8, -368 , 0 );
setMoveKey( spep_0-3 + 380, 1, -450.4, -323.9 , 0 );
setMoveKey( spep_0-3 + 382, 1, -396, -279.8 , 0 );
setMoveKey( spep_0-3 + 384, 1, -341.6, -235.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, -287.2, -191.6 , 0 );
setMoveKey( spep_0-3 + 388, 1, -232.8, -147.5 , 0 );
setMoveKey( spep_0-3 + 390, 1, -178.4, -103.4 , 0 );
setMoveKey( spep_0-3 + 392, 1, -124, -59.3 , 0 );
setMoveKey( spep_0-3 + 394, 1, -69.6, -15.2 , 0 );
setMoveKey( spep_0-3 + 396, 1, -18.7, 32.9 , 0 );
setMoveKey( spep_0-3 + 398, 1, 21.7, 142.4 , 0 );
setMoveKey( spep_0-3 + 400, 1, 29.5, 91.5 , 0 );
setMoveKey( spep_0-3 + 402, 1, 53.3, 149.3 , 0 );
setMoveKey( spep_0-3 + 404, 1, 39.7, 144.1 , 0 );
setMoveKey( spep_0-3 + 406, 1, 34.1, 156.4 , 0 );
setMoveKey( spep_0-3 + 408, 1, 32.3, 164.8 , 0 );
setMoveKey( spep_0-3 + 410, 1, 23.1, 171.7 , 0 );
setMoveKey( spep_0-3 + 412, 1, 18.8, 178.3 , 0 );
setMoveKey( spep_0-3 + 414, 1, 15.1, 181.9 , 0 );
setMoveKey( spep_0-3 + 416, 1, 6.5, 202.2 , 0 );
setMoveKey( spep_0-3 + 417, 1, 6.5, 202.2 , 0 );
setMoveKey( spep_0-3 + 418, 1, -87.4, 284.8 , 0 );
setMoveKey( spep_0-3 + 420, 1, -186.2, 377.2 , 0 );
setMoveKey( spep_0-3 + 422, 1, -277.2, 473.1 , 0 );
setMoveKey( spep_0-3 + 424, 1, -368.5, 567.5 , 0 );
setMoveKey( spep_0-3 + 426, 1, -463.1, 660.9 , 0 );
setMoveKey( spep_0-3 + 428, 1, -557.7, 754.2 , 0 );
setMoveKey( spep_0-3 + 429, 1, -557.7, 754.2 , 0 );

setMoveKey( spep_0-3 + 430, 1, 290.9, -629.3 , 0 );
setMoveKey( spep_0-3 + 432, 1, 290.7, -629.1 , 0 );
setMoveKey( spep_0-3 + 434, 1, 290.3, -628.4 , 0 );
setMoveKey( spep_0-3 + 436, 1, 289.5, -627.2 , 0 );
setMoveKey( spep_0-3 + 438, 1, 288.4, -625.6 , 0 );
setMoveKey( spep_0-3 + 440, 1, 286.9, -623.4 , 0 );
setMoveKey( spep_0-3 + 442, 1, 285.1, -620.8 , 0 );
setMoveKey( spep_0-3 + 444, 1, 283, -617.7 , 0 );
setMoveKey( spep_0-3 + 446, 1, 280.6, -614.2 , 0 );
setMoveKey( spep_0-3 + 448, 1, 277.8, -610 , 0 );
setMoveKey( spep_0-3 + 450, 1, 274.6, -605.4 , 0 );
setMoveKey( spep_0-3 + 452, 1, 271, -600.2 , 0 );
setMoveKey( spep_0-3 + 454, 1, 267.1, -594.4 , 0 );
setMoveKey( spep_0-3 + 456, 1, 262.8, -588.1 , 0 );
setMoveKey( spep_0-3 + 458, 1, 258, -581.1 , 0 );
setMoveKey( spep_0-3 + 460, 1, 252.8, -573.5 , 0 );
setMoveKey( spep_0-3 + 462, 1, 247.1, -565.2 , 0 );
setMoveKey( spep_0-3 + 464, 1, 240.9, -556.1 , 0 );
setMoveKey( spep_0-3 + 466, 1, 234.2, -546.2 , 0 );
setMoveKey( spep_0-3 + 468, 1, 226.9, -535.5 , 0 );
setMoveKey( spep_0-3 + 470, 1, 218.9, -523.8 , 0 );
setMoveKey( spep_0-3 + 472, 1, 210.2, -511.1 , 0 );
setMoveKey( spep_0-3 + 474, 1, 200.7, -497.2 , 0 );
setMoveKey( spep_0-3 + 476, 1, 190.3, -482 , 0 );
setMoveKey( spep_0-3 + 478, 1, 178.9, -465.2 , 0 );
setMoveKey( spep_0-3 + 480, 1, 166.2, -446.6 , 0 );
setMoveKey( spep_0-3 + 482, 1, 151.9, -425.7 , 0 );
setMoveKey( spep_0-3 + 484, 1, 135.7, -401.9 , 0 );
setMoveKey( spep_0-3 + 486, 1, 116.7, -374.1 , 0 );
setMoveKey( spep_0-3 + 488, 1, 93.5, -340.2 , 0 );
setMoveKey( spep_0-3 + 490, 1, 62.6, -294.9 , 0 );
setMoveKey( spep_0-3 + 492, 1, -12, -178.2 , 0 );
setMoveKey( spep_0-3 + 493, 1, -12, -178.2 , 0 );

setMoveKey( spep_0-3 + 494, 1, -44.1, -223.6 , 0 );
setMoveKey( spep_0-3 + 496, 1, 7.6, -236.7 , 0 );
setMoveKey( spep_0-3 + 498, 1, -25.7, -243.7 , 0 );
setMoveKey( spep_0-3 + 500, 1, -23.7, -243.5 , 0 );
setMoveKey( spep_0-3 + 502, 1, -18.5, -242.3 , 0 );
setMoveKey( spep_0-3 + 504, 1, -24.9, -247.6 , 0 );
setMoveKey( spep_0-3 + 506, 1, -77.7, -468.1 , 0 );
setMoveKey( spep_0-3 + 508, 1, -137.1, -687.9 , 0 );
setMoveKey( spep_0-1 + 512, 1, -193.7, -909.6 , 0 );

setScaleKey( spep_0-3 + 374, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 429, 1, 1.2, 1.2 );

setScaleKey( spep_0-3 + 430, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 440, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 442, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 446, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 448, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 450, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 452, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 454, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 456, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 458, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 460, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 462, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 464, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 466, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 468, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 470, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 472, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 474, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 476, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 478, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 480, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 482, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 484, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 486, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 488, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 490, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 492, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 493, 1, 0.65, 0.65 );

setScaleKey( spep_0-3 + 494, 1, 2.6, 2.6 );
setScaleKey( spep_0-1 + 512, 1, 2.6, 2.6 );

setRotateKey( spep_0-3 + 374, 1, 105.5 );
setRotateKey( spep_0-3 + 376, 1, 105.1 );
setRotateKey( spep_0-3 + 378, 1, 104.8 );
setRotateKey( spep_0-3 + 380, 1, 104.4 );
setRotateKey( spep_0-3 + 382, 1, 104 );
setRotateKey( spep_0-3 + 384, 1, 103.7 );
setRotateKey( spep_0-3 + 386, 1, 103.3 );
setRotateKey( spep_0-3 + 388, 1, 102.9 );
setRotateKey( spep_0-3 + 390, 1, 102.6 );
setRotateKey( spep_0-3 + 392, 1, 102.2 );
setRotateKey( spep_0-3 + 394, 1, 101.8 );
setRotateKey( spep_0-3 + 396, 1, 101.5 );
setRotateKey( spep_0-3 + 397, 1, 101.5 );
setRotateKey( spep_0-3 + 398, 1, 42.8 );
setRotateKey( spep_0-3 + 400, 1, 40.6 );
setRotateKey( spep_0-3 + 402, 1, 38.3 );
setRotateKey( spep_0-3 + 404, 1, 36.1 );
setRotateKey( spep_0-3 + 406, 1, 33.9 );
setRotateKey( spep_0-3 + 408, 1, 31.7 );
setRotateKey( spep_0-3 + 410, 1, 29.5 );
setRotateKey( spep_0-3 + 412, 1, 27.3 );
setRotateKey( spep_0-3 + 414, 1, 25 );
setRotateKey( spep_0-3 + 416, 1, 22.8 );
setRotateKey( spep_0-3 + 418, 1, 22 );
setRotateKey( spep_0-3 + 420, 1, 21.2 );
setRotateKey( spep_0-3 + 422, 1, 20.5 );
setRotateKey( spep_0-3 + 424, 1, 19.7 );
setRotateKey( spep_0-3 + 426, 1, 18.9 );
setRotateKey( spep_0-3 + 428, 1, 18.1 );
setRotateKey( spep_0-3 + 429, 1, 18.1 );

setRotateKey( spep_0-3 + 430, 1, 86.6 );
setRotateKey( spep_0-3 + 432, 1, 86.6 );
setRotateKey( spep_0-3 + 434, 1, 86.5 );
setRotateKey( spep_0-3 + 436, 1, 86.5 );
setRotateKey( spep_0-3 + 438, 1, 86.4 );
setRotateKey( spep_0-3 + 440, 1, 86.3 );
setRotateKey( spep_0-3 + 442, 1, 86.2 );
setRotateKey( spep_0-3 + 444, 1, 86 );
setRotateKey( spep_0-3 + 446, 1, 85.8 );
setRotateKey( spep_0-3 + 448, 1, 85.6 );
setRotateKey( spep_0-3 + 450, 1, 85.4 );
setRotateKey( spep_0-3 + 452, 1, 85.1 );
setRotateKey( spep_0-3 + 454, 1, 84.8 );
setRotateKey( spep_0-3 + 456, 1, 84.5 );
setRotateKey( spep_0-3 + 458, 1, 84.1 );
setRotateKey( spep_0-3 + 460, 1, 83.7 );
setRotateKey( spep_0-3 + 462, 1, 83.3 );
setRotateKey( spep_0-3 + 464, 1, 82.8 );
setRotateKey( spep_0-3 + 466, 1, 82.3 );
setRotateKey( spep_0-3 + 468, 1, 81.7 );
setRotateKey( spep_0-3 + 470, 1, 81.1 );
setRotateKey( spep_0-3 + 472, 1, 80.4 );
setRotateKey( spep_0-3 + 474, 1, 79.7 );
setRotateKey( spep_0-3 + 476, 1, 78.9 );
setRotateKey( spep_0-3 + 478, 1, 78.1 );
setRotateKey( spep_0-3 + 480, 1, 77.1 );
setRotateKey( spep_0-3 + 482, 1, 76 );
setRotateKey( spep_0-3 + 484, 1, 74.8 );
setRotateKey( spep_0-3 + 486, 1, 73.3 );
setRotateKey( spep_0-3 + 488, 1, 71.6 );
setRotateKey( spep_0-3 + 490, 1, 69.2 );
setRotateKey( spep_0-3 + 492, 1, 63.4 );
setRotateKey( spep_0-3 + 493, 1, 63.4 );

setRotateKey( spep_0-3 + 494, 1, 126.8 );
setRotateKey( spep_0-1 + 512, 1, 126.8 );

--敵の動き
setDisp( spep_0-3 + 546, 1, 1);
setDisp( spep_0 + 572, 1, 0);

changeAnime( spep_0-3 + 546, 1, 108);


setMoveKey( spep_0-3 + 546, 1, 22.5, 761.6 , 0 );
setMoveKey( spep_0-3 + 548, 1, 23.1, 678.2 , 0 );
setMoveKey( spep_0-3 + 550, 1, 23.7, 594.9 , 0 );
setMoveKey( spep_0-3 + 552, 1, 24.2, 511.6 , 0 );
setMoveKey( spep_0-3 + 554, 1, 24.8, 428.2 , 0 );
setMoveKey( spep_0-3 + 556, 1, 25.4, 344.9 , 0 );
setMoveKey( spep_0-3 + 558, 1, 25.9, 261.6 , 0 );
setMoveKey( spep_0-3 + 560, 1, 26.5, 178.2 , 0 );
setMoveKey( spep_0-3 + 562, 1, 27, 94.9 , 0 );
setMoveKey( spep_0-3 + 564, 1, 27.6, 11.6 , 0 );
setMoveKey( spep_0-3 + 566, 1, 28.2, -71.8 , 0 );
setMoveKey( spep_0-3 + 568, 1, 12.8, -119.8 , 0 );
setMoveKey( spep_0 + 572, 1, 44.8, -117.8 , 0 );

setScaleKey( spep_0-3 + 546, 1,1.65,1.65);
setScaleKey( spep_0-3 + 566, 1,1.65,1.65);
setScaleKey( spep_0-3 + 567, 1,1.65,1.65);
setScaleKey( spep_0-3 + 568, 1,1.69,1.69);
setScaleKey( spep_0 + 572, 1,1.69,1.69);

setRotateKey( spep_0-3 + 546, 1, 94 );
setRotateKey( spep_0-3 + 566, 1, 94 );
setRotateKey( spep_0-3 + 567, 1, 94 );
setRotateKey( spep_0-3 + 568, 1, -6 );
setRotateKey( spep_0 + 572, 1, -6 );

--SE
--入り環境音
stopSe( spep_0 + 168, SE002, 10 );

--ピッコロと悟空走っていく
stopSe( spep_0-6 + 174, SE004, 32 );
SE005 = playSe( spep_0-6 + 98, 1278 );
setSeVolumeByWorkId( spep_0-6 + 98, SE005, 62 );
stopSe( spep_0-6 + 158, SE005, 22 );
SE006 = playSe( spep_0-6 + 98, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 98, SE006, 178 );
SE007 = playSe( spep_0-6 + 98, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 98, SE007, 178 );
SE008 = playSe( spep_0-6 + 112, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 112, SE008, 178 );
SE009 = playSe( spep_0-6 + 112, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 112, SE009, 178 );
SE010 = playSe( spep_0-6 + 126, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 126, SE010, 178 );
SE011 = playSe( spep_0-6 + 128, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 128, SE011, 178 );
SE012 = playSe( spep_0-6 + 144, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 144, SE012, 178 );
SE013 = playSe( spep_0-6 + 146, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 146, SE013, 178 );
SE014 = playSe( spep_0-6 + 158, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 158, SE014, 178 );
SE015 = playSe( spep_0-6 + 160, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 160, SE015, 178 );
SE016 = playSe( spep_0-6 + 174, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 174, SE016, 178 );
SE017 = playSe( spep_0-6 + 176, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 176, SE017, 178 );

--ピッコロ向かっていく
SE018 = playSe( spep_0 + 168, 1117 );

--ピッコロパンチ
SE019 = playSe( spep_0 + 208, 1187 );
setSeVolumeByWorkId( spep_0 + 208, SE019, 77 );

--瞬間移動
SE020 = playSe( spep_0 + 214, 1109 );
SE022 = playSe( spep_0 + 254, 1109 );

--悟空蹴り上げ
SE023 = playSe( spep_0 + 284, 1001 );
setSeVolumeByWorkId( spep_0 + 284, SE023, 64 );
SE024 = playSe( spep_0 + 286, 1153 );
stopSe( spep_0 + 308, SE024, 10 );
SE025 = playSe( spep_0 + 288, 1110 );
SE026 = playSe( spep_0 + 290, 1047 );
setSeVolumeByWorkId( spep_0 + 290, SE026, 63 );

--悟空アップ
SE027 = playSe( spep_0 + 304, 1024 );
setSeVolumeByWorkId( spep_0 + 304, SE027, 0 );
setSeVolumeByWorkId( spep_0 + 305, SE027, 10 );
setSeVolumeByWorkId( spep_0 + 306, SE027, 20 );
setSeVolumeByWorkId( spep_0 + 307, SE027, 30 );
setSeVolumeByWorkId( spep_0 + 308, SE027, 40 );
setSeVolumeByWorkId( spep_0 + 309, SE027, 50 );
setSeVolumeByWorkId( spep_0 + 310, SE027, 60 );
setSeVolumeByWorkId( spep_0 + 311, SE027, 70 );
setSeVolumeByWorkId( spep_0 + 312, SE027, 80 );
setSeVolumeByWorkId( spep_0 + 313, SE027, 90 );
setSeVolumeByWorkId( spep_0 + 314, SE027, 100 );
setStartTimeMs( SE027,  100 );
stopSe( spep_0 + 368, SE027, 20 );

--悟空蹴り上げ
SE028 = playSe( spep_0 + 310, 1264 );
stopSe( spep_0 + 368, SE028, 46 );

--瞬間移動
SE029 = playSe( spep_0 + 374, 1109 );

--悟空蹴り上げ
SE030 = playSe( spep_0 + 396, 1153 );
SE031 = playSe( spep_0 + 396, 1187 );
stopSe( spep_0 + 422, SE031, 22 );
SE032 = playSe( spep_0 + 396, 19 );
setSeVolumeByWorkId( spep_0 + 396, SE032, 77 );

--ピッコロ瞬間移動
SE033 = playSe( spep_0 + 430, 1109 );

--ピッコロ回転
SE034 = playSe( spep_0 + 430, 1116 );
stopSe( spep_0 + 472, SE034, 16 );
SE035 = playSe( spep_0 + 446, 1117 );
stopSe( spep_0 + 482, SE035, 16 );
SE021 = playSe( spep_0 + 446, 1255 );
setSeVolumeByWorkId( spep_0 + 446, SE021, 0 );
setSeVolumeByWorkId( spep_0 + 447, SE021, 14 );
setSeVolumeByWorkId( spep_0 + 448, SE021, 28 );
setSeVolumeByWorkId( spep_0 + 449, SE021, 42 );
setSeVolumeByWorkId( spep_0 + 450, SE021, 56 );
setSeVolumeByWorkId( spep_0 + 451, SE021, 70 );
setSeVolumeByWorkId( spep_0 + 452, SE021, 84 );
setSeVolumeByWorkId( spep_0 + 453, SE021, 98 );
setSeVolumeByWorkId( spep_0 + 454, SE021, 112 );
setSeVolumeByWorkId( spep_0 + 455, SE021, 126 );
setSeVolumeByWorkId( spep_0 + 456, SE021, 140 );
setStartTimeMs( SE021,  3450 );
stopSe( spep_0 + 492, SE021, 8 );

--ピッコロ蹴り
SE036 = playSe( spep_0 + 492, 1120 );
setSeVolumeByWorkId( spep_0 + 492, SE036, 87 );
SE037 = playSe( spep_0 + 492, 1190 );

--敵落ちていく
SE038 = playSe( spep_0 + 516, 1183 );
stopSe( spep_0 + 562, SE038, 14 );

--二人向かっていく
SE039 = playSe( spep_0 + 554, 44 );
stopSe( spep_0 + 574, SE039, 16 );

--悟空ラッシュ
SE040 = playSe( spep_0 + 574, 1009 );
SE041 = playSe( spep_0 + 574, 1000 );
SE042 = playSe( spep_0 + 576, 1187 );
setSeVolumeByWorkId( spep_0 + 576, SE042, 68 );
stopSe( spep_0 + 590, SE042, 20 );
SE043 = playSe( spep_0 + 588, 1009 );
SE044 = playSe( spep_0 + 588, 1000 );
SE045 = playSe( spep_0 + 590, 1187 );
setSeVolumeByWorkId( spep_0 + 590, SE045, 60 );
stopSe( spep_0 + 604, SE045, 20 );
SE046 = playSe( spep_0 + 598, 1010 );
setSeVolumeByWorkId( spep_0 + 598, SE046, 87 );
SE047 = playSe( spep_0 + 598, 1000 );
SE048 = playSe( spep_0 + 600, 1187 );
setSeVolumeByWorkId( spep_0 + 600, SE048, 66 );
stopSe( spep_0 + 614, SE048, 20 );
SE049 = playSe( spep_0 + 612, 1009 );
SE050 = playSe( spep_0 + 612, 1000 );
SE051 = playSe( spep_0 + 614, 1187 );
setSeVolumeByWorkId( spep_0 + 614, SE051, 63 );
stopSe( spep_0 + 628, SE051, 18 );

--ピッコロラッシュ
SE052 = playSe( spep_0 + 620, 1190 );
stopSe( spep_0 + 640, SE052, 16 );
SE053 = playSe( spep_0 + 622, 1187 );
setSeVolumeByWorkId( spep_0 + 622, SE053, 66 );
stopSe( spep_0 + 636, SE053, 20 );
SE054 = playSe( spep_0 + 630, 1190 );
stopSe( spep_0 + 650, SE054, 16 );
SE055 = playSe( spep_0 + 632, 1187 );
setSeVolumeByWorkId( spep_0 + 632, SE055, 65 );
stopSe( spep_0 + 646, SE055, 20 );
SE056 = playSe( spep_0 + 642, 1190 );
stopSe( spep_0 + 662, SE056, 14 );
SE057 = playSe( spep_0 + 644, 1187 );
setSeVolumeByWorkId( spep_0 + 644, SE057, 70 );
stopSe( spep_0 + 658, SE057, 18 );
SE058 = playSe( spep_0 + 656, 1190 );
SE059 = playSe( spep_0 + 658, 1187 );
setSeVolumeByWorkId( spep_0 + 658, SE059, 65 );

--白フェード
entryFade( spep_0 + 660, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+668;
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

--ピッコロラッシュ
stopSe( spep_1 + 8, SE058, 16 );
stopSe( spep_1 + 4, SE059, 20 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- 悟空叫ぶ〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 372, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 372, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 372, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 372, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 372, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 372, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 372, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 372, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 102, 1, 1);
setDisp( spep_2-1 + 208, 1, 0);

changeAnime( spep_2-3 + 102, 1, 105);

setMoveKey( spep_2-3 + 102, 1, 0, -3.7 , 0 );
setMoveKey( spep_2-3 + 136, 1, 0, -3.7 , 0 );
setMoveKey( spep_2-3 + 138, 1, 6.6, -2 , 0 );
setMoveKey( spep_2-3 + 140, 1, 13.3, -0.3 , 0 );
setMoveKey( spep_2-3 + 142, 1, -3.1, -5 , 0 );
setMoveKey( spep_2-3 + 144, 1, -1.4, -13.5 , 0 );
setMoveKey( spep_2-3 + 146, 1, -6.5, 1.3 , 0 );
setMoveKey( spep_2-3 + 148, 1, -3.3, -1.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, 5.9, -10.9 , 0 );
setMoveKey( spep_2-3 + 152, 1, 2.7, -15 , 0 );
setMoveKey( spep_2-3 + 154, 1, 3.8, -16.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 1.8, -6.7 , 0 );
setMoveKey( spep_2-3 + 158, 1, 10.2, 2.8 , 0 );
setMoveKey( spep_2-3 + 160, 1, -2.2, 8.1 , 0 );
setMoveKey( spep_2-3 + 162, 1, -2.9, -3.4 , 0 );
setMoveKey( spep_2-3 + 164, 1, 10.8, 0.1 , 0 );
setMoveKey( spep_2-3 + 166, 1, 10.7, -9.1 , 0 );
setMoveKey( spep_2-3 + 168, 1, -3.6, -3.2 , 0 );
setMoveKey( spep_2-3 + 170, 1, 0.6, -3.9 , 0 );
setMoveKey( spep_2-3 + 172, 1, 1.7, -3 , 0 );
setMoveKey( spep_2-3 + 174, 1, 6.2, -5.8 , 0 );
setMoveKey( spep_2-3 + 176, 1, 2.6, -2 , 0 );
setMoveKey( spep_2-3 + 178, 1, 8.3, -0.6 , 0 );
setMoveKey( spep_2-3 + 180, 1, 4.9, -10.7 , 0 );
setMoveKey( spep_2-3 + 182, 1, -0.4, -13.7 , 0 );
setMoveKey( spep_2-3 + 184, 1, 3.1, 2.5 , 0 );
setMoveKey( spep_2-3 + 186, 1, -0.8, -3.9 , 0 );
setMoveKey( spep_2-3 + 188, 1, 1.5, -7.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, -1.3, 1.6 , 0 );
setMoveKey( spep_2-3 + 192, 1, 5.5, -0.3 , 0 );
setMoveKey( spep_2-3 + 194, 1, -0.9, -7.2 , 0 );
setMoveKey( spep_2-3 + 196, 1, 9.2, -2.2 , 0 );
setMoveKey( spep_2-3 + 198, 1, -4, 0.8 , 0 );
setMoveKey( spep_2-3 + 200, 1, 5, 3.9 , 0 );
setMoveKey( spep_2-3 + 202, 1, -0.3, -1.9 , 0 );
setMoveKey( spep_2-3 + 204, 1, 3.7, -4.6 , 0 );
setMoveKey( spep_2-3 + 206, 1, -3.6, -4.6 , 0 );
setMoveKey( spep_2-1 + 208, 1, -0.1, -4.1 , 0 );

setScaleKey( spep_2-3 + 102, 1, 1.33, 1.33 );
setScaleKey( spep_2-1 + 208, 1, 1.33, 1.33 );

setRotateKey( spep_2-3 + 102, 1, -2.3 );
setRotateKey( spep_2-1 + 208, 1, -2.3 );

--SE
--悟空横顔
SE061 = playSe( spep_2 + 0, 1129 );
setSeVolumeByWorkId( spep_2 + 0, SE061, 77 );
stopSe( spep_2 + 102, SE061, 20 );
SE062 = playSe( spep_2 + 0, 1264 );
stopSe( spep_2 + 102, SE062, 20 );
setPitch( spep_2 + 0, SE062, -300 );
setTimeStretch( SE062, 0.8, 10, 1 );

--ピッコロアップ
SE063 = playSe( spep_2 + 46, 1258 );
setPitch( spep_2 + 46, SE063, -300 );
setTimeStretch( SE063, 0.8, 10, 1 );
setBandpassFilter( spep_2 + 46, SE063, 24, 4000 );
stopSe( spep_2 + 112, SE063, 20 );

--二人気弾溜め
SE064 = playSe( spep_2 + 100, 1193 );
setSeVolumeByWorkId( spep_2 + 100, SE064, 0 );
setSeVolumeByWorkId( spep_2 + 101, SE064, 50 );
setSeVolumeByWorkId( spep_2 + 102, SE064, 100 );
setSeVolumeByWorkId( spep_2 + 103, SE064, 150 );
setStartTimeMs( SE064,  150 );
stopSe( spep_2 + 132, SE064, 6 );
SE066 = playSe( spep_2 + 104, 1201 );
setSeVolumeByWorkId( spep_2 + 104, SE066, 105 );
SE065 = playSe( spep_2 + 106, 1328 );
setSeVolumeByWorkId( spep_2 + 106, SE065, 0 );
setSeVolumeByWorkId( spep_2 + 107, SE065, 50 );
setSeVolumeByWorkId( spep_2 + 108, SE065, 150 );
setStartTimeMs( SE065,  183 );

--気弾発射
SE067 = playSe( spep_2 + 128, 1133 );
stopSe( spep_2 + 282, SE067, 8 );
SE068 = playSe( spep_2 + 128, 1177 );
setSeVolumeByWorkId( spep_2 + 128, SE068, 78 );
stopSe( spep_2 + 282, SE068, 8 );
SE069 = playSe( spep_2 + 128, 1146 );
setSeVolumeByWorkId( spep_2 + 128, SE069, 75 );
stopSe( spep_2 + 282, SE069, 8 );
SE070 = playSe( spep_2 + 138, 1188 );
SE071 = playSe( spep_2 + 140, 1161 );
setSeVolumeByWorkId( spep_2 + 140, SE071, 83 );
stopSe( spep_2 + 276, SE071, 14 );

--気弾飛んでいく
SE072 = playSe( spep_2 + 208, 1193 );
setSeVolumeByWorkId( spep_2 + 208, SE072, 0 );
setSeVolumeByWorkId( spep_2 + 209, SE072, 8.3 );
setSeVolumeByWorkId( spep_2 + 210, SE072, 16.6 );
setSeVolumeByWorkId( spep_2 + 211, SE072, 24.9 );
setSeVolumeByWorkId( spep_2 + 212, SE072, 33.2 );
setSeVolumeByWorkId( spep_2 + 213, SE072, 41.5 );
setSeVolumeByWorkId( spep_2 + 214, SE072, 49.8 );
setSeVolumeByWorkId( spep_2 + 215, SE072, 58.1 );
setSeVolumeByWorkId( spep_2 + 216, SE072, 66.4 );
setSeVolumeByWorkId( spep_2 + 217, SE072, 74.7 );
setSeVolumeByWorkId( spep_2 + 218, SE072, 83 );
setSeVolumeByWorkId( spep_2 + 219, SE072, 91.3 );
setSeVolumeByWorkId( spep_2 + 220, SE072, 100 );
setStartTimeMs( SE072,  817 );
stopSe( spep_2 + 276, SE072, 10 );
SE073 = playSe( spep_2 + 210, 1021 );

--煙膨れ上がる
SE074 = playSe( spep_2 + 270, 1024 );
SE075 = playSe( spep_2 + 270, 1188 );
SE076 = playSe( spep_2 + 276, 1202 );
setSeVolumeByWorkId( spep_2 + 276, SE076, 111 );

--ラスト爆発
SE077 = playSe( spep_2 + 310, 1159 );
SE078 = playSe( spep_2 + 310, 1024 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 372, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--終わり
dealDamage( spep_2 +262 );
endPhase( spep_2 + 362 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 二人が並ぶ〜連続パンチ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 668, panting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 668, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_f, 0 );
setEffRotateKey( spep_0 + 668, panting_f, 0 );
setEffAlphaKey( spep_0 + 0, panting_f, 255 );
setEffAlphaKey( spep_0 + 668, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 668, panting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, panting_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 668, panting_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, panting_b, 0 );
setEffRotateKey( spep_0 + 668, panting_b, 0 );
setEffAlphaKey( spep_0 + 0, panting_b, 255 );
setEffAlphaKey( spep_0 + 668, panting_b, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--顔カットイン
SE001 = playSe( spep_x + 12, 1018 );

--入り環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );
setPitch( spep_0 + 0, SE002, -300 );
setTimeStretch( SE002, 0.8, 10, 1 );

--ピッコロと悟空走っていく
SE003 = playSe( spep_0-6 + 92, 1182 );
SE004 = playSe( spep_0-6 + 98, 1314 );
setSeVolumeByWorkId( spep_0-6 + 98, SE004, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 670, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );


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

--敵の動き
setDisp( spep_0-3 + 170, 1, 1);
setDisp( spep_0 + 248, 1, 0);

changeAnime( spep_0-3 + 170, 1, 117);
changeAnime( spep_0-3 + 210, 1, 108);
changeAnime( spep_0-3 + 212, 1, 105);

setMoveKey( spep_0-3 + 170, 1, -1.9, -120.1 , 0 );
setMoveKey( spep_0-3 + 172, 1, -2, -120.1 , 0 );
setMoveKey( spep_0-3 + 174, 1, -2, -120.1 , 0 );
setMoveKey( spep_0-3 + 176, 1, -2, -120 , 0 );
setMoveKey( spep_0-3 + 178, 1, -2, -119.9 , 0 );
setMoveKey( spep_0-3 + 180, 1, -2, -119.7 , 0 );
setMoveKey( spep_0-3 + 182, 1, -2, -119.5 , 0 );
setMoveKey( spep_0-3 + 184, 1, -2, -119.1 , 0 );
setMoveKey( spep_0-3 + 186, 1, -2, -118.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, -2, -118 , 0 );
setMoveKey( spep_0-3 + 190, 1, -2, -117.2 , 0 );
setMoveKey( spep_0-3 + 192, 1, -2, -116.2 , 0 );
setMoveKey( spep_0-3 + 194, 1, -2, -115.1 , 0 );
setMoveKey( spep_0-3 + 196, 1, -2, -113.7 , 0 );
setMoveKey( spep_0-3 + 198, 1, -2, -112.2 , 0 );
setMoveKey( spep_0-3 + 200, 1, -2.1, -110.3 , 0 );
setMoveKey( spep_0-3 + 202, 1, -2.1, -108.2 , 0 );
setMoveKey( spep_0-3 + 204, 1, -2.1, -105.9 , 0 );
setMoveKey( spep_0-3 + 206, 1, -2.1, -103.2 , 0 );
setMoveKey( spep_0-3 + 208, 1, -2.1, -100.3 , 0 );
setMoveKey( spep_0-3 + 209, 1, -2.1, -100.3 , 0 );

setMoveKey( spep_0-3 + 210, 1, 47.2, 23.5 , 0 );
setMoveKey( spep_0-3 + 211, 1, 47.2, 23.5 , 0 );

setMoveKey( spep_0-3 + 212, 1, 58.3, 19.4 , 0 );
setMoveKey( spep_0-3 + 214, 1, 55.9, 19.9 , 0 );
setMoveKey( spep_0-3 + 216, 1, 49.9, 16.7 , 0 );
setMoveKey( spep_0-3 + 218, 1, 62.7, 17.7 , 0 );
setMoveKey( spep_0-3 + 220, 1, 59.6, 17.9 , 0 );
setMoveKey( spep_0-3 + 222, 1, 46.3, 8.1 , 0 );
setMoveKey( spep_0-3 + 224, 1, 45.6, -7.4 , 0 );
setMoveKey( spep_0-3 + 226, 1, 36.2, -18.5 , 0 );
setMoveKey( spep_0-3 + 228, 1, 41.6, -32 , 0 );
setMoveKey( spep_0-3 + 230, 1, 34.7, -30.3 , 0 );
setMoveKey( spep_0-3 + 232, 1, 25.9, -41.7 , 0 );
setMoveKey( spep_0-3 + 234, 1, 29.6, -46.9 , 0 );
setMoveKey( spep_0-3 + 236, 1, 26.3, -53 , 0 );
setMoveKey( spep_0-3 + 238, 1, 25, -56.4 , 0 );
setMoveKey( spep_0-3 + 240, 1, 24.3, -58.1 , 0 );
setMoveKey( spep_0-3 + 242, 1, 23.9, -59.2 , 0 );
setMoveKey( spep_0-3 + 244, 1, 23.6, -59.8 , 0 );
setMoveKey( spep_0 + 248, 1, 23.6, -60 , 0 );

setScaleKey( spep_0-3 + 170, 1,1.1,1.1);
setScaleKey( spep_0-3 + 174, 1,1.1,1.1);
setScaleKey( spep_0-3 + 176, 1,1.11,1.11);
setScaleKey( spep_0-3 + 178, 1,1.11,1.11);
setScaleKey( spep_0-3 + 180, 1,1.13,1.13);
setScaleKey( spep_0-3 + 182, 1,1.15,1.15);
setScaleKey( spep_0-3 + 184, 1,1.18,1.18);
setScaleKey( spep_0-3 + 186, 1,1.22,1.22);
setScaleKey( spep_0-3 + 188, 1,1.27,1.27);
setScaleKey( spep_0-3 + 190, 1,1.34,1.34);
setScaleKey( spep_0-3 + 192, 1,1.43,1.43);
setScaleKey( spep_0-3 + 194, 1,1.51,1.51);
setScaleKey( spep_0-3 + 196, 1,1.63,1.63);
setScaleKey( spep_0-3 + 198, 1,1.77,1.77);
setScaleKey( spep_0-3 + 200, 1,1.92,1.92);
setScaleKey( spep_0-3 + 202, 1,2.1,2.1);
setScaleKey( spep_0-3 + 204, 1,2.29,2.29);
setScaleKey( spep_0-3 + 206, 1,2.53,2.53);
setScaleKey( spep_0-3 + 208, 1,2.77,2.77);
setScaleKey( spep_0-3 + 209, 1,2.77,2.77);

setScaleKey( spep_0-3 + 210, 1, 2.82, 2.82 );
setScaleKey( spep_0-3 + 211, 1, 2.82, 2.82 );

setScaleKey( spep_0-3 + 212, 1,2.77,2.77);
setScaleKey( spep_0-3 + 220, 1,2.77,2.77);
setScaleKey( spep_0-3 + 222, 1,2.33,2.33);
setScaleKey( spep_0-3 + 224, 1,1.94,1.94);
setScaleKey( spep_0-3 + 226, 1,1.62,1.62);
setScaleKey( spep_0-3 + 228, 1,1.36,1.36);
setScaleKey( spep_0-3 + 230, 1,1.14,1.14);
setScaleKey( spep_0-3 + 232, 1,0.96,0.96);
setScaleKey( spep_0-3 + 234, 1,0.82,0.82);
setScaleKey( spep_0-3 + 236, 1,0.72,0.72);
setScaleKey( spep_0-3 + 238, 1,0.64,0.64);
setScaleKey( spep_0-3 + 240, 1,0.6,0.6);
setScaleKey( spep_0-3 + 242, 1,0.57,0.57);
setScaleKey( spep_0-3 + 244, 1,0.56,0.56);
setScaleKey( spep_0 + 248, 1,0.55,0.55);

setRotateKey( spep_0-3 + 170, 1, 0 );
setRotateKey( spep_0 + 248, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 274, 1, 1);
setDisp( spep_0 + 304, 1, 0);

changeAnime( spep_0-3 + 274, 1, 105);
changeAnime( spep_0-3 + 290, 1, 106);

setMoveKey( spep_0-3 + 274, 1, 23.6, -59.7 , 0 );
setMoveKey( spep_0-3 + 276, 1, 22.5, -59.1 , 0 );
setMoveKey( spep_0-3 + 278, 1, 21.4, -58.4 , 0 );
setMoveKey( spep_0-3 + 280, 1, 20.2, -57.8 , 0 );
setMoveKey( spep_0-3 + 282, 1, 19.1, -57.1 , 0 );
setMoveKey( spep_0-3 + 284, 1, 17.9, -56.4 , 0 );
setMoveKey( spep_0-3 + 286, 1, 16.8, -55.7 , 0 );
setMoveKey( spep_0-3 + 288, 1, 12.2, -48.1 , 0 );
setMoveKey( spep_0-3 + 288, 1, 12.2, -48.1 , 0 );
setMoveKey( spep_0-3 + 289, 1, 12.2, -48.1 , 0 );

setMoveKey( spep_0-3 + 290, 1, 129.8, 131.2 , 0 );
setMoveKey( spep_0-3 + 292, 1, 130.2, 133.4 , 0 );
setMoveKey( spep_0-3 + 294, 1, 130.5, 130 , 0 );
setMoveKey( spep_0-3 + 296, 1, 136.8, 136.7 , 0 );
setMoveKey( spep_0-3 + 298, 1, 230.8, 251.7 , 0 );
setMoveKey( spep_0-3 + 300, 1, 329.6, 364.9 , 0 );
setMoveKey( spep_0-3 + 302, 1, 444.1, 478.6 , 0 );
setMoveKey( spep_0 + 304, 1, 540.8, 590.2 , 0 );

setScaleKey( spep_0-3 + 274, 1,5.59,5.59);
setScaleKey( spep_0-3 + 276, 1,4.99,4.99);
setScaleKey( spep_0-3 + 278, 1,4.4,4.4);
setScaleKey( spep_0-3 + 280, 1,3.8,3.8);
setScaleKey( spep_0-3 + 282, 1,3.21,3.21);
setScaleKey( spep_0-3 + 284, 1,2.63,2.63);
setScaleKey( spep_0-3 + 286, 1,2.04,2.04);
setScaleKey( spep_0-3 + 288, 1,1.44,1.44);
setScaleKey( spep_0-3 + 289, 1,1.44,1.44);

setScaleKey( spep_0-3 + 290, 1, 1.12, 1.12 );
setScaleKey( spep_0-3 + 296, 1, 1.12, 1.12 );
setScaleKey( spep_0-3 + 298, 1, 1.11, 1.11 );
setScaleKey( spep_0-3 + 300, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 304, 1, 1.09, 1.09 );

setRotateKey( spep_0-3 + 274, 1, 0 );
setRotateKey( spep_0-3 + 289, 1, 0 );

setRotateKey( spep_0-3 + 290, 1, -23.2 );
setRotateKey( spep_0 + 304, 1, -23.2 );

--敵の動き
setDisp( spep_0-3 + 374, 1, 1);
setDisp( spep_0-1 + 512, 1, 0);

changeAnime( spep_0-3 + 374, 1, 6);
changeAnime( spep_0-3 + 430, 1, 7);
changeAnime( spep_0-3 + 494, 1, 108);

setMoveKey( spep_0-3 + 374, 1, -613.6, -456.2 , 0 );
setMoveKey( spep_0-3 + 376, 1, -559.2, -412.1 , 0 );
setMoveKey( spep_0-3 + 378, 1, -504.8, -368 , 0 );
setMoveKey( spep_0-3 + 380, 1, -450.4, -323.9 , 0 );
setMoveKey( spep_0-3 + 382, 1, -396, -279.8 , 0 );
setMoveKey( spep_0-3 + 384, 1, -341.6, -235.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, -287.2, -191.6 , 0 );
setMoveKey( spep_0-3 + 388, 1, -232.8, -147.5 , 0 );
setMoveKey( spep_0-3 + 390, 1, -178.4, -103.4 , 0 );
setMoveKey( spep_0-3 + 392, 1, -124, -59.3 , 0 );
setMoveKey( spep_0-3 + 394, 1, -69.6, -15.2 , 0 );
setMoveKey( spep_0-3 + 396, 1, -18.7, 32.9 , 0 );
setMoveKey( spep_0-3 + 398, 1, 21.7, 142.4 , 0 );
setMoveKey( spep_0-3 + 400, 1, 29.5, 91.5 , 0 );
setMoveKey( spep_0-3 + 402, 1, 53.3, 149.3 , 0 );
setMoveKey( spep_0-3 + 404, 1, 39.7, 144.1 , 0 );
setMoveKey( spep_0-3 + 406, 1, 34.1, 156.4 , 0 );
setMoveKey( spep_0-3 + 408, 1, 32.3, 164.8 , 0 );
setMoveKey( spep_0-3 + 410, 1, 23.1, 171.7 , 0 );
setMoveKey( spep_0-3 + 412, 1, 18.8, 178.3 , 0 );
setMoveKey( spep_0-3 + 414, 1, 15.1, 181.9 , 0 );
setMoveKey( spep_0-3 + 416, 1, 6.5, 202.2 , 0 );
setMoveKey( spep_0-3 + 417, 1, 6.5, 202.2 , 0 );
setMoveKey( spep_0-3 + 418, 1, -87.4, 284.8 , 0 );
setMoveKey( spep_0-3 + 420, 1, -186.2, 377.2 , 0 );
setMoveKey( spep_0-3 + 422, 1, -277.2, 473.1 , 0 );
setMoveKey( spep_0-3 + 424, 1, -368.5, 567.5 , 0 );
setMoveKey( spep_0-3 + 426, 1, -463.1, 660.9 , 0 );
setMoveKey( spep_0-3 + 428, 1, -557.7, 754.2 , 0 );
setMoveKey( spep_0-3 + 429, 1, -557.7, 754.2 , 0 );

setMoveKey( spep_0-3 + 430, 1, 290.9, -629.3 , 0 );
setMoveKey( spep_0-3 + 432, 1, 290.7, -629.1 , 0 );
setMoveKey( spep_0-3 + 434, 1, 290.3, -628.4 , 0 );
setMoveKey( spep_0-3 + 436, 1, 289.5, -627.2 , 0 );
setMoveKey( spep_0-3 + 438, 1, 288.4, -625.6 , 0 );
setMoveKey( spep_0-3 + 440, 1, 286.9, -623.4 , 0 );
setMoveKey( spep_0-3 + 442, 1, 285.1, -620.8 , 0 );
setMoveKey( spep_0-3 + 444, 1, 283, -617.7 , 0 );
setMoveKey( spep_0-3 + 446, 1, 280.6, -614.2 , 0 );
setMoveKey( spep_0-3 + 448, 1, 277.8, -610 , 0 );
setMoveKey( spep_0-3 + 450, 1, 274.6, -605.4 , 0 );
setMoveKey( spep_0-3 + 452, 1, 271, -600.2 , 0 );
setMoveKey( spep_0-3 + 454, 1, 267.1, -594.4 , 0 );
setMoveKey( spep_0-3 + 456, 1, 262.8, -588.1 , 0 );
setMoveKey( spep_0-3 + 458, 1, 258, -581.1 , 0 );
setMoveKey( spep_0-3 + 460, 1, 252.8, -573.5 , 0 );
setMoveKey( spep_0-3 + 462, 1, 247.1, -565.2 , 0 );
setMoveKey( spep_0-3 + 464, 1, 240.9, -556.1 , 0 );
setMoveKey( spep_0-3 + 466, 1, 234.2, -546.2 , 0 );
setMoveKey( spep_0-3 + 468, 1, 226.9, -535.5 , 0 );
setMoveKey( spep_0-3 + 470, 1, 218.9, -523.8 , 0 );
setMoveKey( spep_0-3 + 472, 1, 210.2, -511.1 , 0 );
setMoveKey( spep_0-3 + 474, 1, 200.7, -497.2 , 0 );
setMoveKey( spep_0-3 + 476, 1, 190.3, -482 , 0 );
setMoveKey( spep_0-3 + 478, 1, 178.9, -465.2 , 0 );
setMoveKey( spep_0-3 + 480, 1, 166.2, -446.6 , 0 );
setMoveKey( spep_0-3 + 482, 1, 151.9, -425.7 , 0 );
setMoveKey( spep_0-3 + 484, 1, 135.7, -401.9 , 0 );
setMoveKey( spep_0-3 + 486, 1, 116.7, -374.1 , 0 );
setMoveKey( spep_0-3 + 488, 1, 93.5, -340.2 , 0 );
setMoveKey( spep_0-3 + 490, 1, 62.6, -294.9 , 0 );
setMoveKey( spep_0-3 + 492, 1, -12, -178.2 , 0 );
setMoveKey( spep_0-3 + 493, 1, -12, -178.2 , 0 );

setMoveKey( spep_0-3 + 494, 1, -44.1, -223.6 , 0 );
setMoveKey( spep_0-3 + 496, 1, 7.6, -236.7 , 0 );
setMoveKey( spep_0-3 + 498, 1, -25.7, -243.7 , 0 );
setMoveKey( spep_0-3 + 500, 1, -23.7, -243.5 , 0 );
setMoveKey( spep_0-3 + 502, 1, -18.5, -242.3 , 0 );
setMoveKey( spep_0-3 + 504, 1, -24.9, -247.6 , 0 );
setMoveKey( spep_0-3 + 506, 1, -77.7, -468.1 , 0 );
setMoveKey( spep_0-3 + 508, 1, -137.1, -687.9 , 0 );
setMoveKey( spep_0-1 + 512, 1, -193.7, -909.6 , 0 );

setScaleKey( spep_0-3 + 374, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 429, 1, 1.2, 1.2 );

setScaleKey( spep_0-3 + 430, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 440, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 442, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 446, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 448, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 450, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 452, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 454, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 456, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 458, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 460, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 462, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 464, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 466, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 468, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 470, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 472, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 474, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 476, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 478, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 480, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 482, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 484, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 486, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 488, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 490, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 492, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 493, 1, 0.65, 0.65 );

setScaleKey( spep_0-3 + 494, 1, 2.6, 2.6 );
setScaleKey( spep_0-1 + 512, 1, 2.6, 2.6 );

setRotateKey( spep_0-3 + 374, 1, 105.5 );
setRotateKey( spep_0-3 + 376, 1, 105.1 );
setRotateKey( spep_0-3 + 378, 1, 104.8 );
setRotateKey( spep_0-3 + 380, 1, 104.4 );
setRotateKey( spep_0-3 + 382, 1, 104 );
setRotateKey( spep_0-3 + 384, 1, 103.7 );
setRotateKey( spep_0-3 + 386, 1, 103.3 );
setRotateKey( spep_0-3 + 388, 1, 102.9 );
setRotateKey( spep_0-3 + 390, 1, 102.6 );
setRotateKey( spep_0-3 + 392, 1, 102.2 );
setRotateKey( spep_0-3 + 394, 1, 101.8 );
setRotateKey( spep_0-3 + 396, 1, 101.5 );
setRotateKey( spep_0-3 + 397, 1, 101.5 );
setRotateKey( spep_0-3 + 398, 1, 42.8 );
setRotateKey( spep_0-3 + 400, 1, 40.6 );
setRotateKey( spep_0-3 + 402, 1, 38.3 );
setRotateKey( spep_0-3 + 404, 1, 36.1 );
setRotateKey( spep_0-3 + 406, 1, 33.9 );
setRotateKey( spep_0-3 + 408, 1, 31.7 );
setRotateKey( spep_0-3 + 410, 1, 29.5 );
setRotateKey( spep_0-3 + 412, 1, 27.3 );
setRotateKey( spep_0-3 + 414, 1, 25 );
setRotateKey( spep_0-3 + 416, 1, 22.8 );
setRotateKey( spep_0-3 + 418, 1, 22 );
setRotateKey( spep_0-3 + 420, 1, 21.2 );
setRotateKey( spep_0-3 + 422, 1, 20.5 );
setRotateKey( spep_0-3 + 424, 1, 19.7 );
setRotateKey( spep_0-3 + 426, 1, 18.9 );
setRotateKey( spep_0-3 + 428, 1, 18.1 );
setRotateKey( spep_0-3 + 429, 1, 18.1 );

setRotateKey( spep_0-3 + 430, 1, 86.6 );
setRotateKey( spep_0-3 + 432, 1, 86.6 );
setRotateKey( spep_0-3 + 434, 1, 86.5 );
setRotateKey( spep_0-3 + 436, 1, 86.5 );
setRotateKey( spep_0-3 + 438, 1, 86.4 );
setRotateKey( spep_0-3 + 440, 1, 86.3 );
setRotateKey( spep_0-3 + 442, 1, 86.2 );
setRotateKey( spep_0-3 + 444, 1, 86 );
setRotateKey( spep_0-3 + 446, 1, 85.8 );
setRotateKey( spep_0-3 + 448, 1, 85.6 );
setRotateKey( spep_0-3 + 450, 1, 85.4 );
setRotateKey( spep_0-3 + 452, 1, 85.1 );
setRotateKey( spep_0-3 + 454, 1, 84.8 );
setRotateKey( spep_0-3 + 456, 1, 84.5 );
setRotateKey( spep_0-3 + 458, 1, 84.1 );
setRotateKey( spep_0-3 + 460, 1, 83.7 );
setRotateKey( spep_0-3 + 462, 1, 83.3 );
setRotateKey( spep_0-3 + 464, 1, 82.8 );
setRotateKey( spep_0-3 + 466, 1, 82.3 );
setRotateKey( spep_0-3 + 468, 1, 81.7 );
setRotateKey( spep_0-3 + 470, 1, 81.1 );
setRotateKey( spep_0-3 + 472, 1, 80.4 );
setRotateKey( spep_0-3 + 474, 1, 79.7 );
setRotateKey( spep_0-3 + 476, 1, 78.9 );
setRotateKey( spep_0-3 + 478, 1, 78.1 );
setRotateKey( spep_0-3 + 480, 1, 77.1 );
setRotateKey( spep_0-3 + 482, 1, 76 );
setRotateKey( spep_0-3 + 484, 1, 74.8 );
setRotateKey( spep_0-3 + 486, 1, 73.3 );
setRotateKey( spep_0-3 + 488, 1, 71.6 );
setRotateKey( spep_0-3 + 490, 1, 69.2 );
setRotateKey( spep_0-3 + 492, 1, 63.4 );
setRotateKey( spep_0-3 + 493, 1, 63.4 );

setRotateKey( spep_0-3 + 494, 1, 126.8 );
setRotateKey( spep_0-1 + 512, 1, 126.8 );

--敵の動き
setDisp( spep_0-3 + 546, 1, 1);
setDisp( spep_0 + 572, 1, 0);

changeAnime( spep_0-3 + 546, 1, 108);


setMoveKey( spep_0-3 + 546, 1, 22.5, 761.6 , 0 );
setMoveKey( spep_0-3 + 548, 1, 23.1, 678.2 , 0 );
setMoveKey( spep_0-3 + 550, 1, 23.7, 594.9 , 0 );
setMoveKey( spep_0-3 + 552, 1, 24.2, 511.6 , 0 );
setMoveKey( spep_0-3 + 554, 1, 24.8, 428.2 , 0 );
setMoveKey( spep_0-3 + 556, 1, 25.4, 344.9 , 0 );
setMoveKey( spep_0-3 + 558, 1, 25.9, 261.6 , 0 );
setMoveKey( spep_0-3 + 560, 1, 26.5, 178.2 , 0 );
setMoveKey( spep_0-3 + 562, 1, 27, 94.9 , 0 );
setMoveKey( spep_0-3 + 564, 1, 27.6, 11.6 , 0 );
setMoveKey( spep_0-3 + 566, 1, 28.2, -71.8 , 0 );
setMoveKey( spep_0-3 + 568, 1, 12.8, -119.8 , 0 );
setMoveKey( spep_0 + 572, 1, 44.8, -117.8 , 0 );

setScaleKey( spep_0-3 + 546, 1,1.65,1.65);
setScaleKey( spep_0-3 + 566, 1,1.65,1.65);
setScaleKey( spep_0-3 + 567, 1,1.65,1.65);
setScaleKey( spep_0-3 + 568, 1,1.69,1.69);
setScaleKey( spep_0 + 572, 1,1.69,1.69);

setRotateKey( spep_0-3 + 546, 1, 94 );
setRotateKey( spep_0-3 + 566, 1, 94 );
setRotateKey( spep_0-3 + 567, 1, 94 );
setRotateKey( spep_0-3 + 568, 1, -6 );
setRotateKey( spep_0 + 572, 1, -6 );

--SE
--入り環境音
stopSe( spep_0 + 168, SE002, 10 );

--ピッコロと悟空走っていく
stopSe( spep_0-6 + 174, SE004, 32 );
SE005 = playSe( spep_0-6 + 98, 1278 );
setSeVolumeByWorkId( spep_0-6 + 98, SE005, 62 );
stopSe( spep_0-6 + 158, SE005, 22 );
SE006 = playSe( spep_0-6 + 98, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 98, SE006, 178 );
SE007 = playSe( spep_0-6 + 98, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 98, SE007, 178 );
SE008 = playSe( spep_0-6 + 112, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 112, SE008, 178 );
SE009 = playSe( spep_0-6 + 112, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 112, SE009, 178 );
SE010 = playSe( spep_0-6 + 126, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 126, SE010, 178 );
SE011 = playSe( spep_0-6 + 128, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 128, SE011, 178 );
SE012 = playSe( spep_0-6 + 144, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 144, SE012, 178 );
SE013 = playSe( spep_0-6 + 146, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 146, SE013, 178 );
SE014 = playSe( spep_0-6 + 158, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 158, SE014, 178 );
SE015 = playSe( spep_0-6 + 160, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 160, SE015, 178 );
SE016 = playSe( spep_0-6 + 174, 1108 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 174, SE016, 178 );
SE017 = playSe( spep_0-6 + 176, 1106 ,"",0.5);
setSeVolumeByWorkId( spep_0-6 + 176, SE017, 178 );

--ピッコロ向かっていく
SE018 = playSe( spep_0 + 168, 1117 );

--ピッコロパンチ
SE019 = playSe( spep_0 + 208, 1187 );
setSeVolumeByWorkId( spep_0 + 208, SE019, 77 );

--瞬間移動
SE020 = playSe( spep_0 + 214, 1109 );
SE022 = playSe( spep_0 + 254, 1109 );

--悟空蹴り上げ
SE023 = playSe( spep_0 + 284, 1001 );
setSeVolumeByWorkId( spep_0 + 284, SE023, 64 );
SE024 = playSe( spep_0 + 286, 1153 );
stopSe( spep_0 + 308, SE024, 10 );
SE025 = playSe( spep_0 + 288, 1110 );
SE026 = playSe( spep_0 + 290, 1047 );
setSeVolumeByWorkId( spep_0 + 290, SE026, 63 );

--悟空アップ
SE027 = playSe( spep_0 + 304, 1024 );
setSeVolumeByWorkId( spep_0 + 304, SE027, 0 );
setSeVolumeByWorkId( spep_0 + 305, SE027, 10 );
setSeVolumeByWorkId( spep_0 + 306, SE027, 20 );
setSeVolumeByWorkId( spep_0 + 307, SE027, 30 );
setSeVolumeByWorkId( spep_0 + 308, SE027, 40 );
setSeVolumeByWorkId( spep_0 + 309, SE027, 50 );
setSeVolumeByWorkId( spep_0 + 310, SE027, 60 );
setSeVolumeByWorkId( spep_0 + 311, SE027, 70 );
setSeVolumeByWorkId( spep_0 + 312, SE027, 80 );
setSeVolumeByWorkId( spep_0 + 313, SE027, 90 );
setSeVolumeByWorkId( spep_0 + 314, SE027, 100 );
setStartTimeMs( SE027,  100 );
stopSe( spep_0 + 368, SE027, 20 );

--悟空蹴り上げ
SE028 = playSe( spep_0 + 310, 1264 );
stopSe( spep_0 + 368, SE028, 46 );

--瞬間移動
SE029 = playSe( spep_0 + 374, 1109 );

--悟空蹴り上げ
SE030 = playSe( spep_0 + 396, 1153 );
SE031 = playSe( spep_0 + 396, 1187 );
stopSe( spep_0 + 422, SE031, 22 );
SE032 = playSe( spep_0 + 396, 19 );
setSeVolumeByWorkId( spep_0 + 396, SE032, 77 );

--ピッコロ瞬間移動
SE033 = playSe( spep_0 + 430, 1109 );

--ピッコロ回転
SE034 = playSe( spep_0 + 430, 1116 );
stopSe( spep_0 + 472, SE034, 16 );
SE035 = playSe( spep_0 + 446, 1117 );
stopSe( spep_0 + 482, SE035, 16 );
SE021 = playSe( spep_0 + 446, 1255 );
setSeVolumeByWorkId( spep_0 + 446, SE021, 0 );
setSeVolumeByWorkId( spep_0 + 447, SE021, 14 );
setSeVolumeByWorkId( spep_0 + 448, SE021, 28 );
setSeVolumeByWorkId( spep_0 + 449, SE021, 42 );
setSeVolumeByWorkId( spep_0 + 450, SE021, 56 );
setSeVolumeByWorkId( spep_0 + 451, SE021, 70 );
setSeVolumeByWorkId( spep_0 + 452, SE021, 84 );
setSeVolumeByWorkId( spep_0 + 453, SE021, 98 );
setSeVolumeByWorkId( spep_0 + 454, SE021, 112 );
setSeVolumeByWorkId( spep_0 + 455, SE021, 126 );
setSeVolumeByWorkId( spep_0 + 456, SE021, 140 );
setStartTimeMs( SE021,  3450 );
stopSe( spep_0 + 492, SE021, 8 );

--ピッコロ蹴り
SE036 = playSe( spep_0 + 492, 1120 );
setSeVolumeByWorkId( spep_0 + 492, SE036, 87 );
SE037 = playSe( spep_0 + 492, 1190 );

--敵落ちていく
SE038 = playSe( spep_0 + 516, 1183 );
stopSe( spep_0 + 562, SE038, 14 );

--二人向かっていく
SE039 = playSe( spep_0 + 554, 44 );
stopSe( spep_0 + 574, SE039, 16 );

--悟空ラッシュ
SE040 = playSe( spep_0 + 574, 1009 );
SE041 = playSe( spep_0 + 574, 1000 );
SE042 = playSe( spep_0 + 576, 1187 );
setSeVolumeByWorkId( spep_0 + 576, SE042, 68 );
stopSe( spep_0 + 590, SE042, 20 );
SE043 = playSe( spep_0 + 588, 1009 );
SE044 = playSe( spep_0 + 588, 1000 );
SE045 = playSe( spep_0 + 590, 1187 );
setSeVolumeByWorkId( spep_0 + 590, SE045, 60 );
stopSe( spep_0 + 604, SE045, 20 );
SE046 = playSe( spep_0 + 598, 1010 );
setSeVolumeByWorkId( spep_0 + 598, SE046, 87 );
SE047 = playSe( spep_0 + 598, 1000 );
SE048 = playSe( spep_0 + 600, 1187 );
setSeVolumeByWorkId( spep_0 + 600, SE048, 66 );
stopSe( spep_0 + 614, SE048, 20 );
SE049 = playSe( spep_0 + 612, 1009 );
SE050 = playSe( spep_0 + 612, 1000 );
SE051 = playSe( spep_0 + 614, 1187 );
setSeVolumeByWorkId( spep_0 + 614, SE051, 63 );
stopSe( spep_0 + 628, SE051, 18 );

--ピッコロラッシュ
SE052 = playSe( spep_0 + 620, 1190 );
stopSe( spep_0 + 640, SE052, 16 );
SE053 = playSe( spep_0 + 622, 1187 );
setSeVolumeByWorkId( spep_0 + 622, SE053, 66 );
stopSe( spep_0 + 636, SE053, 20 );
SE054 = playSe( spep_0 + 630, 1190 );
stopSe( spep_0 + 650, SE054, 16 );
SE055 = playSe( spep_0 + 632, 1187 );
setSeVolumeByWorkId( spep_0 + 632, SE055, 65 );
stopSe( spep_0 + 646, SE055, 20 );
SE056 = playSe( spep_0 + 642, 1190 );
stopSe( spep_0 + 662, SE056, 14 );
SE057 = playSe( spep_0 + 644, 1187 );
setSeVolumeByWorkId( spep_0 + 644, SE057, 70 );
stopSe( spep_0 + 658, SE057, 18 );
SE058 = playSe( spep_0 + 656, 1190 );
SE059 = playSe( spep_0 + 658, 1187 );
setSeVolumeByWorkId( spep_0 + 658, SE059, 65 );

--白フェード
entryFade( spep_0 + 660, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+668;
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

--ピッコロラッシュ
stopSe( spep_1 + 8, SE058, 16 );
stopSe( spep_1 + 4, SE059, 20 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
-- 悟空叫ぶ〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 372, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 372, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 372, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 372, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 372, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 372, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 372, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 372, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 102, 1, 1);
setDisp( spep_2-1 + 208, 1, 0);

changeAnime( spep_2-3 + 102, 1, 105);

setMoveKey( spep_2-3 + 102, 1, 0, -3.7 , 0 );
setMoveKey( spep_2-3 + 136, 1, 0, -3.7 , 0 );
setMoveKey( spep_2-3 + 138, 1, 6.6, -2 , 0 );
setMoveKey( spep_2-3 + 140, 1, 13.3, -0.3 , 0 );
setMoveKey( spep_2-3 + 142, 1, -3.1, -5 , 0 );
setMoveKey( spep_2-3 + 144, 1, -1.4, -13.5 , 0 );
setMoveKey( spep_2-3 + 146, 1, -6.5, 1.3 , 0 );
setMoveKey( spep_2-3 + 148, 1, -3.3, -1.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, 5.9, -10.9 , 0 );
setMoveKey( spep_2-3 + 152, 1, 2.7, -15 , 0 );
setMoveKey( spep_2-3 + 154, 1, 3.8, -16.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 1.8, -6.7 , 0 );
setMoveKey( spep_2-3 + 158, 1, 10.2, 2.8 , 0 );
setMoveKey( spep_2-3 + 160, 1, -2.2, 8.1 , 0 );
setMoveKey( spep_2-3 + 162, 1, -2.9, -3.4 , 0 );
setMoveKey( spep_2-3 + 164, 1, 10.8, 0.1 , 0 );
setMoveKey( spep_2-3 + 166, 1, 10.7, -9.1 , 0 );
setMoveKey( spep_2-3 + 168, 1, -3.6, -3.2 , 0 );
setMoveKey( spep_2-3 + 170, 1, 0.6, -3.9 , 0 );
setMoveKey( spep_2-3 + 172, 1, 1.7, -3 , 0 );
setMoveKey( spep_2-3 + 174, 1, 6.2, -5.8 , 0 );
setMoveKey( spep_2-3 + 176, 1, 2.6, -2 , 0 );
setMoveKey( spep_2-3 + 178, 1, 8.3, -0.6 , 0 );
setMoveKey( spep_2-3 + 180, 1, 4.9, -10.7 , 0 );
setMoveKey( spep_2-3 + 182, 1, -0.4, -13.7 , 0 );
setMoveKey( spep_2-3 + 184, 1, 3.1, 2.5 , 0 );
setMoveKey( spep_2-3 + 186, 1, -0.8, -3.9 , 0 );
setMoveKey( spep_2-3 + 188, 1, 1.5, -7.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, -1.3, 1.6 , 0 );
setMoveKey( spep_2-3 + 192, 1, 5.5, -0.3 , 0 );
setMoveKey( spep_2-3 + 194, 1, -0.9, -7.2 , 0 );
setMoveKey( spep_2-3 + 196, 1, 9.2, -2.2 , 0 );
setMoveKey( spep_2-3 + 198, 1, -4, 0.8 , 0 );
setMoveKey( spep_2-3 + 200, 1, 5, 3.9 , 0 );
setMoveKey( spep_2-3 + 202, 1, -0.3, -1.9 , 0 );
setMoveKey( spep_2-3 + 204, 1, 3.7, -4.6 , 0 );
setMoveKey( spep_2-3 + 206, 1, -3.6, -4.6 , 0 );
setMoveKey( spep_2-1 + 208, 1, -0.1, -4.1 , 0 );

setScaleKey( spep_2-3 + 102, 1, 1.33, 1.33 );
setScaleKey( spep_2-1 + 208, 1, 1.33, 1.33 );

setRotateKey( spep_2-3 + 102, 1, -2.3 );
setRotateKey( spep_2-1 + 208, 1, -2.3 );

--SE
--悟空横顔
SE061 = playSe( spep_2 + 0, 1129 );
setSeVolumeByWorkId( spep_2 + 0, SE061, 77 );
stopSe( spep_2 + 102, SE061, 20 );
SE062 = playSe( spep_2 + 0, 1264 );
stopSe( spep_2 + 102, SE062, 20 );
setPitch( spep_2 + 0, SE062, -300 );
setTimeStretch( SE062, 0.8, 10, 1 );

--ピッコロアップ
SE063 = playSe( spep_2 + 46, 1258 );
setPitch( spep_2 + 46, SE063, -300 );
setTimeStretch( SE063, 0.8, 10, 1 );
setBandpassFilter( spep_2 + 46, SE063, 24, 4000 );
stopSe( spep_2 + 112, SE063, 20 );

--二人気弾溜め
SE064 = playSe( spep_2 + 100, 1193 );
setSeVolumeByWorkId( spep_2 + 100, SE064, 0 );
setSeVolumeByWorkId( spep_2 + 101, SE064, 50 );
setSeVolumeByWorkId( spep_2 + 102, SE064, 100 );
setSeVolumeByWorkId( spep_2 + 103, SE064, 150 );
setStartTimeMs( SE064,  150 );
stopSe( spep_2 + 132, SE064, 6 );
SE066 = playSe( spep_2 + 104, 1201 );
setSeVolumeByWorkId( spep_2 + 104, SE066, 105 );
SE065 = playSe( spep_2 + 106, 1328 );
setSeVolumeByWorkId( spep_2 + 106, SE065, 0 );
setSeVolumeByWorkId( spep_2 + 107, SE065, 50 );
setSeVolumeByWorkId( spep_2 + 108, SE065, 150 );
setStartTimeMs( SE065,  183 );

--気弾発射
SE067 = playSe( spep_2 + 128, 1133 );
stopSe( spep_2 + 282, SE067, 8 );
SE068 = playSe( spep_2 + 128, 1177 );
setSeVolumeByWorkId( spep_2 + 128, SE068, 78 );
stopSe( spep_2 + 282, SE068, 8 );
SE069 = playSe( spep_2 + 128, 1146 );
setSeVolumeByWorkId( spep_2 + 128, SE069, 75 );
stopSe( spep_2 + 282, SE069, 8 );
SE070 = playSe( spep_2 + 138, 1188 );
SE071 = playSe( spep_2 + 140, 1161 );
setSeVolumeByWorkId( spep_2 + 140, SE071, 83 );
stopSe( spep_2 + 276, SE071, 14 );

--気弾飛んでいく
SE072 = playSe( spep_2 + 208, 1193 );
setSeVolumeByWorkId( spep_2 + 208, SE072, 0 );
setSeVolumeByWorkId( spep_2 + 209, SE072, 8.3 );
setSeVolumeByWorkId( spep_2 + 210, SE072, 16.6 );
setSeVolumeByWorkId( spep_2 + 211, SE072, 24.9 );
setSeVolumeByWorkId( spep_2 + 212, SE072, 33.2 );
setSeVolumeByWorkId( spep_2 + 213, SE072, 41.5 );
setSeVolumeByWorkId( spep_2 + 214, SE072, 49.8 );
setSeVolumeByWorkId( spep_2 + 215, SE072, 58.1 );
setSeVolumeByWorkId( spep_2 + 216, SE072, 66.4 );
setSeVolumeByWorkId( spep_2 + 217, SE072, 74.7 );
setSeVolumeByWorkId( spep_2 + 218, SE072, 83 );
setSeVolumeByWorkId( spep_2 + 219, SE072, 91.3 );
setSeVolumeByWorkId( spep_2 + 220, SE072, 100 );
setStartTimeMs( SE072,  817 );
stopSe( spep_2 + 276, SE072, 10 );
SE073 = playSe( spep_2 + 210, 1021 );

--煙膨れ上がる
SE074 = playSe( spep_2 + 270, 1024 );
SE075 = playSe( spep_2 + 270, 1188 );
SE076 = playSe( spep_2 + 276, 1202 );
setSeVolumeByWorkId( spep_2 + 276, SE076, 111 );

--ラスト爆発
SE077 = playSe( spep_2 + 310, 1159 );
SE078 = playSe( spep_2 + 310, 1024 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 372, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--終わり
dealDamage( spep_2 +262 );
endPhase( spep_2 + 362 );
end