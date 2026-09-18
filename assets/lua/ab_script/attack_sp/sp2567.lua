-- 1026860: SSR_ベビー_必殺技(↓簡易版)：リベンジショット
-- sp_effect_b4_00291
-- sp2567

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035;  -- 気を貯める
SE_02 = 1036;  -- 気が広がる
SE_03 = 1036;  -- かめはめ
SE_04 = 1018;  -- カットイン
SE_05 = 1035;  -- カットイン攻撃
SE_06 = 1021;  -- 発射
SE_07 = 1022;  -- のびる発射
SE_08 = 1042;  -- カットイン
SE_09 = 1023;  -- HIT
SE_10 = 1024;  -- 爆破
SE_11 = 1054;  -- 割れる音
SE_12 = 09;

-- 味方側
SP_001 = 161904;  -- 開幕〜セリフカットインまで ef_001
SP_002 = 161905;  -- 腕を解く〜フィニッシュ ef_002
SP_003 = 161907;  -- 腕を解く〜フィニッシュ ef_003

-- 敵側
SP_002r = 161906;  -- 同上　敵側 ef_002r
SP_003r = 161908;  -- 同上　敵側 ef_003r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕〜セリフカットインまで ef_001 (96F)
------------------------------------------------------

MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;
  
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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
  
--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );--96

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--96

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
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
SE000 = playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 腕を解く〜フィニッシュ ef_002 (408F)
------------------------------------------------------

MAX_FRAME_2 = 408;

-- ** エフェクト等 ** --
finish_f  = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_003, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );--408

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE000, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

offset1 = -1;

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 50 + offset1, 1, 1 );
setDisp( spep_2 + 111 + offset1, 1, 0 );

changeAnime( spep_2 + 50 + offset1, 1, 118 );
changeAnime( spep_2 + 88 + offset1, 1, 107 );

setMoveKey( spep_2 + 50 + offset1, 1, 245.4, -108 , 0 );
setMoveKey( spep_2 + 51 + offset1, 1, 245.4, -108 , 0 );
setMoveKey( spep_2 + 52 + offset1, 1, 245.2, -108 , 0 );
setMoveKey( spep_2 + 53 + offset1, 1, 245.2, -108 , 0 );
setMoveKey( spep_2 + 54 + offset1, 1, 244.1, -108 , 0 );
setMoveKey( spep_2 + 55 + offset1, 1, 244.1, -108 , 0 );
setMoveKey( spep_2 + 56 + offset1, 1, 241.2, -108 , 0 );
setMoveKey( spep_2 + 57 + offset1, 1, 241.2, -108 , 0 );
setMoveKey( spep_2 + 58 + offset1, 1, 235.4, -108 , 0 );
setMoveKey( spep_2 + 59 + offset1, 1, 235.4, -108 , 0 );
setMoveKey( spep_2 + 60 + offset1, 1, 225.9, -108 , 0 );
setMoveKey( spep_2 + 61 + offset1, 1, 225.9, -108 , 0 );
setMoveKey( spep_2 + 62 + offset1, 1, 211.6, -108 , 0 );
setMoveKey( spep_2 + 63 + offset1, 1, 211.6, -108 , 0 );
setMoveKey( spep_2 + 64 + offset1, 1, 191.8, -108 , 0 );
setMoveKey( spep_2 + 65 + offset1, 1, 191.8, -108 , 0 );
setMoveKey( spep_2 + 66 + offset1, 1, 165.4, -108 , 0 );
setMoveKey( spep_2 + 67 + offset1, 1, 165.4, -108 , 0 );
setMoveKey( spep_2 + 68 + offset1, 1, 147.2, -97.6 , 0 );
setMoveKey( spep_2 + 69 + offset1, 1, 147.2, -97.6 , 0 );
setMoveKey( spep_2 + 70 + offset1, 1, 131.7, -88.6 , 0 );
setMoveKey( spep_2 + 71 + offset1, 1, 131.7, -88.6 , 0 );
setMoveKey( spep_2 + 72 + offset1, 1, 118.5, -81.1 , 0 );
setMoveKey( spep_2 + 73 + offset1, 1, 118.5, -81.1 , 0 );
setMoveKey( spep_2 + 74 + offset1, 1, 107.6, -74.8 , 0 );
setMoveKey( spep_2 + 75 + offset1, 1, 107.6, -74.8 , 0 );
setMoveKey( spep_2 + 76 + offset1, 1, 98.6, -69.6 , 0 );
setMoveKey( spep_2 + 77 + offset1, 1, 98.6, -69.6 , 0 );
setMoveKey( spep_2 + 78 + offset1, 1, 91.4, -65.5 , 0 );
setMoveKey( spep_2 + 79 + offset1, 1, 91.4, -65.5 , 0 );
setMoveKey( spep_2 + 80 + offset1, 1, 85.8, -62.2 , 0 );
setMoveKey( spep_2 + 81 + offset1, 1, 85.8, -62.2 , 0 );
setMoveKey( spep_2 + 82 + offset1, 1, 83.6, -57.8 , 0 );
setMoveKey( spep_2 + 83 + offset1, 1, 83.6, -57.8 , 0 );
setMoveKey( spep_2 + 84 + offset1, 1, 76.5, -60.1 , 0 );
setMoveKey( spep_2 + 85 + offset1, 1, 76.5, -60.1 , 0 );
setMoveKey( spep_2 + 86 + offset1, 1, 74.5, -54.9 , 0 );
setMoveKey( spep_2 + 87 + offset1, 1, 74.5, -54.9 , 0 );
setMoveKey( spep_2 + 88 + offset1, 1, 166.5, -56.9 , 0 );
setMoveKey( spep_2 + 89 + offset1, 1, 166.5, -56.9 , 0 );
setMoveKey( spep_2 + 90 + offset1, 1, 164.3, -16.2 , 0 );
setMoveKey( spep_2 + 91 + offset1, 1, 164.3, -16.2 , 0 );
setMoveKey( spep_2 + 92 + offset1, 1, 157.9, -51.7 , 0 );
setMoveKey( spep_2 + 93 + offset1, 1, 157.9, -51.7 , 0 );
setMoveKey( spep_2 + 94 + offset1, 1, 164.4, -23.4 , 0 );
setMoveKey( spep_2 + 95 + offset1, 1, 164.4, -23.4 , 0 );
setMoveKey( spep_2 + 96 + offset1, 1, 200.6, -39.1 , 0 );
setMoveKey( spep_2 + 97 + offset1, 1, 200.6, -39.1 , 0 );
setMoveKey( spep_2 + 98 + offset1, 1, 217.3, 9 , 0 );
setMoveKey( spep_2 + 99 + offset1, 1, 217.3, 9 , 0 );
setMoveKey( spep_2 + 100 + offset1, 1, 281.9, 14.9 , 0 );
setMoveKey( spep_2 + 101 + offset1, 1, 281.9, 14.9 , 0 );
setMoveKey( spep_2 + 102 + offset1, 1, 347.1, 76.3 , 0 );
setMoveKey( spep_2 + 103 + offset1, 1, 347.1, 76.3 , 0 );
setMoveKey( spep_2 + 104 + offset1, 1, 426, 115 , 0 );
setMoveKey( spep_2 + 105 + offset1, 1, 426, 115 , 0 );
setMoveKey( spep_2 + 106 + offset1, 1, 539.2, 188.4 , 0 );
setMoveKey( spep_2 + 107 + offset1, 1, 539.2, 188.4 , 0 );
setMoveKey( spep_2 + 108 + offset1, 1, 681.1, 284 , 0 );
setMoveKey( spep_2 + 109 + offset1, 1, 681.1, 284 , 0 );
setMoveKey( spep_2 + 110 + offset1, 1, 853.9, 375 , 0 );
setMoveKey( spep_2 + 111 + offset1, 1, 853.9, 375 , 0 );

setScaleKey( spep_2 + 50 + offset1, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 66 + offset1, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 67 + offset1, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 68 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 69 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 70 + offset1, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 71 + offset1, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 72 + offset1, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 73 + offset1, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 74 + offset1, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 75 + offset1, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 76 + offset1, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 77 + offset1, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 78 + offset1, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 79 + offset1, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 80 + offset1, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 81 + offset1, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 82 + offset1, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 83 + offset1, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 84 + offset1, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 85 + offset1, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 86 + offset1, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 87 + offset1, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 88 + offset1, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 90 + offset1, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 91 + offset1, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 92 + offset1, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 93 + offset1, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 94 + offset1, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 95 + offset1, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 96 + offset1, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 97 + offset1, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 98 + offset1, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 99 + offset1, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 100 + offset1, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 101 + offset1, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 102 + offset1, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 103 + offset1, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 104 + offset1, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 105 + offset1, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 106 + offset1, 1, 2, 2 );
setScaleKey( spep_2 + 107 + offset1, 1, 2, 2 );
setScaleKey( spep_2 + 108 + offset1, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 109 + offset1, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 110 + offset1, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 111 + offset1, 1, 2.9, 2.9 );

setRotateKey( spep_2 + 50 + offset1, 1, 0 );
setRotateKey( spep_2 + 87 + offset1, 1, 0 );
setRotateKey( spep_2 + 88 + offset1, 1, 12.3 );
setRotateKey( spep_2 + 90 + offset1, 1, 12.3 );
setRotateKey( spep_2 + 91 + offset1, 1, 12.3 );
setRotateKey( spep_2 + 92 + offset1, 1, 12.2 );
setRotateKey( spep_2 + 93 + offset1, 1, 12.2 );
setRotateKey( spep_2 + 94 + offset1, 1, 12 );
setRotateKey( spep_2 + 95 + offset1, 1, 12 );
setRotateKey( spep_2 + 96 + offset1, 1, 11.7 );
setRotateKey( spep_2 + 97 + offset1, 1, 11.7 );
setRotateKey( spep_2 + 98 + offset1, 1, 11.2 );
setRotateKey( spep_2 + 99 + offset1, 1, 11.2 );
setRotateKey( spep_2 + 100 + offset1, 1, 10.4 );
setRotateKey( spep_2 + 101 + offset1, 1, 10.4 );
setRotateKey( spep_2 + 102 + offset1, 1, 9.3 );
setRotateKey( spep_2 + 103 + offset1, 1, 9.3 );
setRotateKey( spep_2 + 104 + offset1, 1, 7.8 );
setRotateKey( spep_2 + 105 + offset1, 1, 7.8 );
setRotateKey( spep_2 + 106 + offset1, 1, 5.9 );
setRotateKey( spep_2 + 107 + offset1, 1, 5.9 );
setRotateKey( spep_2 + 108 + offset1, 1, 3.6 );
setRotateKey( spep_2 + 109 + offset1, 1, 3.6 );
setRotateKey( spep_2 + 110 + offset1, 1, 0.7 );
setRotateKey( spep_2 + 111 + offset1, 1, 0.7 );

--敵の動き2
setDisp( spep_2 + 204 + offset1, 1, 1 );
setDisp( spep_2 + 236 + offset1, 1, 0 );

changeAnime( spep_2 + 204 + offset1, 1, 105 );

setMoveKey( spep_2 + 204 + offset1, 1, -58.1, -50.2 , 0 );
setMoveKey( spep_2 + 205 + offset1, 1, -58.1, -50.2 , 0 );
setMoveKey( spep_2 + 206 + offset1, 1, -47.8, -49.3 , 0 );
setMoveKey( spep_2 + 207 + offset1, 1, -47.8, -49.3 , 0 );
setMoveKey( spep_2 + 208 + offset1, 1, -37.3, -48.5 , 0 );
setMoveKey( spep_2 + 209 + offset1, 1, -37.3, -48.5 , 0 );
setMoveKey( spep_2 + 210 + offset1, 1, -26.7, -47.6 , 0 );
setMoveKey( spep_2 + 211 + offset1, 1, -26.7, -47.6 , 0 );
setMoveKey( spep_2 + 212 + offset1, 1, -16, -46.7 , 0 );
setMoveKey( spep_2 + 213 + offset1, 1, -16, -46.7 , 0 );
setMoveKey( spep_2 + 214 + offset1, 1, -5.2, -45.8 , 0 );
setMoveKey( spep_2 + 215 + offset1, 1, -5.2, -45.8 , 0 );
setMoveKey( spep_2 + 216 + offset1, 1, 5.8, -45 , 0 );
setMoveKey( spep_2 + 217 + offset1, 1, 5.8, -45 , 0 );
setMoveKey( spep_2 + 218 + offset1, 1, 16.8, -44 , 0 );
setMoveKey( spep_2 + 219 + offset1, 1, 16.8, -44 , 0 );
setMoveKey( spep_2 + 220 + offset1, 1, 28, -43.1 , 0 );
setMoveKey( spep_2 + 221 + offset1, 1, 28, -43.1 , 0 );
setMoveKey( spep_2 + 222 + offset1, 1, 39.3, -42.2 , 0 );
setMoveKey( spep_2 + 223 + offset1, 1, 39.3, -42.2 , 0 );
setMoveKey( spep_2 + 224 + offset1, 1, 50.7, -41.3 , 0 );
setMoveKey( spep_2 + 225 + offset1, 1, 50.7, -41.3 , 0 );
setMoveKey( spep_2 + 226 + offset1, 1, 62.3, -40.3 , 0 );
setMoveKey( spep_2 + 227 + offset1, 1, 62.3, -40.3 , 0 );
setMoveKey( spep_2 + 228 + offset1, 1, 74, -39.4 , 0 );
setMoveKey( spep_2 + 229 + offset1, 1, 74, -39.4 , 0 );
setMoveKey( spep_2 + 230 + offset1, 1, 85.8, -38.4 , 0 );
setMoveKey( spep_2 + 231 + offset1, 1, 85.8, -38.4 , 0 );
setMoveKey( spep_2 + 232 + offset1, 1, 97.9, -37.5 , 0 );
setMoveKey( spep_2 + 236 + offset1, 1, 97.9, -37.5 , 0 );

setScaleKey( spep_2 + 204 + offset1, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 205 + offset1, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 206 + offset1, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 207 + offset1, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 208 + offset1, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 209 + offset1, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 210 + offset1, 1, 1, 1 );
setScaleKey( spep_2 + 211 + offset1, 1, 1, 1 );
setScaleKey( spep_2 + 212 + offset1, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 213 + offset1, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 214 + offset1, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 215 + offset1, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 216 + offset1, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 217 + offset1, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 218 + offset1, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 219 + offset1, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 220 + offset1, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 221 + offset1, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 222 + offset1, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 223 + offset1, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 224 + offset1, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 225 + offset1, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 226 + offset1, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 227 + offset1, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 228 + offset1, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 229 + offset1, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 230 + offset1, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 231 + offset1, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 232 + offset1, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 236 + offset1, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 204 + offset1, 1, 74.7 );
setRotateKey( spep_2 + 236 + offset1, 1, 74.7 );

setAlphaKey( spep_2 + 50 + offset1, 1, 255 );
setAlphaKey( spep_2 + 88 + offset1, 1, 255 );
setAlphaKey( spep_2 + 204 + offset1, 1, 255 );

-- ** 音 ** --
--構える
SE004 = playSeVer2( spep_2 + 14, 1003, "", 0, 0, 0, -1);
--突っ込んでくる
SE005 = playSeVer2( spep_2 + 32, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 32, 9, "", 0, 0, 0, -1);
--変形する
SE007 = playSeVer2( spep_2 + 44, 1354, "",spep_2 + 90, 0, 14, -1);
--竜巻になる
SE008 = playSeVer2( spep_2 + 72, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE008, 71 );
SE009 = playSeVer2( spep_2 + 72, 1343, "",spep_2 + 190, 0, 46, -1);
--敵吹っ飛ぶ
SE010 = playSeVer2( spep_2 + 88, 1027, "", 0, 0, 0, -1);
--風圧
SE011 = playSeVer2( spep_2 + 106, 1259, "",spep_2 + 200, 0, 52, 0.6);
--飛び出す
SE012 = playSeVer2( spep_2 + 160, 1207, "",spep_2 + 200, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 160, SE012, 73 );
SE013 = playSeVer2( spep_2 + 160, 1117, "", 0, 0, 0, -1);
--気弾投げる
SE014 = playSeVer2( spep_2 + 174, 1021, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 174, 1016, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 192, 1016, "", 0, 0, 0, -1);
--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 192, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 192, SE017, 148 );
SE018 = playSeVer2( spep_2 + 218, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 218, SE018, 172 );
setPitch( spep_2 + 218, SE018, 200 );   
setTimeStretch( SE018, 1.13, 30, 4 );

--気弾ヒット
SE019 = playSeVer2( spep_2 + 224, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE019, 93 );
SE020 = playSeVer2( spep_2 + 224, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE020, 79 );
SE021 = playSeVer2( spep_2 + 268, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE021, 83 );
SE022 = playSeVer2( spep_2 + 268, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE022, 79 );
--風圧
SE023 = playSeVer2( spep_2 + 278, 1259, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 278, SE023, 74 );
setPitch( spep_2 + 278, SE023, -500 );
setTimeStretch( SE023, 0.89, 30, 4 );

-- ** おわり ** --
dealDamage( spep_2 + MAX_FRAME_2 - 102 );
endPhase( spep_2 + MAX_FRAME_2 - 2 );--408

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

------------------------------------------------------
-- 開幕〜セリフカットインまで ef_001 (96F)
------------------------------------------------------

MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );--反転対応
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, -1.0, 1.0 );--反転対応
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );--96

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--96

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );  -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );  -- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  -- 集中線
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
SE000 = playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 腕を解く〜フィニッシュ ef_002 (408F)
------------------------------------------------------

MAX_FRAME_2 = 408;

-- ** エフェクト等 ** --
finish_f  = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_003r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );--408

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE000, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end


-----------------------------
--回避しなかった場合
-----------------------------

offset1 = -1;

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 50 + offset1, 1, 1 );
setDisp( spep_2 + 111 + offset1, 1, 0 );

changeAnime( spep_2 + 50 + offset1, 1, 118 );
changeAnime( spep_2 + 88 + offset1, 1, 107 );

setMoveKey( spep_2 + 50 + offset1, 1, 245.4, -108 , 0 );
setMoveKey( spep_2 + 51 + offset1, 1, 245.4, -108 , 0 );
setMoveKey( spep_2 + 52 + offset1, 1, 245.2, -108 , 0 );
setMoveKey( spep_2 + 53 + offset1, 1, 245.2, -108 , 0 );
setMoveKey( spep_2 + 54 + offset1, 1, 244.1, -108 , 0 );
setMoveKey( spep_2 + 55 + offset1, 1, 244.1, -108 , 0 );
setMoveKey( spep_2 + 56 + offset1, 1, 241.2, -108 , 0 );
setMoveKey( spep_2 + 57 + offset1, 1, 241.2, -108 , 0 );
setMoveKey( spep_2 + 58 + offset1, 1, 235.4, -108 , 0 );
setMoveKey( spep_2 + 59 + offset1, 1, 235.4, -108 , 0 );
setMoveKey( spep_2 + 60 + offset1, 1, 225.9, -108 , 0 );
setMoveKey( spep_2 + 61 + offset1, 1, 225.9, -108 , 0 );
setMoveKey( spep_2 + 62 + offset1, 1, 211.6, -108 , 0 );
setMoveKey( spep_2 + 63 + offset1, 1, 211.6, -108 , 0 );
setMoveKey( spep_2 + 64 + offset1, 1, 191.8, -108 , 0 );
setMoveKey( spep_2 + 65 + offset1, 1, 191.8, -108 , 0 );
setMoveKey( spep_2 + 66 + offset1, 1, 165.4, -108 , 0 );
setMoveKey( spep_2 + 67 + offset1, 1, 165.4, -108 , 0 );
setMoveKey( spep_2 + 68 + offset1, 1, 147.2, -97.6 , 0 );
setMoveKey( spep_2 + 69 + offset1, 1, 147.2, -97.6 , 0 );
setMoveKey( spep_2 + 70 + offset1, 1, 131.7, -88.6 , 0 );
setMoveKey( spep_2 + 71 + offset1, 1, 131.7, -88.6 , 0 );
setMoveKey( spep_2 + 72 + offset1, 1, 118.5, -81.1 , 0 );
setMoveKey( spep_2 + 73 + offset1, 1, 118.5, -81.1 , 0 );
setMoveKey( spep_2 + 74 + offset1, 1, 107.6, -74.8 , 0 );
setMoveKey( spep_2 + 75 + offset1, 1, 107.6, -74.8 , 0 );
setMoveKey( spep_2 + 76 + offset1, 1, 98.6, -69.6 , 0 );
setMoveKey( spep_2 + 77 + offset1, 1, 98.6, -69.6 , 0 );
setMoveKey( spep_2 + 78 + offset1, 1, 91.4, -65.5 , 0 );
setMoveKey( spep_2 + 79 + offset1, 1, 91.4, -65.5 , 0 );
setMoveKey( spep_2 + 80 + offset1, 1, 85.8, -62.2 , 0 );
setMoveKey( spep_2 + 81 + offset1, 1, 85.8, -62.2 , 0 );
setMoveKey( spep_2 + 82 + offset1, 1, 83.6, -57.8 , 0 );
setMoveKey( spep_2 + 83 + offset1, 1, 83.6, -57.8 , 0 );
setMoveKey( spep_2 + 84 + offset1, 1, 76.5, -60.1 , 0 );
setMoveKey( spep_2 + 85 + offset1, 1, 76.5, -60.1 , 0 );
setMoveKey( spep_2 + 86 + offset1, 1, 74.5, -54.9 , 0 );
setMoveKey( spep_2 + 87 + offset1, 1, 74.5, -54.9 , 0 );
setMoveKey( spep_2 + 88 + offset1, 1, 166.5, -56.9 , 0 );
setMoveKey( spep_2 + 89 + offset1, 1, 166.5, -56.9 , 0 );
setMoveKey( spep_2 + 90 + offset1, 1, 164.3, -16.2 , 0 );
setMoveKey( spep_2 + 91 + offset1, 1, 164.3, -16.2 , 0 );
setMoveKey( spep_2 + 92 + offset1, 1, 157.9, -51.7 , 0 );
setMoveKey( spep_2 + 93 + offset1, 1, 157.9, -51.7 , 0 );
setMoveKey( spep_2 + 94 + offset1, 1, 164.4, -23.4 , 0 );
setMoveKey( spep_2 + 95 + offset1, 1, 164.4, -23.4 , 0 );
setMoveKey( spep_2 + 96 + offset1, 1, 200.6, -39.1 , 0 );
setMoveKey( spep_2 + 97 + offset1, 1, 200.6, -39.1 , 0 );
setMoveKey( spep_2 + 98 + offset1, 1, 217.3, 9 , 0 );
setMoveKey( spep_2 + 99 + offset1, 1, 217.3, 9 , 0 );
setMoveKey( spep_2 + 100 + offset1, 1, 281.9, 14.9 , 0 );
setMoveKey( spep_2 + 101 + offset1, 1, 281.9, 14.9 , 0 );
setMoveKey( spep_2 + 102 + offset1, 1, 347.1, 76.3 , 0 );
setMoveKey( spep_2 + 103 + offset1, 1, 347.1, 76.3 , 0 );
setMoveKey( spep_2 + 104 + offset1, 1, 426, 115 , 0 );
setMoveKey( spep_2 + 105 + offset1, 1, 426, 115 , 0 );
setMoveKey( spep_2 + 106 + offset1, 1, 539.2, 188.4 , 0 );
setMoveKey( spep_2 + 107 + offset1, 1, 539.2, 188.4 , 0 );
setMoveKey( spep_2 + 108 + offset1, 1, 681.1, 284 , 0 );
setMoveKey( spep_2 + 109 + offset1, 1, 681.1, 284 , 0 );
setMoveKey( spep_2 + 110 + offset1, 1, 853.9, 375 , 0 );
setMoveKey( spep_2 + 111 + offset1, 1, 853.9, 375 , 0 );

setScaleKey( spep_2 + 50 + offset1, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 66 + offset1, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 67 + offset1, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 68 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 69 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 70 + offset1, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 71 + offset1, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 72 + offset1, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 73 + offset1, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 74 + offset1, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 75 + offset1, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 76 + offset1, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 77 + offset1, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 78 + offset1, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 79 + offset1, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 80 + offset1, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 81 + offset1, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 82 + offset1, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 83 + offset1, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 84 + offset1, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 85 + offset1, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 86 + offset1, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 87 + offset1, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 88 + offset1, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 90 + offset1, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 91 + offset1, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 92 + offset1, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 93 + offset1, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 94 + offset1, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 95 + offset1, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 96 + offset1, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 97 + offset1, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 98 + offset1, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 99 + offset1, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 100 + offset1, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 101 + offset1, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 102 + offset1, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 103 + offset1, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 104 + offset1, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 105 + offset1, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 106 + offset1, 1, 2, 2 );
setScaleKey( spep_2 + 107 + offset1, 1, 2, 2 );
setScaleKey( spep_2 + 108 + offset1, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 109 + offset1, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 110 + offset1, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 111 + offset1, 1, 2.9, 2.9 );

setRotateKey( spep_2 + 50 + offset1, 1, 0 );
setRotateKey( spep_2 + 87 + offset1, 1, 0 );
setRotateKey( spep_2 + 88 + offset1, 1, 12.3 );
setRotateKey( spep_2 + 90 + offset1, 1, 12.3 );
setRotateKey( spep_2 + 91 + offset1, 1, 12.3 );
setRotateKey( spep_2 + 92 + offset1, 1, 12.2 );
setRotateKey( spep_2 + 93 + offset1, 1, 12.2 );
setRotateKey( spep_2 + 94 + offset1, 1, 12 );
setRotateKey( spep_2 + 95 + offset1, 1, 12 );
setRotateKey( spep_2 + 96 + offset1, 1, 11.7 );
setRotateKey( spep_2 + 97 + offset1, 1, 11.7 );
setRotateKey( spep_2 + 98 + offset1, 1, 11.2 );
setRotateKey( spep_2 + 99 + offset1, 1, 11.2 );
setRotateKey( spep_2 + 100 + offset1, 1, 10.4 );
setRotateKey( spep_2 + 101 + offset1, 1, 10.4 );
setRotateKey( spep_2 + 102 + offset1, 1, 9.3 );
setRotateKey( spep_2 + 103 + offset1, 1, 9.3 );
setRotateKey( spep_2 + 104 + offset1, 1, 7.8 );
setRotateKey( spep_2 + 105 + offset1, 1, 7.8 );
setRotateKey( spep_2 + 106 + offset1, 1, 5.9 );
setRotateKey( spep_2 + 107 + offset1, 1, 5.9 );
setRotateKey( spep_2 + 108 + offset1, 1, 3.6 );
setRotateKey( spep_2 + 109 + offset1, 1, 3.6 );
setRotateKey( spep_2 + 110 + offset1, 1, 0.7 );
setRotateKey( spep_2 + 111 + offset1, 1, 0.7 );

--敵の動き2
setDisp( spep_2 + 204 + offset1, 1, 1 );
setDisp( spep_2 + 236 + offset1, 1, 0 );

changeAnime( spep_2 + 204 + offset1, 1, 105 );

setMoveKey( spep_2 + 204 + offset1, 1, -58.1, -50.2 , 0 );
setMoveKey( spep_2 + 205 + offset1, 1, -58.1, -50.2 , 0 );
setMoveKey( spep_2 + 206 + offset1, 1, -47.8, -49.3 , 0 );
setMoveKey( spep_2 + 207 + offset1, 1, -47.8, -49.3 , 0 );
setMoveKey( spep_2 + 208 + offset1, 1, -37.3, -48.5 , 0 );
setMoveKey( spep_2 + 209 + offset1, 1, -37.3, -48.5 , 0 );
setMoveKey( spep_2 + 210 + offset1, 1, -26.7, -47.6 , 0 );
setMoveKey( spep_2 + 211 + offset1, 1, -26.7, -47.6 , 0 );
setMoveKey( spep_2 + 212 + offset1, 1, -16, -46.7 , 0 );
setMoveKey( spep_2 + 213 + offset1, 1, -16, -46.7 , 0 );
setMoveKey( spep_2 + 214 + offset1, 1, -5.2, -45.8 , 0 );
setMoveKey( spep_2 + 215 + offset1, 1, -5.2, -45.8 , 0 );
setMoveKey( spep_2 + 216 + offset1, 1, 5.8, -45 , 0 );
setMoveKey( spep_2 + 217 + offset1, 1, 5.8, -45 , 0 );
setMoveKey( spep_2 + 218 + offset1, 1, 16.8, -44 , 0 );
setMoveKey( spep_2 + 219 + offset1, 1, 16.8, -44 , 0 );
setMoveKey( spep_2 + 220 + offset1, 1, 28, -43.1 , 0 );
setMoveKey( spep_2 + 221 + offset1, 1, 28, -43.1 , 0 );
setMoveKey( spep_2 + 222 + offset1, 1, 39.3, -42.2 , 0 );
setMoveKey( spep_2 + 223 + offset1, 1, 39.3, -42.2 , 0 );
setMoveKey( spep_2 + 224 + offset1, 1, 50.7, -41.3 , 0 );
setMoveKey( spep_2 + 225 + offset1, 1, 50.7, -41.3 , 0 );
setMoveKey( spep_2 + 226 + offset1, 1, 62.3, -40.3 , 0 );
setMoveKey( spep_2 + 227 + offset1, 1, 62.3, -40.3 , 0 );
setMoveKey( spep_2 + 228 + offset1, 1, 74, -39.4 , 0 );
setMoveKey( spep_2 + 229 + offset1, 1, 74, -39.4 , 0 );
setMoveKey( spep_2 + 230 + offset1, 1, 85.8, -38.4 , 0 );
setMoveKey( spep_2 + 231 + offset1, 1, 85.8, -38.4 , 0 );
setMoveKey( spep_2 + 232 + offset1, 1, 97.9, -37.5 , 0 );
setMoveKey( spep_2 + 236 + offset1, 1, 97.9, -37.5 , 0 );

setScaleKey( spep_2 + 204 + offset1, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 205 + offset1, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 206 + offset1, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 207 + offset1, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 208 + offset1, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 209 + offset1, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 210 + offset1, 1, 1, 1 );
setScaleKey( spep_2 + 211 + offset1, 1, 1, 1 );
setScaleKey( spep_2 + 212 + offset1, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 213 + offset1, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 214 + offset1, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 215 + offset1, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 216 + offset1, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 217 + offset1, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 218 + offset1, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 219 + offset1, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 220 + offset1, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 221 + offset1, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 222 + offset1, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 223 + offset1, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 224 + offset1, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 225 + offset1, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 226 + offset1, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 227 + offset1, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 228 + offset1, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 229 + offset1, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 230 + offset1, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 231 + offset1, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 232 + offset1, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 236 + offset1, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 204 + offset1, 1, 74.7 );
setRotateKey( spep_2 + 236 + offset1, 1, 74.7 );

setAlphaKey( spep_2 + 50 + offset1, 1, 255 );
setAlphaKey( spep_2 + 88 + offset1, 1, 255 );
setAlphaKey( spep_2 + 204 + offset1, 1, 255 );

-- ** 音 ** --
--構える
SE004 = playSeVer2( spep_2 + 14, 1003, "", 0, 0, 0, -1);
--突っ込んでくる
SE005 = playSeVer2( spep_2 + 32, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 32, 9, "", 0, 0, 0, -1);
--変形する
SE007 = playSeVer2( spep_2 + 44, 1354, "",spep_2 + 90, 0, 14, -1);
--竜巻になる
SE008 = playSeVer2( spep_2 + 72, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE008, 71 );
SE009 = playSeVer2( spep_2 + 72, 1343, "",spep_2 + 190, 0, 46, -1);
--敵吹っ飛ぶ
SE010 = playSeVer2( spep_2 + 88, 1027, "", 0, 0, 0, -1);
--風圧
SE011 = playSeVer2( spep_2 + 106, 1259, "",spep_2 + 200, 0, 52, 0.6);
--飛び出す
SE012 = playSeVer2( spep_2 + 160, 1207, "",spep_2 + 200, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 160, SE012, 73 );
SE013 = playSeVer2( spep_2 + 160, 1117, "", 0, 0, 0, -1);
--気弾投げる
SE014 = playSeVer2( spep_2 + 174, 1021, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 174, 1016, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 192, 1016, "", 0, 0, 0, -1);
--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 192, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 192, SE017, 148 );
SE018 = playSeVer2( spep_2 + 218, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 218, SE018, 172 );
setPitch( spep_2 + 218, SE018, 200 );   
setTimeStretch( SE018, 1.13, 30, 4 );

--気弾ヒット
SE019 = playSeVer2( spep_2 + 224, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE019, 93 );
SE020 = playSeVer2( spep_2 + 224, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE020, 79 );
SE021 = playSeVer2( spep_2 + 268, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE021, 83 );
SE022 = playSeVer2( spep_2 + 268, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE022, 79 );
--風圧
SE023 = playSeVer2( spep_2 + 278, 1259, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 278, SE023, 74 );
setPitch( spep_2 + 278, SE023, -500 );
setTimeStretch( SE023, 0.89, 30, 4 );

-- ** おわり ** --
dealDamage( spep_2 + MAX_FRAME_2 - 102 );
endPhase( spep_2 + MAX_FRAME_2 - 2 );--408

end
