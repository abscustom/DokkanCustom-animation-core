--4023051:LR_孫悟空_超必殺技：フェイントかめはめ波
--sp_effect_b1_00167
--sp2252

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
SP_01 = 158036; --開幕〜1回目発射 手前
SP_02 = 158038; --開幕〜1回目発射 奥
SP_03 = 158039; --1発目気弾上昇〜セリフカットイン 手前
SP_04 = 158041; --1発目気弾上昇〜セリフカットイン 奥
SP_05 = 158042; --キックヒット〜フィニッシュ 手前
SP_06 = 158044; --キックヒット〜フィニッシュ 奥

--敵側
SP_01x = 158037; --開幕〜1回目発射 手前_敵
SP_02x = 158038; --開幕〜1回目発射 奥
SP_03x = 158040; --1発目気弾上昇〜セリフカットイン 手前_敵
SP_04x = 158041; --1発目気弾上昇〜セリフカットイン 奥
SP_05x = 158043; --キックヒット〜フィニッシュ 手前_敵
SP_06x = 158044; --キックヒット〜フィニッシュ 奥

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開幕〜1回目発射
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
opening_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, opening_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 312, opening_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 312, opening_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_f, 0 );
setEffRotateKey( spep_0 + 312, opening_f, 0 );
setEffAlphaKey( spep_0 + 0, opening_f, 255 );
setEffAlphaKey( spep_0 + 310, opening_f, 255 );
setEffAlphaKey( spep_0 + 311, opening_f, 255 );
setEffAlphaKey( spep_0 + 312, opening_f, 0 );

-- ** エフェクト等 ** --
opening_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, opening_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 312, opening_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 312, opening_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_b, 0 );
setEffRotateKey( spep_0 + 312, opening_b, 0 );
setEffAlphaKey( spep_0 + 0, opening_b, 255 );
setEffAlphaKey( spep_0 + 310, opening_b, 255 );
setEffAlphaKey( spep_0 + 311, opening_b, 255 );
setEffAlphaKey( spep_0 + 312, opening_b, 0 );

--敵の動き
setDisp( spep_0-3 + 54, 1, 1);
setDisp( spep_0-1 + 88, 1, 0);

changeAnime( spep_0-3 + 54, 1, 101);

setMoveKey( spep_0-3 + 54, 1, 451.4, 736.2 , 0 );
setMoveKey( spep_0-3 + 56, 1, 372, 618.2 , 0 );
setMoveKey( spep_0-3 + 58, 1, 292.5, 500.1 , 0 );
setMoveKey( spep_0-3 + 60, 1, 213.1, 382.1 , 0 );
setMoveKey( spep_0-3 + 62, 1, 133.6, 264 , 0 );
setMoveKey( spep_0-3 + 64, 1, 109.1, 221.4 , 0 );
setMoveKey( spep_0-3 + 66, 1, 86.7, 182.5 , 0 );
setMoveKey( spep_0-3 + 68, 1, 66.5, 147.4 , 0 );
setMoveKey( spep_0-3 + 70, 1, 48.4, 116.1 , 0 );
setMoveKey( spep_0-3 + 72, 1, 32.5, 88.5 , 0 );
setMoveKey( spep_0-3 + 74, 1, 18.8, 64.7 , 0 );
setMoveKey( spep_0-3 + 76, 1, 16.9, 60.6 , 0 );
setMoveKey( spep_0-3 + 78, 1, 15.1, 56.7 , 0 );
setMoveKey( spep_0-3 + 80, 1, 13.5, 53.1 , 0 );
setMoveKey( spep_0-3 + 82, 1, 11.9, 49.8 , 0 );
setMoveKey( spep_0-3 + 84, 1, 10.5, 46.7 , 0 );
setMoveKey( spep_0-3 + 86, 1, 9.2, 43.9 , 0 );
setMoveKey( spep_0-1 + 88, 1, 8, 41.4 , 0 );

setScaleKey( spep_0-3 + 54, 1, 1.5, 1.5 );
setScaleKey( spep_0-1 + 88, 1, 1.5, 1.5 );

setRotateKey( spep_0-3 + 54, 1, 8.3 );
setRotateKey( spep_0-1 + 88, 1, 8.3 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 74 );

--画面遷移
SE002 = playSeVer2( spep_0 + 36, 44, "", 0, 0, 0, -1);

--腕前に出す
SE003 = playSeVer2( spep_0 + 100, 1003, "", 0, 0, 0, -1);

--気弾生成
SE004 = playSeVer2( spep_0 + 112, 1338, "", 0, 0, 0, -1);
setPitch( spep_0 + 112, SE004, -100 );
setTimeStretch( SE004, 0.93, 30, 4 );
SE005 = playSeVer2( spep_0 + 112, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE005, 85 );

--気弾溜める
SE006 = playSeVer2( spep_0 + 148, 1130, "", 0, 0, 0, 0.65);
setSeVolumeByWorkId( spep_0 + 148, SE006, 28 );
setTimeStretch( SE006, 2, 30, 4 );
SE007 = playSeVer2( spep_0 + 148, 1203, "",spep_0 + 294, 0, 74, 0.65);

--後ろジャンプ
SE008 = playSeVer2( spep_0 + 208, 1117, "",spep_0 + 260, 0, 24, -1);

--顔アップ
SE009 = playSeVer2( spep_0 + 244, 1072, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE009, 61 );
setStartTimeMs( SE009,  417 );

--後ろジャンプ
SE010 = playSeVer2( spep_0 + 234, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE010, 155 );
SE011 = playSeVer2( spep_0 + 234, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE011, 133 );

--腕あげる
SE012 = playSeVer2( spep_0 + 284, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 288, 1004, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 316, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+312;

------------------------------------------------------
--1発目気弾上昇〜セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
rise_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, rise_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 510, rise_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rise_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 510, rise_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rise_f, 0 );
setEffRotateKey( spep_1 + 510, rise_f, 0 );
setEffAlphaKey( spep_1 + 0, rise_f, 255 );
setEffAlphaKey( spep_1 + 510, rise_f, 255 );

-- ** エフェクト等 ** --
rise_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, rise_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 510, rise_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rise_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 510, rise_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rise_b, 0 );
setEffRotateKey( spep_1 + 510, rise_b, 0 );
setEffAlphaKey( spep_1 + 0, rise_b, 255 );
setEffAlphaKey( spep_1 + 510, rise_b, 255 );

-- ** 音 ** --
--気弾上昇
SE014 = playSeVer2( spep_1 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE014, 75 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 510, 0,  0, 0, 0, 255 ); --くろ 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+ 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
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
--顔カットインのタイミング指定
spep_x=spep_1 +418;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

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

--敵の動き
setDisp( spep_1-3 + 56, 1, 1);
setDisp( spep_1-1 + 128, 1, 0);

changeAnime( spep_1-3 + 56, 1, 101);
changeAnime( spep_1-3 + 64, 1, 104);
changeAnime( spep_1-3 + 92, 1, 108);

setMoveKey( spep_1-3 + 56, 1, 184.2, 511.6 , 0 );
setMoveKey( spep_1-3 + 58, 1, 156.5, 435.9 , 0 );
setMoveKey( spep_1-3 + 60, 1, 129.5, 362.1 , 0 );
setMoveKey( spep_1-3 + 62, 1, 108, 301.8 , 0 );
setMoveKey( spep_1-3 + 63, 1, 108, 301.8 , 0 );

setMoveKey( spep_1-3 + 64, 1, 101, 280.9 , 0 );
setMoveKey( spep_1-3 + 66, 1, 86.7, 240.4 , 0 );
setMoveKey( spep_1-3 + 68, 1, 72.4, 199.9 , 0 );
setMoveKey( spep_1-3 + 70, 1, 58.2, 159.5 , 0 );
setMoveKey( spep_1-3 + 72, 1, 54.8, 148.9 , 0 );
setMoveKey( spep_1-3 + 74, 1, 51.9, 139.4 , 0 );
setMoveKey( spep_1-3 + 76, 1, 49, 129.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 46, 120.5 , 0 );
setMoveKey( spep_1-3 + 80, 1, 43.1, 111 , 0 );
setMoveKey( spep_1-3 + 82, 1, 40.2, 101.5 , 0 );
setMoveKey( spep_1-3 + 84, 1, 37.3, 92.1 , 0 );
setMoveKey( spep_1-3 + 86, 1, 34.3, 82.6 , 0 );
setMoveKey( spep_1-3 + 88, 1, 31.4, 73.1 , 0 );
setMoveKey( spep_1-3 + 90, 1, 43.8, 105.8 , 0 );
setMoveKey( spep_1-3 + 91, 1, 43.8, 105.8 , 0 );

setMoveKey( spep_1-3 + 92, 1, 33.7, 118.5 , 0 );
setMoveKey( spep_1-3 + 94, 1, 54.8, 119.5 , 0 );
setMoveKey( spep_1-3 + 96, 1, 31.4, 73.1 , 0 );
setMoveKey( spep_1-3 + 98, 1, 18.1, 77.4 , 0 );
setMoveKey( spep_1-3 + 100, 1, 33.5, 59 , 0 );
setMoveKey( spep_1-3 + 102, 1, 32.4, 72.9 , 0 );
setMoveKey( spep_1-3 + 104, 1, 12.9, 57.9 , 0 );
setMoveKey( spep_1-3 + 106, 1, 32, 53.3 , 0 );
setMoveKey( spep_1-3 + 108, 1, 18.7, 67.8 , 0 );
setMoveKey( spep_1-3 + 110, 1, 18.9, 50 , 0 );
setMoveKey( spep_1-3 + 112, 1, 17.8, 58.5 , 0 );
setMoveKey( spep_1-3 + 114, 1, 22.8, 54.1 , 0 );
setMoveKey( spep_1-3 + 116, 1, 22.8, 57.7 , 0 );
setMoveKey( spep_1-3 + 118, 1, 16.9, 51.8 , 0 );
setMoveKey( spep_1-3 + 120, 1, 22.7, 54.4 , 0 );
setMoveKey( spep_1-3 + 122, 1, 17, 53.4 , 0 );
setMoveKey( spep_1-3 + 124, 1, 22.2, 49.7 , 0 );
setMoveKey( spep_1-3 + 126, 1, 20.1, 50.6 , 0 );
setMoveKey( spep_1-1 + 128, 1, 24, 51.6 , 0 );

setScaleKey( spep_1-3 + 56, 1, 0.92, 0.92 );
setScaleKey( spep_1-3 + 58, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 60, 1, 1.05, 1.05 );
setScaleKey( spep_1-3 + 62, 1, 1.13, 1.13 );
setScaleKey( spep_1-3 + 63, 1, 1.13, 1.13 );

setScaleKey( spep_1-3 + 64, 1, 1.21,1.21);
setScaleKey( spep_1-3 + 66, 1, 1.27,1.27);
setScaleKey( spep_1-3 + 68, 1, 1.33,1.33);
setScaleKey( spep_1-3 + 70, 1, 1.38,1.38);
setScaleKey( spep_1-3 + 72, 1, 1.39,1.39);
setScaleKey( spep_1-3 + 74, 1, 1.41,1.41);
setScaleKey( spep_1-3 + 76, 1, 1.42,1.42);
setScaleKey( spep_1-3 + 78, 1, 1.43,1.43);
setScaleKey( spep_1-3 + 80, 1, 1.44,1.44);
setScaleKey( spep_1-3 + 82, 1, 1.45,1.45);
setScaleKey( spep_1-3 + 84, 1, 1.48,1.48);
setScaleKey( spep_1-3 + 86, 1, 1.49,1.49);
setScaleKey( spep_1-3 + 88, 1, 1.5,1.5);
setScaleKey( spep_1-3 + 90, 1, 2.02,2.02);
setScaleKey( spep_1-3 + 91, 1, 2.02,2.02);

setScaleKey( spep_1-3 + 92, 1, 2.43, 2.43 );
setScaleKey( spep_1-3 + 94, 1, 2.5, 2.5 );
setScaleKey( spep_1-3 + 96, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 98, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 100, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 102, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 104, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 106, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 108, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 110, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 112, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 114, 1, 1.09, 1.09 );
setScaleKey( spep_1-3 + 116, 1, 1.07, 1.07 );
setScaleKey( spep_1-1 + 128, 1, 1.07, 1.07 );

setRotateKey( spep_1-3 + 56, 1, 6.2 );
setRotateKey( spep_1-3 + 58, 1, 6.1 );
setRotateKey( spep_1-3 + 60, 1, 6.1 );
setRotateKey( spep_1-3 + 62, 1, 6 );
setRotateKey( spep_1-3 + 63, 1, 6 );

setRotateKey( spep_1-3 + 64, 1, -26.8 );
setRotateKey( spep_1-3 + 66, 1, -29.6 );
setRotateKey( spep_1-3 + 68, 1, -32.3 );
setRotateKey( spep_1-3 + 70, 1, -35.1 );
setRotateKey( spep_1-3 + 91, 1, -35.1 );

setRotateKey( spep_1-3 + 92, 1, -35.1 );
setRotateKey( spep_1-1 + 128, 1, -35.1 );

-- ** 音 ** --
--気弾近づく
SE015 = playSeVer2( spep_1 + 40, 1021, "", 0, 0, 0, -1);

--爆発
SE016 = playSeVer2( spep_1 + 90, 1023, "",spep_1 + 192, 0, 62, -1);
setSeVolumeByWorkId( spep_1 + 90, SE016, 81 );
SE017 = playSeVer2( spep_1 + 90, 1024, "",spep_1 + 212, 0, 80, -1);
setSeVolumeByWorkId( spep_1 + 90, SE017, 86 );

--腕あげる
SE018 = playSeVer2( spep_1 + 178, 1189, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 182, 1004, "", 0, 0, 0, -1);

--気弾上昇
SE020 = playSeVer2( spep_1 + 218, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 218, SE020, 75 );

--悟空ジャンプ
SE021 = playSeVer2( spep_1 + 250, 1207, "",spep_1 + 308, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 250, SE021, 82 );
SE022 = playSeVer2( spep_1 + 254, 44, "", 0, 0, 0, -1);

--気弾近づく
SE023 = playSeVer2( spep_1 + 268, 1021, "", 0, 0, 0, -1);

--爆発
SE024 = playSeVer2( spep_1 + 312, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 312, SE024, 85 );
SE025 = playSeVer2( spep_1 + 312, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 312, SE025, 83 );

--瞬間移動
SE026 = playSeVer2( spep_1 + 384, 1109, "", 0, 0, 0, -1);

--顔カットイン
SE027 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--悟空ジャンプキック
SE028 = playSeVer2( spep_1 + 424, 1182, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 424, 9, "",spep_1 + 510, 0, 6, -1);
SE030 = playSeVer2( spep_1 + 424, 1258, "",spep_1 + 510, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 424, SE030, 72 );
SE031 = playSeVer2( spep_1 + 424, 1314, "",spep_1 + 510, 0, 6, -1);

--白フェード
entryFade( spep_1 + 502, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備 
spep_2=spep_1+510;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
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
--playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94;

------------------------------------------------------
--キックヒット〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 252, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 252, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 252, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 252, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 252, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 252, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 252, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 252, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 54, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 30, 1, 108 );
changeAnime( spep_3-3 + 48, 1, 106 );

setMoveKey( spep_3 + 0, 1, 32.8, 66.4 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 33.4, 66.2 , 0 );
setMoveKey( spep_3-3 + 4, 1, 33.9, 66 , 0 );
setMoveKey( spep_3-3 + 6, 1, 34.5, 65.7 , 0 );
setMoveKey( spep_3-3 + 8, 1, 35.1, 65.5 , 0 );
setMoveKey( spep_3-3 + 10, 1, 35.6, 65.3 , 0 );
setMoveKey( spep_3-3 + 12, 1, 36.2, 65.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 36.8, 64.8 , 0 );
setMoveKey( spep_3-3 + 16, 1, 37.3, 64.6 , 0 );
setMoveKey( spep_3-3 + 18, 1, 37.9, 64.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 38.5, 64.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 39, 63.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, 39.6, 63.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 40.2, 63.5 , 0 );
setMoveKey( spep_3-3 + 29, 1, 40.7, 63.2 , 0 );
setMoveKey( spep_3-3 + 30, 1, -34.9, 75 , 0 );
setMoveKey( spep_3-3 + 32, 1, 50.8, 16 , 0 );
setMoveKey( spep_3-3 + 34, 1, 64.8, -25.2 , 0 );
setMoveKey( spep_3-3 + 36, 1, 71.8, -17.4 , 0 );
setMoveKey( spep_3-3 + 38, 1, 97.7, -36.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 99.5, -29.7 , 0 );
setMoveKey( spep_3-3 + 42, 1, 91.7, -42 , 0 );
setMoveKey( spep_3-3 + 44, 1, 93.4, -30.7 , 0 );
setMoveKey( spep_3-3 + 47, 1, 104.9, -42.2 , 0 );
setMoveKey( spep_3-3 + 48, 1, 305, -194.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, 562.8, -387.4 , 0 );
setMoveKey( spep_3-3 + 52, 1, 825.5, -573.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 1087.5, -758.5 , 0 );

setScaleKey( spep_3 + 0, 1, 1.49,1.49);
setScaleKey( spep_3-3 + 29, 1, 1.49,1.49);
setScaleKey( spep_3-3 + 30, 1, 2.76,2.76);
setScaleKey( spep_3-3 + 32, 1, 1.97,1.97);
setScaleKey( spep_3-3 + 34, 1, 1.7,1.7);
setScaleKey( spep_3-3 + 36, 1, 1.69,1.69);
setScaleKey( spep_3-3 + 38, 1, 1.67,1.67);
setScaleKey( spep_3-3 + 40, 1, 1.65,1.65);
setScaleKey( spep_3-3 + 42, 1, 1.64,1.64);
setScaleKey( spep_3-3 + 44, 1, 1.63,1.63);
setScaleKey( spep_3-3 + 47, 1, 1.62,1.62);
setScaleKey( spep_3-3 + 48, 1, 1.45,1.45);
setScaleKey( spep_3-3 + 50, 1, 1.45,1.45);
setScaleKey( spep_3-3 + 52, 1, 1.44,1.44);
setScaleKey( spep_3-3 + 54, 1, 1.44,1.44);

setRotateKey( spep_3 + 0, 1, -14.5 );
--setRotateKey( spep_3-3 + 2, 1, -14.5 );
setRotateKey( spep_3-3 + 4, 1, -14.4 );
setRotateKey( spep_3-3 + 6, 1, -14.3 );
setRotateKey( spep_3-3 + 8, 1, -14.3 );
setRotateKey( spep_3-3 + 10, 1, -14.2 );
setRotateKey( spep_3-3 + 12, 1, -14.1 );
setRotateKey( spep_3-3 + 14, 1, -14.1 );
setRotateKey( spep_3-3 + 16, 1, -14 );
setRotateKey( spep_3-3 + 18, 1, -13.9 );
setRotateKey( spep_3-3 + 20, 1, -13.9 );
setRotateKey( spep_3-3 + 22, 1, -13.8 );
setRotateKey( spep_3-3 + 24, 1, -13.7 );
setRotateKey( spep_3-3 + 26, 1, -13.7 );
setRotateKey( spep_3-3 + 29, 1, -13.6 );
setRotateKey( spep_3-3 + 30, 1, 13.9 );
setRotateKey( spep_3-3 + 47, 1, 13.9 );
setRotateKey( spep_3-3 + 48, 1, 61.1 );
setRotateKey( spep_3-3 + 54, 1, 61.1 );

-- ** 音 ** --
--悟空キックヒット
SE033 = playSeVer2( spep_3 + 28, 1180, "", 0, 10, 0, -1);
setStartTimeMs( SE033,  367 );
SE034 = playSeVer2( spep_3 + 12, 1189, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 16, 1116, "",spep_3 + 46, 0, 10, -1);
SE036 = playSeVer2( spep_3 + 16, 1117, "",spep_3 + 46, 0, 10, -1);
SE037 = playSeVer2( spep_3 + 26, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 26, SE037, 88 );
SE038 = playSeVer2( spep_3 + 26, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 26, SE038, 87 );
SE039 = playSeVer2( spep_3 + 26, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 26, SE039, 84 );

--地面爆発
SE040 = playSeVer2( spep_3 + 66, 1068, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_3 + 66, 1159, "", 0, 0, 0, -1);

--水面爆発
SE042 = playSeVer2( spep_3 + 100, 1163, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_3 + 100, SE042, 232 );
setStartTimeMs( SE042,  267 );
SE043 = playSeVer2( spep_3 + 106, 1024, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_3 + 106, 1166, "",spep_3 + 226, 0, 52, -1);

--終わり
dealDamage(spep_3+150);
endPhase( spep_3 + 242 );

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開幕〜1回目発射
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
opening_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, opening_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 312, opening_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 312, opening_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_f, 0 );
setEffRotateKey( spep_0 + 312, opening_f, 0 );
setEffAlphaKey( spep_0 + 0, opening_f, 255 );
setEffAlphaKey( spep_0 + 310, opening_f, 255 );
setEffAlphaKey( spep_0 + 311, opening_f, 255 );
setEffAlphaKey( spep_0 + 312, opening_f, 0 );

-- ** エフェクト等 ** --
opening_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, opening_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 312, opening_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 312, opening_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_b, 0 );
setEffRotateKey( spep_0 + 312, opening_b, 0 );
setEffAlphaKey( spep_0 + 0, opening_b, 255 );
setEffAlphaKey( spep_0 + 310, opening_b, 255 );
setEffAlphaKey( spep_0 + 311, opening_b, 255 );
setEffAlphaKey( spep_0 + 312, opening_b, 0 );

--敵の動き
setDisp( spep_0-3 + 54, 1, 1);
setDisp( spep_0-1 + 88, 1, 0);

changeAnime( spep_0-3 + 54, 1, 101);

setMoveKey( spep_0-3 + 54, 1, 451.4, 736.2 , 0 );
setMoveKey( spep_0-3 + 56, 1, 372, 618.2 , 0 );
setMoveKey( spep_0-3 + 58, 1, 292.5, 500.1 , 0 );
setMoveKey( spep_0-3 + 60, 1, 213.1, 382.1 , 0 );
setMoveKey( spep_0-3 + 62, 1, 133.6, 264 , 0 );
setMoveKey( spep_0-3 + 64, 1, 109.1, 221.4 , 0 );
setMoveKey( spep_0-3 + 66, 1, 86.7, 182.5 , 0 );
setMoveKey( spep_0-3 + 68, 1, 66.5, 147.4 , 0 );
setMoveKey( spep_0-3 + 70, 1, 48.4, 116.1 , 0 );
setMoveKey( spep_0-3 + 72, 1, 32.5, 88.5 , 0 );
setMoveKey( spep_0-3 + 74, 1, 18.8, 64.7 , 0 );
setMoveKey( spep_0-3 + 76, 1, 16.9, 60.6 , 0 );
setMoveKey( spep_0-3 + 78, 1, 15.1, 56.7 , 0 );
setMoveKey( spep_0-3 + 80, 1, 13.5, 53.1 , 0 );
setMoveKey( spep_0-3 + 82, 1, 11.9, 49.8 , 0 );
setMoveKey( spep_0-3 + 84, 1, 10.5, 46.7 , 0 );
setMoveKey( spep_0-3 + 86, 1, 9.2, 43.9 , 0 );
setMoveKey( spep_0-1 + 88, 1, 8, 41.4 , 0 );

setScaleKey( spep_0-3 + 54, 1, 1.5, 1.5 );
setScaleKey( spep_0-1 + 88, 1, 1.5, 1.5 );

setRotateKey( spep_0-3 + 54, 1, 8.3 );
setRotateKey( spep_0-1 + 88, 1, 8.3 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 74 );

--画面遷移
SE002 = playSeVer2( spep_0 + 36, 44, "", 0, 0, 0, -1);

--腕前に出す
SE003 = playSeVer2( spep_0 + 100, 1003, "", 0, 0, 0, -1);

--気弾生成
SE004 = playSeVer2( spep_0 + 112, 1338, "", 0, 0, 0, -1);
setPitch( spep_0 + 112, SE004, -100 );
setTimeStretch( SE004, 0.93, 30, 4 );
SE005 = playSeVer2( spep_0 + 112, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE005, 85 );

--気弾溜める
SE006 = playSeVer2( spep_0 + 148, 1130, "", 0, 0, 0, 0.65);
setSeVolumeByWorkId( spep_0 + 148, SE006, 28 );
setTimeStretch( SE006, 2, 30, 4 );
SE007 = playSeVer2( spep_0 + 148, 1203, "",spep_0 + 294, 0, 74, 0.65);

--後ろジャンプ
SE008 = playSeVer2( spep_0 + 208, 1117, "",spep_0 + 260, 0, 24, -1);

--顔アップ
SE009 = playSeVer2( spep_0 + 244, 1072, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE009, 61 );
setStartTimeMs( SE009,  417 );

--後ろジャンプ
SE010 = playSeVer2( spep_0 + 234, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE010, 155 );
SE011 = playSeVer2( spep_0 + 234, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE011, 133 );

--腕あげる
SE012 = playSeVer2( spep_0 + 284, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 288, 1004, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 316, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+312;
------------------------------------------------------
--1発目気弾上昇〜セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
rise_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, rise_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 510, rise_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rise_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 510, rise_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rise_f, 0 );
setEffRotateKey( spep_1 + 510, rise_f, 0 );
setEffAlphaKey( spep_1 + 0, rise_f, 255 );
setEffAlphaKey( spep_1 + 510, rise_f, 255 );

-- ** エフェクト等 ** --
rise_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, rise_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 510, rise_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rise_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 510, rise_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rise_b, 0 );
setEffRotateKey( spep_1 + 510, rise_b, 0 );
setEffAlphaKey( spep_1 + 0, rise_b, 255 );
setEffAlphaKey( spep_1 + 510, rise_b, 255 );

-- ** 音 ** --
--気弾上昇
SE014 = playSeVer2( spep_1 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE014, 75 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 510, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1+ 40; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
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
--顔カットインのタイミング指定
spep_x=spep_1 +418;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

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

--敵の動き
setDisp( spep_1-3 + 56, 1, 1);
setDisp( spep_1-1 + 128, 1, 0);

changeAnime( spep_1-3 + 56, 1, 101);
changeAnime( spep_1-3 + 64, 1, 104);
changeAnime( spep_1-3 + 92, 1, 108);

setMoveKey( spep_1-3 + 56, 1, 184.2, 511.6 , 0 );
setMoveKey( spep_1-3 + 58, 1, 156.5, 435.9 , 0 );
setMoveKey( spep_1-3 + 60, 1, 129.5, 362.1 , 0 );
setMoveKey( spep_1-3 + 62, 1, 108, 301.8 , 0 );
setMoveKey( spep_1-3 + 63, 1, 108, 301.8 , 0 );

setMoveKey( spep_1-3 + 64, 1, 101, 280.9 , 0 );
setMoveKey( spep_1-3 + 66, 1, 86.7, 240.4 , 0 );
setMoveKey( spep_1-3 + 68, 1, 72.4, 199.9 , 0 );
setMoveKey( spep_1-3 + 70, 1, 58.2, 159.5 , 0 );
setMoveKey( spep_1-3 + 72, 1, 54.8, 148.9 , 0 );
setMoveKey( spep_1-3 + 74, 1, 51.9, 139.4 , 0 );
setMoveKey( spep_1-3 + 76, 1, 49, 129.9 , 0 );
setMoveKey( spep_1-3 + 78, 1, 46, 120.5 , 0 );
setMoveKey( spep_1-3 + 80, 1, 43.1, 111 , 0 );
setMoveKey( spep_1-3 + 82, 1, 40.2, 101.5 , 0 );
setMoveKey( spep_1-3 + 84, 1, 37.3, 92.1 , 0 );
setMoveKey( spep_1-3 + 86, 1, 34.3, 82.6 , 0 );
setMoveKey( spep_1-3 + 88, 1, 31.4, 73.1 , 0 );
setMoveKey( spep_1-3 + 90, 1, 43.8, 105.8 , 0 );
setMoveKey( spep_1-3 + 91, 1, 43.8, 105.8 , 0 );

setMoveKey( spep_1-3 + 92, 1, 33.7, 118.5 , 0 );
setMoveKey( spep_1-3 + 94, 1, 54.8, 119.5 , 0 );
setMoveKey( spep_1-3 + 96, 1, 31.4, 73.1 , 0 );
setMoveKey( spep_1-3 + 98, 1, 18.1, 77.4 , 0 );
setMoveKey( spep_1-3 + 100, 1, 33.5, 59 , 0 );
setMoveKey( spep_1-3 + 102, 1, 32.4, 72.9 , 0 );
setMoveKey( spep_1-3 + 104, 1, 12.9, 57.9 , 0 );
setMoveKey( spep_1-3 + 106, 1, 32, 53.3 , 0 );
setMoveKey( spep_1-3 + 108, 1, 18.7, 67.8 , 0 );
setMoveKey( spep_1-3 + 110, 1, 18.9, 50 , 0 );
setMoveKey( spep_1-3 + 112, 1, 17.8, 58.5 , 0 );
setMoveKey( spep_1-3 + 114, 1, 22.8, 54.1 , 0 );
setMoveKey( spep_1-3 + 116, 1, 22.8, 57.7 , 0 );
setMoveKey( spep_1-3 + 118, 1, 16.9, 51.8 , 0 );
setMoveKey( spep_1-3 + 120, 1, 22.7, 54.4 , 0 );
setMoveKey( spep_1-3 + 122, 1, 17, 53.4 , 0 );
setMoveKey( spep_1-3 + 124, 1, 22.2, 49.7 , 0 );
setMoveKey( spep_1-3 + 126, 1, 20.1, 50.6 , 0 );
setMoveKey( spep_1-1 + 128, 1, 24, 51.6 , 0 );

setScaleKey( spep_1-3 + 56, 1, 0.92, 0.92 );
setScaleKey( spep_1-3 + 58, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 60, 1, 1.05, 1.05 );
setScaleKey( spep_1-3 + 62, 1, 1.13, 1.13 );
setScaleKey( spep_1-3 + 63, 1, 1.13, 1.13 );

setScaleKey( spep_1-3 + 64, 1, 1.21,1.21);
setScaleKey( spep_1-3 + 66, 1, 1.27,1.27);
setScaleKey( spep_1-3 + 68, 1, 1.33,1.33);
setScaleKey( spep_1-3 + 70, 1, 1.38,1.38);
setScaleKey( spep_1-3 + 72, 1, 1.39,1.39);
setScaleKey( spep_1-3 + 74, 1, 1.41,1.41);
setScaleKey( spep_1-3 + 76, 1, 1.42,1.42);
setScaleKey( spep_1-3 + 78, 1, 1.43,1.43);
setScaleKey( spep_1-3 + 80, 1, 1.44,1.44);
setScaleKey( spep_1-3 + 82, 1, 1.45,1.45);
setScaleKey( spep_1-3 + 84, 1, 1.48,1.48);
setScaleKey( spep_1-3 + 86, 1, 1.49,1.49);
setScaleKey( spep_1-3 + 88, 1, 1.5,1.5);
setScaleKey( spep_1-3 + 90, 1, 2.02,2.02);
setScaleKey( spep_1-3 + 91, 1, 2.02,2.02);

setScaleKey( spep_1-3 + 92, 1, 2.43, 2.43 );
setScaleKey( spep_1-3 + 94, 1, 2.5, 2.5 );
setScaleKey( spep_1-3 + 96, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 98, 1, 1.38, 1.38 );
setScaleKey( spep_1-3 + 100, 1, 1.33, 1.33 );
setScaleKey( spep_1-3 + 102, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 104, 1, 1.25, 1.25 );
setScaleKey( spep_1-3 + 106, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 108, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 110, 1, 1.14, 1.14 );
setScaleKey( spep_1-3 + 112, 1, 1.11, 1.11 );
setScaleKey( spep_1-3 + 114, 1, 1.09, 1.09 );
setScaleKey( spep_1-3 + 116, 1, 1.07, 1.07 );
setScaleKey( spep_1-1 + 128, 1, 1.07, 1.07 );

setRotateKey( spep_1-3 + 56, 1, 6.2 );
setRotateKey( spep_1-3 + 58, 1, 6.1 );
setRotateKey( spep_1-3 + 60, 1, 6.1 );
setRotateKey( spep_1-3 + 62, 1, 6 );
setRotateKey( spep_1-3 + 63, 1, 6 );

setRotateKey( spep_1-3 + 64, 1, -26.8 );
setRotateKey( spep_1-3 + 66, 1, -29.6 );
setRotateKey( spep_1-3 + 68, 1, -32.3 );
setRotateKey( spep_1-3 + 70, 1, -35.1 );
setRotateKey( spep_1-3 + 91, 1, -35.1 );

setRotateKey( spep_1-3 + 92, 1, -35.1 );
setRotateKey( spep_1-1 + 128, 1, -35.1 );

-- ** 音 ** --
--気弾近づく
SE015 = playSeVer2( spep_1 + 40, 1021, "", 0, 0, 0, -1);

--爆発
SE016 = playSeVer2( spep_1 + 90, 1023, "",spep_1 + 192, 0, 62, -1);
setSeVolumeByWorkId( spep_1 + 90, SE016, 81 );
SE017 = playSeVer2( spep_1 + 90, 1024, "",spep_1 + 212, 0, 80, -1);
setSeVolumeByWorkId( spep_1 + 90, SE017, 86 );

--腕あげる
SE018 = playSeVer2( spep_1 + 178, 1189, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 182, 1004, "", 0, 0, 0, -1);

--気弾上昇
SE020 = playSeVer2( spep_1 + 218, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 218, SE020, 75 );

--悟空ジャンプ
SE021 = playSeVer2( spep_1 + 250, 1207, "",spep_1 + 308, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 250, SE021, 82 );
SE022 = playSeVer2( spep_1 + 254, 44, "", 0, 0, 0, -1);

--気弾近づく
SE023 = playSeVer2( spep_1 + 268, 1021, "", 0, 0, 0, -1);

--爆発
SE024 = playSeVer2( spep_1 + 312, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 312, SE024, 85 );
SE025 = playSeVer2( spep_1 + 312, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 312, SE025, 83 );

--瞬間移動
SE026 = playSeVer2( spep_1 + 384, 1109, "", 0, 0, 0, -1);

--顔カットイン
SE027 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--悟空ジャンプキック
SE028 = playSeVer2( spep_1 + 424, 1182, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 424, 9, "",spep_1 + 510, 0, 6, -1);
SE030 = playSeVer2( spep_1 + 424, 1258, "",spep_1 + 510, 0, 6, -1);
setSeVolumeByWorkId( spep_1 + 424, SE030, 72 );
SE031 = playSeVer2( spep_1 + 424, 1314, "",spep_1 + 510, 0, 6, -1);

--白フェード
entryFade( spep_1 + 502, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備 
spep_2=spep_1+510;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94;

------------------------------------------------------
--キックヒット〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 252, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 252, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 252, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 252, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 252, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 252, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 252, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 252, finish_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 54, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 30, 1, 108 );
changeAnime( spep_3-3 + 48, 1, 106 );

setMoveKey( spep_3 + 0, 1, 32.8, 66.4 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 33.4, 66.2 , 0 );
setMoveKey( spep_3-3 + 4, 1, 33.9, 66 , 0 );
setMoveKey( spep_3-3 + 6, 1, 34.5, 65.7 , 0 );
setMoveKey( spep_3-3 + 8, 1, 35.1, 65.5 , 0 );
setMoveKey( spep_3-3 + 10, 1, 35.6, 65.3 , 0 );
setMoveKey( spep_3-3 + 12, 1, 36.2, 65.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 36.8, 64.8 , 0 );
setMoveKey( spep_3-3 + 16, 1, 37.3, 64.6 , 0 );
setMoveKey( spep_3-3 + 18, 1, 37.9, 64.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 38.5, 64.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 39, 63.9 , 0 );
setMoveKey( spep_3-3 + 24, 1, 39.6, 63.7 , 0 );
setMoveKey( spep_3-3 + 26, 1, 40.2, 63.5 , 0 );
setMoveKey( spep_3-3 + 29, 1, 40.7, 63.2 , 0 );
setMoveKey( spep_3-3 + 30, 1, -34.9, 75 , 0 );
setMoveKey( spep_3-3 + 32, 1, 50.8, 16 , 0 );
setMoveKey( spep_3-3 + 34, 1, 64.8, -25.2 , 0 );
setMoveKey( spep_3-3 + 36, 1, 71.8, -17.4 , 0 );
setMoveKey( spep_3-3 + 38, 1, 97.7, -36.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 99.5, -29.7 , 0 );
setMoveKey( spep_3-3 + 42, 1, 91.7, -42 , 0 );
setMoveKey( spep_3-3 + 44, 1, 93.4, -30.7 , 0 );
setMoveKey( spep_3-3 + 47, 1, 104.9, -42.2 , 0 );
setMoveKey( spep_3-3 + 48, 1, 305, -194.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, 562.8, -387.4 , 0 );
setMoveKey( spep_3-3 + 52, 1, 825.5, -573.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 1087.5, -758.5 , 0 );

setScaleKey( spep_3 + 0, 1, 1.49,1.49);
setScaleKey( spep_3-3 + 29, 1, 1.49,1.49);
setScaleKey( spep_3-3 + 30, 1, 2.76,2.76);
setScaleKey( spep_3-3 + 32, 1, 1.97,1.97);
setScaleKey( spep_3-3 + 34, 1, 1.7,1.7);
setScaleKey( spep_3-3 + 36, 1, 1.69,1.69);
setScaleKey( spep_3-3 + 38, 1, 1.67,1.67);
setScaleKey( spep_3-3 + 40, 1, 1.65,1.65);
setScaleKey( spep_3-3 + 42, 1, 1.64,1.64);
setScaleKey( spep_3-3 + 44, 1, 1.63,1.63);
setScaleKey( spep_3-3 + 47, 1, 1.62,1.62);
setScaleKey( spep_3-3 + 48, 1, 1.45,1.45);
setScaleKey( spep_3-3 + 50, 1, 1.45,1.45);
setScaleKey( spep_3-3 + 52, 1, 1.44,1.44);
setScaleKey( spep_3-3 + 54, 1, 1.44,1.44);

setRotateKey( spep_3 + 0, 1, -14.5 );
--setRotateKey( spep_3-3 + 2, 1, -14.5 );
setRotateKey( spep_3-3 + 4, 1, -14.4 );
setRotateKey( spep_3-3 + 6, 1, -14.3 );
setRotateKey( spep_3-3 + 8, 1, -14.3 );
setRotateKey( spep_3-3 + 10, 1, -14.2 );
setRotateKey( spep_3-3 + 12, 1, -14.1 );
setRotateKey( spep_3-3 + 14, 1, -14.1 );
setRotateKey( spep_3-3 + 16, 1, -14 );
setRotateKey( spep_3-3 + 18, 1, -13.9 );
setRotateKey( spep_3-3 + 20, 1, -13.9 );
setRotateKey( spep_3-3 + 22, 1, -13.8 );
setRotateKey( spep_3-3 + 24, 1, -13.7 );
setRotateKey( spep_3-3 + 26, 1, -13.7 );
setRotateKey( spep_3-3 + 29, 1, -13.6 );
setRotateKey( spep_3-3 + 30, 1, 13.9 );
setRotateKey( spep_3-3 + 47, 1, 13.9 );
setRotateKey( spep_3-3 + 48, 1, 61.1 );
setRotateKey( spep_3-3 + 54, 1, 61.1 );

-- ** 音 ** --
--悟空キックヒット
SE033 = playSeVer2( spep_3 + 28, 1180, "", 0, 10, 0, -1);
setStartTimeMs( SE033,  367 );
SE034 = playSeVer2( spep_3 + 12, 1189, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 16, 1116, "",spep_3 + 46, 0, 10, -1);
SE036 = playSeVer2( spep_3 + 16, 1117, "",spep_3 + 46, 0, 10, -1);
SE037 = playSeVer2( spep_3 + 26, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 26, SE037, 88 );
SE038 = playSeVer2( spep_3 + 26, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 26, SE038, 87 );
SE039 = playSeVer2( spep_3 + 26, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 26, SE039, 84 );

--地面爆発
SE040 = playSeVer2( spep_3 + 66, 1068, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_3 + 66, 1159, "", 0, 0, 0, -1);

--水面爆発
SE042 = playSeVer2( spep_3 + 100, 1163, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_3 + 100, SE042, 232 );
setStartTimeMs( SE042,  267 );
SE043 = playSeVer2( spep_3 + 106, 1024, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_3 + 106, 1166, "",spep_3 + 226, 0, 52, -1);

--終わり
dealDamage(spep_3+150);
endPhase( spep_3 + 242 );

end