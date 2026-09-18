--1026160：LR_孫悟空_気弾必殺カウンター
--battle_301243

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
SP_01 = 3181;--自キャラ

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
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 432, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 432, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 432, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 432, eff, 255 );

--SE
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 110, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 158 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );

--かめはめ波溜め
SE003 = playSeVer2( spep_0 + 24, 1210, "",spep_0 + 122, 18, 28, -1);
setStartTimeMs( SE003,  533 );

--オーラ
SE004 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 63 );

--構える
SE005 = playSeVer2( spep_0 + 16, 1004, "", 0, 0, 0, -1);

--かめはめ波溜め
SE006 = playSeVer2( spep_0 + 22, 1209, "", 0, 0, 0, -1);

--オーラ
SE007 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 63 );
SE008 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE008, 63 );

--かめはめ波発射
SE009 = playSeVer2( spep_0 + 90, 1285, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 90, 1284, "",spep_0 + 234, 0, 44, -1);
SE011 = playSeVer2( spep_0 + 90, 1213, "",spep_0 + 234, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 90, SE011, 81 );
SE012 = playSeVer2( spep_0 + 90, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE012, 82 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );

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
--SE
--かめはめ波飛んでいく
SE013 = playSeVer2( spep_0 + 154, 1021, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 154, 1161, "",spep_0 + 290, 0, 18, -1);

--気弾ぶつかる
SE015 = playSeVer2( spep_0 + 176, 1023, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 178, 1024, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 178, 1068, "", 0, 0, 0, -1);

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if (_IS_DEAD_ == 1) then

    stopSe( spep_0 + 258, SE014, 0 );
    stopSe( spep_0 + 258, SE015, 0 );
    stopSe( spep_0 + 258, SE016, 0 );
    stopSe( spep_0 + 258, SE017, 0 );

    setDisp( spep_0+256, 1, 1);
    endPhase(spep_0+258);
    
else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------
--SE
--爆発
SE018 = playSeVer2( spep_0 + 260, 1067, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 264, 1159, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_0 + 258 );
endPhase( spep_0 + 432 );
end