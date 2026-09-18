--4024400:セル(完全体)_ソリッドハンマー
--sp_effect_a7_00054
--sp2370

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
SP_01 = 159620;  --対峙 →　敵に突っ込む ef_001
SP_02 = 159621;  --対峙 →　敵に突っ込む ef_001_b
SP_03 = 159622;  --セル 両腕を振り上げる ef_002
SP_04 = 159623;  --セル 両腕を振り上げる ef_002_b
SP_05 = 159624;  --セル 両腕を振り下ろす ef_003
SP_06 = 159625;  --セル 両腕を振り下ろす ef_003_b
SP_07 = 159627;  --セル 回し蹴り ef_004
SP_08 = 159629;  --セル 回し蹴り ef_004_b
SP_09 = 159630;  --セル 上昇   ef_005
SP_10 = 159631;  --セル 上昇   ef_005_b
SP_11 = 159632;  --セル 殴り   ef_006
SP_12 = 159633;  --セル 殴り   ef_006_b
SP_13 = 159635;  --気弾構え（セリフカットイン）→白フェード    ef_007
SP_14 = 159636;  --セル 叫び   ef_008
SP_15 = 159637;  --セル 気弾溜め ef_009
SP_16 = 159638;  --セル 気弾発射 ef_010
SP_17 = 159639;  --セル 気弾発射 ef_010_b
SP_18 = 159640;  --白フェード→敵 吹き飛び    ef_011
SP_19 = 159641;  --白フェード→敵 吹き飛び    ef_011_b
SP_20 = 159643;  --敵 岩に突っ込む    ef_012
SP_21 = 159645;  --砂煙  ef_013

--敵側
SP_05r = 159626;  --セル 両腕を振り下ろす ef_003_r
SP_07r = 159628;  --セル 回し蹴り ef_004_r
SP_11r = 159634;  --セル 殴り   ef_006_r
SP_18r = 159642;  --白フェード→敵 吹き飛び    ef_011_r
SP_20r = 159644;  --敵 岩に突っ込む    ef_012_r

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
-- 対峙　→　敵に突っ込む(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --対峙　→　敵に突っ込む ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 76, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 76, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 76, 0x80, -1, 0, 0, 0 );  --対峙　→　敵に突っ込む ef_001_b
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 76, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 76, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 24, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 175.5, 26.8 , 0 );
setMoveKey( spep_0 + 1, 1, 177, 26.4 , 0 );
setMoveKey( spep_0 + 2, 1, 178.5, 26 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 180, 25.7 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 180, 25.7 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 181.4, 25.3 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 181.4, 25.3 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 182.9, 25 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 184.4, 24.6 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 185.8, 24.3 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 287.3, -2.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 388.8, -28.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 490.3, -54.8 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 591.8, -81.2 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 591.8, -81.2 , 0 );

setScaleKey( spep_0 + 0, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 1, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 2, 1, 2.89, 2.89 );
setScaleKey( spep_0 -3 + 6, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 7, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 8, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 9, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 10, 1, 2.92, 2.92 );
setScaleKey( spep_0 -3 + 12, 1, 2.93, 2.93 );
setScaleKey( spep_0 -3 + 14, 1, 2.94, 2.94 );
setScaleKey( spep_0 -3 + 16, 1, 3.42, 3.42 );
setScaleKey( spep_0 -3 + 18, 1, 3.89, 3.89 );
setScaleKey( spep_0 -3 + 20, 1, 4.37, 4.37 );
setScaleKey( spep_0 -3 + 22, 1, 4.84, 4.84 );
setScaleKey( spep_0 -3 + 24, 1, 4.84, 4.84 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 24, 1, 0 );

-- ** 音 ** --
--ズーム
SE001 = playSeVer2( spep_0 + 10, 1232, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 46 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
   
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
--向かってくる
SE002 = playSeVer2( spep_0 + 40, 1182, "",spep_0 + 74, 0, 10, -1);
SE003 = playSeVer2( spep_0 + 40, 9, "",spep_0 + 74, 0, 10, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 60, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;


------------------------------------------------------
-- 両腕を振り上げる(36F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
handup_f = entryEffectLife( spep_1 + 0, SP_03, 36, 0x100, -1, 0, 0, 0 );  --セル　両腕を振り上げる ef_002
setEffMoveKey( spep_1 + 0, handup_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 36, handup_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, handup_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 36, handup_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, handup_f, 0 );
setEffRotateKey( spep_1 + 36, handup_f, 0 );
setEffAlphaKey( spep_1 + 0, handup_f, 255 );
setEffAlphaKey( spep_1 + 36 -1, handup_f, 255 );
setEffAlphaKey( spep_1 + 36, handup_f, 0 );

handup_b = entryEffectLife( spep_1 + 0, SP_04, 36, 0x80, -1, 0, 0, 0 );  --セル　両腕を振り上げる ef_002_b
setEffMoveKey( spep_1 + 0, handup_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 36, handup_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, handup_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 36, handup_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, handup_b, 0 );
setEffRotateKey( spep_1 + 36, handup_b, 0 );
setEffAlphaKey( spep_1 + 0, handup_b, 255 );
setEffAlphaKey( spep_1 + 36 -1, handup_b, 255 );
setEffAlphaKey( spep_1 + 36, handup_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 118 );

setMoveKey( spep_1 + 0, 1, 107.6, -181.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 107.6, -181.7 , 0 );

setScaleKey( spep_1 + 0, 1, 2.88, 2.88 );
setScaleKey( spep_1 -3 + 38, 1, 2.88, 2.88 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 38, 1, 0 );

-- ** 音 ** --
--振りかぶる
SE005 = playSeVer2( spep_1 + 14, 1116, "",spep_1 + 58, 0, 20, -1);
SE006 = playSeVer2( spep_1 + 18, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 36;


------------------------------------------------------
-- 両腕を振り下ろす(36F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
handdown_f = entryEffectLife( spep_2 + 0, SP_05, 36, 0x100, -1, 0, 0, 0 );  --セル　両腕を振り下ろす ef_003
setEffMoveKey( spep_2 + 0, handdown_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, handdown_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, handdown_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 36, handdown_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, handdown_f, 0 );
setEffRotateKey( spep_2 + 36, handdown_f, 0 );
setEffAlphaKey( spep_2 + 0, handdown_f, 255 );
setEffAlphaKey( spep_2 + 36 -1, handdown_f, 255 );
setEffAlphaKey( spep_2 + 36, handdown_f, 0 );

handdown_b = entryEffectLife( spep_2 + 0, SP_06, 36, 0x80, -1, 0, 0, 0 );  --セル　両腕を振り下ろす ef_003_b
setEffMoveKey( spep_2 + 0, handdown_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, handdown_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, handdown_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 36, handdown_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, handdown_b, 0 );
setEffRotateKey( spep_2 + 36, handdown_b, 0 );
setEffAlphaKey( spep_2 + 0, handdown_b, 255 );
setEffAlphaKey( spep_2 + 36 -1, handdown_b, 255 );
setEffAlphaKey( spep_2 + 36, handdown_b, 0 );

-- ** 書き文字エントリー ** --

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 6, 1, 108 );

setMoveKey( spep_2 + 0, 1, 117.7, -54 , 0 );
setMoveKey( spep_2 -3 + 5, 1, 117.7, -54 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 204.2, -61.1 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 164.9, -159.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 249.3, -197.1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 184.1, -143.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 283.7, -165.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 156.7, -178.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 187, -144.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 218.8, -172.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 219.8, -172.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 220.7, -173.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 221.7, -173.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 222.7, -174.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 223.7, -174.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 224.6, -175.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 225.6, -175.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 226.6, -176.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 227.5, -176.5 , 0 );

setScaleKey( spep_2 + 0, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 5, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 6, 1, 2.717, 2.717 );
setScaleKey( spep_2 -3 + 38, 1, 2.717, 2.717 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 5, 1, 0 );
setRotateKey( spep_2 -3 + 6, 1, 1.6 );
setRotateKey( spep_2 -3 + 8, 1, -3.8 );
setRotateKey( spep_2 -3 + 10, 1, -9.2 );
setRotateKey( spep_2 -3 + 12, 1, -9.7 );
setRotateKey( spep_2 -3 + 14, 1, -10.1 );
setRotateKey( spep_2 -3 + 16, 1, -10.5 );
setRotateKey( spep_2 -3 + 18, 1, -10.9 );
setRotateKey( spep_2 -3 + 20, 1, -11.4 );
setRotateKey( spep_2 -3 + 22, 1, -11.8 );
setRotateKey( spep_2 -3 + 24, 1, -12.2 );
setRotateKey( spep_2 -3 + 26, 1, -12.6 );
setRotateKey( spep_2 -3 + 28, 1, -13.1 );
setRotateKey( spep_2 -3 + 30, 1, -13.5 );
setRotateKey( spep_2 -3 + 32, 1, -13.9 );
setRotateKey( spep_2 -3 + 34, 1, -14.4 );
setRotateKey( spep_2 -3 + 36, 1, -14.8 );
setRotateKey( spep_2 -3 + 38, 1, -15.2 );

-- ** 音 ** --
--叩きつける
SE007 = playSeVer2( spep_2 + 4, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 4, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE008, 84 );
SE009 = playSeVer2( spep_2 + 4, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE009, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 36;


------------------------------------------------------
-- 回し蹴り(46F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_3 + 0, SP_07, 46, 0x100, -1, 0, 0, 0 );  --セル　回し蹴り ef_004
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 46, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 46 -1, kick_f, 255 );
setEffAlphaKey( spep_3 + 46, kick_f, 0 );

kick_b = entryEffectLife( spep_3 + 0, SP_08, 46, 0x80, -1, 0, 0, 0 );  --セル　回し蹴り ef_004_b
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 46, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 46 -1, kick_b, 255 );
setEffAlphaKey( spep_3 + 46, kick_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 -3 + 10, 1, 106 );
changeAnime( spep_3 -3 + 18, 1, 5 );

setMoveKey( spep_3 + 0, 1, -53.4, -43.7 , 0 );
setMoveKey( spep_3 + 1, 1, -45.7, -45 , 0 );
setMoveKey( spep_3 + 2, 1, -38.1, -46.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -30.5, -47.6 , 0 );
setMoveKey( spep_3 -3 + 9, 1, -22.8, -48.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -23.4, -25.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -166.7, -156.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -24.3, -147.6 , 0 );
setMoveKey( spep_3 -3 + 17, 1, -172.6, -1.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -182.6, 200.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -279.1, 146.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -221.2, 247.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -240.4, 271 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -259.6, 294.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -278.7, 318.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -297.8, 341.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -317, 365.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -336.1, 388.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -355.2, 412.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -374.3, 435.7 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -393.4, 459.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -412.5, 482.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -431.6, 506.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -450.7, 529.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -469.8, 553.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 9, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 10, 1, 2.78, 2.78 );
setScaleKey( spep_3 -3 + 17, 1, 2.78, 2.78 );
setScaleKey( spep_3 -3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 20, 1, 1.45, 1.46 );
setScaleKey( spep_3 -3 + 22, 1, 1.28, 1.3 );
setScaleKey( spep_3 -3 + 24, 1, 1.16, 1.18 );
setScaleKey( spep_3 -3 + 26, 1, 1.05, 1.08 );
setScaleKey( spep_3 -3 + 28, 1, 0.97, 0.99 );
setScaleKey( spep_3 -3 + 30, 1, 0.89, 0.91 );
setScaleKey( spep_3 -3 + 32, 1, 0.82, 0.84 );
setScaleKey( spep_3 -3 + 34, 1, 0.76, 0.78 );
setScaleKey( spep_3 -3 + 36, 1, 0.7, 0.72 );
setScaleKey( spep_3 -3 + 38, 1, 0.65, 0.66 );
setScaleKey( spep_3 -3 + 40, 1, 0.6, 0.61 );
setScaleKey( spep_3 -3 + 42, 1, 0.55, 0.56 );
setScaleKey( spep_3 -3 + 44, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 46, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 48, 1, 0.44, 0.43 );

setRotateKey( spep_3 + 0, 1, 23 );
setRotateKey( spep_3 + 1, 1, 22.3 );
setRotateKey( spep_3 + 2, 1, 21.5 );
setRotateKey( spep_3 -3 + 6, 1, 20.8 );
setRotateKey( spep_3 -3 + 9, 1, 20 );
setRotateKey( spep_3 -3 + 10, 1, -47 );
setRotateKey( spep_3 -3 + 12, 1, -48.7 );
setRotateKey( spep_3 -3 + 14, 1, -50.5 );
setRotateKey( spep_3 -3 + 17, 1, -52.2 );
setRotateKey( spep_3 -3 + 18, 1, -17.5 );
setRotateKey( spep_3 -3 + 20, 1, -18.5 );
setRotateKey( spep_3 -3 + 22, 1, -19.4 );
setRotateKey( spep_3 -3 + 24, 1, -20.3 );
setRotateKey( spep_3 -3 + 26, 1, -21.1 );
setRotateKey( spep_3 -3 + 28, 1, -22 );
setRotateKey( spep_3 -3 + 30, 1, -22.9 );
setRotateKey( spep_3 -3 + 32, 1, -23.8 );
setRotateKey( spep_3 -3 + 34, 1, -24.6 );
setRotateKey( spep_3 -3 + 36, 1, -25.5 );
setRotateKey( spep_3 -3 + 38, 1, -26.4 );
setRotateKey( spep_3 -3 + 40, 1, -27.3 );
setRotateKey( spep_3 -3 + 42, 1, -28.1 );
setRotateKey( spep_3 -3 + 44, 1, -29 );
setRotateKey( spep_3 -3 + 46, 1, -29.9 );
setRotateKey( spep_3 -3 + 48, 1, -30.8 );

-- ** 音 ** --
--蹴り飛ばす
SE010 = playSeVer2( spep_3 + 2, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 8, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 14, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 14, SE012, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46;


------------------------------------------------------
-- 上昇(36F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
rise_f = entryEffectLife( spep_4 + 0, SP_09, 36, 0x100, -1, 0, 0, 0 );  --セル　上昇   ef_005
setEffMoveKey( spep_4 + 0, rise_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, rise_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rise_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, rise_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rise_f, 0 );
setEffRotateKey( spep_4 + 36, rise_f, 0 );
setEffAlphaKey( spep_4 + 0, rise_f, 255 );
setEffAlphaKey( spep_4 + 36 -1, rise_f, 255 );
setEffAlphaKey( spep_4 + 36, rise_f, 0 );

rise_b = entryEffectLife( spep_4 + 0, SP_10, 36, 0x80, -1, 0, 0, 0 );  --セル　上昇   ef_005_b
setEffMoveKey( spep_4 + 0, rise_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, rise_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rise_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, rise_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rise_b, 0 );
setEffRotateKey( spep_4 + 36, rise_b, 0 );
setEffAlphaKey( spep_4 + 0, rise_b, 255 );
setEffAlphaKey( spep_4 + 36 -1, rise_b, 255 );
setEffAlphaKey( spep_4 + 36, rise_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, -71.2, 158.2 , 0 );
setMoveKey( spep_4 + 1, 1, -76.6, 166.2 , 0 );
setMoveKey( spep_4 + 2, 1, -82, 174.1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -87.4, 181.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -92.8, 189.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -98.2, 197.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -103.6, 205.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -109, 213.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -114.4, 221.5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -116.6, 222.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -118.9, 224.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -121.1, 225.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -123.4, 227.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -125.6, 228.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -127.9, 230.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -130.1, 231.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -132.4, 233 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -134.6, 234.4 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -136.8, 235.9 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -139.1, 237.3 , 0 );

setScaleKey( spep_4 + 0, 1, 1.22, 1.22 );
setScaleKey( spep_4 + 1, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 2, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 10, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 12, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 14, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 16, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 18, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 20, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 22, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 24, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 26, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 28, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 30, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 32, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 34, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 36, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 38, 1, 0.4, 0.4 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 38, 1, 0 );

-- ** 音 ** --
--敵に向かっていく
SE013 = playSeVer2( spep_4 + 2, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_4 + 2, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 36;


------------------------------------------------------
-- 殴り(66F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_5 + 0, SP_11, 65, 0x100, -1, 0, 0, 0 );  --セル　殴り   ef_006
setEffMoveKey( spep_5 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 65, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 65, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punch_f, 0 );
setEffRotateKey( spep_5 + 65, punch_f, 0 );
setEffAlphaKey( spep_5 + 0, punch_f, 255 );
setEffAlphaKey( spep_5 + 65 -1, punch_f, 255 );
setEffAlphaKey( spep_5 + 65, punch_f, 0 );

punch_b = entryEffectLife( spep_5 + 0, SP_12, 65, 0x80, -1, 0, 0, 0 );  --セル　殴り   ef_006_b
setEffMoveKey( spep_5 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 65, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 65, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punch_b, 0 );
setEffRotateKey( spep_5 + 65, punch_b, 0 );
setEffAlphaKey( spep_5 + 0, punch_b, 255 );
setEffAlphaKey( spep_5 + 65 -1, punch_b, 255 );
setEffAlphaKey( spep_5 + 65, punch_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 36, 1, 0 );
changeAnime( spep_5 + 0, 1, 6 );
changeAnime( spep_5 -3 + 12, 1, 7 );

setMoveKey( spep_5 + 0, 1, 43, -5.8 , 0 );
setMoveKey( spep_5 + 1, 1, 34.2, 7.8 , 0 );
setMoveKey( spep_5 + 2, 1, 25.5, 21.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 16.8, 34.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 8.1, 48.5 , 0 );
setMoveKey( spep_5 -3 + 11, 1, -0.6, 62 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 3.4, 112.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -102, 46.8 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -34.7, 34 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -112.1, 107.5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -100.8, 19.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -158.6, 36.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -127.2, 66.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -143.2, 11.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -155.5, 61.3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -418, -196.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -681.8, -467 , 0 );
setMoveKey( spep_5 -3 + 35, 1, -936.9, -735.8 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -936.9, -735.8 , 0 );

setScaleKey( spep_5 + 0, 1, 2.67, 2.67 );
setScaleKey( spep_5 -3 + 11, 1, 2.67, 2.67 );
setScaleKey( spep_5 -3 + 12, 1, 1.34, 1.34 );
setScaleKey( spep_5 -3 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 16, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 18, 1, 1.36, 1.36 );
setScaleKey( spep_5 -3 + 20, 1, 1.37, 1.37 );
setScaleKey( spep_5 -3 + 22, 1, 1.37, 1.37 );
setScaleKey( spep_5 -3 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_5 -3 + 26, 1, 1.38, 1.38 );
setScaleKey( spep_5 -3 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 30, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 32, 1, 2.92, 2.92 );
setScaleKey( spep_5 -3 + 35, 1, 3.68, 3.68 );
setScaleKey( spep_5 -3 + 36, 1, 3.68, 3.68 );

setRotateKey( spep_5 + 0, 1, 20 );
setRotateKey( spep_5 + 1, 1, 17 );
setRotateKey( spep_5 + 2, 1, 14.1 );
setRotateKey( spep_5 -3 + 6, 1, 11.1 );
setRotateKey( spep_5 -3 + 8, 1, 8.1 );
setRotateKey( spep_5 -3 + 11, 1, 5.2 );
setRotateKey( spep_5 -3 + 12, 1, 0 );
setRotateKey( spep_5 -3 + 14, 1, -0.9 );
setRotateKey( spep_5 -3 + 16, 1, -1.9 );
setRotateKey( spep_5 -3 + 18, 1, -2.8 );
setRotateKey( spep_5 -3 + 20, 1, -3.7 );
setRotateKey( spep_5 -3 + 22, 1, -4.6 );
setRotateKey( spep_5 -3 + 24, 1, -5.6 );
setRotateKey( spep_5 -3 + 26, 1, -6.5 );
setRotateKey( spep_5 -3 + 28, 1, -7.4 );
setRotateKey( spep_5 -3 + 30, 1, -19.9 );
setRotateKey( spep_5 -3 + 32, 1, -32.4 );
setRotateKey( spep_5 -3 + 35, 1, -45 );
setRotateKey( spep_5 -3 + 36, 1, -45 );

-- ** 音 ** --
--殴る
SE015 = playSeVer2( spep_5 + 4, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_5 + 12, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 65 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 65;


------------------------------------------------------
-- 気弾構え(86F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_6 + 0, SP_13, 86, 0x100, -1, 0, 0, 0 );  --気弾構え（セリフカットイン）→白フェード    ef_007
setEffMoveKey( spep_6 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, kamae, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, kamae, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kamae, 0 );
setEffRotateKey( spep_6 + 86, kamae, 0 );
setEffAlphaKey( spep_6 + 0, kamae, 255 );
setEffAlphaKey( spep_6 + 86 -1, kamae, 255 );
setEffAlphaKey( spep_6 + 86, kamae, 0 );

spep_x = spep_6 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
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
SE017 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--手を向ける
SE018 = playSeVer2( spep_6 + 22, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_6 + 28, 1003, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_6 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_7 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_7 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_7, SE_05);
    speff = entryEffect( spep_7, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_7, SE_05);
    speff = entryEffect( spep_7, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_7, SE_05);
    speff = entryEffect( spep_7, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_7 + 0, SE_05 );

--顔アップ
SE021 = playSeVer2( spep_7 + 88, 1188, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_7 + 88, SE021, 72 );
setStartTimeMs( SE021,  200 );
SE022 = playSeVer2( spep_7 + 88, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 88, SE022, 78 );
SE023 = playSeVer2( spep_7 + 88, 1264, "",spep_7 + 186, 0, 64, -1);
setSeVolumeByWorkId( spep_7 + 88, SE023, 69 );

-- ** 白背景 ** --
entryFadeBg( spep_7 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;


------------------------------------------------------
-- 叫び(32F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
shout = entryEffectLife( spep_8 + 0, SP_14, 32, 0x100, -1, 0, 0, 0 );  --セル　叫び   ef_008
setEffMoveKey( spep_8 + 0, shout, 0, 0 , 0 );
setEffMoveKey( spep_8 + 32, shout, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shout, 1.0, 1.0 );
setEffScaleKey( spep_8 + 32, shout, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, shout, 0 );
setEffRotateKey( spep_8 + 32, shout, 0 );
setEffAlphaKey( spep_8 + 0, shout, 255 );
setEffAlphaKey( spep_8 + 32 -1, shout, 255 );
setEffAlphaKey( spep_8 + 32, shout, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 32 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 32;


------------------------------------------------------
-- 気弾溜め(56F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_9 + 0, SP_15, 56, 0x100, -1, 0, 0, 0 );  --セル　気弾溜め ef_009
setEffMoveKey( spep_9 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, tame, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, tame, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame, 0 );
setEffRotateKey( spep_9 + 56, tame, 0 );
setEffAlphaKey( spep_9 + 0, tame, 255 );
setEffAlphaKey( spep_9 + 56 -1, tame, 255 );
setEffAlphaKey( spep_9 + 56, tame, 0 );

-- ** 音 ** --
--気弾放出
SE024 = playSeVer2( spep_9 + 0, 1144, "", spep_9 + 132, 36, 14, 0.6);
setSeVolumeByWorkId( spep_9 + 0, SE024, 63 );
SE025 = playSeVer2( spep_9 + 6, 1109, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_9 + 6, 1158, "",spep_9 + 132, 0, 14, -1);
setSeVolumeByWorkId( spep_9 + 6, SE026, 67 );
SE027 = playSeVer2( spep_9 + 6, 1200, "",spep_9 + 132, 0, 14, -1);
setSeVolumeByWorkId( spep_9 + 6, SE027, 191 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;


------------------------------------------------------
-- 気弾発射(56F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_10 + 0, SP_16, 56, 0x100, -1, 0, 0, 0 );  --セル　気弾発射 ef_010
setEffMoveKey( spep_10 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, shot_f, 0 );
setEffRotateKey( spep_10 + 56, shot_f, 0 );
setEffAlphaKey( spep_10 + 0, shot_f, 255 );
setEffAlphaKey( spep_10 + 56 -1, shot_f, 255 );
setEffAlphaKey( spep_10 + 56, shot_f, 0 );

shot_b = entryEffectLife( spep_10 + 0, SP_17, 56, 0x80, -1, 0, 0, 0 );  --セル　気弾発射 ef_010_b
setEffMoveKey( spep_10 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, shot_b, 0 );
setEffRotateKey( spep_10 + 56, shot_b, 0 );
setEffAlphaKey( spep_10 + 0, shot_b, 255 );
setEffAlphaKey( spep_10 + 56 -1, shot_b, 255 );
setEffAlphaKey( spep_10 + 56, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
changeAnime( spep_10 + 0, 1, 6 );

setMoveKey( spep_10 + 0, 1, -89.8, 55.7 , 0 );
setMoveKey( spep_10 + 1, 1, -94.4, 62.3 , 0 );
setMoveKey( spep_10 + 2, 1, -99, 68.8 , 0 );
setMoveKey( spep_10 -3 + 6, 1, -107, 74.6 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -115.1, 80.4 , 0 );
setMoveKey( spep_10 -3 + 10, 1, -120.4, 83.7 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -125.7, 86.9 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -122.3, 101.9 , 0 );
setMoveKey( spep_10 -3 + 16, 1, -129.8, 94 , 0 );
setMoveKey( spep_10 -3 + 18, 1, -146.5, 111.4 , 0 );
setMoveKey( spep_10 -3 + 20, 1, -148.8, 97.8 , 0 );
setMoveKey( spep_10 -3 + 22, 1, -135.1, 100.3 , 0 );
setMoveKey( spep_10 -3 + 24, 1, -145.7, 111 , 0 );
setMoveKey( spep_10 -3 + 26, 1, -145.9, 100.3 , 0 );
setMoveKey( spep_10 -3 + 28, 1, -133.6, 113.1 , 0 );
setMoveKey( spep_10 -3 + 30, 1, -135.4, 99.6 , 0 );
setMoveKey( spep_10 -3 + 32, 1, -146.5, 111.4 , 0 );
setMoveKey( spep_10 -3 + 34, 1, -148.8, 97.8 , 0 );
setMoveKey( spep_10 -3 + 36, 1, -135.1, 100.3 , 0 );
setMoveKey( spep_10 -3 + 38, 1, -145.7, 111 , 0 );
setMoveKey( spep_10 -3 + 40, 1, -145.9, 100.3 , 0 );
setMoveKey( spep_10 -3 + 42, 1, -133.6, 113.1 , 0 );
setMoveKey( spep_10 -3 + 44, 1, -135.4, 99.6 , 0 );
setMoveKey( spep_10 -3 + 46, 1, -146.5, 111.4 , 0 );
setMoveKey( spep_10 -3 + 48, 1, -148.8, 97.8 , 0 );
setMoveKey( spep_10 -3 + 50, 1, -135.1, 100.3 , 0 );
setMoveKey( spep_10 -3 + 52, 1, -145.7, 111 , 0 );
setMoveKey( spep_10 -3 + 54, 1, -145.9, 100.3 , 0 );
setMoveKey( spep_10 -3 + 56, 1, -148.8, 97.8 , 0 );
setMoveKey( spep_10 -3 + 58, 1, -140.3, 106.1 , 0 );

setScaleKey( spep_10 + 0, 1, 1.95, 1.95 );
setScaleKey( spep_10 -3 + 58, 1, 1.95, 1.95 );

setRotateKey( spep_10 + 0, 1, 79 );
setRotateKey( spep_10 + 1, 1, 78 );
setRotateKey( spep_10 + 2, 1, 77.1 );
setRotateKey( spep_10 -3 + 6, 1, 76.1 );
setRotateKey( spep_10 -3 + 8, 1, 75.1 );
setRotateKey( spep_10 -3 + 10, 1, 74.2 );
setRotateKey( spep_10 -3 + 12, 1, 73.2 );
setRotateKey( spep_10 -3 + 14, 1, 72.2 );
setRotateKey( spep_10 -3 + 16, 1, 71.3 );
setRotateKey( spep_10 -3 + 18, 1, 70.3 );
setRotateKey( spep_10 -3 + 58, 1, 70.3 );

-- ** 音 ** --
--敵吹き飛ぶ
SE028 = playSeVer2( spep_10 + 52, 1027, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_10 + 52, 1022, "",spep_10 + 150, 0, 64, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 56;


------------------------------------------------------
-- 白フェード(36F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
hukitobu_f = entryEffectLife( spep_11 + 0, SP_18, 36, 0x100, -1, 0, 0, 0 );  --白フェード→敵　吹き飛び    ef_011
setEffMoveKey( spep_11 + 0, hukitobu_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 36, hukitobu_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, hukitobu_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 36, hukitobu_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hukitobu_f, 0 );
setEffRotateKey( spep_11 + 36, hukitobu_f, 0 );
setEffAlphaKey( spep_11 + 0, hukitobu_f, 255 );
setEffAlphaKey( spep_11 + 36 -1, hukitobu_f, 255 );
setEffAlphaKey( spep_11 + 36, hukitobu_f, 0 );

hukitobu_b = entryEffectLife( spep_11 + 0, SP_19, 36, 0x80, -1, 0, 0, 0 );  --白フェード→敵　吹き飛び    ef_011_b
setEffMoveKey( spep_11 + 0, hukitobu_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 36, hukitobu_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, hukitobu_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 36, hukitobu_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hukitobu_b, 0 );
setEffRotateKey( spep_11 + 36, hukitobu_b, 0 );
setEffAlphaKey( spep_11 + 0, hukitobu_b, 255 );
setEffAlphaKey( spep_11 + 36 -1, hukitobu_b, 255 );
setEffAlphaKey( spep_11 + 36, hukitobu_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_11 -3 + 0, 1, 1 );
setDisp( spep_11 -3 + 39, 1, 0 );
changeAnime( spep_11 + 0, 1, 8 );

setMoveKey( spep_11 + 0, 1, 5.5, -78.6 , 0 );
setMoveKey( spep_11 + 1, 1, 3.9, -68.2 , 0 );
setMoveKey( spep_11 + 2, 1, -44.2, -107.6 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -24.3, -111.5 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -78.5, -82.3 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -46.2, -104.5 , 0 );
setMoveKey( spep_11 -3 + 12, 1, -83.8, -99.8 , 0 );
setMoveKey( spep_11 -3 + 14, 1, -80.3, -91.5 , 0 );
setMoveKey( spep_11 -3 + 16, 1, -107.4, -114.6 , 0 );
setMoveKey( spep_11 -3 + 18, 1, -92.4, -114.2 , 0 );
setMoveKey( spep_11 -3 + 20, 1, -111, -102.6 , 0 );
setMoveKey( spep_11 -3 + 22, 1, -117.6, -103.2 , 0 );
setMoveKey( spep_11 -3 + 24, 1, -124.2, -103.8 , 0 );
setMoveKey( spep_11 -3 + 26, 1, -130.7, -104.4 , 0 );
setMoveKey( spep_11 -3 + 28, 1, -137.1, -104.9 , 0 );
setMoveKey( spep_11 -3 + 30, 1, -143.5, -105.5 , 0 );
setMoveKey( spep_11 -3 + 32, 1, -149.8, -106 , 0 );
setMoveKey( spep_11 -3 + 34, 1, -156, -106.5 , 0 );
setMoveKey( spep_11 -3 + 36, 1, -162.1, -107 , 0 );
setMoveKey( spep_11 -3 + 38, 1, -168.2, -107.4 , 0 );
setMoveKey( spep_11 -3 + 39, 1, -168.2, -107.4 , 0 );

setScaleKey( spep_11 + 0, 1, 5.95, 5.86 );
setScaleKey( spep_11 + 1, 1, 4.56, 4.53 );
setScaleKey( spep_11 + 2, 1, 3.74, 3.76 );
setScaleKey( spep_11 -3 + 6, 1, 3.1, 3.13 );
setScaleKey( spep_11 -3 + 8, 1, 2.55, 2.58 );
setScaleKey( spep_11 -3 + 10, 1, 2.08, 2.09 );
setScaleKey( spep_11 -3 + 12, 1, 1.68, 1.66 );
setScaleKey( spep_11 -3 + 14, 1, 1.55, 1.53 );
setScaleKey( spep_11 -3 + 16, 1, 1.43, 1.41 );
setScaleKey( spep_11 -3 + 18, 1, 1.32, 1.3 );
setScaleKey( spep_11 -3 + 20, 1, 1.2, 1.19 );
setScaleKey( spep_11 -3 + 22, 1, 1.1, 1.08 );
setScaleKey( spep_11 -3 + 24, 1, 0.99, 0.98 );
setScaleKey( spep_11 -3 + 26, 1, 0.89, 0.88 );
setScaleKey( spep_11 -3 + 28, 1, 0.8, 0.79 );
setScaleKey( spep_11 -3 + 30, 1, 0.71, 0.7 );
setScaleKey( spep_11 -3 + 32, 1, 0.62, 0.61 );
setScaleKey( spep_11 -3 + 34, 1, 0.53, 0.53 );
setScaleKey( spep_11 -3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_11 -3 + 38, 1, 0.38, 0.37 );
setScaleKey( spep_11 -3 + 39, 1, 0.38, 0.37 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 -3 + 39, 1, 0 );

-- ** 音 ** --
--岩激突１
SE030 = playSeVer2( spep_11 + 32, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 32, SE030, 86 );
SE031 = playSeVer2( spep_11 + 32, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 32, SE031, 62 );
SE032 = playSeVer2( spep_11 + 32, 1159, "",spep_11 + 92, 0, 32, -1);
setSeVolumeByWorkId( spep_11 + 32, SE032, 68 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 36;


------------------------------------------------------
-- 岩に突っ込む(86F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
plunge = entryEffectLife( spep_12 + 0, SP_20, 84, 0x100, -1, 0, 0, 0 );  --敵　岩に突っ込む    ef_012
setEffMoveKey( spep_12 + 0, plunge, 0, 0 , 0 );
setEffMoveKey( spep_12 + 84, plunge, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, plunge, 1.0, 1.0 );
setEffScaleKey( spep_12 + 84, plunge, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, plunge, 0 );
setEffRotateKey( spep_12 + 84, plunge, 0 );
setEffAlphaKey( spep_12 + 0, plunge, 255 );
setEffAlphaKey( spep_12 + 84 -1, plunge, 255 );
setEffAlphaKey( spep_12 + 84, plunge, 0 );

-- ** 音 ** --
--岩激突２
SE033 = playSeVer2( spep_12 + 12, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 12, SE033, 60 );
SE034 = playSeVer2( spep_12 + 16, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 16, SE034, 87 );

--岩激突３
SE035 = playSeVer2( spep_12 + 34, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 34, SE035, 93 );
SE036 = playSeVer2( spep_12 + 34, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 34, SE036, 65 );

--岩激突４
SE037 = playSeVer2( spep_12 + 58, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 58, SE037, 86 );
SE038 = playSeVer2( spep_12 + 58, 1024, "", 0, 0, 0, -1);

--ラスト爆発
SE039 = playSeVer2( spep_12 + 84, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 84 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_13 = spep_12 + 84;


------------------------------------------------------
-- 砂煙(116F)
------------------------------------------------------
--spep_13 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_13 + 0, SP_21, 0x100, -1, 0, 0, 0 );  --砂煙  ef_013
setEffMoveKey( spep_13 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_13 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_13 + 116, finish, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, finish, 0 );
setEffRotateKey( spep_13 + 116, finish, 0 );
setEffAlphaKey( spep_13 + 0, finish, 255 );
setEffAlphaKey( spep_13 + 116, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** ダメージ表示 ** --
dealDamage( spep_13 + 6 );
endPhase( spep_13 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 対峙　→　敵に突っ込む(76F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 76, 0x100, -1, 0, 0, 0 );  --対峙　→　敵に突っ込む ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 76, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 76, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 76, 0x80, -1, 0, 0, 0 );  --対峙　→　敵に突っ込む ef_001_b
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 76, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 76 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 76, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 24, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 175.5, 26.8 , 0 );
setMoveKey( spep_0 + 1, 1, 177, 26.4 , 0 );
setMoveKey( spep_0 + 2, 1, 178.5, 26 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 180, 25.7 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 180, 25.7 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 181.4, 25.3 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 181.4, 25.3 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 182.9, 25 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 184.4, 24.6 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 185.8, 24.3 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 287.3, -2.1 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 388.8, -28.5 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 490.3, -54.8 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 591.8, -81.2 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 591.8, -81.2 , 0 );

setScaleKey( spep_0 + 0, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 1, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 2, 1, 2.89, 2.89 );
setScaleKey( spep_0 -3 + 6, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 7, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 8, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 9, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 10, 1, 2.92, 2.92 );
setScaleKey( spep_0 -3 + 12, 1, 2.93, 2.93 );
setScaleKey( spep_0 -3 + 14, 1, 2.94, 2.94 );
setScaleKey( spep_0 -3 + 16, 1, 3.42, 3.42 );
setScaleKey( spep_0 -3 + 18, 1, 3.89, 3.89 );
setScaleKey( spep_0 -3 + 20, 1, 4.37, 4.37 );
setScaleKey( spep_0 -3 + 22, 1, 4.84, 4.84 );
setScaleKey( spep_0 -3 + 24, 1, 4.84, 4.84 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 24, 1, 0 );

-- ** 音 ** --
--ズーム
SE001 = playSeVer2( spep_0 + 10, 1232, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 46 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
   
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
--向かってくる
SE002 = playSeVer2( spep_0 + 40, 1182, "",spep_0 + 74, 0, 10, -1);
SE003 = playSeVer2( spep_0 + 40, 9, "",spep_0 + 74, 0, 10, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 60, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;


------------------------------------------------------
-- 両腕を振り上げる(36F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
handup_f = entryEffectLife( spep_1 + 0, SP_03, 36, 0x100, -1, 0, 0, 0 );  --セル　両腕を振り上げる ef_002
setEffMoveKey( spep_1 + 0, handup_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 36, handup_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, handup_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 36, handup_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, handup_f, 0 );
setEffRotateKey( spep_1 + 36, handup_f, 0 );
setEffAlphaKey( spep_1 + 0, handup_f, 255 );
setEffAlphaKey( spep_1 + 36 -1, handup_f, 255 );
setEffAlphaKey( spep_1 + 36, handup_f, 0 );

handup_b = entryEffectLife( spep_1 + 0, SP_04, 36, 0x80, -1, 0, 0, 0 );  --セル　両腕を振り上げる ef_002_b
setEffMoveKey( spep_1 + 0, handup_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 36, handup_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, handup_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 36, handup_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, handup_b, 0 );
setEffRotateKey( spep_1 + 36, handup_b, 0 );
setEffAlphaKey( spep_1 + 0, handup_b, 255 );
setEffAlphaKey( spep_1 + 36 -1, handup_b, 255 );
setEffAlphaKey( spep_1 + 36, handup_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 118 );

setMoveKey( spep_1 + 0, 1, 107.6, -181.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 107.6, -181.7 , 0 );

setScaleKey( spep_1 + 0, 1, 2.88, 2.88 );
setScaleKey( spep_1 -3 + 38, 1, 2.88, 2.88 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 38, 1, 0 );

-- ** 音 ** --
--振りかぶる
SE005 = playSeVer2( spep_1 + 14, 1116, "",spep_1 + 58, 0, 20, -1);
SE006 = playSeVer2( spep_1 + 18, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 36;


------------------------------------------------------
-- 両腕を振り下ろす(36F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
handdown_f = entryEffectLife( spep_2 + 0, SP_05r, 36, 0x100, -1, 0, 0, 0 );  --セル　両腕を振り下ろす ef_003
setEffMoveKey( spep_2 + 0, handdown_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, handdown_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, handdown_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 36, handdown_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, handdown_f, 0 );
setEffRotateKey( spep_2 + 36, handdown_f, 0 );
setEffAlphaKey( spep_2 + 0, handdown_f, 255 );
setEffAlphaKey( spep_2 + 36 -1, handdown_f, 255 );
setEffAlphaKey( spep_2 + 36, handdown_f, 0 );

handdown_b = entryEffectLife( spep_2 + 0, SP_06, 36, 0x80, -1, 0, 0, 0 );  --セル　両腕を振り下ろす ef_003_b
setEffMoveKey( spep_2 + 0, handdown_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 36, handdown_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, handdown_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 36, handdown_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, handdown_b, 0 );
setEffRotateKey( spep_2 + 36, handdown_b, 0 );
setEffAlphaKey( spep_2 + 0, handdown_b, 255 );
setEffAlphaKey( spep_2 + 36 -1, handdown_b, 255 );
setEffAlphaKey( spep_2 + 36, handdown_b, 0 );

-- ** 書き文字エントリー ** --

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 -3 + 6, 1, 108 );

setMoveKey( spep_2 + 0, 1, 117.7, -54 , 0 );
setMoveKey( spep_2 -3 + 5, 1, 117.7, -54 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 204.2, -61.1 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 164.9, -159.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 249.3, -197.1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 184.1, -143.3 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 283.7, -165.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 156.7, -178.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 187, -144.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 218.8, -172.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 219.8, -172.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 220.7, -173.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 221.7, -173.8 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 222.7, -174.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 223.7, -174.7 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 224.6, -175.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 225.6, -175.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 226.6, -176.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 227.5, -176.5 , 0 );

setScaleKey( spep_2 + 0, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 5, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 6, 1, 2.717, 2.717 );
setScaleKey( spep_2 -3 + 38, 1, 2.717, 2.717 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 5, 1, 0 );
setRotateKey( spep_2 -3 + 6, 1, 1.6 );
setRotateKey( spep_2 -3 + 8, 1, -3.8 );
setRotateKey( spep_2 -3 + 10, 1, -9.2 );
setRotateKey( spep_2 -3 + 12, 1, -9.7 );
setRotateKey( spep_2 -3 + 14, 1, -10.1 );
setRotateKey( spep_2 -3 + 16, 1, -10.5 );
setRotateKey( spep_2 -3 + 18, 1, -10.9 );
setRotateKey( spep_2 -3 + 20, 1, -11.4 );
setRotateKey( spep_2 -3 + 22, 1, -11.8 );
setRotateKey( spep_2 -3 + 24, 1, -12.2 );
setRotateKey( spep_2 -3 + 26, 1, -12.6 );
setRotateKey( spep_2 -3 + 28, 1, -13.1 );
setRotateKey( spep_2 -3 + 30, 1, -13.5 );
setRotateKey( spep_2 -3 + 32, 1, -13.9 );
setRotateKey( spep_2 -3 + 34, 1, -14.4 );
setRotateKey( spep_2 -3 + 36, 1, -14.8 );
setRotateKey( spep_2 -3 + 38, 1, -15.2 );

-- ** 音 ** --
--叩きつける
SE007 = playSeVer2( spep_2 + 4, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 4, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE008, 84 );
SE009 = playSeVer2( spep_2 + 4, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE009, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 36;


------------------------------------------------------
-- 回し蹴り(46F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_3 + 0, SP_07r, 46, 0x100, -1, 0, 0, 0 );  --セル　回し蹴り ef_004
setEffMoveKey( spep_3 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 46, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 46, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 46 -1, kick_f, 255 );
setEffAlphaKey( spep_3 + 46, kick_f, 0 );

kick_b = entryEffectLife( spep_3 + 0, SP_08, 46, 0x80, -1, 0, 0, 0 );  --セル　回し蹴り ef_004_b
setEffMoveKey( spep_3 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 46, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 46 -1, kick_b, 255 );
setEffAlphaKey( spep_3 + 46, kick_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 108 );
changeAnime( spep_3 -3 + 10, 1, 106 );
changeAnime( spep_3 -3 + 18, 1, 5 );

setMoveKey( spep_3 + 0, 1, -53.4, -43.7 , 0 );
setMoveKey( spep_3 + 1, 1, -45.7, -45 , 0 );
setMoveKey( spep_3 + 2, 1, -38.1, -46.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -30.5, -47.6 , 0 );
setMoveKey( spep_3 -3 + 9, 1, -22.8, -48.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -23.4, -25.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -166.7, -156.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -24.3, -147.6 , 0 );
setMoveKey( spep_3 -3 + 17, 1, -172.6, -1.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -182.6, 200.2 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -279.1, 146.8 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -221.2, 247.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -240.4, 271 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -259.6, 294.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -278.7, 318.1 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -297.8, 341.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -317, 365.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -336.1, 388.7 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -355.2, 412.2 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -374.3, 435.7 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -393.4, 459.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -412.5, 482.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -431.6, 506.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -450.7, 529.8 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -469.8, 553.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 9, 1, 2.8, 2.8 );
setScaleKey( spep_3 -3 + 10, 1, 2.78, 2.78 );
setScaleKey( spep_3 -3 + 17, 1, 2.78, 2.78 );
setScaleKey( spep_3 -3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 20, 1, 1.45, 1.46 );
setScaleKey( spep_3 -3 + 22, 1, 1.28, 1.3 );
setScaleKey( spep_3 -3 + 24, 1, 1.16, 1.18 );
setScaleKey( spep_3 -3 + 26, 1, 1.05, 1.08 );
setScaleKey( spep_3 -3 + 28, 1, 0.97, 0.99 );
setScaleKey( spep_3 -3 + 30, 1, 0.89, 0.91 );
setScaleKey( spep_3 -3 + 32, 1, 0.82, 0.84 );
setScaleKey( spep_3 -3 + 34, 1, 0.76, 0.78 );
setScaleKey( spep_3 -3 + 36, 1, 0.7, 0.72 );
setScaleKey( spep_3 -3 + 38, 1, 0.65, 0.66 );
setScaleKey( spep_3 -3 + 40, 1, 0.6, 0.61 );
setScaleKey( spep_3 -3 + 42, 1, 0.55, 0.56 );
setScaleKey( spep_3 -3 + 44, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 46, 1, 0.47, 0.47 );
setScaleKey( spep_3 -3 + 48, 1, 0.44, 0.43 );

setRotateKey( spep_3 + 0, 1, 23 );
setRotateKey( spep_3 + 1, 1, 22.3 );
setRotateKey( spep_3 + 2, 1, 21.5 );
setRotateKey( spep_3 -3 + 6, 1, 20.8 );
setRotateKey( spep_3 -3 + 9, 1, 20 );
setRotateKey( spep_3 -3 + 10, 1, -47 );
setRotateKey( spep_3 -3 + 12, 1, -48.7 );
setRotateKey( spep_3 -3 + 14, 1, -50.5 );
setRotateKey( spep_3 -3 + 17, 1, -52.2 );
setRotateKey( spep_3 -3 + 18, 1, -17.5 );
setRotateKey( spep_3 -3 + 20, 1, -18.5 );
setRotateKey( spep_3 -3 + 22, 1, -19.4 );
setRotateKey( spep_3 -3 + 24, 1, -20.3 );
setRotateKey( spep_3 -3 + 26, 1, -21.1 );
setRotateKey( spep_3 -3 + 28, 1, -22 );
setRotateKey( spep_3 -3 + 30, 1, -22.9 );
setRotateKey( spep_3 -3 + 32, 1, -23.8 );
setRotateKey( spep_3 -3 + 34, 1, -24.6 );
setRotateKey( spep_3 -3 + 36, 1, -25.5 );
setRotateKey( spep_3 -3 + 38, 1, -26.4 );
setRotateKey( spep_3 -3 + 40, 1, -27.3 );
setRotateKey( spep_3 -3 + 42, 1, -28.1 );
setRotateKey( spep_3 -3 + 44, 1, -29 );
setRotateKey( spep_3 -3 + 46, 1, -29.9 );
setRotateKey( spep_3 -3 + 48, 1, -30.8 );

-- ** 音 ** --
--蹴り飛ばす
SE010 = playSeVer2( spep_3 + 2, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 8, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 14, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 14, SE012, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46;


------------------------------------------------------
-- 上昇(36F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
rise_f = entryEffectLife( spep_4 + 0, SP_09, 36, 0x100, -1, 0, 0, 0 );  --セル　上昇   ef_005
setEffMoveKey( spep_4 + 0, rise_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, rise_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rise_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, rise_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rise_f, 0 );
setEffRotateKey( spep_4 + 36, rise_f, 0 );
setEffAlphaKey( spep_4 + 0, rise_f, 255 );
setEffAlphaKey( spep_4 + 36 -1, rise_f, 255 );
setEffAlphaKey( spep_4 + 36, rise_f, 0 );

rise_b = entryEffectLife( spep_4 + 0, SP_10, 36, 0x80, -1, 0, 0, 0 );  --セル　上昇   ef_005_b
setEffMoveKey( spep_4 + 0, rise_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, rise_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, rise_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, rise_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rise_b, 0 );
setEffRotateKey( spep_4 + 36, rise_b, 0 );
setEffAlphaKey( spep_4 + 0, rise_b, 255 );
setEffAlphaKey( spep_4 + 36 -1, rise_b, 255 );
setEffAlphaKey( spep_4 + 36, rise_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, -71.2, 158.2 , 0 );
setMoveKey( spep_4 + 1, 1, -76.6, 166.2 , 0 );
setMoveKey( spep_4 + 2, 1, -82, 174.1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -87.4, 181.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -92.8, 189.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -98.2, 197.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -103.6, 205.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -109, 213.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -114.4, 221.5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -116.6, 222.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -118.9, 224.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -121.1, 225.7 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -123.4, 227.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -125.6, 228.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -127.9, 230.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -130.1, 231.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -132.4, 233 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -134.6, 234.4 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -136.8, 235.9 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -139.1, 237.3 , 0 );

setScaleKey( spep_4 + 0, 1, 1.22, 1.22 );
setScaleKey( spep_4 + 1, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 2, 1, 1.09, 1.09 );
setScaleKey( spep_4 -3 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 10, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 12, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 14, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 16, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 18, 1, 0.65, 0.65 );
setScaleKey( spep_4 -3 + 20, 1, 0.62, 0.62 );
setScaleKey( spep_4 -3 + 22, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 24, 1, 0.57, 0.57 );
setScaleKey( spep_4 -3 + 26, 1, 0.55, 0.55 );
setScaleKey( spep_4 -3 + 28, 1, 0.52, 0.52 );
setScaleKey( spep_4 -3 + 30, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 32, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 34, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 36, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 38, 1, 0.4, 0.4 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 38, 1, 0 );

-- ** 音 ** --
--敵に向かっていく
SE013 = playSeVer2( spep_4 + 2, 1182, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_4 + 2, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 36;


------------------------------------------------------
-- 殴り(66F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_5 + 0, SP_11r, 65, 0x100, -1, 0, 0, 0 );  --セル　殴り   ef_006
setEffMoveKey( spep_5 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 65, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 65, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punch_f, 0 );
setEffRotateKey( spep_5 + 65, punch_f, 0 );
setEffAlphaKey( spep_5 + 0, punch_f, 255 );
setEffAlphaKey( spep_5 + 65 -1, punch_f, 255 );
setEffAlphaKey( spep_5 + 65, punch_f, 0 );

punch_b = entryEffectLife( spep_5 + 0, SP_12, 65, 0x80, -1, 0, 0, 0 );  --セル　殴り   ef_006_b
setEffMoveKey( spep_5 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 65, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 65, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, punch_b, 0 );
setEffRotateKey( spep_5 + 65, punch_b, 0 );
setEffAlphaKey( spep_5 + 0, punch_b, 255 );
setEffAlphaKey( spep_5 + 65 -1, punch_b, 255 );
setEffAlphaKey( spep_5 + 65, punch_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 36, 1, 0 );
changeAnime( spep_5 + 0, 1, 6 );
changeAnime( spep_5 -3 + 12, 1, 7 );

setMoveKey( spep_5 + 0, 1, 43, -5.8 , 0 );
setMoveKey( spep_5 + 1, 1, 34.2, 7.8 , 0 );
setMoveKey( spep_5 + 2, 1, 25.5, 21.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 16.8, 34.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 8.1, 48.5 , 0 );
setMoveKey( spep_5 -3 + 11, 1, -0.6, 62 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 3.4, 112.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -102, 46.8 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -34.7, 34 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -112.1, 107.5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -100.8, 19.4 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -158.6, 36.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -127.2, 66.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -143.2, 11.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -155.5, 61.3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -418, -196.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -681.8, -467 , 0 );
setMoveKey( spep_5 -3 + 35, 1, -936.9, -735.8 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -936.9, -735.8 , 0 );

setScaleKey( spep_5 + 0, 1, 2.67, 2.67 );
setScaleKey( spep_5 -3 + 11, 1, 2.67, 2.67 );
setScaleKey( spep_5 -3 + 12, 1, 1.34, 1.34 );
setScaleKey( spep_5 -3 + 14, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 16, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 18, 1, 1.36, 1.36 );
setScaleKey( spep_5 -3 + 20, 1, 1.37, 1.37 );
setScaleKey( spep_5 -3 + 22, 1, 1.37, 1.37 );
setScaleKey( spep_5 -3 + 24, 1, 1.38, 1.38 );
setScaleKey( spep_5 -3 + 26, 1, 1.38, 1.38 );
setScaleKey( spep_5 -3 + 28, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 30, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 32, 1, 2.92, 2.92 );
setScaleKey( spep_5 -3 + 35, 1, 3.68, 3.68 );
setScaleKey( spep_5 -3 + 36, 1, 3.68, 3.68 );

setRotateKey( spep_5 + 0, 1, 20 );
setRotateKey( spep_5 + 1, 1, 17 );
setRotateKey( spep_5 + 2, 1, 14.1 );
setRotateKey( spep_5 -3 + 6, 1, 11.1 );
setRotateKey( spep_5 -3 + 8, 1, 8.1 );
setRotateKey( spep_5 -3 + 11, 1, 5.2 );
setRotateKey( spep_5 -3 + 12, 1, 0 );
setRotateKey( spep_5 -3 + 14, 1, -0.9 );
setRotateKey( spep_5 -3 + 16, 1, -1.9 );
setRotateKey( spep_5 -3 + 18, 1, -2.8 );
setRotateKey( spep_5 -3 + 20, 1, -3.7 );
setRotateKey( spep_5 -3 + 22, 1, -4.6 );
setRotateKey( spep_5 -3 + 24, 1, -5.6 );
setRotateKey( spep_5 -3 + 26, 1, -6.5 );
setRotateKey( spep_5 -3 + 28, 1, -7.4 );
setRotateKey( spep_5 -3 + 30, 1, -19.9 );
setRotateKey( spep_5 -3 + 32, 1, -32.4 );
setRotateKey( spep_5 -3 + 35, 1, -45 );
setRotateKey( spep_5 -3 + 36, 1, -45 );

-- ** 音 ** --
--殴る
SE015 = playSeVer2( spep_5 + 4, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_5 + 12, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 65 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 65;


------------------------------------------------------
-- 気弾構え(86F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_6 + 0, SP_13, 86, 0x100, -1, 0, 0, 0 );  --気弾構え（セリフカットイン）→白フェード    ef_007
setEffMoveKey( spep_6 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_6 + 86, kamae, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_6 + 86, kamae, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kamae, 0 );
setEffRotateKey( spep_6 + 86, kamae, 0 );
setEffAlphaKey( spep_6 + 0, kamae, 255 );
setEffAlphaKey( spep_6 + 86 -1, kamae, 255 );
setEffAlphaKey( spep_6 + 86, kamae, 0 );

spep_x = spep_6 + 0;
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
--顔カットイン
SE017 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--手を向ける
SE018 = playSeVer2( spep_6 + 22, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_6 + 28, 1003, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_6 + 78, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_7 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_7 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 90, shuchusen, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );

--顔アップ
SE021 = playSeVer2( spep_7 + 88, 1188, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_7 + 88, SE021, 72 );
setStartTimeMs( SE021,  200 );
SE022 = playSeVer2( spep_7 + 88, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 88, SE022, 78 );
SE023 = playSeVer2( spep_7 + 88, 1264, "",spep_7 + 186, 0, 64, -1);
setSeVolumeByWorkId( spep_7 + 88, SE023, 69 );

-- ** 白背景 ** --
entryFadeBg( spep_7 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_7 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_7 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 94;


------------------------------------------------------
-- 叫び(32F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
shout = entryEffectLife( spep_8 + 0, SP_14, 32, 0x100, -1, 0, 0, 0 );  --セル　叫び   ef_008
setEffMoveKey( spep_8 + 0, shout, 0, 0 , 0 );
setEffMoveKey( spep_8 + 32, shout, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shout, 1.0, 1.0 );
setEffScaleKey( spep_8 + 32, shout, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, shout, 0 );
setEffRotateKey( spep_8 + 32, shout, 0 );
setEffAlphaKey( spep_8 + 0, shout, 255 );
setEffAlphaKey( spep_8 + 32 -1, shout, 255 );
setEffAlphaKey( spep_8 + 32, shout, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 32 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 32;


------------------------------------------------------
-- 気弾溜め(56F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_9 + 0, SP_15, 56, 0x100, -1, 0, 0, 0 );  --セル　気弾溜め ef_009
setEffMoveKey( spep_9 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_9 + 56, tame, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, tame, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame, 0 );
setEffRotateKey( spep_9 + 56, tame, 0 );
setEffAlphaKey( spep_9 + 0, tame, 255 );
setEffAlphaKey( spep_9 + 56 -1, tame, 255 );
setEffAlphaKey( spep_9 + 56, tame, 0 );

-- ** 音 ** --
--気弾放出
SE024 = playSeVer2( spep_9 + 0, 1144, "", spep_9 + 132, 36, 14, 0.6);
setSeVolumeByWorkId( spep_9 + 0, SE024, 63 );
SE025 = playSeVer2( spep_9 + 6, 1109, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_9 + 6, 1158, "",spep_9 + 132, 0, 14, -1);
setSeVolumeByWorkId( spep_9 + 6, SE026, 67 );
SE027 = playSeVer2( spep_9 + 6, 1200, "",spep_9 + 132, 0, 14, -1);
setSeVolumeByWorkId( spep_9 + 6, SE027, 191 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;


------------------------------------------------------
-- 気弾発射(56F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_10 + 0, SP_16, 56, 0x100, -1, 0, 0, 0 );  --セル　気弾発射 ef_010
setEffMoveKey( spep_10 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, shot_f, 0 );
setEffRotateKey( spep_10 + 56, shot_f, 0 );
setEffAlphaKey( spep_10 + 0, shot_f, 255 );
setEffAlphaKey( spep_10 + 56 -1, shot_f, 255 );
setEffAlphaKey( spep_10 + 56, shot_f, 0 );

shot_b = entryEffectLife( spep_10 + 0, SP_17, 56, 0x80, -1, 0, 0, 0 );  --セル　気弾発射 ef_010_b
setEffMoveKey( spep_10 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, shot_b, 0 );
setEffRotateKey( spep_10 + 56, shot_b, 0 );
setEffAlphaKey( spep_10 + 0, shot_b, 255 );
setEffAlphaKey( spep_10 + 56 -1, shot_b, 255 );
setEffAlphaKey( spep_10 + 56, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
changeAnime( spep_10 + 0, 1, 6 );

setMoveKey( spep_10 + 0, 1, -89.8, 55.7 , 0 );
setMoveKey( spep_10 + 1, 1, -94.4, 62.3 , 0 );
setMoveKey( spep_10 + 2, 1, -99, 68.8 , 0 );
setMoveKey( spep_10 -3 + 6, 1, -107, 74.6 , 0 );
setMoveKey( spep_10 -3 + 8, 1, -115.1, 80.4 , 0 );
setMoveKey( spep_10 -3 + 10, 1, -120.4, 83.7 , 0 );
setMoveKey( spep_10 -3 + 12, 1, -125.7, 86.9 , 0 );
setMoveKey( spep_10 -3 + 14, 1, -122.3, 101.9 , 0 );
setMoveKey( spep_10 -3 + 16, 1, -129.8, 94 , 0 );
setMoveKey( spep_10 -3 + 18, 1, -146.5, 111.4 , 0 );
setMoveKey( spep_10 -3 + 20, 1, -148.8, 97.8 , 0 );
setMoveKey( spep_10 -3 + 22, 1, -135.1, 100.3 , 0 );
setMoveKey( spep_10 -3 + 24, 1, -145.7, 111 , 0 );
setMoveKey( spep_10 -3 + 26, 1, -145.9, 100.3 , 0 );
setMoveKey( spep_10 -3 + 28, 1, -133.6, 113.1 , 0 );
setMoveKey( spep_10 -3 + 30, 1, -135.4, 99.6 , 0 );
setMoveKey( spep_10 -3 + 32, 1, -146.5, 111.4 , 0 );
setMoveKey( spep_10 -3 + 34, 1, -148.8, 97.8 , 0 );
setMoveKey( spep_10 -3 + 36, 1, -135.1, 100.3 , 0 );
setMoveKey( spep_10 -3 + 38, 1, -145.7, 111 , 0 );
setMoveKey( spep_10 -3 + 40, 1, -145.9, 100.3 , 0 );
setMoveKey( spep_10 -3 + 42, 1, -133.6, 113.1 , 0 );
setMoveKey( spep_10 -3 + 44, 1, -135.4, 99.6 , 0 );
setMoveKey( spep_10 -3 + 46, 1, -146.5, 111.4 , 0 );
setMoveKey( spep_10 -3 + 48, 1, -148.8, 97.8 , 0 );
setMoveKey( spep_10 -3 + 50, 1, -135.1, 100.3 , 0 );
setMoveKey( spep_10 -3 + 52, 1, -145.7, 111 , 0 );
setMoveKey( spep_10 -3 + 54, 1, -145.9, 100.3 , 0 );
setMoveKey( spep_10 -3 + 56, 1, -148.8, 97.8 , 0 );
setMoveKey( spep_10 -3 + 58, 1, -140.3, 106.1 , 0 );

setScaleKey( spep_10 + 0, 1, 1.95, 1.95 );
setScaleKey( spep_10 -3 + 58, 1, 1.95, 1.95 );

setRotateKey( spep_10 + 0, 1, 79 );
setRotateKey( spep_10 + 1, 1, 78 );
setRotateKey( spep_10 + 2, 1, 77.1 );
setRotateKey( spep_10 -3 + 6, 1, 76.1 );
setRotateKey( spep_10 -3 + 8, 1, 75.1 );
setRotateKey( spep_10 -3 + 10, 1, 74.2 );
setRotateKey( spep_10 -3 + 12, 1, 73.2 );
setRotateKey( spep_10 -3 + 14, 1, 72.2 );
setRotateKey( spep_10 -3 + 16, 1, 71.3 );
setRotateKey( spep_10 -3 + 18, 1, 70.3 );
setRotateKey( spep_10 -3 + 58, 1, 70.3 );

-- ** 音 ** --
--敵吹き飛ぶ
SE028 = playSeVer2( spep_10 + 52, 1027, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_10 + 52, 1022, "",spep_10 + 150, 0, 64, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 56;


------------------------------------------------------
-- 白フェード(36F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
hukitobu_f = entryEffectLife( spep_11 + 0, SP_18r, 36, 0x100, -1, 0, 0, 0 );  --白フェード→敵　吹き飛び    ef_011
setEffMoveKey( spep_11 + 0, hukitobu_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 36, hukitobu_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, hukitobu_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 36, hukitobu_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hukitobu_f, 0 );
setEffRotateKey( spep_11 + 36, hukitobu_f, 0 );
setEffAlphaKey( spep_11 + 0, hukitobu_f, 255 );
setEffAlphaKey( spep_11 + 36 -1, hukitobu_f, 255 );
setEffAlphaKey( spep_11 + 36, hukitobu_f, 0 );

hukitobu_b = entryEffectLife( spep_11 + 0, SP_19, 36, 0x80, -1, 0, 0, 0 );  --白フェード→敵　吹き飛び    ef_011_b
setEffMoveKey( spep_11 + 0, hukitobu_b, 0, 0 , 0 );
setEffMoveKey( spep_11 + 36, hukitobu_b, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, hukitobu_b, 1.0, 1.0 );
setEffScaleKey( spep_11 + 36, hukitobu_b, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, hukitobu_b, 0 );
setEffRotateKey( spep_11 + 36, hukitobu_b, 0 );
setEffAlphaKey( spep_11 + 0, hukitobu_b, 255 );
setEffAlphaKey( spep_11 + 36 -1, hukitobu_b, 255 );
setEffAlphaKey( spep_11 + 36, hukitobu_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_11 -3 + 0, 1, 1 );
setDisp( spep_11 -3 + 39, 1, 0 );
changeAnime( spep_11 + 0, 1, 8 );

setMoveKey( spep_11 + 0, 1, 5.5, -78.6 , 0 );
setMoveKey( spep_11 + 1, 1, 3.9, -68.2 , 0 );
setMoveKey( spep_11 + 2, 1, -44.2, -107.6 , 0 );
setMoveKey( spep_11 -3 + 6, 1, -24.3, -111.5 , 0 );
setMoveKey( spep_11 -3 + 8, 1, -78.5, -82.3 , 0 );
setMoveKey( spep_11 -3 + 10, 1, -46.2, -104.5 , 0 );
setMoveKey( spep_11 -3 + 12, 1, -83.8, -99.8 , 0 );
setMoveKey( spep_11 -3 + 14, 1, -80.3, -91.5 , 0 );
setMoveKey( spep_11 -3 + 16, 1, -107.4, -114.6 , 0 );
setMoveKey( spep_11 -3 + 18, 1, -92.4, -114.2 , 0 );
setMoveKey( spep_11 -3 + 20, 1, -111, -102.6 , 0 );
setMoveKey( spep_11 -3 + 22, 1, -117.6, -103.2 , 0 );
setMoveKey( spep_11 -3 + 24, 1, -124.2, -103.8 , 0 );
setMoveKey( spep_11 -3 + 26, 1, -130.7, -104.4 , 0 );
setMoveKey( spep_11 -3 + 28, 1, -137.1, -104.9 , 0 );
setMoveKey( spep_11 -3 + 30, 1, -143.5, -105.5 , 0 );
setMoveKey( spep_11 -3 + 32, 1, -149.8, -106 , 0 );
setMoveKey( spep_11 -3 + 34, 1, -156, -106.5 , 0 );
setMoveKey( spep_11 -3 + 36, 1, -162.1, -107 , 0 );
setMoveKey( spep_11 -3 + 38, 1, -168.2, -107.4 , 0 );
setMoveKey( spep_11 -3 + 39, 1, -168.2, -107.4 , 0 );

setScaleKey( spep_11 + 0, 1, 5.95, 5.86 );
setScaleKey( spep_11 + 1, 1, 4.56, 4.53 );
setScaleKey( spep_11 + 2, 1, 3.74, 3.76 );
setScaleKey( spep_11 -3 + 6, 1, 3.1, 3.13 );
setScaleKey( spep_11 -3 + 8, 1, 2.55, 2.58 );
setScaleKey( spep_11 -3 + 10, 1, 2.08, 2.09 );
setScaleKey( spep_11 -3 + 12, 1, 1.68, 1.66 );
setScaleKey( spep_11 -3 + 14, 1, 1.55, 1.53 );
setScaleKey( spep_11 -3 + 16, 1, 1.43, 1.41 );
setScaleKey( spep_11 -3 + 18, 1, 1.32, 1.3 );
setScaleKey( spep_11 -3 + 20, 1, 1.2, 1.19 );
setScaleKey( spep_11 -3 + 22, 1, 1.1, 1.08 );
setScaleKey( spep_11 -3 + 24, 1, 0.99, 0.98 );
setScaleKey( spep_11 -3 + 26, 1, 0.89, 0.88 );
setScaleKey( spep_11 -3 + 28, 1, 0.8, 0.79 );
setScaleKey( spep_11 -3 + 30, 1, 0.71, 0.7 );
setScaleKey( spep_11 -3 + 32, 1, 0.62, 0.61 );
setScaleKey( spep_11 -3 + 34, 1, 0.53, 0.53 );
setScaleKey( spep_11 -3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_11 -3 + 38, 1, 0.38, 0.37 );
setScaleKey( spep_11 -3 + 39, 1, 0.38, 0.37 );

setRotateKey( spep_11 + 0, 1, 0 );
setRotateKey( spep_11 -3 + 39, 1, 0 );

-- ** 音 ** --
--岩激突１
SE030 = playSeVer2( spep_11 + 32, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 32, SE030, 86 );
SE031 = playSeVer2( spep_11 + 32, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 32, SE031, 62 );
SE032 = playSeVer2( spep_11 + 32, 1159, "",spep_11 + 92, 0, 32, -1);
setSeVolumeByWorkId( spep_11 + 32, SE032, 68 );

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 36;


------------------------------------------------------
-- 岩に突っ込む(86F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
plunge = entryEffectLife( spep_12 + 0, SP_20r, 84, 0x100, -1, 0, 0, 0 );  --敵　岩に突っ込む    ef_012
setEffMoveKey( spep_12 + 0, plunge, 0, 0 , 0 );
setEffMoveKey( spep_12 + 84, plunge, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, plunge, -1.0, 1.0 );
setEffScaleKey( spep_12 + 84, plunge, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, plunge, 0 );
setEffRotateKey( spep_12 + 84, plunge, 0 );
setEffAlphaKey( spep_12 + 0, plunge, 255 );
setEffAlphaKey( spep_12 + 84 -1, plunge, 255 );
setEffAlphaKey( spep_12 + 84, plunge, 0 );

-- ** 音 ** --
--岩激突２
SE033 = playSeVer2( spep_12 + 12, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 12, SE033, 60 );
SE034 = playSeVer2( spep_12 + 16, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 16, SE034, 87 );

--岩激突３
SE035 = playSeVer2( spep_12 + 34, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 34, SE035, 93 );
SE036 = playSeVer2( spep_12 + 34, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 34, SE036, 65 );

--岩激突４
SE037 = playSeVer2( spep_12 + 58, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 58, SE037, 86 );
SE038 = playSeVer2( spep_12 + 58, 1024, "", 0, 0, 0, -1);

--ラスト爆発
SE039 = playSeVer2( spep_12 + 84, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 84 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_13 = spep_12 + 84;


------------------------------------------------------
-- 砂煙(116F)
------------------------------------------------------
--spep_13 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_13 + 0, SP_21, 0x100, -1, 0, 0, 0 );  --砂煙  ef_013
setEffMoveKey( spep_13 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_13 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_13 + 116, finish, -1.0, 1.0 );
setEffRotateKey( spep_13 + 0, finish, 0 );
setEffRotateKey( spep_13 + 116, finish, 0 );
setEffAlphaKey( spep_13 + 0, finish, 255 );
setEffAlphaKey( spep_13 + 116, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** ダメージ表示 ** --
dealDamage( spep_13 + 6 );
endPhase( spep_13 + 106 );

end