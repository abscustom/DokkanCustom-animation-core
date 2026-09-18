--1024730:天津飯_烈破転身鶴
--sp_effect_b4_00241
--sp2395

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
SP_01 = 160064; --開幕〜セリフカットインまで ef_001
SP_02 = 160065; --構えで手前に迫って来て、連続攻撃、岩場に向かって敵を蹴り飛ばす   ef_002
SP_03 = 160067; --構えで手前に迫って来て、連続攻撃、岩場に向かって敵を蹴り飛ばす   ef_003
SP_04 = 160069; --天津飯衝撃波、岩が崩れて煙と岩の破片吹き飛んで来る ef_004
SP_05 = 160071; --天津飯衝撃波、岩が崩れて煙と岩の破片吹き飛んで来る ef_005

--敵側
SP_02r = 160066;    --同上　敵側 ef_002r
SP_03r = 160068;    --同上　敵側 ef_003r
SP_04r = 160070;    --同上　敵側 ef_004r
SP_05r = 160072;    --同上　敵側 ef_005r


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
-- 開幕〜セリフカットインまで(90F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 90, 0x100, -1, 0, 0, 0 );  --開幕〜セリフカットインまで    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 90, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 90 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 90, first_f, 0 );

spep_x = spep_0 + 0;
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
--顔カットイン
SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--拳合わせる
SE002 = playSeVer2( spep_0 + 38, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 42, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 136 );
SE004 = playSeVer2( spep_0 + 48, 1006, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 90 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 90;


------------------------------------------------------
-- 構えで手前に迫って来て、連続攻撃、岩場に向かって敵を蹴り飛ばす(430F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_1 + 0, SP_02, 430, 0x100, -1, 0, 0, 0 );  --構えで手前に迫って来て、連続攻撃、岩場に向かって敵を蹴り飛ばす    ef_002
setEffMoveKey( spep_1 + 0, effect01, 0, 0 , 0 );
setEffMoveKey( spep_1 + 430, effect01, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, effect01, 1.0, 1.0 );
setEffScaleKey( spep_1 + 430, effect01, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, effect01, 0 );
setEffRotateKey( spep_1 + 430, effect01, 0 );
setEffAlphaKey( spep_1 + 0, effect01, 255 );
setEffAlphaKey( spep_1 + 430 -1, effect01, 255 );
setEffAlphaKey( spep_1 + 430, effect01, 0 );

attack_b = entryEffectLife( spep_1 + 0, SP_03, 430, 0x80, -1, 0, 0, 0 );  --構えで手前に迫って来て、連続攻撃、岩場に向かって敵を蹴り飛ばす ef_003
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 430, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 430, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 430, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 430 -1, attack_b, 255 );
setEffAlphaKey( spep_1 + 430, attack_b, 0 );

-- ** 音 ** --
--構える
SE005 = playSeVer2( spep_1 + 4, 1192, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 4, 1330, "",spep_1 + 56, 0, 22, -1);
SE007 = playSeVer2( spep_1 + 8, 1004, "", 0, 0, 0, -1);

--向かってくる
SE008 = playSeVer2( spep_1 + 48, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 48, 9, "", 0, 0, 0, -1);
setTimeStretch( SE009, 1.11, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 430 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 90 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
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
setDisp( spep_1 -3 + 116, 1, 1 );
setDisp( spep_1 -3 + 270, 1, 0 );
changeAnime( spep_1 -3 + 116, 1, 101 );
changeAnime( spep_1 -3 + 132, 1, 108 );
changeAnime( spep_1 -3 + 228, 1, 106 );

setMoveKey( spep_1 -3 + 116, 1, 409.5, -42.7 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 312.3, -42.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 240.4, -42.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 190.3, -42.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 158.7, -42.7 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 141.9, -42.7 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 136.6, -42.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 139.2, -42.7 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 139.2, -42.7 , 0 );--
setMoveKey( spep_1 -3 + 132, 1, 238.8, -1.4 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 243.7, 12.8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 210.4, -22.6 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 230.4, -8.6 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 216.5, 13.6 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 186.5, -22.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 216.4, 13.4 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 236.4, -14.6 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 216.5, 13.6 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 186.5, -22.4 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 216.4, 13.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 236.4, -14.6 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 208.5, 5.6 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 202.5, -4.4 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 228.4, 1.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 202.6, -6.4 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 192.7, -0.8 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 72.9, -1.3 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 13.3, -1.5 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -36.9, -1.5 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -30.8, -1.5 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 18.8, -1.4 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 121.2, -1.3 , 0 );
setMoveKey( spep_1 -3 + 177, 1, 121.2, -1.3 , 0 );--
setMoveKey( spep_1 -3 + 178, 1, 160.6, -882.7 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 159.5, -873.1 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 154.7, -838.8 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 144.7, -769.9 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 128, -658.7 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 118.9, -518.3 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 98, -384.3 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 71.8, -277.9 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 71.7, -198.7 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 56.5, -141.3 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 63.5, -100.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 64.6, -72.6 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 68.1, -54.8 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 73.9, -45.1 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 81.4, -42.1 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 81.4, -42.1 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 72.9, -42.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 81.4, -42.1 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 72.9, -42.1 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 81.4, -42.1 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 81.4, -42.1 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 25.3, -42.1 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 0.6, -42.1 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 22.3, -42.2 , 0 );
setMoveKey( spep_1 -3 + 227, 1, 22.3, -42.2 , 0 );--
setMoveKey( spep_1 -3 + 228, 1, 97.5, -43.3 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 97.5, -43.3 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 103.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 103.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 97.5, -43.3 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 103.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 97.5, -43.3 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 103.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 83.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 76.3, -43.3 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 70.9, -43.3 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 67.1, -43.3 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 64.8, -43.3 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 64, -43.3 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 64.7, -43.3 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 67, -43.3 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 70.9, -43.3 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 76.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 83.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 91.6, -43.3 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 101.6, -43.3 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 101.6, -43.3 , 0 );

setScaleKey( spep_1 -3 + 116, 1, 2.35, 2.35 );
setScaleKey( spep_1 -3 + 131, 1, 2.35, 2.35 );--
setScaleKey( spep_1 -3 + 132, 1, 2.66, 2.66 );
setScaleKey( spep_1 -3 + 134, 1, 2.84, 2.84 );
setScaleKey( spep_1 -3 + 136, 1, 3.37, 3.37 );
setScaleKey( spep_1 -3 + 162, 1, 3.37, 3.37 );
setScaleKey( spep_1 -3 + 164, 1, 3.2, 3.2 );
setScaleKey( spep_1 -3 + 166, 1, 2.66, 2.66 );
setScaleKey( spep_1 -3 + 176, 1, 2.66, 2.66 );
setScaleKey( spep_1 -3 + 177, 1, 2.66, 2.66 );--
setScaleKey( spep_1 -3 + 178, 1, 2.14, 2.14 );
setScaleKey( spep_1 -3 + 180, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 182, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 184, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 186, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 188, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 190, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 192, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 194, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 196, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 198, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 200, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 202, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 204, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 220, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 222, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 224, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 226, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 227, 1, 1.19, 1.19 );--
setScaleKey( spep_1 -3 + 228, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 270, 1, 1.12, 1.12 );

setRotateKey( spep_1 -3 + 116, 1, 0 );
setRotateKey( spep_1 -3 + 227, 1, 0 );--
setRotateKey( spep_1 -3 + 228, 1, -16.5 );
setRotateKey( spep_1 -3 + 270, 1, -16.5 );


-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 328, 1, 1 );
setDisp( spep_1 -3 + 433, 1, 0 );
changeAnime( spep_1 -3 + 328, 1, 106 );
changeAnime( spep_1 -3 + 336, 1, 108 );
changeAnime( spep_1 -3 + 364, 1, 106 );

setMoveKey( spep_1 -3 + 328, 1, 82.2, -32.9 , 0 );
setMoveKey( spep_1 -3 + 330, 1, 90.9, -36.3 , 0 );
setMoveKey( spep_1 -3 + 332, 1, 99.6, -39.7 , 0 );
setMoveKey( spep_1 -3 + 334, 1, 108.3, -43 , 0 );
setMoveKey( spep_1 -3 + 335, 1, 108.3, -43 , 0 );--
setMoveKey( spep_1 -3 + 336, 1, 117.6, -42.8 , 0 );
setMoveKey( spep_1 -3 + 338, 1, 140.2, -29.7 , 0 );
setMoveKey( spep_1 -3 + 340, 1, 121.9, -67 , 0 );
setMoveKey( spep_1 -3 + 342, 1, 147.9, -40.7 , 0 );
setMoveKey( spep_1 -3 + 344, 1, 179.6, -57 , 0 );
setMoveKey( spep_1 -3 + 346, 1, 189.8, -43.4 , 0 );
setMoveKey( spep_1 -3 + 348, 1, 162.2, -55.9 , 0 );
setMoveKey( spep_1 -3 + 350, 1, 136.8, -40 , 0 );
setMoveKey( spep_1 -3 + 352, 1, 112.6, -33.6 , 0 );
setMoveKey( spep_1 -3 + 354, 1, 111.9, -28.8 , 0 );
setMoveKey( spep_1 -3 + 356, 1, 152.9, -27.2 , 0 );
setMoveKey( spep_1 -3 + 358, 1, 62.9, 3.4 , 0 );
setMoveKey( spep_1 -3 + 360, 1, 39.8, -34.9 , 0 );
setMoveKey( spep_1 -3 + 362, 1, 52.6, -1.1 , 0 );
setMoveKey( spep_1 -3 + 363, 1, 52.6, -1.1 , 0 );--
setMoveKey( spep_1 -3 + 364, 1, 4.2, -32.6 , 0 );
setMoveKey( spep_1 -3 + 366, 1, 14.6, 0 , 0 );
setMoveKey( spep_1 -3 + 368, 1, -9.9, -32.3 , 0 );
setMoveKey( spep_1 -3 + 370, 1, 4.7, -1.4 , 0 );
setMoveKey( spep_1 -3 + 372, 1, 18.4, -13.3 , 0 );
setMoveKey( spep_1 -3 + 374, 1, 23.2, 2 , 0 );
setMoveKey( spep_1 -3 + 376, 1, 15, -13.6 , 0 );
setMoveKey( spep_1 -3 + 378, 1, 12.2, 2.7 , 0 );
setMoveKey( spep_1 -3 + 380, 1, 21.4, -11.1 , 0 );
setMoveKey( spep_1 -3 + 382, 1, 22.5, 3.1 , 0 );
setMoveKey( spep_1 -3 + 384, 1, 11.7, -12.8 , 0 );
setMoveKey( spep_1 -3 + 386, 1, 8.8, 3.3 , 0 );
setMoveKey( spep_1 -3 + 388, 1, 17.9, -10.6 , 0 );
setMoveKey( spep_1 -3 + 390, 1, 19, 3.4 , 0 );
setMoveKey( spep_1 -3 + 392, 1, 8.1, -12.6 , 0 );
setMoveKey( spep_1 -3 + 394, 1, 5.2, 3.3 , 0 );
setMoveKey( spep_1 -3 + 396, 1, 14.3, -10.8 , 0 );
setMoveKey( spep_1 -3 + 398, 1, 15.3, 3.1 , 0 );
setMoveKey( spep_1 -3 + 400, 1, 8.4, -7.1 , 0 );
setMoveKey( spep_1 -3 + 402, 1, 1.4, 2.6 , 0 );
setMoveKey( spep_1 -3 + 404, 1, 10.4, -11.6 , 0 );
setMoveKey( spep_1 -3 + 406, 1, 11.4, 2.1 , 0 );
setMoveKey( spep_1 -3 + 408, 1, 4.4, -8.3 , 0 );
setMoveKey( spep_1 -3 + 410, 1, -2.6, 1.3 , 0 );
setMoveKey( spep_1 -3 + 412, 1, 6.4, -13.1 , 0 );
setMoveKey( spep_1 -3 + 414, 1, 7.3, 0.4 , 0 );
setMoveKey( spep_1 -3 + 416, 1, 0.2, -10.1 , 0 );
setMoveKey( spep_1 -3 + 418, 1, -6.8, -0.6 , 0 );
setMoveKey( spep_1 -3 + 420, 1, 2.1, -15.2 , 0 );
setMoveKey( spep_1 -3 + 422, 1, 2.9, -1.9 , 0 );
setMoveKey( spep_1 -3 + 424, 1, -4.1, -12.5 , 0 );
setMoveKey( spep_1 -3 + 426, 1, -10.8, -2.9 , 0 );
setMoveKey( spep_1 -3 + 428, 1, -1.4, -17.2 , 0 );
setMoveKey( spep_1 -3 + 430, 1, 0.3, -3.4 , 0 );
setMoveKey( spep_1 -3 + 432, 1, -5.8, -13.5 , 0 );
setMoveKey( spep_1 -3 + 433, 1, -5.8, -13.5 , 0 );

setScaleKey( spep_1 -3 + 328, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 330, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 332, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 334, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 335, 1, 1.46, 1.46 );--
setScaleKey( spep_1 -3 + 336, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 338, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 340, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 342, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 344, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 346, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 348, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 350, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 352, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 354, 1, 2, 2 );
setScaleKey( spep_1 -3 + 356, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 358, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 360, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 362, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 363, 1, 2.33, 2.33 );--
setScaleKey( spep_1 -3 + 364, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 370, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 372, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 374, 1, 2.35, 2.35 );
setScaleKey( spep_1 -3 + 376, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 378, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 380, 1, 2.39, 2.39 );
setScaleKey( spep_1 -3 + 382, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 384, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 386, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 388, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 390, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 392, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 394, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 396, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 398, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 400, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 402, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 404, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 406, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 408, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 410, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 412, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 414, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 416, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 418, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 420, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 424, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 426, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 433, 1, 2.58, 2.58 );

setRotateKey( spep_1 -3 + 328, 1, -32.2 );
setRotateKey( spep_1 -3 + 335, 1, -32.2 );
setRotateKey( spep_1 -3 + 336, 1, 0.4 );--
setRotateKey( spep_1 -3 + 338, 1, 0.7 );
setRotateKey( spep_1 -3 + 340, 1, 1.1 );
setRotateKey( spep_1 -3 + 342, 1, 1.7 );
setRotateKey( spep_1 -3 + 344, 1, 2.5 );
setRotateKey( spep_1 -3 + 346, 1, 3.6 );
setRotateKey( spep_1 -3 + 348, 1, 4.9 );
setRotateKey( spep_1 -3 + 350, 1, 6.6 );
setRotateKey( spep_1 -3 + 352, 1, 8.6 );
setRotateKey( spep_1 -3 + 354, 1, 10.7 );
setRotateKey( spep_1 -3 + 356, 1, 13 );
setRotateKey( spep_1 -3 + 363, 1, 13 );--
setRotateKey( spep_1 -3 + 364, 1, -50.4 );
setRotateKey( spep_1 -3 + 366, 1, -50.5 );
setRotateKey( spep_1 -3 + 368, 1, -50.6 );
setRotateKey( spep_1 -3 + 370, 1, -50.8 );
setRotateKey( spep_1 -3 + 372, 1, -51 );
setRotateKey( spep_1 -3 + 374, 1, -51.4 );
setRotateKey( spep_1 -3 + 376, 1, -51.8 );
setRotateKey( spep_1 -3 + 378, 1, -52.4 );
setRotateKey( spep_1 -3 + 380, 1, -53 );
setRotateKey( spep_1 -3 + 382, 1, -53.6 );
setRotateKey( spep_1 -3 + 384, 1, -54.2 );
setRotateKey( spep_1 -3 + 386, 1, -54.8 );
setRotateKey( spep_1 -3 + 388, 1, -55.3 );
setRotateKey( spep_1 -3 + 390, 1, -55.8 );
setRotateKey( spep_1 -3 + 392, 1, -56.3 );
setRotateKey( spep_1 -3 + 394, 1, -56.8 );
setRotateKey( spep_1 -3 + 396, 1, -57.2 );
setRotateKey( spep_1 -3 + 398, 1, -57.6 );
setRotateKey( spep_1 -3 + 400, 1, -58 );
setRotateKey( spep_1 -3 + 402, 1, -58.4 );
setRotateKey( spep_1 -3 + 404, 1, -58.7 );
setRotateKey( spep_1 -3 + 406, 1, -59 );
setRotateKey( spep_1 -3 + 408, 1, -59.3 );
setRotateKey( spep_1 -3 + 410, 1, -59.6 );
setRotateKey( spep_1 -3 + 412, 1, -59.9 );
setRotateKey( spep_1 -3 + 414, 1, -60.1 );
setRotateKey( spep_1 -3 + 416, 1, -60.3 );
setRotateKey( spep_1 -3 + 418, 1, -60.5 );
setRotateKey( spep_1 -3 + 420, 1, -60.6 );
setRotateKey( spep_1 -3 + 422, 1, -60.7 );
setRotateKey( spep_1 -3 + 424, 1, -60.9 );
setRotateKey( spep_1 -3 + 426, 1, -60.9 );
setRotateKey( spep_1 -3 + 428, 1, -61 );
setRotateKey( spep_1 -3 + 433, 1, -61 );

-- ** 音 ** --
--ひじうち
SE010 = playSeVer2( spep_1 + 118, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 124, 1187, "", 0, 0, 0, -1);

--敵吹っ飛ぶ
SE012 = playSeVer2( spep_1 + 160, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 160, SE012, 68 );

--ラッシュ
SE013 = playSeVer2( spep_1 + 196, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 196, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 214, 1110, "", 0, 0, 0, -1);

--ジャンプ
SE016 = playSeVer2( spep_1 + 236, 1003, "", 0, 0, 0, -1);

--飛びかかる
SE017 = playSeVer2( spep_1 + 258, 1117, "",spep_1 + 338, 0, 14, -1);
SE018 = playSeVer2( spep_1 + 264, 1072, "", 0, 0, 0, -1);

--飛び蹴り
SE019 = playSeVer2( spep_1 + 324, 1120, "", 0, 0, 0, -1);

--岩激突
SE020 = playSeVer2( spep_1 + 348, 1159, "",spep_1 + 446, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 348, SE020, 70 );
SE021 = playSeVer2( spep_1 + 348, 1023, "",spep_1 + 446, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 348, SE021, 74 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 430;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

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

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--手前に出す
SE023 = playSeVer2( spep_2 + 82, 1264, "",spep_2 + 172, 14, 22, -1);
setSeVolumeByWorkId( spep_2 + 82, SE023, 63 );
setStartTimeMs( SE023,  117 );
SE024 = playSeVer2( spep_2 + 82, 1116, "",spep_2 + 120, 0, 16, -1);
SE025 = playSeVer2( spep_2 + 82, 1278, "",spep_2 + 164, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 82, SE025, 84 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 天津飯衝撃波、岩が崩れて煙と岩の破片吹き飛んで来る(270F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --天津飯衝撃波、岩が崩れて煙と岩の破片吹き飛んで来る  ef_004
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 270, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 270, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 270, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --天津飯衝撃波、岩が崩れて煙と岩の破片吹き飛んで来る   ef_005
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 270, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 270, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 270, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 76, 1, 1 );
setDisp( spep_3 -3 + 124, 1, 0 );
changeAnime( spep_3 -3 + 76, 1, 106 );
changeAnime( spep_3 -3 + 96, 1, 108 );

setMoveKey( spep_3 -3 + 76, 1, 220, -88.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 230, -72.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 212, -108.9 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 210, -64.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 232, -108.9 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 230, -72.9 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 212, -108.9 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 210, -64.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 232, -108.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 230, -72.9 , 0 );
setMoveKey( spep_3 -3 + 95, 1, 230, -72.9 , 0 );--
setMoveKey( spep_3 -3 + 96, 1, 208, -41.8 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 253.4, 17.1 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 204, 152.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 194.8, 176.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 204.4, 183.4 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 212.9, 189.2 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 220.4, 194.3 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 227, 198.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 238.5, 208.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 233, 195.6 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 234.5, 214.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 246.7, 202.5 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 253.5, 229.4 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 234.6, 197.4 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 234.6, 197.4 , 0 );

setScaleKey( spep_3 -3 + 76, 1, 19.66, 19.66 );
setScaleKey( spep_3 -3 + 95, 1, 19.66, 19.66 );--
setScaleKey( spep_3 -3 + 96, 1, 19.2, 19.2 );
setScaleKey( spep_3 -3 + 98, 1, 15, 15 );
setScaleKey( spep_3 -3 + 100, 1, 4.68, 4.68 );
setScaleKey( spep_3 -3 + 102, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 104, 1, 2.22, 2.22 );
setScaleKey( spep_3 -3 + 106, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 108, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 110, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 112, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 114, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 116, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 118, 1, 0.96, 0.96 );
setScaleKey( spep_3 -3 + 120, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 122, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 124, 1, 0.94, 0.94 );

setRotateKey( spep_3 -3 + 76, 1, -90.3 );
setRotateKey( spep_3 -3 + 95, 1, -90.3 );--
setRotateKey( spep_3 -3 + 96, 1, -27.8 );
setRotateKey( spep_3 -3 + 98, 1, -27.9 );
setRotateKey( spep_3 -3 + 112, 1, -27.9 );
setRotateKey( spep_3 -3 + 114, 1, -28 );
setRotateKey( spep_3 -3 + 124, 1, -28 );

-- ** 音 ** --
--空気圧
SE026 = playSeVer2( spep_3 + 48, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE026, 93 );
SE027 = playSeVer2( spep_3 + 48, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE027, 91 );
SE028 = playSeVer2( spep_3 + 48, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE028, 87 );

--敵吹っ飛ぶ
SE029 = playSeVer2( spep_3 + 84, 1027, "", 0, 0, 0, -1);

--岩激突
SE030 = playSeVer2( spep_3 + 94, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 94, SE030, 78 );
SE031 = playSeVer2( spep_3 + 110, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE031, 87 );
SE032 = playSeVer2( spep_3 + 138, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 138, SE032, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 270 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 124 );
endPhase( spep_3 + 260 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕〜セリフカットインまで(90F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 90, 0x100, -1, 0, 0, 0 );  --開幕〜セリフカットインまで    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 90, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 90, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 90 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 90, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

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
--SE001 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--拳合わせる
SE002 = playSeVer2( spep_0 + 38, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 42, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 136 );
SE004 = playSeVer2( spep_0 + 48, 1006, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 90 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 90;


------------------------------------------------------
-- 構えで手前に迫って来て、連続攻撃、岩場に向かって敵を蹴り飛ばす(430F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_1 + 0, SP_02r, 430, 0x100, -1, 0, 0, 0 );  --構えで手前に迫って来て、連続攻撃、岩場に向かって敵を蹴り飛ばす    ef_002
setEffMoveKey( spep_1 + 0, effect01, 0, 0 , 0 );
setEffMoveKey( spep_1 + 430, effect01, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, effect01, 1.0, 1.0 );
setEffScaleKey( spep_1 + 430, effect01, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, effect01, 0 );
setEffRotateKey( spep_1 + 430, effect01, 0 );
setEffAlphaKey( spep_1 + 0, effect01, 255 );
setEffAlphaKey( spep_1 + 430 -1, effect01, 255 );
setEffAlphaKey( spep_1 + 430, effect01, 0 );

attack_b = entryEffectLife( spep_1 + 0, SP_03r, 430, 0x80, -1, 0, 0, 0 );  --構えで手前に迫って来て、連続攻撃、岩場に向かって敵を蹴り飛ばす ef_003
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 430, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 430, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 430, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 430 -1, attack_b, 255 );
setEffAlphaKey( spep_1 + 430, attack_b, 0 );

-- ** 音 ** --
--構える
SE005 = playSeVer2( spep_1 + 4, 1192, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 4, 1330, "",spep_1 + 56, 0, 22, -1);
SE007 = playSeVer2( spep_1 + 8, 1004, "", 0, 0, 0, -1);

--向かってくる
SE008 = playSeVer2( spep_1 + 48, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 48, 9, "", 0, 0, 0, -1);
setTimeStretch( SE009, 1.11, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 430 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 90 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
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
setDisp( spep_1 -3 + 116, 1, 1 );
setDisp( spep_1 -3 + 270, 1, 0 );
changeAnime( spep_1 -3 + 116, 1, 101 );
changeAnime( spep_1 -3 + 132, 1, 108 );
changeAnime( spep_1 -3 + 228, 1, 106 );

setMoveKey( spep_1 -3 + 116, 1, 409.5, -42.7 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 312.3, -42.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 240.4, -42.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 190.3, -42.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 158.7, -42.7 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 141.9, -42.7 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 136.6, -42.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 139.2, -42.7 , 0 );
setMoveKey( spep_1 -3 + 131, 1, 139.2, -42.7 , 0 );--
setMoveKey( spep_1 -3 + 132, 1, 238.8, -1.4 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 243.7, 12.8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 210.4, -22.6 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 230.4, -8.6 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 216.5, 13.6 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 186.5, -22.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 216.4, 13.4 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 236.4, -14.6 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 216.5, 13.6 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 186.5, -22.4 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 216.4, 13.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 236.4, -14.6 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 208.5, 5.6 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 202.5, -4.4 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 228.4, 1.4 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 202.6, -6.4 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 192.7, -0.8 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 72.9, -1.3 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 13.3, -1.5 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -36.9, -1.5 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -30.8, -1.5 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 18.8, -1.4 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 121.2, -1.3 , 0 );
setMoveKey( spep_1 -3 + 177, 1, 121.2, -1.3 , 0 );--
setMoveKey( spep_1 -3 + 178, 1, 160.6, -882.7 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 159.5, -873.1 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 154.7, -838.8 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 144.7, -769.9 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 128, -658.7 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 118.9, -518.3 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 98, -384.3 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 71.8, -277.9 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 71.7, -198.7 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 56.5, -141.3 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 63.5, -100.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 64.6, -72.6 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 68.1, -54.8 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 73.9, -45.1 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 81.4, -42.1 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 81.4, -42.1 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 72.9, -42.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 81.4, -42.1 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 72.9, -42.1 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 81.4, -42.1 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 81.4, -42.1 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 25.3, -42.1 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 0.6, -42.1 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 22.3, -42.2 , 0 );
setMoveKey( spep_1 -3 + 227, 1, 22.3, -42.2 , 0 );--
setMoveKey( spep_1 -3 + 228, 1, 97.5, -43.3 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 97.5, -43.3 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 103.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 103.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 97.5, -43.3 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 103.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 97.5, -43.3 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 103.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 83.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 76.3, -43.3 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 70.9, -43.3 , 0 );
setMoveKey( spep_1 -3 + 250, 1, 67.1, -43.3 , 0 );
setMoveKey( spep_1 -3 + 252, 1, 64.8, -43.3 , 0 );
setMoveKey( spep_1 -3 + 254, 1, 64, -43.3 , 0 );
setMoveKey( spep_1 -3 + 256, 1, 64.7, -43.3 , 0 );
setMoveKey( spep_1 -3 + 258, 1, 67, -43.3 , 0 );
setMoveKey( spep_1 -3 + 260, 1, 70.9, -43.3 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 76.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 83.2, -43.3 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 91.6, -43.3 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 101.6, -43.3 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 101.6, -43.3 , 0 );

setScaleKey( spep_1 -3 + 116, 1, 2.35, 2.35 );
setScaleKey( spep_1 -3 + 131, 1, 2.35, 2.35 );--
setScaleKey( spep_1 -3 + 132, 1, 2.66, 2.66 );
setScaleKey( spep_1 -3 + 134, 1, 2.84, 2.84 );
setScaleKey( spep_1 -3 + 136, 1, 3.37, 3.37 );
setScaleKey( spep_1 -3 + 162, 1, 3.37, 3.37 );
setScaleKey( spep_1 -3 + 164, 1, 3.2, 3.2 );
setScaleKey( spep_1 -3 + 166, 1, 2.66, 2.66 );
setScaleKey( spep_1 -3 + 176, 1, 2.66, 2.66 );
setScaleKey( spep_1 -3 + 177, 1, 2.66, 2.66 );--
setScaleKey( spep_1 -3 + 178, 1, 2.14, 2.14 );
setScaleKey( spep_1 -3 + 180, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 182, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 184, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 186, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 188, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 190, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 192, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 194, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 196, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 198, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 200, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 202, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 204, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 220, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 222, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 224, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 226, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 227, 1, 1.19, 1.19 );--
setScaleKey( spep_1 -3 + 228, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 270, 1, 1.12, 1.12 );

setRotateKey( spep_1 -3 + 116, 1, 0 );
setRotateKey( spep_1 -3 + 227, 1, 0 );--
setRotateKey( spep_1 -3 + 228, 1, -16.5 );
setRotateKey( spep_1 -3 + 270, 1, -16.5 );


-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 328, 1, 1 );
setDisp( spep_1 -3 + 433, 1, 0 );
changeAnime( spep_1 -3 + 328, 1, 106 );
changeAnime( spep_1 -3 + 336, 1, 108 );
changeAnime( spep_1 -3 + 364, 1, 106 );

setMoveKey( spep_1 -3 + 328, 1, 82.2, -32.9 , 0 );
setMoveKey( spep_1 -3 + 330, 1, 90.9, -36.3 , 0 );
setMoveKey( spep_1 -3 + 332, 1, 99.6, -39.7 , 0 );
setMoveKey( spep_1 -3 + 334, 1, 108.3, -43 , 0 );
setMoveKey( spep_1 -3 + 335, 1, 108.3, -43 , 0 );--
setMoveKey( spep_1 -3 + 336, 1, 117.6, -42.8 , 0 );
setMoveKey( spep_1 -3 + 338, 1, 140.2, -29.7 , 0 );
setMoveKey( spep_1 -3 + 340, 1, 121.9, -67 , 0 );
setMoveKey( spep_1 -3 + 342, 1, 147.9, -40.7 , 0 );
setMoveKey( spep_1 -3 + 344, 1, 179.6, -57 , 0 );
setMoveKey( spep_1 -3 + 346, 1, 189.8, -43.4 , 0 );
setMoveKey( spep_1 -3 + 348, 1, 162.2, -55.9 , 0 );
setMoveKey( spep_1 -3 + 350, 1, 136.8, -40 , 0 );
setMoveKey( spep_1 -3 + 352, 1, 112.6, -33.6 , 0 );
setMoveKey( spep_1 -3 + 354, 1, 111.9, -28.8 , 0 );
setMoveKey( spep_1 -3 + 356, 1, 152.9, -27.2 , 0 );
setMoveKey( spep_1 -3 + 358, 1, 62.9, 3.4 , 0 );
setMoveKey( spep_1 -3 + 360, 1, 39.8, -34.9 , 0 );
setMoveKey( spep_1 -3 + 362, 1, 52.6, -1.1 , 0 );
setMoveKey( spep_1 -3 + 363, 1, 52.6, -1.1 , 0 );--
setMoveKey( spep_1 -3 + 364, 1, 4.2, -32.6 , 0 );
setMoveKey( spep_1 -3 + 366, 1, 14.6, 0 , 0 );
setMoveKey( spep_1 -3 + 368, 1, -9.9, -32.3 , 0 );
setMoveKey( spep_1 -3 + 370, 1, 4.7, -1.4 , 0 );
setMoveKey( spep_1 -3 + 372, 1, 18.4, -13.3 , 0 );
setMoveKey( spep_1 -3 + 374, 1, 23.2, 2 , 0 );
setMoveKey( spep_1 -3 + 376, 1, 15, -13.6 , 0 );
setMoveKey( spep_1 -3 + 378, 1, 12.2, 2.7 , 0 );
setMoveKey( spep_1 -3 + 380, 1, 21.4, -11.1 , 0 );
setMoveKey( spep_1 -3 + 382, 1, 22.5, 3.1 , 0 );
setMoveKey( spep_1 -3 + 384, 1, 11.7, -12.8 , 0 );
setMoveKey( spep_1 -3 + 386, 1, 8.8, 3.3 , 0 );
setMoveKey( spep_1 -3 + 388, 1, 17.9, -10.6 , 0 );
setMoveKey( spep_1 -3 + 390, 1, 19, 3.4 , 0 );
setMoveKey( spep_1 -3 + 392, 1, 8.1, -12.6 , 0 );
setMoveKey( spep_1 -3 + 394, 1, 5.2, 3.3 , 0 );
setMoveKey( spep_1 -3 + 396, 1, 14.3, -10.8 , 0 );
setMoveKey( spep_1 -3 + 398, 1, 15.3, 3.1 , 0 );
setMoveKey( spep_1 -3 + 400, 1, 8.4, -7.1 , 0 );
setMoveKey( spep_1 -3 + 402, 1, 1.4, 2.6 , 0 );
setMoveKey( spep_1 -3 + 404, 1, 10.4, -11.6 , 0 );
setMoveKey( spep_1 -3 + 406, 1, 11.4, 2.1 , 0 );
setMoveKey( spep_1 -3 + 408, 1, 4.4, -8.3 , 0 );
setMoveKey( spep_1 -3 + 410, 1, -2.6, 1.3 , 0 );
setMoveKey( spep_1 -3 + 412, 1, 6.4, -13.1 , 0 );
setMoveKey( spep_1 -3 + 414, 1, 7.3, 0.4 , 0 );
setMoveKey( spep_1 -3 + 416, 1, 0.2, -10.1 , 0 );
setMoveKey( spep_1 -3 + 418, 1, -6.8, -0.6 , 0 );
setMoveKey( spep_1 -3 + 420, 1, 2.1, -15.2 , 0 );
setMoveKey( spep_1 -3 + 422, 1, 2.9, -1.9 , 0 );
setMoveKey( spep_1 -3 + 424, 1, -4.1, -12.5 , 0 );
setMoveKey( spep_1 -3 + 426, 1, -10.8, -2.9 , 0 );
setMoveKey( spep_1 -3 + 428, 1, -1.4, -17.2 , 0 );
setMoveKey( spep_1 -3 + 430, 1, 0.3, -3.4 , 0 );
setMoveKey( spep_1 -3 + 432, 1, -5.8, -13.5 , 0 );
setMoveKey( spep_1 -3 + 433, 1, -5.8, -13.5 , 0 );

setScaleKey( spep_1 -3 + 328, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 330, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 332, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 334, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 335, 1, 1.46, 1.46 );--
setScaleKey( spep_1 -3 + 336, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 338, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 340, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 342, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 344, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 346, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 348, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 350, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 352, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 354, 1, 2, 2 );
setScaleKey( spep_1 -3 + 356, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 358, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 360, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 362, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 363, 1, 2.33, 2.33 );--
setScaleKey( spep_1 -3 + 364, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 370, 1, 2.33, 2.33 );
setScaleKey( spep_1 -3 + 372, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 374, 1, 2.35, 2.35 );
setScaleKey( spep_1 -3 + 376, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 378, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 380, 1, 2.39, 2.39 );
setScaleKey( spep_1 -3 + 382, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 384, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 386, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 388, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 390, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 392, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 394, 1, 2.48, 2.48 );
setScaleKey( spep_1 -3 + 396, 1, 2.49, 2.49 );
setScaleKey( spep_1 -3 + 398, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 400, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 402, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 404, 1, 2.52, 2.52 );
setScaleKey( spep_1 -3 + 406, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 408, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 410, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 412, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 414, 1, 2.55, 2.55 );
setScaleKey( spep_1 -3 + 416, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 418, 1, 2.56, 2.56 );
setScaleKey( spep_1 -3 + 420, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 424, 1, 2.57, 2.57 );
setScaleKey( spep_1 -3 + 426, 1, 2.58, 2.58 );
setScaleKey( spep_1 -3 + 433, 1, 2.58, 2.58 );

setRotateKey( spep_1 -3 + 328, 1, -32.2 );
setRotateKey( spep_1 -3 + 335, 1, -32.2 );
setRotateKey( spep_1 -3 + 336, 1, 0.4 );--
setRotateKey( spep_1 -3 + 338, 1, 0.7 );
setRotateKey( spep_1 -3 + 340, 1, 1.1 );
setRotateKey( spep_1 -3 + 342, 1, 1.7 );
setRotateKey( spep_1 -3 + 344, 1, 2.5 );
setRotateKey( spep_1 -3 + 346, 1, 3.6 );
setRotateKey( spep_1 -3 + 348, 1, 4.9 );
setRotateKey( spep_1 -3 + 350, 1, 6.6 );
setRotateKey( spep_1 -3 + 352, 1, 8.6 );
setRotateKey( spep_1 -3 + 354, 1, 10.7 );
setRotateKey( spep_1 -3 + 356, 1, 13 );
setRotateKey( spep_1 -3 + 363, 1, 13 );--
setRotateKey( spep_1 -3 + 364, 1, -50.4 );
setRotateKey( spep_1 -3 + 366, 1, -50.5 );
setRotateKey( spep_1 -3 + 368, 1, -50.6 );
setRotateKey( spep_1 -3 + 370, 1, -50.8 );
setRotateKey( spep_1 -3 + 372, 1, -51 );
setRotateKey( spep_1 -3 + 374, 1, -51.4 );
setRotateKey( spep_1 -3 + 376, 1, -51.8 );
setRotateKey( spep_1 -3 + 378, 1, -52.4 );
setRotateKey( spep_1 -3 + 380, 1, -53 );
setRotateKey( spep_1 -3 + 382, 1, -53.6 );
setRotateKey( spep_1 -3 + 384, 1, -54.2 );
setRotateKey( spep_1 -3 + 386, 1, -54.8 );
setRotateKey( spep_1 -3 + 388, 1, -55.3 );
setRotateKey( spep_1 -3 + 390, 1, -55.8 );
setRotateKey( spep_1 -3 + 392, 1, -56.3 );
setRotateKey( spep_1 -3 + 394, 1, -56.8 );
setRotateKey( spep_1 -3 + 396, 1, -57.2 );
setRotateKey( spep_1 -3 + 398, 1, -57.6 );
setRotateKey( spep_1 -3 + 400, 1, -58 );
setRotateKey( spep_1 -3 + 402, 1, -58.4 );
setRotateKey( spep_1 -3 + 404, 1, -58.7 );
setRotateKey( spep_1 -3 + 406, 1, -59 );
setRotateKey( spep_1 -3 + 408, 1, -59.3 );
setRotateKey( spep_1 -3 + 410, 1, -59.6 );
setRotateKey( spep_1 -3 + 412, 1, -59.9 );
setRotateKey( spep_1 -3 + 414, 1, -60.1 );
setRotateKey( spep_1 -3 + 416, 1, -60.3 );
setRotateKey( spep_1 -3 + 418, 1, -60.5 );
setRotateKey( spep_1 -3 + 420, 1, -60.6 );
setRotateKey( spep_1 -3 + 422, 1, -60.7 );
setRotateKey( spep_1 -3 + 424, 1, -60.9 );
setRotateKey( spep_1 -3 + 426, 1, -60.9 );
setRotateKey( spep_1 -3 + 428, 1, -61 );
setRotateKey( spep_1 -3 + 433, 1, -61 );

-- ** 音 ** --
--ひじうち
SE010 = playSeVer2( spep_1 + 118, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 124, 1187, "", 0, 0, 0, -1);

--敵吹っ飛ぶ
SE012 = playSeVer2( spep_1 + 160, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 160, SE012, 68 );

--ラッシュ
SE013 = playSeVer2( spep_1 + 196, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 196, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 214, 1110, "", 0, 0, 0, -1);

--ジャンプ
SE016 = playSeVer2( spep_1 + 236, 1003, "", 0, 0, 0, -1);

--飛びかかる
SE017 = playSeVer2( spep_1 + 258, 1117, "",spep_1 + 338, 0, 14, -1);
SE018 = playSeVer2( spep_1 + 264, 1072, "", 0, 0, 0, -1);

--飛び蹴り
SE019 = playSeVer2( spep_1 + 324, 1120, "", 0, 0, 0, -1);

--岩激突
SE020 = playSeVer2( spep_1 + 348, 1159, "",spep_1 + 446, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 348, SE020, 70 );
SE021 = playSeVer2( spep_1 + 348, 1023, "",spep_1 + 446, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 348, SE021, 74 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 430;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--手前に出す
SE023 = playSeVer2( spep_2 + 82, 1264, "",spep_2 + 172, 14, 22, -1);
setSeVolumeByWorkId( spep_2 + 82, SE023, 63 );
setStartTimeMs( SE023,  117 );
SE024 = playSeVer2( spep_2 + 82, 1116, "",spep_2 + 120, 0, 16, -1);
SE025 = playSeVer2( spep_2 + 82, 1278, "",spep_2 + 164, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 82, SE025, 84 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 天津飯衝撃波、岩が崩れて煙と岩の破片吹き飛んで来る(270F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --天津飯衝撃波、岩が崩れて煙と岩の破片吹き飛んで来る  ef_004
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 270, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 270, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 270, finish_f, 255 );

finish_b = entryEffect( spep_3 + 0, SP_05r, 0x80, -1, 0, 0, 0 );  --天津飯衝撃波、岩が崩れて煙と岩の破片吹き飛んで来る   ef_005
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 270, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 270, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 270, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 270, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 76, 1, 1 );
setDisp( spep_3 -3 + 124, 1, 0 );
changeAnime( spep_3 -3 + 76, 1, 106 );
changeAnime( spep_3 -3 + 96, 1, 108 );

setMoveKey( spep_3 -3 + 76, 1, 220, -88.9 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 230, -72.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 212, -108.9 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 210, -64.9 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 232, -108.9 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 230, -72.9 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 212, -108.9 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 210, -64.9 , 0 );
setMoveKey( spep_3 -3 + 92, 1, 232, -108.9 , 0 );
setMoveKey( spep_3 -3 + 94, 1, 230, -72.9 , 0 );
setMoveKey( spep_3 -3 + 95, 1, 230, -72.9 , 0 );--
setMoveKey( spep_3 -3 + 96, 1, 208, -41.8 , 0 );
setMoveKey( spep_3 -3 + 98, 1, 253.4, 17.1 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 204, 152.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 194.8, 176.8 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 204.4, 183.4 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 212.9, 189.2 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 220.4, 194.3 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 227, 198.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 238.5, 208.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 233, 195.6 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 234.5, 214.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 246.7, 202.5 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 253.5, 229.4 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 234.6, 197.4 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 234.6, 197.4 , 0 );

setScaleKey( spep_3 -3 + 76, 1, 19.66, 19.66 );
setScaleKey( spep_3 -3 + 95, 1, 19.66, 19.66 );--
setScaleKey( spep_3 -3 + 96, 1, 19.2, 19.2 );
setScaleKey( spep_3 -3 + 98, 1, 15, 15 );
setScaleKey( spep_3 -3 + 100, 1, 4.68, 4.68 );
setScaleKey( spep_3 -3 + 102, 1, 2.53, 2.53 );
setScaleKey( spep_3 -3 + 104, 1, 2.22, 2.22 );
setScaleKey( spep_3 -3 + 106, 1, 1.94, 1.94 );
setScaleKey( spep_3 -3 + 108, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 110, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 112, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 114, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 116, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 118, 1, 0.96, 0.96 );
setScaleKey( spep_3 -3 + 120, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 122, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 124, 1, 0.94, 0.94 );

setRotateKey( spep_3 -3 + 76, 1, -90.3 );
setRotateKey( spep_3 -3 + 95, 1, -90.3 );--
setRotateKey( spep_3 -3 + 96, 1, -27.8 );
setRotateKey( spep_3 -3 + 98, 1, -27.9 );
setRotateKey( spep_3 -3 + 112, 1, -27.9 );
setRotateKey( spep_3 -3 + 114, 1, -28 );
setRotateKey( spep_3 -3 + 124, 1, -28 );

-- ** 音 ** --
--空気圧
SE026 = playSeVer2( spep_3 + 48, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE026, 93 );
SE027 = playSeVer2( spep_3 + 48, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE027, 91 );
SE028 = playSeVer2( spep_3 + 48, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 48, SE028, 87 );

--敵吹っ飛ぶ
SE029 = playSeVer2( spep_3 + 84, 1027, "", 0, 0, 0, -1);

--岩激突
SE030 = playSeVer2( spep_3 + 94, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 94, SE030, 78 );
SE031 = playSeVer2( spep_3 + 110, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 110, SE031, 87 );
SE032 = playSeVer2( spep_3 + 138, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 138, SE032, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 270 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 124 );
endPhase( spep_3 + 260 );

end