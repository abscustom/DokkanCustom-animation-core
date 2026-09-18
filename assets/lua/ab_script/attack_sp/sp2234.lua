--1022700:セル(第二形態)_ギャリック砲_sp2234
--sp_effect_a1_00305

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
SP_01 = 157725;	--対峙　手前	ef_001
SP_02 = 157726;	--対峙　奥	ef_002
SP_03 = 157727;	--尻尾でのなぎ払い	ef_003
SP_04 = 157729;	--尻尾攻撃　手前	ef_004
SP_05 = 157731;	--尻尾攻撃　奥	ef_005
SP_06 = 157732;	--岩場に着地	ef_006
SP_07 = 157734;	--ギャリック砲の構え　セリフカットイン	ef_007
SP_08 = 157735;	--気弾タメ	ef_008
SP_09 = 157736;	--発射	ef_009
SP_10 = 157738;	--迫る気弾　手前	ef_010
SP_11 = 157740;	--迫る気弾　奥	ef_011
SP_12 = 157741;	--フィニッシュ	ef_012

--敵側
SP_03r = 157728;	--尻尾でのなぎ払い	ef_003r
SP_04r = 157730;	--尻尾攻撃　手前	ef_004r
SP_06r = 157733;	--岩場に着地	ef_006r
SP_09r = 157737;	--発射	ef_009r
SP_10r = 157739;	--迫る気弾　手前	ef_010r

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 66;
        spep_2 = spep_1 + 56;
        spep_3 = spep_2 + 116;
        spep_4 = spep_3 + 86;
        spep_5 = spep_4 + 85;
        spep_6 = spep_5 + 94;
        spep_7 = spep_6 + 116;
        spep_8 = spep_7 + 116;
        spep_9 = spep_8 + 122;

        timing_skip = spep_9 + 0;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --気弾ヒット
        SE028 = playSe( spep_9 + 3, 1023 );
        setSeVolumeByWorkId( spep_9 + 3, SE028, 77 );
        SE029 = playSe( spep_9 + 3, 1159 );
        setSeVolumeByWorkId( spep_9 + 3, SE029, 87 );

    end
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 対峙(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 66, 0x100, -1, 0, 0, 0 );  --対峙　手前	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 66, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 66 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 66, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 66, 0x80, -1, 0, 0, 0 );  --対峙　奥	ef_002
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

setMoveKey( spep_0 + 0, 1, 95.1, 75.8 , 0 );
setMoveKey( spep_0 + 1, 1, 98.4, 75.7 , 0 );
setMoveKey( spep_0 + 2, 1, 101.7, 75.6 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 105.1, 75.4 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 105.1, 75.4 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 108.4, 75.3 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 108.4, 75.3 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 111.8, 75.2 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 115.2, 75.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 118.6, 75.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 122.1, 75 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 125.6, 74.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 129.1, 74.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 132.6, 74.8 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 136.2, 74.8 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 139.8, 74.8 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 143.5, 74.8 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 147.2, 74.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 150.9, 74.8 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 154.7, 74.9 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 158.5, 74.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 162.3, 74.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 163.8, 75.1 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 165.3, 75.3 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 166.8, 75.4 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 168.2, 75.6 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 169.5, 75.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 170.9, 75.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 172.1, 76.1 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 173.4, 76.3 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 174.6, 76.4 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 175.8, 76.6 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 176.9, 76.8 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 178, 76.9 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 179.1, 77.1 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 180.1, 77.3 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 181.1, 77.4 , 0 );
setMoveKey( spep_0 -3 + 69, 1, 181.1, 77.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 1, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 2, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 3, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 4, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 5, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 6, 1, 0.803, 0.803 );
--setScaleKey( spep_0 -3 + 32, 1, 0.803, 0.803 );
setScaleKey( spep_0 -3 + 34, 1, 0.814, 0.814 );
--setScaleKey( spep_0 -3 + 42, 1, 0.814, 0.814 );
setScaleKey( spep_0 -3 + 44, 1, 0.825, 0.825 );
--setScaleKey( spep_0 -3 + 50, 1, 0.825, 0.825 );
setScaleKey( spep_0 -3 + 52, 1, 0.836, 0.836 );
--setScaleKey( spep_0 -3 + 58, 1, 0.836, 0.836 );
setScaleKey( spep_0 -3 + 60, 1, 0.847, 0.847 );
--setScaleKey( spep_0 -3 + 66, 1, 0.847, 0.847 );
setScaleKey( spep_0 -3 + 68, 1, 0.858, 0.858 );
setScaleKey( spep_0 -3 + 69, 1, 0.858, 0.858 );

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
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--尻尾構える
SE002 = playSe( spep_0 + 64, 1196 );
setStartTimeMs( SE002,  983 );

--尻尾構える
SE003 = playSe( spep_0 + 64, 1117 );
stopSe( spep_0 +66 + 10, SE003, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 66;


------------------------------------------------------
-- 尻尾でのなぎ払い(56F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
tail = entryEffectLife( spep_1 + 0, SP_03, 56, 0x100, -1, 0, 0, 0 );  --尻尾でのなぎ払い	ef_003
setEffMoveKey( spep_1 + 0, tail, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, tail, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tail, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, tail, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tail, 0 );
setEffRotateKey( spep_1 + 56, tail, 0 );
setEffAlphaKey( spep_1 + 0, tail, 255 );
setEffAlphaKey( spep_1 + 56 -1, tail, 255 );
setEffAlphaKey( spep_1 + 56, tail, 0 );

-- ** 音 ** --
--尻尾構える
SE004 = playSe( spep_1 + 4, 1189 );
setSeVolumeByWorkId( spep_1 + 4, SE004, 136 );

--尻尾振る
SE005 = playSe( spep_1 + 20, 9 );
setSeVolumeByWorkId( spep_1 + 24, SE005, 74 );



--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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
--尻尾振る
SE006 = playSe( spep_1 + 20, 1116 );
stopSe( spep_1 + 46, SE006, 10 );
--尻尾ヒット
SE007 = playSe( spep_1 + 54, 1004 );
setSeVolumeByWorkId( spep_1 + 54, SE007, 74 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- 尻尾攻撃(116F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tailatk_f = entryEffectLife( spep_2 + 0, SP_04, 116, 0x100, -1, 0, 0, 0 );  --尻尾攻撃　手前	ef_004
setEffMoveKey( spep_2 + 0, tailatk_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, tailatk_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tailatk_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tailatk_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tailatk_f, 0 );
setEffRotateKey( spep_2 + 116, tailatk_f, 0 );
setEffAlphaKey( spep_2 + 0, tailatk_f, 255 );
setEffAlphaKey( spep_2 + 116 -1, tailatk_f, 255 );
setEffAlphaKey( spep_2 + 116, tailatk_f, 0 );

tailatk_b = entryEffectLife( spep_2 + 0, SP_05, 116, 0x80, -1, 0, 0, 0 );  --尻尾攻撃　奥	ef_005
setEffMoveKey( spep_2 + 0, tailatk_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, tailatk_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tailatk_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tailatk_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tailatk_b, 0 );
setEffRotateKey( spep_2 + 116, tailatk_b, 0 );
setEffAlphaKey( spep_2 + 0, tailatk_b, 255 );
setEffAlphaKey( spep_2 + 116 -1, tailatk_b, 255 );
setEffAlphaKey( spep_2 + 116, tailatk_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 119, 1, 0 );
changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 -3 + 8, 1, 107 );

setMoveKey( spep_2 + 0, 1, 159.2, -60 , 0 );
setMoveKey( spep_2 + 1, 1, 137.3, -52.9 , 0 );
setMoveKey( spep_2 + 2, 1, 97.4, -38.5 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 75.5, -35.9 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 13.3, -122.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 15.1, -226.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 32.9, -237.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 40.4, -235.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 52.6, -258.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 69.2, -288.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 90.1, -326.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 94.2, -331.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 94.3, -350.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 74.9, -326.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 63.7, -367.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 96.1, -320.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 104.6, -359.7 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 89.5, -373.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 82.8, -338.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 72.5, -376.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 122.9, -347.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 93.8, -373.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 118.1, -369.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 74.8, -351.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 93.2, -391.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 111.3, -366.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 115.2, -370 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 109.4, -381 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 95.9, -379.9 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 86.4, -406.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 132, -356.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 106.9, -378 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 115.7, -403.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 98.7, -384 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 97.6, -406.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 134.5, -379.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 108, -393.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 109.4, -406.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 120.7, -393.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 122.3, -401.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 105.6, -402.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 121.8, -411.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 119.3, -395.1 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 129.1, -409.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 113.5, -403.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 114.6, -416.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 125.7, -402.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 126.9, -409.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 119.5, -409.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 121.7, -415.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 117.7, -406.2 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 132.6, -415.7 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 116.7, -409.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 127.1, -420.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 124.1, -403.9 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 123.9, -418.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 121.6, -413.6 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 123.5, -418.6 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 128.7, -407.8 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 129.5, -414.7 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 129.5, -414.7 , 0 );

setScaleKey( spep_2 + 0, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 1, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 2, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 7, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 8, 1, 0.834, 0.834 );
setScaleKey( spep_2 -3 + 10, 1, 1.038, 1.038 );
setScaleKey( spep_2 -3 + 12, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 14, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 16, 1, 1.134, 1.134 );
setScaleKey( spep_2 -3 + 18, 1, 1.206, 1.206 );
setScaleKey( spep_2 -3 + 20, 1, 1.296, 1.296 );
setScaleKey( spep_2 -3 + 22, 1, 1.302, 1.302 );
setScaleKey( spep_2 -3 + 24, 1, 1.308, 1.308 );
setScaleKey( spep_2 -3 + 26, 1, 1.314, 1.314 );
setScaleKey( spep_2 -3 + 28, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 30, 1, 1.332, 1.332 );
setScaleKey( spep_2 -3 + 32, 1, 1.338, 1.338 );
setScaleKey( spep_2 -3 + 34, 1, 1.344, 1.344 );
setScaleKey( spep_2 -3 + 36, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 38, 1, 1.356, 1.356 );
--setScaleKey( spep_2 -3 + 40, 1, 1.356, 1.356 );
setScaleKey( spep_2 -3 + 42, 1, 1.362, 1.362 );
setScaleKey( spep_2 -3 + 44, 1, 1.368, 1.368 );
setScaleKey( spep_2 -3 + 46, 1, 1.374, 1.374 );
setScaleKey( spep_2 -3 + 48, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 50, 1, 1.386, 1.386 );
setScaleKey( spep_2 -3 + 52, 1, 1.392, 1.392 );
--setScaleKey( spep_2 -3 + 54, 1, 1.392, 1.392 );
setScaleKey( spep_2 -3 + 56, 1, 1.398, 1.398 );
setScaleKey( spep_2 -3 + 58, 1, 1.404, 1.404 );
setScaleKey( spep_2 -3 + 60, 1, 1.41, 1.41 );
--setScaleKey( spep_2 -3 + 62, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 64, 1, 1.416, 1.416 );
setScaleKey( spep_2 -3 + 66, 1, 1.422, 1.422 );
--setScaleKey( spep_2 -3 + 68, 1, 1.422, 1.422 );
setScaleKey( spep_2 -3 + 70, 1, 1.428, 1.428 );
--setScaleKey( spep_2 -3 + 72, 1, 1.428, 1.428 );
setScaleKey( spep_2 -3 + 74, 1, 1.434, 1.434 );
--setScaleKey( spep_2 -3 + 76, 1, 1.434, 1.434 );
setScaleKey( spep_2 -3 + 78, 1, 1.44, 1.44 );
--setScaleKey( spep_2 -3 + 80, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 82, 1, 1.446, 1.446 );
--setScaleKey( spep_2 -3 + 84, 1, 1.446, 1.446 );
setScaleKey( spep_2 -3 + 86, 1, 1.452, 1.452 );
--setScaleKey( spep_2 -3 + 90, 1, 1.452, 1.452 );
setScaleKey( spep_2 -3 + 92, 1, 1.458, 1.458 );
--setScaleKey( spep_2 -3 + 98, 1, 1.458, 1.458 );
setScaleKey( spep_2 -3 + 100, 1, 1.464, 1.464 );
--setScaleKey( spep_2 -3 + 112, 1, 1.464, 1.464 );
setScaleKey( spep_2 -3 + 114, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 119, 1, 1.47, 1.47 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 7, 1, 0 );
setRotateKey( spep_2 -3 + 8, 1, 8.1 );
setRotateKey( spep_2 -3 + 10, 1, 8 );
setRotateKey( spep_2 -3 + 12, 1, 7.9 );
setRotateKey( spep_2 -3 + 14, 1, 7.8 );
setRotateKey( spep_2 -3 + 16, 1, 7.6 );
setRotateKey( spep_2 -3 + 18, 1, 7.4 );
setRotateKey( spep_2 -3 + 20, 1, 7.1 );
setRotateKey( spep_2 -3 + 22, 1, 7 );
setRotateKey( spep_2 -3 + 28, 1, 7 );
setRotateKey( spep_2 -3 + 30, 1, 6.9 );
setRotateKey( spep_2 -3 + 36, 1, 6.9 );
setRotateKey( spep_2 -3 + 38, 1, 6.8 );
setRotateKey( spep_2 -3 + 48, 1, 6.8 );
setRotateKey( spep_2 -3 + 50, 1, 6.7 );
setRotateKey( spep_2 -3 + 60, 1, 6.7 );
setRotateKey( spep_2 -3 + 62, 1, 6.6 );
setRotateKey( spep_2 -3 + 74, 1, 6.6 );
setRotateKey( spep_2 -3 + 76, 1, 6.5 );
setRotateKey( spep_2 -3 + 102, 1, 6.5 );
setRotateKey( spep_2 -3 + 104, 1, 6.4 );
setRotateKey( spep_2 -3 + 119, 1, 6.4 );

-- ** 音 ** --
--尻尾ヒット
SE008 = playSe( spep_2 + 4, 1009 );

--尻尾ヒット
SE009 = playSe( spep_2 + 4, 1135 );
setSeVolumeByWorkId( spep_2 + 4, SE009, 58 );

--尻尾ヒット
SE010 = playSe( spep_2 + 4, 1170 );
setSeVolumeByWorkId( spep_2 + 4, SE010, 66 );
setPitch( spep_2 + 4, SE010, -600 );
setTimeStretch( SE010, 0.6, 10, 1 );

--尻尾ヒット
SE011 = playSe( spep_2 + 6, 1110 );

--地面爆発
SE012 = playSe( spep_2 + 18, 1023 );
setSeVolumeByWorkId( spep_2 + 18, SE012, 84 );

--地面爆発
SE013 = playSe( spep_2 + 20, 1159 );
setSeVolumeByWorkId( spep_2 + 20, SE013, 68 );
stopSe( spep_2 + 100, SE013, 82 );

--飛び上がる
SE014 = playSe( spep_2 + 88, 44 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;


------------------------------------------------------
-- 岩場に着地(86F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
landing = entryEffectLife( spep_3 + 0, SP_06, 86, 0x100, -1, 0, 0, 0 );  --岩場に着地	ef_006
setEffMoveKey( spep_3 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, landing, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, landing, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, landing, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, landing, 0 );
setEffRotateKey( spep_3 + 86, landing, 0 );
setEffAlphaKey( spep_3 + 0, landing, 255 );
setEffAlphaKey( spep_3 + 86 -1, landing, 255 );
setEffAlphaKey( spep_3 + 86, landing, 0 );

-- ** 音 ** --
--着地
SE015 = playSe( spep_3 + 30, 1135 );

--着地
SE016 = playSe( spep_3 + 30, 1014 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;


------------------------------------------------------
-- ギャリック砲の構え(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_4 + 0, SP_07, 85, 0x100, -1, 0, 0, 0 );  --ギャリック砲の構え　セリフカットイン	ef_007
setEffMoveKey( spep_4 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_4 + 85, kamae, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_4 + 85, kamae, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kamae, 0 );
setEffRotateKey( spep_4 + 85, kamae, 0 );
setEffAlphaKey( spep_4 + 0, kamae, 255 );
setEffAlphaKey( spep_4 + 85 -1, kamae, 255 );
setEffAlphaKey( spep_4 + 85, kamae, 0 );

spep_x = spep_4 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
SE017 = playSe( spep_4 + 8, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 85 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
--entryFade( spep_4 + 86 -1, 0, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 85;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_6 = showCardCutin(spep_5, 0);


------------------------------------------------------
-- 気弾タメ(116F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_6 + 0, SP_08, 116, 0x100, -1, 0, 0, 0 );  --気弾タメ	ef_008
setEffMoveKey( spep_6 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, tame, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, tame, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame, 0 );
setEffRotateKey( spep_6 + 116, tame, 0 );
setEffAlphaKey( spep_6 + 0, tame, 255 );
setEffAlphaKey( spep_6 + 116 -1, tame, 255 );
setEffAlphaKey( spep_6 + 116, tame, 0 );

-- ** 音 ** --
--気弾溜め
SE020 = playSe( spep_6 + 0, 1158 );
setSeVolumeByWorkId( spep_6 + 0, SE020, 70 );
stopSe( spep_6 + 98, SE020, 18 );

--気弾溜め
SE021 = playSe( spep_6 + 0, 1203 );
setSeVolumeByWorkId( spep_6 + 0, SE021, 75 );
stopSe( spep_6 + 98, SE021, 18 );

--気弾溜め
SE018 = playSe( spep_6 + 2, 1204 );
setSeVolumeByWorkId( spep_6 + 2, SE018, 31 );
setSeVolumeByWorkId( spep_6 + 4, SE018, 62 );
setSeVolumeByWorkId( spep_6 + 6, SE018, 93 );
setSeVolumeByWorkId( spep_6 + 8, SE018, 124 );
setSeVolumeByWorkId( spep_6 + 10, SE018, 155 );
setSeVolumeByWorkId( spep_6 + 12, SE018, 186 );
stopSe( spep_6 + 98, SE018, 18 );
setStartTimeMs( SE018,  1917 );
setPitch( spep_6 + 2, SE018, -200 );
setTimeStretch( SE018, 0.87, 10, 1 );

--気弾溜め
SE022 = playSe( spep_6 + 44, 1130 );
setSeVolumeByWorkId( spep_6 + 44, SE022, 47 );

--気弾発射
SE023 = playSe( spep_6 + 102, 1027 );

--気弾発射
SE024 = playSe( spep_6 + 102, 1213 );
setSeVolumeByWorkId( spep_6 + 102, SE024, 58 );
stopSe( spep_6 +116 +116 + 82, SE024, 8 );

--気弾発射
SE025 = playSe( spep_6 + 112, 1193 );
stopSe( spep_6 +116 +116 + 72, SE025, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;


------------------------------------------------------
-- 発射(116F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
firing = entryEffectLife( spep_7 + 0, SP_09, 116, 0x100, -1, 0, 0, 0 );  --発射	ef_009
setEffMoveKey( spep_7 + 0, firing, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116, firing, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, firing, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, firing, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, firing, 0 );
setEffRotateKey( spep_7 + 116, firing, 0 );
setEffAlphaKey( spep_7 + 0, firing, 255 );
setEffAlphaKey( spep_7 + 116 -1, firing, 255 );
setEffAlphaKey( spep_7 + 116, firing, 0 );

-- ** 音 ** --
--気弾向かっていく
SE026 = playSe( spep_7 + 112, 1202,"",0.6 );
setSeVolumeByWorkId( spep_7 + 112, SE026, 232 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 116;


------------------------------------------------------
-- 迫る気弾(122F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_8 + 0, SP_10, 122, 0x100, -1, 0, 0, 0 );  --迫る気弾　手前	ef_010
setEffMoveKey( spep_8 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 122, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 122, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, shot_f, 0 );
setEffRotateKey( spep_8 + 122, shot_f, 0 );
setEffAlphaKey( spep_8 + 0, shot_f, 255 );
setEffAlphaKey( spep_8 + 122 -1, shot_f, 255 );
setEffAlphaKey( spep_8 + 122, shot_f, 0 );

shot_b = entryEffectLife( spep_8 + 0, SP_11, 122, 0x80, -1, 0, 0, 0 );  --迫る気弾　奥	ef_011
setEffMoveKey( spep_8 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 122, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 122, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, shot_b, 0 );
setEffRotateKey( spep_8 + 122, shot_b, 0 );
setEffAlphaKey( spep_8 + 0, shot_b, 255 );
setEffAlphaKey( spep_8 + 122 -1, shot_b, 255 );
setEffAlphaKey( spep_8 + 122, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -3 + 62, 1, 0 );
changeAnime( spep_8 + 0, 1, 5 );

b8 = 30;
setMoveKey( spep_8 + 0, 1, 281.5, -298.6 +b8 , 0 );
setMoveKey( spep_8 + 1, 1, 277.7, -302.2 +b8 , 0 );
setMoveKey( spep_8 + 2, 1, 284.7, -295.3 +b8 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 283.5, -301.2 +b8 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 276.3, -294 +b8 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 280.9, -300.3 +b8 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 273, -293.4 +b8 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 276.5, -293.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 267.8, -298.4 +b8 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 271.1, -291.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 269.2, -296.8 +b8 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 257.7, -287.5 +b8 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 252.6, -294.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 256.5, -285.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 245.6, -292.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 30, 1, 246.3, -289.7 +b8 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 234.2, -279.7 +b8 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 236, -286.3 +b8 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 224.3, -284.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 38, 1, 223.6, -275.9 +b8 , 0 );
setMoveKey( spep_8 -3 + 40, 1, 215.2, -275.9 +b8 , 0 );
setMoveKey( spep_8 -3 + 42, 1, 208, -275.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 44, 1, 198.8, -272.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 46, 1, 193.5, -264.7 +b8 , 0 );
setMoveKey( spep_8 -3 + 48, 1, 184.7, -268.6 +b8 , 0 );
setMoveKey( spep_8 -3 + 50, 1, 173.9, -260.4 +b8 , 0 );
setMoveKey( spep_8 -3 + 52, 1, 168.6, -265.2 +b8 , 0 );
setMoveKey( spep_8 -3 + 54, 1, 159.2, -258 +b8 , 0 );
setMoveKey( spep_8 -3 + 56, 1, 152, -253.4 +b8 , 0 );
setMoveKey( spep_8 -3 + 58, 1, 123.4, -247.8 +b8 , 0 );
setMoveKey( spep_8 -3 + 60, 1, 96.4, -240.2 +b8 , 0 );
setMoveKey( spep_8 -3 + 62, 1, 70.2, -232.9 +b8 , 0 );

setScaleKey( spep_8 + 0, 1, 0.43, 0.43 );
setScaleKey( spep_8 -3 + 6, 1, 0.43, 0.43 );
setScaleKey( spep_8 -3 + 8, 1, 0.44, 0.44 );
setScaleKey( spep_8 -3 + 10, 1, 0.44, 0.44 );
setScaleKey( spep_8 -3 + 12, 1, 0.45, 0.45 );
setScaleKey( spep_8 -3 + 14, 1, 0.45, 0.45 );
setScaleKey( spep_8 -3 + 16, 1, 0.46, 0.46 );
setScaleKey( spep_8 -3 + 18, 1, 0.47, 0.47 );
setScaleKey( spep_8 -3 + 20, 1, 0.48, 0.48 );
setScaleKey( spep_8 -3 + 22, 1, 0.49, 0.49 );
setScaleKey( spep_8 -3 + 24, 1, 0.5, 0.5 );
setScaleKey( spep_8 -3 + 26, 1, 0.52, 0.52 );
setScaleKey( spep_8 -3 + 28, 1, 0.53, 0.53 );
setScaleKey( spep_8 -3 + 30, 1, 0.55, 0.55 );
setScaleKey( spep_8 -3 + 32, 1, 0.56, 0.56 );
setScaleKey( spep_8 -3 + 34, 1, 0.58, 0.58 );
setScaleKey( spep_8 -3 + 36, 1, 0.6, 0.6 );
setScaleKey( spep_8 -3 + 38, 1, 0.62, 0.62 );
setScaleKey( spep_8 -3 + 40, 1, 0.64, 0.64 );
setScaleKey( spep_8 -3 + 42, 1, 0.66, 0.66 );
setScaleKey( spep_8 -3 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_8 -3 + 46, 1, 0.7, 0.7 );
setScaleKey( spep_8 -3 + 48, 1, 0.73, 0.73 );
setScaleKey( spep_8 -3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_8 -3 + 52, 1, 0.78, 0.78 );
setScaleKey( spep_8 -3 + 54, 1, 0.81, 0.81 );
setScaleKey( spep_8 -3 + 56, 1, 0.84, 0.84 );
setScaleKey( spep_8 -3 + 58, 1, 0.98, 0.98 );
setScaleKey( spep_8 -3 + 60, 1, 1.12, 1.12 );
setScaleKey( spep_8 -3 + 62, 1, 1.25, 1.25 );

setRotateKey( spep_8 + 0, 1, 45 );
setRotateKey( spep_8 -3 + 62, 1, 45 );

-- ** 音 ** --
--気弾向かっていく
SE027 = playSe( spep_8 + 26, 1021 );
setSeVolumeByWorkId( spep_8 + 26, SE027, 110 );

--気弾ヒット
SE028 = playSe( spep_8 + 60, 1023 );
setSeVolumeByWorkId( spep_8 + 60, SE028, 77 );

--気弾ヒット
SE029 = playSe( spep_8 + 60, 1159 );
setSeVolumeByWorkId( spep_8 + 60, SE029, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 122 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 122;


------------------------------------------------------
-- フィニッシュ(146F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --フィニッシュ	ef_012
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 146, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 146, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 146, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 146, finish, 255 );

-- ** 音 ** --
--ラスト爆発
SE030 = playSe( spep_9 + 34, 1024 );

--ラスト爆発
SE031 = playSe( spep_9 + 34, 1067 );

--ラスト爆発
SE032 = playSe( spep_9 + 34, 1188 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 146;

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 36 );
endPhase( spep_9 + 136 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 対峙(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 66, 0x100, -1, 0, 0, 0 );  --対峙　手前    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 66, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 66 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 66, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 66, 0x80, -1, 0, 0, 0 );  --対峙　奥  ef_002
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

setMoveKey( spep_0 + 0, 1, 95.1, 75.8 , 0 );
setMoveKey( spep_0 + 1, 1, 98.4, 75.7 , 0 );
setMoveKey( spep_0 + 2, 1, 101.7, 75.6 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 105.1, 75.4 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 105.1, 75.4 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 108.4, 75.3 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 108.4, 75.3 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 111.8, 75.2 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 115.2, 75.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 118.6, 75.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 122.1, 75 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 125.6, 74.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 129.1, 74.9 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 132.6, 74.8 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 136.2, 74.8 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 139.8, 74.8 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 143.5, 74.8 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 147.2, 74.8 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 150.9, 74.8 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 154.7, 74.9 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 158.5, 74.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 162.3, 74.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 163.8, 75.1 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 165.3, 75.3 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 166.8, 75.4 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 168.2, 75.6 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 169.5, 75.8 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 170.9, 75.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 172.1, 76.1 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 173.4, 76.3 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 174.6, 76.4 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 175.8, 76.6 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 176.9, 76.8 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 178, 76.9 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 179.1, 77.1 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 180.1, 77.3 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 181.1, 77.4 , 0 );
setMoveKey( spep_0 -3 + 69, 1, 181.1, 77.4 , 0 );

setScaleKey( spep_0 + 0, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 1, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 2, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 3, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 4, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 5, 1, 0.803, 0.803 );
setScaleKey( spep_0 + 6, 1, 0.803, 0.803 );
--setScaleKey( spep_0 -3 + 32, 1, 0.803, 0.803 );
setScaleKey( spep_0 -3 + 34, 1, 0.814, 0.814 );
--setScaleKey( spep_0 -3 + 42, 1, 0.814, 0.814 );
setScaleKey( spep_0 -3 + 44, 1, 0.825, 0.825 );
--setScaleKey( spep_0 -3 + 50, 1, 0.825, 0.825 );
setScaleKey( spep_0 -3 + 52, 1, 0.836, 0.836 );
--setScaleKey( spep_0 -3 + 58, 1, 0.836, 0.836 );
setScaleKey( spep_0 -3 + 60, 1, 0.847, 0.847 );
--setScaleKey( spep_0 -3 + 66, 1, 0.847, 0.847 );
setScaleKey( spep_0 -3 + 68, 1, 0.858, 0.858 );
setScaleKey( spep_0 -3 + 69, 1, 0.858, 0.858 );

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
SE001 = playSe( spep_0 + 0, 8 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--尻尾構える
SE002 = playSe( spep_0 + 64, 1196 );
setStartTimeMs( SE002,  983 );

--尻尾構える
SE003 = playSe( spep_0 + 64, 1117 );
stopSe( spep_0 +66 + 10, SE003, 6 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 66;


------------------------------------------------------
-- 尻尾でのなぎ払い(56F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
tail = entryEffectLife( spep_1 + 0, SP_03r, 56, 0x100, -1, 0, 0, 0 );  --尻尾でのなぎ払い    ef_003
setEffMoveKey( spep_1 + 0, tail, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, tail, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tail, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, tail, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tail, 0 );
setEffRotateKey( spep_1 + 56, tail, 0 );
setEffAlphaKey( spep_1 + 0, tail, 255 );
setEffAlphaKey( spep_1 + 56 -1, tail, 255 );
setEffAlphaKey( spep_1 + 56, tail, 0 );

-- ** 音 ** --
--尻尾構える
SE004 = playSe( spep_1 + 4, 1189 );
setSeVolumeByWorkId( spep_1 + 4, SE004, 136 );

--尻尾振る
SE005 = playSe( spep_1 + 20, 9 );
setSeVolumeByWorkId( spep_1 + 24, SE005, 74 );


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 36 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
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
--尻尾振る
SE006 = playSe( spep_1 + 20, 1116 );
stopSe( spep_1 + 46, SE006, 10 );
--尻尾ヒット
SE007 = playSe( spep_1 + 54, 1004 );
setSeVolumeByWorkId( spep_1 + 54, SE007, 74 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;


------------------------------------------------------
-- 尻尾攻撃(116F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tailatk_f = entryEffectLife( spep_2 + 0, SP_04r, 116, 0x100, -1, 0, 0, 0 );  --尻尾攻撃　手前   ef_004
setEffMoveKey( spep_2 + 0, tailatk_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, tailatk_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tailatk_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tailatk_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tailatk_f, 0 );
setEffRotateKey( spep_2 + 116, tailatk_f, 0 );
setEffAlphaKey( spep_2 + 0, tailatk_f, 255 );
setEffAlphaKey( spep_2 + 116 -1, tailatk_f, 255 );
setEffAlphaKey( spep_2 + 116, tailatk_f, 0 );

tailatk_b = entryEffectLife( spep_2 + 0, SP_05, 116, 0x80, -1, 0, 0, 0 );  --尻尾攻撃　奥 ef_005
setEffMoveKey( spep_2 + 0, tailatk_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, tailatk_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tailatk_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tailatk_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tailatk_b, 0 );
setEffRotateKey( spep_2 + 116, tailatk_b, 0 );
setEffAlphaKey( spep_2 + 0, tailatk_b, 255 );
setEffAlphaKey( spep_2 + 116 -1, tailatk_b, 255 );
setEffAlphaKey( spep_2 + 116, tailatk_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 119, 1, 0 );
changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 -3 + 8, 1, 107 );

setMoveKey( spep_2 + 0, 1, 159.2, -60 , 0 );
setMoveKey( spep_2 + 1, 1, 137.3, -52.9 , 0 );
setMoveKey( spep_2 + 2, 1, 97.4, -38.5 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 75.5, -35.9 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 13.3, -122.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 15.1, -226.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 32.9, -237.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 40.4, -235.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 52.6, -258.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 69.2, -288.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 90.1, -326.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 94.2, -331.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 94.3, -350.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 74.9, -326.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 63.7, -367.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 96.1, -320.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 104.6, -359.7 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 89.5, -373.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 82.8, -338.8 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 72.5, -376.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 122.9, -347.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 93.8, -373.2 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 118.1, -369.6 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 74.8, -351.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 93.2, -391.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 111.3, -366.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 115.2, -370 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 109.4, -381 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 95.9, -379.9 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 86.4, -406.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 132, -356.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 106.9, -378 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 115.7, -403.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 98.7, -384 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 97.6, -406.8 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 134.5, -379.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 108, -393.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 109.4, -406.9 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 120.7, -393.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 122.3, -401.4 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 105.6, -402.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 121.8, -411.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 119.3, -395.1 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 129.1, -409.4 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 113.5, -403.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 114.6, -416.4 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 125.7, -402.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 126.9, -409.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 119.5, -409.8 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 121.7, -415.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 117.7, -406.2 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 132.6, -415.7 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 116.7, -409.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 127.1, -420.7 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 124.1, -403.9 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 123.9, -418.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 121.6, -413.6 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 123.5, -418.6 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 128.7, -407.8 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 129.5, -414.7 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 129.5, -414.7 , 0 );

setScaleKey( spep_2 + 0, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 1, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 2, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 7, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 8, 1, 0.834, 0.834 );
setScaleKey( spep_2 -3 + 10, 1, 1.038, 1.038 );
setScaleKey( spep_2 -3 + 12, 1, 1.05, 1.05 );
setScaleKey( spep_2 -3 + 14, 1, 1.08, 1.08 );
setScaleKey( spep_2 -3 + 16, 1, 1.134, 1.134 );
setScaleKey( spep_2 -3 + 18, 1, 1.206, 1.206 );
setScaleKey( spep_2 -3 + 20, 1, 1.296, 1.296 );
setScaleKey( spep_2 -3 + 22, 1, 1.302, 1.302 );
setScaleKey( spep_2 -3 + 24, 1, 1.308, 1.308 );
setScaleKey( spep_2 -3 + 26, 1, 1.314, 1.314 );
setScaleKey( spep_2 -3 + 28, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 30, 1, 1.332, 1.332 );
setScaleKey( spep_2 -3 + 32, 1, 1.338, 1.338 );
setScaleKey( spep_2 -3 + 34, 1, 1.344, 1.344 );
setScaleKey( spep_2 -3 + 36, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 38, 1, 1.356, 1.356 );
--setScaleKey( spep_2 -3 + 40, 1, 1.356, 1.356 );
setScaleKey( spep_2 -3 + 42, 1, 1.362, 1.362 );
setScaleKey( spep_2 -3 + 44, 1, 1.368, 1.368 );
setScaleKey( spep_2 -3 + 46, 1, 1.374, 1.374 );
setScaleKey( spep_2 -3 + 48, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 50, 1, 1.386, 1.386 );
setScaleKey( spep_2 -3 + 52, 1, 1.392, 1.392 );
--setScaleKey( spep_2 -3 + 54, 1, 1.392, 1.392 );
setScaleKey( spep_2 -3 + 56, 1, 1.398, 1.398 );
setScaleKey( spep_2 -3 + 58, 1, 1.404, 1.404 );
setScaleKey( spep_2 -3 + 60, 1, 1.41, 1.41 );
--setScaleKey( spep_2 -3 + 62, 1, 1.41, 1.41 );
setScaleKey( spep_2 -3 + 64, 1, 1.416, 1.416 );
setScaleKey( spep_2 -3 + 66, 1, 1.422, 1.422 );
--setScaleKey( spep_2 -3 + 68, 1, 1.422, 1.422 );
setScaleKey( spep_2 -3 + 70, 1, 1.428, 1.428 );
--setScaleKey( spep_2 -3 + 72, 1, 1.428, 1.428 );
setScaleKey( spep_2 -3 + 74, 1, 1.434, 1.434 );
--setScaleKey( spep_2 -3 + 76, 1, 1.434, 1.434 );
setScaleKey( spep_2 -3 + 78, 1, 1.44, 1.44 );
--setScaleKey( spep_2 -3 + 80, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 82, 1, 1.446, 1.446 );
--setScaleKey( spep_2 -3 + 84, 1, 1.446, 1.446 );
setScaleKey( spep_2 -3 + 86, 1, 1.452, 1.452 );
--setScaleKey( spep_2 -3 + 90, 1, 1.452, 1.452 );
setScaleKey( spep_2 -3 + 92, 1, 1.458, 1.458 );
--setScaleKey( spep_2 -3 + 98, 1, 1.458, 1.458 );
setScaleKey( spep_2 -3 + 100, 1, 1.464, 1.464 );
--setScaleKey( spep_2 -3 + 112, 1, 1.464, 1.464 );
setScaleKey( spep_2 -3 + 114, 1, 1.47, 1.47 );
setScaleKey( spep_2 -3 + 119, 1, 1.47, 1.47 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 7, 1, 0 );
setRotateKey( spep_2 -3 + 8, 1, 8.1 );
setRotateKey( spep_2 -3 + 10, 1, 8 );
setRotateKey( spep_2 -3 + 12, 1, 7.9 );
setRotateKey( spep_2 -3 + 14, 1, 7.8 );
setRotateKey( spep_2 -3 + 16, 1, 7.6 );
setRotateKey( spep_2 -3 + 18, 1, 7.4 );
setRotateKey( spep_2 -3 + 20, 1, 7.1 );
setRotateKey( spep_2 -3 + 22, 1, 7 );
setRotateKey( spep_2 -3 + 28, 1, 7 );
setRotateKey( spep_2 -3 + 30, 1, 6.9 );
setRotateKey( spep_2 -3 + 36, 1, 6.9 );
setRotateKey( spep_2 -3 + 38, 1, 6.8 );
setRotateKey( spep_2 -3 + 48, 1, 6.8 );
setRotateKey( spep_2 -3 + 50, 1, 6.7 );
setRotateKey( spep_2 -3 + 60, 1, 6.7 );
setRotateKey( spep_2 -3 + 62, 1, 6.6 );
setRotateKey( spep_2 -3 + 74, 1, 6.6 );
setRotateKey( spep_2 -3 + 76, 1, 6.5 );
setRotateKey( spep_2 -3 + 102, 1, 6.5 );
setRotateKey( spep_2 -3 + 104, 1, 6.4 );
setRotateKey( spep_2 -3 + 119, 1, 6.4 );

-- ** 音 ** --
--尻尾ヒット
SE008 = playSe( spep_2 + 4, 1009 );

--尻尾ヒット
SE009 = playSe( spep_2 + 4, 1135 );
setSeVolumeByWorkId( spep_2 + 4, SE009, 58 );

--尻尾ヒット
SE010 = playSe( spep_2 + 4, 1170 );
setSeVolumeByWorkId( spep_2 + 4, SE010, 66 );
setPitch( spep_2 + 4, SE010, -600 );
setTimeStretch( SE010, 0.6, 10, 1 );

--尻尾ヒット
SE011 = playSe( spep_2 + 6, 1110 );

--地面爆発
SE012 = playSe( spep_2 + 18, 1023 );
setSeVolumeByWorkId( spep_2 + 18, SE012, 84 );

--地面爆発
SE013 = playSe( spep_2 + 20, 1159 );
setSeVolumeByWorkId( spep_2 + 20, SE013, 68 );
stopSe( spep_2 + 100, SE013, 82 );

--飛び上がる
SE014 = playSe( spep_2 + 88, 44 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;


------------------------------------------------------
-- 岩場に着地(86F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
landing = entryEffectLife( spep_3 + 0, SP_06r, 86, 0x100, -1, 0, 0, 0 );  --岩場に着地    ef_006
setEffMoveKey( spep_3 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, landing, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, landing, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, landing, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, landing, 0 );
setEffRotateKey( spep_3 + 86, landing, 0 );
setEffAlphaKey( spep_3 + 0, landing, 255 );
setEffAlphaKey( spep_3 + 86 -1, landing, 255 );
setEffAlphaKey( spep_3 + 86, landing, 0 );

-- ** 音 ** --
--着地
SE015 = playSe( spep_3 + 30, 1135 );

--着地
SE016 = playSe( spep_3 + 30, 1014 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;


------------------------------------------------------
-- ギャリック砲の構え(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_4 + 0, SP_07, 86, 0x100, -1, 0, 0, 0 );  --ギャリック砲の構え　セリフカットイン ef_007
setEffMoveKey( spep_4 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, kamae, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, kamae, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kamae, 0 );
setEffRotateKey( spep_4 + 86, kamae, 0 );
setEffAlphaKey( spep_4 + 0, kamae, 255 );
setEffAlphaKey( spep_4 + 86 -1, kamae, 255 );
setEffAlphaKey( spep_4 + 86, kamae, 0 );

spep_x = spep_4 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
--SE017 = playSe( spep_4 + 8, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


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
-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- 気弾タメ(116F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_6 + 0, SP_08, 116, 0x100, -1, 0, 0, 0 );  --気弾タメ   ef_008
setEffMoveKey( spep_6 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, tame, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_6 + 116, tame, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tame, 0 );
setEffRotateKey( spep_6 + 116, tame, 0 );
setEffAlphaKey( spep_6 + 0, tame, 255 );
setEffAlphaKey( spep_6 + 116 -1, tame, 255 );
setEffAlphaKey( spep_6 + 116, tame, 0 );

-- ** 音 ** --
--気弾溜め
SE020 = playSe( spep_6 + 0, 1158 );
setSeVolumeByWorkId( spep_6 + 0, SE020, 70 );
stopSe( spep_6 + 98, SE020, 18 );

--気弾溜め
SE021 = playSe( spep_6 + 0, 1203 );
setSeVolumeByWorkId( spep_6 + 0, SE021, 75 );
stopSe( spep_6 + 98, SE021, 18 );

--気弾溜め
SE018 = playSe( spep_6 + 2, 1204 );
setSeVolumeByWorkId( spep_6 + 2, SE018, 31 );
setSeVolumeByWorkId( spep_6 + 4, SE018, 62 );
setSeVolumeByWorkId( spep_6 + 6, SE018, 93 );
setSeVolumeByWorkId( spep_6 + 8, SE018, 124 );
setSeVolumeByWorkId( spep_6 + 10, SE018, 155 );
setSeVolumeByWorkId( spep_6 + 12, SE018, 186 );
stopSe( spep_6 + 98, SE018, 18 );
setStartTimeMs( SE018,  1917 );
setPitch( spep_6 + 2, SE018, -200 );
setTimeStretch( SE018, 0.87, 10, 1 );

--気弾溜め
SE022 = playSe( spep_6 + 44, 1130 );
setSeVolumeByWorkId( spep_6 + 44, SE022, 47 );

--気弾発射
SE023 = playSe( spep_6 + 102, 1027 );

--気弾発射
SE024 = playSe( spep_6 + 102, 1213 );
setSeVolumeByWorkId( spep_6 + 102, SE024, 58 );
stopSe( spep_6 +116 +116 + 82, SE024, 8 );

--気弾発射
SE025 = playSe( spep_6 + 112, 1193 );
stopSe( spep_6 +116 +116 + 72, SE025, 8 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;


------------------------------------------------------
-- 発射(116F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
firing = entryEffectLife( spep_7 + 0, SP_09r, 116, 0x100, -1, 0, 0, 0 );  --発射   ef_009
setEffMoveKey( spep_7 + 0, firing, 0, 0 , 0 );
setEffMoveKey( spep_7 + 116, firing, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, firing, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, firing, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, firing, 0 );
setEffRotateKey( spep_7 + 116, firing, 0 );
setEffAlphaKey( spep_7 + 0, firing, 255 );
setEffAlphaKey( spep_7 + 116 -1, firing, 255 );
setEffAlphaKey( spep_7 + 116, firing, 0 );

-- ** 音 ** --
--気弾向かっていく
SE026 = playSe( spep_7 + 112, 1202,"",0.6 );
setSeVolumeByWorkId( spep_7 + 112, SE026, 232 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 116;


------------------------------------------------------
-- 迫る気弾(122F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_8 + 0, SP_10r, 122, 0x100, -1, 0, 0, 0 );  --迫る気弾　手前  ef_010
setEffMoveKey( spep_8 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 122, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 122, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, shot_f, 0 );
setEffRotateKey( spep_8 + 122, shot_f, 0 );
setEffAlphaKey( spep_8 + 0, shot_f, 255 );
setEffAlphaKey( spep_8 + 122 -1, shot_f, 255 );
setEffAlphaKey( spep_8 + 122, shot_f, 0 );

shot_b = entryEffectLife( spep_8 + 0, SP_11, 122, 0x80, -1, 0, 0, 0 );  --迫る気弾　奥    ef_011
setEffMoveKey( spep_8 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 122, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 122, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, shot_b, 0 );
setEffRotateKey( spep_8 + 122, shot_b, 0 );
setEffAlphaKey( spep_8 + 0, shot_b, 255 );
setEffAlphaKey( spep_8 + 122 -1, shot_b, 255 );
setEffAlphaKey( spep_8 + 122, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 -3 + 62, 1, 0 );
changeAnime( spep_8 + 0, 1, 5 );

b8 = 30;
setMoveKey( spep_8 + 0, 1, 281.5, -298.6 +b8 , 0 );
setMoveKey( spep_8 + 1, 1, 277.7, -302.2 +b8 , 0 );
setMoveKey( spep_8 + 2, 1, 284.7, -295.3 +b8 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 283.5, -301.2 +b8 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 276.3, -294 +b8 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 280.9, -300.3 +b8 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 273, -293.4 +b8 , 0 );
setMoveKey( spep_8 -3 + 14, 1, 276.5, -293.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 16, 1, 267.8, -298.4 +b8 , 0 );
setMoveKey( spep_8 -3 + 18, 1, 271.1, -291.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 20, 1, 269.2, -296.8 +b8 , 0 );
setMoveKey( spep_8 -3 + 22, 1, 257.7, -287.5 +b8 , 0 );
setMoveKey( spep_8 -3 + 24, 1, 252.6, -294.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 26, 1, 256.5, -285.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 28, 1, 245.6, -292.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 30, 1, 246.3, -289.7 +b8 , 0 );
setMoveKey( spep_8 -3 + 32, 1, 234.2, -279.7 +b8 , 0 );
setMoveKey( spep_8 -3 + 34, 1, 236, -286.3 +b8 , 0 );
setMoveKey( spep_8 -3 + 36, 1, 224.3, -284.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 38, 1, 223.6, -275.9 +b8 , 0 );
setMoveKey( spep_8 -3 + 40, 1, 215.2, -275.9 +b8 , 0 );
setMoveKey( spep_8 -3 + 42, 1, 208, -275.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 44, 1, 198.8, -272.1 +b8 , 0 );
setMoveKey( spep_8 -3 + 46, 1, 193.5, -264.7 +b8 , 0 );
setMoveKey( spep_8 -3 + 48, 1, 184.7, -268.6 +b8 , 0 );
setMoveKey( spep_8 -3 + 50, 1, 173.9, -260.4 +b8 , 0 );
setMoveKey( spep_8 -3 + 52, 1, 168.6, -265.2 +b8 , 0 );
setMoveKey( spep_8 -3 + 54, 1, 159.2, -258 +b8 , 0 );
setMoveKey( spep_8 -3 + 56, 1, 152, -253.4 +b8 , 0 );
setMoveKey( spep_8 -3 + 58, 1, 123.4, -247.8 +b8 , 0 );
setMoveKey( spep_8 -3 + 60, 1, 96.4, -240.2 +b8 , 0 );
setMoveKey( spep_8 -3 + 62, 1, 70.2, -232.9 +b8 , 0 );

setScaleKey( spep_8 + 0, 1, 0.43, 0.43 );
setScaleKey( spep_8 -3 + 6, 1, 0.43, 0.43 );
setScaleKey( spep_8 -3 + 8, 1, 0.44, 0.44 );
setScaleKey( spep_8 -3 + 10, 1, 0.44, 0.44 );
setScaleKey( spep_8 -3 + 12, 1, 0.45, 0.45 );
setScaleKey( spep_8 -3 + 14, 1, 0.45, 0.45 );
setScaleKey( spep_8 -3 + 16, 1, 0.46, 0.46 );
setScaleKey( spep_8 -3 + 18, 1, 0.47, 0.47 );
setScaleKey( spep_8 -3 + 20, 1, 0.48, 0.48 );
setScaleKey( spep_8 -3 + 22, 1, 0.49, 0.49 );
setScaleKey( spep_8 -3 + 24, 1, 0.5, 0.5 );
setScaleKey( spep_8 -3 + 26, 1, 0.52, 0.52 );
setScaleKey( spep_8 -3 + 28, 1, 0.53, 0.53 );
setScaleKey( spep_8 -3 + 30, 1, 0.55, 0.55 );
setScaleKey( spep_8 -3 + 32, 1, 0.56, 0.56 );
setScaleKey( spep_8 -3 + 34, 1, 0.58, 0.58 );
setScaleKey( spep_8 -3 + 36, 1, 0.6, 0.6 );
setScaleKey( spep_8 -3 + 38, 1, 0.62, 0.62 );
setScaleKey( spep_8 -3 + 40, 1, 0.64, 0.64 );
setScaleKey( spep_8 -3 + 42, 1, 0.66, 0.66 );
setScaleKey( spep_8 -3 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_8 -3 + 46, 1, 0.7, 0.7 );
setScaleKey( spep_8 -3 + 48, 1, 0.73, 0.73 );
setScaleKey( spep_8 -3 + 50, 1, 0.75, 0.75 );
setScaleKey( spep_8 -3 + 52, 1, 0.78, 0.78 );
setScaleKey( spep_8 -3 + 54, 1, 0.81, 0.81 );
setScaleKey( spep_8 -3 + 56, 1, 0.84, 0.84 );
setScaleKey( spep_8 -3 + 58, 1, 0.98, 0.98 );
setScaleKey( spep_8 -3 + 60, 1, 1.12, 1.12 );
setScaleKey( spep_8 -3 + 62, 1, 1.25, 1.25 );

setRotateKey( spep_8 + 0, 1, 45 );
setRotateKey( spep_8 -3 + 62, 1, 45 );

-- ** 音 ** --
--気弾向かっていく
SE027 = playSe( spep_8 + 26, 1021 );
setSeVolumeByWorkId( spep_8 + 26, SE027, 110 );

--気弾ヒット
SE028 = playSe( spep_8 + 60, 1023 );
setSeVolumeByWorkId( spep_8 + 60, SE028, 77 );

--気弾ヒット
SE029 = playSe( spep_8 + 60, 1159 );
setSeVolumeByWorkId( spep_8 + 60, SE029, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 122 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 122;


------------------------------------------------------
-- フィニッシュ(146F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --フィニッシュ    ef_012
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 146, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 146, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 146, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 146, finish, 255 );

-- ** 音 ** --
--ラスト爆発
SE030 = playSe( spep_9 + 34, 1024 );

--ラスト爆発
SE031 = playSe( spep_9 + 34, 1067 );

--ラスト爆発
SE032 = playSe( spep_9 + 34, 1188 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 146;

-- ** ダメージ表示 ** --
dealDamage( spep_9 + 36 );
endPhase( spep_9 + 136 );

end