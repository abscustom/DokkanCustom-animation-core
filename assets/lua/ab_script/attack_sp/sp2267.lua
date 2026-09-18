--4022841_UR_超サイヤ人2ケフラ_必殺技：ギガンティックブラスト
--sp_effect_a1_00316
--sp2267

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
SP_01  = 158342; --冒頭～気弾構え・手前 ef_001
SP_02  = 158343; --冒頭～気弾構え・奥 ef_002
SP_03  = 158344; --発射～爆発まで ef_003

--敵側
SP_01r = 158345; --敵用：冒頭～気弾構え・手前 ef_001r
SP_03r = 158346; --敵用：発射～爆発まで ef_003r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 冒頭～気弾構え(702F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 702, 0x100, -1, 0, 0, 0 );  --冒頭～気弾構え・手前 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 702, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 702, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 702, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 702 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 702, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 702, 0x80, -1, 0, 0, 0 );  --冒頭～気弾構え・奥 ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 702, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 702, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 702, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 702 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 702, first_b, 0 );

spep_x = spep_0 + 610;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 40, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 164.4, -275.6 , 0 );
setMoveKey( spep_0 + 1, 1, 165.4, -275.8 , 0 );
setMoveKey( spep_0 + 2, 1, 166.5, -276.1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 167.5, -276.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 168.6, -276.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 168.6, -276.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 169.6, -276.7 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 169.6, -276.7 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 170.7, -276.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 171.7, -277.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 172.8, -277.3 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 173.9, -277.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 174.9, -277.7 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 176, -277.9 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 177, -278.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 178.1, -278.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 179.1, -278.6 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 180.2, -278.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 181.2, -279 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 182.3, -279.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 183.3, -279.4 , 0 );
setMoveKey( spep_0 -3 + 39, 1, 184.4, -279.6 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 184.4, -279.6 , 0 );

setScaleKey( spep_0 + 0, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 1, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 2, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 3, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 4, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 5, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 6, 1, 3.33, 3.33 );
setScaleKey( spep_0 -3 + 40, 1, 3.33, 3.33 );

setRotateKey( spep_0 + 0, 1, 5.2 );
setRotateKey( spep_0 + 1, 1, 5.2 );
setRotateKey( spep_0 + 2, 1, 5.2 );
setRotateKey( spep_0 + 3, 1, 5.2 );
setRotateKey( spep_0 + 4, 1, 5.2 );
setRotateKey( spep_0 + 5, 1, 5.2 );
setRotateKey( spep_0 + 6, 1, 5.2 );
setRotateKey( spep_0 -3 + 40, 1, 5.2 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 82 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 168, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE003 = playSeVer2( spep_0 + 40, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE003, 89 );
setPitch( spep_0 + 40, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--気ダメ
SE004 = playSeVer2( spep_0 + 52, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE004, 56 );
SE005 = playSeVer2( spep_0 + 54, 1258, "",spep_0 + 120, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 54, SE005, 65 );
SE006 = playSeVer2( spep_0 + 58, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 73 );
SE007 = playSeVer2( spep_0 + 58, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE007, 77 );
SE008 = playSeVer2( spep_0 + 60, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE008, 76 );

--オーラ
SE009 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);

--気増大
SE012 = playSeVer2( spep_0 + 148, 1212, "",spep_0 + 264, 6, 26, -1);
setSeVolumeByWorkId( spep_0 + 148, SE012, 52 );
setStartTimeMs( SE012,  567 );
SE014 = playSeVer2( spep_0 + 132, 1026, "",spep_0 + 166, 0, 16, -1);
SE015 = playSeVer2( spep_0 + 132, 1264, "",spep_0 + 166, 0, 16, -1);
SE017 = playSeVer2( spep_0 + 142, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE017, 67 );
SE018 = playSeVer2( spep_0 + 148, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE018, 46 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 702 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景


--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 218 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);

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
setDisp( spep_0 -3 + 244, 1, 1 );
setDisp( spep_0 -3 + 278, 1, 0 );

changeAnime( spep_0 -3 + 244, 1, 117 );
changeAnime( spep_0 -3 + 250, 1, 108 );

setMoveKey( spep_0 -3 + 244, 1, -12.9, 45.5 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -14.9, 37.5 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -12.9, 45.5 , 0 );
setMoveKey( spep_0 -3 + 249, 1, -12.9, 45.5 , 0 );
--
setMoveKey( spep_0 -3 + 250, 1, 19.9, 21.7 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 26.6, 18 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 29.1, 16.7 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 34.5, -1.4 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 35.8, -17.2 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 37.4, -10.8 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 37, -14.1 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 39.6, -15.3 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 38.1, -12.4 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 38.6, -15.4 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 39, -18.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 40.3, -18.1 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 41.7, -17.8 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 41.7, -18.3 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 41.7, -18.3 , 0 );

setScaleKey( spep_0 -3 + 244, 1, 0.9, 0.9 );
setScaleKey( spep_0 -3 + 249, 1, 0.9, 0.9 );
--
setScaleKey( spep_0 -3 + 250, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 278, 1, 0.95, 0.95 );

setRotateKey( spep_0 -3 + 244, 1, 0 );
setRotateKey( spep_0 -3 + 249, 1, 0 );
--
setRotateKey( spep_0 -3 + 250, 1, 8.1 );
setRotateKey( spep_0 -3 + 252, 1, 11.3 );
setRotateKey( spep_0 -3 + 254, 1, 14.4 );
setRotateKey( spep_0 -3 + 256, 1, 17.4 );
setRotateKey( spep_0 -3 + 258, 1, 20.3 );
setRotateKey( spep_0 -3 + 276, 1, 20.3 );
setRotateKey( spep_0 -3 + 278, 1, 20.3 );


--敵の動き2
setDisp( spep_0 -3 + 404, 1, 1 );
setDisp( spep_0 -3 + 480, 1, 0 );

changeAnime( spep_0 -3 + 404, 1, 108 );
changeAnime( spep_0 -3 + 418, 1, 106 );

setMoveKey( spep_0 -3 + 404, 1, 36.7, -7.3 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 37.3, -8.7 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 39.8, -10.1 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 41.3, -12.4 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 42.8, -12.7 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 43.3, -15 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 45.7, -15.3 , 0 );
setMoveKey( spep_0 -3 + 417, 1, 45.7, -15.3 , 0 );
--
setMoveKey( spep_0 -3 + 418, 1, 38.2, -9.8 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 38.8, -10.5 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 39.3, -15.6 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 39.8, -16.3 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 42.5, -21.4 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 43.1, -22.1 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 41.7, -26.5 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 46.3, -19.2 , 0 );
setMoveKey( spep_0 -3 + 434, 1, 36.5, -5.6 , 0 );
setMoveKey( spep_0 -3 + 436, 1, 43, -16.4 , 0 );
setMoveKey( spep_0 -3 + 438, 1, 35.6, -25.4 , 0 );
setMoveKey( spep_0 -3 + 440, 1, 44.1, -22.2 , 0 );
setMoveKey( spep_0 -3 + 442, 1, 44.8, -35.2 , 0 );
setMoveKey( spep_0 -3 + 444, 1, 47.3, -27.9 , 0 );
setMoveKey( spep_0 -3 + 446, 1, 42, -20.3 , 0 );
setMoveKey( spep_0 -3 + 448, 1, 50.5, -25.1 , 0 );
setMoveKey( spep_0 -3 + 450, 1, 42.7, -27.5 , 0 );
setMoveKey( spep_0 -3 + 452, 1, 47.3, -22.2 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 39.8, -29.3 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 46.3, -24 , 0 );
setMoveKey( spep_0 -3 + 458, 1, 51, -33.1 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 49.6, -37.8 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 54.3, -30.2 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 52.8, -28.9 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 51, -27.3 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 47.5, -30.1 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 52.1, -33.1 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 48.6, -39.9 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 55.3, -38.9 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 51.8, -43.6 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 54.2, -31.7 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 54.2, -31.7 , 0 );

setScaleKey( spep_0 -3 + 404, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 417, 1, 0.95, 0.95 );
--
setScaleKey( spep_0 -3 + 418, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 480, 1, 0.78, 0.78 );

setRotateKey( spep_0 -3 + 404, 1, 20.3 );
setRotateKey( spep_0 -3 + 417, 1, 20.3 );
--
setRotateKey( spep_0 -3 + 418, 1, 1.4 );
setRotateKey( spep_0 -3 + 480, 1, 1.4 );


-- ** 音 ** --
--赤いオーラ飛んでいく
SE013 = playSeVer2( spep_0 + 216, 1185, "",spep_0 + 302, 6, 46, -1);
setSeVolumeByWorkId( spep_0 + 216, SE013, 143 );
setStartTimeMs( SE013,  1700 );
setPitch( spep_0 + 216, SE013, 1200 );
setTimeStretch( SE013, 1.8, 30, 4 );
SE019 = playSeVer2( spep_0 + 212, 1121, "",spep_0 + 306, 12, 46, -1);
setSeVolumeByWorkId( spep_0 + 212, SE019, 83 );
setStartTimeMs( SE019,  617 );
setPitch( spep_0 + 212, SE019, 600 );
setTimeStretch( SE019, 1.4, 30, 4 );

--気増大
SE020 = playSeVer2( spep_0 + 180, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE020, 172 );

--赤いオーラ飛んでいく
SE021 = playSeVer2( spep_0 + 214, 1236, "",spep_0 + 310, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 214, SE021, 98 );
SE022 = playSeVer2( spep_0 + 216, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE022, 54 );

--オーラヒット
SE023 = playSeVer2( spep_0 + 240, 1159, "",spep_0 + 324, 0, 28, -1);
SE024 = playSeVer2( spep_0 + 240, 1197, "",spep_0 + 250, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 240, SE024, 126 );
setPitch( spep_0 + 240, SE024, -700 );
setTimeStretch( SE024, 0.53, 30, 4 );
SE025 = playSeVer2( spep_0 + 246, 1032, "",spep_0 + 260, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 246, SE025, 126 );
setPitch( spep_0 + 246, SE025, -200 );
setTimeStretch( SE025, 0.87, 30, 4 );
SE026 = playSeVer2( spep_0 + 248, 1197, "",spep_0 + 258, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 248, SE026, 126 );
setPitch( spep_0 + 248, SE026, -600 );
setTimeStretch( SE026, 0.6, 30, 4 );

--画面遷移
SE027 = playSeVer2( spep_0 + 270, 1072, "", 0, 6, 0, -1);
setStartTimeMs( SE027,  317 );

--アップ気増大
SE028 = playSeVer2( spep_0 + 276, 1229, "",spep_0 + 416, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 276, SE028, 145 );
SE029 = playSeVer2( spep_0 + 292, 1284, "",spep_0 + 416, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 292, SE029, 61 );
SE030 = playSeVer2( spep_0 + 292, 1255, "",spep_0 + 416, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 292, SE030, 68 );
SE031 = playSeVer2( spep_0 + 292, 1265, "",spep_0 + 416, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 292, SE031, 79 );

--赤いうねり
SE032 = playSeVer2( spep_0 + 394, 1185, "",spep_0 + 462, 6, 28, -1);
setSeVolumeByWorkId( spep_0 + 394, SE032, 126 );
setStartTimeMs( SE032,  1700 );
setPitch( spep_0 + 394, SE032, 1200 );
setTimeStretch( SE032, 1.8, 30, 4 );
SE034 = playSeVer2( spep_0 + 390, 1121, "",spep_0 + 460, 12, 24, -1);
setSeVolumeByWorkId( spep_0 + 390, SE034, 85 );
setStartTimeMs( SE034,  617 );
setPitch( spep_0 + 390, SE034, 600 );
setTimeStretch( SE034, 1.4, 30, 4 );

--両手あげる
SE033 = playSeVer2( spep_0 + 346, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE033, 133 );

--地面ヒット１
SE035 = playSeVer2( spep_0 + 408, 1061, "",spep_0 + 436, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 408, SE035, 122 );
setPitch( spep_0 + 408, SE035, 200 );
setTimeStretch( SE035, 1.13, 30, 4 );
SE036 = playSeVer2( spep_0 + 408, 1024, "",spep_0 + 450, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 408, SE036, 83 );

--地面ヒット２
SE037 = playSeVer2( spep_0 + 426, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 426, SE037, 119 );
setPitch( spep_0 + 426, SE037, 200 );
setTimeStretch( SE037, 1.13, 30, 4 );
SE038 = playSeVer2( spep_0 + 428, 1024, "",spep_0 + 520, 0, 44, -1);

--地面ヒット３
SE039 = playSeVer2( spep_0 + 450, 1188, "",spep_0 + 530, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 450, SE039, 80 );
SE040 = playSeVer2( spep_0 + 458, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE040, 119 );
setPitch( spep_0 + 458, SE040, 200 );
setTimeStretch( SE040, 1.13, 30, 4 );

--気玉生成
SE041 = playSeVer2( spep_0 + 482, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE041, 57 );
SE042 = playSeVer2( spep_0 + 486, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE042, 143 );

--気弾溜め
SE043 = playSeVer2( spep_0 + 486, 1255, "",spep_0 +702 + 6, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 486, SE043, 83 );
setSeVolumeByWorkId( spep_0 + 550, SE043, 83 );
setSeVolumeByWorkId( spep_0 + 554, SE043, 92 );
setSeVolumeByWorkId( spep_0 + 558, SE043, 102 );
setSeVolumeByWorkId( spep_0 + 562, SE043, 110 );
setSeVolumeByWorkId( spep_0 + 566, SE043, 119 );
setSeVolumeByWorkId( spep_0 + 570, SE043, 128 );
setSeVolumeByWorkId( spep_0 + 574, SE043, 138 );
setSeVolumeByWorkId( spep_0 + 578, SE043, 144 );
setSeVolumeByWorkId( spep_0 + 582, SE043, 154 );
setSeVolumeByWorkId( spep_0 + 586, SE043, 162 );
setSeVolumeByWorkId( spep_0 + 590, SE043, 170 );

SE044 = playSeVer2( spep_0 + 516, 1226, "",spep_0 +702 + 6, 76, 6, -1);
setSeVolumeByWorkId( spep_0 + 516, SE044, 45 );
setStartTimeMs( SE044,  500 );

--のけぞる
SE045 = playSeVer2( spep_0 + 498, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE045, 153 );

--気弾溜め
SE046 = playSeVer2( spep_0 + 540, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE046, 110 );

--顔カットイン
SE047 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + 702;


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
-- 発射～爆発まで(336F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --発射～爆発まで ef_003
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 336, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 336, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 336, finish, 255 );

-- ** 音 ** --
--気弾発射
SE051 = playSeVer2( spep_2 + 52, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE051, 76 );
SE052 = playSeVer2( spep_2 + 56, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE052, 70 );
SE053 = playSeVer2( spep_2 + 56, 1213, "",spep_2 + 244, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 56, SE053, 82 );
SE054 = playSeVer2( spep_2 + 56, 1193, "",spep_2 + 250, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 56, SE054, 102 );
SE055 = playSeVer2( spep_2 + 56, 1215, "",spep_2 + 250, 0, 18, -1);

--爆発
SE056 = playSeVer2( spep_2 + 234, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 234, 1023, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 336 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 226 );
endPhase( spep_2 + 326 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭～気弾構え(702F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 702, 0x100, -1, 0, 0, 0 );  --冒頭～気弾構え・手前 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 702, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 702, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 702, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 702 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 702, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 702, 0x80, -1, 0, 0, 0 );  --冒頭～気弾構え・奥 ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 702, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 702, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 702, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 702 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 702, first_b, 0 );

spep_x = spep_0 + 610;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 40, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 164.4, -275.6 , 0 );
setMoveKey( spep_0 + 1, 1, 165.4, -275.8 , 0 );
setMoveKey( spep_0 + 2, 1, 166.5, -276.1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 167.5, -276.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 168.6, -276.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 168.6, -276.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 169.6, -276.7 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 169.6, -276.7 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 170.7, -276.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 171.7, -277.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 172.8, -277.3 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 173.9, -277.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 174.9, -277.7 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 176, -277.9 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 177, -278.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 178.1, -278.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 179.1, -278.6 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 180.2, -278.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 181.2, -279 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 182.3, -279.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 183.3, -279.4 , 0 );
setMoveKey( spep_0 -3 + 39, 1, 184.4, -279.6 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 184.4, -279.6 , 0 );

setScaleKey( spep_0 + 0, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 1, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 2, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 3, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 4, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 5, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 6, 1, 3.33, 3.33 );
setScaleKey( spep_0 -3 + 40, 1, 3.33, 3.33 );

setRotateKey( spep_0 + 0, 1, 5.2 );
setRotateKey( spep_0 + 1, 1, 5.2 );
setRotateKey( spep_0 + 2, 1, 5.2 );
setRotateKey( spep_0 + 3, 1, 5.2 );
setRotateKey( spep_0 + 4, 1, 5.2 );
setRotateKey( spep_0 + 5, 1, 5.2 );
setRotateKey( spep_0 + 6, 1, 5.2 );
setRotateKey( spep_0 -3 + 40, 1, 5.2 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 82 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 168, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE003 = playSeVer2( spep_0 + 40, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE003, 89 );
setPitch( spep_0 + 40, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--気ダメ
SE004 = playSeVer2( spep_0 + 52, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE004, 56 );
SE005 = playSeVer2( spep_0 + 54, 1258, "",spep_0 + 120, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 54, SE005, 65 );
SE006 = playSeVer2( spep_0 + 58, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 73 );
SE007 = playSeVer2( spep_0 + 58, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE007, 77 );
SE008 = playSeVer2( spep_0 + 60, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE008, 76 );

--オーラ
SE009 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);

--気増大
SE012 = playSeVer2( spep_0 + 148, 1212, "",spep_0 + 264, 6, 26, -1);
setSeVolumeByWorkId( spep_0 + 148, SE012, 52 );
setStartTimeMs( SE012,  567 );
SE014 = playSeVer2( spep_0 + 132, 1026, "",spep_0 + 166, 0, 16, -1);
SE015 = playSeVer2( spep_0 + 132, 1264, "",spep_0 + 166, 0, 16, -1);
SE017 = playSeVer2( spep_0 + 142, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE017, 67 );
SE018 = playSeVer2( spep_0 + 148, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE018, 46 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 702 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景


--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 218 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);

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
setDisp( spep_0 -3 + 244, 1, 1 );
setDisp( spep_0 -3 + 278, 1, 0 );

changeAnime( spep_0 -3 + 244, 1, 117 );
changeAnime( spep_0 -3 + 250, 1, 108 );

setMoveKey( spep_0 -3 + 244, 1, -12.9, 45.5 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -14.9, 37.5 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -12.9, 45.5 , 0 );
setMoveKey( spep_0 -3 + 249, 1, -12.9, 45.5 , 0 );
--
setMoveKey( spep_0 -3 + 250, 1, 19.9, 21.7 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 26.6, 18 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 29.1, 16.7 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 34.5, -1.4 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 35.8, -17.2 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 37.4, -10.8 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 37, -14.1 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 39.6, -15.3 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 38.1, -12.4 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 38.6, -15.4 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 39, -18.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 40.3, -18.1 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 41.7, -17.8 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 41.7, -18.3 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 41.7, -18.3 , 0 );

setScaleKey( spep_0 -3 + 244, 1, 0.9, 0.9 );
setScaleKey( spep_0 -3 + 249, 1, 0.9, 0.9 );
--
setScaleKey( spep_0 -3 + 250, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 278, 1, 0.95, 0.95 );

setRotateKey( spep_0 -3 + 244, 1, 0 );
setRotateKey( spep_0 -3 + 249, 1, 0 );
--
setRotateKey( spep_0 -3 + 250, 1, 8.1 );
setRotateKey( spep_0 -3 + 252, 1, 11.3 );
setRotateKey( spep_0 -3 + 254, 1, 14.4 );
setRotateKey( spep_0 -3 + 256, 1, 17.4 );
setRotateKey( spep_0 -3 + 258, 1, 20.3 );
setRotateKey( spep_0 -3 + 276, 1, 20.3 );
setRotateKey( spep_0 -3 + 278, 1, 20.3 );

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_0 -3 + 404, 1, 1 );
setDisp( spep_0 -3 + 480, 1, 0 );

changeAnime( spep_0 -3 + 404, 1, 108 );
changeAnime( spep_0 -3 + 418, 1, 106 );

setMoveKey( spep_0 -3 + 404, 1, 36.7, -7.3 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 37.3, -8.7 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 39.8, -10.1 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 41.3, -12.4 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 42.8, -12.7 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 43.3, -15 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 45.7, -15.3 , 0 );
setMoveKey( spep_0 -3 + 417, 1, 45.7, -15.3 , 0 );
--
setMoveKey( spep_0 -3 + 418, 1, 38.2, -9.8 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 38.8, -10.5 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 39.3, -15.6 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 39.8, -16.3 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 42.5, -21.4 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 43.1, -22.1 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 41.7, -26.5 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 46.3, -19.2 , 0 );
setMoveKey( spep_0 -3 + 434, 1, 36.5, -5.6 , 0 );
setMoveKey( spep_0 -3 + 436, 1, 43, -16.4 , 0 );
setMoveKey( spep_0 -3 + 438, 1, 35.6, -25.4 , 0 );
setMoveKey( spep_0 -3 + 440, 1, 44.1, -22.2 , 0 );
setMoveKey( spep_0 -3 + 442, 1, 44.8, -35.2 , 0 );
setMoveKey( spep_0 -3 + 444, 1, 47.3, -27.9 , 0 );
setMoveKey( spep_0 -3 + 446, 1, 42, -20.3 , 0 );
setMoveKey( spep_0 -3 + 448, 1, 50.5, -25.1 , 0 );
setMoveKey( spep_0 -3 + 450, 1, 42.7, -27.5 , 0 );
setMoveKey( spep_0 -3 + 452, 1, 47.3, -22.2 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 39.8, -29.3 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 46.3, -24 , 0 );
setMoveKey( spep_0 -3 + 458, 1, 51, -33.1 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 49.6, -37.8 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 54.3, -30.2 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 52.8, -28.9 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 51, -27.3 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 47.5, -30.1 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 52.1, -33.1 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 48.6, -39.9 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 55.3, -38.9 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 51.8, -43.6 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 54.2, -31.7 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 54.2, -31.7 , 0 );

setScaleKey( spep_0 -3 + 404, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 417, 1, 0.95, 0.95 );
--
setScaleKey( spep_0 -3 + 418, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 480, 1, 0.78, 0.78 );

setRotateKey( spep_0 -3 + 404, 1, 20.3 );
setRotateKey( spep_0 -3 + 417, 1, 20.3 );
--
setRotateKey( spep_0 -3 + 418, 1, 1.4 );
setRotateKey( spep_0 -3 + 480, 1, 1.4 );


-- ** 音 ** --
--赤いオーラ飛んでいく
SE013 = playSeVer2( spep_0 + 216, 1185, "",spep_0 + 302, 6, 46, -1);
setSeVolumeByWorkId( spep_0 + 216, SE013, 143 );
setStartTimeMs( SE013,  1700 );
setPitch( spep_0 + 216, SE013, 1200 );
setTimeStretch( SE013, 1.8, 30, 4 );
SE019 = playSeVer2( spep_0 + 212, 1121, "",spep_0 + 306, 12, 46, -1);
setSeVolumeByWorkId( spep_0 + 212, SE019, 83 );
setStartTimeMs( SE019,  617 );
setPitch( spep_0 + 212, SE019, 600 );
setTimeStretch( SE019, 1.4, 30, 4 );

--気増大
SE020 = playSeVer2( spep_0 + 180, 1257, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE020, 172 );

--赤いオーラ飛んでいく
SE021 = playSeVer2( spep_0 + 214, 1236, "",spep_0 + 310, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 214, SE021, 98 );
SE022 = playSeVer2( spep_0 + 216, 1338, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE022, 54 );

--オーラヒット
SE023 = playSeVer2( spep_0 + 240, 1159, "",spep_0 + 324, 0, 28, -1);
SE024 = playSeVer2( spep_0 + 240, 1197, "",spep_0 + 250, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 240, SE024, 126 );
setPitch( spep_0 + 240, SE024, -700 );
setTimeStretch( SE024, 0.53, 30, 4 );
SE025 = playSeVer2( spep_0 + 246, 1032, "",spep_0 + 260, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 246, SE025, 126 );
setPitch( spep_0 + 246, SE025, -200 );
setTimeStretch( SE025, 0.87, 30, 4 );
SE026 = playSeVer2( spep_0 + 248, 1197, "",spep_0 + 258, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 248, SE026, 126 );
setPitch( spep_0 + 248, SE026, -600 );
setTimeStretch( SE026, 0.6, 30, 4 );

--画面遷移
SE027 = playSeVer2( spep_0 + 270, 1072, "", 0, 6, 0, -1);
setStartTimeMs( SE027,  317 );

--アップ気増大
SE028 = playSeVer2( spep_0 + 276, 1229, "",spep_0 + 416, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 276, SE028, 145 );
SE029 = playSeVer2( spep_0 + 292, 1284, "",spep_0 + 416, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 292, SE029, 61 );
SE030 = playSeVer2( spep_0 + 292, 1255, "",spep_0 + 416, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 292, SE030, 68 );
SE031 = playSeVer2( spep_0 + 292, 1265, "",spep_0 + 416, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 292, SE031, 79 );

--赤いうねり
SE032 = playSeVer2( spep_0 + 394, 1185, "",spep_0 + 462, 6, 28, -1);
setSeVolumeByWorkId( spep_0 + 394, SE032, 126 );
setStartTimeMs( SE032,  1700 );
setPitch( spep_0 + 394, SE032, 1200 );
setTimeStretch( SE032, 1.8, 30, 4 );
SE034 = playSeVer2( spep_0 + 390, 1121, "",spep_0 + 460, 12, 24, -1);
setSeVolumeByWorkId( spep_0 + 390, SE034, 85 );
setStartTimeMs( SE034,  617 );
setPitch( spep_0 + 390, SE034, 600 );
setTimeStretch( SE034, 1.4, 30, 4 );

--両手あげる
SE033 = playSeVer2( spep_0 + 346, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE033, 133 );

--地面ヒット１
SE035 = playSeVer2( spep_0 + 408, 1061, "",spep_0 + 436, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 408, SE035, 122 );
setPitch( spep_0 + 408, SE035, 200 );
setTimeStretch( SE035, 1.13, 30, 4 );
SE036 = playSeVer2( spep_0 + 408, 1024, "",spep_0 + 450, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 408, SE036, 83 );

--地面ヒット２
SE037 = playSeVer2( spep_0 + 426, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 426, SE037, 119 );
setPitch( spep_0 + 426, SE037, 200 );
setTimeStretch( SE037, 1.13, 30, 4 );
SE038 = playSeVer2( spep_0 + 428, 1024, "",spep_0 + 520, 0, 44, -1);

--地面ヒット３
SE039 = playSeVer2( spep_0 + 450, 1188, "",spep_0 + 530, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 450, SE039, 80 );
SE040 = playSeVer2( spep_0 + 458, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE040, 119 );
setPitch( spep_0 + 458, SE040, 200 );
setTimeStretch( SE040, 1.13, 30, 4 );

--気玉生成
SE041 = playSeVer2( spep_0 + 482, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE041, 57 );
SE042 = playSeVer2( spep_0 + 486, 1253, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 486, SE042, 143 );

--気弾溜め
SE043 = playSeVer2( spep_0 + 486, 1255, "",spep_0 +702 + 6, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 486, SE043, 83 );
setSeVolumeByWorkId( spep_0 + 550, SE043, 83 );
setSeVolumeByWorkId( spep_0 + 554, SE043, 92 );
setSeVolumeByWorkId( spep_0 + 558, SE043, 102 );
setSeVolumeByWorkId( spep_0 + 562, SE043, 110 );
setSeVolumeByWorkId( spep_0 + 566, SE043, 119 );
setSeVolumeByWorkId( spep_0 + 570, SE043, 128 );
setSeVolumeByWorkId( spep_0 + 574, SE043, 138 );
setSeVolumeByWorkId( spep_0 + 578, SE043, 144 );
setSeVolumeByWorkId( spep_0 + 582, SE043, 154 );
setSeVolumeByWorkId( spep_0 + 586, SE043, 162 );
setSeVolumeByWorkId( spep_0 + 590, SE043, 170 );

SE044 = playSeVer2( spep_0 + 516, 1226, "",spep_0 +702 + 6, 76, 6, -1);
setSeVolumeByWorkId( spep_0 + 516, SE044, 45 );
setStartTimeMs( SE044,  500 );

--のけぞる
SE045 = playSeVer2( spep_0 + 498, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE045, 153 );

--気弾溜め
SE046 = playSeVer2( spep_0 + 540, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE046, 110 );

--顔カットイン
SE047 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + 702;


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

--発射前溜め
SE048 = playSeVer2( spep_1 + 84, 1255, "",spep_1 +94 + 60, 6, 6, -1);
setSeVolumeByWorkId( spep_1 + 84, SE048, 229 );
setStartTimeMs( SE048,  2483 );
SE049 = playSeVer2( spep_1 + 84, 1226, "",spep_1 +94 + 60, 6, 6, -1);
setSeVolumeByWorkId( spep_1 + 84, SE049, 54 );
setStartTimeMs( SE049,  2483 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 発射～爆発まで(336F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --発射～爆発まで ef_003
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 336, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 336, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 336, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 336, finish, 255 );

-- ** 音 ** --
--気弾発射
SE051 = playSeVer2( spep_2 + 52, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE051, 76 );
SE052 = playSeVer2( spep_2 + 56, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE052, 70 );
SE053 = playSeVer2( spep_2 + 56, 1213, "",spep_2 + 244, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 56, SE053, 82 );
SE054 = playSeVer2( spep_2 + 56, 1193, "",spep_2 + 250, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 56, SE054, 102 );
SE055 = playSeVer2( spep_2 + 56, 1215, "",spep_2 + 250, 0, 18, -1);

--爆発
SE056 = playSeVer2( spep_2 + 234, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 234, 1023, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 336 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 226 );
endPhase( spep_2 + 326 );

end