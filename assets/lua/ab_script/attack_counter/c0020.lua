--1025510:ガンマ1号_格闘無効カウンター
--battle_301237

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
SP_01 = 3170;--自キャラ
SP_02 = 3171;--自キャラ

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
-- カウンター
------------------------------------------------------
--初めの準備
spep_0=28;
--spep_0=0;

-- ** エフェクト等 ** --
eff_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 398, eff_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 398, eff_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_f, 0 );
setEffRotateKey( spep_0 + 398, eff_f, 0 );
setEffAlphaKey( spep_0 + 0, eff_f, 255 );
setEffAlphaKey( spep_0 + 398, eff_f, 255 );

-- ** エフェクト等 ** --
eff_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 398, eff_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 398, eff_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_b, 0 );
setEffRotateKey( spep_0 + 398, eff_b, 0 );
setEffAlphaKey( spep_0 + 0, eff_b, 255 );
setEffAlphaKey( spep_0 + 398, eff_b, 255 );

--SE
--殴られる
SE001 = playSeVer2( spep_0 + 0, 1187, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1120, "", 0, 0, 0, -1);

--吹き飛ぶ
SE003 = playSeVer2( spep_0 + 18, 1027, "", 0, 0, 0, -1);

--地面に倒れる
SE005 = playSeVer2( spep_0 + 74, 1007, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 74, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 174 );
SE007 = playSeVer2( spep_0 + 74, 1010, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 74, 1008, "", 0, 0, 0, -1);

--起き上がる
SE004 = playSeVer2( spep_0 + 128, 1278, "",spep_0 + 230, 32, 22, -1);
setSeVolumeByWorkId( spep_0 + 128, SE004, 22 );
setStartTimeMs( SE004,  1317 );
setPitch( spep_0 + 128, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );
SE009 = playSeVer2( spep_0 + 130, 1072, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 130, 1116, "",spep_0 + 186, 0, 26, -1);
setPitch( spep_0 + 130, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );
SE011 = playSeVer2( spep_0 + 134, 1117, "", 0, 0, 0, -1);
setPitch( spep_0 + 134, SE011, -600 );
setTimeStretch( SE011, 0.6, 30, 4 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );


    
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
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-3 + 240, 1, 1);
setDisp( spep_0-3 + 264, 1, 0);

changeAnime( spep_0-3 + 240, 1, 104);
changeAnime( spep_0-3 + 252, 1, 108);

setMoveKey( spep_0-3 + 240, 1, 116.4, -31 , 0 );
setMoveKey( spep_0-3 + 251, 1, 116.4, -31 , 0 );

setMoveKey( spep_0-3 + 252, 1, 139.1, -21.1 , 0 );
setMoveKey( spep_0-3 + 254, 1, 269.2, -37.1 , 0 );
setMoveKey( spep_0-3 + 256, 1, 413.2, -21.1 , 0 );
setMoveKey( spep_0-3 + 258, 1, 571.3, -39.1 , 0 );
setMoveKey( spep_0-3 + 260, 1, 715.4, -21.1 , 0 );
setMoveKey( spep_0-3 + 262, 1, 845.4, -37.1 , 0 );
setMoveKey( spep_0-3 + 264, 1, 989.5, -21.1 , 0 );

setScaleKey( spep_0-3 + 240, 1, 4.84, 4.84 );
setScaleKey( spep_0-3 + 251, 1, 4.84, 4.84 );

setScaleKey( spep_0-3 + 252, 1, 5.14, 5.14 );
setScaleKey( spep_0-3 + 264, 1, 5.14, 5.14 );

setRotateKey( spep_0-3 + 240, 1, 0 );
setRotateKey( spep_0-3 + 264, 1, 0 );
--SE
--起き上がり振りかぶる
SE012 = playSeVer2( spep_0 + 186, 1182, "",spep_0 + 248, 12, 20, -1);
setStartTimeMs( SE012,  167 );
SE013 = playSeVer2( spep_0 + 182, 9, "",spep_0 + 250, 26, 22, -1);
SE014 = playSeVer2( spep_0 + 238, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE014, 115 );

--頭突き
SE015 = playSeVer2( spep_0 + 248 -4, 1061, "",spep_0 + 278, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 248 -4, SE015, 108 );
SE016 = playSeVer2( spep_0 + 250 -4, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250 -4, SE016, 79 );
SE017 = playSeVer2( spep_0 + 250 -4, 1141, "",spep_0 + 276, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 250 -4, SE017, 100 );
SE018 = playSeVer2( spep_0 + 250 -4, 1359, "", 0, 0, 0, -1);
------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if (_IS_DEAD_ == 1) then

    setDisp( spep_0+286, 1, 1);
    endPhase(spep_0+288);
    
else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-3 + 290, 1, 1);

changeAnime( spep_0-3 + 290, 1, 107);

setMoveKey( spep_0-3 + 290, 1, 0, 0 , 0 );
setMoveKey( spep_0-3 + 388, 1, 0, 0 , 0 );

setScaleKey( spep_0-3 + 290, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 292, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 294, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 296, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 298, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 300, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 302, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 304, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 306, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 308, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 310, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 312, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 314, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 316, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 318, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 388, 1, 1.5, 1.5 );

setRotateKey( spep_0-3 + 290, 1, 0 );
setRotateKey( spep_0-3 + 292, 1, 105 );
setRotateKey( spep_0-3 + 294, 1, 240 );
setRotateKey( spep_0-3 + 296, 1, 405 );
setRotateKey( spep_0-3 + 298, 1, 600 );
setRotateKey( spep_0-3 + 300, 1, 825 );
setRotateKey( spep_0-3 + 302, 1, 1080 );
setRotateKey( spep_0-3 + 388, 1, 1080 );

--SE
--画面割れる
SE019 = playSeVer2( spep_0 + 302, 1054, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 302, 1025, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_0 + 302 );
endPhase( spep_0 + 388 );
end