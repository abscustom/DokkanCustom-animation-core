--1021850:グレートサイヤマン_ビーデル(UR)_ジャスティスシューティング
--sp_effect_a2_00157

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
SP_01 = 157014  --ビーデル飛び蹴り(ef_001)
SP_02 = 157015  --敵フォーカス(ef_002)
SP_03 = 157016  --ヒットエフェクト(ef_003)
SP_04 = 157017  --敵吹っ飛び(ef_004)
SP_05 = 157018  --グレートサイヤマン　気弾投げる動作(ef_005)
SP_06 = 157019  --前：一人称視点　気弾投げる(ef_006_f)
SP_07 = 157020  --後：一人称視点　気弾投げる→爆発(ef_006_b)
SP_08 = 157021  --ガッツポーズ(ef_007)

--敵側

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

spep_0 = 0;

------------------------------------------------------
-- ビーデル飛び蹴り(82F)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --ビーデル飛び蹴り(ef_001)
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 82, base1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 82, base1, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base1, 0 );
setEffRotateKey( spep_0 + 82, base1, 0 );
setEffAlphaKey( spep_0 + 0, base1, 255 );
setEffAlphaKey( spep_0 + 82, base1, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 65, 906, 16, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 65, shuchusen1, 16, 10 );
setEffMoveKey( spep_0 + 65, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 81, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 65, shuchusen1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 81, shuchusen1, 1.8, 1.8 );
setEffRotateKey( spep_0 + 65, shuchusen1, 0 );
setEffRotateKey( spep_0 + 81, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 65, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 81, shuchusen1, 255 );

-- ** 音 ** --
SE001 = playSe( spep_0, 44 );  --ジャンプ
stopSe( spep_0 + 40, SE001, 18 );

SE002 = playSe( spep_0, 1117 );  --ジャンプ
stopSe( spep_0 + 40, SE002, 18 );


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
--stopSe( SP_dodge - 12, SE003, 0 );  --飛び蹴り空中
--stopSe( SP_dodge - 12, SE004, 0 );  --飛び蹴り空中
pauseAll( SP_dodge, 67 );


-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end


-- ** 次の準備 ** --
spep_1 = spep_0 + 82;


------------------------------------------------------
-- 敵フォーカス(18F)
------------------------------------------------------

-- ** エフェクト等 ** --
base2 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --敵フォーカス(ef_002)
setEffMoveKey( spep_1 + 0, base2, 0, 0 , 0 );
setEffMoveKey( spep_1 +18, base2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, base2, 1.0, 1.0 );
setEffScaleKey( spep_1 +18, base2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, base2, 0 );
setEffRotateKey( spep_1 +18, base2, 0 );
setEffAlphaKey( spep_1 + 0, base2, 255 );
setEffAlphaKey( spep_1 +18, base2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 18, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );

b1=80;
-- setMoveKey( spep_1 -3 + 0, 1, -27.4, -101.6 , 0 );
-- setMoveKey( spep_1 -3 + 2, 1, -27.6, -102.8 , 0 );
setMoveKey( spep_1 + 0, 1, -27.8, -102.8 -b1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -28, -103.9 -b1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -28.3, -105 -b1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -28.6, -106.1 -b1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -28.9, -107.2 -b1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -29.2, -108.4 -b1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -29.2, -108.5 -b1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -29.2, -108.6 -b1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -29.3, -108.7 -b1 , 0 );
setMoveKey( spep_1 + 18, 1, -29.3, -108.9 -b1 , 0 );

s1=0.6;
-- setScaleKey( spep_1 -3 + 0, 1, 3.06, 3.06 );
-- setScaleKey( spep_1 -3 + 2, 1, 3.09, 3.09 );
setScaleKey( spep_1 + 0, 1, 3.11 -s1, 3.11 -s1 );
setScaleKey( spep_1 -3 + 4, 1, 3.13 -s1, 3.13 -s1 );
setScaleKey( spep_1 -3 + 6, 1, 3.16 -s1, 3.16 -s1 );
setScaleKey( spep_1 -3 + 8, 1, 3.2 -s1, 3.2 -s1 );
setScaleKey( spep_1 -3 + 10, 1, 3.23 -s1, 3.23 -s1 );
setScaleKey( spep_1 -3 + 12, 1, 3.26 -s1, 3.26 -s1 );
setScaleKey( spep_1 -3 + 14, 1, 3.27 -s1, 3.27 -s1 );
setScaleKey( spep_1 -3 + 18, 1, 3.27 -s1, 3.27 -s1 );
setScaleKey( spep_1 + 18, 1, 3.27 -s1, 3.28 -s1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 18, 1, 0 );

-- ** 音 ** --
SE003 = playSe( spep_0 -3 + 62, 1116 ); --飛び蹴り空中
stopSe( spep_0 -3 + 98, SE003, 12 );

SE004 = playSe( spep_0 -3 + 76, 1004 ); --飛び蹴り空中

-- ** 次の準備 ** --
spep_2 = spep_1 + 18;


------------------------------------------------------
-- ヒットエフェクト(8F)
------------------------------------------------------

-- ** エフェクト等 ** --
base3 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ヒットエフェクト(ef_003)
setEffMoveKey( spep_2 + 0, base3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 8, base3, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, base3, 1.0, 1.0 );
setEffScaleKey( spep_2 + 8, base3, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, base3, 0 );
setEffRotateKey( spep_2 + 8, base3, 0 );
setEffAlphaKey( spep_2 + 0, base3, 255 );
setEffAlphaKey( spep_2 + 8, base3, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 7, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen3, 7, 10 );
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 7, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen3, 1.8, 1.8 );
setEffScaleKey( spep_2 + 7, shuchusen3, 1.8, 1.8 );
setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 7, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 7, shuchusen3, 255 );

-- ** 音 ** --
SE005 = playSe( spep_2 + 0, 1187 );  --飛び蹴りヒット
setSeVolumeByWorkId( spep_2 + 0, SE005, 76  );

SE006 = playSe( spep_2 + 0, 1110 );  --飛び蹴りヒット
setSeVolumeByWorkId( spep_2 + 0, SE006, 93  );

-- ** 次の準備 ** --
spep_3 = spep_2 + 8;


------------------------------------------------------
-- 敵吹っ飛び(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
base4 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --敵吹っ飛び(ef_004)
setEffMoveKey( spep_3 + 0, base4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 38, base4, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, base4, 1.0, 1.0 );
setEffScaleKey( spep_3 + 38, base4, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, base4, 0 );
setEffRotateKey( spep_3 + 38, base4, 0 );
setEffAlphaKey( spep_3 + 0, base4, 255 );
setEffAlphaKey( spep_3 + 38, base4, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 38, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

-- setMoveKey( spep_3 -3 + 0, 1, 61, 100.9 , 0 );
-- setMoveKey( spep_3 -3 + 2, 1, 69.6, 87.7 , 0 );
setMoveKey( spep_3 + 0, 1, 50.1, 61.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 30.5, 35.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 56.5, 7.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 17, 42 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 37.8, 9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 32.2, 3.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 37.1, -2.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 31.8, -18.8 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 37.1, -33.8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 34.3, -40.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 31.5, -46.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 35.4, -53.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 39.3, -61.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 37.4, -72.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 35.6, -84.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 36.8, -90.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 38, -96.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 37.8, -105.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 37.7, -113.4 , 0 );
setMoveKey( spep_3 + 38, 1, 37.7, -113.4 , 0 );

s2=0.4;
-- setScaleKey( spep_3 -3 + 0, 1, 7.38, 7.38 );
-- setScaleKey( spep_3 -3 + 2, 1, 5.67, 5.92 );
setScaleKey( spep_3 -3 + 3, 1, 5.31 +s2, 5.54 +s2 );
setScaleKey( spep_3 -3 + 4, 1, 4.96 +s2, 5.16 +s2 );
setScaleKey( spep_3 -3 + 6, 1, 4.45 +s2, 4.61 +s2 );
setScaleKey( spep_3 -3 + 8, 1, 4.04 +s2, 4.17 +s2 );
setScaleKey( spep_3 -3 + 10, 1, 3.71 +s2, 3.8 +s2 );
setScaleKey( spep_3 -3 + 12, 1, 3.42 +s2, 3.49 +s2 );
setScaleKey( spep_3 -3 + 14, 1, 3.16 +s2, 3.21 +s2 );
setScaleKey( spep_3 -3 + 16, 1, 2.94 +s2, 2.98 +s2 );
setScaleKey( spep_3 -3 + 18, 1, 2.74 +s2, 2.76 +s2 );
setScaleKey( spep_3 -3 + 20, 1, 2.57 +s2, 2.58 +s2 );
setScaleKey( spep_3 -3 + 22, 1, 2.41 +s2, 2.41 +s2 );
setScaleKey( spep_3 -3 + 24, 1, 2.27 +s2, 2.26 +s2 );
setScaleKey( spep_3 -3 + 26, 1, 2.14 +s2, 2.12 +s2 );
setScaleKey( spep_3 -3 + 28, 1, 2.02 +s2, 2.01 +s2 );
setScaleKey( spep_3 -3 + 30, 1, 1.92 +s2, 1.9 +s2 );
setScaleKey( spep_3 -3 + 32, 1, 1.83 +s2, 1.81 +s2 );
setScaleKey( spep_3 -3 + 34, 1, 1.75 +s2, 1.73 +s2 );
setScaleKey( spep_3 -3 + 36, 1, 1.68 +s2, 1.67 +s2 );
setScaleKey( spep_3 -3 + 38, 1, 1.63 +s2, 1.62 +s2 );
setScaleKey( spep_3 + 38, 1, 1.63 +s2, 1.62 +s2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 38, 1, 0 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0, 906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen4, 10, 10 );
setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 10, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen4, 1.8, 1.8 );
setEffScaleKey( spep_3 + 10, shuchusen4, 1.8, 1.8 );
setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 10, shuchusen4, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 10, shuchusen4, 255 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 38;


------------------------------------------------------
-- グレートサイヤマン　気弾投げる動作(84F)
------------------------------------------------------

-- ** エフェクト等 ** --
base5 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --グレートサイヤマン　気弾投げる動作(ef_005)
setEffMoveKey( spep_4 + 0, base5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 84, base5, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, base5, 1.0, 1.0 );
setEffScaleKey( spep_4 + 84, base5, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, base5, 0 );
setEffRotateKey( spep_4 + 84, base5, 0 );
setEffAlphaKey( spep_4 + 0, base5, 255 );
setEffAlphaKey( spep_4 + 84, base5, 255 );

-- ** 顔カットイン ** --
spep_x = spep_4 - 4;
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
spep_x = spep_4 + 9
ctgogo5 = entryEffectLife( spep_x + 0, 190006, 66, 0x100, -1, 0, -8.6, 515.5 );
setEffShake( spep_x + 0, ctgogo5, 66, 10 );
setEffMoveKey( spep_x + 0, ctgogo5, -8.6, 515.5 , 0 );
setEffMoveKey( spep_x + 66, ctgogo5, -8.9, 515.5 , 0 );
setEffScaleKey( spep_x + 0, ctgogo5, 0.6, 0.6 );
setEffScaleKey( spep_x + 60, ctgogo5, 0.6, 0.6 );
setEffScaleKey( spep_x + 66, ctgogo5, 1.25, 1.25 );
setEffAlphaKey( spep_x + 0, ctgogo5, 255 );
setEffAlphaKey( spep_x + 60, ctgogo5, 255 );
setEffAlphaKey( spep_x + 66, ctgogo5, 0 );
setEffRotateKey( spep_x + 0, ctgogo5, 0 );
setEffRotateKey( spep_x + 66, ctgogo5, 0 );

-- ** 白フェード ** --
entryFade( spep_4 + 78, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE007 = playSe( spep_4 + 0, 1296 );  --気弾溜め
stopSe( spep_4 + 90, SE007, 0 );

SE008 = playSe( spep_4 + 6, 1018 );  --顔カットイン

SE009 = playSe( spep_4 + 18, 1199 ); --気弾溜め
stopSe( spep_4 + 90, SE009, 0 );

SE010 = playSe( spep_4 + 58, 1003 );  --気弾持って振りかぶり

-- SE011 = playSe( spep_4 + 91, 1035 );  --カードカットイン

-- ** 次の準備 ** --
spep_5 = spep_4 + 84; --偶数に


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
-- playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


------------------------------------------------------
-- 前：一人称視点　気弾投げる(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
base6a = entryEffectLife( spep_6 + 0, SP_06, 157, 0x100, -1, 0, 0, 0 );  --前：一人称視点　気弾投げる(ef_006_f)
setEffMoveKey( spep_6 + 0, base6a, 0, 0 , 0 );
setEffMoveKey( spep_6 + 157, base6a, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, base6a, 1.0, 1.0 );
setEffScaleKey( spep_6 + 157, base6a, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, base6a, 0 );
setEffRotateKey( spep_6 + 157, base6a, 0 );
setEffAlphaKey( spep_6 + 0, base6a, 255 );
setEffAlphaKey( spep_6 + 157, base6a, 255 );

base6b = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --後：一人称視点　気弾投げる→爆発(ef_006_b)
setEffMoveKey( spep_6 + 0, base6b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 158, base6b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, base6b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 158, base6b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, base6b, 0 );
setEffRotateKey( spep_6 + 158, base6b, 0 );
setEffAlphaKey( spep_6 + 0, base6b, 255 );
setEffAlphaKey( spep_6 + 158, base6b, 255 );

-- -- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 142, 1, 0);
--setDisp( spep_6 + 158, 1, 0);
changeAnime( spep_6 + 0, 1, 105 );

b3=35;
-- setMoveKey( spep_6 -3 + 0, 1, 45.1, -93.2 , 0 );
-- setMoveKey( spep_6 -3 + 2, 1, 49.4, -101.4 , 0 );
setMoveKey( spep_6 + 0, 1, 51.2, -105.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 4, 1, 52.9, -109.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 56.2, -118.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 57.6, -120.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 58.8, -122.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 60, -124.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 58.4, -132.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 55.8, -139.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 52.5, -148.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 58.3, -132.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 63.5, -116.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 68.4, -100.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 72.8, -84.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 73.7, -73.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 74.8, -64.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 75.5, -54.6 -b3 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 83.3, -51.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 90.9, -48.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 98.6, -44.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 106, -41 -b3 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 104.6, -29.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 102.9, -18.6 -b3 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 100.8, -8.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 96.4, -1.6 -b3 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 91.4, 3.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 91.8, 4.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 91.4, 5.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 89.9, 5.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 86.9, 6.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 81.9, 6.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 73.6, 8.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 48.4, 10.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 19.5, 10.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 7, 11.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 0.6, 13.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 72, 1, -2.1, 16.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 0.6, 21.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 5.1, 27.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 11.1, 33.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 18.3, 28.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 24.2, 19.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 31.1, 11.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 39.2, 4 -b3 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 38.2, -7.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 39.1, -16.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 40.1, -25.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 41, -34.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 39.9, -45.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 38.8, -56.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 42.1, -55.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 38.4, -61.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 42.8, -66.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 37.7, -63.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 41.2, -62.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 49.4, -44.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 112, 1, 26.6, -89.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 52.3, -80.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 19.6, -59.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 41.5, -73.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 120, 1, 46.3, -79.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 122, 1, 39.4, -85.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 124, 1, 35.9, -80.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 126, 1, 38.8, -83.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 128, 1, 40.5, -79.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 130, 1, 42.2, -75.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 132, 1, 41.1, -74.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 134, 1, 39.9, -73.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 136, 1, 38.8, -72.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 138, 1, 38.3, -69.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 140, 1, 37.7, -66.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 142, 1, 37.1, -62.7 -b3 , 0 );
--setMoveKey( spep_6 -3 + 144, 1, 37.4, -61.9 -b3 , 0 );
--setMoveKey( spep_6 -3 + 146, 1, 37.8, -60.5 -b3 , 0 );
--setMoveKey( spep_6 -3 + 148, 1, 37.7, -59.7 -b3 , 0 );
--setMoveKey( spep_6 -3 + 150, 1, 37.7, -59.2 -b3 , 0 );
--setMoveKey( spep_6 -3 + 152, 1, 37.1, -59.4 -b3 , 0 );
--setMoveKey( spep_6 -3 + 154, 1, 37.6, -59.2 -b3 , 0 );
--setMoveKey( spep_6 -3 + 156, 1, 37.1, -59.1 -b3 , 0 );
--setMoveKey( spep_6 -3 + 158, 1, 37.3, -58 -b3 , 0 );
--setMoveKey( spep_6 + 158, 1, 37.3, -58 -b3 , 0 );

s3=0.2;
-- setScaleKey( spep_6 -3 + 0, 1, 2.26, 2.26 );
-- setScaleKey( spep_6 -3 + 2, 1, 1.78, 1.82 );
setScaleKey( spep_6 + 0, 1, 1.68 +s3, 1.72 +s3 );
setScaleKey( spep_6 -3 + 4, 1, 1.58 +s3, 1.61 +s3 );
setScaleKey( spep_6 -3 + 6, 1, 1.43 +s3, 1.46 +s3 );
setScaleKey( spep_6 -3 + 8, 1, 1.32 +s3, 1.35 +s3 );
setScaleKey( spep_6 -3 + 10, 1, 1.23 +s3, 1.25 +s3 );
setScaleKey( spep_6 -3 + 12, 1, 1.16 +s3, 1.18 +s3 );
setScaleKey( spep_6 -3 + 14, 1, 1.09 +s3, 1.1 +s3);
setScaleKey( spep_6 -3 + 16, 1, 1.03 +s3, 1.04 +s3 );
setScaleKey( spep_6 -3 + 18, 1, 0.98 +s3, 0.99 +s3 );
setScaleKey( spep_6 -3 + 20, 1, 0.94 +s3, 0.95 +s3 );
setScaleKey( spep_6 -3 + 22, 1, 0.91 +s3, 0.92 +s3 );
setScaleKey( spep_6 -3 + 24, 1, 0.89 +s3, 0.89 +s3 );
setScaleKey( spep_6 -3 + 26, 1, 0.86 +s3, 0.87 +s3 );
setScaleKey( spep_6 -3 + 28, 1, 0.85 +s3, 0.85 +s3 );
setScaleKey( spep_6 -3 + 30, 1, 0.84 +s3, 0.84 +s3 );
setScaleKey( spep_6 -3 + 32, 1, 0.83 +s3, 0.83 +s3 );
setScaleKey( spep_6 -3 + 40, 1, 0.83 +s3, 0.83 +s3 );
setScaleKey( spep_6 -3 + 42, 1, 0.84 +s3, 0.84 +s3 );
setScaleKey( spep_6 -3 + 48, 1, 0.84 +s3, 0.84 +s3 );
setScaleKey( spep_6 -3 + 50, 1, 0.83 +s3, 0.83 +s3 );
setScaleKey( spep_6 -3 + 52, 1, 0.83 +s3, 0.83 +s3 );
setScaleKey( spep_6 -3 + 54, 1, 0.82 +s3, 0.82 +s3 );
setScaleKey( spep_6 -3 + 56, 1, 0.82 +s3, 0.82 +s3 );
setScaleKey( spep_6 -3 + 58, 1, 0.81 +s3, 0.81 +s3 );
setScaleKey( spep_6 -3 + 60, 1, 0.81 +s3, 0.81 +s3 );
setScaleKey( spep_6 -3 + 62, 1, 0.8 +s3, 0.8 +s3 );
setScaleKey( spep_6 -3 + 142, 1, 0.8 +s3, 0.8 +s3 );
--setScaleKey( spep_6 -3 + 144, 1, 2.4 +s3, 2.4 +s3 );
--setScaleKey( spep_6 -3 + 146, 1, 1.87 +s3, 1.91 +s3 );
--setScaleKey( spep_6 -3 + 148, 1, 1.64 +s3, 1.68 +s3 );
--setScaleKey( spep_6 -3 + 150, 1, 1.48 +s3, 1.51 +s3 );
--setScaleKey( spep_6 -3 + 152, 1, 1.35 +s3, 1.37 +s3 );
--setScaleKey( spep_6 -3 + 154, 1, 1.24 +s3, 1.27 +s3 );
--setScaleKey( spep_6 -3 + 156, 1, 1.16 +s3, 1.18 +s3 );
--setScaleKey( spep_6 -3 + 158, 1, 1.09 +s3, 1.1 +s3);
--setScaleKey( spep_6 + 158, 1, 1.09 +s3, 1.1 +s3 );
--setScaleKey( spep_6 + 158, 1, 0.8 +s3, 0.8 +s3 );

-- setRotateKey( spep_6 -3 + 0, 1, -20 );
setRotateKey( spep_6 + 0, 1, -20 );
setRotateKey( spep_6 -3 + 12, 1, -20 );
setRotateKey( spep_6 -3 + 14, 1, -20.6 );
setRotateKey( spep_6 -3 + 16, 1, -21.1 );
setRotateKey( spep_6 -3 + 18, 1, -21.5 );
setRotateKey( spep_6 -3 + 20, 1, -21.9 );
setRotateKey( spep_6 -3 + 22, 1, -22.2 );
setRotateKey( spep_6 -3 + 24, 1, -22.5 );
setRotateKey( spep_6 -3 + 26, 1, -22.7 );
setRotateKey( spep_6 -3 + 28, 1, -23 );
setRotateKey( spep_6 -3 + 30, 1, -23.2 );
setRotateKey( spep_6 -3 + 32, 1, -23.3 );
setRotateKey( spep_6 -3 + 34, 1, -23.5 );
setRotateKey( spep_6 -3 + 36, 1, -23.6 );
setRotateKey( spep_6 -3 + 38, 1, -23.8 );
setRotateKey( spep_6 -3 + 40, 1, -23.9 );
setRotateKey( spep_6 -3 + 42, 1, -23.9 );
setRotateKey( spep_6 -3 + 44, 1, -24 );
setRotateKey( spep_6 -3 + 48, 1, -24 );
setRotateKey( spep_6 -3 + 50, 1, -23.9 );
setRotateKey( spep_6 -3 + 52, 1, -23.8 );
setRotateKey( spep_6 -3 + 54, 1, -23.6 );
setRotateKey( spep_6 -3 + 56, 1, -23.4 );
setRotateKey( spep_6 -3 + 58, 1, -23 );
setRotateKey( spep_6 -3 + 60, 1, -22.5 );
setRotateKey( spep_6 -3 + 62, 1, -21.7 );
setRotateKey( spep_6 -3 + 64, 1, -20 );
setRotateKey( spep_6 -3 + 66, 1, -18 );
setRotateKey( spep_6 -3 + 68, 1, -17.1 );
setRotateKey( spep_6 -3 + 70, 1, -16.8 );
setRotateKey( spep_6 -3 + 72, 1, -16.7 );
setRotateKey( spep_6 -3 + 74, 1, -16.9 );
setRotateKey( spep_6 -3 + 76, 1, -17.1 );
setRotateKey( spep_6 -3 + 78, 1, -17.5 );
setRotateKey( spep_6 -3 + 80, 1, -18 );
setRotateKey( spep_6 -3 + 82, 1, -18.6 );
setRotateKey( spep_6 -3 + 84, 1, -19.2 );
setRotateKey( spep_6 -3 + 86, 1, -19.9 );
setRotateKey( spep_6 -3 + 142, 1, -19.9 );
--setRotateKey( spep_6 + 158, 1, -19.9 );

-- ** 白背景 ** --
entryFade( spep_6 -3 + 98, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 )  --白　背景

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 96, 906, 61, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 96, shuchusen6, 61, 10 );
setEffMoveKey( spep_6 + 96, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 157, shuchusen6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 96, shuchusen6, 1.5, 1.5 );
setEffScaleKey( spep_6 + 157, shuchusen6, 1.5, 1.5 );
setEffRotateKey( spep_6 + 96, shuchusen6, 0 );
setEffRotateKey( spep_6 + 157, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 96, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 157, shuchusen6, 255 );

-- ** 音 ** --
SE012 = playSe( spep_6 + 0, 1199 );  --投げる前気弾溜め
setSeVolumeByWorkId( spep_6 + 0, SE012, 75  );
stopSe( spep_6 + 58, SE012, 6 );

SE013 = playSe( spep_6 + 2, 1004 );  --気弾振りかぶる
setSeVolumeByWorkId( spep_6 +2, SE013, 83  );

SE014 = playSe( spep_6 + 2, 1116 );  --気弾振りかぶる
setSeVolumeByWorkId( spep_6 + 2, SE014, 88  );
stopSe( spep_6 + 28, SE014, 16 );

SE015 = playSe( spep_6 + 16, 1168 ); --敵地面に倒れる
setSeVolumeByWorkId( spep_6 + 16, SE015, 66  );
stopSe( spep_6 + 36, SE015, 42 );

SE016 = playSe( spep_6 + 20, 1192 ); --敵地面に倒れる
setSeVolumeByWorkId( spep_6 + 20, SE016, 120  );

SE017 = playSe( spep_6 + 58, 1027 ); --気弾投げる
setSeVolumeByWorkId( spep_6 + 58, SE017, 78  );

SE018 = playSe( spep_6 + 58, 1177 ); --気弾投げる
setSeVolumeByWorkId( spep_6 + 58, SE018, 78  );
stopSe( spep_6 + 104, SE018, 22 );

SE019 = playSe( spep_6 + 104, 1023 ,"",0.7); --爆発

SE020 = playSe( spep_6 + 104, 1233 );  --ガッツポーズ

SE021 = playSe( spep_6 + 106, 1068 ,"",0.7); --爆発
setSeVolumeByWorkId( spep_6 + 106, SE021, 90  );


-- ** 次の準備 ** --
spep_7 = spep_6 + 158;


------------------------------------------------------
-- ガッツポーズ(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
base7 = entryEffect( spep_7 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --ガッツポーズ(ef_007)
setEffMoveKey( spep_7 + 0, base7, 0, 0 , 0 );
setEffMoveKey( spep_7 + 118 +4, base7, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, base7, 1.0, 1.0 );
setEffScaleKey( spep_7 + 118 +4, base7, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, base7, 0 );
setEffRotateKey( spep_7 + 118 +4, base7, 0 );
setEffAlphaKey( spep_7 + 0, base7, 255 );
setEffAlphaKey( spep_7 + 118 +4, base7, 255 );

-- ** 音 ** --
SE022 = playSe( spep_6 + 6, 1108 );  --拍手
setPitch( spep_6 + 6, SE022, 500 );
setTimeStretch( SE022, 1.33, 10, 1 );

SE023 = playSe( spep_7 + 10, 1117 ,"",0.6);  --飛び上がる
stopSe( spep_7 + 36, SE023, 20 );

SE024 = playSe( spep_7 + 24, 1108 ); --拍手
setPitch( spep_7 + 24, SE024, 500 );
setTimeStretch( SE024, 1.33, 10, 1 );

SE025 = playSe( spep_7 + 40, 1108 ); --拍手
setPitch( spep_7 + 40, SE025, 500 );
setTimeStretch( SE025, 1.33, 10, 1 );

SE026 = playSe( spep_7 + 38, 1026 ,"",0.6);  --決め
setSeVolumeByWorkId( spep_7 + 38, SE026, 74  );

SE027 = playSe( spep_7 + 58, 1108 ); --拍手
setPitch( spep_7 + 58, SE027, 500 );
setTimeStretch( SE027, 1.33, 10, 1 );

SE028 = playSe( spep_7 + 74, 1108 ); --拍手
setPitch( spep_7 + 74, SE028, 500 );
setTimeStretch( SE028, 1.33, 10, 1 );

SE029 = playSe( spep_7 + 88, 1108 ); --拍手
setPitch( spep_7 + 88, SE029, 500 );
setTimeStretch( SE029, 1.33, 10, 1 );


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 0);
endPhase( spep_7 + 118 -4);


else


-----------------------------------------
--敵側の攻撃
-----------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ビーデル飛び蹴り(82F)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --ビーデル飛び蹴り(ef_001)
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 82, base1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base1, -1.0, 1.0 );
setEffScaleKey( spep_0 + 82, base1, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base1, 0 );
setEffRotateKey( spep_0 + 82, base1, 0 );
setEffAlphaKey( spep_0 + 0, base1, 255 );
setEffAlphaKey( spep_0 + 82, base1, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 65, 906, 16, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 65, shuchusen1, 16, 10 );
setEffMoveKey( spep_0 + 65, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 81, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 65, shuchusen1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 81, shuchusen1, 1.8, 1.8 );
setEffRotateKey( spep_0 + 65, shuchusen1, 0 );
setEffRotateKey( spep_0 + 81, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 65, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 81, shuchusen1, 255 );

-- ** 音 ** --
SE001 = playSe( spep_0, 44 );  --ジャンプ
stopSe( spep_0 + 40, SE001, 18 );

SE002 = playSe( spep_0, 1117 );  --ジャンプ
stopSe( spep_0 + 40, SE002, 18 );

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
--stopSe( SP_dodge - 12, SE003, 0 );  --飛び蹴り空中
--stopSe( SP_dodge - 12, SE004, 0 );  --飛び蹴り空中
pauseAll( SP_dodge, 67 );


-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end


-- ** 次の準備 ** --
spep_1 = spep_0 + 82;


------------------------------------------------------
-- 敵フォーカス(18F)
------------------------------------------------------

-- ** エフェクト等 ** --
base2 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --敵フォーカス(ef_002)
setEffMoveKey( spep_1 + 0, base2, 0, 0 , 0 );
setEffMoveKey( spep_1 +18, base2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, base2, -1.0, 1.0 );
setEffScaleKey( spep_1 +18, base2, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, base2, 0 );
setEffRotateKey( spep_1 +18, base2, 0 );
setEffAlphaKey( spep_1 + 0, base2, 255 );
setEffAlphaKey( spep_1 +18, base2, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 18, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );

b1=80;
-- setMoveKey( spep_1 -3 + 0, 1, -27.4, -101.6 , 0 );
-- setMoveKey( spep_1 -3 + 2, 1, -27.6, -102.8 , 0 );
setMoveKey( spep_1 + 0, 1, -27.8, -102.8 -b1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -28, -103.9 -b1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -28.3, -105 -b1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -28.6, -106.1 -b1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -28.9, -107.2 -b1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -29.2, -108.4 -b1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -29.2, -108.5 -b1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -29.2, -108.6 -b1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -29.3, -108.7 -b1 , 0 );
setMoveKey( spep_1 + 18, 1, -29.3, -108.9 -b1 , 0 );

s1=0.6;
-- setScaleKey( spep_1 -3 + 0, 1, 3.06, 3.06 );
-- setScaleKey( spep_1 -3 + 2, 1, 3.09, 3.09 );
setScaleKey( spep_1 + 0, 1, 3.11 -s1, 3.11 -s1 );
setScaleKey( spep_1 -3 + 4, 1, 3.13 -s1, 3.13 -s1 );
setScaleKey( spep_1 -3 + 6, 1, 3.16 -s1, 3.16 -s1 );
setScaleKey( spep_1 -3 + 8, 1, 3.2 -s1, 3.2 -s1 );
setScaleKey( spep_1 -3 + 10, 1, 3.23 -s1, 3.23 -s1 );
setScaleKey( spep_1 -3 + 12, 1, 3.26 -s1, 3.26 -s1 );
setScaleKey( spep_1 -3 + 14, 1, 3.27 -s1, 3.27 -s1 );
setScaleKey( spep_1 -3 + 18, 1, 3.27 -s1, 3.27 -s1 );
setScaleKey( spep_1 + 18, 1, 3.27 -s1, 3.28 -s1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 18, 1, 0 );

-- ** 音 ** --
SE003 = playSe( spep_0 -3 + 62, 1116 ); --飛び蹴り空中
stopSe( spep_0 -3 + 98, SE003, 12 );

SE004 = playSe( spep_0 -3 + 76, 1004 ); --飛び蹴り空中

-- ** 次の準備 ** --
spep_2 = spep_1 + 18;


------------------------------------------------------
-- ヒットエフェクト(8F)
------------------------------------------------------

-- ** エフェクト等 ** --
base3 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --ヒットエフェクト(ef_003)
setEffMoveKey( spep_2 + 0, base3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 8, base3, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, base3, -1.0, 1.0 );
setEffScaleKey( spep_2 + 8, base3, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, base3, 0 );
setEffRotateKey( spep_2 + 8, base3, 0 );
setEffAlphaKey( spep_2 + 0, base3, 255 );
setEffAlphaKey( spep_2 + 8, base3, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 7, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen3, 7, 10 );
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 7, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen3, -1.8, 1.8 );
setEffScaleKey( spep_2 + 7, shuchusen3, -1.8, 1.8 );
setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 7, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 7, shuchusen3, 255 );

-- ** 音 ** --
SE005 = playSe( spep_2 + 0, 1187 );  --飛び蹴りヒット
setSeVolumeByWorkId( spep_2 + 0, SE005, 76  );

SE006 = playSe( spep_2 + 0, 1110 );  --飛び蹴りヒット
setSeVolumeByWorkId( spep_2 + 0, SE006, 93  );

-- ** 次の準備 ** --
spep_3 = spep_2 + 8;


------------------------------------------------------
-- 敵吹っ飛び(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
base4 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --敵吹っ飛び(ef_004)
setEffMoveKey( spep_3 + 0, base4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 38, base4, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, base4, -1.0, 1.0 );
setEffScaleKey( spep_3 + 38, base4, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, base4, 0 );
setEffRotateKey( spep_3 + 38, base4, 0 );
setEffAlphaKey( spep_3 + 0, base4, 255 );
setEffAlphaKey( spep_3 + 38, base4, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 38, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

-- setMoveKey( spep_3 -3 + 0, 1, 61, 100.9 , 0 );
-- setMoveKey( spep_3 -3 + 2, 1, 69.6, 87.7 , 0 );
setMoveKey( spep_3 + 0, 1, -50.1, 61.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -30.5, 35.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -56.5, 7.9 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -17, 42 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -37.8, 9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -32.2, 3.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -37.1, -2.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -31.8, -18.8 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -37.1, -33.8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -34.3, -40.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -31.5, -46.2 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -35.4, -53.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -39.3, -61.1 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -37.4, -72.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -35.6, -84.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -36.8, -90.7 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -38, -96.6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -37.8, -105.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -37.7, -113.4 , 0 );
setMoveKey( spep_3 + 38, 1, -37.7, -113.4 , 0 );

s2=0.4;
-- setScaleKey( spep_3 -3 + 0, 1, 7.38, 7.38 );
-- setScaleKey( spep_3 -3 + 2, 1, 5.67, 5.92 );
setScaleKey( spep_3 -3 + 3, 1, 5.31 +s2, 5.54 +s2 );
setScaleKey( spep_3 -3 + 4, 1, 4.96 +s2, 5.16 +s2 );
setScaleKey( spep_3 -3 + 6, 1, 4.45 +s2, 4.61 +s2 );
setScaleKey( spep_3 -3 + 8, 1, 4.04 +s2, 4.17 +s2 );
setScaleKey( spep_3 -3 + 10, 1, 3.71 +s2, 3.8 +s2 );
setScaleKey( spep_3 -3 + 12, 1, 3.42 +s2, 3.49 +s2 );
setScaleKey( spep_3 -3 + 14, 1, 3.16 +s2, 3.21 +s2 );
setScaleKey( spep_3 -3 + 16, 1, 2.94 +s2, 2.98 +s2 );
setScaleKey( spep_3 -3 + 18, 1, 2.74 +s2, 2.76 +s2 );
setScaleKey( spep_3 -3 + 20, 1, 2.57 +s2, 2.58 +s2 );
setScaleKey( spep_3 -3 + 22, 1, 2.41 +s2, 2.41 +s2 );
setScaleKey( spep_3 -3 + 24, 1, 2.27 +s2, 2.26 +s2 );
setScaleKey( spep_3 -3 + 26, 1, 2.14 +s2, 2.12 +s2 );
setScaleKey( spep_3 -3 + 28, 1, 2.02 +s2, 2.01 +s2 );
setScaleKey( spep_3 -3 + 30, 1, 1.92 +s2, 1.9 +s2 );
setScaleKey( spep_3 -3 + 32, 1, 1.83 +s2, 1.81 +s2 );
setScaleKey( spep_3 -3 + 34, 1, 1.75 +s2, 1.73 +s2 );
setScaleKey( spep_3 -3 + 36, 1, 1.68 +s2, 1.67 +s2 );
setScaleKey( spep_3 -3 + 38, 1, 1.63 +s2, 1.62 +s2 );
setScaleKey( spep_3 + 38, 1, 1.63 +s2, 1.62 +s2 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 38, 1, 0 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0, 906, 10, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen4, 10, 10 );
setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 10, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen4, 1.8, 1.8 );
setEffScaleKey( spep_3 + 10, shuchusen4, 1.8, 1.8 );
setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 10, shuchusen4, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 10, shuchusen4, 255 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 38;


------------------------------------------------------
-- グレートサイヤマン　気弾投げる動作(84F)
------------------------------------------------------

-- ** エフェクト等 ** --
base5 = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --グレートサイヤマン　気弾投げる動作(ef_005)
setEffMoveKey( spep_4 + 0, base5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 84, base5, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, base5, -1.0, 1.0 );
setEffScaleKey( spep_4 + 84, base5, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, base5, 0 );
setEffRotateKey( spep_4 + 84, base5, 0 );
setEffAlphaKey( spep_4 + 0, base5, 255 );
setEffAlphaKey( spep_4 + 84, base5, 255 );

-- ** 顔カットイン ** --
-- spep_x = spep_4 - 4;
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
spep_x = spep_4 + 9
ctgogo5 = entryEffectLife( spep_x + 0, 190006, 66, 0x100, -1, 0, -8.6, 515.5 );
setEffShake( spep_x + 0, ctgogo5, 66, 10 );
setEffMoveKey( spep_x + 0, ctgogo5, 8.6, 515.5 , 0 );
setEffMoveKey( spep_x + 66, ctgogo5, 8.9, 515.5 , 0 );
setEffScaleKey( spep_x + 0, ctgogo5, -0.6, 0.6 );
setEffScaleKey( spep_x + 60, ctgogo5, -0.6, 0.6 );
setEffScaleKey( spep_x + 66, ctgogo5, -1.25, 1.25 );
setEffAlphaKey( spep_x + 0, ctgogo5, 255 );
setEffAlphaKey( spep_x + 60, ctgogo5, 255 );
setEffAlphaKey( spep_x + 66, ctgogo5, 0 );
setEffRotateKey( spep_x + 0, ctgogo5, 0 );
setEffRotateKey( spep_x + 66, ctgogo5, 0 );

-- ** 白フェード ** --
entryFade( spep_4 + 78, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
SE007 = playSe( spep_4 + 0, 1296 );  --気弾溜め
stopSe( spep_4 + 90, SE007, 0 );

SE008 = playSe( spep_4 + 6, 1018 );  --顔カットイン

SE009 = playSe( spep_4 + 18, 1199 ); --気弾溜め
stopSe( spep_4 + 90, SE009, 0 );

SE010 = playSe( spep_4 + 58, 1003 );  --気弾持って振りかぶり

-- SE011 = playSe( spep_4 + 91, 1035 );  --カードカットイン

-- ** 次の準備 ** --
spep_5 = spep_4 + 84; --偶数に


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
-- 前：一人称視点　気弾投げる(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
base6a = entryEffectLife( spep_6 + 0, SP_06, 157, 0x100, -1, 0, 0, 0 );  --前：一人称視点　気弾投げる(ef_006_f)
setEffMoveKey( spep_6 + 0, base6a, 0, 0 , 0 );
setEffMoveKey( spep_6 + 157, base6a, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, base6a, -1.0, 1.0 );
setEffScaleKey( spep_6 + 157, base6a, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, base6a, 0 );
setEffRotateKey( spep_6 + 157, base6a, 0 );
setEffAlphaKey( spep_6 + 0, base6a, 255 );
setEffAlphaKey( spep_6 + 157, base6a, 255 );

base6b = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --後：一人称視点　気弾投げる→爆発(ef_006_b)
setEffMoveKey( spep_6 + 0, base6b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 158, base6b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, base6b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 158, base6b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, base6b, 0 );
setEffRotateKey( spep_6 + 158, base6b, 0 );
setEffAlphaKey( spep_6 + 0, base6b, 255 );
setEffAlphaKey( spep_6 + 158, base6b, 255 );

-- -- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 142, 1, 0);
--setDisp( spep_6 + 158, 1, 0);
changeAnime( spep_6 + 0, 1, 105 );

b3=35;
-- setMoveKey( spep_6 -3 + 0, 1, 45.1, -93.2 , 0 );
-- setMoveKey( spep_6 -3 + 2, 1, 49.4, -101.4 , 0 );
setMoveKey( spep_6 + 0, 1, -51.2, -105.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -52.9, -109.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -56.2, -118.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -57.6, -120.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -58.8, -122.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -60, -124.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -58.4, -132.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -55.8, -139.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -52.5, -148.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -58.3, -132.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -63.5, -116.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -68.4, -100.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -72.8, -84.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -73.7, -73.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -74.8, -64.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -75.5, -54.6 -b3 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -83.3, -51.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -90.9, -48.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -98.6, -44.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -106, -41 -b3 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -104.6, -29.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 44, 1, -102.9, -18.6 -b3 , 0 );
setMoveKey( spep_6 -3 + 46, 1, -100.8, -8.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 48, 1, -96.4, -1.6 -b3 , 0 );
setMoveKey( spep_6 -3 + 50, 1, -91.4, 3.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 52, 1, -91.8, 4.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 54, 1, -91.4, 5.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 56, 1, -89.9, 5.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 58, 1, -86.9, 6.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 60, 1, -81.9, 6.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 62, 1, -73.6, 8.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 64, 1, -48.4, 10.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 66, 1, -19.5, 10.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 68, 1, -7, 11.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 70, 1, -0.6, 13.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 2.1, 16.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 74, 1, -0.6, 21.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 76, 1, -5.1, 27.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 78, 1, -11.1, 33.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 80, 1, -18.3, 28.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 82, 1, -24.2, 19.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 84, 1, -31.1, 11.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 86, 1, -39.2, 4 -b3 , 0 );
setMoveKey( spep_6 -3 + 88, 1, -38.2, -7.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 90, 1, -39.1, -16.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 92, 1, -40.1, -25.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 94, 1, -41, -34.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 96, 1, -39.9, -45.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 98, 1, -38.8, -56.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 100, 1, -42.1, -55.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 102, 1, -38.4, -61.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 104, 1, -42.8, -66.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 106, 1, -37.7, -63.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 108, 1, -41.2, -62.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 110, 1, -49.4, -44.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 112, 1, -26.6, -89.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 114, 1, -52.3, -80.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 116, 1, -19.6, -59.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 118, 1, -41.5, -73.5 -b3 , 0 );
setMoveKey( spep_6 -3 + 120, 1, -46.3, -79.3 -b3 , 0 );
setMoveKey( spep_6 -3 + 122, 1, -39.4, -85.2 -b3 , 0 );
setMoveKey( spep_6 -3 + 124, 1, -35.9, -80.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 126, 1, -38.8, -83.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 128, 1, -40.5, -79.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 130, 1, -42.2, -75.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 132, 1, -41.1, -74.9 -b3 , 0 );
setMoveKey( spep_6 -3 + 134, 1, -39.9, -73.8 -b3 , 0 );
setMoveKey( spep_6 -3 + 136, 1, -38.8, -72.7 -b3 , 0 );
setMoveKey( spep_6 -3 + 138, 1, -38.3, -69.4 -b3 , 0 );
setMoveKey( spep_6 -3 + 140, 1, -37.7, -66.1 -b3 , 0 );
setMoveKey( spep_6 -3 + 142, 1, -37.1, -62.7 -b3 , 0 );
--setMoveKey( spep_6 -3 + 144, 1, 37.4, -61.9 -b3 , 0 );
--setMoveKey( spep_6 -3 + 146, 1, 37.8, -60.5 -b3 , 0 );
--setMoveKey( spep_6 -3 + 148, 1, 37.7, -59.7 -b3 , 0 );
--setMoveKey( spep_6 -3 + 150, 1, 37.7, -59.2 -b3 , 0 );
--setMoveKey( spep_6 -3 + 152, 1, 37.1, -59.4 -b3 , 0 );
--setMoveKey( spep_6 -3 + 154, 1, 37.6, -59.2 -b3 , 0 );
--setMoveKey( spep_6 -3 + 156, 1, 37.1, -59.1 -b3 , 0 );
--setMoveKey( spep_6 -3 + 158, 1, 37.3, -58 -b3 , 0 );
--setMoveKey( spep_6 + 158, 1, 37.3, -58 -b3 , 0 );

s3=0.2;
-- setScaleKey( spep_6 -3 + 0, 1, 2.26, 2.26 );
-- setScaleKey( spep_6 -3 + 2, 1, 1.78, 1.82 );
setScaleKey( spep_6 + 0, 1, 1.68 +s3, 1.72 +s3 );
setScaleKey( spep_6 -3 + 4, 1, 1.58 +s3, 1.61 +s3 );
setScaleKey( spep_6 -3 + 6, 1, 1.43 +s3, 1.46 +s3 );
setScaleKey( spep_6 -3 + 8, 1, 1.32 +s3, 1.35 +s3 );
setScaleKey( spep_6 -3 + 10, 1, 1.23 +s3, 1.25 +s3 );
setScaleKey( spep_6 -3 + 12, 1, 1.16 +s3, 1.18 +s3 );
setScaleKey( spep_6 -3 + 14, 1, 1.09 +s3, 1.1 +s3);
setScaleKey( spep_6 -3 + 16, 1, 1.03 +s3, 1.04 +s3 );
setScaleKey( spep_6 -3 + 18, 1, 0.98 +s3, 0.99 +s3 );
setScaleKey( spep_6 -3 + 20, 1, 0.94 +s3, 0.95 +s3 );
setScaleKey( spep_6 -3 + 22, 1, 0.91 +s3, 0.92 +s3 );
setScaleKey( spep_6 -3 + 24, 1, 0.89 +s3, 0.89 +s3 );
setScaleKey( spep_6 -3 + 26, 1, 0.86 +s3, 0.87 +s3 );
setScaleKey( spep_6 -3 + 28, 1, 0.85 +s3, 0.85 +s3 );
setScaleKey( spep_6 -3 + 30, 1, 0.84 +s3, 0.84 +s3 );
setScaleKey( spep_6 -3 + 32, 1, 0.83 +s3, 0.83 +s3 );
setScaleKey( spep_6 -3 + 40, 1, 0.83 +s3, 0.83 +s3 );
setScaleKey( spep_6 -3 + 42, 1, 0.84 +s3, 0.84 +s3 );
setScaleKey( spep_6 -3 + 48, 1, 0.84 +s3, 0.84 +s3 );
setScaleKey( spep_6 -3 + 50, 1, 0.83 +s3, 0.83 +s3 );
setScaleKey( spep_6 -3 + 52, 1, 0.83 +s3, 0.83 +s3 );
setScaleKey( spep_6 -3 + 54, 1, 0.82 +s3, 0.82 +s3 );
setScaleKey( spep_6 -3 + 56, 1, 0.82 +s3, 0.82 +s3 );
setScaleKey( spep_6 -3 + 58, 1, 0.81 +s3, 0.81 +s3 );
setScaleKey( spep_6 -3 + 60, 1, 0.81 +s3, 0.81 +s3 );
setScaleKey( spep_6 -3 + 62, 1, 0.8 +s3, 0.8 +s3 );
setScaleKey( spep_6 -3 + 142, 1, 0.8 +s3, 0.8 +s3 );
--setScaleKey( spep_6 -3 + 144, 1, 2.4 +s3, 2.4 +s3 );
--setScaleKey( spep_6 -3 + 146, 1, 1.87 +s3, 1.91 +s3 );
--setScaleKey( spep_6 -3 + 148, 1, 1.64 +s3, 1.68 +s3 );
--setScaleKey( spep_6 -3 + 150, 1, 1.48 +s3, 1.51 +s3 );
--setScaleKey( spep_6 -3 + 152, 1, 1.35 +s3, 1.37 +s3 );
--setScaleKey( spep_6 -3 + 154, 1, 1.24 +s3, 1.27 +s3 );
--setScaleKey( spep_6 -3 + 156, 1, 1.16 +s3, 1.18 +s3 );
--setScaleKey( spep_6 -3 + 158, 1, 1.09 +s3, 1.1 +s3);
--setScaleKey( spep_6 + 158, 1, 1.09 +s3, 1.1 +s3 );
--setScaleKey( spep_6 + 158, 1, 0.8 +s3, 0.8 +s3 );

-- setRotateKey( spep_6 -3 + 0, 1, -20 );
setRotateKey( spep_6 + 0, 1, 20 );
setRotateKey( spep_6 -3 + 12, 1, 20 );
setRotateKey( spep_6 -3 + 14, 1, 20.6 );
setRotateKey( spep_6 -3 + 16, 1, 21.1 );
setRotateKey( spep_6 -3 + 18, 1, 21.5 );
setRotateKey( spep_6 -3 + 20, 1, 21.9 );
setRotateKey( spep_6 -3 + 22, 1, 22.2 );
setRotateKey( spep_6 -3 + 24, 1, 22.5 );
setRotateKey( spep_6 -3 + 26, 1, 22.7 );
setRotateKey( spep_6 -3 + 28, 1, 23 );
setRotateKey( spep_6 -3 + 30, 1, 23.2 );
setRotateKey( spep_6 -3 + 32, 1, 23.3 );
setRotateKey( spep_6 -3 + 34, 1, 23.5 );
setRotateKey( spep_6 -3 + 36, 1, 23.6 );
setRotateKey( spep_6 -3 + 38, 1, 23.8 );
setRotateKey( spep_6 -3 + 40, 1, 23.9 );
setRotateKey( spep_6 -3 + 42, 1, 23.9 );
setRotateKey( spep_6 -3 + 44, 1, 24 );
setRotateKey( spep_6 -3 + 48, 1, 24 );
setRotateKey( spep_6 -3 + 50, 1, 23.9 );
setRotateKey( spep_6 -3 + 52, 1, 23.8 );
setRotateKey( spep_6 -3 + 54, 1, 23.6 );
setRotateKey( spep_6 -3 + 56, 1, 23.4 );
setRotateKey( spep_6 -3 + 58, 1, 23 );
setRotateKey( spep_6 -3 + 60, 1, 22.5 );
setRotateKey( spep_6 -3 + 62, 1, 21.7 );
setRotateKey( spep_6 -3 + 64, 1, 20 );
setRotateKey( spep_6 -3 + 66, 1, 18 );
setRotateKey( spep_6 -3 + 68, 1, 17.1 );
setRotateKey( spep_6 -3 + 70, 1, 16.8 );
setRotateKey( spep_6 -3 + 72, 1, 16.7 );
setRotateKey( spep_6 -3 + 74, 1, 16.9 );
setRotateKey( spep_6 -3 + 76, 1, 17.1 );
setRotateKey( spep_6 -3 + 78, 1, 17.5 );
setRotateKey( spep_6 -3 + 80, 1, 18 );
setRotateKey( spep_6 -3 + 82, 1, 18.6 );
setRotateKey( spep_6 -3 + 84, 1, 19.2 );
setRotateKey( spep_6 -3 + 86, 1, 19.9 );
setRotateKey( spep_6 -3 + 142, 1, 19.9 );
--setRotateKey( spep_6 + 158, 1, -19.9 );

-- ** 白背景 ** --
entryFade( spep_6 -3 + 98, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 )  --白　背景

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 96, 906, 61, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 96, shuchusen6, 61, 10 );
setEffMoveKey( spep_6 + 96, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 157, shuchusen6, 0, 0 , 0 );
setEffScaleKey( spep_6 + 96, shuchusen6, 1.5, 1.5 );
setEffScaleKey( spep_6 + 157, shuchusen6, 1.5, 1.5 );
setEffRotateKey( spep_6 + 96, shuchusen6, 0 );
setEffRotateKey( spep_6 + 157, shuchusen6, 0 );
setEffAlphaKey( spep_6 + 96, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 157, shuchusen6, 255 );

-- ** 音 ** --
SE012 = playSe( spep_6 + 0, 1199 );  --投げる前気弾溜め
setSeVolumeByWorkId( spep_6 + 0, SE012, 75  );
stopSe( spep_6 + 58, SE012, 6 );

SE013 = playSe( spep_6 + 2, 1004 );  --気弾振りかぶる
setSeVolumeByWorkId( spep_6 +2, SE013, 83  );

SE014 = playSe( spep_6 + 2, 1116 );  --気弾振りかぶる
setSeVolumeByWorkId( spep_6 + 2, SE014, 88  );
stopSe( spep_6 + 28, SE014, 16 );

SE015 = playSe( spep_6 + 16, 1168 ); --敵地面に倒れる
setSeVolumeByWorkId( spep_6 + 16, SE015, 66  );
stopSe( spep_6 + 36, SE015, 42 );

SE016 = playSe( spep_6 + 20, 1192 ); --敵地面に倒れる
setSeVolumeByWorkId( spep_6 + 20, SE016, 120  );

SE017 = playSe( spep_6 + 58, 1027 ); --気弾投げる
setSeVolumeByWorkId( spep_6 + 58, SE017, 78  );

SE018 = playSe( spep_6 + 58, 1177 ); --気弾投げる
setSeVolumeByWorkId( spep_6 + 58, SE018, 78  );
stopSe( spep_6 + 104, SE018, 22 );

SE019 = playSe( spep_6 + 104, 1023 ,"",0.7); --爆発

SE020 = playSe( spep_6 + 104, 1233 );  --ガッツポーズ

SE021 = playSe( spep_6 + 106, 1068 ,"",0.7); --爆発
setSeVolumeByWorkId( spep_6 + 106, SE021, 90  );


-- ** 次の準備 ** --
spep_7 = spep_6 + 158;


------------------------------------------------------
-- ガッツポーズ(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
base7 = entryEffect( spep_7 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --ガッツポーズ(ef_007)
setEffMoveKey( spep_7 + 0, base7, 0, 0 , 0 );
setEffMoveKey( spep_7 + 118 +4, base7, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, base7, -1.0, 1.0 );
setEffScaleKey( spep_7 + 118 +4, base7, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, base7, 0 );
setEffRotateKey( spep_7 + 118 +4, base7, 0 );
setEffAlphaKey( spep_7 + 0, base7, 255 );
setEffAlphaKey( spep_7 + 118 +4, base7, 255 );

-- ** 音 ** --
SE022 = playSe( spep_6 + 6, 1108 );  --拍手
setPitch( spep_6 + 6, SE022, 500 );
setTimeStretch( SE022, 1.33, 10, 1 );

SE023 = playSe( spep_7 + 10, 1117 ,"",0.6);  --飛び上がる
stopSe( spep_7 + 36, SE023, 20 );

SE024 = playSe( spep_7 + 24, 1108 ); --拍手
setPitch( spep_7 + 24, SE024, 500 );
setTimeStretch( SE024, 1.33, 10, 1 );

SE025 = playSe( spep_7 + 40, 1108 ); --拍手
setPitch( spep_7 + 40, SE025, 500 );
setTimeStretch( SE025, 1.33, 10, 1 );

SE026 = playSe( spep_7 + 38, 1026 ,"",0.6);  --決め
setSeVolumeByWorkId( spep_7 + 38, SE026, 74  );

SE027 = playSe( spep_7 + 58, 1108 ); --拍手
setPitch( spep_7 + 58, SE027, 500 );
setTimeStretch( SE027, 1.33, 10, 1 );

SE028 = playSe( spep_7 + 74, 1108 ); --拍手
setPitch( spep_7 + 74, SE028, 500 );
setTimeStretch( SE028, 1.33, 10, 1 );

SE029 = playSe( spep_7 + 88, 1108 ); --拍手
setPitch( spep_7 + 88, SE029, 500 );
setTimeStretch( SE029, 1.33, 10, 1 );


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 0);
endPhase( spep_7 + 118 -4);


end
