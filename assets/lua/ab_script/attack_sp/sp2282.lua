--4022430:超サイヤ人4ゴジータ_超必殺技：ビッグバンかめはめ波
--sp_effect_a1_00332
--sp2282

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
SP_01 = 158895; --ゴジータ登場〜かめはめ波構え ef_001
SP_02 = 158896; --ゴジータ登場〜かめはめ波構え ef_002
SP_03 = 158897; --かめはめ波発射〜フィニッシュ ef_003

--敵側
SP_01r = 158898; --敵用：ゴジータ登場〜かめはめ波構え ef_001r
SP_02r = 158899; --敵用：ゴジータ登場〜かめはめ波構え ef_002r
SP_03r = 158900; --敵用：かめはめ波発射〜フィニッシュ ef_003r

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
-- エフェクト(726F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 726, 0x100, -1, 0, 0, 0 );  --ゴジータ登場〜かめはめ波構え ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 726, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 726, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 726, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 726 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 726, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 726, 0x80, -1, 0, 0, 0 );  --ゴジータ登場〜かめはめ波構え ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 726, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 726, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 726, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 726 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 726, first_b, 0 );

spep_x = spep_0 + 640;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1183, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 33 );
SE004 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setTimeStretch( SE004, 1.25, 30, 4 );
SE005 = playSeVer2( spep_0 + 8, 1227, "",spep_0 + 158, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 8, SE005, 130 );

--オーラ弾ける
SE006 = playSeVer2( spep_0 + 56, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE006, 97 );
SE007 = playSeVer2( spep_0 + 56, 1254, "",spep_0 + 144, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 63 );
setPitch( spep_0 + 56, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 56, 1062, "",spep_0 + 132, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 56, SE008, 85 );
SE009 = playSeVer2( spep_0 + 62, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE009, 35 );
setPitch( spep_0 + 62, SE009, -300 );
setTimeStretch( SE009, 0.8, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 726 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 94 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);

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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 -3 + 118, 1, 1 );
setDisp( spep_0 -3 + 260, 1, 0 );
changeAnime( spep_0 -3 + 118, 1, 117 );
changeAnime( spep_0 -3 + 132, 1, 104 );
changeAnime( spep_0 -3 + 144, 1, 106 );
changeAnime( spep_0 -3 + 174, 1, 105 );

setMoveKey( spep_0 -3 + 118, 1, 786.8, 92.2 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 556.2, 49.3 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 367.6, 14.1 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 220.9, -13.2 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 116.1, -32.7 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 53.2, -44.4 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 32.3, -48.3 , 0 );
setMoveKey( spep_0 -3 + 131, 1, 32.3, -48.3 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 32.3, -48.3 , 0 );--
setMoveKey( spep_0 -3 + 143, 1, 32.3, -48.3 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 43.4, -27.4 , 0 );--
setMoveKey( spep_0 -3 + 148, 1, 43.4, -27.4 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 69.9, -67.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 72.5, -62.2 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 58.3, -22.2 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 62.2, -40 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 63.6, -37.2 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 64.9, -34.8 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 65.9, -32.8 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 66.7, -31.1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 67.4, -21.8 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 67.8, -14.9 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 68.1, -14.3 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 68.2, -14.1 , 0 );
setMoveKey( spep_0 -3 + 173, 1, 68.2, -14.1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 74.1, -6.5 , 0 );--
setMoveKey( spep_0 -3 + 176, 1, 88.3, 33 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 117.7, 110.6 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 137.7, 163.6 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 149.4, 200.4 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 157.2, 227.1 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 146.3, 250 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 153.5, 256.5 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 156.9, 265.4 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 159.6, 272.5 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 161.8, 278.4 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 163.7, 283.3 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 165.2, 287.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 166.6, 290.9 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 167.7, 293.8 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 168.6, 296.4 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 169.5, 298.6 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 170.2, 300.5 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 170.8, 302.2 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 171.4, 303.7 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 171.9, 304.9 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 172.3, 306.1 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 172.7, 307.1 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 173, 308 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 173.3, 308.8 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 173.6, 309.5 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 173.8, 310.1 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 174.1, 310.7 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 174.3, 311.2 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 174.4, 311.7 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 174.6, 312.1 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 174.7, 312.5 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 174.9, 312.9 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 175, 313.2 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 175.1, 313.5 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 175.2, 313.8 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 175.3, 314.1 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 175.4, 314.4 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 175.5, 314.6 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 175.6, 314.9 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 175.7, 315.1 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 175.8, 315.3 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 175.9, 315.6 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 175.9, 315.6 , 0 );

setScaleKey( spep_0 -3 + 118, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 143, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 144, 1, 1.4, 1.4 );--
setScaleKey( spep_0 -3 + 148, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 150, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 152, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 154, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 156, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 173, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 174, 1, 1.34, 1.34 );--
setScaleKey( spep_0 -3 + 176, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 178, 1, 0.86, 0.86 );
setScaleKey( spep_0 -3 + 180, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 182, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 184, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 186, 1, 0.37, 0.37 );
setScaleKey( spep_0 -3 + 188, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 190, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 192, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 194, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 196, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 198, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 200, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 202, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 204, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 206, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 208, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 210, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 212, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 214, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 216, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 218, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 220, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 226, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 228, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 236, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 238, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 254, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 256, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 260, 1, 0.08, 0.08 );

setRotateKey( spep_0 -3 + 118, 1, 0 );
setRotateKey( spep_0 -3 + 143, 1, 0 );
setRotateKey( spep_0 -3 + 144, 1, -33 );--
setRotateKey( spep_0 -3 + 173, 1, -33 );
setRotateKey( spep_0 -3 + 174, 1, 2.2 );--
setRotateKey( spep_0 -3 + 176, 1, 7.4 );
setRotateKey( spep_0 -3 + 178, 1, 18.3 );
setRotateKey( spep_0 -3 + 180, 1, 25.7 );
setRotateKey( spep_0 -3 + 182, 1, 30 );
setRotateKey( spep_0 -3 + 184, 1, 32.9 );
setRotateKey( spep_0 -3 + 186, 1, 35 );
setRotateKey( spep_0 -3 + 188, 1, 36.6 );
setRotateKey( spep_0 -3 + 190, 1, 37.8 );
setRotateKey( spep_0 -3 + 192, 1, 38.8 );
setRotateKey( spep_0 -3 + 194, 1, 39.7 );
setRotateKey( spep_0 -3 + 196, 1, 40.3 );
setRotateKey( spep_0 -3 + 198, 1, 40.9 );
setRotateKey( spep_0 -3 + 200, 1, 41.4 );
setRotateKey( spep_0 -3 + 202, 1, 41.8 );
setRotateKey( spep_0 -3 + 204, 1, 42.2 );
setRotateKey( spep_0 -3 + 206, 1, 42.5 );
setRotateKey( spep_0 -3 + 208, 1, 42.8 );
setRotateKey( spep_0 -3 + 210, 1, 43 );
setRotateKey( spep_0 -3 + 212, 1, 43.2 );
setRotateKey( spep_0 -3 + 214, 1, 43.4 );
setRotateKey( spep_0 -3 + 216, 1, 43.5 );
setRotateKey( spep_0 -3 + 218, 1, 43.7 );
setRotateKey( spep_0 -3 + 220, 1, 43.8 );
setRotateKey( spep_0 -3 + 222, 1, 43.9 );
setRotateKey( spep_0 -3 + 224, 1, 44 );
setRotateKey( spep_0 -3 + 226, 1, 44.1 );
setRotateKey( spep_0 -3 + 228, 1, 44.2 );
setRotateKey( spep_0 -3 + 230, 1, 44.3 );
setRotateKey( spep_0 -3 + 232, 1, 44.3 );
setRotateKey( spep_0 -3 + 234, 1, 44.4 );
setRotateKey( spep_0 -3 + 236, 1, 44.4 );
setRotateKey( spep_0 -3 + 238, 1, 44.5 );
setRotateKey( spep_0 -3 + 240, 1, 44.5 );
setRotateKey( spep_0 -3 + 242, 1, 44.6 );
setRotateKey( spep_0 -3 + 244, 1, 44.6 );
setRotateKey( spep_0 -3 + 246, 1, 44.7 );
setRotateKey( spep_0 -3 + 250, 1, 44.7 );
setRotateKey( spep_0 -3 + 252, 1, 44.8 );
setRotateKey( spep_0 -3 + 256, 1, 44.8 );
setRotateKey( spep_0 -3 + 258, 1, 44.9 );
setRotateKey( spep_0 -3 + 260, 1, 44.9 );

--敵の動き2
setDisp( spep_0 -3 + 320, 1, 1 );
setDisp( spep_0 -3 + 572, 1, 0 );
changeAnime( spep_0 -3 + 320, 1, 108 );
changeAnime( spep_0 -3 + 466, 1, 106 );
changeAnime( spep_0 -3 + 572, 1, 108 );

setMoveKey( spep_0 -3 + 320, 1, 127.7, 191.5 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 127.7, 191.5 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 136.1, 189.3 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 127.7, 191.5 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 127.7, 191.5 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 140.3, 188.3 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 125.3, 164.9 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 136.5, 186.2 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 144, 182 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 136.9, 188.7 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 140, 178.7 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 140.2, 188.6 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 133.4, 181.6 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 142, 183.2 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 128, 184.5 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 132.4, 189.6 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 118.8, 182 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 121.8, 184.2 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 105.7, 179.9 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 101.9, 189.4 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 93.5, 179.2 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 97.7, 188.7 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 86.7, 182.4 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 94.5, 185.8 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 83.8, 182.9 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 92.1, 185.1 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 80.1, 186.2 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 89.6, 179.3 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 80.2, 183.1 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 88.3, 179.4 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 80.3, 187.1 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 89.2, 179.6 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 80.3, 186.1 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 88.5, 179.5 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 79.9, 187.9 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 83.7, 179 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 81.3, 189.5 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 78.5, 178.9 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 86.5, 190.4 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 78.5, 184.9 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 90.4, 189.3 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 84.3, 185.8 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 93.5, 194.6 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 84.7, 193.1 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 92.6, 207.6 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 92, 204.5 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 106.3, 217.9 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 93, 234.9 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 103, 253.9 , 0 );
setMoveKey( spep_0 -3 + 417, 1, 103, 253.9 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -75.6, -182.8 , 0 );--
setMoveKey( spep_0 -3 + 420, 1, -66.8, -159.7 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -63.2, -150.4 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -60.8, -144 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -59, -139.2 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -57.5, -135.3 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -56.3, -132.2 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -55.3, -129.6 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -54.5, -127.4 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -53.8, -125.6 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -53.2, -124.1 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -52.7, -122.9 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -62.6, -147.1 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -62.2, -146.2 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -49.5, -114.7 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -48.9, -123 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -51.5, -119.6 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -51.4, -119.4 , 0 );
setMoveKey( spep_0 -3 + 454, 1, -51.4, -119.3 , 0 );
setMoveKey( spep_0 -3 + 462, 1, -51.4, -119.3 , 0 );
setMoveKey( spep_0 -3 + 464, 1, -54.4, -118.2 , 0 );
setMoveKey( spep_0 -3 + 465, 1, -54.4, -118.2 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 88, 166.1 , 0 );--
setMoveKey( spep_0 -3 + 468, 1, 105.3, 221.9 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 168.4, 327.6 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 222.5, 436.5 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 269.8, 516.3 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 308.5, 589.5 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 329.5, 637 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 354.5, 671.3 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 362.9, 703.1 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 378.9, 718.2 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 380.9, 732.8 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 392.4, 742.9 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 390.7, 751.4 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 397.6, 753.3 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 389.4, 751 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 403.4, 768.2 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 420.9, 807.7 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 459.5, 887.7 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 552.9, 1085.2 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 622.2, 1224 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 662.2, 1309 , 0 );
setMoveKey( spep_0 -3 + 508, 1, 695.2, 1375.5 , 0 );
setMoveKey( spep_0 -3 + 510, 1, 720.1, 1429.8 , 0 );
setMoveKey( spep_0 -3 + 512, 1, 743.4, 1474.9 , 0 );
setMoveKey( spep_0 -3 + 514, 1, 760.6, 1516 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 778.6, 1549.5 , 0 );
setMoveKey( spep_0 -3 + 518, 1, 793.3, 1583.3 , 0 );
setMoveKey( spep_0 -3 + 520, 1, 807, 1610.5 , 0 );
setMoveKey( spep_0 -3 + 522, 1, 820.7, 1637.4 , 0 );
setMoveKey( spep_0 -3 + 524, 1, 832, 1660.8 , 0 );
setMoveKey( spep_0 -3 + 526, 1, 842.6, 1683.1 , 0 );
setMoveKey( spep_0 -3 + 528, 1, 852.5, 1703.7 , 0 );
setMoveKey( spep_0 -3 + 530, 1, 865.2, 1729.5 , 0 );
setMoveKey( spep_0 -3 + 532, 1, 876.6, 1753 , 0 );
setMoveKey( spep_0 -3 + 534, 1, 887.1, 1774.4 , 0 );
setMoveKey( spep_0 -3 + 536, 1, 896.8, 1794.1 , 0 );
setMoveKey( spep_0 -3 + 538, 1, 905.5, 1812.1 , 0 );
setMoveKey( spep_0 -3 + 540, 1, 913.7, 1828.7 , 0 );
setMoveKey( spep_0 -3 + 542, 1, 921.2, 1844 , 0 );
setMoveKey( spep_0 -3 + 544, 1, 928.1, 1858.1 , 0 );
setMoveKey( spep_0 -3 + 546, 1, 934.4, 1871.1 , 0 );
setMoveKey( spep_0 -3 + 548, 1, 940.3, 1883.1 , 0 );
setMoveKey( spep_0 -3 + 550, 1, 945.7, 1894.1 , 0 );
setMoveKey( spep_0 -3 + 552, 1, 950.7, 1904.2 , 0 );
setMoveKey( spep_0 -3 + 554, 1, 955.1, 1913.4 , 0 );
setMoveKey( spep_0 -3 + 556, 1, 959.3, 1921.9 , 0 );
setMoveKey( spep_0 -3 + 558, 1, 963.1, 1929.5 , 0 );
setMoveKey( spep_0 -3 + 560, 1, 966.4, 1936.3 , 0 );
setMoveKey( spep_0 -3 + 562, 1, 969.3, 1942.3 , 0 );
setMoveKey( spep_0 -3 + 564, 1, 971.9, 1947.5 , 0 );
setMoveKey( spep_0 -3 + 566, 1, 974, 1951.8 , 0 );
setMoveKey( spep_0 -3 + 568, 1, 975.6, 1955.1 , 0 );
setMoveKey( spep_0 -3 + 570, 1, 976.2, 1956.6 , 0 );
setMoveKey( spep_0 -3 + 571, 1, 976.2, 1956.6 , 0 );
setMoveKey( spep_0 -3 + 572, 1, 976.2, 1956.6 , 0 );--

setScaleKey( spep_0 -3 + 320, 1, 12.97, 12.97 );
setScaleKey( spep_0 -3 + 334, 1, 12.97, 12.97 );
setScaleKey( spep_0 -3 + 336, 1, 12.87, 12.87 );
setScaleKey( spep_0 -3 + 338, 1, 12.76, 12.76 );
setScaleKey( spep_0 -3 + 340, 1, 12.62, 12.62 );
setScaleKey( spep_0 -3 + 342, 1, 12.44, 12.44 );
setScaleKey( spep_0 -3 + 344, 1, 12.2, 12.2 );
setScaleKey( spep_0 -3 + 346, 1, 11.86, 11.86 );
setScaleKey( spep_0 -3 + 348, 1, 11.37, 11.37 );
setScaleKey( spep_0 -3 + 350, 1, 10.68, 10.68 );
setScaleKey( spep_0 -3 + 352, 1, 9.7, 9.7 );
setScaleKey( spep_0 -3 + 354, 1, 8.38, 8.38 );
setScaleKey( spep_0 -3 + 356, 1, 6.79, 6.79 );
setScaleKey( spep_0 -3 + 358, 1, 5.56, 5.56 );
setScaleKey( spep_0 -3 + 360, 1, 4.66, 4.66 );
setScaleKey( spep_0 -3 + 362, 1, 3.97, 3.97 );
setScaleKey( spep_0 -3 + 364, 1, 3.45, 3.45 );
setScaleKey( spep_0 -3 + 366, 1, 3.04, 3.04 );
setScaleKey( spep_0 -3 + 368, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 370, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 372, 1, 2.32, 2.32 );
setScaleKey( spep_0 -3 + 374, 1, 2.18, 2.18 );
setScaleKey( spep_0 -3 + 376, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 378, 1, 2, 2 );
setScaleKey( spep_0 -3 + 380, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 382, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 384, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 386, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 388, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 417, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 418, 1, 0.3, 0.3 );--
setScaleKey( spep_0 -3 + 464, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 465, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 466, 1, 0.3, 0.3 );--
setScaleKey( spep_0 -3 + 496, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 498, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 500, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 502, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 504, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 506, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 508, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 510, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 512, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 514, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 516, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 518, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 520, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 522, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 524, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 526, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 528, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 530, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 532, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 534, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 536, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 538, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 540, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 542, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 544, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 546, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 548, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 550, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 554, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 556, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 562, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 564, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 571, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 572, 1, 0.72, 0.72 );--

setRotateKey( spep_0 -3 + 320, 1, -44.9 );
setRotateKey( spep_0 -3 + 417, 1, -44.9 );
setRotateKey( spep_0 -3 + 418, 1, -44.9 );--
setRotateKey( spep_0 -3 + 464, 1, -44.9 );
setRotateKey( spep_0 -3 + 465, 1, -44.9 );
setRotateKey( spep_0 -3 + 466, 1, -44.9 );--
setRotateKey( spep_0 -3 + 468, 1, -29.9 );
setRotateKey( spep_0 -3 + 470, 1, -26.7 );
setRotateKey( spep_0 -3 + 472, 1, -23.8 );
setRotateKey( spep_0 -3 + 474, 1, -21.4 );
setRotateKey( spep_0 -3 + 476, 1, -19.5 );
setRotateKey( spep_0 -3 + 478, 1, -18.1 );
setRotateKey( spep_0 -3 + 480, 1, -17.1 );
setRotateKey( spep_0 -3 + 482, 1, -16.3 );
setRotateKey( spep_0 -3 + 484, 1, -15.8 );
setRotateKey( spep_0 -3 + 486, 1, -15.4 );
setRotateKey( spep_0 -3 + 488, 1, -15.1 );
setRotateKey( spep_0 -3 + 490, 1, -14.9 );
setRotateKey( spep_0 -3 + 571, 1, -14.9 );
setRotateKey( spep_0 -3 + 572, 1, -14.9 );--

-- ** 音 ** --
--向かっていく
SE010 = playSeVer2( spep_0 + 92, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE010, 71 );

--サマーソルト
SE011 = playSeVer2( spep_0 + 126, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 134, 1187, "",spep_0 + 148, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 134, SE012, 82 );
SE013 = playSeVer2( spep_0 + 136, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE013, 74 );
SE014 = playSeVer2( spep_0 + 138, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE014, 76 );
SE015 = playSeVer2( spep_0 + 138, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE015, 84 );
SE016 = playSeVer2( spep_0 + 138, 1049, "",spep_0 + 186, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 138, SE016, 87 );

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 162, 1183, "", 0, 0, 0, -1);

--気ダメ
SE018 = playSeVer2( spep_0 + 186, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE018, 119 );

--ジグザグに追いかける
SE019 = playSeVer2( spep_0 + 192, 1026, "",spep_0 + 222, 0, 10, 0.6);
SE020 = playSeVer2( spep_0 + 200, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 196, 1245, "",spep_0 + 220, 0, 8, 0.6);
setSeVolumeByWorkId( spep_0 + 196, SE021, 54 );
SE022 = playSeVer2( spep_0 + 200, 1026, "",spep_0 + 232, 0, 12, 0.6);
SE023 = playSeVer2( spep_0 + 208, 1245, "",spep_0 + 232, 0, 8, 0.6);
setSeVolumeByWorkId( spep_0 + 208, SE023, 47 );
SE024 = playSeVer2( spep_0 + 216, 1026, "",spep_0 + 276, 0, 40, 0.6);
SE025 = playSeVer2( spep_0 + 218, 1245, "",spep_0 + 254, 0, 18, 0.6);
setSeVolumeByWorkId( spep_0 + 218, SE025, 46 );

--画面遷移
SE026 = playSeVer2( spep_0 + 236, 1072, "", 0, 0, 0, -1);

--悟空アップ
SE027 = playSeVer2( spep_0 + 246, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE027, 87 );
SE028 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 278, 1036, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 302, 1036, "", 0, 0, 0, -1);

--アッパー
SE031 = playSeVer2( spep_0 + 310, 1004, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 320, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE032, 83 );
SE033 = playSeVer2( spep_0 + 320, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE033, 87 );
SE034 = playSeVer2( spep_0 + 324, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE034, 82 );
SE035 = playSeVer2( spep_0 + 324, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE035, 73 );

--アッパー中
SE036 = playSeVer2( spep_0 + 342, 1258, "",spep_0 + 430, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 342, SE036, 89 );
SE037 = playSeVer2( spep_0 + 342, 9, "", 0, 0, 0, -1);
setTimeStretch( SE037, 1.25, 30, 4 );

--光放つ
SE038 = playSeVer2( spep_0 + 424, 1172, "",spep_0 + 476, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 424, SE038, 62 );
SE039 = playSeVer2( spep_0 + 424, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE039, 136 );
SE040 = playSeVer2( spep_0 + 424, 1258, "",spep_0 + 510, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 424, SE040, 66 );

--気弾溜め
SE041 = playSeVer2( spep_0 + 560, 1239, "",spep_0 +726 + 16, 60, 14, -1);
setSeVolumeByWorkId( spep_0 + 560, SE041, 160 );
setStartTimeMs( SE041,  1967 );

--敵吹き飛ぶ
SE042 = playSeVer2( spep_0 + 456, 1027, "", 0, 0, 0, -1);

--気弾溜め
SE043 = playSeVer2( spep_0 + 572, 1210, "",spep_0 +726 + 16, 28, 12, -1);
setStartTimeMs( SE043,  1633 );

--オーラ弾ける
SE044 = playSeVer2( spep_0 + 494, 1026, "",spep_0 + 550, 0, 28, -1);
SE045 = playSeVer2( spep_0 + 494, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE045, 76 );

--気弾溜めはじめ
SE046 = playSeVer2( spep_0 + 528, 1273, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE046, 119 );
SE047 = playSeVer2( spep_0 + 528, 1240, "",spep_0 + 654, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 528, SE047, 136 );
setTimeStretch( SE047, 1.43, 30, 4 );
SE048 = playSeVer2( spep_0 + 528, 1252, "", 0, 0, 0, -1);

--気弾溜め
SE049 = playSeVer2( spep_0 + 560, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE049, 81 );
SE050 = playSeVer2( spep_0 + 560, 1147, "",spep_0 +726 + 16, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 560, SE050, 81 );
SE051 = playSeVer2( spep_0 + 562, 1296, "",spep_0 +726 + 12, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 562, SE051, 84 );

--気弾膨れる
SE052 = playSeVer2( spep_0 + 610, 1011, "",spep_0 + 678, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 610, SE052, 78 );

--腕を前に
SE053 = playSeVer2( spep_0 + 642, 1003, "", 0, 0, 0, -1);

--顔カットイン
SE054 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 726;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
-- playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- エフェクト(356F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --かめはめ波発射〜フィニッシュ ef_003
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 356, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 356, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 356, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 356, finish, 255 );

-- ** 音 ** --
--気弾発射
SE056 = playSeVer2( spep_2 + 12, 1213, "",spep_2 + 246, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 12, SE056, 88 );
SE057 = playSeVer2( spep_2 + 12, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE057, 81 );
SE058 = playSeVer2( spep_2 + 12, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE058, 88 );

--気弾発射２
SE059 = playSeVer2( spep_2 + 46, 1161, "",spep_2 + 242, 0, 14, -1);
SE060 = playSeVer2( spep_2 + 46, 1211, "",spep_2 + 242, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 46, SE060, 343 );

--画面遷移
SE061 = playSeVer2( spep_2 + 86, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE061, 91 );

--カメラ後ろ回り込む
SE062 = playSeVer2( spep_2 + 114, 1226, "",spep_2 + 268, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 114, SE062, 150 );
SE063 = playSeVer2( spep_2 + 114, 1188, "", 0, 0, 0, -1);

--気が迫る
SE064 = playSeVer2( spep_2 + 254, 1161, "", 0, 66, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE064, 115 );
setStartTimeMs( SE064,  2333 );
SE065 = playSeVer2( spep_2 + 256, 1211, "", 0, 64, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE065, 292 );
setStartTimeMs( SE065,  1167 );
SE066 = playSeVer2( spep_2 + 228, 1215, "", 0, 76, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE066, 70 );
setStartTimeMs( SE066,  550 );

--爆発
SE067 = playSeVer2( spep_2 + 230, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE067, 98 );
SE068 = playSeVer2( spep_2 + 230, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE068, 83 );

--気が迫る
SE069 = playSeVer2( spep_2 + 230, 1044, "", 0, 98, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE069, 200 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 356 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 246 );
endPhase( spep_2 + 346 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- エフェクト(726F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 726, 0x100, -1, 0, 0, 0 );  --ゴジータ登場〜かめはめ波構え ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 726, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 726, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 726, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 726 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 726, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 726, 0x80, -1, 0, 0, 0 );  --ゴジータ登場〜かめはめ波構え ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 726, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 726, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 726, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 726 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 726, first_b, 0 );

spep_x = spep_0 + 640;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1183, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 33 );
SE004 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setTimeStretch( SE004, 1.25, 30, 4 );
SE005 = playSeVer2( spep_0 + 8, 1227, "",spep_0 + 158, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 8, SE005, 130 );

--オーラ弾ける
SE006 = playSeVer2( spep_0 + 56, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE006, 97 );
SE007 = playSeVer2( spep_0 + 56, 1254, "",spep_0 + 144, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 63 );
setPitch( spep_0 + 56, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 56, 1062, "",spep_0 + 132, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 56, SE008, 85 );
SE009 = playSeVer2( spep_0 + 62, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE009, 35 );
setPitch( spep_0 + 62, SE009, -300 );
setTimeStretch( SE009, 0.8, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 726 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 94 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);

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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 -3 + 118, 1, 1 );
setDisp( spep_0 -3 + 260, 1, 0 );
changeAnime( spep_0 -3 + 118, 1, 117 );
changeAnime( spep_0 -3 + 132, 1, 104 );
changeAnime( spep_0 -3 + 144, 1, 106 );
changeAnime( spep_0 -3 + 174, 1, 105 );

setMoveKey( spep_0 -3 + 118, 1, 786.8, 92.2 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 556.2, 49.3 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 367.6, 14.1 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 220.9, -13.2 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 116.1, -32.7 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 53.2, -44.4 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 32.3, -48.3 , 0 );
setMoveKey( spep_0 -3 + 131, 1, 32.3, -48.3 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 32.3, -48.3 , 0 );--
setMoveKey( spep_0 -3 + 143, 1, 32.3, -48.3 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 43.4, -27.4 , 0 );--
setMoveKey( spep_0 -3 + 148, 1, 43.4, -27.4 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 69.9, -67.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 72.5, -62.2 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 58.3, -22.2 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 62.2, -40 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 63.6, -37.2 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 64.9, -34.8 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 65.9, -32.8 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 66.7, -31.1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 67.4, -21.8 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 67.8, -14.9 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 68.1, -14.3 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 68.2, -14.1 , 0 );
setMoveKey( spep_0 -3 + 173, 1, 68.2, -14.1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 74.1, -6.5 , 0 );--
setMoveKey( spep_0 -3 + 176, 1, 88.3, 33 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 117.7, 110.6 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 137.7, 163.6 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 149.4, 200.4 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 157.2, 227.1 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 146.3, 250 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 153.5, 256.5 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 156.9, 265.4 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 159.6, 272.5 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 161.8, 278.4 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 163.7, 283.3 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 165.2, 287.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 166.6, 290.9 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 167.7, 293.8 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 168.6, 296.4 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 169.5, 298.6 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 170.2, 300.5 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 170.8, 302.2 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 171.4, 303.7 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 171.9, 304.9 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 172.3, 306.1 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 172.7, 307.1 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 173, 308 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 173.3, 308.8 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 173.6, 309.5 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 173.8, 310.1 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 174.1, 310.7 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 174.3, 311.2 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 174.4, 311.7 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 174.6, 312.1 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 174.7, 312.5 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 174.9, 312.9 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 175, 313.2 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 175.1, 313.5 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 175.2, 313.8 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 175.3, 314.1 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 175.4, 314.4 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 175.5, 314.6 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 175.6, 314.9 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 175.7, 315.1 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 175.8, 315.3 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 175.9, 315.6 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 175.9, 315.6 , 0 );

setScaleKey( spep_0 -3 + 118, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 143, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 144, 1, 1.4, 1.4 );--
setScaleKey( spep_0 -3 + 148, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 150, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 152, 1, 1.82, 1.82 );
setScaleKey( spep_0 -3 + 154, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 156, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 173, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 174, 1, 1.34, 1.34 );--
setScaleKey( spep_0 -3 + 176, 1, 1.18, 1.18 );
setScaleKey( spep_0 -3 + 178, 1, 0.86, 0.86 );
setScaleKey( spep_0 -3 + 180, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 182, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 184, 1, 0.43, 0.43 );
setScaleKey( spep_0 -3 + 186, 1, 0.37, 0.37 );
setScaleKey( spep_0 -3 + 188, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 190, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 192, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 194, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 196, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 198, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 200, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 202, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 204, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 206, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 208, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 210, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 212, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 214, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 216, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 218, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 220, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 226, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 228, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 236, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 238, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 254, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 256, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 260, 1, 0.08, 0.08 );

setRotateKey( spep_0 -3 + 118, 1, 0 );
setRotateKey( spep_0 -3 + 143, 1, 0 );
setRotateKey( spep_0 -3 + 144, 1, -33 );--
setRotateKey( spep_0 -3 + 173, 1, -33 );
setRotateKey( spep_0 -3 + 174, 1, 2.2 );--
setRotateKey( spep_0 -3 + 176, 1, 7.4 );
setRotateKey( spep_0 -3 + 178, 1, 18.3 );
setRotateKey( spep_0 -3 + 180, 1, 25.7 );
setRotateKey( spep_0 -3 + 182, 1, 30 );
setRotateKey( spep_0 -3 + 184, 1, 32.9 );
setRotateKey( spep_0 -3 + 186, 1, 35 );
setRotateKey( spep_0 -3 + 188, 1, 36.6 );
setRotateKey( spep_0 -3 + 190, 1, 37.8 );
setRotateKey( spep_0 -3 + 192, 1, 38.8 );
setRotateKey( spep_0 -3 + 194, 1, 39.7 );
setRotateKey( spep_0 -3 + 196, 1, 40.3 );
setRotateKey( spep_0 -3 + 198, 1, 40.9 );
setRotateKey( spep_0 -3 + 200, 1, 41.4 );
setRotateKey( spep_0 -3 + 202, 1, 41.8 );
setRotateKey( spep_0 -3 + 204, 1, 42.2 );
setRotateKey( spep_0 -3 + 206, 1, 42.5 );
setRotateKey( spep_0 -3 + 208, 1, 42.8 );
setRotateKey( spep_0 -3 + 210, 1, 43 );
setRotateKey( spep_0 -3 + 212, 1, 43.2 );
setRotateKey( spep_0 -3 + 214, 1, 43.4 );
setRotateKey( spep_0 -3 + 216, 1, 43.5 );
setRotateKey( spep_0 -3 + 218, 1, 43.7 );
setRotateKey( spep_0 -3 + 220, 1, 43.8 );
setRotateKey( spep_0 -3 + 222, 1, 43.9 );
setRotateKey( spep_0 -3 + 224, 1, 44 );
setRotateKey( spep_0 -3 + 226, 1, 44.1 );
setRotateKey( spep_0 -3 + 228, 1, 44.2 );
setRotateKey( spep_0 -3 + 230, 1, 44.3 );
setRotateKey( spep_0 -3 + 232, 1, 44.3 );
setRotateKey( spep_0 -3 + 234, 1, 44.4 );
setRotateKey( spep_0 -3 + 236, 1, 44.4 );
setRotateKey( spep_0 -3 + 238, 1, 44.5 );
setRotateKey( spep_0 -3 + 240, 1, 44.5 );
setRotateKey( spep_0 -3 + 242, 1, 44.6 );
setRotateKey( spep_0 -3 + 244, 1, 44.6 );
setRotateKey( spep_0 -3 + 246, 1, 44.7 );
setRotateKey( spep_0 -3 + 250, 1, 44.7 );
setRotateKey( spep_0 -3 + 252, 1, 44.8 );
setRotateKey( spep_0 -3 + 256, 1, 44.8 );
setRotateKey( spep_0 -3 + 258, 1, 44.9 );
setRotateKey( spep_0 -3 + 260, 1, 44.9 );

--敵の動き2
setDisp( spep_0 -3 + 320, 1, 1 );
setDisp( spep_0 -3 + 572, 1, 0 );
changeAnime( spep_0 -3 + 320, 1, 108 );
changeAnime( spep_0 -3 + 466, 1, 106 );
changeAnime( spep_0 -3 + 572, 1, 108 );

setMoveKey( spep_0 -3 + 320, 1, 127.7, 191.5 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 127.7, 191.5 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 136.1, 189.3 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 127.7, 191.5 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 127.7, 191.5 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 140.3, 188.3 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 125.3, 164.9 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 136.5, 186.2 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 144, 182 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 136.9, 188.7 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 140, 178.7 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 140.2, 188.6 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 133.4, 181.6 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 142, 183.2 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 128, 184.5 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 132.4, 189.6 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 118.8, 182 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 121.8, 184.2 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 105.7, 179.9 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 101.9, 189.4 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 93.5, 179.2 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 97.7, 188.7 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 86.7, 182.4 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 94.5, 185.8 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 83.8, 182.9 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 92.1, 185.1 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 80.1, 186.2 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 89.6, 179.3 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 80.2, 183.1 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 88.3, 179.4 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 80.3, 187.1 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 89.2, 179.6 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 80.3, 186.1 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 88.5, 179.5 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 79.9, 187.9 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 83.7, 179 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 81.3, 189.5 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 78.5, 178.9 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 86.5, 190.4 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 78.5, 184.9 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 90.4, 189.3 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 84.3, 185.8 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 93.5, 194.6 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 84.7, 193.1 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 92.6, 207.6 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 92, 204.5 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 106.3, 217.9 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 93, 234.9 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 103, 253.9 , 0 );
setMoveKey( spep_0 -3 + 417, 1, 103, 253.9 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -75.6, -182.8 , 0 );--
setMoveKey( spep_0 -3 + 420, 1, -66.8, -159.7 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -63.2, -150.4 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -60.8, -144 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -59, -139.2 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -57.5, -135.3 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -56.3, -132.2 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -55.3, -129.6 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -54.5, -127.4 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -53.8, -125.6 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -53.2, -124.1 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -52.7, -122.9 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -62.6, -147.1 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -62.2, -146.2 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -49.5, -114.7 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -48.9, -123 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -51.5, -119.6 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -51.4, -119.4 , 0 );
setMoveKey( spep_0 -3 + 454, 1, -51.4, -119.3 , 0 );
setMoveKey( spep_0 -3 + 462, 1, -51.4, -119.3 , 0 );
setMoveKey( spep_0 -3 + 464, 1, -54.4, -118.2 , 0 );
setMoveKey( spep_0 -3 + 465, 1, -54.4, -118.2 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 88, 166.1 , 0 );--
setMoveKey( spep_0 -3 + 468, 1, 105.3, 221.9 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 168.4, 327.6 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 222.5, 436.5 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 269.8, 516.3 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 308.5, 589.5 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 329.5, 637 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 354.5, 671.3 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 362.9, 703.1 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 378.9, 718.2 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 380.9, 732.8 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 392.4, 742.9 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 390.7, 751.4 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 397.6, 753.3 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 389.4, 751 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 403.4, 768.2 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 420.9, 807.7 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 459.5, 887.7 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 552.9, 1085.2 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 622.2, 1224 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 662.2, 1309 , 0 );
setMoveKey( spep_0 -3 + 508, 1, 695.2, 1375.5 , 0 );
setMoveKey( spep_0 -3 + 510, 1, 720.1, 1429.8 , 0 );
setMoveKey( spep_0 -3 + 512, 1, 743.4, 1474.9 , 0 );
setMoveKey( spep_0 -3 + 514, 1, 760.6, 1516 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 778.6, 1549.5 , 0 );
setMoveKey( spep_0 -3 + 518, 1, 793.3, 1583.3 , 0 );
setMoveKey( spep_0 -3 + 520, 1, 807, 1610.5 , 0 );
setMoveKey( spep_0 -3 + 522, 1, 820.7, 1637.4 , 0 );
setMoveKey( spep_0 -3 + 524, 1, 832, 1660.8 , 0 );
setMoveKey( spep_0 -3 + 526, 1, 842.6, 1683.1 , 0 );
setMoveKey( spep_0 -3 + 528, 1, 852.5, 1703.7 , 0 );
setMoveKey( spep_0 -3 + 530, 1, 865.2, 1729.5 , 0 );
setMoveKey( spep_0 -3 + 532, 1, 876.6, 1753 , 0 );
setMoveKey( spep_0 -3 + 534, 1, 887.1, 1774.4 , 0 );
setMoveKey( spep_0 -3 + 536, 1, 896.8, 1794.1 , 0 );
setMoveKey( spep_0 -3 + 538, 1, 905.5, 1812.1 , 0 );
setMoveKey( spep_0 -3 + 540, 1, 913.7, 1828.7 , 0 );
setMoveKey( spep_0 -3 + 542, 1, 921.2, 1844 , 0 );
setMoveKey( spep_0 -3 + 544, 1, 928.1, 1858.1 , 0 );
setMoveKey( spep_0 -3 + 546, 1, 934.4, 1871.1 , 0 );
setMoveKey( spep_0 -3 + 548, 1, 940.3, 1883.1 , 0 );
setMoveKey( spep_0 -3 + 550, 1, 945.7, 1894.1 , 0 );
setMoveKey( spep_0 -3 + 552, 1, 950.7, 1904.2 , 0 );
setMoveKey( spep_0 -3 + 554, 1, 955.1, 1913.4 , 0 );
setMoveKey( spep_0 -3 + 556, 1, 959.3, 1921.9 , 0 );
setMoveKey( spep_0 -3 + 558, 1, 963.1, 1929.5 , 0 );
setMoveKey( spep_0 -3 + 560, 1, 966.4, 1936.3 , 0 );
setMoveKey( spep_0 -3 + 562, 1, 969.3, 1942.3 , 0 );
setMoveKey( spep_0 -3 + 564, 1, 971.9, 1947.5 , 0 );
setMoveKey( spep_0 -3 + 566, 1, 974, 1951.8 , 0 );
setMoveKey( spep_0 -3 + 568, 1, 975.6, 1955.1 , 0 );
setMoveKey( spep_0 -3 + 570, 1, 976.2, 1956.6 , 0 );
setMoveKey( spep_0 -3 + 571, 1, 976.2, 1956.6 , 0 );
setMoveKey( spep_0 -3 + 572, 1, 976.2, 1956.6 , 0 );--

setScaleKey( spep_0 -3 + 320, 1, 12.97, 12.97 );
setScaleKey( spep_0 -3 + 334, 1, 12.97, 12.97 );
setScaleKey( spep_0 -3 + 336, 1, 12.87, 12.87 );
setScaleKey( spep_0 -3 + 338, 1, 12.76, 12.76 );
setScaleKey( spep_0 -3 + 340, 1, 12.62, 12.62 );
setScaleKey( spep_0 -3 + 342, 1, 12.44, 12.44 );
setScaleKey( spep_0 -3 + 344, 1, 12.2, 12.2 );
setScaleKey( spep_0 -3 + 346, 1, 11.86, 11.86 );
setScaleKey( spep_0 -3 + 348, 1, 11.37, 11.37 );
setScaleKey( spep_0 -3 + 350, 1, 10.68, 10.68 );
setScaleKey( spep_0 -3 + 352, 1, 9.7, 9.7 );
setScaleKey( spep_0 -3 + 354, 1, 8.38, 8.38 );
setScaleKey( spep_0 -3 + 356, 1, 6.79, 6.79 );
setScaleKey( spep_0 -3 + 358, 1, 5.56, 5.56 );
setScaleKey( spep_0 -3 + 360, 1, 4.66, 4.66 );
setScaleKey( spep_0 -3 + 362, 1, 3.97, 3.97 );
setScaleKey( spep_0 -3 + 364, 1, 3.45, 3.45 );
setScaleKey( spep_0 -3 + 366, 1, 3.04, 3.04 );
setScaleKey( spep_0 -3 + 368, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 370, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 372, 1, 2.32, 2.32 );
setScaleKey( spep_0 -3 + 374, 1, 2.18, 2.18 );
setScaleKey( spep_0 -3 + 376, 1, 2.08, 2.08 );
setScaleKey( spep_0 -3 + 378, 1, 2, 2 );
setScaleKey( spep_0 -3 + 380, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 382, 1, 1.9, 1.9 );
setScaleKey( spep_0 -3 + 384, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 386, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 388, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 417, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 418, 1, 0.3, 0.3 );--
setScaleKey( spep_0 -3 + 464, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 465, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 466, 1, 0.3, 0.3 );--
setScaleKey( spep_0 -3 + 496, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 498, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 500, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 502, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 504, 1, 0.46, 0.46 );
setScaleKey( spep_0 -3 + 506, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 508, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 510, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 512, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 514, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 516, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 518, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 520, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 522, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 524, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 526, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 528, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 530, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 532, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 534, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 536, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 538, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 540, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 542, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 544, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 546, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 548, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 550, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 554, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 556, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 562, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 564, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 571, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 572, 1, 0.72, 0.72 );--

setRotateKey( spep_0 -3 + 320, 1, -44.9 );
setRotateKey( spep_0 -3 + 417, 1, -44.9 );
setRotateKey( spep_0 -3 + 418, 1, -44.9 );--
setRotateKey( spep_0 -3 + 464, 1, -44.9 );
setRotateKey( spep_0 -3 + 465, 1, -44.9 );
setRotateKey( spep_0 -3 + 466, 1, -44.9 );--
setRotateKey( spep_0 -3 + 468, 1, -29.9 );
setRotateKey( spep_0 -3 + 470, 1, -26.7 );
setRotateKey( spep_0 -3 + 472, 1, -23.8 );
setRotateKey( spep_0 -3 + 474, 1, -21.4 );
setRotateKey( spep_0 -3 + 476, 1, -19.5 );
setRotateKey( spep_0 -3 + 478, 1, -18.1 );
setRotateKey( spep_0 -3 + 480, 1, -17.1 );
setRotateKey( spep_0 -3 + 482, 1, -16.3 );
setRotateKey( spep_0 -3 + 484, 1, -15.8 );
setRotateKey( spep_0 -3 + 486, 1, -15.4 );
setRotateKey( spep_0 -3 + 488, 1, -15.1 );
setRotateKey( spep_0 -3 + 490, 1, -14.9 );
setRotateKey( spep_0 -3 + 571, 1, -14.9 );
setRotateKey( spep_0 -3 + 572, 1, -14.9 );--

-- ** 音 ** --
--向かっていく
SE010 = playSeVer2( spep_0 + 92, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE010, 71 );

--サマーソルト
SE011 = playSeVer2( spep_0 + 126, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 134, 1187, "",spep_0 + 148, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 134, SE012, 82 );
SE013 = playSeVer2( spep_0 + 136, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE013, 74 );
SE014 = playSeVer2( spep_0 + 138, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE014, 76 );
SE015 = playSeVer2( spep_0 + 138, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE015, 84 );
SE016 = playSeVer2( spep_0 + 138, 1049, "",spep_0 + 186, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 138, SE016, 87 );

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 162, 1183, "", 0, 0, 0, -1);

--気ダメ
SE018 = playSeVer2( spep_0 + 186, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE018, 119 );

--ジグザグに追いかける
SE019 = playSeVer2( spep_0 + 192, 1026, "",spep_0 + 222, 0, 10, 0.6);
SE020 = playSeVer2( spep_0 + 200, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 196, 1245, "",spep_0 + 220, 0, 8, 0.6);
setSeVolumeByWorkId( spep_0 + 196, SE021, 54 );
SE022 = playSeVer2( spep_0 + 200, 1026, "",spep_0 + 232, 0, 12, 0.6);
SE023 = playSeVer2( spep_0 + 208, 1245, "",spep_0 + 232, 0, 8, 0.6);
setSeVolumeByWorkId( spep_0 + 208, SE023, 47 );
SE024 = playSeVer2( spep_0 + 216, 1026, "",spep_0 + 276, 0, 40, 0.6);
SE025 = playSeVer2( spep_0 + 218, 1245, "",spep_0 + 254, 0, 18, 0.6);
setSeVolumeByWorkId( spep_0 + 218, SE025, 46 );

--画面遷移
SE026 = playSeVer2( spep_0 + 236, 1072, "", 0, 0, 0, -1);

--悟空アップ
SE027 = playSeVer2( spep_0 + 246, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE027, 87 );
SE028 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 278, 1036, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 302, 1036, "", 0, 0, 0, -1);

--アッパー
SE031 = playSeVer2( spep_0 + 310, 1004, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 320, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE032, 83 );
SE033 = playSeVer2( spep_0 + 320, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE033, 87 );
SE034 = playSeVer2( spep_0 + 324, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE034, 82 );
SE035 = playSeVer2( spep_0 + 324, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE035, 73 );

--アッパー中
SE036 = playSeVer2( spep_0 + 342, 1258, "",spep_0 + 430, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 342, SE036, 89 );
SE037 = playSeVer2( spep_0 + 342, 9, "", 0, 0, 0, -1);
setTimeStretch( SE037, 1.25, 30, 4 );

--光放つ
SE038 = playSeVer2( spep_0 + 424, 1172, "",spep_0 + 476, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 424, SE038, 62 );
SE039 = playSeVer2( spep_0 + 424, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE039, 136 );
SE040 = playSeVer2( spep_0 + 424, 1258, "",spep_0 + 510, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 424, SE040, 66 );

--気弾溜め
SE041 = playSeVer2( spep_0 + 560, 1239, "",spep_0 +726 + 16, 60, 14, -1);
setSeVolumeByWorkId( spep_0 + 560, SE041, 160 );
setStartTimeMs( SE041,  1967 );

--敵吹き飛ぶ
SE042 = playSeVer2( spep_0 + 456, 1027, "", 0, 0, 0, -1);

--気弾溜め
SE043 = playSeVer2( spep_0 + 572, 1210, "",spep_0 +726 + 16, 28, 12, -1);
setStartTimeMs( SE043,  1633 );

--オーラ弾ける
SE044 = playSeVer2( spep_0 + 494, 1026, "",spep_0 + 550, 0, 28, -1);
SE045 = playSeVer2( spep_0 + 494, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE045, 76 );

--気弾溜めはじめ
SE046 = playSeVer2( spep_0 + 528, 1273, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE046, 119 );
SE047 = playSeVer2( spep_0 + 528, 1240, "",spep_0 + 654, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 528, SE047, 136 );
setTimeStretch( SE047, 1.43, 30, 4 );
SE048 = playSeVer2( spep_0 + 528, 1252, "", 0, 0, 0, -1);

--気弾溜め
SE049 = playSeVer2( spep_0 + 560, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE049, 81 );
SE050 = playSeVer2( spep_0 + 560, 1147, "",spep_0 +726 + 16, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 560, SE050, 81 );
SE051 = playSeVer2( spep_0 + 562, 1296, "",spep_0 +726 + 12, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 562, SE051, 84 );

--気弾膨れる
SE052 = playSeVer2( spep_0 + 610, 1011, "",spep_0 + 678, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 610, SE052, 78 );

--腕を前に
SE053 = playSeVer2( spep_0 + 642, 1003, "", 0, 0, 0, -1);

--顔カットイン
SE054 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 726;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- エフェクト(356F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --かめはめ波発射〜フィニッシュ ef_003
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 356, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + 356, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 356, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 356, finish, 255 );

-- ** 音 ** --
--気弾発射
SE056 = playSeVer2( spep_2 + 12, 1213, "",spep_2 + 246, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 12, SE056, 88 );
SE057 = playSeVer2( spep_2 + 12, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE057, 81 );
SE058 = playSeVer2( spep_2 + 12, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE058, 88 );

--気弾発射２
SE059 = playSeVer2( spep_2 + 46, 1161, "",spep_2 + 242, 0, 14, -1);
SE060 = playSeVer2( spep_2 + 46, 1211, "",spep_2 + 242, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 46, SE060, 343 );

--画面遷移
SE061 = playSeVer2( spep_2 + 86, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE061, 91 );

--カメラ後ろ回り込む
SE062 = playSeVer2( spep_2 + 114, 1226, "",spep_2 + 268, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 114, SE062, 150 );
SE063 = playSeVer2( spep_2 + 114, 1188, "", 0, 0, 0, -1);

--気が迫る
SE064 = playSeVer2( spep_2 + 254, 1161, "", 0, 66, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE064, 115 );
setStartTimeMs( SE064,  2333 );
SE065 = playSeVer2( spep_2 + 256, 1211, "", 0, 64, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE065, 292 );
setStartTimeMs( SE065,  1167 );
SE066 = playSeVer2( spep_2 + 228, 1215, "", 0, 76, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE066, 70 );
setStartTimeMs( SE066,  550 );

--爆発
SE067 = playSeVer2( spep_2 + 230, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE067, 98 );
SE068 = playSeVer2( spep_2 + 230, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE068, 83 );

--気が迫る
SE069 = playSeVer2( spep_2 + 230, 1044, "", 0, 98, 0, -1);
setSeVolumeByWorkId( spep_2 + 230, SE069, 200 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 356 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 246 );
endPhase( spep_2 + 346 );

end