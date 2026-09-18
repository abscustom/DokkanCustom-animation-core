--1020550:魔神トワ_インフェルノバレット
--sp_effect_b4_00164
--sp2074

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
SP_01 = 156237;	--髪掻き上げ〜手に気溜める	ef_001
SP_02 = 156239;	--敵奥集中線	ef_002
SP_03 = 156240;	--敵前エフェクト球	ef_003
SP_04 = 156241;	--敵奥エフェクト球	ef_004
SP_05 = 156242;	--セリフカットインポーズ	ef_005
SP_06 = 156244;	--杖構え〜杖発光	ef_006
SP_07 = 156246;	--フィニッシュ敵前エフェクト	ef_007
SP_08 = 156248;	--フィニッシュ敵奥エフェクト	ef_008

--敵側
SP_01r = 156238;	--髪掻き上げ〜手に気溜める：反転素材	ef_001_r
SP_05r = 156243;	--セリフカットインポーズ：反転素材	ef_005_r
SP_06r = 156245;	--杖構え〜杖発光：反転素材	ef_006_r
SP_07r = 156247;	--フィニッシュ敵前エフェクト：反転素材	ef_007_r

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
-- 髪掻き上げ〜手に気溜める(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --髪掻き上げ〜手に気溜める(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 196, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 196, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --敵奥集中線	ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 196, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 196, first_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 35,  906, 38, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_0 + 35, shuchusen1, 38, 25 );
setEffMoveKey(   spep_0 + 35, shuchusen1, 0, 150 , 0 );
setEffMoveKey(   spep_0 + 73, shuchusen1, 0, 150 , 0 );
setEffScaleKey(  spep_0 + 35, shuchusen1, 1.2, 1.5 );
setEffScaleKey(  spep_0 + 73, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 35, shuchusen1, 0 );
setEffRotateKey( spep_0 + 73, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 35, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 63, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 73, shuchusen1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 113, 1, 1 );

changeAnime( spep_0 + 113, 1, 102 );

setMoveKey( spep_0 -3 + 116, 1, 355.9, -827.4 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 354.7, -823.3 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 351.2, -811.2 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 345.4, -790.9 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 337.2, -762.6 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 326.7, -726.1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 313.8, -681.6 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 298.6, -628.9 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 281.1, -568.2 , 0 );

setScaleKey( spep_0 -3 + 116, 1, 2, 2 );

setRotateKey( spep_0 -3 + 116, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 音 ** --
--顔アップ1
SE001 = playSe( spep_0 + 50, 1255 );
setSeVolumeByWorkId( spep_0 + 50, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 51, SE001, 6 );
setSeVolumeByWorkId( spep_0 + 52, SE001, 11 );
setSeVolumeByWorkId( spep_0 + 53, SE001, 21 );
setSeVolumeByWorkId( spep_0 + 54, SE001, 31 );
setSeVolumeByWorkId( spep_0 + 55, SE001, 41 );
setSeVolumeByWorkId( spep_0 + 56, SE001, 51 );
setSeVolumeByWorkId( spep_0 + 57, SE001, 61 );
setSeVolumeByWorkId( spep_0 + 58, SE001, 71 );
stopSe( spep_0 + 90, SE001, 40 );
setStartTimeMs( SE001,  1100 );

--髪ふわ
SE002 = playSe( spep_0 + 10, 1112 );
setSeVolumeByWorkId( spep_0 + 10, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 11, SE002, 6 );
setSeVolumeByWorkId( spep_0 + 12, SE002, 12 );
setSeVolumeByWorkId( spep_0 + 13, SE002, 24 );
setSeVolumeByWorkId( spep_0 + 14, SE002, 36 );
setSeVolumeByWorkId( spep_0 + 15, SE002, 48 );
setSeVolumeByWorkId( spep_0 + 16, SE002, 58 );
setStartTimeMs( SE002,  167 );
setPitch( spep_0 + 10, SE002, 800 );
setTimeStretch( SE002, 1.53, 10, 1 );
setBandpassFilter( spep_0 + 10, SE002, 700, 24000 );

--顔アップ2
SE003 = playSe( spep_0 + 38, 46 );
setSeVolumeByWorkId( spep_0 + 38, SE003, 41 );
stopSe( spep_0 + 100, SE003, 24 );
setPitch( spep_0 + 38, SE003, -200 );
setTimeStretch( SE003, 0.87, 10, 1 );

--顔アップ3
SE004 = playSe( spep_0 + 40, 1222 );
setSeVolumeByWorkId( spep_0 + 40, SE004, 81 );
setTimeStretch( SE004, 0.72, 10, 1 );

--腕ひく
SE005 = playSe( spep_0 + 108, 1003 );
setSeVolumeByWorkId( spep_0 + 108, SE005, 61 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 281.1, -568.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 261.8, -501.4 , 0 );
    setMoveKey( SP_dodge + 4, 1, 244.2, -440.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 229, -388 , 0 );
    setMoveKey( SP_dodge + 8, 1, 216.2, -343.5 , 0 );
    setMoveKey( SP_dodge + 10, 1, 205.7, -307 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2, 2 );
    setScaleKey( SP_dodge + 10, 1, 2, 2 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_0 + 147,  906, 48, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_0 + 147, shuchusen2, 48, 25 );
setEffMoveKey(   spep_0 + 147, shuchusen2, -50, 250 , 0 );
setEffMoveKey(   spep_0 + 195, shuchusen2, -50, 250 , 0 );
setEffScaleKey(  spep_0 + 147, shuchusen2, 1.5, 1.9 );
setEffScaleKey(  spep_0 + 195, shuchusen2, 1.5, 1.9 );
setEffRotateKey( spep_0 + 147, shuchusen2, 0 );
setEffRotateKey( spep_0 + 195, shuchusen2, 0 );
setEffAlphaKey(  spep_0 + 147, shuchusen2, 255 );
setEffAlphaKey(  spep_0 + 195, shuchusen2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 196, 1, 0 );

setMoveKey( spep_0 -3 + 134, 1, 261.8, -501.4 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 244.2, -440.7 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 229, -388 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 216.2, -343.5 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 205.7, -307 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 197.5, -278.7 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 191.6, -258.4 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 188.1, -246.3 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 203.8, -302 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 193.1, -275.2 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 199, 1, 182.3, -248.5 , 0 );

setScaleKey( spep_0 -3 + 148, 1, 2, 2 );
setScaleKey( spep_0 -3 + 150, 1, 2.2, 2.2 );
setScaleKey( spep_0 -3 + 152, 1, 2, 2 );
setScaleKey( spep_0 -3 + 154, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 156, 1, 2, 2 );
setScaleKey( spep_0 -3 + 198, 1, 2, 2 );
setScaleKey( spep_0 -3 + 199, 1, 2, 2 );

setRotateKey( spep_0 -3 + 198, 1, 0 );
setRotateKey( spep_0 -3 + 199, 1, 0 );

-- ** 音 ** --
--気弾溜め1
SE006 = playSe( spep_0 + 154, 1264 );
setSeVolumeByWorkId( spep_0 + 154, SE006, 63 );
stopSe( spep_0 +196 + 4, SE006, 62 );
setBandpassFilter( spep_0 + 154, SE006, 800, 24000 );

--気弾溜め2
SE007 = playSe( spep_0 + 154, 1020 );

--気弾溜め3
SE008 = playSe( spep_0 + 154, 1209 );
setSeVolumeByWorkId( spep_0 + 154, SE008, 52 );
stopSe( spep_0 +196 + 4, SE008, 36 );

--気弾溜め4
SE009 = playSe( spep_0 + 154, 1191 );
stopSe( spep_0 +196 + 12, SE009, 32 );

--気弾溜め5
SE010 = playSe( spep_0 + 184, 1020 );

-- ** 白フェード ** --
entryFade( spep_0 + 188, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;


--------------------------------------
--敵前,敵奥エフェクト球(86F)
--------------------------------------
-- ** エフェクト等 ** --
tama_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --敵前エフェクト球(ef_003)
setEffMoveKey( spep_1 + 0, tama_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, tama_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tama_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, tama_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tama_f, 0 );
setEffRotateKey( spep_1 + 86, tama_f, 0 );
setEffAlphaKey( spep_1 + 0, tama_f, 255 );
setEffAlphaKey( spep_1 + 86, tama_f, 255 );

tama_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --敵奥エフェクト球(ef_004)
setEffMoveKey( spep_1 + 0, tama_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, tama_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tama_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, tama_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tama_b, 0 );
setEffRotateKey( spep_1 + 86, tama_b, 0 );
setEffAlphaKey( spep_1 + 0, tama_b, 255 );
setEffAlphaKey( spep_1 + 86, tama_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 25,  906, 60, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_1 + 25, shuchusen3, 60, 25 );
setEffMoveKey(   spep_1 + 25, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 85, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 25, shuchusen3, 1.8, 1.8 );
setEffScaleKey(  spep_1 + 85, shuchusen3, 1.8, 1.8 );
setEffRotateKey( spep_1 + 25, shuchusen3, 0 );
setEffRotateKey( spep_1 + 85, shuchusen3, 0 );
setEffAlphaKey(  spep_1 + 25, shuchusen3, 255 );
setEffAlphaKey(  spep_1 + 85, shuchusen3, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 86, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 32, 1, 108 );
changeAnime( spep_1 -3 + 36, 1, 106 );

a1=20;

setMoveKey( spep_1 + 0, 1, -18.9 +a1, 15.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -18.9 +a1, 15.9 , 0 );
setMoveKey( spep_1 -3 + 31, 1, -22.6 +a1, 19.1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 33.6 +a1, 27.7 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 16.4 +a1, 20.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -24.2 +a1, 42.5 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -40 +a1, 41.7 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -24.2 +a1, 69.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -41.5 +a1, 45.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -24.2 +a1, 44.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -40.5 +a1, 39.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -21.8 +a1, 41.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -37.3 +a1, 16.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -20.9 +a1, 43.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -39.8 +a1, 33.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -21.5 +a1, 43.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -42.2 +a1, 42.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -25.9 +a1, 54.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -35.2 +a1, 33.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -24.2 +a1, 46.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -35.3 +a1, 38.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -25.9 +a1, 54.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -32.3 +a1, 33.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -25.7 +a1, 47.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -30.9 +a1, 34.3 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -24.2 +a1, 51.7 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -32.3 +a1, 38.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -25.7 +a1, 41.7 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -36.2 +a1, 39.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -25.9 +a1, 52.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -32.3 +a1, 38.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -25.7 +a1, 41.7 , 0 );
setMoveKey( spep_1 -3 + 89, 1, -25.7 +a1, 41.7 , 0 );

setScaleKey( spep_1 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 28, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 31, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 32, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 35, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 36, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 38, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 40, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 42, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 44, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 46, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 48, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 56, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 58, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 60, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 68, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 80, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 82, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 84, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 89, 1, 1.2, 1.2 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 35, 1, 0 );
setRotateKey( spep_1 -3 + 36, 1, -57 );
setRotateKey( spep_1 -3 + 89, 1, -57 );

-- ** 音 ** --
--気弾に包まれる1
SE011 = playSe( spep_1 + 36, 1023 );
setSeVolumeByWorkId( spep_1 + 36, SE011, 78 );

--気弾に包まれる2
SE012 = playSe( spep_1 + 36, 1033 );

--気弾に包まれる3
SE013 = playSe( spep_1 + 36, 1184 );
stopSe( spep_1 + 86 + 2, SE013, 80 );

--気弾に包まれる4
SE014 = playSe( spep_1 + 36, 1166 );
setSeVolumeByWorkId( spep_1 + 36, SE014, 74 );
stopSe( spep_1 + 86 + 14, SE014, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1 + 80, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;


--------------------------------------
--セリフカットインポーズ(106F)
--------------------------------------

-- ** エフェクト等 ** --
pause = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --髪掻き上げ〜手に気溜める(ef_001)
setEffMoveKey( spep_2 + 0, pause, 0, 0 , 0 );
setEffMoveKey( spep_2 + 106, pause, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, pause, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, pause, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pause, 0 );
setEffRotateKey( spep_2 + 106, pause, 0 );
setEffAlphaKey( spep_2 + 0, pause, 255 );
setEffAlphaKey( spep_2 + 106, pause, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_2 + 0,  906, 105, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen4, 105, 25 );
setEffMoveKey(   spep_2 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 105, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 0, shuchusen4, 1.4, 1.4 );
setEffScaleKey(  spep_2 + 105, shuchusen4, 1.4, 1.4 );
setEffRotateKey( spep_2 + 0, shuchusen4, 0 );
setEffRotateKey( spep_2 + 105, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 0, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 24, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 25, shuchusen4, 255 );
setEffAlphaKey(  spep_2 + 105, shuchusen4, 255 );

spep_x = spep_2 + 12;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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
SE015 = playSe( spep_2 + 22, 1018 );

--杖構える
SE016 = playSe( spep_2 + 24, 1004 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 106, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 88, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 106;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_3

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
-- playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_c + 94;

--------------------------------------
--杖構え〜杖発光(76F)
--------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --杖構え〜杖発光(ef_006)
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 76, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 76, tame, 255 );

-- ** 音 ** --
--杖光る
SE018 = playSe( spep_4 + 28, 1221 );
setSeVolumeByWorkId( spep_4 + 28, SE018, 141 );
setPitch( spep_4 + 28, SE018, 900 );
setTimeStretch( SE018, 1.6, 10, 1 );

--杖光る
SE019 = playSe( spep_4 + 28, 12 );
setSeVolumeByWorkId( spep_4 + 28, SE019, 82 );
setBandpassFilter	( spep_4 + 28, SE019, 300, 24000 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 76, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 66, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4 + 76;


--------------------------------------
--杖構え〜杖発光(316F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --フィニッシュ敵前エフェクト(ef_007)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 316, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 316, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 316, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 316, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ敵奥エフェクト(ef_008)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 316, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 316, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 316, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 316, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
--setDisp( spep_5 + 167, 1, 0 );
--setDisp( spep_5 + 169, 1, 1 );
--setDisp( spep_5 + 316, 1, 0 );
setDisp( spep_5 -3 + 272, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 170, 1, 105 );

setBlendColor( spep_5 + 167, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 170, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 171, 1, 3, 0.77, 1.0, 1.0, 1.0 );--0.85
setBlendColor( spep_5 + 173, 1, 3, 0.73, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 177, 1, 3, 0.68, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 178, 1, 3, 0.63, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 179, 1, 3, 0.59, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 181, 1, 3, 0.56, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 183, 1, 3, 0.51, 0.96, 1.0, 1.0 );
setBlendColor( spep_5 + 185, 1, 3, 0.47, 0.92, 1.0, 1.0 );
setBlendColor( spep_5 + 187, 1, 3, 0.43, 0.87, 1.0, 1.0 );
setBlendColor( spep_5 + 189, 1, 3, 0.40, 0.83, 1.0, 1.0 );
setBlendColor( spep_5 + 191, 1, 3, 0.36, 0.79, 1.0, 1.0 );
setBlendColor( spep_5 + 193, 1, 3, 0.33, 0.75, 1.0, 1.0 );
setBlendColor( spep_5 + 195, 1, 3, 0.29, 0.71, 1.0, 1.0 );
setBlendColor( spep_5 + 197, 1, 3, 0.25, 0.66, 1.0, 1.0 );
setBlendColor( spep_5 + 199, 1, 3, 0.22, 0.62, 1.0, 1.0 );
setBlendColor( spep_5 + 201, 1, 3, 0.19, 0.58, 1.0, 1.0 );
setBlendColor( spep_5 + 203, 1, 3, 0.16, 0.55, 1.0, 1.0 );
setBlendColor( spep_5 + 205, 1, 3, 0.14, 0.52, 1.0, 1.0 );--
setBlendColor( spep_5 + 207, 1, 3, 0.16, 0.54, 1.0, 1.0 );
setBlendColor( spep_5 + 209, 1, 3, 0.18, 0.56, 1.0, 1.0 );
setBlendColor( spep_5 + 211, 1, 3, 0.19, 0.58, 1.0, 1.0 );
setBlendColor( spep_5 + 213, 1, 3, 0.22, 0.6, 1.0, 1.0 );
setBlendColor( spep_5 + 215, 1, 3, 0.24, 0.62, 1.0, 1.0 );
setBlendColor( spep_5 + 217, 1, 3, 0.27, 0.65, 1.0, 1.0 );
setBlendColor( spep_5 + 219, 1, 3, 0.29, 0.67, 1.0, 1.0 );
setBlendColor( spep_5 + 221, 1, 3, 0.32, 0.70, 1.0, 1.0 );
setBlendColor( spep_5 + 223, 1, 3, 0.35, 0.73, 1.0, 1.0 );
setBlendColor( spep_5 + 225, 1, 3, 0.38, 0.76, 1.0, 1.0 );
setBlendColor( spep_5 + 227, 1, 3, 0.41, 0.79, 1.0, 1.0 );
setBlendColor( spep_5 + 229, 1, 3, 0.44, 0.82, 1.0, 1.0 );
setBlendColor( spep_5 + 231, 1, 3, 0.48, 0.86, 1.0, 1.0 );
setBlendColor( spep_5 + 233, 1, 3, 0.51, 0.89, 1.0, 1.0 );
setBlendColor( spep_5 + 235, 1, 3, 0.55, 0.93, 1.0, 1.0 );
setBlendColor( spep_5 + 237, 1, 3, 0.58, 0.96, 1.0, 1.0 );
setBlendColor( spep_5 + 239, 1, 3, 0.62, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 241, 1, 3, 0.70, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 243, 1, 3, 0.73, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 245, 1, 3, 0.77, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 247, 1, 3, 0.80, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 249, 1, 3, 0.84, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 251, 1, 3, 0.87, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 253, 1, 3, 0.90, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 255, 1, 3, 0.93, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 257, 1, 3, 0.95, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 259, 1, 3, 0.97, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 261, 1, 3, 0.98, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 263, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 271, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 272, 1, 3, 1.0, 1.0, 1.0, 0 );


a2=10;
b2=10;

setMoveKey( spep_5 + 0, 1, -11.5 +a2, 190.5 -b2, 0 );
setMoveKey( spep_5 + 1, 1, -12.7 +a2, 192.6 -b2, 0 );
setMoveKey( spep_5 + 2, 1, -14 +a2, 194.7 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -15.2 +a2, 196.7 -b2, 0 );
setMoveKey( spep_5 -3 + 8, 1, -16.4 +a2, 198.8 -b2, 0 );
setMoveKey( spep_5 -3 + 10, 1, -17.5 +a2, 200.7 -b2, 0 );
setMoveKey( spep_5 -3 + 12, 1, -18.7 +a2, 202.6 -b2, 0 );
setMoveKey( spep_5 -3 + 14, 1, -19.8 +a2, 204.6 -b2, 0 );
setMoveKey( spep_5 -3 + 16, 1, -20.8 +a2, 206.4 -b2, 0 );
setMoveKey( spep_5 -3 + 18, 1, -21.9 +a2, 208.2 -b2, 0 );
setMoveKey( spep_5 -3 + 20, 1, -22.9 +a2, 210 -b2, 0 );
setMoveKey( spep_5 -3 + 22, 1, -24 +a2, 211.7 -b2, 0 );
setMoveKey( spep_5 -3 + 24, 1, -25 +a2, 213.4 -b2, 0 );
setMoveKey( spep_5 -3 + 26, 1, -26 +a2, 215.1 -b2, 0 );
setMoveKey( spep_5 -3 + 28, 1, -26.9 +a2, 216.6 -b2, 0 );
setMoveKey( spep_5 -3 + 30, 1, -27.8 +a2, 218.2 -b2, 0 );
setMoveKey( spep_5 -3 + 32, 1, -28.7 +a2, 219.6 -b2, 0 );
setMoveKey( spep_5 -3 + 34, 1, -29.5 +a2, 221.1 -b2, 0 );
setMoveKey( spep_5 -3 + 36, 1, -30.3 +a2, 222.3 -b2, 0 );
setMoveKey( spep_5 -3 + 38, 1, -31.1 +a2, 223.5 -b2, 0 );
setMoveKey( spep_5 -3 + 40, 1, -31.8 +a2, 224.6 -b2, 0 );
setMoveKey( spep_5 -3 + 42, 1, -32.4 +a2, 225.7 -b2, 0 );
setMoveKey( spep_5 -3 + 44, 1, -32.9 +a2, 226.6 -b2, 0 );
setMoveKey( spep_5 -3 + 46, 1, -33.3 +a2, 227.2 -b2, 0 );
setMoveKey( spep_5 -3 + 48, 1, -33.6 +a2, 227.7 -b2, 0 );
setMoveKey( spep_5 -3 + 50, 1, -33.8 +a2, 227.9 -b2, 0 );
setMoveKey( spep_5 -3 + 52, 1, -33.7 +a2, 227.6 -b2, 0 );
setMoveKey( spep_5 -3 + 54, 1, -33.3 +a2, 226.8 -b2, 0 );
setMoveKey( spep_5 -3 + 56, 1, -32.8 +a2, 225.5 -b2, 0 );
setMoveKey( spep_5 -3 + 58, 1, -32.2 +a2, 224 -b2, 0 );
setMoveKey( spep_5 -3 + 60, 1, -30 +a2, 223 -b2, 0 );
setMoveKey( spep_5 -3 + 62, 1, -24.9 +a2, 221.8 -b2, 0 );
setMoveKey( spep_5 -3 + 64, 1, -17.5 +a2, 220.4 -b2, 0 );
setMoveKey( spep_5 -3 + 66, 1, -8.3 +a2, 219 -b2, 0 );
setMoveKey( spep_5 -3 + 68, 1, 2.2 +a2, 217.6 -b2, 0 );
setMoveKey( spep_5 -3 + 70, 1, 13.8 +a2, 215.9 -b2, 0 );
setMoveKey( spep_5 -3 + 72, 1, 26.2 +a2, 214.3 -b2, 0 );
setMoveKey( spep_5 -3 + 74, 1, 39.1 +a2, 212.6 -b2, 0 );
setMoveKey( spep_5 -3 + 76, 1, 52.4 +a2, 210.8 -b2, 0 );
setMoveKey( spep_5 -3 + 78, 1, 65.9 +a2, 209.1 -b2, 0 );
setMoveKey( spep_5 -3 + 80, 1, 79.4 +a2, 207.3 -b2, 0 );
setMoveKey( spep_5 -3 + 82, 1, 92.6 +a2, 205.5 -b2, 0 );
setMoveKey( spep_5 -3 + 84, 1, 105.6 +a2, 203.8 -b2, 0 );
setMoveKey( spep_5 -3 + 86, 1, 117.9 +a2, 202 -b2, 0 );
setMoveKey( spep_5 -3 + 88, 1, 129.4 +a2, 200.2 -b2, 0 );
setMoveKey( spep_5 -3 + 90, 1, 140.1 +a2, 198.4 -b2, 0 );
setMoveKey( spep_5 -3 + 92, 1, 149.2 +a2, 196.6 -b2, 0 );
setMoveKey( spep_5 -3 + 94, 1, 156.7 +a2, 194.9 -b2, 0 );
setMoveKey( spep_5 -3 + 96, 1, 161.8 +a2, 193.2 -b2, 0 );
setMoveKey( spep_5 -3 + 98, 1, 164 +a2, 191.6 -b2, 0 );
setMoveKey( spep_5 -3 + 100, 1, 164.3 +a2, 189.2 -b2, 0 );
setMoveKey( spep_5 -3 + 102, 1, 164.6 +a2, 186.8 -b2, 0 );
setMoveKey( spep_5 -3 + 104, 1, 164.9 +a2, 184.3 -b2, 0 );
setMoveKey( spep_5 -3 + 106, 1, 165.1 +a2, 181.8 -b2, 0 );
setMoveKey( spep_5 -3 + 108, 1, 165.5 +a2, 179.4 -b2, 0 );
setMoveKey( spep_5 -3 + 110, 1, 165.8 +a2, 176.9 -b2, 0 );
setMoveKey( spep_5 -3 + 112, 1, 166.1 +a2, 174.4 -b2, 0 );
setMoveKey( spep_5 -3 + 114, 1, 166.4 +a2, 172 -b2, 0 );
setMoveKey( spep_5 -3 + 116, 1, 166.7 +a2, 169.6 -b2, 0 );
setMoveKey( spep_5 -3 + 118, 1, 167 +a2, 167.1 -b2, 0 );
setMoveKey( spep_5 -3 + 120, 1, 167.2 +a2, 164.7 -b2, 0 );
setMoveKey( spep_5 -3 + 122, 1, 167.6 +a2, 162.2 -b2, 0 );
setMoveKey( spep_5 -3 + 124, 1, 167.8 +a2, 159.8 -b2, 0 );
setMoveKey( spep_5 -3 + 126, 1, 168.1 +a2, 157.3 -b2, 0 );
setMoveKey( spep_5 -3 + 128, 1, 168.5 +a2, 154.9 -b2, 0 );
setMoveKey( spep_5 -3 + 130, 1, 168.7 +a2, 152.4 -b2, 0 );
setMoveKey( spep_5 -3 + 132, 1, 169.1 +a2, 150 -b2, 0 );
setMoveKey( spep_5 -3 + 134, 1, 169.3 +a2, 147.5 -b2, 0 );
setMoveKey( spep_5 -3 + 136, 1, 169.6 +a2, 145 -b2, 0 );
setMoveKey( spep_5 -3 + 138, 1, 169.9 +a2, 142.6 -b2, 0 );
setMoveKey( spep_5 -3 + 140, 1, 170.2 +a2, 140.2 -b2, 0 );
setMoveKey( spep_5 -3 + 142, 1, 170.5 +a2, 137.7 -b2, 0 );
setMoveKey( spep_5 -3 + 144, 1, 170.8 +a2, 135.3 -b2, 0 );
setMoveKey( spep_5 -3 + 146, 1, 171.1 +a2, 132.8 -b2, 0 );
setMoveKey( spep_5 -3 + 148, 1, 171.4 +a2, 130.4 -b2, 0 );
setMoveKey( spep_5 -3 + 150, 1, 171.7 +a2, 127.9 -b2, 0 );
setMoveKey( spep_5 -3 + 152, 1, 172 +a2, 125.5 -b2, 0 );
setMoveKey( spep_5 -3 + 154, 1, 172.3 +a2, 123 -b2, 0 );
setMoveKey( spep_5 -3 + 156, 1, 172.6 +a2, 120.6 -b2, 0 );
setMoveKey( spep_5 -3 + 158, 1, 172.9 +a2, 118.1 -b2, 0 );
setMoveKey( spep_5 -3 + 160, 1, 173.2 +a2, 115.7 -b2, 0 );
setMoveKey( spep_5 -3 + 162, 1, 173.4 +a2, 113.2 -b2, 0 );
setMoveKey( spep_5 -3 + 164, 1, 173.7 +a2, 110.8 -b2, 0 );
setMoveKey( spep_5 -3 + 166, 1, 174 +a2, 108.3 -b2, 0 );
setMoveKey( spep_5 -3 + 168, 1, 174.3 +a2, 105.9 -b2, 0 );
setMoveKey( spep_5 -3 + 169, 1, 174.3 +a2, 105.9 -b2, 0 );
--setMoveKey( spep_5 -3 + 170, 1, 160, 245.2 , 0 );
--
--setMoveKey( spep_5 + 169, 1, 210, 85.2 , 0 );
--setMoveKey( spep_5 + 316, 1, 210, 85.2 , 0 );

a3=5;
b3=5;

setMoveKey( spep_5 -3 + 170, 1, 222.9 -a3, 119.4 -b3, 0 );
setMoveKey( spep_5 -3 + 172, 1, 201.8 -a3, 91.1 -b3, 0 );
setMoveKey( spep_5 -3 + 174, 1, 214.6 -a3, 100.8 -b3, 0 );
setMoveKey( spep_5 -3 + 176, 1, 202 -a3, 87.9 -b3, 0 );
setMoveKey( spep_5 -3 + 178, 1, 199.6 -a3, 80.5 -b3, 0 );
setMoveKey( spep_5 -3 + 180, 1, 202 -a3, 90.3 -b3, 0 );
setMoveKey( spep_5 -3 + 182, 1, 200.6 -a3, 82.5 -b3, 0 );
setMoveKey( spep_5 -3 + 184, 1, 199 -a3, 87.7 -b3, 0 );
setMoveKey( spep_5 -3 + 186, 1, 201.7 -a3, 79.8 -b3, 0 );
setMoveKey( spep_5 -3 + 188, 1, 202.9 -a3, 90.3 -b3, 0 );
setMoveKey( spep_5 -3 + 190, 1, 204.2 -a3, 80.9 -b3, 0 );
setMoveKey( spep_5 -3 + 192, 1, 200.6 -a3, 87.5 -b3, 0 );
setMoveKey( spep_5 -3 + 194, 1, 202.4 -a3, 81.3 -b3, 0 );
setMoveKey( spep_5 -3 + 196, 1, 200.5 -a3, 88.4 -b3, 0 );
setMoveKey( spep_5 -3 + 198, 1, 201.6 -a3, 82.1 -b3, 0 );
setMoveKey( spep_5 -3 + 200, 1, 202.8 -a3, 86.9 -b3, 0 );
setMoveKey( spep_5 -3 + 202, 1, 203.9 -a3, 81 -b3, 0 );
setMoveKey( spep_5 -3 + 204, 1, 199.7 -a3, 90.3 -b3, 0 );
setMoveKey( spep_5 -3 + 206, 1, 203.1 -a3, 81.9 -b3, 0 );
setMoveKey( spep_5 -3 + 208, 1, 200.5 -a3, 87.1 -b3, 0 );
setMoveKey( spep_5 -3 + 210, 1, 201.7 -a3, 79.1 -b3, 0 );
setMoveKey( spep_5 -3 + 212, 1, 202.4 -a3, 88.3 -b3, 0 );
setMoveKey( spep_5 -3 + 214, 1, 203.7 -a3, 81 -b3, 0 );
setMoveKey( spep_5 -3 + 216, 1, 200.8 -a3, 90.3 -b3, 0 );
setMoveKey( spep_5 -3 + 218, 1, 202.7 -a3, 80 -b3, 0 );
setMoveKey( spep_5 -3 + 220, 1, 200.1 -a3, 87.9 -b3, 0 );
setMoveKey( spep_5 -3 + 222, 1, 201.1 -a3, 81.4 -b3, 0 );
setMoveKey( spep_5 -3 + 224, 1, 198.8 -a3, 88.8 -b3, 0 );
setMoveKey( spep_5 -3 + 226, 1, 200.6 -a3, 82.1 -b3, 0 );
setMoveKey( spep_5 -3 + 228, 1, 203.3 -a3, 88.3 -b3, 0 );
setMoveKey( spep_5 -3 + 230, 1, 198.6 -a3, 80.6 -b3, 0 );
setMoveKey( spep_5 -3 + 232, 1, 201 -a3, 87.7 -b3, 0 );
setMoveKey( spep_5 -3 + 234, 1, 203.7 -a3, 81.1 -b3, 0 );
setMoveKey( spep_5 -3 + 236, 1, 202.5 -a3, 89.3 -b3, 0 );
setMoveKey( spep_5 -3 + 238, 1, 199.4 -a3, 79.1 -b3, 0 );
setMoveKey( spep_5 -3 + 240, 1, 201.5 -a3, 88.3 -b3, 0 );
setMoveKey( spep_5 -3 + 242, 1, 202.2 -a3, 81.3 -b3, 0 );
setMoveKey( spep_5 -3 + 244, 1, 201.6 -a3, 88.1 -b3, 0 );
setMoveKey( spep_5 -3 + 246, 1, 204 -a3, 81.6 -b3, 0 );
setMoveKey( spep_5 -3 + 248, 1, 200 -a3, 87.3 -b3, 0 );
setMoveKey( spep_5 -3 + 250, 1, 201.1 -a3, 81.3 -b3, 0 );
setMoveKey( spep_5 -3 + 252, 1, 203.3 -a3, 87.8 -b3, 0 );
setMoveKey( spep_5 -3 + 254, 1, 200 -a3, 81.4 -b3, 0 );
setMoveKey( spep_5 -3 + 256, 1, 198.9 -a3, 89.1 -b3, 0 );
setMoveKey( spep_5 -3 + 258, 1, 201.5 -a3, 80.1 -b3, 0 );
setMoveKey( spep_5 -3 + 260, 1, 203.4 -a3, 87.1 -b3, 0 );
setMoveKey( spep_5 -3 + 262, 1, 201.2 -a3, 82.1 -b3, 0 );
setMoveKey( spep_5 -3 + 264, 1, 199.4 -a3, 87.7 -b3, 0 );
setMoveKey( spep_5 -3 + 266, 1, 201.9 -a3, 81.1 -b3, 0 );
setMoveKey( spep_5 -3 + 268, 1, 203.1 -a3, 87.8 -b3, 0 );
setMoveKey( spep_5 -3 + 270, 1, 200.5 -a3, 79.1 -b3, 0 );
setMoveKey( spep_5 -3 + 272, 1, 201.4 -a3, 87.3 -b3, 0 );

setScaleKey( spep_5 + 0, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 1, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 2, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 6, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 8, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 24, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 26, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 42, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 44, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 58, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 60, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 62, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 64, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 66, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 68, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 70, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 72, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 74, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 76, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 78, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 80, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 82, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 84, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 86, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 88, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 90, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 94, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 96, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 98, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 100, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 102, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 104, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 106, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 108, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 110, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 112, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 114, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 116, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 118, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 120, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 122, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 124, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 126, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 128, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 130, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 132, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 134, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 136, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 138, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 140, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 142, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 144, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 146, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 148, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 150, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 152, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 154, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 156, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 158, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 160, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 162, 1, 0.48, 0.48 );
setScaleKey( spep_5 -3 + 164, 1, 0.48, 0.48 );
setScaleKey( spep_5 -3 + 166, 1, 0.47, 0.47 );
setScaleKey( spep_5 -3 + 168, 1, 0.46, 0.46 );
setScaleKey( spep_5 -3 + 169, 1, 0.46, 0.46 );
--setScaleKey( spep_5 -3 + 170, 1, 0.46, 0.46 );--
--
--setScaleKey( spep_5 + 169, 1, 0.38, 0.38 );--
--setScaleKey( spep_5 + 316, 1, 0.38, 0.38 );--
setScaleKey( spep_5 -3 + 170, 1, 0.48, 0.48 );
setScaleKey( spep_5 -3 + 172, 1, 0.4, 0.4 );
setScaleKey( spep_5 -3 + 174, 1, 0.44, 0.44 );
setScaleKey( spep_5 -3 + 176, 1, 0.4, 0.4 );
setScaleKey( spep_5 -3 + 272, 1, 0.4, 0.4 );

setRotateKey( spep_5 + 0, 1, -57.1 );
setRotateKey( spep_5 + 1, 1, -57 );
setRotateKey( spep_5 + 2, 1, -57 );
setRotateKey( spep_5 + 3, 1, -57 );
setRotateKey( spep_5 + 4, 1, -57 );
setRotateKey( spep_5 + 5, 1, -57 );
setRotateKey( spep_5 + 6, 1, -57 );
setRotateKey( spep_5 -3 + 168, 1, -57 );--
setRotateKey( spep_5 -3 + 169, 1, -57 );--
--
--setRotateKey( spep_5 + 169, 1, 15 );--
--setRotateKey( spep_5 + 316, 1, 15 );--
setRotateKey( spep_5 -3 +170, 1, 14.1 );
setRotateKey( spep_5 -3 +172, 1, 14.2 );
setRotateKey( spep_5 -3 +272, 1, 14.2 );


-- ** 音 ** --
--渦ぶわーん1
SE020 = playSe( spep_5 + 6, 1278 ,"",0.5);
stopSe( spep_5 + 162, SE020, 18 );

--渦ぶわーん2
SE021 = playSe( spep_5 + 6, 1158 ,"",0.5);
stopSe( spep_5 + 158, SE021, 18 );

--杖の魔法音1
SE022 = playSe( spep_5 + 32, 1221 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 32, SE022, 0 );
setSeVolumeByWorkId( spep_5 + 33, SE022, 8 );
setSeVolumeByWorkId( spep_5 + 34, SE022, 16 );
setSeVolumeByWorkId( spep_5 + 35, SE022, 23 );
setSeVolumeByWorkId( spep_5 + 36, SE022, 26 );
setSeVolumeByWorkId( spep_5 + 37, SE022, 33 );
setSeVolumeByWorkId( spep_5 + 38, SE022, 36 );
setSeVolumeByWorkId( spep_5 + 39, SE022, 43 );
setSeVolumeByWorkId( spep_5 + 40, SE022, 46 );
setSeVolumeByWorkId( spep_5 + 41, SE022, 53 );
setSeVolumeByWorkId( spep_5 + 42, SE022, 56 );
setStartTimeMs( SE022,  100 );
setPitch( spep_5 + 32, SE022, 1100 );
setTimeStretch( SE022, 1.73, 10, 1 );

--杖の魔法音2
SE023 = playSe( spep_5 + 52, 1221 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 52, SE023, 0 );
setSeVolumeByWorkId( spep_5 + 53, SE023, 5 );
setSeVolumeByWorkId( spep_5 + 54, SE023, 15 );
setSeVolumeByWorkId( spep_5 + 55, SE023, 25 );
setSeVolumeByWorkId( spep_5 + 56, SE023, 30 );
setSeVolumeByWorkId( spep_5 + 57, SE023, 40 );
setSeVolumeByWorkId( spep_5 + 58, SE023, 45 );
setSeVolumeByWorkId( spep_5 + 59, SE023, 50 );
setSeVolumeByWorkId( spep_5 + 60, SE023, 55 );
setSeVolumeByWorkId( spep_5 + 61, SE023, 60 );
setSeVolumeByWorkId( spep_5 + 62, SE023, 65 );
setStartTimeMs( SE023,  150 );
setPitch( spep_5 + 52, SE023, 1100 );
setTimeStretch( SE023, 1.73, 10, 1 );

--魔法陣決まる
SE024 = playSe( spep_5 + 46, 1026 ,"",0.8);
setSeVolumeByWorkId( spep_5 + 46, SE024, 78 );

--杖の魔法音3
SE025 = playSe( spep_5 + 150, 1221 ,"",0.8);
setSeVolumeByWorkId( spep_5 + 150, SE025, 74 );
setPitch( spep_5 + 150, SE025, 900 );
setTimeStretch( SE025, 1.6, 10, 1 );

--杖の魔法音4
SE026 = playSe( spep_5 + 150, 1115 ,"",0.5);
stopSe( spep_5 + 196, SE026, 50 );

--爆発1
--SE027 = playSe( spep_5 + 156, 1069 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 156, SE027, 62 );

--爆発2
SE028 = playSe( spep_5 + 158, 1067 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 158, SE028, 112 );

--爆発3
SE029 = playSe( spep_5 + 168, 1126 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 168, SE029, 56 );

--杖の魔法音5
SE030 = playSe( spep_5 + 180, 1221,"",0.5 );
setSeVolumeByWorkId( spep_5 + 180, SE030, 76 );
setPitch( spep_5 + 180, SE030, 900 );
setTimeStretch( SE030, 1.6, 10, 1 );

--連続衝撃波1
SE031 = playSe( spep_5 + 184, 1016,"",0.5 );
setSeVolumeByWorkId( spep_5 + 184, SE031, 68 );
stopSe( spep_5 + 120, SE031, 0 );

--連続衝撃波2
SE032 = playSe( spep_5 + 196, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 196, SE032, 56 );
stopSe( spep_5 + 217, SE032, 0 );

--杖の魔法音6
SE033 = playSe( spep_5 + 202, 1221 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 202, SE033, 68 );
setPitch( spep_5 + 202, SE033, 900 );
setTimeStretch( SE033, 1.6, 10, 1 );
stopSe(spep_5 + 220,SE033,10);

--連続衝撃波3
--SE034 = playSe( spep_5 + 202, 1015 );
--setSeVolumeByWorkId( spep_5 + 202, SE034, 46 );

--連続衝撃波4
SE035 = playSe( spep_5 + 208, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 208, SE035, 58 );
stopSe( spep_5 + 227, SE035, 20 );

--連続衝撃波5
--SE036 = playSe( spep_5 + 212, 1015 );
--setSeVolumeByWorkId( spep_5 + 212, SE036, 47 );

--連続衝撃波6
SE037 = playSe( spep_5 + 218, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 218, SE037, 58 );
stopSe( spep_5 + 241, SE037, 20 );

--連続衝撃波7
--SE038 = playSe( spep_5 + 228, 1015 );
--setSeVolumeByWorkId( spep_5 + 228, SE038, 58 );

--杖の魔法音7
SE039 = playSe( spep_5 + 232, 1221 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 232, SE039, 67 );
setPitch( spep_5 + 232, SE039, 900 );
setTimeStretch( SE039, 1.6, 10, 1 );

--連続衝撃波8
SE040 = playSe( spep_5 + 232, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 232, SE040, 68 );
stopSe( spep_5 + 251, SE040, 20 );

--連続衝撃波9
--SE041 = playSe( spep_5 + 238, 1015 );
--setSeVolumeByWorkId( spep_5 + 238, SE041, 58 );

--連続衝撃波10
SE042 = playSe( spep_5 + 242, 1016,"",0.5 );
setSeVolumeByWorkId( spep_5 + 242, SE042, 59 );
stopSe( spep_5 + 266, SE042, 20 );

--連続衝撃波11
--SE043 = playSe( spep_5 + 252, 1015 );
--setSeVolumeByWorkId( spep_5 + 252, SE043, 59 );

--連続衝撃波12
SE044 = playSe( spep_5 + 257, 1016,"",0.5 );
setSeVolumeByWorkId( spep_5 + 257, SE044, 77 );
stopSe( spep_5 + 281, SE044, 20 );

--杖の魔法音8
--SE045 = playSe( spep_5 + 262, 1221,"",0.5 );
setSeVolumeByWorkId( spep_5 + 262, SE045, 68 );
setPitch( spep_5 + 262, SE045, 900 );
setTimeStretch( SE045, 1.6, 10, 1 );

--連続衝撃波13
--SE046 = playSe( spep_5 + 268, 1015 );
--setSeVolumeByWorkId( spep_5 + 268, SE046, 58 );

--連続衝撃波14
SE047 = playSe( spep_5 + 272, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 272, SE047, 56 );
stopSe( spep_5 + 295, SE047, 20 );

--連続衝撃波15
--SE048 = playSe( spep_5 + 282, 1015 );
--setSeVolumeByWorkId( spep_5 + 282, SE048, 45 );

--連続衝撃波16
SE049 = playSe( spep_5 + 286, 1016,"",0.5 );
setSeVolumeByWorkId( spep_5 + 286, SE049, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 316, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 206 );
endPhase( spep_5 + 306 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 髪掻き上げ〜手に気溜める(196F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0 );  --髪掻き上げ〜手に気溜める(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 196, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 196, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --敵奥集中線    ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 196, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 196, first_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 35,  906, 38, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_0 + 35, shuchusen1, 38, 25 );
setEffMoveKey(   spep_0 + 35, shuchusen1, 0, 150 , 0 );
setEffMoveKey(   spep_0 + 73, shuchusen1, 0, 150 , 0 );
setEffScaleKey(  spep_0 + 35, shuchusen1, 1.2, 1.5 );
setEffScaleKey(  spep_0 + 73, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 35, shuchusen1, 0 );
setEffRotateKey( spep_0 + 73, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 35, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 63, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 73, shuchusen1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 113, 1, 1 );
changeAnime( spep_0 + 113, 1, 102 );

setMoveKey( spep_0 -3 + 116, 1, 355.9, -827.4 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 354.7, -823.3 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 351.2, -811.2 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 345.4, -790.9 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 337.2, -762.6 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 326.7, -726.1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 313.8, -681.6 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 298.6, -628.9 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 281.1, -568.2 , 0 );

setScaleKey( spep_0 -3 + 116, 1, 2, 2 );

setRotateKey( spep_0 -3 + 116, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 196, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 音 ** --
--顔アップ1
SE001 = playSe( spep_0 + 50, 1255 );
setSeVolumeByWorkId( spep_0 + 50, SE001, 0 );
setSeVolumeByWorkId( spep_0 + 51, SE001, 6 );
setSeVolumeByWorkId( spep_0 + 52, SE001, 11 );
setSeVolumeByWorkId( spep_0 + 53, SE001, 21 );
setSeVolumeByWorkId( spep_0 + 54, SE001, 31 );
setSeVolumeByWorkId( spep_0 + 55, SE001, 41 );
setSeVolumeByWorkId( spep_0 + 56, SE001, 51 );
setSeVolumeByWorkId( spep_0 + 57, SE001, 61 );
setSeVolumeByWorkId( spep_0 + 58, SE001, 71 );
stopSe( spep_0 + 90, SE001, 40 );
setStartTimeMs( SE001,  1100 );

--髪ふわ
SE002 = playSe( spep_0 + 10, 1112 );
setSeVolumeByWorkId( spep_0 + 10, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 11, SE002, 6 );
setSeVolumeByWorkId( spep_0 + 12, SE002, 12 );
setSeVolumeByWorkId( spep_0 + 13, SE002, 24 );
setSeVolumeByWorkId( spep_0 + 14, SE002, 36 );
setSeVolumeByWorkId( spep_0 + 15, SE002, 48 );
setSeVolumeByWorkId( spep_0 + 16, SE002, 58 );
setStartTimeMs( SE002,  167 );
setPitch( spep_0 + 10, SE002, 800 );
setTimeStretch( SE002, 1.53, 10, 1 );
setBandpassFilter( spep_0 + 10, SE002, 700, 24000 );

--顔アップ2
SE003 = playSe( spep_0 + 38, 46 );
setSeVolumeByWorkId( spep_0 + 38, SE003, 41 );
stopSe( spep_0 + 100, SE003, 24 );
setPitch( spep_0 + 38, SE003, -200 );
setTimeStretch( SE003, 0.87, 10, 1 );

--顔アップ3
SE004 = playSe( spep_0 + 40, 1222 );
setSeVolumeByWorkId( spep_0 + 40, SE004, 81 );
setTimeStretch( SE004, 0.72, 10, 1 );

--腕ひく
SE005 = playSe( spep_0 + 108, 1003 );
setSeVolumeByWorkId( spep_0 + 108, SE005, 61 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 281.1, -568.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 261.8, -501.4 , 0 );
    setMoveKey( SP_dodge + 4, 1, 244.2, -440.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 229, -388 , 0 );
    setMoveKey( SP_dodge + 8, 1, 216.2, -343.5 , 0 );
    setMoveKey( SP_dodge + 10, 1, 205.7, -307 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2, 2 );
    setScaleKey( SP_dodge + 10, 1, 2, 2 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
    
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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_0 + 147,  906, 48, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_0 + 147, shuchusen2, 48, 25 );
setEffMoveKey(   spep_0 + 147, shuchusen2, -50, 250 , 0 );
setEffMoveKey(   spep_0 + 195, shuchusen2, -50, 250 , 0 );
setEffScaleKey(  spep_0 + 147, shuchusen2, 1.5, 1.9 );
setEffScaleKey(  spep_0 + 195, shuchusen2, 1.5, 1.9 );
setEffRotateKey( spep_0 + 147, shuchusen2, 0 );
setEffRotateKey( spep_0 + 195, shuchusen2, 0 );
setEffAlphaKey(  spep_0 + 147, shuchusen2, 255 );
setEffAlphaKey(  spep_0 + 195, shuchusen2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 196, 1, 0 );

setMoveKey( spep_0 -3 + 134, 1, 261.8, -501.4 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 244.2, -440.7 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 229, -388 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 216.2, -343.5 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 205.7, -307 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 197.5, -278.7 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 191.6, -258.4 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 188.1, -246.3 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 203.8, -302 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 193.1, -275.2 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 186.9, -239.2 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 182.3, -248.5 , 0 );
setMoveKey( spep_0 -3 + 199, 1, 182.3, -248.5 , 0 );

setScaleKey( spep_0 -3 + 148, 1, 2, 2 );
setScaleKey( spep_0 -3 + 150, 1, 2.2, 2.2 );
setScaleKey( spep_0 -3 + 152, 1, 2, 2 );
setScaleKey( spep_0 -3 + 154, 1, 2.1, 2.1 );
setScaleKey( spep_0 -3 + 156, 1, 2, 2 );
setScaleKey( spep_0 -3 + 198, 1, 2, 2 );
setScaleKey( spep_0 -3 + 199, 1, 2, 2 );

setRotateKey( spep_0 -3 + 198, 1, 0 );
setRotateKey( spep_0 -3 + 199, 1, 0 );

-- ** 音 ** --
--気弾溜め1
SE006 = playSe( spep_0 + 154, 1264 );
setSeVolumeByWorkId( spep_0 + 154, SE006, 63 );
stopSe( spep_0 +196 + 4, SE006, 62 );
setBandpassFilter( spep_0 + 154, SE006, 800, 24000 );

--気弾溜め2
SE007 = playSe( spep_0 + 154, 1020 );

--気弾溜め3
SE008 = playSe( spep_0 + 154, 1209 );
setSeVolumeByWorkId( spep_0 + 154, SE008, 52 );
stopSe( spep_0 +196 + 4, SE008, 36 );

--気弾溜め4
SE009 = playSe( spep_0 + 154, 1191 );
stopSe( spep_0 +196 + 12, SE009, 32 );

--気弾溜め5
SE010 = playSe( spep_0 + 184, 1020 );

-- ** 白フェード ** --
entryFade( spep_0 + 188, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 196;


--------------------------------------
--敵前,敵奥エフェクト球(86F)
--------------------------------------
-- ** エフェクト等 ** --
tama_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --敵前エフェクト球(ef_003)
setEffMoveKey( spep_1 + 0, tama_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, tama_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tama_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, tama_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tama_f, 0 );
setEffRotateKey( spep_1 + 86, tama_f, 0 );
setEffAlphaKey( spep_1 + 0, tama_f, 255 );
setEffAlphaKey( spep_1 + 86, tama_f, 255 );

tama_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --敵奥エフェクト球(ef_004)
setEffMoveKey( spep_1 + 0, tama_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, tama_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tama_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, tama_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tama_b, 0 );
setEffRotateKey( spep_1 + 86, tama_b, 0 );
setEffAlphaKey( spep_1 + 0, tama_b, 255 );
setEffAlphaKey( spep_1 + 86, tama_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 25,  906, 60, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_1 + 25, shuchusen3, 60, 25 );
setEffMoveKey(   spep_1 + 25, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_1 + 85, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_1 + 25, shuchusen3, 1.8, 1.8 );
setEffScaleKey(  spep_1 + 85, shuchusen3, 1.8, 1.8 );
setEffRotateKey( spep_1 + 25, shuchusen3, 0 );
setEffRotateKey( spep_1 + 85, shuchusen3, 0 );
setEffAlphaKey(  spep_1 + 25, shuchusen3, 255 );
setEffAlphaKey(  spep_1 + 85, shuchusen3, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 86, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 32, 1, 108 );
changeAnime( spep_1 -3 + 36, 1, 106 );

a1=20;

setMoveKey( spep_1 + 0, 1, -18.9 +a1, 15.9 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -18.9 +a1, 15.9 , 0 );
setMoveKey( spep_1 -3 + 31, 1, -22.6 +a1, 19.1 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 33.6 +a1, 27.7 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 16.4 +a1, 20.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -24.2 +a1, 42.5 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -40 +a1, 41.7 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -24.2 +a1, 69.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -41.5 +a1, 45.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -24.2 +a1, 44.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -40.5 +a1, 39.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -21.8 +a1, 41.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -37.3 +a1, 16.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -20.9 +a1, 43.5 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -39.8 +a1, 33.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -21.5 +a1, 43.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -42.2 +a1, 42.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -25.9 +a1, 54.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -35.2 +a1, 33.3 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -24.2 +a1, 46.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -35.3 +a1, 38.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -25.9 +a1, 54.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -32.3 +a1, 33.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -25.7 +a1, 47.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -30.9 +a1, 34.3 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -24.2 +a1, 51.7 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -32.3 +a1, 38.7 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -25.7 +a1, 41.7 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -36.2 +a1, 39.3 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -25.9 +a1, 52.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -32.3 +a1, 38.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -25.7 +a1, 41.7 , 0 );
setMoveKey( spep_1 -3 + 89, 1, -25.7 +a1, 41.7 , 0 );

setScaleKey( spep_1 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 28, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 31, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 32, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 35, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 36, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 38, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 40, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 42, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 44, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 46, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 48, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 56, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 58, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 60, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 64, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 68, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 80, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 82, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 84, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 89, 1, 1.2, 1.2 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 35, 1, 0 );
setRotateKey( spep_1 -3 + 36, 1, -57 );
setRotateKey( spep_1 -3 + 89, 1, -57 );

-- ** 音 ** --
--気弾に包まれる1
SE011 = playSe( spep_1 + 36, 1023 );
setSeVolumeByWorkId( spep_1 + 36, SE011, 78 );

--気弾に包まれる2
SE012 = playSe( spep_1 + 36, 1033 );

--気弾に包まれる3
SE013 = playSe( spep_1 + 36, 1184 );
stopSe( spep_1 + 86 + 2, SE013, 80 );

--気弾に包まれる4
SE014 = playSe( spep_1 + 36, 1166 );
setSeVolumeByWorkId( spep_1 + 36, SE014, 74 );
stopSe( spep_1 + 86 + 14, SE014, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_1 + 80, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;


--------------------------------------
--セリフカットインポーズ(106F)
--------------------------------------

-- ** エフェクト等 ** --
pause = entryEffect( spep_2 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --髪掻き上げ〜手に気溜める(ef_001)
setEffMoveKey( spep_2 + 0, pause, 0, 0 , 0 );
setEffMoveKey( spep_2 + 106, pause, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, pause, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, pause, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pause, 0 );
setEffRotateKey( spep_2 + 106, pause, 0 );
setEffAlphaKey( spep_2 + 0, pause, 255 );
setEffAlphaKey( spep_2 + 106, pause, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_2 + 0,  906, 105, 0x100, -1, 0, 130, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen4, 105, 25 );
setEffMoveKey(   spep_2 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_2 + 105, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_2 + 0, shuchusen4, 1.4, 1.4 );
setEffScaleKey(  spep_2 + 105, shuchusen4, 1.4, 1.4 );
setEffRotateKey( spep_2 + 0, shuchusen4, 0 );
setEffRotateKey( spep_2 + 105, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 0, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 24, shuchusen4, 0 );
setEffAlphaKey(  spep_2 + 25, shuchusen4, 255 );
setEffAlphaKey(  spep_2 + 105, shuchusen4, 255 );

spep_x = spep_2 + 12;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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
SE015 = playSe( spep_2 + 22, 1018 );

--杖構える
SE016 = playSe( spep_2 + 24, 1004 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 106, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 88, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 106;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;


--------------------------------------
--杖構え〜杖発光(76F)
--------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --杖構え〜杖発光(ef_006)
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 76, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 76, tame, 255 );

-- ** 音 ** --
--杖光る
SE018 = playSe( spep_4 + 28, 1221 );
setSeVolumeByWorkId( spep_4 + 28, SE018, 141 );
setPitch( spep_4 + 28, SE018, 900 );
setTimeStretch( SE018, 1.6, 10, 1 );

--杖光る
SE019 = playSe( spep_4 + 28, 12 );
setSeVolumeByWorkId( spep_4 + 28, SE019, 82 );
setBandpassFilter   ( spep_4 + 28, SE019, 300, 24000 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 76, 0, 0, 0, 0, 180);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4 + 66, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4 + 76;


--------------------------------------
--杖構え〜杖発光(316F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --フィニッシュ敵前エフェクト(ef_007)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 316, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 316, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 316, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 316, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --フィニッシュ敵奥エフェクト(ef_008)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 316, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 316, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 316, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 316, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
--setDisp( spep_5 + 167, 1, 0 );
--setDisp( spep_5 + 169, 1, 1 );
--setDisp( spep_5 + 316, 1, 0 );
setDisp( spep_5 -3 + 272, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5 -3 + 170, 1, 105 );

setBlendColor( spep_5 + 167, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 170, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 171, 1, 3, 0.77, 1.0, 1.0, 1.0 );--0.85
setBlendColor( spep_5 + 173, 1, 3, 0.73, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 177, 1, 3, 0.68, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 178, 1, 3, 0.63, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 179, 1, 3, 0.59, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 181, 1, 3, 0.56, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 183, 1, 3, 0.51, 0.96, 1.0, 1.0 );
setBlendColor( spep_5 + 185, 1, 3, 0.47, 0.92, 1.0, 1.0 );
setBlendColor( spep_5 + 187, 1, 3, 0.43, 0.87, 1.0, 1.0 );
setBlendColor( spep_5 + 189, 1, 3, 0.40, 0.83, 1.0, 1.0 );
setBlendColor( spep_5 + 191, 1, 3, 0.36, 0.79, 1.0, 1.0 );
setBlendColor( spep_5 + 193, 1, 3, 0.33, 0.75, 1.0, 1.0 );
setBlendColor( spep_5 + 195, 1, 3, 0.29, 0.71, 1.0, 1.0 );
setBlendColor( spep_5 + 197, 1, 3, 0.25, 0.66, 1.0, 1.0 );
setBlendColor( spep_5 + 199, 1, 3, 0.22, 0.62, 1.0, 1.0 );
setBlendColor( spep_5 + 201, 1, 3, 0.19, 0.58, 1.0, 1.0 );
setBlendColor( spep_5 + 203, 1, 3, 0.16, 0.55, 1.0, 1.0 );
setBlendColor( spep_5 + 205, 1, 3, 0.14, 0.52, 1.0, 1.0 );--
setBlendColor( spep_5 + 207, 1, 3, 0.16, 0.54, 1.0, 1.0 );
setBlendColor( spep_5 + 209, 1, 3, 0.18, 0.56, 1.0, 1.0 );
setBlendColor( spep_5 + 211, 1, 3, 0.19, 0.58, 1.0, 1.0 );
setBlendColor( spep_5 + 213, 1, 3, 0.22, 0.6, 1.0, 1.0 );
setBlendColor( spep_5 + 215, 1, 3, 0.24, 0.62, 1.0, 1.0 );
setBlendColor( spep_5 + 217, 1, 3, 0.27, 0.65, 1.0, 1.0 );
setBlendColor( spep_5 + 219, 1, 3, 0.29, 0.67, 1.0, 1.0 );
setBlendColor( spep_5 + 221, 1, 3, 0.32, 0.70, 1.0, 1.0 );
setBlendColor( spep_5 + 223, 1, 3, 0.35, 0.73, 1.0, 1.0 );
setBlendColor( spep_5 + 225, 1, 3, 0.38, 0.76, 1.0, 1.0 );
setBlendColor( spep_5 + 227, 1, 3, 0.41, 0.79, 1.0, 1.0 );
setBlendColor( spep_5 + 229, 1, 3, 0.44, 0.82, 1.0, 1.0 );
setBlendColor( spep_5 + 231, 1, 3, 0.48, 0.86, 1.0, 1.0 );
setBlendColor( spep_5 + 233, 1, 3, 0.51, 0.89, 1.0, 1.0 );
setBlendColor( spep_5 + 235, 1, 3, 0.55, 0.93, 1.0, 1.0 );
setBlendColor( spep_5 + 237, 1, 3, 0.58, 0.96, 1.0, 1.0 );
setBlendColor( spep_5 + 239, 1, 3, 0.62, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 241, 1, 3, 0.70, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 243, 1, 3, 0.73, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 245, 1, 3, 0.77, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 247, 1, 3, 0.80, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 249, 1, 3, 0.84, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 251, 1, 3, 0.87, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 253, 1, 3, 0.90, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 255, 1, 3, 0.93, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 257, 1, 3, 0.95, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 259, 1, 3, 0.97, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 261, 1, 3, 0.98, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 263, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 271, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_5 + 272, 1, 3, 1.0, 1.0, 1.0, 0 );


a2=10;
b2=10;

setMoveKey( spep_5 + 0, 1, -11.5 +a2, 190.5 -b2, 0 );
setMoveKey( spep_5 + 1, 1, -12.7 +a2, 192.6 -b2, 0 );
setMoveKey( spep_5 + 2, 1, -14 +a2, 194.7 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -15.2 +a2, 196.7 -b2, 0 );
setMoveKey( spep_5 -3 + 8, 1, -16.4 +a2, 198.8 -b2, 0 );
setMoveKey( spep_5 -3 + 10, 1, -17.5 +a2, 200.7 -b2, 0 );
setMoveKey( spep_5 -3 + 12, 1, -18.7 +a2, 202.6 -b2, 0 );
setMoveKey( spep_5 -3 + 14, 1, -19.8 +a2, 204.6 -b2, 0 );
setMoveKey( spep_5 -3 + 16, 1, -20.8 +a2, 206.4 -b2, 0 );
setMoveKey( spep_5 -3 + 18, 1, -21.9 +a2, 208.2 -b2, 0 );
setMoveKey( spep_5 -3 + 20, 1, -22.9 +a2, 210 -b2, 0 );
setMoveKey( spep_5 -3 + 22, 1, -24 +a2, 211.7 -b2, 0 );
setMoveKey( spep_5 -3 + 24, 1, -25 +a2, 213.4 -b2, 0 );
setMoveKey( spep_5 -3 + 26, 1, -26 +a2, 215.1 -b2, 0 );
setMoveKey( spep_5 -3 + 28, 1, -26.9 +a2, 216.6 -b2, 0 );
setMoveKey( spep_5 -3 + 30, 1, -27.8 +a2, 218.2 -b2, 0 );
setMoveKey( spep_5 -3 + 32, 1, -28.7 +a2, 219.6 -b2, 0 );
setMoveKey( spep_5 -3 + 34, 1, -29.5 +a2, 221.1 -b2, 0 );
setMoveKey( spep_5 -3 + 36, 1, -30.3 +a2, 222.3 -b2, 0 );
setMoveKey( spep_5 -3 + 38, 1, -31.1 +a2, 223.5 -b2, 0 );
setMoveKey( spep_5 -3 + 40, 1, -31.8 +a2, 224.6 -b2, 0 );
setMoveKey( spep_5 -3 + 42, 1, -32.4 +a2, 225.7 -b2, 0 );
setMoveKey( spep_5 -3 + 44, 1, -32.9 +a2, 226.6 -b2, 0 );
setMoveKey( spep_5 -3 + 46, 1, -33.3 +a2, 227.2 -b2, 0 );
setMoveKey( spep_5 -3 + 48, 1, -33.6 +a2, 227.7 -b2, 0 );
setMoveKey( spep_5 -3 + 50, 1, -33.8 +a2, 227.9 -b2, 0 );
setMoveKey( spep_5 -3 + 52, 1, -33.7 +a2, 227.6 -b2, 0 );
setMoveKey( spep_5 -3 + 54, 1, -33.3 +a2, 226.8 -b2, 0 );
setMoveKey( spep_5 -3 + 56, 1, -32.8 +a2, 225.5 -b2, 0 );
setMoveKey( spep_5 -3 + 58, 1, -32.2 +a2, 224 -b2, 0 );
setMoveKey( spep_5 -3 + 60, 1, -30 +a2, 223 -b2, 0 );
setMoveKey( spep_5 -3 + 62, 1, -24.9 +a2, 221.8 -b2, 0 );
setMoveKey( spep_5 -3 + 64, 1, -17.5 +a2, 220.4 -b2, 0 );
setMoveKey( spep_5 -3 + 66, 1, -8.3 +a2, 219 -b2, 0 );
setMoveKey( spep_5 -3 + 68, 1, 2.2 +a2, 217.6 -b2, 0 );
setMoveKey( spep_5 -3 + 70, 1, 13.8 +a2, 215.9 -b2, 0 );
setMoveKey( spep_5 -3 + 72, 1, 26.2 +a2, 214.3 -b2, 0 );
setMoveKey( spep_5 -3 + 74, 1, 39.1 +a2, 212.6 -b2, 0 );
setMoveKey( spep_5 -3 + 76, 1, 52.4 +a2, 210.8 -b2, 0 );
setMoveKey( spep_5 -3 + 78, 1, 65.9 +a2, 209.1 -b2, 0 );
setMoveKey( spep_5 -3 + 80, 1, 79.4 +a2, 207.3 -b2, 0 );
setMoveKey( spep_5 -3 + 82, 1, 92.6 +a2, 205.5 -b2, 0 );
setMoveKey( spep_5 -3 + 84, 1, 105.6 +a2, 203.8 -b2, 0 );
setMoveKey( spep_5 -3 + 86, 1, 117.9 +a2, 202 -b2, 0 );
setMoveKey( spep_5 -3 + 88, 1, 129.4 +a2, 200.2 -b2, 0 );
setMoveKey( spep_5 -3 + 90, 1, 140.1 +a2, 198.4 -b2, 0 );
setMoveKey( spep_5 -3 + 92, 1, 149.2 +a2, 196.6 -b2, 0 );
setMoveKey( spep_5 -3 + 94, 1, 156.7 +a2, 194.9 -b2, 0 );
setMoveKey( spep_5 -3 + 96, 1, 161.8 +a2, 193.2 -b2, 0 );
setMoveKey( spep_5 -3 + 98, 1, 164 +a2, 191.6 -b2, 0 );
setMoveKey( spep_5 -3 + 100, 1, 164.3 +a2, 189.2 -b2, 0 );
setMoveKey( spep_5 -3 + 102, 1, 164.6 +a2, 186.8 -b2, 0 );
setMoveKey( spep_5 -3 + 104, 1, 164.9 +a2, 184.3 -b2, 0 );
setMoveKey( spep_5 -3 + 106, 1, 165.1 +a2, 181.8 -b2, 0 );
setMoveKey( spep_5 -3 + 108, 1, 165.5 +a2, 179.4 -b2, 0 );
setMoveKey( spep_5 -3 + 110, 1, 165.8 +a2, 176.9 -b2, 0 );
setMoveKey( spep_5 -3 + 112, 1, 166.1 +a2, 174.4 -b2, 0 );
setMoveKey( spep_5 -3 + 114, 1, 166.4 +a2, 172 -b2, 0 );
setMoveKey( spep_5 -3 + 116, 1, 166.7 +a2, 169.6 -b2, 0 );
setMoveKey( spep_5 -3 + 118, 1, 167 +a2, 167.1 -b2, 0 );
setMoveKey( spep_5 -3 + 120, 1, 167.2 +a2, 164.7 -b2, 0 );
setMoveKey( spep_5 -3 + 122, 1, 167.6 +a2, 162.2 -b2, 0 );
setMoveKey( spep_5 -3 + 124, 1, 167.8 +a2, 159.8 -b2, 0 );
setMoveKey( spep_5 -3 + 126, 1, 168.1 +a2, 157.3 -b2, 0 );
setMoveKey( spep_5 -3 + 128, 1, 168.5 +a2, 154.9 -b2, 0 );
setMoveKey( spep_5 -3 + 130, 1, 168.7 +a2, 152.4 -b2, 0 );
setMoveKey( spep_5 -3 + 132, 1, 169.1 +a2, 150 -b2, 0 );
setMoveKey( spep_5 -3 + 134, 1, 169.3 +a2, 147.5 -b2, 0 );
setMoveKey( spep_5 -3 + 136, 1, 169.6 +a2, 145 -b2, 0 );
setMoveKey( spep_5 -3 + 138, 1, 169.9 +a2, 142.6 -b2, 0 );
setMoveKey( spep_5 -3 + 140, 1, 170.2 +a2, 140.2 -b2, 0 );
setMoveKey( spep_5 -3 + 142, 1, 170.5 +a2, 137.7 -b2, 0 );
setMoveKey( spep_5 -3 + 144, 1, 170.8 +a2, 135.3 -b2, 0 );
setMoveKey( spep_5 -3 + 146, 1, 171.1 +a2, 132.8 -b2, 0 );
setMoveKey( spep_5 -3 + 148, 1, 171.4 +a2, 130.4 -b2, 0 );
setMoveKey( spep_5 -3 + 150, 1, 171.7 +a2, 127.9 -b2, 0 );
setMoveKey( spep_5 -3 + 152, 1, 172 +a2, 125.5 -b2, 0 );
setMoveKey( spep_5 -3 + 154, 1, 172.3 +a2, 123 -b2, 0 );
setMoveKey( spep_5 -3 + 156, 1, 172.6 +a2, 120.6 -b2, 0 );
setMoveKey( spep_5 -3 + 158, 1, 172.9 +a2, 118.1 -b2, 0 );
setMoveKey( spep_5 -3 + 160, 1, 173.2 +a2, 115.7 -b2, 0 );
setMoveKey( spep_5 -3 + 162, 1, 173.4 +a2, 113.2 -b2, 0 );
setMoveKey( spep_5 -3 + 164, 1, 173.7 +a2, 110.8 -b2, 0 );
setMoveKey( spep_5 -3 + 166, 1, 174 +a2, 108.3 -b2, 0 );
setMoveKey( spep_5 -3 + 168, 1, 174.3 +a2, 105.9 -b2, 0 );
setMoveKey( spep_5 -3 + 169, 1, 174.3 +a2, 105.9 -b2, 0 );
--setMoveKey( spep_5 -3 + 170, 1, 160, 245.2 , 0 );
--
--setMoveKey( spep_5 + 169, 1, 210, 85.2 , 0 );
--setMoveKey( spep_5 + 316, 1, 210, 85.2 , 0 );

a3=5;
b3=5;

setMoveKey( spep_5 -3 + 170, 1, 222.9 -a3, 119.4 -b3, 0 );
setMoveKey( spep_5 -3 + 172, 1, 201.8 -a3, 91.1 -b3, 0 );
setMoveKey( spep_5 -3 + 174, 1, 214.6 -a3, 100.8 -b3, 0 );
setMoveKey( spep_5 -3 + 176, 1, 202 -a3, 87.9 -b3, 0 );
setMoveKey( spep_5 -3 + 178, 1, 199.6 -a3, 80.5 -b3, 0 );
setMoveKey( spep_5 -3 + 180, 1, 202 -a3, 90.3 -b3, 0 );
setMoveKey( spep_5 -3 + 182, 1, 200.6 -a3, 82.5 -b3, 0 );
setMoveKey( spep_5 -3 + 184, 1, 199 -a3, 87.7 -b3, 0 );
setMoveKey( spep_5 -3 + 186, 1, 201.7 -a3, 79.8 -b3, 0 );
setMoveKey( spep_5 -3 + 188, 1, 202.9 -a3, 90.3 -b3, 0 );
setMoveKey( spep_5 -3 + 190, 1, 204.2 -a3, 80.9 -b3, 0 );
setMoveKey( spep_5 -3 + 192, 1, 200.6 -a3, 87.5 -b3, 0 );
setMoveKey( spep_5 -3 + 194, 1, 202.4 -a3, 81.3 -b3, 0 );
setMoveKey( spep_5 -3 + 196, 1, 200.5 -a3, 88.4 -b3, 0 );
setMoveKey( spep_5 -3 + 198, 1, 201.6 -a3, 82.1 -b3, 0 );
setMoveKey( spep_5 -3 + 200, 1, 202.8 -a3, 86.9 -b3, 0 );
setMoveKey( spep_5 -3 + 202, 1, 203.9 -a3, 81 -b3, 0 );
setMoveKey( spep_5 -3 + 204, 1, 199.7 -a3, 90.3 -b3, 0 );
setMoveKey( spep_5 -3 + 206, 1, 203.1 -a3, 81.9 -b3, 0 );
setMoveKey( spep_5 -3 + 208, 1, 200.5 -a3, 87.1 -b3, 0 );
setMoveKey( spep_5 -3 + 210, 1, 201.7 -a3, 79.1 -b3, 0 );
setMoveKey( spep_5 -3 + 212, 1, 202.4 -a3, 88.3 -b3, 0 );
setMoveKey( spep_5 -3 + 214, 1, 203.7 -a3, 81 -b3, 0 );
setMoveKey( spep_5 -3 + 216, 1, 200.8 -a3, 90.3 -b3, 0 );
setMoveKey( spep_5 -3 + 218, 1, 202.7 -a3, 80 -b3, 0 );
setMoveKey( spep_5 -3 + 220, 1, 200.1 -a3, 87.9 -b3, 0 );
setMoveKey( spep_5 -3 + 222, 1, 201.1 -a3, 81.4 -b3, 0 );
setMoveKey( spep_5 -3 + 224, 1, 198.8 -a3, 88.8 -b3, 0 );
setMoveKey( spep_5 -3 + 226, 1, 200.6 -a3, 82.1 -b3, 0 );
setMoveKey( spep_5 -3 + 228, 1, 203.3 -a3, 88.3 -b3, 0 );
setMoveKey( spep_5 -3 + 230, 1, 198.6 -a3, 80.6 -b3, 0 );
setMoveKey( spep_5 -3 + 232, 1, 201 -a3, 87.7 -b3, 0 );
setMoveKey( spep_5 -3 + 234, 1, 203.7 -a3, 81.1 -b3, 0 );
setMoveKey( spep_5 -3 + 236, 1, 202.5 -a3, 89.3 -b3, 0 );
setMoveKey( spep_5 -3 + 238, 1, 199.4 -a3, 79.1 -b3, 0 );
setMoveKey( spep_5 -3 + 240, 1, 201.5 -a3, 88.3 -b3, 0 );
setMoveKey( spep_5 -3 + 242, 1, 202.2 -a3, 81.3 -b3, 0 );
setMoveKey( spep_5 -3 + 244, 1, 201.6 -a3, 88.1 -b3, 0 );
setMoveKey( spep_5 -3 + 246, 1, 204 -a3, 81.6 -b3, 0 );
setMoveKey( spep_5 -3 + 248, 1, 200 -a3, 87.3 -b3, 0 );
setMoveKey( spep_5 -3 + 250, 1, 201.1 -a3, 81.3 -b3, 0 );
setMoveKey( spep_5 -3 + 252, 1, 203.3 -a3, 87.8 -b3, 0 );
setMoveKey( spep_5 -3 + 254, 1, 200 -a3, 81.4 -b3, 0 );
setMoveKey( spep_5 -3 + 256, 1, 198.9 -a3, 89.1 -b3, 0 );
setMoveKey( spep_5 -3 + 258, 1, 201.5 -a3, 80.1 -b3, 0 );
setMoveKey( spep_5 -3 + 260, 1, 203.4 -a3, 87.1 -b3, 0 );
setMoveKey( spep_5 -3 + 262, 1, 201.2 -a3, 82.1 -b3, 0 );
setMoveKey( spep_5 -3 + 264, 1, 199.4 -a3, 87.7 -b3, 0 );
setMoveKey( spep_5 -3 + 266, 1, 201.9 -a3, 81.1 -b3, 0 );
setMoveKey( spep_5 -3 + 268, 1, 203.1 -a3, 87.8 -b3, 0 );
setMoveKey( spep_5 -3 + 270, 1, 200.5 -a3, 79.1 -b3, 0 );
setMoveKey( spep_5 -3 + 272, 1, 201.4 -a3, 87.3 -b3, 0 );

setScaleKey( spep_5 + 0, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 1, 1, 0.57, 0.57 );
setScaleKey( spep_5 + 2, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 6, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 8, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 24, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 26, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 42, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 44, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 58, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 60, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 62, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 64, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 66, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 68, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 70, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 72, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 74, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 76, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 78, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 80, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 82, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 84, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 86, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 88, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 90, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 94, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 96, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 98, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 100, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 102, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 104, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 106, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 108, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 110, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 112, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 114, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 116, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 118, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 120, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 122, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 124, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 126, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 128, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 130, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 132, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 134, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 136, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 138, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 140, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 142, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 144, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 146, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 148, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 150, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 152, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 154, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 156, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 158, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 160, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 162, 1, 0.48, 0.48 );
setScaleKey( spep_5 -3 + 164, 1, 0.48, 0.48 );
setScaleKey( spep_5 -3 + 166, 1, 0.47, 0.47 );
setScaleKey( spep_5 -3 + 168, 1, 0.46, 0.46 );
setScaleKey( spep_5 -3 + 169, 1, 0.46, 0.46 );
--setScaleKey( spep_5 -3 + 170, 1, 0.46, 0.46 );--
--
--setScaleKey( spep_5 + 169, 1, 0.38, 0.38 );--
--setScaleKey( spep_5 + 316, 1, 0.38, 0.38 );--
setScaleKey( spep_5 -3 + 170, 1, 0.48, 0.48 );
setScaleKey( spep_5 -3 + 172, 1, 0.4, 0.4 );
setScaleKey( spep_5 -3 + 174, 1, 0.44, 0.44 );
setScaleKey( spep_5 -3 + 176, 1, 0.4, 0.4 );
setScaleKey( spep_5 -3 + 272, 1, 0.4, 0.4 );

setRotateKey( spep_5 + 0, 1, -57.1 );
setRotateKey( spep_5 + 1, 1, -57 );
setRotateKey( spep_5 + 2, 1, -57 );
setRotateKey( spep_5 + 3, 1, -57 );
setRotateKey( spep_5 + 4, 1, -57 );
setRotateKey( spep_5 + 5, 1, -57 );
setRotateKey( spep_5 + 6, 1, -57 );
setRotateKey( spep_5 -3 + 168, 1, -57 );--
setRotateKey( spep_5 -3 + 169, 1, -57 );--
--
--setRotateKey( spep_5 + 169, 1, 15 );--
--setRotateKey( spep_5 + 316, 1, 15 );--
setRotateKey( spep_5 -3 +170, 1, 14.1 );
setRotateKey( spep_5 -3 +172, 1, 14.2 );
setRotateKey( spep_5 -3 +272, 1, 14.2 );


-- ** 音 ** --
--渦ぶわーん1
SE020 = playSe( spep_5 + 6, 1278 ,"",0.5);
stopSe( spep_5 + 162, SE020, 18 );

--渦ぶわーん2
SE021 = playSe( spep_5 + 6, 1158 ,"",0.5);
stopSe( spep_5 + 158, SE021, 18 );

--杖の魔法音1
SE022 = playSe( spep_5 + 32, 1221 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 32, SE022, 0 );
setSeVolumeByWorkId( spep_5 + 33, SE022, 8 );
setSeVolumeByWorkId( spep_5 + 34, SE022, 16 );
setSeVolumeByWorkId( spep_5 + 35, SE022, 23 );
setSeVolumeByWorkId( spep_5 + 36, SE022, 26 );
setSeVolumeByWorkId( spep_5 + 37, SE022, 33 );
setSeVolumeByWorkId( spep_5 + 38, SE022, 36 );
setSeVolumeByWorkId( spep_5 + 39, SE022, 43 );
setSeVolumeByWorkId( spep_5 + 40, SE022, 46 );
setSeVolumeByWorkId( spep_5 + 41, SE022, 53 );
setSeVolumeByWorkId( spep_5 + 42, SE022, 56 );
setStartTimeMs( SE022,  100 );
setPitch( spep_5 + 32, SE022, 1100 );
setTimeStretch( SE022, 1.73, 10, 1 );

--杖の魔法音2
SE023 = playSe( spep_5 + 52, 1221 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 52, SE023, 0 );
setSeVolumeByWorkId( spep_5 + 53, SE023, 5 );
setSeVolumeByWorkId( spep_5 + 54, SE023, 15 );
setSeVolumeByWorkId( spep_5 + 55, SE023, 25 );
setSeVolumeByWorkId( spep_5 + 56, SE023, 30 );
setSeVolumeByWorkId( spep_5 + 57, SE023, 40 );
setSeVolumeByWorkId( spep_5 + 58, SE023, 45 );
setSeVolumeByWorkId( spep_5 + 59, SE023, 50 );
setSeVolumeByWorkId( spep_5 + 60, SE023, 55 );
setSeVolumeByWorkId( spep_5 + 61, SE023, 60 );
setSeVolumeByWorkId( spep_5 + 62, SE023, 65 );
setStartTimeMs( SE023,  150 );
setPitch( spep_5 + 52, SE023, 1100 );
setTimeStretch( SE023, 1.73, 10, 1 );

--魔法陣決まる
SE024 = playSe( spep_5 + 46, 1026 ,"",0.8);
setSeVolumeByWorkId( spep_5 + 46, SE024, 78 );

--杖の魔法音3
SE025 = playSe( spep_5 + 150, 1221 ,"",0.8);
setSeVolumeByWorkId( spep_5 + 150, SE025, 74 );
setPitch( spep_5 + 150, SE025, 900 );
setTimeStretch( SE025, 1.6, 10, 1 );

--杖の魔法音4
SE026 = playSe( spep_5 + 150, 1115 ,"",0.5);
stopSe( spep_5 + 196, SE026, 50 );

--爆発1
--SE027 = playSe( spep_5 + 156, 1069 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 156, SE027, 62 );

--爆発2
SE028 = playSe( spep_5 + 158, 1067 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 158, SE028, 112 );

--爆発3
SE029 = playSe( spep_5 + 168, 1126 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 168, SE029, 56 );

--杖の魔法音5
SE030 = playSe( spep_5 + 180, 1221,"",0.5 );
setSeVolumeByWorkId( spep_5 + 180, SE030, 76 );
setPitch( spep_5 + 180, SE030, 900 );
setTimeStretch( SE030, 1.6, 10, 1 );

--連続衝撃波1
SE031 = playSe( spep_5 + 184, 1016,"",0.5 );
setSeVolumeByWorkId( spep_5 + 184, SE031, 68 );
stopSe( spep_5 + 120, SE031, 0 );

--連続衝撃波2
SE032 = playSe( spep_5 + 196, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 196, SE032, 56 );
stopSe( spep_5 + 217, SE032, 0 );

--杖の魔法音6
SE033 = playSe( spep_5 + 202, 1221 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 202, SE033, 68 );
setPitch( spep_5 + 202, SE033, 900 );
setTimeStretch( SE033, 1.6, 10, 1 );
stopSe(spep_5 + 220,SE033,10);

--連続衝撃波3
--SE034 = playSe( spep_5 + 202, 1015 );
--setSeVolumeByWorkId( spep_5 + 202, SE034, 46 );

--連続衝撃波4
SE035 = playSe( spep_5 + 208, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 208, SE035, 58 );
stopSe( spep_5 + 227, SE035, 20 );

--連続衝撃波5
--SE036 = playSe( spep_5 + 212, 1015 );
--setSeVolumeByWorkId( spep_5 + 212, SE036, 47 );

--連続衝撃波6
SE037 = playSe( spep_5 + 218, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 218, SE037, 58 );
stopSe( spep_5 + 241, SE037, 20 );

--連続衝撃波7
--SE038 = playSe( spep_5 + 228, 1015 );
--setSeVolumeByWorkId( spep_5 + 228, SE038, 58 );

--杖の魔法音7
SE039 = playSe( spep_5 + 232, 1221 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 232, SE039, 67 );
setPitch( spep_5 + 232, SE039, 900 );
setTimeStretch( SE039, 1.6, 10, 1 );

--連続衝撃波8
SE040 = playSe( spep_5 + 232, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 232, SE040, 68 );
stopSe( spep_5 + 251, SE040, 20 );

--連続衝撃波9
--SE041 = playSe( spep_5 + 238, 1015 );
--setSeVolumeByWorkId( spep_5 + 238, SE041, 58 );

--連続衝撃波10
SE042 = playSe( spep_5 + 242, 1016,"",0.5 );
setSeVolumeByWorkId( spep_5 + 242, SE042, 59 );
stopSe( spep_5 + 266, SE042, 20 );

--連続衝撃波11
--SE043 = playSe( spep_5 + 252, 1015 );
--setSeVolumeByWorkId( spep_5 + 252, SE043, 59 );

--連続衝撃波12
SE044 = playSe( spep_5 + 257, 1016,"",0.5 );
setSeVolumeByWorkId( spep_5 + 257, SE044, 77 );
stopSe( spep_5 + 281, SE044, 20 );

--杖の魔法音8
--SE045 = playSe( spep_5 + 262, 1221,"",0.5 );
setSeVolumeByWorkId( spep_5 + 262, SE045, 68 );
setPitch( spep_5 + 262, SE045, 900 );
setTimeStretch( SE045, 1.6, 10, 1 );

--連続衝撃波13
--SE046 = playSe( spep_5 + 268, 1015 );
--setSeVolumeByWorkId( spep_5 + 268, SE046, 58 );

--連続衝撃波14
SE047 = playSe( spep_5 + 272, 1016 ,"",0.5);
setSeVolumeByWorkId( spep_5 + 272, SE047, 56 );
stopSe( spep_5 + 295, SE047, 20 );

--連続衝撃波15
--SE048 = playSe( spep_5 + 282, 1015 );
--setSeVolumeByWorkId( spep_5 + 282, SE048, 45 );

--連続衝撃波16
SE049 = playSe( spep_5 + 286, 1016,"",0.5 );
setSeVolumeByWorkId( spep_5 + 286, SE049, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 316, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 206 );
endPhase( spep_5 + 306 );

end