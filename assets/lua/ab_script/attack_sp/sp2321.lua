--4023470:超サイヤ人3孫悟空_超かめはめ波
--sp_effect_a1_00334
--sp2321

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
SP_01= 158840 ;-- 開幕～前方突進 前面
SP_02= 158841 ;-- 開幕～前方突進 背面
SP_03= 158842 ;-- 殴る蹴る 前面
SP_04= 158843 ;-- 殴る蹴る 背面
SP_05= 158844 ;-- 瞬間移動～回し蹴り 前面
SP_06= 158845 ;-- 瞬間移動～回し蹴り 背面
SP_07= 158846 ;-- セリフカットイン
SP_08= 158847 ;-- ため～発射 前面
SP_09= 158848 ;-- ため～発射 背面
SP_10= 158849 ;-- フィニッシュ
SP_11= 158858 ;-- フィニッシュ

--エフェクト(てき)
SP_01x= 158850 ;-- 開幕～前方突進 前面 (敵)
SP_02x= 158841 ;-- 開幕～前方突進 背面 
SP_03x= 158851 ;-- 殴る蹴る 前面 (敵)
SP_04x= 158852 ;-- 殴る蹴る 背面 (敵)
SP_05x= 158853 ;-- 瞬間移動～回し蹴り 前面 (敵)
SP_06x= 158854 ;-- 瞬間移動～回し蹴り 背面 (敵)
SP_07x= 158855 ;-- セリフカットイン (敵)
SP_08x= 158847 ;-- ため～発射 前面 
SP_09x= 158848 ;-- ため～発射 背面 
SP_10x= 158856 ;-- フィニッシュ (敵)
SP_11x= 158858 ;-- フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

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
--開幕～前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
opening_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, opening_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, opening_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_f, 0 );
setEffRotateKey( spep_0 + 148, opening_f, 0 );
setEffAlphaKey( spep_0 + 0, opening_f, 255 );
setEffAlphaKey( spep_0 + 146, opening_f, 255 );
setEffAlphaKey( spep_0 + 147, opening_f, 255 );
setEffAlphaKey( spep_0 + 148, opening_f, 0 );

-- ** エフェクト等 ** --
opening_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, opening_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, opening_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_b, 0 );
setEffRotateKey( spep_0 + 148, opening_b, 0 );
setEffAlphaKey( spep_0 + 0, opening_b, 255 );
setEffAlphaKey( spep_0 + 146, opening_b, 255 );
setEffAlphaKey( spep_0 + 147, opening_b, 255 );
setEffAlphaKey( spep_0 + 148, opening_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 68, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 120.7, 115 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 118.8, 115 , 0 );
setMoveKey( spep_0-3 + 4, 1, 117.9, 115 , 0 );
setMoveKey( spep_0-3 + 5, 1, 117.9, 115 , 0 );
setMoveKey( spep_0-3 + 6, 1, 117.2, 115 , 0 );
setMoveKey( spep_0-3 + 7, 1, 117.2, 115 , 0 );
setMoveKey( spep_0-3 + 8, 1, 116.5, 115 , 0 );
setMoveKey( spep_0-3 + 9, 1, 116.5, 115 , 0 );
setMoveKey( spep_0-3 + 10, 1, 115.9, 115 , 0 );
setMoveKey( spep_0-3 + 12, 1, 115.4, 115 , 0 );
setMoveKey( spep_0-3 + 14, 1, 114.9, 115 , 0 );
setMoveKey( spep_0-3 + 16, 1, 114.4, 115 , 0 );
setMoveKey( spep_0-3 + 18, 1, 113.9, 115 , 0 );
setMoveKey( spep_0-3 + 20, 1, 113.5, 115 , 0 );
setMoveKey( spep_0-3 + 22, 1, 113.1, 115 , 0 );
setMoveKey( spep_0-3 + 24, 1, 112.7, 115 , 0 );
setMoveKey( spep_0-3 + 26, 1, 112.3, 115 , 0 );
setMoveKey( spep_0-3 + 28, 1, 112, 115 , 0 );
setMoveKey( spep_0-3 + 30, 1, 111.7, 115 , 0 );
setMoveKey( spep_0-3 + 32, 1, 111.3, 115 , 0 );
setMoveKey( spep_0-3 + 34, 1, 111.1, 115 , 0 );
setMoveKey( spep_0-3 + 36, 1, 110.8, 115 , 0 );
setMoveKey( spep_0-3 + 38, 1, 110.5, 115 , 0 );
setMoveKey( spep_0-3 + 40, 1, 110.3, 115 , 0 );
setMoveKey( spep_0-3 + 42, 1, 110, 115 , 0 );
setMoveKey( spep_0-3 + 44, 1, 109.8, 115 , 0 );
setMoveKey( spep_0-3 + 46, 1, 109.7, 115 , 0 );
setMoveKey( spep_0-3 + 48, 1, 109.5, 115 , 0 );
setMoveKey( spep_0-3 + 50, 1, 109.4, 115 , 0 );
setMoveKey( spep_0-3 + 52, 1, 109.3, 115 , 0 );
setMoveKey( spep_0-3 + 54, 1, 109.2, 115 , 0 );
setMoveKey( spep_0-3 + 56, 1, 109.1, 115 , 0 );
setMoveKey( spep_0-1 + 68, 1, 109.1, 115 , 0 );

setScaleKey( spep_0 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 1, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 2, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 3, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 4, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 5, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_0-1 + 68, 1, 0.3, 0.3 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 68, 1, 0 );

--SE
-- 悟空突っ込んでくる
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 72 );
SE002 = playSeVer2( spep_0 + 68, 1068, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 68, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 76, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 85 );
SE005 = playSeVer2( spep_0 + 76, 1278, "",spep_0 + 198, 0, 70, -1);
SE006 = playSeVer2( spep_0 + 76, 1314, "",spep_0 + 202, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 76, SE006, 84 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 255 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 110 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);

   
    pauseAll( SP_dodge, 67);   
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--次の準備
spep_1=spep_0+148;
------------------------------------------------------
--殴る蹴る
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, punch_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 276, punch_f, 0 );
setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 274, punch_f, 255 );
setEffAlphaKey( spep_1 + 275, punch_f, 255 );
setEffAlphaKey( spep_1 + 276, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, punch_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 276, punch_b, 0 );
setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 274, punch_b, 255 );
setEffAlphaKey( spep_1 + 275, punch_b, 255 );
setEffAlphaKey( spep_1 + 276, punch_b, 0 );

--敵の動き
setDisp( spep_1-3 + 4, 1, 1 );
setDisp( spep_1-1 + 84, 1, 0 );

changeAnime( spep_1-3 + 4, 1, 107 );
changeAnime( spep_1-3 + 44, 1, 108 );
changeAnime( spep_1-3 + 74, 1, 107 );

setMoveKey( spep_1-3 + 4, 1, 69.8, -24.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, 133.5, -99.8 , 0 );
setMoveKey( spep_1-3 + 8, 1, 99, -110.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, 141.4, -76.6 , 0 );
setMoveKey( spep_1-3 + 12, 1, 114, -97.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 134.4, -118.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, 135.4, -120.1 , 0 );
setMoveKey( spep_1-3 + 18, 1, 136.4, -122 , 0 );
setMoveKey( spep_1-3 + 20, 1, 137.4, -124 , 0 );
setMoveKey( spep_1-3 + 22, 1, 138.4, -125.9 , 0 );
setMoveKey( spep_1-3 + 24, 1, 139.4, -127.8 , 0 );
setMoveKey( spep_1-3 + 26, 1, 140.4, -129.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 141.4, -131.7 , 0 );
setMoveKey( spep_1-3 + 30, 1, 142.4, -133.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 143.4, -135.6 , 0 );
setMoveKey( spep_1-3 + 34, 1, 144.4, -137.5 , 0 );
setMoveKey( spep_1-3 + 36, 1, 145.4, -139.4 , 0 );
setMoveKey( spep_1-3 + 38, 1, 146.4, -141.3 , 0 );
setMoveKey( spep_1-3 + 40, 1, 147.4, -143.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 148.4, -145.2 , 0 );
setMoveKey( spep_1-3 + 43, 1, 148.4, -145.2 , 0 );

setMoveKey( spep_1-3 + 44, 1, 160.4, 16.9 , 0 );
setMoveKey( spep_1-3 + 46, 1, 163, 91.6 , 0 );
setMoveKey( spep_1-3 + 48, 1, 161, 177.8 , 0 );
setMoveKey( spep_1-3 + 50, 1, 172.8, 234.2 , 0 );
setMoveKey( spep_1-3 + 52, 1, 163.8, 318.1 , 0 );
setMoveKey( spep_1-3 + 54, 1, 175.5, 315.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 171, 319.1 , 0 );
setMoveKey( spep_1-3 + 58, 1, 171.2, 320.7 , 0 );
setMoveKey( spep_1-3 + 60, 1, 171.3, 322.4 , 0 );
setMoveKey( spep_1-3 + 62, 1, 171.5, 324 , 0 );
setMoveKey( spep_1-3 + 64, 1, 171.6, 325.7 , 0 );
setMoveKey( spep_1-3 + 66, 1, 171.8, 327.3 , 0 );
setMoveKey( spep_1-3 + 68, 1, 171.9, 329 , 0 );
setMoveKey( spep_1-3 + 70, 1, 172.1, 330.6 , 0 );
setMoveKey( spep_1-3 + 72, 1, 172.2, 332.3 , 0 );
setMoveKey( spep_1-3 + 73, 1, 172.2, 332.3 , 0 );

setMoveKey( spep_1-3 + 74, 1, 248.3, 16.3 , 0 );
setMoveKey( spep_1-3 + 76, 1, 371.9, -5.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 495.5, -28 , 0 );
setMoveKey( spep_1-3 + 80, 1, 614.4, -38.7 , 0 );
setMoveKey( spep_1-3 + 82, 1, 747.2, -79.2 , 0 );
setMoveKey( spep_1-1 + 84, 1, 859.3, -92.2 , 0 );

setScaleKey( spep_1-3 + 4, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 6, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 8, 1, 1.9, 1.9 );
setScaleKey( spep_1-3 + 10, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 12, 1, 2, 2 );
setScaleKey( spep_1-3 + 14, 1, 2, 2 );
setScaleKey( spep_1-3 + 16, 1, 2.01, 2.01 );
setScaleKey( spep_1-3 + 20, 1, 2.01, 2.01 );
setScaleKey( spep_1-3 + 22, 1, 2.02, 2.02 );
setScaleKey( spep_1-3 + 26, 1, 2.02, 2.02 );
setScaleKey( spep_1-3 + 28, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 32, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 34, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 38, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 40, 1, 2.05, 2.05 );
setScaleKey( spep_1-3 + 42, 1, 2.05, 2.05 );
setScaleKey( spep_1-3 + 43, 1, 2.05, 2.05 );

setScaleKey( spep_1-3 + 44, 1, 5.04, 5.04 );
setScaleKey( spep_1-3 + 73, 1, 5.04, 5.04 );

setScaleKey( spep_1-3 + 74, 1, 2, 2 );
setScaleKey( spep_1-3 + 76, 1, 2.4, 2.4 );
setScaleKey( spep_1-3 + 78, 1, 2.8, 2.8 );
setScaleKey( spep_1-3 + 80, 1, 3.2, 3.2 );
setScaleKey( spep_1-3 + 82, 1, 3.6, 3.6 );
setScaleKey( spep_1-1 + 84, 1, 4, 4 );

setRotateKey( spep_1-3 + 4, 1, 15.3 );
setRotateKey( spep_1-3 + 43, 1, 15.3 );

setRotateKey( spep_1-3 + 44, 1, -42 );
setRotateKey( spep_1-3 + 73, 1, -42 );

setRotateKey( spep_1-3 + 74, 1, 0 );
setRotateKey( spep_1-1 + 84, 1, 0 );

--敵の動き
setDisp( spep_1-3 + 128, 1, 1 );
setDisp( spep_1-1 + 202, 1, 0 );

changeAnime( spep_1-3 + 128, 1, 107 );
changeAnime( spep_1-3 + 182, 1, 108 );

setMoveKey( spep_1-3 + 128, 1, -195, 171.4 , 0 );
setMoveKey( spep_1-3 + 130, 1, -182.2, 159.1 , 0 );
setMoveKey( spep_1-3 + 132, 1, -168.6, 146.6 , 0 );
setMoveKey( spep_1-3 + 134, 1, -156.1, 134.3 , 0 );
setMoveKey( spep_1-3 + 136, 1, -142.2, 121.7 , 0 );
setMoveKey( spep_1-3 + 138, 1, -130.1, 109.6 , 0 );
setMoveKey( spep_1-3 + 140, 1, -115.9, 96.9 , 0 );
setMoveKey( spep_1-3 + 142, 1, -104.1, 84.8 , 0 );
setMoveKey( spep_1-3 + 144, 1, -89.5, 72.1 , 0 );
setMoveKey( spep_1-3 + 146, 1, -78.1, 60.1 , 0 );
setMoveKey( spep_1-3 + 148, 1, -63.1, 47.2 , 0 );
setMoveKey( spep_1-3 + 150, 1, -52.1, 35.3 , 0 );
setMoveKey( spep_1-3 + 152, 1, -36.8, 22.4 , 0 );
setMoveKey( spep_1-3 + 154, 1, -26.1, 10.6 , 0 );
setMoveKey( spep_1-3 + 156, 1, -10.4, -2.4 , 0 );
setMoveKey( spep_1-3 + 158, 1, 0, -14.2 , 0 );
setMoveKey( spep_1-3 + 160, 1, 16, -27.3 , 0 );
setMoveKey( spep_1-3 + 162, 1, 26, -38.9 , 0 );
setMoveKey( spep_1-3 + 164, 1, 42.3, -52.1 , 0 );
setMoveKey( spep_1-3 + 166, 1, 52, -63.7 , 0 );
setMoveKey( spep_1-3 + 168, 1, 68.7, -76.9 , 0 );
setMoveKey( spep_1-3 + 170, 1, 78, -88.4 , 0 );
setMoveKey( spep_1-3 + 172, 1, 95, -101.7 , 0 );
setMoveKey( spep_1-3 + 174, 1, 104, -113.2 , 0 );
setMoveKey( spep_1-3 + 176, 1, 121.4, -126.6 , 0 );
setMoveKey( spep_1-3 + 178, 1, 130, -137.9 , 0 );
setMoveKey( spep_1-3 + 180, 1, 147.8, -151.4 , 0 );
setMoveKey( spep_1-3 + 181, 1, 147.8, -151.4 , 0 );

setMoveKey( spep_1-3 + 182, 1, 86.4, -153 , 0 );
setMoveKey( spep_1-3 + 184, 1, 94.4, -146.9 , 0 );
setMoveKey( spep_1-3 + 186, 1, 80.4, -160.9 , 0 );
setMoveKey( spep_1-3 + 188, 1, 92.4, -160.9 , 0 );
setMoveKey( spep_1-3 + 190, 1, 80.4, -144.9 , 0 );
setMoveKey( spep_1-3 + 192, 1, 170.9, -270.7 , 0 );
setMoveKey( spep_1-3 + 194, 1, 233.4, -408.5 , 0 );
setMoveKey( spep_1-3 + 196, 1, 321.9, -532.3 , 0 );
setMoveKey( spep_1-3 + 198, 1, 386.4, -640.2 , 0 );
setMoveKey( spep_1-3 + 200, 1, 462.9, -764 , 0 );
setMoveKey( spep_1-1 + 202, 1, 539.4, -887.8 , 0 );

setScaleKey( spep_1-3 + 128, 1, 0.05, 0.05 );
setScaleKey( spep_1-3 + 130, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 132, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 134, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 136, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 138, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 140, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 142, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 144, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 146, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 148, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 150, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 152, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 154, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 156, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 158, 1, 0.65, 0.65 );
setScaleKey( spep_1-3 + 160, 1, 0.71, 0.71 );
setScaleKey( spep_1-3 + 162, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 164, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 166, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 168, 1, 0.88, 0.88 );
setScaleKey( spep_1-3 + 170, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 172, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 174, 1, 0.97, 0.97 );
setScaleKey( spep_1-3 + 176, 1, 1.04, 1.04 );
setScaleKey( spep_1-3 + 178, 1, 1.05, 1.05 );
setScaleKey( spep_1-3 + 180, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 181, 1, 1.12, 1.12 );

setScaleKey( spep_1-3 + 182, 1, 3, 3 );
setScaleKey( spep_1-1 + 202, 1, 3, 3 );

setRotateKey( spep_1-3 + 128, 1, 26.6 );
setRotateKey( spep_1-3 + 181, 1, 26.6 );

setRotateKey( spep_1-3 + 182, 1, 26.6 );
setRotateKey( spep_1-3 + 184, 1, 26.7 );
setRotateKey( spep_1-3 + 190, 1, 26.7 );
setRotateKey( spep_1-3 + 192, 1, 31.4 );
setRotateKey( spep_1-3 + 194, 1, 36 );
setRotateKey( spep_1-3 + 196, 1, 40.7 );
setRotateKey( spep_1-3 + 198, 1, 45.4 );
setRotateKey( spep_1-3 + 200, 1, 50 );
setRotateKey( spep_1-1 + 202, 1, 54.7 );

--敵の動き
setDisp( spep_1-3 + 220, 1, 1 );
setDisp( spep_1-1 + 278, 1, 0 );

changeAnime( spep_1-3 + 220, 1, 108 );
changeAnime( spep_1-3 + 236, 1, 106 );
changeAnime( spep_1-3 + 250, 1, 108 );

setMoveKey( spep_1-3 + 220, 1, -8.1, 527.6 , 0 );
setMoveKey( spep_1-3 + 222, 1, 6.8, 438.1 , 0 );
setMoveKey( spep_1-3 + 224, 1, 21.7, 348.6 , 0 );
setMoveKey( spep_1-3 + 226, 1, 36.6, 259.1 , 0 );
setMoveKey( spep_1-3 + 228, 1, 51.5, 169.6 , 0 );
setMoveKey( spep_1-3 + 230, 1, 66.5, 80.1 , 0 );
setMoveKey( spep_1-3 + 232, 1, 81.4, -9.4 , 0 );
setMoveKey( spep_1-3 + 234, 1, 96.3, -98.9 , 0 );
setMoveKey( spep_1-3 + 235, 1, 96.3, -98.9 , 0 );

setMoveKey( spep_1-3 + 236, 1, 95.6, -83.1 , 0 );
setMoveKey( spep_1-3 + 238, 1, 103, -83.6 , 0 );
setMoveKey( spep_1-3 + 240, 1, 99.6, -65.2 , 0 );
setMoveKey( spep_1-3 + 242, 1, 107, -54.9 , 0 );
setMoveKey( spep_1-3 + 244, 1, 106.3, -47.3 , 0 );
setMoveKey( spep_1-3 + 246, 1, 108.3, -37 , 0 );
setMoveKey( spep_1-3 + 248, 1, 110.3, -26.7 , 0 );
setMoveKey( spep_1-3 + 249, 1, 110.3, -26.7 , 0 );

setMoveKey( spep_1-3 + 250, 1, 106.9, -0.2 , 0 );
setMoveKey( spep_1-3 + 252, 1, 119.1, -24.5 , 0 );
setMoveKey( spep_1-3 + 254, 1, 106.9, -11 , 0 );
setMoveKey( spep_1-3 + 256, 1, 124.5, -21.8 , 0 );
setMoveKey( spep_1-3 + 258, 1, 117.7, -5.6 , 0 );
setMoveKey( spep_1-3 + 260, 1, 116.4, -24.5 , 0 );
setMoveKey( spep_1-3 + 262, 1, 124.8, -16.4 , 0 );
setMoveKey( spep_1-3 + 264, 1, 130.5, -16.4 , 0 );
setMoveKey( spep_1-3 + 266, 1, 136.2, -16.4 , 0 );
setMoveKey( spep_1-3 + 268, 1, 141.9, -16.4 , 0 );
setMoveKey( spep_1-3 + 270, 1, 147.6, -16.4 , 0 );
setMoveKey( spep_1-3 + 272, 1, 153.4, -16.4 , 0 );
setMoveKey( spep_1-3 + 274, 1, 159.1, -16.4 , 0 );
setMoveKey( spep_1-3 + 276, 1, 164.8, -16.4 , 0 );
setMoveKey( spep_1-1 + 278, 1, 170.5, -16.4 , 0 );

setScaleKey( spep_1-3 + 220, 1, 1.1, 1.1 );
setScaleKey( spep_1-3 + 235, 1, 1.1, 1.1 );

setScaleKey( spep_1-3 + 236, 1, 1, 1 );
setScaleKey( spep_1-3 + 249, 1, 1, 1 );

setScaleKey( spep_1-3 + 250, 1, 1.1, 1.1 );
setScaleKey( spep_1-1 + 278, 1, 1.1, 1.1 );

setRotateKey( spep_1-3 + 220, 1, 90 );
setRotateKey( spep_1-3 + 235, 1, 90 );

setRotateKey( spep_1-3 + 236, 1, 30.8 );
setRotateKey( spep_1-3 + 249, 1, 30.8 );

setRotateKey( spep_1-3 + 250, 1, 0 );
setRotateKey( spep_1-1 + 278, 1, 0 );

--SE
--パンチ
SE007 = playSeVer2( spep_1 + 0, 1003, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 6, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE008, 90 );
SE009 = playSeVer2( spep_1 + 6, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE009, 83 );

--膝蹴り
SE010 = playSeVer2( spep_1 + 42, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 42, SE010, 86 );
SE011 = playSeVer2( spep_1 + 42, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 42, SE011, 94 );

--蹴り飛ばし
SE012 = playSeVer2( spep_1 + 72, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 72, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE013, 84 );

--瞬間移動
SE014 = playSeVer2( spep_1 + 106, 1109, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_1 + 122, 1183, "",spep_1 + 210, 0, 24, -1);
SE016 = playSeVer2( spep_1 + 122, 1121, "",spep_1 + 210, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 122, SE016, 59 );

--瞬間移動
SE017 = playSeVer2( spep_1 + 142, 1109, "", 0, 0, 0, -1);

--振りかぶり
SE018 = playSeVer2( spep_1 + 156, 1004, "", 0, 0, 0, -1);

--蹴り落とし
SE019 = playSeVer2( spep_1 + 180, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 180, SE019, 68 );
SE020 = playSeVer2( spep_1 + 180, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 180, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 182, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 182, SE022, 66 );

--瞬間移動
SE023 = playSeVer2( spep_1 + 232, 1109, "", 0, 0, 0, -1);

--横蹴り飛ばし
SE024 = playSeVer2( spep_1 + 234, 1008, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 248, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 248, SE025, 89 );
SE026 = playSeVer2( spep_1 + 250, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 250, SE026, 84 );
SE027 = playSeVer2( spep_1 + 252, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 252, SE027, 77 );

--敵飛んでいく
SE028 = playSeVer2( spep_1 + 266, 1183, "",spep_1 + 402, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 266, SE028, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 280, 0, 0, 0, 0, 255 );

--次の準備
spep_2=spep_1+276;
------------------------------------------------------
--瞬間移動～回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 208, kick_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 208, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 208, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 206, kick_f, 255 );
setEffAlphaKey( spep_2 + 207, kick_f, 255 );
setEffAlphaKey( spep_2 + 208, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 208, kick_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 208, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 208, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 206, kick_b, 255 );
setEffAlphaKey( spep_2 + 207, kick_b, 255 );
setEffAlphaKey( spep_2 + 208, kick_b, 0 );

--敵の動き
setDisp( spep_2-3 + 60, 1, 1 );
setDisp( spep_2-1 + 148, 1, 0 );

changeAnime( spep_2-3 + 60, 1, 107 );
changeAnime( spep_2-3 + 100, 1, 105 );
changeAnime( spep_2-3 + 120, 1, 107 );

setMoveKey( spep_2-3 + 60, 1, -248.2, -23.4 , 0 );
setMoveKey( spep_2-3 + 62, 1, -233.5, -19.6 , 0 );
setMoveKey( spep_2-3 + 64, 1, -218.7, -15.8 , 0 );
setMoveKey( spep_2-3 + 66, 1, -204, -11.9 , 0 );
setMoveKey( spep_2-3 + 68, 1, -189.2, -8.1 , 0 );
setMoveKey( spep_2-3 + 70, 1, -174.4, -4.3 , 0 );
setMoveKey( spep_2-3 + 72, 1, -159.6, -0.5 , 0 );
setMoveKey( spep_2-3 + 74, 1, -144.8, 3.3 , 0 );
setMoveKey( spep_2-3 + 76, 1, -130, 7.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, -128.1, 7.3 , 0 );
setMoveKey( spep_2-3 + 80, 1, -126.3, 7.4 , 0 );
setMoveKey( spep_2-3 + 82, 1, -124.3, 7.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, -122.4, 7.7 , 0 );
setMoveKey( spep_2-3 + 86, 1, -120.5, 7.8 , 0 );
setMoveKey( spep_2-3 + 88, 1, -118.5, 7.9 , 0 );
setMoveKey( spep_2-3 + 90, 1, -116.6, 8.1 , 0 );
setMoveKey( spep_2-3 + 92, 1, -114.7, 8.2 , 0 );
setMoveKey( spep_2-3 + 94, 1, -112.8, 8.3 , 0 );
setMoveKey( spep_2-3 + 96, 1, -110.9, 8.5 , 0 );
setMoveKey( spep_2-3 + 98, 1, -109, 8.6 , 0 );
setMoveKey( spep_2-3 + 99, 1, -109, 8.6 , 0 );

setMoveKey( spep_2-3 + 100, 1, -138.4, -567.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, -127, -479.4 , 0 );
setMoveKey( spep_2-3 + 104, 1, -115.9, -393.1 , 0 );
setMoveKey( spep_2-3 + 106, 1, -104.9, -308.6 , 0 );
setMoveKey( spep_2-3 + 108, 1, -94.2, -225.9 , 0 );
setMoveKey( spep_2-3 + 110, 1, -91.6, -215.1 , 0 );
setMoveKey( spep_2-3 + 112, 1, -89, -204.4 , 0 );
setMoveKey( spep_2-3 + 114, 1, -86.5, -193.9 , 0 );
setMoveKey( spep_2-3 + 116, 1, -84, -183.6 , 0 );
setMoveKey( spep_2-3 + 118, 1, -81.6, -173.5 , 0 );
setMoveKey( spep_2-3 + 119, 1, -81.6, -173.5 , 0 );

setMoveKey( spep_2-3 + 120, 1, 228.1, -22.6 , 0 );
setMoveKey( spep_2-3 + 122, 1, 224, -6.1 , 0 );
setMoveKey( spep_2-3 + 124, 1, 241.2, -32.5 , 0 );
setMoveKey( spep_2-3 + 126, 1, 229, -19 , 0 );
setMoveKey( spep_2-3 + 128, 1, 250.6, -23.9 , 0 );
setMoveKey( spep_2-3 + 130, 1, 246.1, -13.3 , 0 );
setMoveKey( spep_2-3 + 132, 1, 242, -5.7 , 0 );
setMoveKey( spep_2-3 + 134, 1, 379.7, -31.2 , 0 );
setMoveKey( spep_2-3 + 136, 1, 489.3, -18.4 , 0 );
setMoveKey( spep_2-3 + 138, 1, 632.1, -23.5 , 0 );
setMoveKey( spep_2-3 + 140, 1, 749.3, -13.3 , 0 );
setMoveKey( spep_2-3 + 142, 1, 874.3, -21 , 0 );
setMoveKey( spep_2-3 + 144, 1, 999.2, -21 , 0 );
setMoveKey( spep_2-3 + 146, 1, 1124.1, -21 , 0 );
setMoveKey( spep_2-1 + 148, 1, 1249.1, -21 , 0 );

setScaleKey( spep_2-3 + 60, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 62, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 64, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 66, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 68, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 70, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 72, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 74, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 76, 1, 0.5, 0.5 );
setScaleKey( spep_2-3 + 78, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 80, 1, 0.52, 0.52 );
setScaleKey( spep_2-3 + 82, 1, 0.53, 0.53 );
setScaleKey( spep_2-3 + 84, 1, 0.55, 0.55 );
setScaleKey( spep_2-3 + 86, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 88, 1, 0.57, 0.57 );
setScaleKey( spep_2-3 + 90, 1, 0.58, 0.58 );
setScaleKey( spep_2-3 + 92, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 94, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 96, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 98, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 99, 1, 0.62, 0.62 );

setScaleKey( spep_2-3 + 100, 1, 8.4, 8.4 );
setScaleKey( spep_2-3 + 102, 1, 7.57, 7.57 );
setScaleKey( spep_2-3 + 104, 1, 6.75, 6.75 );
setScaleKey( spep_2-3 + 106, 1, 5.94, 5.94 );
setScaleKey( spep_2-3 + 108, 1, 5.16, 5.16 );
setScaleKey( spep_2-3 + 110, 1, 4.99, 4.99 );
setScaleKey( spep_2-3 + 112, 1, 4.82, 4.82 );
setScaleKey( spep_2-3 + 114, 1, 4.65, 4.65 );
setScaleKey( spep_2-3 + 116, 1, 4.49, 4.49 );
setScaleKey( spep_2-3 + 118, 1, 4.33, 4.33 );
setScaleKey( spep_2-3 + 119, 1, 4.33, 4.33 );

setScaleKey( spep_2-3 + 120, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 122, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 124, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 126, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 128, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 130, 1, 1.5, 1.5 );
setScaleKey( spep_2-1 + 148, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 60, 1, 0 );
setRotateKey( spep_2-3 + 119, 1, 0 );

setRotateKey( spep_2-3 + 120, 1, 10.8 );
setRotateKey( spep_2-3 + 121, 1, 10.8 );
setRotateKey( spep_2-3 + 122, 1, 11 );
setRotateKey( spep_2-1 + 148, 1, 11 );

--敵の動き
setDisp( spep_2-3 + 172, 1, 1 );
setDisp( spep_2-1 + 210, 1, 0 );

changeAnime( spep_2-3 + 172, 1, 105 );

setMoveKey( spep_2-3 + 172, 1, 37.9, 27.7 , 0 );
setMoveKey( spep_2-3 + 174, 1, 61.6, 60.3 , 0 );
setMoveKey( spep_2-3 + 176, 1, 85.1, 92.5 , 0 );
setMoveKey( spep_2-3 + 178, 1, 108.3, 124.5 , 0 );
setMoveKey( spep_2-3 + 180, 1, 131.3, 156.1 , 0 );
setMoveKey( spep_2-3 + 182, 1, 154.1, 187.5 , 0 );
setMoveKey( spep_2-3 + 184, 1, 154.5, 188.3 , 0 );
setMoveKey( spep_2-3 + 186, 1, 154.9, 189 , 0 );
setMoveKey( spep_2-3 + 188, 1, 155.2, 189.8 , 0 );
setMoveKey( spep_2-3 + 190, 1, 155.6, 190.5 , 0 );
setMoveKey( spep_2-3 + 192, 1, 155.9, 191.2 , 0 );
setMoveKey( spep_2-3 + 194, 1, 156.3, 191.9 , 0 );
setMoveKey( spep_2-3 + 196, 1, 156.6, 192.7 , 0 );
setMoveKey( spep_2-3 + 198, 1, 157, 193.4 , 0 );
setMoveKey( spep_2-3 + 200, 1, 157.2, 194.1 , 0 );
setMoveKey( spep_2-3 + 202, 1, 157.6, 194.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 157.9, 195.5 , 0 );
setMoveKey( spep_2-3 + 206, 1, 158.3, 196.2 , 0 );
setMoveKey( spep_2-3 + 208, 1, 158.6, 197 , 0 );
setMoveKey( spep_2-1 + 210, 1, 158.9, 197.5 , 0 );

setScaleKey( spep_2-3 + 172, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 174, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 176, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 178, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 180, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 182, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 184, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 186, 1, 0.49, 0.49 );
setScaleKey( spep_2-3 + 188, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 190, 1, 0.44, 0.44 );
setScaleKey( spep_2-3 + 192, 1, 0.42, 0.42 );
setScaleKey( spep_2-3 + 194, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 196, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 198, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 200, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 202, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 204, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 206, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 208, 1, 0.24, 0.24 );
setScaleKey( spep_2-1 + 210, 1, 0.22, 0.22 );

setRotateKey( spep_2-3 + 172, 1, 0 );
setRotateKey( spep_2-1 + 210, 1, 0 );

--SE
--瞬間移動構える
SE029 = playSeVer2( spep_2 + 14, 1006, "",spep_2 + 32, 0, 4, -1);
setPitch( spep_2 + 14, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );

--瞬間移動
SE030 = playSeVer2( spep_2 + 34, 1109, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 64, 1109, "", 0, 0, 0, -1);

--後ろ回転蹴り
SE032 = playSeVer2( spep_2 + 118, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE033 = playSeVer2( spep_2 + 162, 1183, "",spep_2 + 262, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 162, SE033, 81 );
SE034 = playSeVer2( spep_2 + 162, 1121, "",spep_2 + 262, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 162, SE034, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 210, 0, 0, 0, 0, 255 );

--次の準備
spep_3=spep_2+208;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 90, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 90, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_3 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--かめはめ波溜め
SE035 = playSeVer2( spep_3 + 4, 1210, "",spep_3 + 156, 26, 30, -1);
setStartTimeMs( SE035,  967 );
SE036 = playSeVer2( spep_3 + 0, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE036, 94 );

--顔カットイン
SE037 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_3 + 82, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );

--次の準備
spep_4=spep_3+90;
------------------------------------------------------
--ため～発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_4 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, beam_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_f, 0 );
setEffRotateKey( spep_4 + 80, beam_f, 0 );
setEffAlphaKey( spep_4 + 0, beam_f, 255 );
setEffAlphaKey( spep_4 + 80, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_4 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, beam_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_b, 0 );
setEffRotateKey( spep_4 + 80, beam_b, 0 );
setEffAlphaKey( spep_4 + 0, beam_b, 255 );
setEffAlphaKey( spep_4 + 80, beam_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 54, 1, 0 );

changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 203.1, 405.2 , 0 );
setMoveKey( spep_4 + 2, 1, 203.8, 406.5 , 0 );
setMoveKey( spep_4 + 4, 1, 204.6, 407.8 , 0 );
setMoveKey( spep_4 + 6, 1, 205.3, 409.1 , 0 );
setMoveKey( spep_4 + 8, 1, 206.1, 410.4 , 0 );
setMoveKey( spep_4 + 10, 1, 206.8, 411.7 , 0 );
setMoveKey( spep_4 + 12, 1, 207.6, 413 , 0 );
setMoveKey( spep_4 + 14, 1, 208.3, 414.3 , 0 );
setMoveKey( spep_4 + 16, 1, 209.1, 415.6 , 0 );
setMoveKey( spep_4 + 18, 1, 209.8, 416.8 , 0 );
setMoveKey( spep_4 + 20, 1, 210.6, 418.1 , 0 );
setMoveKey( spep_4 + 22, 1, 211.3, 419.4 , 0 );
setMoveKey( spep_4 + 24, 1, 212.1, 420.7 , 0 );
setMoveKey( spep_4 + 26, 1, 212.8, 422 , 0 );
setMoveKey( spep_4 + 28, 1, 213.5, 423.3 , 0 );
setMoveKey( spep_4 + 30, 1, 214.3, 424.6 , 0 );
setMoveKey( spep_4 + 32, 1, 215, 425.9 , 0 );
setMoveKey( spep_4 + 34, 1, 215.8, 427.2 , 0 );
setMoveKey( spep_4 + 36, 1, 216.5, 428.5 , 0 );
setMoveKey( spep_4 + 38, 1, 217.3, 429.8 , 0 );
setMoveKey( spep_4 + 40, 1, 210.2, 446.7 , 0 );
setMoveKey( spep_4 + 42, 1, 226.6, 420.7 , 0 );
setMoveKey( spep_4 + 44, 1, 211.7, 449.3 , 0 );
setMoveKey( spep_4 + 46, 1, 228.1, 423.3 , 0 );
setMoveKey( spep_4 + 48, 1, 213.2, 451.9 , 0 );
setMoveKey( spep_4 + 50, 1, 221.8, 425.9 , 0 );
setMoveKey( spep_4 + 52, 1, 234.2, 446.7 , 0 );
setMoveKey( spep_4 + 54, 1, 223.3, 428.4 , 0 );

setScaleKey( spep_4 + 0, 1, 0.36, 0.36 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 6, 1, 0.33, 0.33 );
setScaleKey( spep_4 + 8, 1, 0.32, 0.32 );
setScaleKey( spep_4 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 12, 1, 0.3, 0.3 );
setScaleKey( spep_4 + 14, 1, 0.29, 0.29 );
setScaleKey( spep_4 + 16, 1, 0.28, 0.28 );
setScaleKey( spep_4 + 18, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 20, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 22, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 24, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 26, 1, 0.23, 0.23 );
setScaleKey( spep_4 + 28, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 30, 1, 0.21, 0.21 );
setScaleKey( spep_4 + 32, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 34, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 36, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 38, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 40, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 42, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 44, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 46, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 48, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 50, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 52, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 54, 1, 0.1, 0.1 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 54, 1, 0 );

--SE
--かめはめ波発射
SE038 = playSeVer2( spep_4 + 36, 1284, "",spep_4 + 94, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 36, SE038, 86 );
SE039 = playSeVer2( spep_4 + 36, 1213, "",spep_4 + 94, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 36, SE039, 85 );
SE040 = playSeVer2( spep_4 + 36, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 36, SE040, 80 );

--白フェード
entryFade( spep_4 + 72, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 80, 0, 0, 0, 0, 255 );

--次の準備
spep_5=spep_4+80;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then

    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 92; 
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 286, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 286, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 286, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 286, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 286, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 286, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 286, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 286, finish_b, 255 );

--敵の動き
setDisp( spep_6-3 + 50, 1, 1 );
setDisp( spep_6-1 + 84, 1, 0 );

changeAnime( spep_6-3 + 50, 1, 105 );

setMoveKey( spep_6-3 + 50, 1, 139.2, 124.3 , 0 );
setMoveKey( spep_6-3 + 52, 1, 148.2, 104.2 , 0 );
setMoveKey( spep_6-3 + 54, 1, 136, 113.2 , 0 );
setMoveKey( spep_6-3 + 56, 1, 145, 106.4 , 0 );
setMoveKey( spep_6-3 + 58, 1, 138.1, 112.8 , 0 );
setMoveKey( spep_6-3 + 60, 1, 131.2, 116.5 , 0 );
setMoveKey( spep_6-3 + 62, 1, 140.2, 96.4 , 0 );
setMoveKey( spep_6-3 + 64, 1, 128, 105.4 , 0 );
setMoveKey( spep_6-3 + 66, 1, 137.1, 98.6 , 0 );
setMoveKey( spep_6-3 + 68, 1, 130.2, 104.9 , 0 );
setMoveKey( spep_6-3 + 70, 1, 123.3, 108.7 , 0 );
setMoveKey( spep_6-3 + 72, 1, 132.3, 88.6 , 0 );
setMoveKey( spep_6-3 + 74, 1, 120.1, 97.6 , 0 );
setMoveKey( spep_6-3 + 76, 1, 129.1, 90.7 , 0 );
setMoveKey( spep_6-3 + 78, 1, 122.2, 97.1 , 0 );
setMoveKey( spep_6-3 + 80, 1, 115.3, 100.9 , 0 );
setMoveKey( spep_6-3 + 82, 1, 124.4, 80.8 , 0 );
setMoveKey( spep_6-1 + 84, 1, 112.2, 89.8 , 0 );

setScaleKey( spep_6-3 + 50, 1, 1, 1 );
setScaleKey( spep_6-3 + 52, 1, 1.05, 1.05 );
setScaleKey( spep_6-3 + 54, 1, 1.09, 1.09 );
setScaleKey( spep_6-3 + 56, 1, 1.14, 1.14 );
setScaleKey( spep_6-3 + 58, 1, 1.19, 1.19 );
setScaleKey( spep_6-3 + 60, 1, 1.24, 1.24 );
setScaleKey( spep_6-3 + 62, 1, 1.28, 1.28 );
setScaleKey( spep_6-3 + 64, 1, 1.33, 1.33 );
setScaleKey( spep_6-3 + 66, 1, 1.38, 1.38 );
setScaleKey( spep_6-3 + 68, 1, 1.42, 1.42 );
setScaleKey( spep_6-3 + 70, 1, 1.47, 1.47 );
setScaleKey( spep_6-3 + 72, 1, 1.52, 1.52 );
setScaleKey( spep_6-3 + 74, 1, 1.56, 1.56 );
setScaleKey( spep_6-3 + 76, 1, 1.61, 1.61 );
setScaleKey( spep_6-3 + 78, 1, 1.66, 1.66 );
setScaleKey( spep_6-3 + 80, 1, 1.71, 1.71 );
setScaleKey( spep_6-3 + 82, 1, 1.75, 1.75 );
setScaleKey( spep_6-1 + 84, 1, 1.8, 1.8 );

setRotateKey( spep_6-3 + 50, 1, 17.6 );
setRotateKey( spep_6-3 + 52, 1, 17.7 );
setRotateKey( spep_6-1 + 84, 1, 17.7 );

--SE
--かめはめ波発射
SE042 = playSeVer2( spep_6 + 0, 1284, "",spep_6 + 100, 6, 40, -1);
setStartTimeMs( SE042,  383 );
SE043 = playSeVer2( spep_6 + 0, 1213, "",spep_6 + 164, 6, 14, -1);
setSeVolumeByWorkId( spep_6 + 0, SE043, 63 );
setStartTimeMs( SE043,  300 );
SE044 = playSeVer2( spep_6 + 2, 1146, "",spep_6 + 164, 0, 14, -1);

--かめはめ波飛んでいく
SE045 = playSeVer2( spep_6 + 48, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 48, SE045, 122 );
SE046 = playSeVer2( spep_6 + 48, 1211, "",spep_6 + 164, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 48, SE046, 363 );
SE047 = playSeVer2( spep_6 + 48, 1161, "",spep_6 + 164, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 48, SE047, 129 );

--悟空アップ
SE048 = playSeVer2( spep_6 + 88, 1258, "",spep_6 + 174, 0, 14, -1);
setSeVolumeByWorkId( spep_6 + 88, SE048, 72 );
SE049 = playSeVer2( spep_6 + 98, 1264, "",spep_6 + 174, 0, 14, -1);

--爆発
SE050 = playSeVer2( spep_6 + 148, 1024, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_6 + 148, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 164 );
endPhase( spep_6 + 276 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開幕～前方突進
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
opening_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, opening_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, opening_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_f, 0 );
setEffRotateKey( spep_0 + 148, opening_f, 0 );
setEffAlphaKey( spep_0 + 0, opening_f, 255 );
setEffAlphaKey( spep_0 + 146, opening_f, 255 );
setEffAlphaKey( spep_0 + 147, opening_f, 255 );
setEffAlphaKey( spep_0 + 148, opening_f, 0 );

-- ** エフェクト等 ** --
opening_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 148, opening_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, opening_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_b, 0 );
setEffRotateKey( spep_0 + 148, opening_b, 0 );
setEffAlphaKey( spep_0 + 0, opening_b, 255 );
setEffAlphaKey( spep_0 + 146, opening_b, 255 );
setEffAlphaKey( spep_0 + 147, opening_b, 255 );
setEffAlphaKey( spep_0 + 148, opening_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 68, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 120.7, 115 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 118.8, 115 , 0 );
setMoveKey( spep_0-3 + 4, 1, 117.9, 115 , 0 );
setMoveKey( spep_0-3 + 5, 1, 117.9, 115 , 0 );
setMoveKey( spep_0-3 + 6, 1, 117.2, 115 , 0 );
setMoveKey( spep_0-3 + 7, 1, 117.2, 115 , 0 );
setMoveKey( spep_0-3 + 8, 1, 116.5, 115 , 0 );
setMoveKey( spep_0-3 + 9, 1, 116.5, 115 , 0 );
setMoveKey( spep_0-3 + 10, 1, 115.9, 115 , 0 );
setMoveKey( spep_0-3 + 12, 1, 115.4, 115 , 0 );
setMoveKey( spep_0-3 + 14, 1, 114.9, 115 , 0 );
setMoveKey( spep_0-3 + 16, 1, 114.4, 115 , 0 );
setMoveKey( spep_0-3 + 18, 1, 113.9, 115 , 0 );
setMoveKey( spep_0-3 + 20, 1, 113.5, 115 , 0 );
setMoveKey( spep_0-3 + 22, 1, 113.1, 115 , 0 );
setMoveKey( spep_0-3 + 24, 1, 112.7, 115 , 0 );
setMoveKey( spep_0-3 + 26, 1, 112.3, 115 , 0 );
setMoveKey( spep_0-3 + 28, 1, 112, 115 , 0 );
setMoveKey( spep_0-3 + 30, 1, 111.7, 115 , 0 );
setMoveKey( spep_0-3 + 32, 1, 111.3, 115 , 0 );
setMoveKey( spep_0-3 + 34, 1, 111.1, 115 , 0 );
setMoveKey( spep_0-3 + 36, 1, 110.8, 115 , 0 );
setMoveKey( spep_0-3 + 38, 1, 110.5, 115 , 0 );
setMoveKey( spep_0-3 + 40, 1, 110.3, 115 , 0 );
setMoveKey( spep_0-3 + 42, 1, 110, 115 , 0 );
setMoveKey( spep_0-3 + 44, 1, 109.8, 115 , 0 );
setMoveKey( spep_0-3 + 46, 1, 109.7, 115 , 0 );
setMoveKey( spep_0-3 + 48, 1, 109.5, 115 , 0 );
setMoveKey( spep_0-3 + 50, 1, 109.4, 115 , 0 );
setMoveKey( spep_0-3 + 52, 1, 109.3, 115 , 0 );
setMoveKey( spep_0-3 + 54, 1, 109.2, 115 , 0 );
setMoveKey( spep_0-3 + 56, 1, 109.1, 115 , 0 );
setMoveKey( spep_0-1 + 68, 1, 109.1, 115 , 0 );

setScaleKey( spep_0 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 1, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 2, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 3, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 4, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 5, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_0-1 + 68, 1, 0.3, 0.3 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 68, 1, 0 );

--SE
-- 悟空突っ込んでくる
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 72 );
SE002 = playSeVer2( spep_0 + 68, 1068, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 68, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 76, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 85 );
SE005 = playSeVer2( spep_0 + 76, 1278, "",spep_0 + 198, 0, 70, -1);
SE006 = playSeVer2( spep_0 + 76, 1314, "",spep_0 + 202, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 76, SE006, 84 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 255 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 110 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);

   
    pauseAll( SP_dodge, 67);   
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

--次の準備
spep_1=spep_0+148;
------------------------------------------------------
--殴る蹴る
------------------------------------------------------
-- ** エフェクト等 ** --
punch_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, punch_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 276, punch_f, 0 );
setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 274, punch_f, 255 );
setEffAlphaKey( spep_1 + 275, punch_f, 255 );
setEffAlphaKey( spep_1 + 276, punch_f, 0 );

-- ** エフェクト等 ** --
punch_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 276, punch_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 276, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 276, punch_b, 0 );
setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 274, punch_b, 255 );
setEffAlphaKey( spep_1 + 275, punch_b, 255 );
setEffAlphaKey( spep_1 + 276, punch_b, 0 );

--敵の動き
setDisp( spep_1-3 + 4, 1, 1 );
setDisp( spep_1-1 + 84, 1, 0 );

changeAnime( spep_1-3 + 4, 1, 107 );
changeAnime( spep_1-3 + 44, 1, 108 );
changeAnime( spep_1-3 + 74, 1, 107 );

setMoveKey( spep_1-3 + 4, 1, 69.8, -24.3 , 0 );
setMoveKey( spep_1-3 + 6, 1, 133.5, -99.8 , 0 );
setMoveKey( spep_1-3 + 8, 1, 99, -110.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, 141.4, -76.6 , 0 );
setMoveKey( spep_1-3 + 12, 1, 114, -97.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 134.4, -118.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, 135.4, -120.1 , 0 );
setMoveKey( spep_1-3 + 18, 1, 136.4, -122 , 0 );
setMoveKey( spep_1-3 + 20, 1, 137.4, -124 , 0 );
setMoveKey( spep_1-3 + 22, 1, 138.4, -125.9 , 0 );
setMoveKey( spep_1-3 + 24, 1, 139.4, -127.8 , 0 );
setMoveKey( spep_1-3 + 26, 1, 140.4, -129.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 141.4, -131.7 , 0 );
setMoveKey( spep_1-3 + 30, 1, 142.4, -133.6 , 0 );
setMoveKey( spep_1-3 + 32, 1, 143.4, -135.6 , 0 );
setMoveKey( spep_1-3 + 34, 1, 144.4, -137.5 , 0 );
setMoveKey( spep_1-3 + 36, 1, 145.4, -139.4 , 0 );
setMoveKey( spep_1-3 + 38, 1, 146.4, -141.3 , 0 );
setMoveKey( spep_1-3 + 40, 1, 147.4, -143.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 148.4, -145.2 , 0 );
setMoveKey( spep_1-3 + 43, 1, 148.4, -145.2 , 0 );

setMoveKey( spep_1-3 + 44, 1, 160.4, 16.9 , 0 );
setMoveKey( spep_1-3 + 46, 1, 163, 91.6 , 0 );
setMoveKey( spep_1-3 + 48, 1, 161, 177.8 , 0 );
setMoveKey( spep_1-3 + 50, 1, 172.8, 234.2 , 0 );
setMoveKey( spep_1-3 + 52, 1, 163.8, 318.1 , 0 );
setMoveKey( spep_1-3 + 54, 1, 175.5, 315.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 171, 319.1 , 0 );
setMoveKey( spep_1-3 + 58, 1, 171.2, 320.7 , 0 );
setMoveKey( spep_1-3 + 60, 1, 171.3, 322.4 , 0 );
setMoveKey( spep_1-3 + 62, 1, 171.5, 324 , 0 );
setMoveKey( spep_1-3 + 64, 1, 171.6, 325.7 , 0 );
setMoveKey( spep_1-3 + 66, 1, 171.8, 327.3 , 0 );
setMoveKey( spep_1-3 + 68, 1, 171.9, 329 , 0 );
setMoveKey( spep_1-3 + 70, 1, 172.1, 330.6 , 0 );
setMoveKey( spep_1-3 + 72, 1, 172.2, 332.3 , 0 );
setMoveKey( spep_1-3 + 73, 1, 172.2, 332.3 , 0 );

setMoveKey( spep_1-3 + 74, 1, 248.3, 16.3 , 0 );
setMoveKey( spep_1-3 + 76, 1, 371.9, -5.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 495.5, -28 , 0 );
setMoveKey( spep_1-3 + 80, 1, 614.4, -38.7 , 0 );
setMoveKey( spep_1-3 + 82, 1, 747.2, -79.2 , 0 );
setMoveKey( spep_1-1 + 84, 1, 859.3, -92.2 , 0 );

setScaleKey( spep_1-3 + 4, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 6, 1, 1.85, 1.85 );
setScaleKey( spep_1-3 + 8, 1, 1.9, 1.9 );
setScaleKey( spep_1-3 + 10, 1, 1.95, 1.95 );
setScaleKey( spep_1-3 + 12, 1, 2, 2 );
setScaleKey( spep_1-3 + 14, 1, 2, 2 );
setScaleKey( spep_1-3 + 16, 1, 2.01, 2.01 );
setScaleKey( spep_1-3 + 20, 1, 2.01, 2.01 );
setScaleKey( spep_1-3 + 22, 1, 2.02, 2.02 );
setScaleKey( spep_1-3 + 26, 1, 2.02, 2.02 );
setScaleKey( spep_1-3 + 28, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 32, 1, 2.03, 2.03 );
setScaleKey( spep_1-3 + 34, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 38, 1, 2.04, 2.04 );
setScaleKey( spep_1-3 + 40, 1, 2.05, 2.05 );
setScaleKey( spep_1-3 + 42, 1, 2.05, 2.05 );
setScaleKey( spep_1-3 + 43, 1, 2.05, 2.05 );

setScaleKey( spep_1-3 + 44, 1, 5.04, 5.04 );
setScaleKey( spep_1-3 + 73, 1, 5.04, 5.04 );

setScaleKey( spep_1-3 + 74, 1, 2, 2 );
setScaleKey( spep_1-3 + 76, 1, 2.4, 2.4 );
setScaleKey( spep_1-3 + 78, 1, 2.8, 2.8 );
setScaleKey( spep_1-3 + 80, 1, 3.2, 3.2 );
setScaleKey( spep_1-3 + 82, 1, 3.6, 3.6 );
setScaleKey( spep_1-1 + 84, 1, 4, 4 );

setRotateKey( spep_1-3 + 4, 1, 15.3 );
setRotateKey( spep_1-3 + 43, 1, 15.3 );

setRotateKey( spep_1-3 + 44, 1, -42 );
setRotateKey( spep_1-3 + 73, 1, -42 );

setRotateKey( spep_1-3 + 74, 1, 0 );
setRotateKey( spep_1-1 + 84, 1, 0 );

--敵の動き
setDisp( spep_1-3 + 128, 1, 1 );
setDisp( spep_1-1 + 202, 1, 0 );

changeAnime( spep_1-3 + 128, 1, 107 );
changeAnime( spep_1-3 + 182, 1, 108 );

setMoveKey( spep_1-3 + 128, 1, -195, 171.4 , 0 );
setMoveKey( spep_1-3 + 130, 1, -182.2, 159.1 , 0 );
setMoveKey( spep_1-3 + 132, 1, -168.6, 146.6 , 0 );
setMoveKey( spep_1-3 + 134, 1, -156.1, 134.3 , 0 );
setMoveKey( spep_1-3 + 136, 1, -142.2, 121.7 , 0 );
setMoveKey( spep_1-3 + 138, 1, -130.1, 109.6 , 0 );
setMoveKey( spep_1-3 + 140, 1, -115.9, 96.9 , 0 );
setMoveKey( spep_1-3 + 142, 1, -104.1, 84.8 , 0 );
setMoveKey( spep_1-3 + 144, 1, -89.5, 72.1 , 0 );
setMoveKey( spep_1-3 + 146, 1, -78.1, 60.1 , 0 );
setMoveKey( spep_1-3 + 148, 1, -63.1, 47.2 , 0 );
setMoveKey( spep_1-3 + 150, 1, -52.1, 35.3 , 0 );
setMoveKey( spep_1-3 + 152, 1, -36.8, 22.4 , 0 );
setMoveKey( spep_1-3 + 154, 1, -26.1, 10.6 , 0 );
setMoveKey( spep_1-3 + 156, 1, -10.4, -2.4 , 0 );
setMoveKey( spep_1-3 + 158, 1, 0, -14.2 , 0 );
setMoveKey( spep_1-3 + 160, 1, 16, -27.3 , 0 );
setMoveKey( spep_1-3 + 162, 1, 26, -38.9 , 0 );
setMoveKey( spep_1-3 + 164, 1, 42.3, -52.1 , 0 );
setMoveKey( spep_1-3 + 166, 1, 52, -63.7 , 0 );
setMoveKey( spep_1-3 + 168, 1, 68.7, -76.9 , 0 );
setMoveKey( spep_1-3 + 170, 1, 78, -88.4 , 0 );
setMoveKey( spep_1-3 + 172, 1, 95, -101.7 , 0 );
setMoveKey( spep_1-3 + 174, 1, 104, -113.2 , 0 );
setMoveKey( spep_1-3 + 176, 1, 121.4, -126.6 , 0 );
setMoveKey( spep_1-3 + 178, 1, 130, -137.9 , 0 );
setMoveKey( spep_1-3 + 180, 1, 147.8, -151.4 , 0 );
setMoveKey( spep_1-3 + 181, 1, 147.8, -151.4 , 0 );

setMoveKey( spep_1-3 + 182, 1, 86.4, -153 , 0 );
setMoveKey( spep_1-3 + 184, 1, 94.4, -146.9 , 0 );
setMoveKey( spep_1-3 + 186, 1, 80.4, -160.9 , 0 );
setMoveKey( spep_1-3 + 188, 1, 92.4, -160.9 , 0 );
setMoveKey( spep_1-3 + 190, 1, 80.4, -144.9 , 0 );
setMoveKey( spep_1-3 + 192, 1, 170.9, -270.7 , 0 );
setMoveKey( spep_1-3 + 194, 1, 233.4, -408.5 , 0 );
setMoveKey( spep_1-3 + 196, 1, 321.9, -532.3 , 0 );
setMoveKey( spep_1-3 + 198, 1, 386.4, -640.2 , 0 );
setMoveKey( spep_1-3 + 200, 1, 462.9, -764 , 0 );
setMoveKey( spep_1-1 + 202, 1, 539.4, -887.8 , 0 );

setScaleKey( spep_1-3 + 128, 1, 0.05, 0.05 );
setScaleKey( spep_1-3 + 130, 1, 0.09, 0.09 );
setScaleKey( spep_1-3 + 132, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 134, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 136, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 138, 1, 0.25, 0.25 );
setScaleKey( spep_1-3 + 140, 1, 0.3, 0.3 );
setScaleKey( spep_1-3 + 142, 1, 0.33, 0.33 );
setScaleKey( spep_1-3 + 144, 1, 0.38, 0.38 );
setScaleKey( spep_1-3 + 146, 1, 0.41, 0.41 );
setScaleKey( spep_1-3 + 148, 1, 0.46, 0.46 );
setScaleKey( spep_1-3 + 150, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 152, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 154, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 156, 1, 0.63, 0.63 );
setScaleKey( spep_1-3 + 158, 1, 0.65, 0.65 );
setScaleKey( spep_1-3 + 160, 1, 0.71, 0.71 );
setScaleKey( spep_1-3 + 162, 1, 0.73, 0.73 );
setScaleKey( spep_1-3 + 164, 1, 0.79, 0.79 );
setScaleKey( spep_1-3 + 166, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 168, 1, 0.88, 0.88 );
setScaleKey( spep_1-3 + 170, 1, 0.89, 0.89 );
setScaleKey( spep_1-3 + 172, 1, 0.96, 0.96 );
setScaleKey( spep_1-3 + 174, 1, 0.97, 0.97 );
setScaleKey( spep_1-3 + 176, 1, 1.04, 1.04 );
setScaleKey( spep_1-3 + 178, 1, 1.05, 1.05 );
setScaleKey( spep_1-3 + 180, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 181, 1, 1.12, 1.12 );

setScaleKey( spep_1-3 + 182, 1, 3, 3 );
setScaleKey( spep_1-1 + 202, 1, 3, 3 );

setRotateKey( spep_1-3 + 128, 1, 26.6 );
setRotateKey( spep_1-3 + 181, 1, 26.6 );

setRotateKey( spep_1-3 + 182, 1, 26.6 );
setRotateKey( spep_1-3 + 184, 1, 26.7 );
setRotateKey( spep_1-3 + 190, 1, 26.7 );
setRotateKey( spep_1-3 + 192, 1, 31.4 );
setRotateKey( spep_1-3 + 194, 1, 36 );
setRotateKey( spep_1-3 + 196, 1, 40.7 );
setRotateKey( spep_1-3 + 198, 1, 45.4 );
setRotateKey( spep_1-3 + 200, 1, 50 );
setRotateKey( spep_1-1 + 202, 1, 54.7 );

--敵の動き
setDisp( spep_1-3 + 220, 1, 1 );
setDisp( spep_1-1 + 278, 1, 0 );

changeAnime( spep_1-3 + 220, 1, 108 );
changeAnime( spep_1-3 + 236, 1, 106 );
changeAnime( spep_1-3 + 250, 1, 108 );

setMoveKey( spep_1-3 + 220, 1, -8.1, 527.6 , 0 );
setMoveKey( spep_1-3 + 222, 1, 6.8, 438.1 , 0 );
setMoveKey( spep_1-3 + 224, 1, 21.7, 348.6 , 0 );
setMoveKey( spep_1-3 + 226, 1, 36.6, 259.1 , 0 );
setMoveKey( spep_1-3 + 228, 1, 51.5, 169.6 , 0 );
setMoveKey( spep_1-3 + 230, 1, 66.5, 80.1 , 0 );
setMoveKey( spep_1-3 + 232, 1, 81.4, -9.4 , 0 );
setMoveKey( spep_1-3 + 234, 1, 96.3, -98.9 , 0 );
setMoveKey( spep_1-3 + 235, 1, 96.3, -98.9 , 0 );

setMoveKey( spep_1-3 + 236, 1, 95.6, -83.1 , 0 );
setMoveKey( spep_1-3 + 238, 1, 103, -83.6 , 0 );
setMoveKey( spep_1-3 + 240, 1, 99.6, -65.2 , 0 );
setMoveKey( spep_1-3 + 242, 1, 107, -54.9 , 0 );
setMoveKey( spep_1-3 + 244, 1, 106.3, -47.3 , 0 );
setMoveKey( spep_1-3 + 246, 1, 108.3, -37 , 0 );
setMoveKey( spep_1-3 + 248, 1, 110.3, -26.7 , 0 );
setMoveKey( spep_1-3 + 249, 1, 110.3, -26.7 , 0 );

setMoveKey( spep_1-3 + 250, 1, 106.9, -0.2 , 0 );
setMoveKey( spep_1-3 + 252, 1, 119.1, -24.5 , 0 );
setMoveKey( spep_1-3 + 254, 1, 106.9, -11 , 0 );
setMoveKey( spep_1-3 + 256, 1, 124.5, -21.8 , 0 );
setMoveKey( spep_1-3 + 258, 1, 117.7, -5.6 , 0 );
setMoveKey( spep_1-3 + 260, 1, 116.4, -24.5 , 0 );
setMoveKey( spep_1-3 + 262, 1, 124.8, -16.4 , 0 );
setMoveKey( spep_1-3 + 264, 1, 130.5, -16.4 , 0 );
setMoveKey( spep_1-3 + 266, 1, 136.2, -16.4 , 0 );
setMoveKey( spep_1-3 + 268, 1, 141.9, -16.4 , 0 );
setMoveKey( spep_1-3 + 270, 1, 147.6, -16.4 , 0 );
setMoveKey( spep_1-3 + 272, 1, 153.4, -16.4 , 0 );
setMoveKey( spep_1-3 + 274, 1, 159.1, -16.4 , 0 );
setMoveKey( spep_1-3 + 276, 1, 164.8, -16.4 , 0 );
setMoveKey( spep_1-1 + 278, 1, 170.5, -16.4 , 0 );

setScaleKey( spep_1-3 + 220, 1, 1.1, 1.1 );
setScaleKey( spep_1-3 + 235, 1, 1.1, 1.1 );

setScaleKey( spep_1-3 + 236, 1, 1, 1 );
setScaleKey( spep_1-3 + 249, 1, 1, 1 );

setScaleKey( spep_1-3 + 250, 1, 1.1, 1.1 );
setScaleKey( spep_1-1 + 278, 1, 1.1, 1.1 );

setRotateKey( spep_1-3 + 220, 1, 90 );
setRotateKey( spep_1-3 + 235, 1, 90 );

setRotateKey( spep_1-3 + 236, 1, 30.8 );
setRotateKey( spep_1-3 + 249, 1, 30.8 );

setRotateKey( spep_1-3 + 250, 1, 0 );
setRotateKey( spep_1-1 + 278, 1, 0 );

--SE
--パンチ
SE007 = playSeVer2( spep_1 + 0, 1003, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 6, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE008, 90 );
SE009 = playSeVer2( spep_1 + 6, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 6, SE009, 83 );

--膝蹴り
SE010 = playSeVer2( spep_1 + 42, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 42, SE010, 86 );
SE011 = playSeVer2( spep_1 + 42, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 42, SE011, 94 );

--蹴り飛ばし
SE012 = playSeVer2( spep_1 + 72, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 72, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE013, 84 );

--瞬間移動
SE014 = playSeVer2( spep_1 + 106, 1109, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_1 + 122, 1183, "",spep_1 + 210, 0, 24, -1);
SE016 = playSeVer2( spep_1 + 122, 1121, "",spep_1 + 210, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 122, SE016, 59 );

--瞬間移動
SE017 = playSeVer2( spep_1 + 142, 1109, "", 0, 0, 0, -1);

--振りかぶり
SE018 = playSeVer2( spep_1 + 156, 1004, "", 0, 0, 0, -1);

--蹴り落とし
SE019 = playSeVer2( spep_1 + 180, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 180, SE019, 68 );
SE020 = playSeVer2( spep_1 + 180, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 180, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 182, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 182, SE022, 66 );

--瞬間移動
SE023 = playSeVer2( spep_1 + 232, 1109, "", 0, 0, 0, -1);

--横蹴り飛ばし
SE024 = playSeVer2( spep_1 + 234, 1008, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 248, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 248, SE025, 89 );
SE026 = playSeVer2( spep_1 + 250, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 250, SE026, 84 );
SE027 = playSeVer2( spep_1 + 252, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 252, SE027, 77 );

--敵飛んでいく
SE028 = playSeVer2( spep_1 + 266, 1183, "",spep_1 + 402, 0, 8, -1);
setSeVolumeByWorkId( spep_1 + 266, SE028, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 280, 0, 0, 0, 0, 255 );

--次の準備
spep_2=spep_1+276;
------------------------------------------------------
--瞬間移動～回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 208, kick_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 208, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 208, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 206, kick_f, 255 );
setEffAlphaKey( spep_2 + 207, kick_f, 255 );
setEffAlphaKey( spep_2 + 208, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 208, kick_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 208, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 208, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 206, kick_b, 255 );
setEffAlphaKey( spep_2 + 207, kick_b, 255 );
setEffAlphaKey( spep_2 + 208, kick_b, 0 );

--敵の動き
setDisp( spep_2-3 + 60, 1, 1 );
setDisp( spep_2-1 + 148, 1, 0 );

changeAnime( spep_2-3 + 60, 1, 107 );
changeAnime( spep_2-3 + 100, 1, 105 );
changeAnime( spep_2-3 + 120, 1, 107 );

setMoveKey( spep_2-3 + 60, 1, -248.2, -23.4 , 0 );
setMoveKey( spep_2-3 + 62, 1, -233.5, -19.6 , 0 );
setMoveKey( spep_2-3 + 64, 1, -218.7, -15.8 , 0 );
setMoveKey( spep_2-3 + 66, 1, -204, -11.9 , 0 );
setMoveKey( spep_2-3 + 68, 1, -189.2, -8.1 , 0 );
setMoveKey( spep_2-3 + 70, 1, -174.4, -4.3 , 0 );
setMoveKey( spep_2-3 + 72, 1, -159.6, -0.5 , 0 );
setMoveKey( spep_2-3 + 74, 1, -144.8, 3.3 , 0 );
setMoveKey( spep_2-3 + 76, 1, -130, 7.1 , 0 );
setMoveKey( spep_2-3 + 78, 1, -128.1, 7.3 , 0 );
setMoveKey( spep_2-3 + 80, 1, -126.3, 7.4 , 0 );
setMoveKey( spep_2-3 + 82, 1, -124.3, 7.5 , 0 );
setMoveKey( spep_2-3 + 84, 1, -122.4, 7.7 , 0 );
setMoveKey( spep_2-3 + 86, 1, -120.5, 7.8 , 0 );
setMoveKey( spep_2-3 + 88, 1, -118.5, 7.9 , 0 );
setMoveKey( spep_2-3 + 90, 1, -116.6, 8.1 , 0 );
setMoveKey( spep_2-3 + 92, 1, -114.7, 8.2 , 0 );
setMoveKey( spep_2-3 + 94, 1, -112.8, 8.3 , 0 );
setMoveKey( spep_2-3 + 96, 1, -110.9, 8.5 , 0 );
setMoveKey( spep_2-3 + 98, 1, -109, 8.6 , 0 );
setMoveKey( spep_2-3 + 99, 1, -109, 8.6 , 0 );

setMoveKey( spep_2-3 + 100, 1, -138.4, -567.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, -127, -479.4 , 0 );
setMoveKey( spep_2-3 + 104, 1, -115.9, -393.1 , 0 );
setMoveKey( spep_2-3 + 106, 1, -104.9, -308.6 , 0 );
setMoveKey( spep_2-3 + 108, 1, -94.2, -225.9 , 0 );
setMoveKey( spep_2-3 + 110, 1, -91.6, -215.1 , 0 );
setMoveKey( spep_2-3 + 112, 1, -89, -204.4 , 0 );
setMoveKey( spep_2-3 + 114, 1, -86.5, -193.9 , 0 );
setMoveKey( spep_2-3 + 116, 1, -84, -183.6 , 0 );
setMoveKey( spep_2-3 + 118, 1, -81.6, -173.5 , 0 );
setMoveKey( spep_2-3 + 119, 1, -81.6, -173.5 , 0 );

setMoveKey( spep_2-3 + 120, 1, 228.1, -22.6 , 0 );
setMoveKey( spep_2-3 + 122, 1, 224, -6.1 , 0 );
setMoveKey( spep_2-3 + 124, 1, 241.2, -32.5 , 0 );
setMoveKey( spep_2-3 + 126, 1, 229, -19 , 0 );
setMoveKey( spep_2-3 + 128, 1, 250.6, -23.9 , 0 );
setMoveKey( spep_2-3 + 130, 1, 246.1, -13.3 , 0 );
setMoveKey( spep_2-3 + 132, 1, 242, -5.7 , 0 );
setMoveKey( spep_2-3 + 134, 1, 379.7, -31.2 , 0 );
setMoveKey( spep_2-3 + 136, 1, 489.3, -18.4 , 0 );
setMoveKey( spep_2-3 + 138, 1, 632.1, -23.5 , 0 );
setMoveKey( spep_2-3 + 140, 1, 749.3, -13.3 , 0 );
setMoveKey( spep_2-3 + 142, 1, 874.3, -21 , 0 );
setMoveKey( spep_2-3 + 144, 1, 999.2, -21 , 0 );
setMoveKey( spep_2-3 + 146, 1, 1124.1, -21 , 0 );
setMoveKey( spep_2-1 + 148, 1, 1249.1, -21 , 0 );

setScaleKey( spep_2-3 + 60, 1, 0.2, 0.2 );
setScaleKey( spep_2-3 + 62, 1, 0.24, 0.24 );
setScaleKey( spep_2-3 + 64, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 66, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 68, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 70, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 72, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 74, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 76, 1, 0.5, 0.5 );
setScaleKey( spep_2-3 + 78, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 80, 1, 0.52, 0.52 );
setScaleKey( spep_2-3 + 82, 1, 0.53, 0.53 );
setScaleKey( spep_2-3 + 84, 1, 0.55, 0.55 );
setScaleKey( spep_2-3 + 86, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 88, 1, 0.57, 0.57 );
setScaleKey( spep_2-3 + 90, 1, 0.58, 0.58 );
setScaleKey( spep_2-3 + 92, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 94, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 96, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 98, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 99, 1, 0.62, 0.62 );

setScaleKey( spep_2-3 + 100, 1, 8.4, 8.4 );
setScaleKey( spep_2-3 + 102, 1, 7.57, 7.57 );
setScaleKey( spep_2-3 + 104, 1, 6.75, 6.75 );
setScaleKey( spep_2-3 + 106, 1, 5.94, 5.94 );
setScaleKey( spep_2-3 + 108, 1, 5.16, 5.16 );
setScaleKey( spep_2-3 + 110, 1, 4.99, 4.99 );
setScaleKey( spep_2-3 + 112, 1, 4.82, 4.82 );
setScaleKey( spep_2-3 + 114, 1, 4.65, 4.65 );
setScaleKey( spep_2-3 + 116, 1, 4.49, 4.49 );
setScaleKey( spep_2-3 + 118, 1, 4.33, 4.33 );
setScaleKey( spep_2-3 + 119, 1, 4.33, 4.33 );

setScaleKey( spep_2-3 + 120, 1, 1.6, 1.6 );
setScaleKey( spep_2-3 + 122, 1, 1.58, 1.58 );
setScaleKey( spep_2-3 + 124, 1, 1.56, 1.56 );
setScaleKey( spep_2-3 + 126, 1, 1.54, 1.54 );
setScaleKey( spep_2-3 + 128, 1, 1.52, 1.52 );
setScaleKey( spep_2-3 + 130, 1, 1.5, 1.5 );
setScaleKey( spep_2-1 + 148, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 60, 1, 0 );
setRotateKey( spep_2-3 + 119, 1, 0 );

setRotateKey( spep_2-3 + 120, 1, 10.8 );
setRotateKey( spep_2-3 + 121, 1, 10.8 );
setRotateKey( spep_2-3 + 122, 1, 11 );
setRotateKey( spep_2-1 + 148, 1, 11 );

--敵の動き
setDisp( spep_2-3 + 172, 1, 1 );
setDisp( spep_2-1 + 210, 1, 0 );

changeAnime( spep_2-3 + 172, 1, 105 );

setMoveKey( spep_2-3 + 172, 1, 37.9, 27.7 , 0 );
setMoveKey( spep_2-3 + 174, 1, 61.6, 60.3 , 0 );
setMoveKey( spep_2-3 + 176, 1, 85.1, 92.5 , 0 );
setMoveKey( spep_2-3 + 178, 1, 108.3, 124.5 , 0 );
setMoveKey( spep_2-3 + 180, 1, 131.3, 156.1 , 0 );
setMoveKey( spep_2-3 + 182, 1, 154.1, 187.5 , 0 );
setMoveKey( spep_2-3 + 184, 1, 154.5, 188.3 , 0 );
setMoveKey( spep_2-3 + 186, 1, 154.9, 189 , 0 );
setMoveKey( spep_2-3 + 188, 1, 155.2, 189.8 , 0 );
setMoveKey( spep_2-3 + 190, 1, 155.6, 190.5 , 0 );
setMoveKey( spep_2-3 + 192, 1, 155.9, 191.2 , 0 );
setMoveKey( spep_2-3 + 194, 1, 156.3, 191.9 , 0 );
setMoveKey( spep_2-3 + 196, 1, 156.6, 192.7 , 0 );
setMoveKey( spep_2-3 + 198, 1, 157, 193.4 , 0 );
setMoveKey( spep_2-3 + 200, 1, 157.2, 194.1 , 0 );
setMoveKey( spep_2-3 + 202, 1, 157.6, 194.8 , 0 );
setMoveKey( spep_2-3 + 204, 1, 157.9, 195.5 , 0 );
setMoveKey( spep_2-3 + 206, 1, 158.3, 196.2 , 0 );
setMoveKey( spep_2-3 + 208, 1, 158.6, 197 , 0 );
setMoveKey( spep_2-1 + 210, 1, 158.9, 197.5 , 0 );

setScaleKey( spep_2-3 + 172, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 174, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 176, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 178, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 180, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 182, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 184, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 186, 1, 0.49, 0.49 );
setScaleKey( spep_2-3 + 188, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 190, 1, 0.44, 0.44 );
setScaleKey( spep_2-3 + 192, 1, 0.42, 0.42 );
setScaleKey( spep_2-3 + 194, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 196, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 198, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 200, 1, 0.33, 0.33 );
setScaleKey( spep_2-3 + 202, 1, 0.31, 0.31 );
setScaleKey( spep_2-3 + 204, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 206, 1, 0.26, 0.26 );
setScaleKey( spep_2-3 + 208, 1, 0.24, 0.24 );
setScaleKey( spep_2-1 + 210, 1, 0.22, 0.22 );

setRotateKey( spep_2-3 + 172, 1, 0 );
setRotateKey( spep_2-1 + 210, 1, 0 );

--SE
--瞬間移動構える
SE029 = playSeVer2( spep_2 + 14, 1006, "",spep_2 + 32, 0, 4, -1);
setPitch( spep_2 + 14, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );

--瞬間移動
SE030 = playSeVer2( spep_2 + 34, 1109, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 64, 1109, "", 0, 0, 0, -1);

--後ろ回転蹴り
SE032 = playSeVer2( spep_2 + 118, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE033 = playSeVer2( spep_2 + 162, 1183, "",spep_2 + 262, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 162, SE033, 81 );
SE034 = playSeVer2( spep_2 + 162, 1121, "",spep_2 + 262, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 162, SE034, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 210, 0, 0, 0, 0, 255 );

--次の準備
spep_3=spep_2+208;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 90, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 90, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_3 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--かめはめ波溜め
SE035 = playSeVer2( spep_3 + 4, 1210, "",spep_3 + 156, 26, 30, -1);
setStartTimeMs( SE035,  967 );
SE036 = playSeVer2( spep_3 + 0, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE036, 94 );

--顔カットイン
SE037 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_3 + 82, 4, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0, 0, 0, 0, 255 );

--次の準備
spep_4=spep_3+90;
------------------------------------------------------
--ため～発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_4 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, beam_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 80, beam_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_f, 0 );
setEffRotateKey( spep_4 + 80, beam_f, 0 );
setEffAlphaKey( spep_4 + 0, beam_f, 255 );
setEffAlphaKey( spep_4 + 80, beam_f, 255 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_4 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, beam_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 80, beam_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_b, 0 );
setEffRotateKey( spep_4 + 80, beam_b, 0 );
setEffAlphaKey( spep_4 + 0, beam_b, 255 );
setEffAlphaKey( spep_4 + 80, beam_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 54, 1, 0 );

changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, -203.1, 405.2 , 0 );
setMoveKey( spep_4 + 2, 1, -203.8, 406.5 , 0 );
setMoveKey( spep_4 + 4, 1, -204.6, 407.8 , 0 );
setMoveKey( spep_4 + 6, 1, -205.3, 409.1 , 0 );
setMoveKey( spep_4 + 8, 1, -206.1, 410.4 , 0 );
setMoveKey( spep_4 + 10, 1, -206.8, 411.7 , 0 );
setMoveKey( spep_4 + 12, 1, -207.6, 413 , 0 );
setMoveKey( spep_4 + 14, 1, -208.3, 414.3 , 0 );
setMoveKey( spep_4 + 16, 1, -209.1, 415.6 , 0 );
setMoveKey( spep_4 + 18, 1, -209.8, 416.8 , 0 );
setMoveKey( spep_4 + 20, 1, -210.6, 418.1 , 0 );
setMoveKey( spep_4 + 22, 1, -211.3, 419.4 , 0 );
setMoveKey( spep_4 + 24, 1, -212.1, 420.7 , 0 );
setMoveKey( spep_4 + 26, 1, -212.8, 422 , 0 );
setMoveKey( spep_4 + 28, 1, -213.5, 423.3 , 0 );
setMoveKey( spep_4 + 30, 1, -214.3, 424.6 , 0 );
setMoveKey( spep_4 + 32, 1, -215, 425.9 , 0 );
setMoveKey( spep_4 + 34, 1, -215.8, 427.2 , 0 );
setMoveKey( spep_4 + 36, 1, -216.5, 428.5 , 0 );
setMoveKey( spep_4 + 38, 1, -217.3, 429.8 , 0 );
setMoveKey( spep_4 + 40, 1, -210.2, 446.7 , 0 );
setMoveKey( spep_4 + 42, 1, -226.6, 420.7 , 0 );
setMoveKey( spep_4 + 44, 1, -211.7, 449.3 , 0 );
setMoveKey( spep_4 + 46, 1, -228.1, 423.3 , 0 );
setMoveKey( spep_4 + 48, 1, -213.2, 451.9 , 0 );
setMoveKey( spep_4 + 50, 1, -221.8, 425.9 , 0 );
setMoveKey( spep_4 + 52, 1, -234.2, 446.7 , 0 );
setMoveKey( spep_4 + 54, 1, -223.3, 428.4 , 0 );

setScaleKey( spep_4 + 0, 1, 0.36, 0.36 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 6, 1, 0.33, 0.33 );
setScaleKey( spep_4 + 8, 1, 0.32, 0.32 );
setScaleKey( spep_4 + 10, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 12, 1, 0.3, 0.3 );
setScaleKey( spep_4 + 14, 1, 0.29, 0.29 );
setScaleKey( spep_4 + 16, 1, 0.28, 0.28 );
setScaleKey( spep_4 + 18, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 20, 1, 0.26, 0.26 );
setScaleKey( spep_4 + 22, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 24, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 26, 1, 0.23, 0.23 );
setScaleKey( spep_4 + 28, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 30, 1, 0.21, 0.21 );
setScaleKey( spep_4 + 32, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 34, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 36, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 38, 1, 0.18, 0.18 );
setScaleKey( spep_4 + 40, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 42, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 44, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 46, 1, 0.14, 0.14 );
setScaleKey( spep_4 + 48, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 50, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 52, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 54, 1, 0.1, 0.1 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 54, 1, 0 );

--SE
--かめはめ波発射
SE038 = playSeVer2( spep_4 + 36, 1284, "",spep_4 + 94, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 36, SE038, 86 );
SE039 = playSeVer2( spep_4 + 36, 1213, "",spep_4 + 94, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 36, SE039, 85 );
SE040 = playSeVer2( spep_4 + 36, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 36, SE040, 80 );

--白フェード
entryFade( spep_4 + 72, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 80, 0, 0, 0, 0, 255 );

--次の準備
spep_5=spep_4+80;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 92; 
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 286, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 286, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 286, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 286, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 286, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 286, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 286, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 286, finish_b, 255 );

--敵の動き
setDisp( spep_6-3 + 50, 1, 1 );
setDisp( spep_6-1 + 84, 1, 0 );

changeAnime( spep_6-3 + 50, 1, 105 );

setMoveKey( spep_6-3 + 50, 1, 139.2, 124.3 , 0 );
setMoveKey( spep_6-3 + 52, 1, 148.2, 104.2 , 0 );
setMoveKey( spep_6-3 + 54, 1, 136, 113.2 , 0 );
setMoveKey( spep_6-3 + 56, 1, 145, 106.4 , 0 );
setMoveKey( spep_6-3 + 58, 1, 138.1, 112.8 , 0 );
setMoveKey( spep_6-3 + 60, 1, 131.2, 116.5 , 0 );
setMoveKey( spep_6-3 + 62, 1, 140.2, 96.4 , 0 );
setMoveKey( spep_6-3 + 64, 1, 128, 105.4 , 0 );
setMoveKey( spep_6-3 + 66, 1, 137.1, 98.6 , 0 );
setMoveKey( spep_6-3 + 68, 1, 130.2, 104.9 , 0 );
setMoveKey( spep_6-3 + 70, 1, 123.3, 108.7 , 0 );
setMoveKey( spep_6-3 + 72, 1, 132.3, 88.6 , 0 );
setMoveKey( spep_6-3 + 74, 1, 120.1, 97.6 , 0 );
setMoveKey( spep_6-3 + 76, 1, 129.1, 90.7 , 0 );
setMoveKey( spep_6-3 + 78, 1, 122.2, 97.1 , 0 );
setMoveKey( spep_6-3 + 80, 1, 115.3, 100.9 , 0 );
setMoveKey( spep_6-3 + 82, 1, 124.4, 80.8 , 0 );
setMoveKey( spep_6-1 + 84, 1, 112.2, 89.8 , 0 );

setScaleKey( spep_6-3 + 50, 1, 1, 1 );
setScaleKey( spep_6-3 + 52, 1, 1.05, 1.05 );
setScaleKey( spep_6-3 + 54, 1, 1.09, 1.09 );
setScaleKey( spep_6-3 + 56, 1, 1.14, 1.14 );
setScaleKey( spep_6-3 + 58, 1, 1.19, 1.19 );
setScaleKey( spep_6-3 + 60, 1, 1.24, 1.24 );
setScaleKey( spep_6-3 + 62, 1, 1.28, 1.28 );
setScaleKey( spep_6-3 + 64, 1, 1.33, 1.33 );
setScaleKey( spep_6-3 + 66, 1, 1.38, 1.38 );
setScaleKey( spep_6-3 + 68, 1, 1.42, 1.42 );
setScaleKey( spep_6-3 + 70, 1, 1.47, 1.47 );
setScaleKey( spep_6-3 + 72, 1, 1.52, 1.52 );
setScaleKey( spep_6-3 + 74, 1, 1.56, 1.56 );
setScaleKey( spep_6-3 + 76, 1, 1.61, 1.61 );
setScaleKey( spep_6-3 + 78, 1, 1.66, 1.66 );
setScaleKey( spep_6-3 + 80, 1, 1.71, 1.71 );
setScaleKey( spep_6-3 + 82, 1, 1.75, 1.75 );
setScaleKey( spep_6-1 + 84, 1, 1.8, 1.8 );

setRotateKey( spep_6-3 + 50, 1, 17.6 );
setRotateKey( spep_6-3 + 52, 1, 17.7 );
setRotateKey( spep_6-1 + 84, 1, 17.7 );

--SE
--かめはめ波発射
SE042 = playSeVer2( spep_6 + 0, 1284, "",spep_6 + 100, 6, 40, -1);
setStartTimeMs( SE042,  383 );
SE043 = playSeVer2( spep_6 + 0, 1213, "",spep_6 + 164, 6, 14, -1);
setSeVolumeByWorkId( spep_6 + 0, SE043, 63 );
setStartTimeMs( SE043,  300 );
SE044 = playSeVer2( spep_6 + 2, 1146, "",spep_6 + 164, 0, 14, -1);

--かめはめ波飛んでいく
SE045 = playSeVer2( spep_6 + 48, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 48, SE045, 122 );
SE046 = playSeVer2( spep_6 + 48, 1211, "",spep_6 + 164, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 48, SE046, 363 );
SE047 = playSeVer2( spep_6 + 48, 1161, "",spep_6 + 164, 0, 16, -1);
setSeVolumeByWorkId( spep_6 + 48, SE047, 129 );

--悟空アップ
SE048 = playSeVer2( spep_6 + 88, 1258, "",spep_6 + 174, 0, 14, -1);
setSeVolumeByWorkId( spep_6 + 88, SE048, 72 );
SE049 = playSeVer2( spep_6 + 98, 1264, "",spep_6 + 174, 0, 14, -1);

--爆発
SE050 = playSeVer2( spep_6 + 148, 1024, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_6 + 148, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 164 );
endPhase( spep_6 + 276 );
end