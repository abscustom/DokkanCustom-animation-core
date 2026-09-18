--1025650:ハッチヒャック(巨大化)_インフィニティイリュージョン
--sp_effect_b1_00230

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
SP_01 = 161007;	--拳を握りしめる	ef_001
SP_02 = 161008;	--正面に振り向く	ef_002
SP_03 = 161009;	--敵を右上に押し込む様にパンチを入れる	ef_003
SP_04 = 161010;	--敵を右上に押し込む様にパンチを入れる	ef_003_b
SP_05 = 161012;	--敵の背後に回り込み蹴る	ef_004
SP_06 = 161013;	--敵の背後に回り込み蹴る	ef_004_b
SP_07 = 161015;	--顔を上げてニヤリと笑う	ef_005
SP_08 = 161016;	--敵のアップからQTBするとハッチヒャックが分身している	ef_006
SP_09 = 161017;	--敵のアップからQTBするとハッチヒャックが分身している	ef_006_b
SP_10 = 161018;	--分身したハッチヒャックが多方面から次々に敵を攻撃する	ef_007
SP_11 = 161019;	--分身したハッチヒャックが多方面から次々に敵を攻撃する	ef_007_b
SP_12 = 161021;	--地面に敵が落下した後、ハッチヒャックも着地	ef_008
SP_13 = 161022;	--地面に敵が落下した後、ハッチヒャックも着地	ef_008_b
SP_14 = 161024;	--敵をつかんで持ち上げた後床に叩きつける	ef_009
SP_15 = 161025;	--敵をつかんで持ち上げた後床に叩きつける	ef_009_b

--敵側
SP_03r = 161011;	--敵を右上に押し込む様にパンチを入れる	ef_003_r
SP_05r = 161014;	--敵の背後に回り込み蹴る	ef_004_r
SP_10r = 161020;	--分身したハッチヒャックが多方面から次々に敵を攻撃する	ef_007_r
SP_12r = 161023;	--地面に敵が落下した後、ハッチヒャックも着地	ef_008_r
SP_14r = 161026;	--敵をつかんで持ち上げた後床に叩きつける_反転	ef_009_r

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
-- 拳を握りしめる(106F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 106, 0x100, -1, 0, 0, 0 );  --拳を握りしめる	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 106, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 106 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 106, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 10, 1007, "", 0, 0, 0, -1);

--手握る
SE003 = playSeVer2( spep_0 + 62, 1006, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 62, 1170, "",spep_0 + 96, 0, 20, -1);

--顔アップ
SE005 = playSeVer2( spep_0 + 104, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;


------------------------------------------------------
-- 正面に振り向く(56F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
face = entryEffectLife( spep_1 + 0, SP_02, 56, 0x100, -1, 0, 0, 0 );  --正面に振り向く	ef_002
setEffMoveKey( spep_1 + 0, face, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, face, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, face, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, face, 0 );
setEffRotateKey( spep_1 + 56, face, 0 );
setEffAlphaKey( spep_1 + 0, face, 255 );
setEffAlphaKey( spep_1 + 56 -1, face, 255 );
setEffAlphaKey( spep_1 + 56, face, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 46 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
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

-- ** 音 ** --
--パンチ
SE006 = playSeVer2( spep_1 + 50, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- 敵を右上に押し込む様にパンチを入れる(66F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_2 + 0, SP_03, 66, 0x100, -1, 0, 0, 0 );  --敵を右上に押し込む様にパンチを入れる	ef_003
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 66, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 66 -1, punch_f, 255 );
setEffAlphaKey( spep_2 + 66, punch_f, 0 );

punch_b = entryEffectLife( spep_2 + 0, SP_04, 66, 0x80, -1, 0, 0, 0 );  --敵を右上に押し込む様にパンチを入れる	ef_003_b
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 66, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 66 -1, punch_b, 255 );
setEffAlphaKey( spep_2 + 66, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 -3 + 12, 1, 108 );

setMoveKey( spep_2 + 0, 1, 114.9, 95.7 , 0 );
setMoveKey( spep_2 + 1, 1, 115.3, 96.1 , 0 );
setMoveKey( spep_2 + 2, 1, 130.4, 110.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 130.9, 110.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 146, 124.9 , 0 );
setMoveKey( spep_2 -3 + 11, 1, 146.4, 125.3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 191.7, 169.7 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 188.5, 134.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 180.8, 203.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 223.4, 158.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 152.9, 161.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 217.1, 179.7 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 217.3, 177.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 216.3, 173.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 204.7, 179.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 191.9, 185 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 192.9, 175.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 192.5, 164.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 196.4, 171.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 199, 177.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 200.2, 178.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 200.2, 178.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 201.5, 179.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 201.5, 179.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 202.8, 181 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 202.8, 181 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 204, 182.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 204, 182.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 205.3, 183.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 205.3, 183.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 206.5, 184.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 206.5, 184.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 207.8, 186.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 207.8, 186.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 209.1, 187.5 , 0 );

setScaleKey( spep_2 + 0, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 68, 1, 2.36, 2.36 );

setRotateKey( spep_2 + 0, 1, -28.2 );
setRotateKey( spep_2 -3 + 68, 1, -28.2 );

-- ** 音 ** --
--パンチ
SE007 = playSeVer2( spep_2 + 6, 1187, "",spep_2 + 58, 0, 24, -1);
SE008 = playSeVer2( spep_2 + 6, 1153, "", 0, 0, 0, -1);

--後ろ回り込む
SE009 = playSeVer2( spep_2 + 58, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE009, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;


------------------------------------------------------
-- 敵の背後に回り込み蹴る(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_3 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --敵の背後に回り込み蹴る	ef_004
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, move_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 56, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 56 -1, move_f, 255 );
setEffAlphaKey( spep_3 + 56, move_f, 0 );

move_b = entryEffectLife( spep_3 + 0, SP_06, 56, 0x80, -1, 0, 0, 0 );  --敵の背後に回り込み蹴る	ef_004_b
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 56, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 56 -1, move_b, 255 );
setEffAlphaKey( spep_3 + 56, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 59, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -7.1, -66.6 , 0 );
setMoveKey( spep_3 + 1, 1, -7.1, -66.6 , 0 );
setMoveKey( spep_3 + 2, 1, -5.9, -66.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -5.9, -66.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -4.8, -66.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -4.8, -66.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -3.7, -66.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -3.1, -66.6 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -3.1, -66.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -2, -66.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -2, -66.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -0.9, -66.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -0.9, -66.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 0.2, -66.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 0.2, -66.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 279.8, 131.7 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 233.5, 108.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 402.7, 115.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 372.5, 164.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 605.6, 195.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 603.1, 191.7 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 811.8, 225.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 810.8, 220.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 1020.9, 254.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 1023.7, 254.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 1237.5, 293.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 1233.9, 295.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 1441.3, 334.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 1442.9, 334.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 1655.6, 372.9 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 1655.6, 372.9 , 0 );

setScaleKey( spep_3 + 0, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 59, 1, 2.07, 2.07 );

setRotateKey( spep_3 + 0, 1, 9.8 );
setRotateKey( spep_3 + 1, 1, 9.8 );
setRotateKey( spep_3 + 2, 1, 10 );
setRotateKey( spep_3 -3 + 6, 1, 10 );
setRotateKey( spep_3 -3 + 8, 1, 10.2 );
setRotateKey( spep_3 -3 + 10, 1, 10.2 );
setRotateKey( spep_3 -3 + 12, 1, 10.4 );
setRotateKey( spep_3 -3 + 14, 1, 10.5 );
setRotateKey( spep_3 -3 + 16, 1, 10.5 );
setRotateKey( spep_3 -3 + 18, 1, 10.7 );
setRotateKey( spep_3 -3 + 20, 1, 10.7 );
setRotateKey( spep_3 -3 + 22, 1, 11 );
setRotateKey( spep_3 -3 + 24, 1, 11 );
setRotateKey( spep_3 -3 + 26, 1, 11.2 );
setRotateKey( spep_3 -3 + 28, 1, 11.2 );
setRotateKey( spep_3 -3 + 30, 1, -30.4 );
setRotateKey( spep_3 -3 + 59, 1, -30.4 );

-- ** 音 ** --
--蹴り飛ばし
SE010 = playSeVer2( spep_3 + 10, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 20, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 20, 1153, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- 顔を上げてニヤリと笑う(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
niya = entryEffectLife( spep_4 + 0, SP_07, 94, 0x100, -1, 0, 0, 0 );  --顔を上げてニヤリと笑う	ef_005
setEffMoveKey( spep_4 + 0, niya, 0, 0 , 0 );
setEffMoveKey( spep_4 + 94, niya, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, niya, 1.0, 1.0 );
setEffScaleKey( spep_4 + 94, niya, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, niya, 0 );
setEffRotateKey( spep_4 + 94, niya, 0 );
setEffAlphaKey( spep_4 + 0, niya, 255 );
setEffAlphaKey( spep_4 + 94 -1, niya, 255 );
setEffAlphaKey( spep_4 + 94, niya, 0 );

spep_x = spep_4 + 8;
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
--顔アップ
SE014 = playSeVer2( spep_4 + 16, 8, "",spep_4 + 104, 0, 14, -1);

--顔カットイン
SE013 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_5 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_5 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--分身
SE016 = playSeVer2( spep_5 + 90, 1232, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_5 + 90, 1278, "",spep_5 + 194, 0, 46, -1);
setSeVolumeByWorkId( spep_5 + 90, SE017, 66 );
SE018 = playSeVer2( spep_5 + 90, 1271, "",spep_5 + 202, 0, 20, -1);

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- 敵のアップからQTBするとハッチヒャックが分身している(86F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
bunshin_f = entryEffectLife( spep_6 + 0, SP_08, 86, 0x100, -1, 0, 0, 0 );  --敵のアップからQTBするとハッチヒャックが分身している	ef_006
setEffMoveKey( spep_6 + 0, bunshin_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, bunshin_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bunshin_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, bunshin_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bunshin_f, 0 );
setEffRotateKey( spep_6 + 86, bunshin_f, 0 );
setEffAlphaKey( spep_6 + 0, bunshin_f, 255 );
setEffAlphaKey( spep_6 + 86 -1, bunshin_f, 255 );
setEffAlphaKey( spep_6 + 86, bunshin_f, 0 );

bunshin_b = entryEffectLife( spep_6 + 0, SP_09, 86, 0x80, -1, 0, 0, 0 );  --敵のアップからQTBするとハッチヒャックが分身している	ef_006_b
setEffMoveKey( spep_6 + 0, bunshin_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, bunshin_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bunshin_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, bunshin_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bunshin_b, 0 );
setEffRotateKey( spep_6 + 86, bunshin_b, 0 );
setEffAlphaKey( spep_6 + 0, bunshin_b, 255 );
setEffAlphaKey( spep_6 + 86 -1, bunshin_b, 255 );
setEffAlphaKey( spep_6 + 86, bunshin_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 1.9, -0.5 , 0 );
setMoveKey( spep_6 + 1, 1, 1.4, -0.3 , 0 );
setMoveKey( spep_6 + 2, 1, 1.4, -0.3 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 1.1, -0.3 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 0.9, -0.2 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 0.8, -0.2 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 0.6, -0.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 0.5, -0.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 0.5, -0.1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 0.4, -0.1 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 0.4, -0.1 , 0 );

setScaleKey( spep_6 + 0, 1, 1.72, 1.73 );
setScaleKey( spep_6 + 1, 1, 1.31, 1.32 );
setScaleKey( spep_6 + 2, 1, 1.31, 1.32 );
setScaleKey( spep_6 -3 + 6, 1, 1.04, 1.04 );
setScaleKey( spep_6 -3 + 8, 1, 0.84, 0.84 );
setScaleKey( spep_6 -3 + 10, 1, 0.69, 0.7 );
setScaleKey( spep_6 -3 + 12, 1, 0.58, 0.58 );
setScaleKey( spep_6 -3 + 14, 1, 0.5, 0.5 );
setScaleKey( spep_6 -3 + 16, 1, 0.44, 0.44 );
setScaleKey( spep_6 -3 + 18, 1, 0.4, 0.4 );
setScaleKey( spep_6 -3 + 20, 1, 0.38, 0.38 );
--setScaleKey( spep_6 -3 + 22, 1, 0.37, 0.37 );
--setScaleKey( spep_6 -3 + 32, 1, 0.37, 0.37 );
--setScaleKey( spep_6 -3 + 34, 1, 0.37, 0.36 );
--setScaleKey( spep_6 -3 + 36, 1, 0.37, 0.36 );
--setScaleKey( spep_6 -3 + 38, 1, 0.36, 0.36 );
setScaleKey( spep_6 -3 + 88, 1, 0.36, 0.36 );

setRotateKey( spep_6 + 0, 1, 21.2 );
setRotateKey( spep_6 -3 + 88, 1, 21.2 );

-- ** 音 ** --
--パンチ
SE019 = playSeVer2( spep_6 + 84, 1117, "",spep_6 + 124, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;


------------------------------------------------------
-- 分身したハッチヒャックが多方面から次々に敵を攻撃する(80F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
elbow_f = entryEffectLife( spep_7 + 0, SP_10, 80, 0x100, -1, 0, 0, 0 );  --分身したハッチヒャックが多方面から次々に敵を攻撃する	ef_007
setEffMoveKey( spep_7 + 0, elbow_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 80, elbow_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 80, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, elbow_f, 0 );
setEffRotateKey( spep_7 + 80, elbow_f, 0 );
setEffAlphaKey( spep_7 + 0, elbow_f, 255 );
setEffAlphaKey( spep_7 + 80 -1, elbow_f, 255 );
setEffAlphaKey( spep_7 + 80, elbow_f, 0 );

elbow_b = entryEffectLife( spep_7 + 0, SP_11, 80, 0x80, -1, 0, 0, 0 );  --分身したハッチヒャックが多方面から次々に敵を攻撃する	ef_007_b
setEffMoveKey( spep_7 + 0, elbow_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 80, elbow_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 80, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, elbow_b, 0 );
setEffRotateKey( spep_7 + 80, elbow_b, 0 );
setEffAlphaKey( spep_7 + 0, elbow_b, 255 );
setEffAlphaKey( spep_7 + 80 -1, elbow_b, 255 );
setEffAlphaKey( spep_7 + 80, elbow_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 -3 + 44, 1, 0 );
changeAnime( spep_7 + 0, 1, 8 );

setMoveKey( spep_7 + 0, 1, 98.4, -46.5 , 0 );
setMoveKey( spep_7 + 1, 1, 98.4, -46.5 , 0 );
setMoveKey( spep_7 + 2, 1, 93.7, -43.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 93.7, -43.3 , 0 );
setMoveKey( spep_7 -3 + 7, 1, 93.7, -43.3 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 89.1, -40.1 , 0 );
setMoveKey( spep_7 -3 + 9, 1, 89.1, -40.1 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 89.1, -40.1 , 0 );
setMoveKey( spep_7 -3 + 11, 1, 89.1, -40.1 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 84.4, -36.9 , 0 );
setMoveKey( spep_7 -3 + 13, 1, 84.4, -36.9 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 84.4, -36.9 , 0 );
setMoveKey( spep_7 -3 + 15, 1, 84.4, -36.9 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 79.8, -33.6 , 0 );
setMoveKey( spep_7 -3 + 17, 1, 79.8, -33.6 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 79.8, -33.6 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 79.8, -33.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 75.1, -30.4 , 0 );
setMoveKey( spep_7 -3 + 21, 1, 75.1, -30.4 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 75.1, -30.4 , 0 );
setMoveKey( spep_7 -3 + 23, 1, 75.1, -30.4 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 81.6, -140.5 , 0 );
setMoveKey( spep_7 -3 + 25, 1, 81.6, -140.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 84.3, -108 , 0 );
setMoveKey( spep_7 -3 + 27, 1, 84.3, -108 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 181.5, -348.3 , 0 );
setMoveKey( spep_7 -3 + 29, 1, 181.5, -348.3 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 208.2, -284.8 , 0 );
setMoveKey( spep_7 -3 + 31, 1, 208.2, -284.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 264, -476.5 , 0 );
setMoveKey( spep_7 -3 + 33, 1, 264, -476.5 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 345.7, -503.5 , 0 );
setMoveKey( spep_7 -3 + 35, 1, 345.7, -503.5 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 427.6, -673.3 , 0 );
setMoveKey( spep_7 -3 + 37, 1, 427.6, -673.3 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 398.8, -669 , 0 );
setMoveKey( spep_7 -3 + 39, 1, 398.8, -669 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 520.3, -833.5 , 0 );
setMoveKey( spep_7 -3 + 41, 1, 520.3, -833.5 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 531.2, -823.8 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 531.2, -823.8 , 0 );

setScaleKey( spep_7 + 0, 1, 2.17, 2.17 );
setScaleKey( spep_7 -3 + 44, 1, 2.17, 2.17 );

setRotateKey( spep_7 + 0, 1, -93.3 );
setRotateKey( spep_7 + 1, 1, -93.3 );
setRotateKey( spep_7 + 2, 1, -95 );
setRotateKey( spep_7 -3 + 6, 1, -95 );
setRotateKey( spep_7 -3 + 7, 1, -95 );
setRotateKey( spep_7 -3 + 8, 1, -96.7 );
setRotateKey( spep_7 -3 + 9, 1, -96.7 );
setRotateKey( spep_7 -3 + 10, 1, -96.7 );
setRotateKey( spep_7 -3 + 11, 1, -96.7 );
setRotateKey( spep_7 -3 + 12, 1, -98.4 );
setRotateKey( spep_7 -3 + 13, 1, -98.4 );
setRotateKey( spep_7 -3 + 14, 1, -98.4 );
setRotateKey( spep_7 -3 + 15, 1, -98.4 );
setRotateKey( spep_7 -3 + 16, 1, -100.2 );
setRotateKey( spep_7 -3 + 17, 1, -100.2 );
setRotateKey( spep_7 -3 + 18, 1, -100.2 );
setRotateKey( spep_7 -3 + 19, 1, -100.2 );
setRotateKey( spep_7 -3 + 20, 1, -101.9 );
setRotateKey( spep_7 -3 + 21, 1, -101.9 );
setRotateKey( spep_7 -3 + 22, 1, -101.9 );
setRotateKey( spep_7 -3 + 23, 1, -101.9 );
setRotateKey( spep_7 -3 + 24, 1, -102.8 );
setRotateKey( spep_7 -3 + 44, 1, -102.8 );

-- ** 敵キャラクター ** --
setDisp( spep_7 -3 + 50, 1, 1 );
changeAnime( spep_7 -3 + 50, 1, 106 );

setMoveKey( spep_7 -3 + 50, 1, -541.5, 218.5 , 0 );
setMoveKey( spep_7 -3 + 52, 1, -495.6, 179.6 , 0 );
setMoveKey( spep_7 -3 + 54, 1, -449.7, 140.6 , 0 );
setMoveKey( spep_7 -3 + 56, 1, -403.8, 101.7 , 0 );
setMoveKey( spep_7 -3 + 58, 1, -358, 62.8 , 0 );
setMoveKey( spep_7 -3 + 60, 1, -312.1, 23.9 , 0 );
setMoveKey( spep_7 -3 + 62, 1, -266.2, -15 , 0 );
setMoveKey( spep_7 -3 + 64, 1, -184.4, -17.3 , 0 );
setMoveKey( spep_7 -3 + 66, 1, -199.4, -118 , 0 );
setMoveKey( spep_7 -3 + 68, 1, -143, -122.8 , 0 );
setMoveKey( spep_7 -3 + 70, 1, -204.3, -63.4 , 0 );
setMoveKey( spep_7 -3 + 72, 1, -204.5, -403.1 , 0 );
setMoveKey( spep_7 -3 + 74, 1, -161.8, -384.7 , 0 );
setMoveKey( spep_7 -3 + 76, 1, -167, -565.1 , 0 );
setMoveKey( spep_7 -3 + 78, 1, -172.2, -558.9 , 0 );
setMoveKey( spep_7 -3 + 80, 1, -174.4, -747.7 , 0 );
setMoveKey( spep_7 -3 + 82, 1, -176.6, -749.8 , 0 );

setScaleKey( spep_7 -3 + 50, 1, 3.03, 3.03 );
setScaleKey( spep_7 -3 + 82, 1, 3.03, 3.03 );

setRotateKey( spep_7 -3 + 50, 1, 73.2 );
setRotateKey( spep_7 -3 + 64, 1, 73.2 );
setRotateKey( spep_7 -3 + 66, 1, 100.2 );
setRotateKey( spep_7 -3 + 70, 1, 100.2 );
setRotateKey( spep_7 -3 + 72, 1, 102.4 );
setRotateKey( spep_7 -3 + 74, 1, 102.4 );
setRotateKey( spep_7 -3 + 76, 1, 103.8 );
setRotateKey( spep_7 -3 + 78, 1, 103.8 );
setRotateKey( spep_7 -3 + 80, 1, 105.3 );
setRotateKey( spep_7 -3 + 82, 1, 105.3 );

-- ** 音 ** --
--パンチ
SE020 = playSeVer2( spep_7 + 16, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 16, SE020, 75 );
SE021 = playSeVer2( spep_7 + 16, 1009, "", 0, 0, 0, -1);

--肘打ち
SE022 = playSeVer2( spep_7 + 52, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE022, 85 );
SE023 = playSeVer2( spep_7 + 52, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE023, 80 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 80;


------------------------------------------------------
-- 地面に敵が落下した後、ハッチヒャックも着地(84F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
landing_f = entryEffectLife( spep_8 + 0, SP_12, 84, 0x100, -1, 0, 0, 0 );  --地面に敵が落下した後、ハッチヒャックも着地	ef_008
setEffMoveKey( spep_8 + 0, landing_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 84, landing_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, landing_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 84, landing_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, landing_f, 0 );
setEffRotateKey( spep_8 + 84, landing_f, 0 );
setEffAlphaKey( spep_8 + 0, landing_f, 255 );
setEffAlphaKey( spep_8 + 84 -1, landing_f, 255 );
setEffAlphaKey( spep_8 + 84, landing_f, 0 );

landing_g = entryEffectLife( spep_8 + 0, SP_13, 84, 0x80, -1, 0, 0, 0 );  --地面に敵が落下した後、ハッチヒャックも着地	ef_008_b
setEffMoveKey( spep_8 + 0, landing_g, 0, 0 , 0 );
setEffMoveKey( spep_8 + 84, landing_g, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, landing_g, 1.0, 1.0 );
setEffScaleKey( spep_8 + 84, landing_g, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, landing_g, 0 );
setEffRotateKey( spep_8 + 84, landing_g, 0 );
setEffAlphaKey( spep_8 + 0, landing_g, 255 );
setEffAlphaKey( spep_8 + 84 -1, landing_g, 255 );
setEffAlphaKey( spep_8 + 84, landing_g, 0 );

-- ** 敵キャラクター ** --
changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8 -3 + 12, 1, 108 );
changeAnime( spep_8 -3 + 20, 1, 106 );

setMoveKey( spep_8 + 0, 1, 34.6, 584 , 0 );
setMoveKey( spep_8 + 1, 1, 34.6, 584 , 0 );
setMoveKey( spep_8 + 2, 1, 34.7, 265.1 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 34.7, 265.1 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 34.7, -53.9 , 0 );
setMoveKey( spep_8 -3 + 11, 1, 34.7, -53.9 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 36.8, -275.5 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 36.8, -275.5 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 36.8, -284.8 , 0 );
setMoveKey( spep_8 -3 + 19, 1, 45.8, -275.8 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 46.4, -110.7 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 52.5, -115.6 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 41.9, -97.4 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 41.7, -108.1 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 44.6, -120.7 , 0 );
setMoveKey( spep_8 -3 + 30, 1, 47.5, -117.8 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 46, -155.5 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 44.5, -155 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 45.9, -193.7 , 0 );
setMoveKey( spep_8 -3 + 38, 1, 47.3, -194.2 , 0 );
setMoveKey( spep_8 -3 + 40, 1, 49.7, -195.5 , 0 );
setMoveKey( spep_8 -3 + 42, 1, 43.1, -227.7 , 0 );
setMoveKey( spep_8 -3 + 44, 1, 45.2, -196.9 , 0 );
setMoveKey( spep_8 -3 + 46, 1, 48.6, -223.5 , 0 );
setMoveKey( spep_8 -3 + 48, 1, 51.3, -193.6 , 0 );
setMoveKey( spep_8 -3 + 50, 1, 48.6, -204.7 , 0 );
setMoveKey( spep_8 -3 + 52, 1, 46, -220.8 , 0 );
setMoveKey( spep_8 -3 + 54, 1, 47.4, -213.4 , 0 );
setMoveKey( spep_8 -3 + 56, 1, 48.9, -211.1 , 0 );
setMoveKey( spep_8 -3 + 58, 1, 49.7, -217 , 0 );
setMoveKey( spep_8 -3 + 60, 1, 50.6, -225.5 , 0 );
setMoveKey( spep_8 -3 + 62, 1, 49.1, -222.3 , 0 );
setMoveKey( spep_8 -3 + 64, 1, 47.7, -219.2 , 0 );
setMoveKey( spep_8 -3 + 66, 1, 46.3, -216 , 0 );
setMoveKey( spep_8 -3 + 86, 1, 46.3, -216 , 0 );

setScaleKey( spep_8 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_8 -3 + 86, 1, 2.52, 2.52 );

setRotateKey( spep_8 + 0, 1, 36.7 );
setRotateKey( spep_8 -3 + 11, 1, 36.7 );
setRotateKey( spep_8 -3 + 12, 1, 81.5 );
setRotateKey( spep_8 -3 + 19, 1, 81.5 );
setRotateKey( spep_8 -3 + 20, 1, 36.7 );
setRotateKey( spep_8 -3 + 86, 1, 36.7 );

-- ** 音 ** --
--敵地面落ちる
SE024 = playSeVer2( spep_8 + 4, 1011, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_8 + 8, 1008, "", 0, 0, 0, -1);

--着地
SE026 = playSeVer2( spep_8 + 38, 1014, "",spep_8 + 68, 0, 12, -1);
setSeVolumeByWorkId( spep_8 + 38, SE026, 79 );
SE027 = playSeVer2( spep_8 + 38, 1190, "",spep_8 + 62, 0, 12, -1);
setSeVolumeByWorkId( spep_8 + 38, SE027, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 84 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 84;


------------------------------------------------------
-- 敵をつかんで持ち上げた後床に叩きつける	(212F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_14, 0x100, -1, 0, 0, 0 );  --敵をつかんで持ち上げた後床に叩きつける	ef_009
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 242, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 242, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 242, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 242, finish_f, 255 );

finish_b = entryEffect( spep_9 + 0, SP_15, 0x80, -1, 0, 0, 0 );  --敵をつかんで持ち上げた後床に叩きつける	ef_009_b
setEffMoveKey( spep_9 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 242, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 242, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 242, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 242, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 -3 + 136, 1, 0 );
changeAnime( spep_9 + 0, 1, 106 );

setMoveKey( spep_9 + 0, 1, 50.5, -254 , 0 );
setMoveKey( spep_9 + 1, 1, 50.5, -253.9 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 50.5, -253.9 , 0 );
setMoveKey( spep_9 -3 + 35, 1, 50.5, -253.9 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 50.7, -254.2 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 50.7, -254.2 , 0 );
setMoveKey( spep_9 -3 + 45, 1, 50.7, -254.2 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 50.7, -178.5 , 0 );
setMoveKey( spep_9 -3 + 47, 1, 50.7, -178.5 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 50.7, -177.1 , 0 );
setMoveKey( spep_9 -3 + 49, 1, 50.7, -177.1 , 0 );
setMoveKey( spep_9 -3 + 50, 1, 50.7, -177.1 , 0 );
setMoveKey( spep_9 -3 + 51, 1, 50.7, -177.1 , 0 );
setMoveKey( spep_9 -3 + 52, 1, 50.7, -174.2 , 0 );
setMoveKey( spep_9 -3 + 53, 1, 50.7, -174.2 , 0 );
setMoveKey( spep_9 -3 + 54, 1, 50.7, -174.2 , 0 );
setMoveKey( spep_9 -3 + 55, 1, 50.7, -174.2 , 0 );
setMoveKey( spep_9 -3 + 56, 1, 50.7, -171.3 , 0 );
setMoveKey( spep_9 -3 + 57, 1, 50.7, -171.3 , 0 );
setMoveKey( spep_9 -3 + 58, 1, 50.7, -171.3 , 0 );
setMoveKey( spep_9 -3 + 59, 1, 50.7, -171.3 , 0 );
setMoveKey( spep_9 -3 + 60, 1, 50.7, -168.4 , 0 );
setMoveKey( spep_9 -3 + 61, 1, 50.7, -168.4 , 0 );
setMoveKey( spep_9 -3 + 62, 1, 50.7, -168.4 , 0 );
setMoveKey( spep_9 -3 + 63, 1, 50.7, -168.4 , 0 );
setMoveKey( spep_9 -3 + 64, 1, 50.7, -165.5 , 0 );
setMoveKey( spep_9 -3 + 65, 1, 50.7, -165.5 , 0 );
setMoveKey( spep_9 -3 + 66, 1, 50.7, -165.5 , 0 );
setMoveKey( spep_9 -3 + 67, 1, 50.7, -165.5 , 0 );
setMoveKey( spep_9 -3 + 68, 1, 50.7, -162.6 , 0 );
setMoveKey( spep_9 -3 + 69, 1, 50.7, -162.6 , 0 );
setMoveKey( spep_9 -3 + 70, 1, 50.7, -162.6 , 0 );
setMoveKey( spep_9 -3 + 71, 1, 50.7, -162.6 , 0 );
setMoveKey( spep_9 -3 + 72, 1, 50.7, -159.7 , 0 );
setMoveKey( spep_9 -3 + 73, 1, 50.7, -159.7 , 0 );
setMoveKey( spep_9 -3 + 74, 1, 50.7, -159.7 , 0 );
setMoveKey( spep_9 -3 + 75, 1, 50.7, -159.7 , 0 );
setMoveKey( spep_9 -3 + 76, 1, 10.6, 258.4 , 0 );
setMoveKey( spep_9 -3 + 77, 1, 10.6, 258.4 , 0 );
setMoveKey( spep_9 -3 + 78, 1, 10.6, 258.4 , 0 );
setMoveKey( spep_9 -3 + 79, 1, 10.6, 258.4 , 0 );
setMoveKey( spep_9 -3 + 80, 1, 9.5, 258.7 , 0 );
setMoveKey( spep_9 -3 + 81, 1, 9.5, 258.7 , 0 );
setMoveKey( spep_9 -3 + 82, 1, 9.5, 258.7 , 0 );
setMoveKey( spep_9 -3 + 83, 1, 9.5, 258.7 , 0 );
setMoveKey( spep_9 -3 + 84, 1, 8.4, 259 , 0 );
setMoveKey( spep_9 -3 + 85, 1, 8.4, 259 , 0 );
setMoveKey( spep_9 -3 + 86, 1, 8.4, 259 , 0 );
setMoveKey( spep_9 -3 + 87, 1, 8.4, 259 , 0 );
setMoveKey( spep_9 -3 + 88, 1, 7.3, 259.3 , 0 );
setMoveKey( spep_9 -3 + 89, 1, 7.3, 259.3 , 0 );
setMoveKey( spep_9 -3 + 90, 1, 7.3, 259.3 , 0 );
setMoveKey( spep_9 -3 + 91, 1, 7.3, 259.3 , 0 );
setMoveKey( spep_9 -3 + 92, 1, 6.2, 259.7 , 0 );
setMoveKey( spep_9 -3 + 93, 1, 6.2, 259.7 , 0 );
setMoveKey( spep_9 -3 + 94, 1, 6.2, 259.7 , 0 );
setMoveKey( spep_9 -3 + 95, 1, 6.2, 259.7 , 0 );
setMoveKey( spep_9 -3 + 96, 1, 5.1, 260 , 0 );
setMoveKey( spep_9 -3 + 97, 1, 5.1, 260 , 0 );
setMoveKey( spep_9 -3 + 98, 1, 5.1, 260 , 0 );
setMoveKey( spep_9 -3 + 99, 1, 5.1, 260 , 0 );
setMoveKey( spep_9 -3 + 100, 1, 4, 260.3 , 0 );
setMoveKey( spep_9 -3 + 101, 1, 4, 260.3 , 0 );
setMoveKey( spep_9 -3 + 102, 1, 4, 260.3 , 0 );
setMoveKey( spep_9 -3 + 103, 1, 4, 260.3 , 0 );
setMoveKey( spep_9 -3 + 104, 1, 2.9, 260.6 , 0 );
setMoveKey( spep_9 -3 + 105, 1, 2.9, 260.6 , 0 );
setMoveKey( spep_9 -3 + 106, 1, 2.9, 260.6 , 0 );
setMoveKey( spep_9 -3 + 107, 1, 2.9, 260.6 , 0 );
setMoveKey( spep_9 -3 + 108, 1, 1.8, 260.9 , 0 );
setMoveKey( spep_9 -3 + 109, 1, 1.8, 260.9 , 0 );
setMoveKey( spep_9 -3 + 110, 1, 1.8, 260.9 , 0 );
setMoveKey( spep_9 -3 + 111, 1, 1.8, 260.9 , 0 );
setMoveKey( spep_9 -3 + 112, 1, 0.7, 261.2 , 0 );
setMoveKey( spep_9 -3 + 113, 1, 0.7, 261.2 , 0 );
setMoveKey( spep_9 -3 + 114, 1, 0.7, 261.2 , 0 );
setMoveKey( spep_9 -3 + 115, 1, 0.7, 261.2 , 0 );
setMoveKey( spep_9 -3 + 116, 1, 11.1, 199.6 , 0 );
setMoveKey( spep_9 -3 + 117, 1, 11.1, 199.6 , 0 );
setMoveKey( spep_9 -3 + 118, 1, 11.1, 199.6 , 0 );
setMoveKey( spep_9 -3 + 119, 1, 11.1, 199.6 , 0 );
setMoveKey( spep_9 -3 + 120, 1, 63.5, -172.7 , 0 );
setMoveKey( spep_9 -3 + 121, 1, 63.5, -172.7 , 0 );
setMoveKey( spep_9 -3 + 122, 1, 51.9, -292.8 , 0 );
setMoveKey( spep_9 -3 + 123, 1, 51.9, -292.8 , 0 );
setMoveKey( spep_9 -3 + 124, 1, 68.6, -190.5 , 0 );
setMoveKey( spep_9 -3 + 125, 1, 68.6, -190.5 , 0 );
setMoveKey( spep_9 -3 + 126, 1, 59.4, -271.2 , 0 );
setMoveKey( spep_9 -3 + 127, 1, 59.4, -271.2 , 0 );
setMoveKey( spep_9 -3 + 128, 1, 68.1, -176 , 0 );
setMoveKey( spep_9 -3 + 129, 1, 68.1, -176 , 0 );
setMoveKey( spep_9 -3 + 130, 1, 52, -255.3 , 0 );
setMoveKey( spep_9 -3 + 131, 1, 52, -255.3 , 0 );
setMoveKey( spep_9 -3 + 132, 1, 43.6, -429.8 , 0 );
setMoveKey( spep_9 -3 + 133, 1, 43.6, -429.8 , 0 );
setMoveKey( spep_9 -3 + 134, 1, 47.1, -484 , 0 );
setMoveKey( spep_9 -3 + 135, 1, 47.1, -484 , 0 );
setMoveKey( spep_9 -3 + 136, 1, 47.1, -484 , 0 );
--[[setMoveKey( spep_9 -3 + 136, 1, 42, -247.3 , 0 );
setMoveKey( spep_9 -3 + 137, 1, 42, -247.3 , 0 );
setMoveKey( spep_9 -3 + 138, 1, 61, -225.6 , 0 );
setMoveKey( spep_9 -3 + 139, 1, 61, -225.6 , 0 );
setMoveKey( spep_9 -3 + 140, 1, 50.2, -249.1 , 0 );
setMoveKey( spep_9 -3 + 141, 1, 50.2, -249.1 , 0 );
setMoveKey( spep_9 -3 + 142, 1, 47.8, -224.9 , 0 );
setMoveKey( spep_9 -3 + 143, 1, 47.8, -224.9 , 0 );
setMoveKey( spep_9 -3 + 144, 1, 49.1, -258.9 , 0 );
setMoveKey( spep_9 -3 + 145, 1, 49.1, -258.9 , 0 );
setMoveKey( spep_9 -3 + 146, 1, 57.9, -230.6 , 0 );
setMoveKey( spep_9 -3 + 147, 1, 57.9, -230.6 , 0 );
setMoveKey( spep_9 -3 + 148, 1, 55.1, -276.3 , 0 );
setMoveKey( spep_9 -3 + 149, 1, 55.1, -276.3 , 0 );
setMoveKey( spep_9 -3 + 150, 1, 50.2, -230 , 0 );
setMoveKey( spep_9 -3 + 151, 1, 50.2, -230 , 0 );
setMoveKey( spep_9 -3 + 152, 1, 48, -277 , 0 );
setMoveKey( spep_9 -3 + 153, 1, 48, -277 , 0 );
setMoveKey( spep_9 -3 + 154, 1, 45.4, -221.2 , 0 );
setMoveKey( spep_9 -3 + 155, 1, 45.4, -221.2 , 0 );
setMoveKey( spep_9 -3 + 156, 1, 50.6, -264.6 , 0 );
setMoveKey( spep_9 -3 + 157, 1, 50.6, -264.6 , 0 );
setMoveKey( spep_9 -3 + 158, 1, 51, -232.7 , 0 );
setMoveKey( spep_9 -3 + 159, 1, 51, -232.7 , 0 );
setMoveKey( spep_9 -3 + 160, 1, 55.9, -271.9 , 0 );
setMoveKey( spep_9 -3 + 161, 1, 55.9, -271.9 , 0 );
setMoveKey( spep_9 -3 + 162, 1, 46.1, -232.6 , 0 );
setMoveKey( spep_9 -3 + 163, 1, 46.1, -232.6 , 0 );
setMoveKey( spep_9 -3 + 164, 1, 48.6, -265 , 0 );
setMoveKey( spep_9 -3 + 165, 1, 48.6, -265 , 0 );
setMoveKey( spep_9 -3 + 166, 1, 46.2, -228.6 , 0 );
setMoveKey( spep_9 -3 + 167, 1, 46.2, -228.6 , 0 );
setMoveKey( spep_9 -3 + 168, 1, 54.3, -263.7 , 0 );
setMoveKey( spep_9 -3 + 169, 1, 54.3, -263.7 , 0 );
setMoveKey( spep_9 -3 + 170, 1, 45.5, -230.2 , 0 );
setMoveKey( spep_9 -3 + 171, 1, 45.5, -230.2 , 0 );
setMoveKey( spep_9 -3 + 172, 1, 48, -271.9 , 0 );
setMoveKey( spep_9 -3 + 173, 1, 48, -271.9 , 0 );
setMoveKey( spep_9 -3 + 174, 1, 46.2, -235.7 , 0 );
setMoveKey( spep_9 -3 + 175, 1, 46.2, -235.7 , 0 );
setMoveKey( spep_9 -3 + 176, 1, 51, -264.7 , 0 );
setMoveKey( spep_9 -3 + 177, 1, 51, -264.7 , 0 );
setMoveKey( spep_9 -3 + 178, 1, 55.6, -237.8 , 0 );
setMoveKey( spep_9 -3 + 179, 1, 55.6, -237.8 , 0 );
setMoveKey( spep_9 -3 + 180, 1, 45.8, -198.2 , 0 );
setMoveKey( spep_9 -3 + 181, 1, 45.8, -198.2 , 0 );
setMoveKey( spep_9 -3 + 182, 1, 51.7, -155.7 , 0 );
setMoveKey( spep_9 -3 + 183, 1, 51.7, -155.7 , 0 );
setMoveKey( spep_9 -3 + 184, 1, 48.4, -195.4 , 0 );
setMoveKey( spep_9 -3 + 185, 1, 48.4, -195.4 , 0 );
setMoveKey( spep_9 -3 + 186, 1, 47.4, -154.4 , 0 );
setMoveKey( spep_9 -3 + 187, 1, 47.4, -154.4 , 0 );
setMoveKey( spep_9 -3 + 188, 1, 49.1, -191 , 0 );
setMoveKey( spep_9 -3 + 189, 1, 49.1, -191 , 0 );
setMoveKey( spep_9 -3 + 190, 1, 44.9, -149.8 , 0 );
setMoveKey( spep_9 -3 + 191, 1, 44.9, -149.8 , 0 );
setMoveKey( spep_9 -3 + 192, 1, 54.9, -188.3 , 0 );
setMoveKey( spep_9 -3 + 193, 1, 54.9, -188.3 , 0 );
setMoveKey( spep_9 -3 + 194, 1, 43.6, -156.9 , 0 );
setMoveKey( spep_9 -3 + 195, 1, 43.6, -156.9 , 0 );
setMoveKey( spep_9 -3 + 196, 1, 48.7, -181.2 , 0 );
setMoveKey( spep_9 -3 + 197, 1, 48.7, -181.2 , 0 );
setMoveKey( spep_9 -3 + 198, 1, 47.6, -140.1 , 0 );
setMoveKey( spep_9 -3 + 199, 1, 47.6, -140.1 , 0 );
setMoveKey( spep_9 -3 + 200, 1, 42.1, -149.7 , 0 );
setMoveKey( spep_9 -3 + 201, 1, 42.1, -149.7 , 0 );
setMoveKey( spep_9 -3 + 202, 1, 56, -202.1 , 0 );
setMoveKey( spep_9 -3 + 203, 1, 56, -202.1 , 0 );
setMoveKey( spep_9 -3 + 204, 1, 39, -123.1 , 0 );
setMoveKey( spep_9 -3 + 205, 1, 39, -123.1 , 0 );
setMoveKey( spep_9 -3 + 206, 1, 38.7, -191.7 , 0 );
setMoveKey( spep_9 -3 + 207, 1, 38.7, -191.7 , 0 );
setMoveKey( spep_9 -3 + 208, 1, 46.9, -143.5 , 0 );
setMoveKey( spep_9 -3 + 209, 1, 46.9, -143.5 , 0 );
setMoveKey( spep_9 -3 + 210, 1, 59.2, -181.6 , 0 );
setMoveKey( spep_9 -3 + 211, 1, 59.2, -181.6 , 0 );
setMoveKey( spep_9 -3 + 212, 1, 45.3, -135.3 , 0 );
setMoveKey( spep_9 -3 + 213, 1, 45.3, -135.3 , 0 );
setMoveKey( spep_9 -3 + 214, 1, 59.2, -181.6 , 0 );
setMoveKey( spep_9 -3 + 215, 1, 59.2, -181.6 , 0 );]]

setScaleKey( spep_9 + 0, 1, 1.05, 1.05 );
setScaleKey( spep_9 -3 + 136, 1, 1.05, 1.05 );
--setScaleKey( spep_9 -3 + 215, 1, 1.05, 1.05 );

setRotateKey( spep_9 + 0, 1, 6.8 );
setRotateKey( spep_9 -3 + 74, 1, 6.8 );
setRotateKey( spep_9 -3 + 75, 1, 6.8 );
setRotateKey( spep_9 -3 + 76, 1, 8.1 );
setRotateKey( spep_9 -3 + 77, 1, 8.1 );
setRotateKey( spep_9 -3 + 78, 1, 8.1 );
setRotateKey( spep_9 -3 + 79, 1, 8.1 );
setRotateKey( spep_9 -3 + 80, 1, 7.9 );
setRotateKey( spep_9 -3 + 81, 1, 7.9 );
setRotateKey( spep_9 -3 + 82, 1, 7.9 );
setRotateKey( spep_9 -3 + 83, 1, 7.9 );
setRotateKey( spep_9 -3 + 84, 1, 7.6 );
setRotateKey( spep_9 -3 + 85, 1, 7.6 );
setRotateKey( spep_9 -3 + 86, 1, 7.6 );
setRotateKey( spep_9 -3 + 87, 1, 7.6 );
setRotateKey( spep_9 -3 + 88, 1, 7.4 );
setRotateKey( spep_9 -3 + 89, 1, 7.4 );
setRotateKey( spep_9 -3 + 90, 1, 7.4 );
setRotateKey( spep_9 -3 + 91, 1, 7.4 );
setRotateKey( spep_9 -3 + 92, 1, 7.2 );
setRotateKey( spep_9 -3 + 93, 1, 7.2 );
setRotateKey( spep_9 -3 + 94, 1, 7.2 );
setRotateKey( spep_9 -3 + 95, 1, 7.2 );
setRotateKey( spep_9 -3 + 96, 1, 6.9 );
setRotateKey( spep_9 -3 + 97, 1, 6.9 );
setRotateKey( spep_9 -3 + 98, 1, 6.9 );
setRotateKey( spep_9 -3 + 99, 1, 6.9 );
setRotateKey( spep_9 -3 + 100, 1, 6.7 );
setRotateKey( spep_9 -3 + 101, 1, 6.7 );
setRotateKey( spep_9 -3 + 102, 1, 6.7 );
setRotateKey( spep_9 -3 + 103, 1, 6.7 );
setRotateKey( spep_9 -3 + 104, 1, 6.5 );
setRotateKey( spep_9 -3 + 105, 1, 6.5 );
setRotateKey( spep_9 -3 + 106, 1, 6.5 );
setRotateKey( spep_9 -3 + 107, 1, 6.5 );
setRotateKey( spep_9 -3 + 108, 1, 6.3 );
setRotateKey( spep_9 -3 + 109, 1, 6.3 );
setRotateKey( spep_9 -3 + 110, 1, 6.3 );
setRotateKey( spep_9 -3 + 111, 1, 6.3 );
setRotateKey( spep_9 -3 + 112, 1, 6 );
setRotateKey( spep_9 -3 + 113, 1, 6 );
setRotateKey( spep_9 -3 + 114, 1, 6 );
setRotateKey( spep_9 -3 + 115, 1, 6 );
setRotateKey( spep_9 -3 + 116, 1, 8.2 );
setRotateKey( spep_9 -3 + 118, 1, 8.2 );
setRotateKey( spep_9 -3 + 119, 1, 8.2 );
setRotateKey( spep_9 -3 + 120, 1, 27.4 );
setRotateKey( spep_9 -3 + 134, 1, 27.4 );
setRotateKey( spep_9 -3 + 135, 1, 27.4 );
setRotateKey( spep_9 -3 + 136, 1, 27.4 );
--setRotateKey( spep_9 -3 + 136, 1, 6.8 );
--setRotateKey( spep_9 -3 + 215, 1, 6.8 );

-- ** 音 ** --
--敵掴む
SE028 = playSeVer2( spep_9 + 24, 1153, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_9 + 24, 1006, "", 0, 0, 0, -1);

--敵持ち上げる
SE030 = playSeVer2( spep_9 + 60, 1116, "",spep_9 + 104, 0, 20, -1);
SE031 = playSeVer2( spep_9 + 64, 1004, "", 0, 0, 0, -1);

--叩きつける
SE032 = playSeVer2( spep_9 + 104, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_9 + 106, 1003, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_9 + 114, 1159, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_9 + 116, 1068, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_9 + 118, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 242 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 120 );
endPhase( spep_9 + 232 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 拳を握りしめる(106F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 106, 0x100, -1, 0, 0, 0 );  --拳を握りしめる	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 106, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 106 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 106, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 10, 1007, "", 0, 0, 0, -1);

--手握る
SE003 = playSeVer2( spep_0 + 62, 1006, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 62, 1170, "",spep_0 + 96, 0, 20, -1);

--顔アップ
SE005 = playSeVer2( spep_0 + 104, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;


------------------------------------------------------
-- 正面に振り向く(56F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
face = entryEffectLife( spep_1 + 0, SP_02, 56, 0x100, -1, 0, 0, 0 );  --正面に振り向く	ef_002
setEffMoveKey( spep_1 + 0, face, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, face, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, face, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, face, 0 );
setEffRotateKey( spep_1 + 56, face, 0 );
setEffAlphaKey( spep_1 + 0, face, 255 );
setEffAlphaKey( spep_1 + 56 -1, face, 255 );
setEffAlphaKey( spep_1 + 56, face, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 46 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
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

-- ** 音 ** --
--パンチ
SE006 = playSeVer2( spep_1 + 50, 1003, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- 敵を右上に押し込む様にパンチを入れる(66F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_2 + 0, SP_03r, 66, 0x100, -1, 0, 0, 0 );  --敵を右上に押し込む様にパンチを入れる	ef_003
setEffMoveKey( spep_2 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 66, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_f, 0 );
setEffRotateKey( spep_2 + 66, punch_f, 0 );
setEffAlphaKey( spep_2 + 0, punch_f, 255 );
setEffAlphaKey( spep_2 + 66 -1, punch_f, 255 );
setEffAlphaKey( spep_2 + 66, punch_f, 0 );

punch_b = entryEffectLife( spep_2 + 0, SP_04, 66, 0x80, -1, 0, 0, 0 );  --敵を右上に押し込む様にパンチを入れる	ef_003_b
setEffMoveKey( spep_2 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 66, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, punch_b, 0 );
setEffRotateKey( spep_2 + 66, punch_b, 0 );
setEffAlphaKey( spep_2 + 0, punch_b, 255 );
setEffAlphaKey( spep_2 + 66 -1, punch_b, 255 );
setEffAlphaKey( spep_2 + 66, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 -3 + 12, 1, 108 );

setMoveKey( spep_2 + 0, 1, 114.9, 95.7 , 0 );
setMoveKey( spep_2 + 1, 1, 115.3, 96.1 , 0 );
setMoveKey( spep_2 + 2, 1, 130.4, 110.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 130.9, 110.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 146, 124.9 , 0 );
setMoveKey( spep_2 -3 + 11, 1, 146.4, 125.3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 191.7, 169.7 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 188.5, 134.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 180.8, 203.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 223.4, 158.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 152.9, 161.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 217.1, 179.7 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 217.3, 177.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 216.3, 173.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 204.7, 179.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 191.9, 185 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 192.9, 175.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 192.5, 164.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 196.4, 171.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 199, 177.1 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 200.2, 178.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 200.2, 178.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 201.5, 179.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 201.5, 179.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 202.8, 181 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 202.8, 181 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 204, 182.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 204, 182.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 205.3, 183.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 205.3, 183.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 206.5, 184.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 206.5, 184.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 207.8, 186.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 207.8, 186.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 209.1, 187.5 , 0 );

setScaleKey( spep_2 + 0, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 68, 1, 2.36, 2.36 );

setRotateKey( spep_2 + 0, 1, -28.2 );
setRotateKey( spep_2 -3 + 68, 1, -28.2 );

-- ** 音 ** --
--パンチ
SE007 = playSeVer2( spep_2 + 6, 1187, "",spep_2 + 58, 0, 24, -1);
SE008 = playSeVer2( spep_2 + 6, 1153, "", 0, 0, 0, -1);

--後ろ回り込む
SE009 = playSeVer2( spep_2 + 58, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE009, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 66;


------------------------------------------------------
-- 敵の背後に回り込み蹴る(56F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_3 + 0, SP_05r, 56, 0x100, -1, 0, 0, 0 );  --敵の背後に回り込み蹴る	ef_004
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 56, move_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 56, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 56 -1, move_f, 255 );
setEffAlphaKey( spep_3 + 56, move_f, 0 );

move_b = entryEffectLife( spep_3 + 0, SP_06, 56, 0x80, -1, 0, 0, 0 );  --敵の背後に回り込み蹴る	ef_004_b
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 56, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 56 -1, move_b, 255 );
setEffAlphaKey( spep_3 + 56, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 59, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -7.1, -66.6 , 0 );
setMoveKey( spep_3 + 1, 1, -7.1, -66.6 , 0 );
setMoveKey( spep_3 + 2, 1, -5.9, -66.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -5.9, -66.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -4.8, -66.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -4.8, -66.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -3.7, -66.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -3.1, -66.6 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -3.1, -66.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -2, -66.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -2, -66.6 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -0.9, -66.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -0.9, -66.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 0.2, -66.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 0.2, -66.6 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 279.8, 131.7 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 233.5, 108.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 402.7, 115.4 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 372.5, 164.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 605.6, 195.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 603.1, 191.7 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 811.8, 225.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 810.8, 220.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 1020.9, 254.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 1023.7, 254.9 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 1237.5, 293.8 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 1233.9, 295.1 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 1441.3, 334.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 1442.9, 334.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 1655.6, 372.9 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 1655.6, 372.9 , 0 );

setScaleKey( spep_3 + 0, 1, 2.07, 2.07 );
setScaleKey( spep_3 -3 + 59, 1, 2.07, 2.07 );

setRotateKey( spep_3 + 0, 1, 9.8 );
setRotateKey( spep_3 + 1, 1, 9.8 );
setRotateKey( spep_3 + 2, 1, 10 );
setRotateKey( spep_3 -3 + 6, 1, 10 );
setRotateKey( spep_3 -3 + 8, 1, 10.2 );
setRotateKey( spep_3 -3 + 10, 1, 10.2 );
setRotateKey( spep_3 -3 + 12, 1, 10.4 );
setRotateKey( spep_3 -3 + 14, 1, 10.5 );
setRotateKey( spep_3 -3 + 16, 1, 10.5 );
setRotateKey( spep_3 -3 + 18, 1, 10.7 );
setRotateKey( spep_3 -3 + 20, 1, 10.7 );
setRotateKey( spep_3 -3 + 22, 1, 11 );
setRotateKey( spep_3 -3 + 24, 1, 11 );
setRotateKey( spep_3 -3 + 26, 1, 11.2 );
setRotateKey( spep_3 -3 + 28, 1, 11.2 );
setRotateKey( spep_3 -3 + 30, 1, -30.4 );
setRotateKey( spep_3 -3 + 59, 1, -30.4 );

-- ** 音 ** --
--蹴り飛ばし
SE010 = playSeVer2( spep_3 + 10, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 20, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 20, 1153, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


------------------------------------------------------
-- 顔を上げてニヤリと笑う(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
niya = entryEffectLife( spep_4 + 0, SP_07, 94, 0x100, -1, 0, 0, 0 );  --顔を上げてニヤリと笑う	ef_005
setEffMoveKey( spep_4 + 0, niya, 0, 0 , 0 );
setEffMoveKey( spep_4 + 94, niya, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, niya, 1.0, 1.0 );
setEffScaleKey( spep_4 + 94, niya, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, niya, 0 );
setEffRotateKey( spep_4 + 94, niya, 0 );
setEffAlphaKey( spep_4 + 0, niya, 255 );
setEffAlphaKey( spep_4 + 94 -1, niya, 255 );
setEffAlphaKey( spep_4 + 94, niya, 0 );

spep_x = spep_4 + 8;
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
--顔アップ
SE014 = playSeVer2( spep_4 + 16, 8, "",spep_4 + 104, 0, 14, -1);

--顔カットイン
SE013 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 94 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_5 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_5 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--分身
SE016 = playSeVer2( spep_5 + 90, 1232, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_5 + 90, 1278, "",spep_5 + 194, 0, 46, -1);
setSeVolumeByWorkId( spep_5 + 90, SE017, 66 );
SE018 = playSeVer2( spep_5 + 90, 1271, "",spep_5 + 202, 0, 20, -1);

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- 敵のアップからQTBするとハッチヒャックが分身している(86F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
bunshin_f = entryEffectLife( spep_6 + 0, SP_08, 86, 0x100, -1, 0, 0, 0 );  --敵のアップからQTBするとハッチヒャックが分身している	ef_006
setEffMoveKey( spep_6 + 0, bunshin_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, bunshin_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bunshin_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, bunshin_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bunshin_f, 0 );
setEffRotateKey( spep_6 + 86, bunshin_f, 0 );
setEffAlphaKey( spep_6 + 0, bunshin_f, 255 );
setEffAlphaKey( spep_6 + 86 -1, bunshin_f, 255 );
setEffAlphaKey( spep_6 + 86, bunshin_f, 0 );

bunshin_b = entryEffectLife( spep_6 + 0, SP_09, 86, 0x80, -1, 0, 0, 0 );  --敵のアップからQTBするとハッチヒャックが分身している	ef_006_b
setEffMoveKey( spep_6 + 0, bunshin_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, bunshin_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bunshin_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, bunshin_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bunshin_b, 0 );
setEffRotateKey( spep_6 + 86, bunshin_b, 0 );
setEffAlphaKey( spep_6 + 0, bunshin_b, 255 );
setEffAlphaKey( spep_6 + 86 -1, bunshin_b, 255 );
setEffAlphaKey( spep_6 + 86, bunshin_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 1.9, -0.5 , 0 );
setMoveKey( spep_6 + 1, 1, 1.4, -0.3 , 0 );
setMoveKey( spep_6 + 2, 1, 1.4, -0.3 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 1.1, -0.3 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 0.9, -0.2 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 0.8, -0.2 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 0.6, -0.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 0.5, -0.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 0.5, -0.1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 0.4, -0.1 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 0.4, -0.1 , 0 );

setScaleKey( spep_6 + 0, 1, 1.72, 1.73 );
setScaleKey( spep_6 + 1, 1, 1.31, 1.32 );
setScaleKey( spep_6 + 2, 1, 1.31, 1.32 );
setScaleKey( spep_6 -3 + 6, 1, 1.04, 1.04 );
setScaleKey( spep_6 -3 + 8, 1, 0.84, 0.84 );
setScaleKey( spep_6 -3 + 10, 1, 0.69, 0.7 );
setScaleKey( spep_6 -3 + 12, 1, 0.58, 0.58 );
setScaleKey( spep_6 -3 + 14, 1, 0.5, 0.5 );
setScaleKey( spep_6 -3 + 16, 1, 0.44, 0.44 );
setScaleKey( spep_6 -3 + 18, 1, 0.4, 0.4 );
setScaleKey( spep_6 -3 + 20, 1, 0.38, 0.38 );
--setScaleKey( spep_6 -3 + 22, 1, 0.37, 0.37 );
--setScaleKey( spep_6 -3 + 32, 1, 0.37, 0.37 );
--setScaleKey( spep_6 -3 + 34, 1, 0.37, 0.36 );
--setScaleKey( spep_6 -3 + 36, 1, 0.37, 0.36 );
--setScaleKey( spep_6 -3 + 38, 1, 0.36, 0.36 );
setScaleKey( spep_6 -3 + 88, 1, 0.36, 0.36 );

setRotateKey( spep_6 + 0, 1, 21.2 );
setRotateKey( spep_6 -3 + 88, 1, 21.2 );

-- ** 音 ** --
--パンチ
SE019 = playSeVer2( spep_6 + 84, 1117, "",spep_6 + 124, 0, 16, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;


------------------------------------------------------
-- 分身したハッチヒャックが多方面から次々に敵を攻撃する(80F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
elbow_f = entryEffectLife( spep_7 + 0, SP_10r, 80, 0x100, -1, 0, 0, 0 );  --分身したハッチヒャックが多方面から次々に敵を攻撃する	ef_007
setEffMoveKey( spep_7 + 0, elbow_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 80, elbow_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, elbow_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 80, elbow_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, elbow_f, 0 );
setEffRotateKey( spep_7 + 80, elbow_f, 0 );
setEffAlphaKey( spep_7 + 0, elbow_f, 255 );
setEffAlphaKey( spep_7 + 80 -1, elbow_f, 255 );
setEffAlphaKey( spep_7 + 80, elbow_f, 0 );

elbow_b = entryEffectLife( spep_7 + 0, SP_11, 80, 0x80, -1, 0, 0, 0 );  --分身したハッチヒャックが多方面から次々に敵を攻撃する	ef_007_b
setEffMoveKey( spep_7 + 0, elbow_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 80, elbow_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 80, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, elbow_b, 0 );
setEffRotateKey( spep_7 + 80, elbow_b, 0 );
setEffAlphaKey( spep_7 + 0, elbow_b, 255 );
setEffAlphaKey( spep_7 + 80 -1, elbow_b, 255 );
setEffAlphaKey( spep_7 + 80, elbow_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_7 -3 + 44, 1, 0 );
changeAnime( spep_7 + 0, 1, 8 );

setMoveKey( spep_7 + 0, 1, 98.4, -46.5 , 0 );
setMoveKey( spep_7 + 1, 1, 98.4, -46.5 , 0 );
setMoveKey( spep_7 + 2, 1, 93.7, -43.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 93.7, -43.3 , 0 );
setMoveKey( spep_7 -3 + 7, 1, 93.7, -43.3 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 89.1, -40.1 , 0 );
setMoveKey( spep_7 -3 + 9, 1, 89.1, -40.1 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 89.1, -40.1 , 0 );
setMoveKey( spep_7 -3 + 11, 1, 89.1, -40.1 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 84.4, -36.9 , 0 );
setMoveKey( spep_7 -3 + 13, 1, 84.4, -36.9 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 84.4, -36.9 , 0 );
setMoveKey( spep_7 -3 + 15, 1, 84.4, -36.9 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 79.8, -33.6 , 0 );
setMoveKey( spep_7 -3 + 17, 1, 79.8, -33.6 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 79.8, -33.6 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 79.8, -33.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 75.1, -30.4 , 0 );
setMoveKey( spep_7 -3 + 21, 1, 75.1, -30.4 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 75.1, -30.4 , 0 );
setMoveKey( spep_7 -3 + 23, 1, 75.1, -30.4 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 81.6, -140.5 , 0 );
setMoveKey( spep_7 -3 + 25, 1, 81.6, -140.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 84.3, -108 , 0 );
setMoveKey( spep_7 -3 + 27, 1, 84.3, -108 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 181.5, -348.3 , 0 );
setMoveKey( spep_7 -3 + 29, 1, 181.5, -348.3 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 208.2, -284.8 , 0 );
setMoveKey( spep_7 -3 + 31, 1, 208.2, -284.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 264, -476.5 , 0 );
setMoveKey( spep_7 -3 + 33, 1, 264, -476.5 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 345.7, -503.5 , 0 );
setMoveKey( spep_7 -3 + 35, 1, 345.7, -503.5 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 427.6, -673.3 , 0 );
setMoveKey( spep_7 -3 + 37, 1, 427.6, -673.3 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 398.8, -669 , 0 );
setMoveKey( spep_7 -3 + 39, 1, 398.8, -669 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 520.3, -833.5 , 0 );
setMoveKey( spep_7 -3 + 41, 1, 520.3, -833.5 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 531.2, -823.8 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 531.2, -823.8 , 0 );

setScaleKey( spep_7 + 0, 1, 2.17, 2.17 );
setScaleKey( spep_7 -3 + 44, 1, 2.17, 2.17 );

setRotateKey( spep_7 + 0, 1, -93.3 );
setRotateKey( spep_7 + 1, 1, -93.3 );
setRotateKey( spep_7 + 2, 1, -95 );
setRotateKey( spep_7 -3 + 6, 1, -95 );
setRotateKey( spep_7 -3 + 7, 1, -95 );
setRotateKey( spep_7 -3 + 8, 1, -96.7 );
setRotateKey( spep_7 -3 + 9, 1, -96.7 );
setRotateKey( spep_7 -3 + 10, 1, -96.7 );
setRotateKey( spep_7 -3 + 11, 1, -96.7 );
setRotateKey( spep_7 -3 + 12, 1, -98.4 );
setRotateKey( spep_7 -3 + 13, 1, -98.4 );
setRotateKey( spep_7 -3 + 14, 1, -98.4 );
setRotateKey( spep_7 -3 + 15, 1, -98.4 );
setRotateKey( spep_7 -3 + 16, 1, -100.2 );
setRotateKey( spep_7 -3 + 17, 1, -100.2 );
setRotateKey( spep_7 -3 + 18, 1, -100.2 );
setRotateKey( spep_7 -3 + 19, 1, -100.2 );
setRotateKey( spep_7 -3 + 20, 1, -101.9 );
setRotateKey( spep_7 -3 + 21, 1, -101.9 );
setRotateKey( spep_7 -3 + 22, 1, -101.9 );
setRotateKey( spep_7 -3 + 23, 1, -101.9 );
setRotateKey( spep_7 -3 + 24, 1, -102.8 );
setRotateKey( spep_7 -3 + 44, 1, -102.8 );

-- ** 敵キャラクター ** --
setDisp( spep_7 -3 + 50, 1, 1 );
changeAnime( spep_7 -3 + 50, 1, 106 );

setMoveKey( spep_7 -3 + 50, 1, -541.5, 218.5 , 0 );
setMoveKey( spep_7 -3 + 52, 1, -495.6, 179.6 , 0 );
setMoveKey( spep_7 -3 + 54, 1, -449.7, 140.6 , 0 );
setMoveKey( spep_7 -3 + 56, 1, -403.8, 101.7 , 0 );
setMoveKey( spep_7 -3 + 58, 1, -358, 62.8 , 0 );
setMoveKey( spep_7 -3 + 60, 1, -312.1, 23.9 , 0 );
setMoveKey( spep_7 -3 + 62, 1, -266.2, -15 , 0 );
setMoveKey( spep_7 -3 + 64, 1, -184.4, -17.3 , 0 );
setMoveKey( spep_7 -3 + 66, 1, -199.4, -118 , 0 );
setMoveKey( spep_7 -3 + 68, 1, -143, -122.8 , 0 );
setMoveKey( spep_7 -3 + 70, 1, -204.3, -63.4 , 0 );
setMoveKey( spep_7 -3 + 72, 1, -204.5, -403.1 , 0 );
setMoveKey( spep_7 -3 + 74, 1, -161.8, -384.7 , 0 );
setMoveKey( spep_7 -3 + 76, 1, -167, -565.1 , 0 );
setMoveKey( spep_7 -3 + 78, 1, -172.2, -558.9 , 0 );
setMoveKey( spep_7 -3 + 80, 1, -174.4, -747.7 , 0 );
setMoveKey( spep_7 -3 + 82, 1, -176.6, -749.8 , 0 );

setScaleKey( spep_7 -3 + 50, 1, 3.03, 3.03 );
setScaleKey( spep_7 -3 + 82, 1, 3.03, 3.03 );

setRotateKey( spep_7 -3 + 50, 1, 73.2 );
setRotateKey( spep_7 -3 + 64, 1, 73.2 );
setRotateKey( spep_7 -3 + 66, 1, 100.2 );
setRotateKey( spep_7 -3 + 70, 1, 100.2 );
setRotateKey( spep_7 -3 + 72, 1, 102.4 );
setRotateKey( spep_7 -3 + 74, 1, 102.4 );
setRotateKey( spep_7 -3 + 76, 1, 103.8 );
setRotateKey( spep_7 -3 + 78, 1, 103.8 );
setRotateKey( spep_7 -3 + 80, 1, 105.3 );
setRotateKey( spep_7 -3 + 82, 1, 105.3 );

-- ** 音 ** --
--パンチ
SE020 = playSeVer2( spep_7 + 16, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 16, SE020, 75 );
SE021 = playSeVer2( spep_7 + 16, 1009, "", 0, 0, 0, -1);

--肘打ち
SE022 = playSeVer2( spep_7 + 52, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE022, 85 );
SE023 = playSeVer2( spep_7 + 52, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE023, 80 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 80 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 80;


------------------------------------------------------
-- 地面に敵が落下した後、ハッチヒャックも着地(84F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
landing_f = entryEffectLife( spep_8 + 0, SP_12r, 84, 0x100, -1, 0, 0, 0 );  --地面に敵が落下した後、ハッチヒャックも着地	ef_008
setEffMoveKey( spep_8 + 0, landing_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 84, landing_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, landing_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 84, landing_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, landing_f, 0 );
setEffRotateKey( spep_8 + 84, landing_f, 0 );
setEffAlphaKey( spep_8 + 0, landing_f, 255 );
setEffAlphaKey( spep_8 + 84 -1, landing_f, 255 );
setEffAlphaKey( spep_8 + 84, landing_f, 0 );

landing_g = entryEffectLife( spep_8 + 0, SP_13, 84, 0x80, -1, 0, 0, 0 );  --地面に敵が落下した後、ハッチヒャックも着地	ef_008_b
setEffMoveKey( spep_8 + 0, landing_g, 0, 0 , 0 );
setEffMoveKey( spep_8 + 84, landing_g, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, landing_g, 1.0, 1.0 );
setEffScaleKey( spep_8 + 84, landing_g, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, landing_g, 0 );
setEffRotateKey( spep_8 + 84, landing_g, 0 );
setEffAlphaKey( spep_8 + 0, landing_g, 255 );
setEffAlphaKey( spep_8 + 84 -1, landing_g, 255 );
setEffAlphaKey( spep_8 + 84, landing_g, 0 );

-- ** 敵キャラクター ** --
changeAnime( spep_8 + 0, 1, 106 );
changeAnime( spep_8 -3 + 12, 1, 108 );
changeAnime( spep_8 -3 + 20, 1, 106 );

setMoveKey( spep_8 + 0, 1, 34.6, 584 , 0 );
setMoveKey( spep_8 + 1, 1, 34.6, 584 , 0 );
setMoveKey( spep_8 + 2, 1, 34.7, 265.1 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 34.7, 265.1 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 34.7, -53.9 , 0 );
setMoveKey( spep_8 -3 + 11, 1, 34.7, -53.9 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 36.8, -275.5 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 36.8, -275.5 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 36.8, -284.8 , 0 );
setMoveKey( spep_8 -3 + 19, 1, 45.8, -275.8 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 46.4, -110.7 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 52.5, -115.6 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 41.9, -97.4 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 41.7, -108.1 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 44.6, -120.7 , 0 );
setMoveKey( spep_8 -3 + 30, 1, 47.5, -117.8 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 46, -155.5 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 44.5, -155 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 45.9, -193.7 , 0 );
setMoveKey( spep_8 -3 + 38, 1, 47.3, -194.2 , 0 );
setMoveKey( spep_8 -3 + 40, 1, 49.7, -195.5 , 0 );
setMoveKey( spep_8 -3 + 42, 1, 43.1, -227.7 , 0 );
setMoveKey( spep_8 -3 + 44, 1, 45.2, -196.9 , 0 );
setMoveKey( spep_8 -3 + 46, 1, 48.6, -223.5 , 0 );
setMoveKey( spep_8 -3 + 48, 1, 51.3, -193.6 , 0 );
setMoveKey( spep_8 -3 + 50, 1, 48.6, -204.7 , 0 );
setMoveKey( spep_8 -3 + 52, 1, 46, -220.8 , 0 );
setMoveKey( spep_8 -3 + 54, 1, 47.4, -213.4 , 0 );
setMoveKey( spep_8 -3 + 56, 1, 48.9, -211.1 , 0 );
setMoveKey( spep_8 -3 + 58, 1, 49.7, -217 , 0 );
setMoveKey( spep_8 -3 + 60, 1, 50.6, -225.5 , 0 );
setMoveKey( spep_8 -3 + 62, 1, 49.1, -222.3 , 0 );
setMoveKey( spep_8 -3 + 64, 1, 47.7, -219.2 , 0 );
setMoveKey( spep_8 -3 + 66, 1, 46.3, -216 , 0 );
setMoveKey( spep_8 -3 + 86, 1, 46.3, -216 , 0 );

setScaleKey( spep_8 + 0, 1, 2.52, 2.52 );
setScaleKey( spep_8 -3 + 86, 1, 2.52, 2.52 );

setRotateKey( spep_8 + 0, 1, 36.7 );
setRotateKey( spep_8 -3 + 11, 1, 36.7 );
setRotateKey( spep_8 -3 + 12, 1, 81.5 );
setRotateKey( spep_8 -3 + 19, 1, 81.5 );
setRotateKey( spep_8 -3 + 20, 1, 36.7 );
setRotateKey( spep_8 -3 + 86, 1, 36.7 );

-- ** 音 ** --
--敵地面落ちる
SE024 = playSeVer2( spep_8 + 4, 1011, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_8 + 8, 1008, "", 0, 0, 0, -1);

--着地
SE026 = playSeVer2( spep_8 + 38, 1014, "",spep_8 + 68, 0, 12, -1);
setSeVolumeByWorkId( spep_8 + 38, SE026, 79 );
SE027 = playSeVer2( spep_8 + 38, 1190, "",spep_8 + 62, 0, 12, -1);
setSeVolumeByWorkId( spep_8 + 38, SE027, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 84 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 84;


------------------------------------------------------
-- 敵をつかんで持ち上げた後床に叩きつける	(212F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_14r, 0x100, -1, 0, 0, 0 );  --敵をつかんで持ち上げた後床に叩きつける	ef_009
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 242, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_9 + 242, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 242, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 242, finish_f, 255 );

finish_b = entryEffect( spep_9 + 0, SP_15, 0x80, -1, 0, 0, 0 );  --敵をつかんで持ち上げた後床に叩きつける	ef_009_b
setEffMoveKey( spep_9 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 242, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 242, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 242, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 242, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 -3 + 136, 1, 0 );
changeAnime( spep_9 + 0, 1, 106 );

setMoveKey( spep_9 + 0, 1, 50.5, -254 , 0 );
setMoveKey( spep_9 + 1, 1, 50.5, -253.9 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 50.5, -253.9 , 0 );
setMoveKey( spep_9 -3 + 35, 1, 50.5, -253.9 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 50.7, -254.2 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 50.7, -254.2 , 0 );
setMoveKey( spep_9 -3 + 45, 1, 50.7, -254.2 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 50.7, -178.5 , 0 );
setMoveKey( spep_9 -3 + 47, 1, 50.7, -178.5 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 50.7, -177.1 , 0 );
setMoveKey( spep_9 -3 + 49, 1, 50.7, -177.1 , 0 );
setMoveKey( spep_9 -3 + 50, 1, 50.7, -177.1 , 0 );
setMoveKey( spep_9 -3 + 51, 1, 50.7, -177.1 , 0 );
setMoveKey( spep_9 -3 + 52, 1, 50.7, -174.2 , 0 );
setMoveKey( spep_9 -3 + 53, 1, 50.7, -174.2 , 0 );
setMoveKey( spep_9 -3 + 54, 1, 50.7, -174.2 , 0 );
setMoveKey( spep_9 -3 + 55, 1, 50.7, -174.2 , 0 );
setMoveKey( spep_9 -3 + 56, 1, 50.7, -171.3 , 0 );
setMoveKey( spep_9 -3 + 57, 1, 50.7, -171.3 , 0 );
setMoveKey( spep_9 -3 + 58, 1, 50.7, -171.3 , 0 );
setMoveKey( spep_9 -3 + 59, 1, 50.7, -171.3 , 0 );
setMoveKey( spep_9 -3 + 60, 1, 50.7, -168.4 , 0 );
setMoveKey( spep_9 -3 + 61, 1, 50.7, -168.4 , 0 );
setMoveKey( spep_9 -3 + 62, 1, 50.7, -168.4 , 0 );
setMoveKey( spep_9 -3 + 63, 1, 50.7, -168.4 , 0 );
setMoveKey( spep_9 -3 + 64, 1, 50.7, -165.5 , 0 );
setMoveKey( spep_9 -3 + 65, 1, 50.7, -165.5 , 0 );
setMoveKey( spep_9 -3 + 66, 1, 50.7, -165.5 , 0 );
setMoveKey( spep_9 -3 + 67, 1, 50.7, -165.5 , 0 );
setMoveKey( spep_9 -3 + 68, 1, 50.7, -162.6 , 0 );
setMoveKey( spep_9 -3 + 69, 1, 50.7, -162.6 , 0 );
setMoveKey( spep_9 -3 + 70, 1, 50.7, -162.6 , 0 );
setMoveKey( spep_9 -3 + 71, 1, 50.7, -162.6 , 0 );
setMoveKey( spep_9 -3 + 72, 1, 50.7, -159.7 , 0 );
setMoveKey( spep_9 -3 + 73, 1, 50.7, -159.7 , 0 );
setMoveKey( spep_9 -3 + 74, 1, 50.7, -159.7 , 0 );
setMoveKey( spep_9 -3 + 75, 1, 50.7, -159.7 , 0 );
setMoveKey( spep_9 -3 + 76, 1, 10.6, 258.4 , 0 );
setMoveKey( spep_9 -3 + 77, 1, 10.6, 258.4 , 0 );
setMoveKey( spep_9 -3 + 78, 1, 10.6, 258.4 , 0 );
setMoveKey( spep_9 -3 + 79, 1, 10.6, 258.4 , 0 );
setMoveKey( spep_9 -3 + 80, 1, 9.5, 258.7 , 0 );
setMoveKey( spep_9 -3 + 81, 1, 9.5, 258.7 , 0 );
setMoveKey( spep_9 -3 + 82, 1, 9.5, 258.7 , 0 );
setMoveKey( spep_9 -3 + 83, 1, 9.5, 258.7 , 0 );
setMoveKey( spep_9 -3 + 84, 1, 8.4, 259 , 0 );
setMoveKey( spep_9 -3 + 85, 1, 8.4, 259 , 0 );
setMoveKey( spep_9 -3 + 86, 1, 8.4, 259 , 0 );
setMoveKey( spep_9 -3 + 87, 1, 8.4, 259 , 0 );
setMoveKey( spep_9 -3 + 88, 1, 7.3, 259.3 , 0 );
setMoveKey( spep_9 -3 + 89, 1, 7.3, 259.3 , 0 );
setMoveKey( spep_9 -3 + 90, 1, 7.3, 259.3 , 0 );
setMoveKey( spep_9 -3 + 91, 1, 7.3, 259.3 , 0 );
setMoveKey( spep_9 -3 + 92, 1, 6.2, 259.7 , 0 );
setMoveKey( spep_9 -3 + 93, 1, 6.2, 259.7 , 0 );
setMoveKey( spep_9 -3 + 94, 1, 6.2, 259.7 , 0 );
setMoveKey( spep_9 -3 + 95, 1, 6.2, 259.7 , 0 );
setMoveKey( spep_9 -3 + 96, 1, 5.1, 260 , 0 );
setMoveKey( spep_9 -3 + 97, 1, 5.1, 260 , 0 );
setMoveKey( spep_9 -3 + 98, 1, 5.1, 260 , 0 );
setMoveKey( spep_9 -3 + 99, 1, 5.1, 260 , 0 );
setMoveKey( spep_9 -3 + 100, 1, 4, 260.3 , 0 );
setMoveKey( spep_9 -3 + 101, 1, 4, 260.3 , 0 );
setMoveKey( spep_9 -3 + 102, 1, 4, 260.3 , 0 );
setMoveKey( spep_9 -3 + 103, 1, 4, 260.3 , 0 );
setMoveKey( spep_9 -3 + 104, 1, 2.9, 260.6 , 0 );
setMoveKey( spep_9 -3 + 105, 1, 2.9, 260.6 , 0 );
setMoveKey( spep_9 -3 + 106, 1, 2.9, 260.6 , 0 );
setMoveKey( spep_9 -3 + 107, 1, 2.9, 260.6 , 0 );
setMoveKey( spep_9 -3 + 108, 1, 1.8, 260.9 , 0 );
setMoveKey( spep_9 -3 + 109, 1, 1.8, 260.9 , 0 );
setMoveKey( spep_9 -3 + 110, 1, 1.8, 260.9 , 0 );
setMoveKey( spep_9 -3 + 111, 1, 1.8, 260.9 , 0 );
setMoveKey( spep_9 -3 + 112, 1, 0.7, 261.2 , 0 );
setMoveKey( spep_9 -3 + 113, 1, 0.7, 261.2 , 0 );
setMoveKey( spep_9 -3 + 114, 1, 0.7, 261.2 , 0 );
setMoveKey( spep_9 -3 + 115, 1, 0.7, 261.2 , 0 );
setMoveKey( spep_9 -3 + 116, 1, 11.1, 199.6 , 0 );
setMoveKey( spep_9 -3 + 117, 1, 11.1, 199.6 , 0 );
setMoveKey( spep_9 -3 + 118, 1, 11.1, 199.6 , 0 );
setMoveKey( spep_9 -3 + 119, 1, 11.1, 199.6 , 0 );
setMoveKey( spep_9 -3 + 120, 1, 63.5, -172.7 , 0 );
setMoveKey( spep_9 -3 + 121, 1, 63.5, -172.7 , 0 );
setMoveKey( spep_9 -3 + 122, 1, 51.9, -292.8 , 0 );
setMoveKey( spep_9 -3 + 123, 1, 51.9, -292.8 , 0 );
setMoveKey( spep_9 -3 + 124, 1, 68.6, -190.5 , 0 );
setMoveKey( spep_9 -3 + 125, 1, 68.6, -190.5 , 0 );
setMoveKey( spep_9 -3 + 126, 1, 59.4, -271.2 , 0 );
setMoveKey( spep_9 -3 + 127, 1, 59.4, -271.2 , 0 );
setMoveKey( spep_9 -3 + 128, 1, 68.1, -176 , 0 );
setMoveKey( spep_9 -3 + 129, 1, 68.1, -176 , 0 );
setMoveKey( spep_9 -3 + 130, 1, 52, -255.3 , 0 );
setMoveKey( spep_9 -3 + 131, 1, 52, -255.3 , 0 );
setMoveKey( spep_9 -3 + 132, 1, 43.6, -429.8 , 0 );
setMoveKey( spep_9 -3 + 133, 1, 43.6, -429.8 , 0 );
setMoveKey( spep_9 -3 + 134, 1, 47.1, -484 , 0 );
setMoveKey( spep_9 -3 + 135, 1, 47.1, -484 , 0 );
setMoveKey( spep_9 -3 + 136, 1, 47.1, -484 , 0 );
--[[setMoveKey( spep_9 -3 + 136, 1, 42, -247.3 , 0 );
setMoveKey( spep_9 -3 + 137, 1, 42, -247.3 , 0 );
setMoveKey( spep_9 -3 + 138, 1, 61, -225.6 , 0 );
setMoveKey( spep_9 -3 + 139, 1, 61, -225.6 , 0 );
setMoveKey( spep_9 -3 + 140, 1, 50.2, -249.1 , 0 );
setMoveKey( spep_9 -3 + 141, 1, 50.2, -249.1 , 0 );
setMoveKey( spep_9 -3 + 142, 1, 47.8, -224.9 , 0 );
setMoveKey( spep_9 -3 + 143, 1, 47.8, -224.9 , 0 );
setMoveKey( spep_9 -3 + 144, 1, 49.1, -258.9 , 0 );
setMoveKey( spep_9 -3 + 145, 1, 49.1, -258.9 , 0 );
setMoveKey( spep_9 -3 + 146, 1, 57.9, -230.6 , 0 );
setMoveKey( spep_9 -3 + 147, 1, 57.9, -230.6 , 0 );
setMoveKey( spep_9 -3 + 148, 1, 55.1, -276.3 , 0 );
setMoveKey( spep_9 -3 + 149, 1, 55.1, -276.3 , 0 );
setMoveKey( spep_9 -3 + 150, 1, 50.2, -230 , 0 );
setMoveKey( spep_9 -3 + 151, 1, 50.2, -230 , 0 );
setMoveKey( spep_9 -3 + 152, 1, 48, -277 , 0 );
setMoveKey( spep_9 -3 + 153, 1, 48, -277 , 0 );
setMoveKey( spep_9 -3 + 154, 1, 45.4, -221.2 , 0 );
setMoveKey( spep_9 -3 + 155, 1, 45.4, -221.2 , 0 );
setMoveKey( spep_9 -3 + 156, 1, 50.6, -264.6 , 0 );
setMoveKey( spep_9 -3 + 157, 1, 50.6, -264.6 , 0 );
setMoveKey( spep_9 -3 + 158, 1, 51, -232.7 , 0 );
setMoveKey( spep_9 -3 + 159, 1, 51, -232.7 , 0 );
setMoveKey( spep_9 -3 + 160, 1, 55.9, -271.9 , 0 );
setMoveKey( spep_9 -3 + 161, 1, 55.9, -271.9 , 0 );
setMoveKey( spep_9 -3 + 162, 1, 46.1, -232.6 , 0 );
setMoveKey( spep_9 -3 + 163, 1, 46.1, -232.6 , 0 );
setMoveKey( spep_9 -3 + 164, 1, 48.6, -265 , 0 );
setMoveKey( spep_9 -3 + 165, 1, 48.6, -265 , 0 );
setMoveKey( spep_9 -3 + 166, 1, 46.2, -228.6 , 0 );
setMoveKey( spep_9 -3 + 167, 1, 46.2, -228.6 , 0 );
setMoveKey( spep_9 -3 + 168, 1, 54.3, -263.7 , 0 );
setMoveKey( spep_9 -3 + 169, 1, 54.3, -263.7 , 0 );
setMoveKey( spep_9 -3 + 170, 1, 45.5, -230.2 , 0 );
setMoveKey( spep_9 -3 + 171, 1, 45.5, -230.2 , 0 );
setMoveKey( spep_9 -3 + 172, 1, 48, -271.9 , 0 );
setMoveKey( spep_9 -3 + 173, 1, 48, -271.9 , 0 );
setMoveKey( spep_9 -3 + 174, 1, 46.2, -235.7 , 0 );
setMoveKey( spep_9 -3 + 175, 1, 46.2, -235.7 , 0 );
setMoveKey( spep_9 -3 + 176, 1, 51, -264.7 , 0 );
setMoveKey( spep_9 -3 + 177, 1, 51, -264.7 , 0 );
setMoveKey( spep_9 -3 + 178, 1, 55.6, -237.8 , 0 );
setMoveKey( spep_9 -3 + 179, 1, 55.6, -237.8 , 0 );
setMoveKey( spep_9 -3 + 180, 1, 45.8, -198.2 , 0 );
setMoveKey( spep_9 -3 + 181, 1, 45.8, -198.2 , 0 );
setMoveKey( spep_9 -3 + 182, 1, 51.7, -155.7 , 0 );
setMoveKey( spep_9 -3 + 183, 1, 51.7, -155.7 , 0 );
setMoveKey( spep_9 -3 + 184, 1, 48.4, -195.4 , 0 );
setMoveKey( spep_9 -3 + 185, 1, 48.4, -195.4 , 0 );
setMoveKey( spep_9 -3 + 186, 1, 47.4, -154.4 , 0 );
setMoveKey( spep_9 -3 + 187, 1, 47.4, -154.4 , 0 );
setMoveKey( spep_9 -3 + 188, 1, 49.1, -191 , 0 );
setMoveKey( spep_9 -3 + 189, 1, 49.1, -191 , 0 );
setMoveKey( spep_9 -3 + 190, 1, 44.9, -149.8 , 0 );
setMoveKey( spep_9 -3 + 191, 1, 44.9, -149.8 , 0 );
setMoveKey( spep_9 -3 + 192, 1, 54.9, -188.3 , 0 );
setMoveKey( spep_9 -3 + 193, 1, 54.9, -188.3 , 0 );
setMoveKey( spep_9 -3 + 194, 1, 43.6, -156.9 , 0 );
setMoveKey( spep_9 -3 + 195, 1, 43.6, -156.9 , 0 );
setMoveKey( spep_9 -3 + 196, 1, 48.7, -181.2 , 0 );
setMoveKey( spep_9 -3 + 197, 1, 48.7, -181.2 , 0 );
setMoveKey( spep_9 -3 + 198, 1, 47.6, -140.1 , 0 );
setMoveKey( spep_9 -3 + 199, 1, 47.6, -140.1 , 0 );
setMoveKey( spep_9 -3 + 200, 1, 42.1, -149.7 , 0 );
setMoveKey( spep_9 -3 + 201, 1, 42.1, -149.7 , 0 );
setMoveKey( spep_9 -3 + 202, 1, 56, -202.1 , 0 );
setMoveKey( spep_9 -3 + 203, 1, 56, -202.1 , 0 );
setMoveKey( spep_9 -3 + 204, 1, 39, -123.1 , 0 );
setMoveKey( spep_9 -3 + 205, 1, 39, -123.1 , 0 );
setMoveKey( spep_9 -3 + 206, 1, 38.7, -191.7 , 0 );
setMoveKey( spep_9 -3 + 207, 1, 38.7, -191.7 , 0 );
setMoveKey( spep_9 -3 + 208, 1, 46.9, -143.5 , 0 );
setMoveKey( spep_9 -3 + 209, 1, 46.9, -143.5 , 0 );
setMoveKey( spep_9 -3 + 210, 1, 59.2, -181.6 , 0 );
setMoveKey( spep_9 -3 + 211, 1, 59.2, -181.6 , 0 );
setMoveKey( spep_9 -3 + 212, 1, 45.3, -135.3 , 0 );
setMoveKey( spep_9 -3 + 213, 1, 45.3, -135.3 , 0 );
setMoveKey( spep_9 -3 + 214, 1, 59.2, -181.6 , 0 );
setMoveKey( spep_9 -3 + 215, 1, 59.2, -181.6 , 0 );]]

setScaleKey( spep_9 + 0, 1, 1.05, 1.05 );
setScaleKey( spep_9 -3 + 136, 1, 1.05, 1.05 );
--setScaleKey( spep_9 -3 + 215, 1, 1.05, 1.05 );

setRotateKey( spep_9 + 0, 1, 6.8 );
setRotateKey( spep_9 -3 + 74, 1, 6.8 );
setRotateKey( spep_9 -3 + 75, 1, 6.8 );
setRotateKey( spep_9 -3 + 76, 1, 8.1 );
setRotateKey( spep_9 -3 + 77, 1, 8.1 );
setRotateKey( spep_9 -3 + 78, 1, 8.1 );
setRotateKey( spep_9 -3 + 79, 1, 8.1 );
setRotateKey( spep_9 -3 + 80, 1, 7.9 );
setRotateKey( spep_9 -3 + 81, 1, 7.9 );
setRotateKey( spep_9 -3 + 82, 1, 7.9 );
setRotateKey( spep_9 -3 + 83, 1, 7.9 );
setRotateKey( spep_9 -3 + 84, 1, 7.6 );
setRotateKey( spep_9 -3 + 85, 1, 7.6 );
setRotateKey( spep_9 -3 + 86, 1, 7.6 );
setRotateKey( spep_9 -3 + 87, 1, 7.6 );
setRotateKey( spep_9 -3 + 88, 1, 7.4 );
setRotateKey( spep_9 -3 + 89, 1, 7.4 );
setRotateKey( spep_9 -3 + 90, 1, 7.4 );
setRotateKey( spep_9 -3 + 91, 1, 7.4 );
setRotateKey( spep_9 -3 + 92, 1, 7.2 );
setRotateKey( spep_9 -3 + 93, 1, 7.2 );
setRotateKey( spep_9 -3 + 94, 1, 7.2 );
setRotateKey( spep_9 -3 + 95, 1, 7.2 );
setRotateKey( spep_9 -3 + 96, 1, 6.9 );
setRotateKey( spep_9 -3 + 97, 1, 6.9 );
setRotateKey( spep_9 -3 + 98, 1, 6.9 );
setRotateKey( spep_9 -3 + 99, 1, 6.9 );
setRotateKey( spep_9 -3 + 100, 1, 6.7 );
setRotateKey( spep_9 -3 + 101, 1, 6.7 );
setRotateKey( spep_9 -3 + 102, 1, 6.7 );
setRotateKey( spep_9 -3 + 103, 1, 6.7 );
setRotateKey( spep_9 -3 + 104, 1, 6.5 );
setRotateKey( spep_9 -3 + 105, 1, 6.5 );
setRotateKey( spep_9 -3 + 106, 1, 6.5 );
setRotateKey( spep_9 -3 + 107, 1, 6.5 );
setRotateKey( spep_9 -3 + 108, 1, 6.3 );
setRotateKey( spep_9 -3 + 109, 1, 6.3 );
setRotateKey( spep_9 -3 + 110, 1, 6.3 );
setRotateKey( spep_9 -3 + 111, 1, 6.3 );
setRotateKey( spep_9 -3 + 112, 1, 6 );
setRotateKey( spep_9 -3 + 113, 1, 6 );
setRotateKey( spep_9 -3 + 114, 1, 6 );
setRotateKey( spep_9 -3 + 115, 1, 6 );
setRotateKey( spep_9 -3 + 116, 1, 8.2 );
setRotateKey( spep_9 -3 + 118, 1, 8.2 );
setRotateKey( spep_9 -3 + 119, 1, 8.2 );
setRotateKey( spep_9 -3 + 120, 1, 27.4 );
setRotateKey( spep_9 -3 + 134, 1, 27.4 );
setRotateKey( spep_9 -3 + 135, 1, 27.4 );
setRotateKey( spep_9 -3 + 136, 1, 27.4 );
--setRotateKey( spep_9 -3 + 136, 1, 6.8 );
--setRotateKey( spep_9 -3 + 215, 1, 6.8 );

-- ** 音 ** --
--敵掴む
SE028 = playSeVer2( spep_9 + 24, 1153, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_9 + 24, 1006, "", 0, 0, 0, -1);

--敵持ち上げる
SE030 = playSeVer2( spep_9 + 60, 1116, "",spep_9 + 104, 0, 20, -1);
SE031 = playSeVer2( spep_9 + 64, 1004, "", 0, 0, 0, -1);

--叩きつける
SE032 = playSeVer2( spep_9 + 104, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_9 + 106, 1003, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_9 + 114, 1159, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_9 + 116, 1068, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_9 + 118, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 242 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 120 );
endPhase( spep_9 + 232 );


end