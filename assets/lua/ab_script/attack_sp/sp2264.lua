--1023110:URトランクス(青年期)_フラッシュブレード
--sp_effect_b2_00047
--sp2264

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
SP_01 = 158401; --敵と対峙する(味方側)   ef_001
SP_02 = 158402; --敵と対峙する(味方側)   ef_001_back
SP_03 = 158405; --前髪を直すトランクス    ef_002
SP_04 = 158406; --画面に向かってダッシュしてくる   ef_003
SP_05 = 158407; --打撃で敵を飛ばす（味方側） ef_004
SP_06 = 158408; --打撃で敵を飛ばす（味方側） ef_004_back
SP_07 = 158411; --敵に向かって踏み込む（味方側）   ef_005
SP_08 = 158413; --敵に向かって飛ぶ（味方側） ef_006
SP_09 = 158414; --敵に向かって飛ぶ（味方側） ef_006_back
SP_10 = 158417; --剣を抜く  ef_007
SP_11 = 158418; --斬撃ラッシュ（味方側）   ef_008
SP_12 = 158420; --斬撃ラッシュ終了（味方側） ef_009
SP_13 = 158421; --斬撃ラッシュ終了（味方側） ef_009_back

--敵側
SP_01r = 158403;    --敵と対峙する(敵側)    ef_001_r
SP_02r = 158404;    --敵と対峙する(敵側)    ef_001_r_back
SP_05r = 158409;    --打撃で敵を飛ばす（敵側）  ef_004_r
SP_06r = 158410;    --打撃で敵を飛ばす（敵側）  ef_004_r_back
SP_07r = 158412;    --敵に向かって踏み込む（敵側）    ef_005_r
SP_08r = 158415;    --敵に向かって飛ぶ（敵側）  ef_006_r
SP_09r = 158416;    --敵に向かって飛ぶ（敵側）  ef_006_r_back
SP_11r = 158419;    --斬撃ラッシュ（敵側）    ef_008_r
SP_12r = 158422;    --斬撃ラッシュ終了（敵側）  ef_009_r
SP_13r = 158423;    --斬撃ラッシュ終了（敵側）  ef_009_r_back

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 敵と対峙する(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 66, 0x100, -1, 0, 0, 0 );  --敵と対峙する   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 66, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 66 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 66, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 66, 0x80, -1, 0, 0, 0 );  --敵と対峙する   ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 66, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 66 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 66, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 69, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 220.9, -34.8 , 0 );
setMoveKey( spep_0 + 1, 1, 221.8, -34.7 , 0 );
setMoveKey( spep_0 + 2, 1, 222.8, -34.7 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 223.8, -34.7 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 223.8, -34.7 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 224.7, -34.6 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 224.7, -34.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 225.6, -34.6 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 226.5, -34.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 227.4, -34.5 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 228.3, -34.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 229.1, -34.4 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 229.9, -34.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 230.6, -34.4 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 231.4, -34.3 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 232.1, -34.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 232.8, -34.3 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 233.5, -34.2 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 234.2, -34.2 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 234.8, -34.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 235.4, -34.2 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 236, -34.1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 236.6, -34.1 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 237.1, -34.1 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 237.7, -34.1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 238.2, -34 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 238.6, -34 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 239.1, -34 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 239.5, -34 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 239.9, -34 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 240.3, -33.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 240.7, -33.9 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 241, -33.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 241.3, -33.9 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 241.6, -33.9 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 241.9, -33.9 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 242.1, -33.9 , 0 );
setMoveKey( spep_0 -3 + 69, 1, 242.1, -33.9 , 0 );

setScaleKey( spep_0 + 0, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 1, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 2, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 3, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 4, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 5, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 6, 1, 1.29, 1.29 );
setScaleKey( spep_0 -3 + 69, 1, 1.29, 1.29 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 69, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 +66 +96 + 38, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 21 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 66;


------------------------------------------------------
-- 前髪を直すトランクス(96F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_1 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --前髪を直すトランクス    ef_002
setEffMoveKey( spep_1 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, faceup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, faceup, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, faceup, 0 );
setEffRotateKey( spep_1 + 96, faceup, 0 );
setEffAlphaKey( spep_1 + 0, faceup, 255 );
setEffAlphaKey( spep_1 + 96 -1, faceup, 255 );
setEffAlphaKey( spep_1 + 96, faceup, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--前髪触る
SE004 = playSeVer2( spep_1 + 24, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE004, 160 );
setPitch( spep_1 + 24, SE004, 200 );
setTimeStretch( SE004, 1.13, 30, 4 );
setBandpassFilter   ( spep_1 + 24, SE004, 600, 24000 );

--突っ込んでくる
SE005 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 90, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;


------------------------------------------------------
-- 画面に向かってダッシュしてくる(60F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_2 + 0, SP_04, 60 -1, 0x100, -1, 0, 0, 0 );  --画面に向かってダッシュしてくる ef_003
setEffMoveKey( spep_2 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60 -1, dash, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60 -1, dash, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash, 0 );
setEffRotateKey( spep_2 + 60 -1, dash, 0 );
setEffAlphaKey( spep_2 + 0, dash, 255 );
setEffAlphaKey( spep_2 + 60 -1 -1, dash, 255 );
setEffAlphaKey( spep_2 + 60 -1, dash, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
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

-- ** 音 ** --
--パンチ
SE007 = playSeVer2( spep_2 + 50, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 58, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 60 -1;


------------------------------------------------------
-- 打撃で敵を飛ばす(48F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_3 + 0, SP_05, 48, 0x100, -1, 0, 0, 0 );  --打撃で敵を飛ばす ef_004
setEffMoveKey( spep_3 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 48, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 48 -1, punch_f, 255 );
setEffAlphaKey( spep_3 + 48, punch_f, 0 );

punch_b = entryEffectLife( spep_3 + 0, SP_06, 48, 0x80, -1, 0, 0, 0 );  --打撃で敵を飛ばす  ef_004_back
setEffMoveKey( spep_3 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 48, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 48 -1, punch_b, 255 );
setEffAlphaKey( spep_3 + 48, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 11, 1, 0 );
changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 + 1, 1, 107 );

setMoveKey( spep_3 + 0, 1, 43.9, -200.9 , 0 );
setMoveKey( spep_3 + 1, 1, 126.9, 11 , 0 );
setMoveKey( spep_3 + 2, 1, 79.4, -12 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 112.5, -34.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 163.6, -69.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 743.4, -8.1 , 0 );
setMoveKey( spep_3 -3 + 11, 1, 743.4, -8.1 , 0 );

setScaleKey( spep_3 +    0, 1, 3.641, 3.641 );
setScaleKey( spep_3 +    1, 1, 1.296, 1.296 );
setScaleKey( spep_3 +    2, 1, 1.344, 1.344 );
setScaleKey( spep_3 -3 + 6, 1, 1.476, 1.476 );
setScaleKey( spep_3 -3 + 8, 1, 1.668, 1.668 );
setScaleKey( spep_3 -3 + 10, 1, 5.196, 5.196 );
setScaleKey( spep_3 -3 + 11, 1, 5.196, 5.196 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 11, 1, 0 );

-- ** 音 ** --
--地面蹴る
SE009 = playSeVer2( spep_3 + 44, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE009, 135 );
SE010 = playSeVer2( spep_3 + 44, 1192, "",spep_3 +48 + 18, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 44, SE010, 180 );
SE011 = playSeVer2( spep_3 + 46, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 46, SE011, 143 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 48 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 48;


------------------------------------------------------
-- 敵に向かって踏み込む(26F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_4 + 0, SP_07, 26, 0x100, -1, 0, 0, 0 );  --敵に向かって踏み込む  ef_005
setEffMoveKey( spep_4 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_4 + 26, move, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_4 + 26, move, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move, 0 );
setEffRotateKey( spep_4 + 26, move, 0 );
setEffAlphaKey( spep_4 + 0, move, 255 );
setEffAlphaKey( spep_4 + 26 -1, move, 255 );
setEffAlphaKey( spep_4 + 26, move, 0 );

-- ** 音 ** --
--ジャンプ
SE012 = playSeVer2( spep_4 + 6, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 6, SE012, 79 );
SE013 = playSeVer2( spep_4 + 6, 1117, "",spep_4 +26 +40 + 8, 0, 4, -1);
SE014 = playSeVer2( spep_4 + 6, 1003, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 26 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 26;


------------------------------------------------------
-- 敵に向かって飛ぶ(40F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
jump_f = entryEffectLife( spep_5 + 0, SP_08, 40, 0x100, -1, 0, 0, 0 );  --敵に向かって飛ぶ  ef_006
setEffMoveKey( spep_5 + 0, jump_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40, jump_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, jump_f, 0 );
setEffRotateKey( spep_5 + 40, jump_f, 0 );
setEffAlphaKey( spep_5 + 0, jump_f, 255 );
setEffAlphaKey( spep_5 + 40 -1, jump_f, 255 );
setEffAlphaKey( spep_5 + 40, jump_f, 0 );

jump_b = entryEffectLife( spep_5 + 0, SP_09, 40, 0x80, -1, 0, 0, 0 );  --敵に向かって飛ぶ   ef_006_back
setEffMoveKey( spep_5 + 0, jump_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40, jump_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, jump_b, 0 );
setEffRotateKey( spep_5 + 40, jump_b, 0 );
setEffAlphaKey( spep_5 + 0, jump_b, 255 );
setEffAlphaKey( spep_5 + 40 -1, jump_b, 255 );
setEffAlphaKey( spep_5 + 40, jump_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 43, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 753.2, 760.1 , 0 );
setMoveKey( spep_5 + 1, 1, 655.2, 658.9 , 0 );
setMoveKey( spep_5 + 2, 1, 555.3, 557.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 453.5, 456.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 350, 355.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 244.8, 254.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 138.1, 153.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 132.5, 144.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 127.6, 135.5 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 123.1, 126.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 119.1, 117.8 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 115.5, 108.9 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 112.3, 100 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 109.6, 91.2 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 107.1, 82.3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 105.1, 73.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 103.4, 64.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 102, 55.8 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 100.8, 46.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 100, 38.1 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 99.2, 29.3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 98.3, 20.4 , 0 );
setMoveKey( spep_5 -3 + 43, 1, 98.3, 20.4 , 0 );

setScaleKey( spep_5 + 0, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 1, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 2, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 6, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 8, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 10, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 12, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 14, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_5 -3 + 22, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 24, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 26, 1, 1.87, 1.87 );
setScaleKey( spep_5 -3 + 28, 1, 1.85, 1.85 );
setScaleKey( spep_5 -3 + 30, 1, 1.82, 1.82 );
setScaleKey( spep_5 -3 + 32, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 34, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 36, 1, 1.69, 1.69 );
setScaleKey( spep_5 -3 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_5 -3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_5 -3 + 42, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 43, 1, 1.51, 1.51 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 1, 1, -0.1 );
setRotateKey( spep_5 + 2, 1, -0.5 );
setRotateKey( spep_5 -3 + 6, 1, -1.2 );
setRotateKey( spep_5 -3 + 8, 1, -2 );
setRotateKey( spep_5 -3 + 10, 1, -3.2 );
setRotateKey( spep_5 -3 + 12, 1, -4.6 );
setRotateKey( spep_5 -3 + 14, 1, -5.2 );
setRotateKey( spep_5 -3 + 16, 1, -5.7 );
setRotateKey( spep_5 -3 + 18, 1, -6.2 );
setRotateKey( spep_5 -3 + 20, 1, -6.6 );
setRotateKey( spep_5 -3 + 22, 1, -7 );
setRotateKey( spep_5 -3 + 24, 1, -7.4 );
setRotateKey( spep_5 -3 + 26, 1, -7.7 );
setRotateKey( spep_5 -3 + 28, 1, -7.9 );
setRotateKey( spep_5 -3 + 30, 1, -8.1 );
setRotateKey( spep_5 -3 + 32, 1, -8.3 );
setRotateKey( spep_5 -3 + 34, 1, -8.4 );
setRotateKey( spep_5 -3 + 36, 1, -8.5 );
setRotateKey( spep_5 -3 + 43, 1, -8.5 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 40;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_6 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_6, SE_05);
    speff = entryEffect( spep_6, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_6, SE_05);
	speff = entryEffect( spep_6, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_6, SE_05);
	speff = entryEffect( spep_6, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_6 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;


------------------------------------------------------
-- 剣を抜く(66F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
battou = entryEffectLife( spep_7 + 0, SP_10, 66, 0x100, -1, 0, 0, 0 );  --剣を抜く  ef_007
setEffMoveKey( spep_7 + 0, battou, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, battou, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, battou, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, battou, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, battou, 0 );
setEffRotateKey( spep_7 + 66, battou, 0 );
setEffAlphaKey( spep_7 + 0, battou, 255 );
setEffAlphaKey( spep_7 + 66 -1, battou, 255 );
setEffAlphaKey( spep_7 + 66, battou, 0 );

-- ** 音 ** --
--剣抜く
SE016 = playSeVer2( spep_7 + 8, 1061, "",spep_7 + 40, 0, 12, -1);
setSeVolumeByWorkId( spep_7 + 8, SE016, 68 );
SE017 = playSeVer2( spep_7 + 8, 6, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 8, SE017, 130 );
SE018 = playSeVer2( spep_7 + 8, 1307, "",spep_7 +66 + 18, 0, 34, -1);

--剣撃
SE019 = playSeVer2( spep_7 + 62, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 62, SE019, 72 );
SE020 = playSeVer2( spep_7 + 62, 1142, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 66;


------------------------------------------------------
-- 斬撃ラッシュ(176F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
slash = entryEffectLife( spep_8 + 0, SP_11, 176, 0x100, -1, 0, 0, 0 );  --斬撃ラッシュ    ef_008
setEffMoveKey( spep_8 + 0, slash, 0, 0 , 0 );
setEffMoveKey( spep_8 + 176, slash, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, slash, 1.0, 1.0 );
setEffScaleKey( spep_8 + 176, slash, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, slash, 0 );
setEffRotateKey( spep_8 + 176, slash, 0 );
setEffAlphaKey( spep_8 + 0, slash, 255 );
setEffAlphaKey( spep_8 + 176 -1, slash, 255 );
setEffAlphaKey( spep_8 + 176, slash, 0 );

-- ** 音 ** --
--連続斬り
SE021 = playSeVer2( spep_8 + 32, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 32, SE021, 61 );
SE022 = playSeVer2( spep_8 + 32, 1032, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_8 + 32, 1109, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_8 + 42, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 42, SE024, 119 );
SE025 = playSeVer2( spep_8 + 50, 1032, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_8 + 50, 1109, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_8 + 56, 8, "", 0, 0, 0, -1);
setPitch( spep_8 + 56, SE027, -600 );
setTimeStretch( SE027, 0.6, 30, 4 );

--ラスト斬り
SE028 = playSeVer2( spep_8 + 100, 1319, "", 0, 0, 0, 0.7);
SE029 = playSeVer2( spep_8 + 106, 1156, "",spep_8 +176 + 12, 0, 46, -1);
setSeVolumeByWorkId( spep_8 + 106, SE029, 76 );
SE030 = playSeVer2( spep_8 + 106, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 106, SE030, 86 );
SE031 = playSeVer2( spep_8 + 106, 1032, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_8 + 106, 1142, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_8 + 112, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 112, SE033, 71 );
setPitch( spep_8 + 112, SE033, 200 );
setTimeStretch( SE033, 1.13, 30, 4 );

--ラスト剣撃ヒット
SE034 = playSeVer2( spep_8 + 172, 1318, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_8 + 172, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 172, SE035, 66 );
SE036 = playSeVer2( spep_8 + 172, 1172, "",spep_8 +176 + 76, 0, 24, 0.6);
setSeVolumeByWorkId( spep_8 + 172, SE036, 64 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 176;


------------------------------------------------------
-- 斬撃ラッシュ終了(176F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --斬撃ラッシュ終了   ef_009
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 176, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 176, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 176, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 176, finish_f, 255 );

finish_b = entryEffect( spep_9 + 0, SP_13, 0x80, -1, 0, 0, 0 );  --斬撃ラッシュ終了    ef_009_back
setEffMoveKey( spep_9 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 176, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 176, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 176, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 176, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -3 + 179, 1, 0 );
changeAnime( spep_9 + 0, 1, 105 );

setMoveKey( spep_9 + 0, 1, -24.7, -69.5 , 0 );
setMoveKey( spep_9 + 1, 1, -17.2, -35.3 , 0 );
setMoveKey( spep_9 + 2, 1, -9.7, -1.2 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -2.3, 32.9 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 5.2, 67 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -61.1, -15.2 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 77.4, 159.6 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 71.5, -76.6 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 5.2, 66.2 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 5.3, 66 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 5.3, 65.8 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 5.2, 65.6 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 5.2, 65.5 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 5.3, 65.3 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 5.3, 65.1 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 5.2, 64.9 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 5.2, 64.7 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 5.3, 64.5 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 5.3, 64.3 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 5.2, 64.1 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 5.2, 63.9 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 5.3, 63.7 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 5.3, 63.6 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 5.2, 63.4 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 5.2, 63.2 , 0 );
setMoveKey( spep_9 -3 + 50, 1, 5.3, 63 , 0 );
setMoveKey( spep_9 -3 + 52, 1, 5.3, 62.8 , 0 );
setMoveKey( spep_9 -3 + 54, 1, 5.2, 62.6 , 0 );
setMoveKey( spep_9 -3 + 56, 1, 5.2, 62.5 , 0 );
setMoveKey( spep_9 -3 + 58, 1, 5.3, 62.3 , 0 );
setMoveKey( spep_9 -3 + 60, 1, 18.6, 67 , 0 );
setMoveKey( spep_9 -3 + 62, 1, 33, 73.3 , 0 );
setMoveKey( spep_9 -3 + 64, 1, 48.6, 81.2 , 0 );
setMoveKey( spep_9 -3 + 66, 1, 26.5, 36 , 0 );
setMoveKey( spep_9 -3 + 68, 1, 30.5, 39.7 , 0 );
setMoveKey( spep_9 -3 + 70, 1, 20.9, 36.7 , 0 );
setMoveKey( spep_9 -3 + 72, 1, 32, 40.6 , 0 );
setMoveKey( spep_9 -3 + 74, 1, 29.3, 37.5 , 0 );
setMoveKey( spep_9 -3 + 76, 1, 22.7, 37.9 , 0 );
setMoveKey( spep_9 -3 + 78, 1, 30.7, 38.2 , 0 );
setMoveKey( spep_9 -3 + 80, 1, 14, 49.7 , 0 );
setMoveKey( spep_9 -3 + 82, 1, 24.5, 39 , 0 );
setMoveKey( spep_9 -3 + 84, 1, 36.4, 43.1 , 0 );
setMoveKey( spep_9 -3 + 86, 1, 37.2, 43.5 , 0 );
setMoveKey( spep_9 -3 + 88, 1, 26.2, 40.1 , 0 );
setMoveKey( spep_9 -3 + 90, 1, 38.6, 44.3 , 0 );
setMoveKey( spep_9 -3 + 92, 1, 39.4, 44.8 , 0 );
setMoveKey( spep_9 -3 + 94, 1, 19.8, 46.1 , 0 );
setMoveKey( spep_9 -3 + 96, 1, 40.8, 45.6 , 0 );
setMoveKey( spep_9 -3 + 98, 1, 41.6, 46.1 , 0 );
setMoveKey( spep_9 -3 + 100, 1, 29.8, 42.4 , 0 );
setMoveKey( spep_9 -3 + 102, 1, 42.8, 46.5 , 0 );
setMoveKey( spep_9 -3 + 104, 1, 43.3, 46.4 , 0 );
setMoveKey( spep_9 -3 + 106, 1, 41.7, 44.3 , 0 );
setMoveKey( spep_9 -3 + 108, 1, 42.2, 44.2 , 0 );
setMoveKey( spep_9 -3 + 110, 1, 42.6, 44.2 , 0 );
setMoveKey( spep_9 -3 + 112, 1, 43.1, 44.2 , 0 );
setMoveKey( spep_9 -3 + 114, 1, 43.6, 44.1 , 0 );
setMoveKey( spep_9 -3 + 116, 1, 44, 44.1 , 0 );
setMoveKey( spep_9 -3 + 118, 1, 44.5, 44.1 , 0 );
setMoveKey( spep_9 -3 + 120, 1, 45, 44 , 0 );
setMoveKey( spep_9 -3 + 122, 1, 45.5, 43.9 , 0 );
setMoveKey( spep_9 -3 + 124, 1, 45.9, 43.8 , 0 );
setMoveKey( spep_9 -3 + 126, 1, 46.4, 43.8 , 0 );
setMoveKey( spep_9 -3 + 128, 1, 46.9, 43.8 , 0 );
setMoveKey( spep_9 -3 + 130, 1, 47.3, 43.8 , 0 );
setMoveKey( spep_9 -3 + 132, 1, 47.8, 43.7 , 0 );
setMoveKey( spep_9 -3 + 134, 1, 48.3, 43.7 , 0 );
setMoveKey( spep_9 -3 + 136, 1, 48.8, 43.6 , 0 );
setMoveKey( spep_9 -3 + 138, 1, 49.2, 43.6 , 0 );
setMoveKey( spep_9 -3 + 140, 1, 49.7, 43.5 , 0 );
setMoveKey( spep_9 -3 + 142, 1, 50.2, 43.5 , 0 );
setMoveKey( spep_9 -3 + 144, 1, 50.5, 43.4 , 0 );
setMoveKey( spep_9 -3 + 146, 1, 51, 43.4 , 0 );
setMoveKey( spep_9 -3 + 148, 1, 51.5, 43.3 , 0 );
setMoveKey( spep_9 -3 + 150, 1, 52, 43.3 , 0 );
setMoveKey( spep_9 -3 + 152, 1, 52.4, 43.3 , 0 );
setMoveKey( spep_9 -3 + 154, 1, 52.9, 43.2 , 0 );
setMoveKey( spep_9 -3 + 156, 1, 53.4, 43.2 , 0 );
setMoveKey( spep_9 -3 + 158, 1, 53.8, 43.1 , 0 );
setMoveKey( spep_9 -3 + 179, 1, 53.8, 43.1 , 0 );

setScaleKey( spep_9 + 0, 1, 3.88, 3.88 );
setScaleKey( spep_9 + 1, 1, 3.43, 3.43 );
setScaleKey( spep_9 + 2, 1, 2.99, 2.99 );
setScaleKey( spep_9 -3 + 6, 1, 2.54, 2.54 );
setScaleKey( spep_9 -3 + 8, 1, 2.09, 2.09 );
setScaleKey( spep_9 -3 + 10, 1, 2.08, 2.08 );
setScaleKey( spep_9 -3 + 12, 1, 2.07, 2.07 );
setScaleKey( spep_9 -3 + 14, 1, 2.07, 2.07 );
setScaleKey( spep_9 -3 + 16, 1, 2.06, 2.06 );
setScaleKey( spep_9 -3 + 18, 1, 2.05, 2.05 );
setScaleKey( spep_9 -3 + 20, 1, 2.04, 2.04 );
setScaleKey( spep_9 -3 + 22, 1, 2.03, 2.03 );
setScaleKey( spep_9 -3 + 24, 1, 2.02, 2.02 );
setScaleKey( spep_9 -3 + 26, 1, 2.01, 2.01 );
setScaleKey( spep_9 -3 + 28, 1, 2.01, 2.01 );
setScaleKey( spep_9 -3 + 30, 1, 2, 2 );
setScaleKey( spep_9 -3 + 32, 1, 1.99, 1.99 );
setScaleKey( spep_9 -3 + 34, 1, 1.98, 1.98 );
setScaleKey( spep_9 -3 + 36, 1, 1.97, 1.97 );
setScaleKey( spep_9 -3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_9 -3 + 40, 1, 1.95, 1.95 );
setScaleKey( spep_9 -3 + 42, 1, 1.95, 1.95 );
setScaleKey( spep_9 -3 + 44, 1, 1.94, 1.94 );
setScaleKey( spep_9 -3 + 46, 1, 1.93, 1.93 );
setScaleKey( spep_9 -3 + 48, 1, 1.92, 1.92 );
setScaleKey( spep_9 -3 + 50, 1, 1.91, 1.91 );
setScaleKey( spep_9 -3 + 52, 1, 1.9, 1.9 );
setScaleKey( spep_9 -3 + 54, 1, 1.89, 1.89 );
setScaleKey( spep_9 -3 + 56, 1, 1.89, 1.89 );
setScaleKey( spep_9 -3 + 58, 1, 1.88, 1.88 );
setScaleKey( spep_9 -3 + 60, 1, 1.55, 1.55 );
setScaleKey( spep_9 -3 + 62, 1, 1.21, 1.21 );
setScaleKey( spep_9 -3 + 64, 1, 0.85, 0.85 );
setScaleKey( spep_9 -3 + 66, 1, 0.87, 0.87 );
setScaleKey( spep_9 -3 + 68, 1, 0.88, 0.88 );
setScaleKey( spep_9 -3 + 70, 1, 0.89, 0.89 );
setScaleKey( spep_9 -3 + 72, 1, 0.9, 0.9 );
setScaleKey( spep_9 -3 + 74, 1, 0.92, 0.92 );
setScaleKey( spep_9 -3 + 76, 1, 0.93, 0.93 );
setScaleKey( spep_9 -3 + 78, 1, 0.94, 0.94 );
setScaleKey( spep_9 -3 + 80, 1, 0.96, 0.96 );
setScaleKey( spep_9 -3 + 82, 1, 0.97, 0.97 );
setScaleKey( spep_9 -3 + 84, 1, 0.98, 0.98 );
setScaleKey( spep_9 -3 + 86, 1, 0.99, 0.99 );
setScaleKey( spep_9 -3 + 88, 1, 1.01, 1.01 );
setScaleKey( spep_9 -3 + 90, 1, 1.02, 1.02 );
setScaleKey( spep_9 -3 + 92, 1, 1.03, 1.03 );
setScaleKey( spep_9 -3 + 94, 1, 1.04, 1.04 );
setScaleKey( spep_9 -3 + 96, 1, 1.06, 1.06 );
setScaleKey( spep_9 -3 + 98, 1, 1.07, 1.07 );
setScaleKey( spep_9 -3 + 100, 1, 1.08, 1.08 );
setScaleKey( spep_9 -3 + 102, 1, 1.09, 1.09 );
setScaleKey( spep_9 -3 + 104, 1, 1.1, 1.1 );
setScaleKey( spep_9 -3 + 106, 1, 1.11, 1.11 );
setScaleKey( spep_9 -3 + 108, 1, 1.13, 1.13 );
setScaleKey( spep_9 -3 + 110, 1, 1.14, 1.14 );
setScaleKey( spep_9 -3 + 112, 1, 1.15, 1.15 );
setScaleKey( spep_9 -3 + 114, 1, 1.16, 1.16 );
setScaleKey( spep_9 -3 + 116, 1, 1.17, 1.17 );
setScaleKey( spep_9 -3 + 118, 1, 1.18, 1.18 );
setScaleKey( spep_9 -3 + 120, 1, 1.19, 1.19 );
setScaleKey( spep_9 -3 + 122, 1, 1.2, 1.2 );
setScaleKey( spep_9 -3 + 124, 1, 1.21, 1.21 );
setScaleKey( spep_9 -3 + 126, 1, 1.22, 1.22 );
setScaleKey( spep_9 -3 + 128, 1, 1.23, 1.23 );
setScaleKey( spep_9 -3 + 130, 1, 1.24, 1.24 );
setScaleKey( spep_9 -3 + 132, 1, 1.26, 1.26 );
setScaleKey( spep_9 -3 + 134, 1, 1.27, 1.27 );
setScaleKey( spep_9 -3 + 136, 1, 1.28, 1.28 );
setScaleKey( spep_9 -3 + 138, 1, 1.29, 1.29 );
setScaleKey( spep_9 -3 + 140, 1, 1.3, 1.3 );
setScaleKey( spep_9 -3 + 142, 1, 1.31, 1.31 );
setScaleKey( spep_9 -3 + 144, 1, 1.32, 1.32 );
setScaleKey( spep_9 -3 + 146, 1, 1.33, 1.33 );
setScaleKey( spep_9 -3 + 148, 1, 1.34, 1.34 );
setScaleKey( spep_9 -3 + 150, 1, 1.35, 1.35 );
setScaleKey( spep_9 -3 + 152, 1, 1.36, 1.36 );
setScaleKey( spep_9 -3 + 154, 1, 1.37, 1.37 );
setScaleKey( spep_9 -3 + 156, 1, 1.38, 1.38 );
setScaleKey( spep_9 -3 + 158, 1, 1.4, 1.4 );
setScaleKey( spep_9 -3 + 179, 1, 1.4, 1.4 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 -3 + 179, 1, 0 );

-- ** 音 ** --
--爆発
SE037 = playSeVer2( spep_9 + 56, 1023, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_9 + 56, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 66 );
endPhase( spep_9 + 166 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵と対峙する(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 66, 0x100, -1, 0, 0, 0 );  --敵と対峙する   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 66, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 66 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 66, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 66, 0x80, -1, 0, 0, 0 );  --敵と対峙する   ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 66, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 66 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 66, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 69, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 220.9, -34.8 , 0 );
setMoveKey( spep_0 + 1, 1, 221.8, -34.7 , 0 );
setMoveKey( spep_0 + 2, 1, 222.8, -34.7 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 223.8, -34.7 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 223.8, -34.7 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 224.7, -34.6 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 224.7, -34.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 225.6, -34.6 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 226.5, -34.5 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 227.4, -34.5 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 228.3, -34.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 229.1, -34.4 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 229.9, -34.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 230.6, -34.4 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 231.4, -34.3 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 232.1, -34.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 232.8, -34.3 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 233.5, -34.2 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 234.2, -34.2 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 234.8, -34.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 235.4, -34.2 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 236, -34.1 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 236.6, -34.1 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 237.1, -34.1 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 237.7, -34.1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 238.2, -34 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 238.6, -34 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 239.1, -34 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 239.5, -34 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 239.9, -34 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 240.3, -33.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 240.7, -33.9 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 241, -33.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 241.3, -33.9 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 241.6, -33.9 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 241.9, -33.9 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 242.1, -33.9 , 0 );
setMoveKey( spep_0 -3 + 69, 1, 242.1, -33.9 , 0 );

setScaleKey( spep_0 + 0, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 1, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 2, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 3, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 4, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 5, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 6, 1, 1.29, 1.29 );
setScaleKey( spep_0 -3 + 69, 1, 1.29, 1.29 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 69, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 +66 +96 + 38, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 21 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 66;


------------------------------------------------------
-- 前髪を直すトランクス(96F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_1 + 0, SP_03, 96, 0x100, -1, 0, 0, 0 );  --前髪を直すトランクス    ef_002
setEffMoveKey( spep_1 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, faceup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, faceup, -1.0, 1.0 );
setEffScaleKey( spep_1 + 96, faceup, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, faceup, 0 );
setEffRotateKey( spep_1 + 96, faceup, 0 );
setEffAlphaKey( spep_1 + 0, faceup, 255 );
setEffAlphaKey( spep_1 + 96 -1, faceup, 255 );
setEffAlphaKey( spep_1 + 96, faceup, 0 );

spep_x = spep_1 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--顔カットイン
--SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--前髪触る
SE004 = playSeVer2( spep_1 + 24, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE004, 160 );
setPitch( spep_1 + 24, SE004, 200 );
setTimeStretch( SE004, 1.13, 30, 4 );
setBandpassFilter   ( spep_1 + 24, SE004, 600, 24000 );

--突っ込んでくる
SE005 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 90, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;


------------------------------------------------------
-- 画面に向かってダッシュしてくる(60F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
dash = entryEffectLife( spep_2 + 0, SP_04, 60 -1, 0x100, -1, 0, 0, 0 );  --画面に向かってダッシュしてくる ef_003
setEffMoveKey( spep_2 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60 -1, dash, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60 -1, dash, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dash, 0 );
setEffRotateKey( spep_2 + 60 -1, dash, 0 );
setEffAlphaKey( spep_2 + 0, dash, 255 );
setEffAlphaKey( spep_2 + 60 -1 -1, dash, 255 );
setEffAlphaKey( spep_2 + 60 -1, dash, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
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

-- ** 音 ** --
--パンチ
SE007 = playSeVer2( spep_2 + 50, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 58, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 60 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 60 -1;


------------------------------------------------------
-- 打撃で敵を飛ばす(48F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_3 + 0, SP_05r, 48, 0x100, -1, 0, 0, 0 );  --打撃で敵を飛ばす ef_004
setEffMoveKey( spep_3 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 48, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 48 -1, punch_f, 255 );
setEffAlphaKey( spep_3 + 48, punch_f, 0 );

punch_b = entryEffectLife( spep_3 + 0, SP_06r, 48, 0x80, -1, 0, 0, 0 );  --打撃で敵を飛ばす  ef_004_back
setEffMoveKey( spep_3 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 48, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 48, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 48, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 48 -1, punch_b, 255 );
setEffAlphaKey( spep_3 + 48, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 11, 1, 0 );
changeAnime( spep_3 + 0, 1, 102 );
changeAnime( spep_3 + 1, 1, 107 );

setMoveKey( spep_3 + 0, 1, 43.9, -200.9 , 0 );
setMoveKey( spep_3 + 1, 1, 126.9, 11 , 0 );
setMoveKey( spep_3 + 2, 1, 79.4, -12 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 112.5, -34.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 163.6, -69.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 743.4, -8.1 , 0 );
setMoveKey( spep_3 -3 + 11, 1, 743.4, -8.1 , 0 );

setScaleKey( spep_3 +    0, 1, 3.641, 3.641 );
setScaleKey( spep_3 +    1, 1, 1.296, 1.296 );
setScaleKey( spep_3 +    2, 1, 1.344, 1.344 );
setScaleKey( spep_3 -3 + 6, 1, 1.476, 1.476 );
setScaleKey( spep_3 -3 + 8, 1, 1.668, 1.668 );
setScaleKey( spep_3 -3 + 10, 1, 5.196, 5.196 );
setScaleKey( spep_3 -3 + 11, 1, 5.196, 5.196 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 11, 1, 0 );

-- ** 音 ** --
--地面蹴る
SE009 = playSeVer2( spep_3 + 44, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE009, 135 );
SE010 = playSeVer2( spep_3 + 44, 1192, "",spep_3 +48 + 18, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 44, SE010, 180 );
SE011 = playSeVer2( spep_3 + 46, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 46, SE011, 143 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 48 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 48;


------------------------------------------------------
-- 敵に向かって踏み込む(26F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_4 + 0, SP_07r, 26, 0x100, -1, 0, 0, 0 );  --敵に向かって踏み込む  ef_005
setEffMoveKey( spep_4 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_4 + 26, move, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_4 + 26, move, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, move, 0 );
setEffRotateKey( spep_4 + 26, move, 0 );
setEffAlphaKey( spep_4 + 0, move, 255 );
setEffAlphaKey( spep_4 + 26 -1, move, 255 );
setEffAlphaKey( spep_4 + 26, move, 0 );

-- ** 音 ** --
--ジャンプ
SE012 = playSeVer2( spep_4 + 6, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 6, SE012, 79 );
SE013 = playSeVer2( spep_4 + 6, 1117, "",spep_4 +26 +40 + 8, 0, 4, -1);
SE014 = playSeVer2( spep_4 + 6, 1003, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 26 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 26;


------------------------------------------------------
-- 敵に向かって飛ぶ(40F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
jump_f = entryEffectLife( spep_5 + 0, SP_08r, 40, 0x100, -1, 0, 0, 0 );  --敵に向かって飛ぶ  ef_006
setEffMoveKey( spep_5 + 0, jump_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40, jump_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, jump_f, 0 );
setEffRotateKey( spep_5 + 40, jump_f, 0 );
setEffAlphaKey( spep_5 + 0, jump_f, 255 );
setEffAlphaKey( spep_5 + 40 -1, jump_f, 255 );
setEffAlphaKey( spep_5 + 40, jump_f, 0 );

jump_b = entryEffectLife( spep_5 + 0, SP_09r, 40, 0x80, -1, 0, 0, 0 );  --敵に向かって飛ぶ   ef_006_back
setEffMoveKey( spep_5 + 0, jump_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 40, jump_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 40, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, jump_b, 0 );
setEffRotateKey( spep_5 + 40, jump_b, 0 );
setEffAlphaKey( spep_5 + 0, jump_b, 255 );
setEffAlphaKey( spep_5 + 40 -1, jump_b, 255 );
setEffAlphaKey( spep_5 + 40, jump_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 43, 1, 0 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 753.2, 760.1 , 0 );
setMoveKey( spep_5 + 1, 1, 655.2, 658.9 , 0 );
setMoveKey( spep_5 + 2, 1, 555.3, 557.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 453.5, 456.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 350, 355.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 244.8, 254.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 138.1, 153.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 132.5, 144.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 127.6, 135.5 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 123.1, 126.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 119.1, 117.8 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 115.5, 108.9 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 112.3, 100 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 109.6, 91.2 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 107.1, 82.3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 105.1, 73.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 103.4, 64.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 102, 55.8 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 100.8, 46.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 100, 38.1 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 99.2, 29.3 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 98.3, 20.4 , 0 );
setMoveKey( spep_5 -3 + 43, 1, 98.3, 20.4 , 0 );

setScaleKey( spep_5 + 0, 1, 0.85, 0.85 );
setScaleKey( spep_5 + 1, 1, 0.87, 0.87 );
setScaleKey( spep_5 + 2, 1, 0.93, 0.93 );
setScaleKey( spep_5 -3 + 6, 1, 1.05, 1.05 );
setScaleKey( spep_5 -3 + 8, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 10, 1, 1.42, 1.42 );
setScaleKey( spep_5 -3 + 12, 1, 1.68, 1.68 );
setScaleKey( spep_5 -3 + 14, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 16, 1, 1.8, 1.8 );
setScaleKey( spep_5 -3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_5 -3 + 20, 1, 1.86, 1.86 );
setScaleKey( spep_5 -3 + 22, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 24, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 26, 1, 1.87, 1.87 );
setScaleKey( spep_5 -3 + 28, 1, 1.85, 1.85 );
setScaleKey( spep_5 -3 + 30, 1, 1.82, 1.82 );
setScaleKey( spep_5 -3 + 32, 1, 1.79, 1.79 );
setScaleKey( spep_5 -3 + 34, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 36, 1, 1.69, 1.69 );
setScaleKey( spep_5 -3 + 38, 1, 1.63, 1.63 );
setScaleKey( spep_5 -3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_5 -3 + 42, 1, 1.51, 1.51 );
setScaleKey( spep_5 -3 + 43, 1, 1.51, 1.51 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 1, 1, -0.1 );
setRotateKey( spep_5 + 2, 1, -0.5 );
setRotateKey( spep_5 -3 + 6, 1, -1.2 );
setRotateKey( spep_5 -3 + 8, 1, -2 );
setRotateKey( spep_5 -3 + 10, 1, -3.2 );
setRotateKey( spep_5 -3 + 12, 1, -4.6 );
setRotateKey( spep_5 -3 + 14, 1, -5.2 );
setRotateKey( spep_5 -3 + 16, 1, -5.7 );
setRotateKey( spep_5 -3 + 18, 1, -6.2 );
setRotateKey( spep_5 -3 + 20, 1, -6.6 );
setRotateKey( spep_5 -3 + 22, 1, -7 );
setRotateKey( spep_5 -3 + 24, 1, -7.4 );
setRotateKey( spep_5 -3 + 26, 1, -7.7 );
setRotateKey( spep_5 -3 + 28, 1, -7.9 );
setRotateKey( spep_5 -3 + 30, 1, -8.1 );
setRotateKey( spep_5 -3 + 32, 1, -8.3 );
setRotateKey( spep_5 -3 + 34, 1, -8.4 );
setRotateKey( spep_5 -3 + 36, 1, -8.5 );
setRotateKey( spep_5 -3 + 43, 1, -8.5 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 40;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_6 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );
setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;


------------------------------------------------------
-- 剣を抜く(66F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
battou = entryEffectLife( spep_7 + 0, SP_10, 66, 0x100, -1, 0, 0, 0 );  --剣を抜く  ef_007
setEffMoveKey( spep_7 + 0, battou, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, battou, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, battou, -1.0, 1.0 );
setEffScaleKey( spep_7 + 66, battou, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, battou, 0 );
setEffRotateKey( spep_7 + 66, battou, 0 );
setEffAlphaKey( spep_7 + 0, battou, 255 );
setEffAlphaKey( spep_7 + 66 -1, battou, 255 );
setEffAlphaKey( spep_7 + 66, battou, 0 );

-- ** 音 ** --
--剣抜く
SE016 = playSeVer2( spep_7 + 8, 1061, "",spep_7 + 40, 0, 12, -1);
setSeVolumeByWorkId( spep_7 + 8, SE016, 68 );
SE017 = playSeVer2( spep_7 + 8, 6, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 8, SE017, 130 );
SE018 = playSeVer2( spep_7 + 8, 1307, "",spep_7 +66 + 18, 0, 34, -1);

--剣撃
SE019 = playSeVer2( spep_7 + 62, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 62, SE019, 72 );
SE020 = playSeVer2( spep_7 + 62, 1142, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 66;


------------------------------------------------------
-- 斬撃ラッシュ(176F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
slash = entryEffectLife( spep_8 + 0, SP_11r, 176, 0x100, -1, 0, 0, 0 );  --斬撃ラッシュ    ef_008
setEffMoveKey( spep_8 + 0, slash, 0, 0 , 0 );
setEffMoveKey( spep_8 + 176, slash, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, slash, 1.0, 1.0 );
setEffScaleKey( spep_8 + 176, slash, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, slash, 0 );
setEffRotateKey( spep_8 + 176, slash, 0 );
setEffAlphaKey( spep_8 + 0, slash, 255 );
setEffAlphaKey( spep_8 + 176 -1, slash, 255 );
setEffAlphaKey( spep_8 + 176, slash, 0 );

-- ** 音 ** --
--連続斬り
SE021 = playSeVer2( spep_8 + 32, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 32, SE021, 61 );
SE022 = playSeVer2( spep_8 + 32, 1032, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_8 + 32, 1109, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_8 + 42, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 42, SE024, 119 );
SE025 = playSeVer2( spep_8 + 50, 1032, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_8 + 50, 1109, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_8 + 56, 8, "", 0, 0, 0, -1);
setPitch( spep_8 + 56, SE027, -600 );
setTimeStretch( SE027, 0.6, 30, 4 );

--ラスト斬り
SE028 = playSeVer2( spep_8 + 100, 1319, "", 0, 0, 0, 0.7);
SE029 = playSeVer2( spep_8 + 106, 1156, "",spep_8 +176 + 12, 0, 46, -1);
setSeVolumeByWorkId( spep_8 + 106, SE029, 76 );
SE030 = playSeVer2( spep_8 + 106, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 106, SE030, 86 );
SE031 = playSeVer2( spep_8 + 106, 1032, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_8 + 106, 1142, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_8 + 112, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 112, SE033, 71 );
setPitch( spep_8 + 112, SE033, 200 );
setTimeStretch( SE033, 1.13, 30, 4 );

--ラスト剣撃ヒット
SE034 = playSeVer2( spep_8 + 172, 1318, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_8 + 172, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 172, SE035, 66 );
SE036 = playSeVer2( spep_8 + 172, 1172, "",spep_8 +176 + 76, 0, 24, 0.6);
setSeVolumeByWorkId( spep_8 + 172, SE036, 64 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 176;


------------------------------------------------------
-- 斬撃ラッシュ終了(176F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_9 + 0, SP_12r, 0x100, -1, 0, 0, 0 );  --斬撃ラッシュ終了   ef_009
setEffMoveKey( spep_9 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 176, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 176, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_f, 0 );
setEffRotateKey( spep_9 + 176, finish_f, 0 );
setEffAlphaKey( spep_9 + 0, finish_f, 255 );
setEffAlphaKey( spep_9 + 176, finish_f, 255 );

finish_b = entryEffect( spep_9 + 0, SP_13r, 0x80, -1, 0, 0, 0 );  --斬撃ラッシュ終了    ef_009_back
setEffMoveKey( spep_9 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 176, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 176, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish_b, 0 );
setEffRotateKey( spep_9 + 176, finish_b, 0 );
setEffAlphaKey( spep_9 + 0, finish_b, 255 );
setEffAlphaKey( spep_9 + 176, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 -3 + 179, 1, 0 );
changeAnime( spep_9 + 0, 1, 105 );

setMoveKey( spep_9 + 0, 1, -24.7, -69.5 , 0 );
setMoveKey( spep_9 + 1, 1, -17.2, -35.3 , 0 );
setMoveKey( spep_9 + 2, 1, -9.7, -1.2 , 0 );
setMoveKey( spep_9 -3 + 6, 1, -2.3, 32.9 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 5.2, 67 , 0 );
setMoveKey( spep_9 -3 + 10, 1, -61.1, -15.2 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 77.4, 159.6 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 71.5, -76.6 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 5.2, 66.2 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 5.3, 66 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 5.3, 65.8 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 5.2, 65.6 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 5.2, 65.5 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 5.3, 65.3 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 5.3, 65.1 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 5.2, 64.9 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 5.2, 64.7 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 5.3, 64.5 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 5.3, 64.3 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 5.2, 64.1 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 5.2, 63.9 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 5.3, 63.7 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 5.3, 63.6 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 5.2, 63.4 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 5.2, 63.2 , 0 );
setMoveKey( spep_9 -3 + 50, 1, 5.3, 63 , 0 );
setMoveKey( spep_9 -3 + 52, 1, 5.3, 62.8 , 0 );
setMoveKey( spep_9 -3 + 54, 1, 5.2, 62.6 , 0 );
setMoveKey( spep_9 -3 + 56, 1, 5.2, 62.5 , 0 );
setMoveKey( spep_9 -3 + 58, 1, 5.3, 62.3 , 0 );
setMoveKey( spep_9 -3 + 60, 1, 18.6, 67 , 0 );
setMoveKey( spep_9 -3 + 62, 1, 33, 73.3 , 0 );
setMoveKey( spep_9 -3 + 64, 1, 48.6, 81.2 , 0 );
setMoveKey( spep_9 -3 + 66, 1, 26.5, 36 , 0 );
setMoveKey( spep_9 -3 + 68, 1, 30.5, 39.7 , 0 );
setMoveKey( spep_9 -3 + 70, 1, 20.9, 36.7 , 0 );
setMoveKey( spep_9 -3 + 72, 1, 32, 40.6 , 0 );
setMoveKey( spep_9 -3 + 74, 1, 29.3, 37.5 , 0 );
setMoveKey( spep_9 -3 + 76, 1, 22.7, 37.9 , 0 );
setMoveKey( spep_9 -3 + 78, 1, 30.7, 38.2 , 0 );
setMoveKey( spep_9 -3 + 80, 1, 14, 49.7 , 0 );
setMoveKey( spep_9 -3 + 82, 1, 24.5, 39 , 0 );
setMoveKey( spep_9 -3 + 84, 1, 36.4, 43.1 , 0 );
setMoveKey( spep_9 -3 + 86, 1, 37.2, 43.5 , 0 );
setMoveKey( spep_9 -3 + 88, 1, 26.2, 40.1 , 0 );
setMoveKey( spep_9 -3 + 90, 1, 38.6, 44.3 , 0 );
setMoveKey( spep_9 -3 + 92, 1, 39.4, 44.8 , 0 );
setMoveKey( spep_9 -3 + 94, 1, 19.8, 46.1 , 0 );
setMoveKey( spep_9 -3 + 96, 1, 40.8, 45.6 , 0 );
setMoveKey( spep_9 -3 + 98, 1, 41.6, 46.1 , 0 );
setMoveKey( spep_9 -3 + 100, 1, 29.8, 42.4 , 0 );
setMoveKey( spep_9 -3 + 102, 1, 42.8, 46.5 , 0 );
setMoveKey( spep_9 -3 + 104, 1, 43.3, 46.4 , 0 );
setMoveKey( spep_9 -3 + 106, 1, 41.7, 44.3 , 0 );
setMoveKey( spep_9 -3 + 108, 1, 42.2, 44.2 , 0 );
setMoveKey( spep_9 -3 + 110, 1, 42.6, 44.2 , 0 );
setMoveKey( spep_9 -3 + 112, 1, 43.1, 44.2 , 0 );
setMoveKey( spep_9 -3 + 114, 1, 43.6, 44.1 , 0 );
setMoveKey( spep_9 -3 + 116, 1, 44, 44.1 , 0 );
setMoveKey( spep_9 -3 + 118, 1, 44.5, 44.1 , 0 );
setMoveKey( spep_9 -3 + 120, 1, 45, 44 , 0 );
setMoveKey( spep_9 -3 + 122, 1, 45.5, 43.9 , 0 );
setMoveKey( spep_9 -3 + 124, 1, 45.9, 43.8 , 0 );
setMoveKey( spep_9 -3 + 126, 1, 46.4, 43.8 , 0 );
setMoveKey( spep_9 -3 + 128, 1, 46.9, 43.8 , 0 );
setMoveKey( spep_9 -3 + 130, 1, 47.3, 43.8 , 0 );
setMoveKey( spep_9 -3 + 132, 1, 47.8, 43.7 , 0 );
setMoveKey( spep_9 -3 + 134, 1, 48.3, 43.7 , 0 );
setMoveKey( spep_9 -3 + 136, 1, 48.8, 43.6 , 0 );
setMoveKey( spep_9 -3 + 138, 1, 49.2, 43.6 , 0 );
setMoveKey( spep_9 -3 + 140, 1, 49.7, 43.5 , 0 );
setMoveKey( spep_9 -3 + 142, 1, 50.2, 43.5 , 0 );
setMoveKey( spep_9 -3 + 144, 1, 50.5, 43.4 , 0 );
setMoveKey( spep_9 -3 + 146, 1, 51, 43.4 , 0 );
setMoveKey( spep_9 -3 + 148, 1, 51.5, 43.3 , 0 );
setMoveKey( spep_9 -3 + 150, 1, 52, 43.3 , 0 );
setMoveKey( spep_9 -3 + 152, 1, 52.4, 43.3 , 0 );
setMoveKey( spep_9 -3 + 154, 1, 52.9, 43.2 , 0 );
setMoveKey( spep_9 -3 + 156, 1, 53.4, 43.2 , 0 );
setMoveKey( spep_9 -3 + 158, 1, 53.8, 43.1 , 0 );
setMoveKey( spep_9 -3 + 179, 1, 53.8, 43.1 , 0 );

setScaleKey( spep_9 + 0, 1, 3.88, 3.88 );
setScaleKey( spep_9 + 1, 1, 3.43, 3.43 );
setScaleKey( spep_9 + 2, 1, 2.99, 2.99 );
setScaleKey( spep_9 -3 + 6, 1, 2.54, 2.54 );
setScaleKey( spep_9 -3 + 8, 1, 2.09, 2.09 );
setScaleKey( spep_9 -3 + 10, 1, 2.08, 2.08 );
setScaleKey( spep_9 -3 + 12, 1, 2.07, 2.07 );
setScaleKey( spep_9 -3 + 14, 1, 2.07, 2.07 );
setScaleKey( spep_9 -3 + 16, 1, 2.06, 2.06 );
setScaleKey( spep_9 -3 + 18, 1, 2.05, 2.05 );
setScaleKey( spep_9 -3 + 20, 1, 2.04, 2.04 );
setScaleKey( spep_9 -3 + 22, 1, 2.03, 2.03 );
setScaleKey( spep_9 -3 + 24, 1, 2.02, 2.02 );
setScaleKey( spep_9 -3 + 26, 1, 2.01, 2.01 );
setScaleKey( spep_9 -3 + 28, 1, 2.01, 2.01 );
setScaleKey( spep_9 -3 + 30, 1, 2, 2 );
setScaleKey( spep_9 -3 + 32, 1, 1.99, 1.99 );
setScaleKey( spep_9 -3 + 34, 1, 1.98, 1.98 );
setScaleKey( spep_9 -3 + 36, 1, 1.97, 1.97 );
setScaleKey( spep_9 -3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_9 -3 + 40, 1, 1.95, 1.95 );
setScaleKey( spep_9 -3 + 42, 1, 1.95, 1.95 );
setScaleKey( spep_9 -3 + 44, 1, 1.94, 1.94 );
setScaleKey( spep_9 -3 + 46, 1, 1.93, 1.93 );
setScaleKey( spep_9 -3 + 48, 1, 1.92, 1.92 );
setScaleKey( spep_9 -3 + 50, 1, 1.91, 1.91 );
setScaleKey( spep_9 -3 + 52, 1, 1.9, 1.9 );
setScaleKey( spep_9 -3 + 54, 1, 1.89, 1.89 );
setScaleKey( spep_9 -3 + 56, 1, 1.89, 1.89 );
setScaleKey( spep_9 -3 + 58, 1, 1.88, 1.88 );
setScaleKey( spep_9 -3 + 60, 1, 1.55, 1.55 );
setScaleKey( spep_9 -3 + 62, 1, 1.21, 1.21 );
setScaleKey( spep_9 -3 + 64, 1, 0.85, 0.85 );
setScaleKey( spep_9 -3 + 66, 1, 0.87, 0.87 );
setScaleKey( spep_9 -3 + 68, 1, 0.88, 0.88 );
setScaleKey( spep_9 -3 + 70, 1, 0.89, 0.89 );
setScaleKey( spep_9 -3 + 72, 1, 0.9, 0.9 );
setScaleKey( spep_9 -3 + 74, 1, 0.92, 0.92 );
setScaleKey( spep_9 -3 + 76, 1, 0.93, 0.93 );
setScaleKey( spep_9 -3 + 78, 1, 0.94, 0.94 );
setScaleKey( spep_9 -3 + 80, 1, 0.96, 0.96 );
setScaleKey( spep_9 -3 + 82, 1, 0.97, 0.97 );
setScaleKey( spep_9 -3 + 84, 1, 0.98, 0.98 );
setScaleKey( spep_9 -3 + 86, 1, 0.99, 0.99 );
setScaleKey( spep_9 -3 + 88, 1, 1.01, 1.01 );
setScaleKey( spep_9 -3 + 90, 1, 1.02, 1.02 );
setScaleKey( spep_9 -3 + 92, 1, 1.03, 1.03 );
setScaleKey( spep_9 -3 + 94, 1, 1.04, 1.04 );
setScaleKey( spep_9 -3 + 96, 1, 1.06, 1.06 );
setScaleKey( spep_9 -3 + 98, 1, 1.07, 1.07 );
setScaleKey( spep_9 -3 + 100, 1, 1.08, 1.08 );
setScaleKey( spep_9 -3 + 102, 1, 1.09, 1.09 );
setScaleKey( spep_9 -3 + 104, 1, 1.1, 1.1 );
setScaleKey( spep_9 -3 + 106, 1, 1.11, 1.11 );
setScaleKey( spep_9 -3 + 108, 1, 1.13, 1.13 );
setScaleKey( spep_9 -3 + 110, 1, 1.14, 1.14 );
setScaleKey( spep_9 -3 + 112, 1, 1.15, 1.15 );
setScaleKey( spep_9 -3 + 114, 1, 1.16, 1.16 );
setScaleKey( spep_9 -3 + 116, 1, 1.17, 1.17 );
setScaleKey( spep_9 -3 + 118, 1, 1.18, 1.18 );
setScaleKey( spep_9 -3 + 120, 1, 1.19, 1.19 );
setScaleKey( spep_9 -3 + 122, 1, 1.2, 1.2 );
setScaleKey( spep_9 -3 + 124, 1, 1.21, 1.21 );
setScaleKey( spep_9 -3 + 126, 1, 1.22, 1.22 );
setScaleKey( spep_9 -3 + 128, 1, 1.23, 1.23 );
setScaleKey( spep_9 -3 + 130, 1, 1.24, 1.24 );
setScaleKey( spep_9 -3 + 132, 1, 1.26, 1.26 );
setScaleKey( spep_9 -3 + 134, 1, 1.27, 1.27 );
setScaleKey( spep_9 -3 + 136, 1, 1.28, 1.28 );
setScaleKey( spep_9 -3 + 138, 1, 1.29, 1.29 );
setScaleKey( spep_9 -3 + 140, 1, 1.3, 1.3 );
setScaleKey( spep_9 -3 + 142, 1, 1.31, 1.31 );
setScaleKey( spep_9 -3 + 144, 1, 1.32, 1.32 );
setScaleKey( spep_9 -3 + 146, 1, 1.33, 1.33 );
setScaleKey( spep_9 -3 + 148, 1, 1.34, 1.34 );
setScaleKey( spep_9 -3 + 150, 1, 1.35, 1.35 );
setScaleKey( spep_9 -3 + 152, 1, 1.36, 1.36 );
setScaleKey( spep_9 -3 + 154, 1, 1.37, 1.37 );
setScaleKey( spep_9 -3 + 156, 1, 1.38, 1.38 );
setScaleKey( spep_9 -3 + 158, 1, 1.4, 1.4 );
setScaleKey( spep_9 -3 + 179, 1, 1.4, 1.4 );

setRotateKey( spep_9 + 0, 1, 0 );
setRotateKey( spep_9 -3 + 179, 1, 0 );

-- ** 音 ** --
--爆発
SE037 = playSeVer2( spep_9 + 56, 1023, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_9 + 56, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 66 );
endPhase( spep_9 + 166 );

end