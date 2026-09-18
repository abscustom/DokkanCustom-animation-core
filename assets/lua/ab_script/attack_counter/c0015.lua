--1020990:超サイヤ人4ゴジータ_必殺カウンター
--sp_effect_b4_00166

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
SP_01 =	156167;	 --腕組立ち〜敵が飛ぶ	ef_001_front
SP_02 =	156169;	 --	腕組立ち〜敵が飛ぶ	ef_001_back
SP_03 =	156171;	 --	ガラス割れ（ガッ！）	ef_002_front
SP_04 =	156172;	 --	ガラス割れ（ガッ！）	ef_002_back

--敵側
SP_01r =156168;	 --	腕組立ち〜敵が飛ぶ	ef_001_front_re
SP_02r =156170;	 --	腕組立ち〜敵が飛ぶ	ef_001_back_re

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

ENABLE_AUTO_TIME_STRETCH(1.0);

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

--entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 36, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 36, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( 39, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 腕組立ち〜敵が飛ぶ(160F)
------------------------------------------------------
--次の準備
spep_0=28;

--エフェクトの再生
move_f=entryEffectLife(spep_0,SP_01,160,0x100,-1,0,0,0);

setEffMoveKey(spep_0,move_f,0,0,0);
setEffMoveKey(spep_0+160,move_f,0,0,0);
setEffScaleKey(spep_0,move_f,1.0,1.0);
setEffScaleKey(spep_0+160,move_f,1.0,1.0);
setEffAlphaKey(spep_0,move_f,255);
setEffAlphaKey(spep_0+160,move_f,255);
setEffRotateKey(spep_0,move_f,0);
setEffRotateKey(spep_0+160,move_f,0);

--エフェクトの再生
move_b=entryEffectLife(spep_0,SP_02,160,0x80,-1,0,0,0);

setEffMoveKey(spep_0,move_b,0,0,0);
setEffMoveKey(spep_0+160,move_b,0,0,0);
setEffScaleKey(spep_0,move_b,1.0,1.0);
setEffScaleKey(spep_0+160,move_b,1.0,1.0);
setEffAlphaKey(spep_0,move_b,255);
setEffAlphaKey(spep_0+160,move_b,255);
setEffRotateKey(spep_0,move_b,0);
setEffRotateKey(spep_0+160,move_b,0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = 44; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);

    stopSe( SP_dodge - 12, SE000, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    
        if (_IS_PLAYER_SIDE_ == 1) then
    
            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    
        else
    
            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
    
        end
    
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    setMoveKey(  SP_dodge+5, 0, -750,  70,   -30);-- 中央位置から
    setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
    --setDisp( SP_dodge+5, 0, 0);
    
    endPhase(SP_dodge+10);
    do return end
    else end

--敵キャラクター
setDisp( spep_0 -3 + 110, 1, 1 );
setDisp( spep_0 -3 + 163 +107, 1, 0 );
changeAnime( spep_0 -3 + 110, 1, 100 );
changeAnime( spep_0 -3 + 126, 1, 108 );
changeAnime( spep_0 -3 + 132, 1, 106 );
changeAnime( spep_0 -3 + 134, 1, 5 );
changeAnime( spep_0 -3 + 164, 1, 107 );

a1=0;

setMoveKey( spep_0 -3 + 110, 1, 69.5, 63.7 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 39.8, 29.9 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 10.1, -4 , 0 );
setMoveKey( spep_0 -3 + 125, 1, 10.1, -4 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 9.8, 35.9 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 54.3, -2.3 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 23.1, 57.9 , 0 );--
setMoveKey( spep_0 -3 + 131, 1, 23.1, 57.9 , 0 );--
setMoveKey( spep_0 -3 + 132, 1, 18.4, 92 , 0 );
setMoveKey( spep_0 -3 + 133, 1, 18.4, 92 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 62.6, 134.7 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 62.6, 130.9 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 87.4, 142 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 120.5, 153.4 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 133.3, 158.6 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 149.6, 168.3 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 158.7, 164.2 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 170.3, 177.2 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 184.5, 179.6 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 197, 183 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 194.6, 186.1 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 197.5, 185.7 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 202.2, 189.3 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 202.6, 190.7 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 205.9, 192.6 , 0 );
setMoveKey( spep_0 -3 + 163, 1, 205.9, 192.6 , 0 );
--
setMoveKey( spep_0 +161 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_0 +161 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_0 +161 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_0 +161 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_0 +161 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_0 +161 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_0 +161 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_0 +161 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_0 -3 + 110, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 112, 1, 1.78, 1.78 );
setScaleKey( spep_0 -3 + 114, 1, 2.23, 2.23 );
setScaleKey( spep_0 -3 + 125, 1, 2.23, 2.23 );--
setScaleKey( spep_0 -3 + 126, 1, 2.34, 2.34 );
setScaleKey( spep_0 -3 + 131, 1, 2.34, 2.34 );--
setScaleKey( spep_0 -3 + 132, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 133, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 134, 1, 1.49, 1.49 );
setScaleKey( spep_0 -3 + 136, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 138, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 140, 1, 0.86, 0.86 );
setScaleKey( spep_0 -3 + 142, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 144, 1, 0.6, 0.6 );
setScaleKey( spep_0 -3 + 146, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 148, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 150, 1, 0.36, 0.36 );
setScaleKey( spep_0 -3 + 152, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 154, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 156, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 158, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 160, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 162, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 163, 1, 0.19, 0.19 );
--
setScaleKey( spep_0 +161 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_0 +161 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_0 +161 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_0 +161 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_0 +161 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_0 +161 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_0 +161 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_0 +161 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_0 +161 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_0 +161 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_0 +161 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_0 +161 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_0 +161 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_0 +161 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_0 -3 + 110, 1, 0 );
setRotateKey( spep_0 -3 + 125, 1, 0 );--
setRotateKey( spep_0 -3 + 126, 1, -6.6 );
setRotateKey( spep_0 -3 + 131, 1, -6.6 );
setRotateKey( spep_0 -3 + 132, 1, -32 );
setRotateKey( spep_0 -3 + 133, 1, -32 );
setRotateKey( spep_0 -3 + 134, 1, 44.6 );
setRotateKey( spep_0 -3 + 136, 1, 49.3 );
setRotateKey( spep_0 -3 + 138, 1, 53.3 );
setRotateKey( spep_0 -3 + 140, 1, 56.6 );
setRotateKey( spep_0 -3 + 142, 1, 59.4 );
setRotateKey( spep_0 -3 + 144, 1, 61.7 );
setRotateKey( spep_0 -3 + 146, 1, 63.5 );
setRotateKey( spep_0 -3 + 148, 1, 65.1 );
setRotateKey( spep_0 -3 + 150, 1, 66.3 );
setRotateKey( spep_0 -3 + 152, 1, 67.2 );
setRotateKey( spep_0 -3 + 154, 1, 68 );
setRotateKey( spep_0 -3 + 156, 1, 68.6 );
setRotateKey( spep_0 -3 + 158, 1, 69 );
setRotateKey( spep_0 -3 + 160, 1, 69.3 );
setRotateKey( spep_0 -3 + 162, 1, 69.5 );
setRotateKey( spep_0 -3 + 163, 1, 69.5 );
--
setRotateKey( spep_0 +161 + 0, 1, 105 );
setRotateKey( spep_0 +161 -3 + 4, 1, 240 );
setRotateKey( spep_0 +161 -3 + 6, 1, 405 );
setRotateKey( spep_0 +161 -3 + 8, 1, 600 );
setRotateKey( spep_0 +161 -3 + 10, 1, 825 );
setRotateKey( spep_0 +161 -3 + 12, 1, 1080 );
setRotateKey( spep_0 +161 + 100, 1, 1080 );

--SE
--ZOOM
SE001 = playSe( spep_0 + 0, 1072 ,"",0.5);
setTimeStretch( SE001, 1.42, 40, 6 );

--目が光る1
SE002 = playSe( spep_0 + 94, 1283 );
setSeVolumeByWorkId( spep_0 + 94, SE002, 112 );

--目が光る2
SE003 = playSe( spep_0 + 94, 1240 );
stopSe( spep_0 + 168, SE003, 19 );
setPitch( spep_0 + 94, SE003, 200 );
setTimeStretch( SE003, 1.13, 10, 1 );

--敵ふっとぶ1
SE004 = playSe( spep_0 + 118, 1258 );
setSeVolumeByWorkId( spep_0 + 118, SE004, 65 );
stopSe( spep_0 + 158, SE004, 44 );

--敵ふっとぶ2
SE005 = playSe( spep_0 + 124, 20 );

--敵ふっとぶ3
SE006 = playSe( spep_0 + 124, 1190 );

--次の準備
spep_1=spep_0+160;

if (_IS_DEAD_ == 1) then

    --setDisp( spep_1+96, 1, 1);
    --endPhase(spep_1+98);
    entryFade( spep_0+160-5, 5, 4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

    setDisp( spep_0+160, 1, 1);
    endPhase(spep_0+162);
 
    else

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_f, 0 );
setEffRotateKey( spep_1 + 100, finish_f, 0 );
setEffAlphaKey( spep_1 + 0, finish_f, 255 );
setEffAlphaKey( spep_1 + 100, finish_f, 255 );

finish_f = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, finish_f, 0 );
setEffRotateKey( spep_1 + 100, finish_f, 0 );
setEffAlphaKey( spep_1 + 0, finish_f, 255 );
setEffAlphaKey( spep_1 + 100, finish_f, 255 );

-- ** 敵キャラクター ** --
--敵キャラクター
--[[setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 107 );

setMoveKey( spep_1 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_1 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_1 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_1 + 0, 1, 105 );
setRotateKey( spep_1 -3 + 4, 1, 240 );
setRotateKey( spep_1 -3 + 6, 1, 405 );
setRotateKey( spep_1 -3 + 8, 1, 600 );
setRotateKey( spep_1 -3 + 10, 1, 825 );
setRotateKey( spep_1 -3 + 12, 1, 1080 );
setRotateKey( spep_1 + 100, 1, 1080 );]]


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_1 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_1 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_1 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_1 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_1 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_1 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_1 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_1 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_1 + 38, shuchusen_wh, 255 );
setEffAlphaKey( spep_1 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_1 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_1 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_1 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_1 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_1 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_1 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_1 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_1 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_1 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_1 + 14, ctga, 14, 20 );

setEffMoveKey( spep_1 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_1 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_1 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_1 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_1 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_1 + 14, ctga, -10.9 );
setEffRotateKey( spep_1 + 15, ctga, -10.9 );
setEffRotateKey( spep_1 + 16, ctga, -14.9 );
setEffRotateKey( spep_1 + 17, ctga, -14.9 );
setEffRotateKey( spep_1 + 18, ctga, -10.9 );
setEffRotateKey( spep_1 + 19, ctga, -10.9 );
setEffRotateKey( spep_1 + 20, ctga, -14.9 );
setEffRotateKey( spep_1 + 21, ctga, -14.9 );
setEffRotateKey( spep_1 + 22, ctga, -10.9 );
setEffRotateKey( spep_1 + 23, ctga, -10.9 );
setEffRotateKey( spep_1 + 24, ctga, -14.9 );
setEffRotateKey( spep_1 + 25, ctga, -14.9 );
setEffRotateKey( spep_1 + 26, ctga, -10.9 );
setEffRotateKey( spep_1 + 27, ctga, -10.9 );
setEffRotateKey( spep_1 + 28, ctga, -14.9 );
setEffRotateKey( spep_1 + 100, ctga, -14.9 );

setEffAlphaKey( spep_1 + 14, ctga, 255 );
setEffAlphaKey( spep_1 + 100, ctga, 255 );

-- ** 音 ** --

--ガッ
playSe( spep_1 + 8, 1054 );
setSeVolume( spep_1 + 8, 1054, 126 );

-- ** 背景 ** --
--entryFadeBg( spep_1 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 10 -10 );
endPhase( spep_1 + 98 -2 );

end
