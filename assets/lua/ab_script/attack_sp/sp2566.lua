-- 1026870 : UR_ベビー_必殺技：リベンジブラスト
-- sp_effect_b4_00290
-- sp2566

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
SP_001 = 161899;  -- 開幕〜セリフカットインまで ef_001
SP_002 = 161900;  -- 腕を解く〜フィニッシュ ef_002
SP_003 = 161902;  -- 腕を解く〜フィニッシュ ef_003

-- 敵側
SP_002r = 161901;  -- 同上　敵側 ef_002r
SP_003r = 161903;  -- 同上　敵側 ef_003r

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
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線白
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
-- 腕を解く〜フィニッシュ ef_002 (680F)
------------------------------------------------------

MAX_FRAME_2 = 680;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
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
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

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
setRotateKey( spep_2 + 86 + offset1, 1, 0 );
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
setRotateKey( spep_2 + 206 + offset1, 1, 74.7 );
setRotateKey( spep_2 + 232 + offset1, 1, 74.7 );
setRotateKey( spep_2 + 236 + offset1, 1, 74.7 );

--敵の動き3
setDisp( spep_2 + 462 + offset1, 1, 1 );
setDisp( spep_2 + 529 + offset1, 1, 0 );

changeAnime( spep_2 + 462 + offset1, 1, 107 );

setMoveKey( spep_2 + 462 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 464 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 490 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 491 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 492 + offset1, 1, 435.8, -373.4 , 0 );
setMoveKey( spep_2 + 493 + offset1, 1, 435.8, -373.4 , 0 );
setMoveKey( spep_2 + 494 + offset1, 1, 431.8, -377.4 , 0 );
setMoveKey( spep_2 + 495 + offset1, 1, 431.8, -377.4 , 0 );
setMoveKey( spep_2 + 496 + offset1, 1, 431.8, -373.4 , 0 );
setMoveKey( spep_2 + 497 + offset1, 1, 431.8, -373.4 , 0 );
setMoveKey( spep_2 + 498 + offset1, 1, 435.8, -377.4 , 0 );
setMoveKey( spep_2 + 499 + offset1, 1, 435.8, -377.4 , 0 );
setMoveKey( spep_2 + 500 + offset1, 1, 435.8, -373.4 , 0 );
setMoveKey( spep_2 + 501 + offset1, 1, 435.8, -373.4 , 0 );
setMoveKey( spep_2 + 502 + offset1, 1, 429.8, -379.4 , 0 );
setMoveKey( spep_2 + 503 + offset1, 1, 429.8, -379.4 , 0 );
setMoveKey( spep_2 + 504 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 505 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 506 + offset1, 1, 439.8, -367.4 , 0 );
setMoveKey( spep_2 + 507 + offset1, 1, 439.8, -367.4 , 0 );
setMoveKey( spep_2 + 508 + offset1, 1, 429.8, -383.4 , 0 );
setMoveKey( spep_2 + 509 + offset1, 1, 429.8, -383.4 , 0 );
setMoveKey( spep_2 + 510 + offset1, 1, 425.8, -363.4 , 0 );
setMoveKey( spep_2 + 511 + offset1, 1, 425.8, -363.4 , 0 );
setMoveKey( spep_2 + 512 + offset1, 1, 441.8, -387.4 , 0 );
setMoveKey( spep_2 + 513 + offset1, 1, 441.8, -387.4 , 0 );
setMoveKey( spep_2 + 514 + offset1, 1, 445.8, -361.4 , 0 );
setMoveKey( spep_2 + 515 + offset1, 1, 445.8, -361.4 , 0 );
setMoveKey( spep_2 + 516 + offset1, 1, 429.8, -397.4 , 0 );
setMoveKey( spep_2 + 517 + offset1, 1, 429.8, -397.4 , 0 );
setMoveKey( spep_2 + 518 + offset1, 1, 425.8, -361.4 , 0 );
setMoveKey( spep_2 + 519 + offset1, 1, 425.8, -361.4 , 0 );
setMoveKey( spep_2 + 520 + offset1, 1, 429.8, -387.4 , 0 );
setMoveKey( spep_2 + 521 + offset1, 1, 429.8, -387.4 , 0 );
setMoveKey( spep_2 + 522 + offset1, 1, 437.8, -353.4 , 0 );
setMoveKey( spep_2 + 523 + offset1, 1, 437.8, -353.4 , 0 );
setMoveKey( spep_2 + 524 + offset1, 1, 429.8, -399.4 , 0 );
setMoveKey( spep_2 + 525 + offset1, 1, 429.8, -399.4 , 0 );
setMoveKey( spep_2 + 526 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 528 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 529 + offset1, 1, 433.8, -375.4 , 0 );

setScaleKey( spep_2 + 462 + offset1, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 464 + offset1, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 528 + offset1, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 529 + offset1, 1, 1.47, 1.47 );

setRotateKey( spep_2 + 462 + offset1, 1, 7.6 );
setRotateKey( spep_2 + 464 + offset1, 1, 7.6 );
setRotateKey( spep_2 + 528 + offset1, 1, 7.6 );
setRotateKey( spep_2 + 529 + offset1, 1, 7.6 );


--敵の動き4
setDisp( spep_2 + 530 + offset1, 1, 1 );
setDisp( spep_2 + 678 + offset1, 1, 0 );

changeAnime( spep_2 + 530 + offset1, 1, 108 );
changeAnime( spep_2 + 566 + offset1, 1, 106 );

setMoveKey( spep_2 + 530 + offset1, 1, -255.2, -231.8 , 0 );
setMoveKey( spep_2 + 531 + offset1, 1, -255.2, -231.8 , 0 );
setMoveKey( spep_2 + 532 + offset1, 1, -251.4, -240.7 , 0 );
setMoveKey( spep_2 + 533 + offset1, 1, -251.4, -240.7 , 0 );
setMoveKey( spep_2 + 534 + offset1, 1, -241.6, -213.6 , 0 );
setMoveKey( spep_2 + 535 + offset1, 1, -241.6, -213.6 , 0 );
setMoveKey( spep_2 + 536 + offset1, 1, -211.9, -230.4 , 0 );
setMoveKey( spep_2 + 537 + offset1, 1, -211.9, -230.4 , 0 );
setMoveKey( spep_2 + 538 + offset1, 1, -194.1, -203.3 , 0 );
setMoveKey( spep_2 + 539 + offset1, 1, -194.1, -203.3 , 0 );
setMoveKey( spep_2 + 540 + offset1, 1, -196.3, -206.2 , 0 );
setMoveKey( spep_2 + 541 + offset1, 1, -196.3, -206.2 , 0 );
setMoveKey( spep_2 + 542 + offset1, 1, -186.6, -195.1 , 0 );
setMoveKey( spep_2 + 543 + offset1, 1, -186.6, -195.1 , 0 );
setMoveKey( spep_2 + 544 + offset1, 1, -168.9, -186 , 0 );
setMoveKey( spep_2 + 545 + offset1, 1, -168.9, -186 , 0 );
setMoveKey( spep_2 + 546 + offset1, 1, -147.2, -168.9 , 0 );
setMoveKey( spep_2 + 547 + offset1, 1, -147.2, -168.9 , 0 );
setMoveKey( spep_2 + 548 + offset1, 1, -137.5, -181.8 , 0 );
setMoveKey( spep_2 + 549 + offset1, 1, -137.5, -181.8 , 0 );
setMoveKey( spep_2 + 550 + offset1, 1, -133.8, -162.8 , 0 );
setMoveKey( spep_2 + 551 + offset1, 1, -133.8, -162.8 , 0 );
setMoveKey( spep_2 + 552 + offset1, 1, -102.2, -173.7 , 0 );
setMoveKey( spep_2 + 553 + offset1, 1, -102.2, -173.7 , 0 );
setMoveKey( spep_2 + 554 + offset1, 1, -90.6, -146.7 , 0 );
setMoveKey( spep_2 + 555 + offset1, 1, -90.6, -146.7 , 0 );
setMoveKey( spep_2 + 556 + offset1, 1, -87, -155.7 , 0 );
setMoveKey( spep_2 + 557 + offset1, 1, -87, -155.7 , 0 );
setMoveKey( spep_2 + 558 + offset1, 1, -77.4, -128.7 , 0 );
setMoveKey( spep_2 + 559 + offset1, 1, -77.4, -128.7 , 0 );
setMoveKey( spep_2 + 560 + offset1, 1, -55.9, -133.7 , 0 );
setMoveKey( spep_2 + 561 + offset1, 1, -55.9, -133.7 , 0 );
setMoveKey( spep_2 + 562 + offset1, 1, -36.5, -118.7 , 0 );
setMoveKey( spep_2 + 563 + offset1, 1, -36.5, -118.7 , 0 );
setMoveKey( spep_2 + 564 + offset1, 1, -33, -127.8 , 0 );
setMoveKey( spep_2 + 565 + offset1, 1, -33, -127.8 , 0 );
setMoveKey( spep_2 + 566 + offset1, 1, -46.4, -111.3 , 0 );
setMoveKey( spep_2 + 567 + offset1, 1, -46.4, -111.3 , 0 );
setMoveKey( spep_2 + 568 + offset1, 1, -27.6, -134.1 , 0 );
setMoveKey( spep_2 + 569 + offset1, 1, -27.6, -134.1 , 0 );
setMoveKey( spep_2 + 570 + offset1, 1, -20.8, -112.8 , 0 );
setMoveKey( spep_2 + 571 + offset1, 1, -20.8, -112.8 , 0 );
setMoveKey( spep_2 + 572 + offset1, 1, -34, -121.6 , 0 );
setMoveKey( spep_2 + 573 + offset1, 1, -34, -121.6 , 0 );
setMoveKey( spep_2 + 574 + offset1, 1, -35.3, -116.4 , 0 );
setMoveKey( spep_2 + 575 + offset1, 1, -35.3, -116.4 , 0 );
setMoveKey( spep_2 + 576 + offset1, 1, -28.5, -113.1 , 0 );
setMoveKey( spep_2 + 577 + offset1, 1, -28.5, -113.1 , 0 );
setMoveKey( spep_2 + 578 + offset1, 1, -17.8, -101.9 , 0 );
setMoveKey( spep_2 + 579 + offset1, 1, -17.8, -101.9 , 0 );
setMoveKey( spep_2 + 580 + offset1, 1, -19, -120.7 , 0 );
setMoveKey( spep_2 + 581 + offset1, 1, -19, -120.7 , 0 );
setMoveKey( spep_2 + 582 + offset1, 1, -26.3, -107.5 , 0 );
setMoveKey( spep_2 + 583 + offset1, 1, -26.3, -107.5 , 0 );
setMoveKey( spep_2 + 584 + offset1, 1, -5.6, -124.3 , 0 );
setMoveKey( spep_2 + 585 + offset1, 1, -5.6, -124.3 , 0 );
setMoveKey( spep_2 + 586 + offset1, 1, -5, -103.2 , 0 );
setMoveKey( spep_2 + 587 + offset1, 1, -5, -103.2 , 0 );
setMoveKey( spep_2 + 588 + offset1, 1, -12.3, -118 , 0 );
setMoveKey( spep_2 + 589 + offset1, 1, -12.3, -118 , 0 );
setMoveKey( spep_2 + 590 + offset1, 1, -13.7, -96.8 , 0 );
setMoveKey( spep_2 + 591 + offset1, 1, -13.7, -96.8 , 0 );
setMoveKey( spep_2 + 592 + offset1, 1, -3.1, -107.7 , 0 );
setMoveKey( spep_2 + 593 + offset1, 1, -3.1, -107.7 , 0 );
setMoveKey( spep_2 + 594 + offset1, 1, 5.5, -98.5 , 0 );
setMoveKey( spep_2 + 595 + offset1, 1, 5.5, -98.5 , 0 );
setMoveKey( spep_2 + 596 + offset1, 1, -1.9, -113.4 , 0 );
setMoveKey( spep_2 + 597 + offset1, 1, -1.9, -113.4 , 0 );
setMoveKey( spep_2 + 598 + offset1, 1, -3.4, -92.3 , 0 );
setMoveKey( spep_2 + 599 + offset1, 1, -3.4, -92.3 , 0 );
setMoveKey( spep_2 + 600 + offset1, 1, 15.2, -115.1 , 0 );
setMoveKey( spep_2 + 601 + offset1, 1, 15.2, -115.1 , 0 );
setMoveKey( spep_2 + 602 + offset1, 1, 21.7, -94 , 0 );
setMoveKey( spep_2 + 603 + offset1, 1, 21.7, -94 , 0 );
setMoveKey( spep_2 + 604 + offset1, 1, 8.1, -102.9 , 0 );
setMoveKey( spep_2 + 605 + offset1, 1, 8.1, -102.9 , 0 );
setMoveKey( spep_2 + 606 + offset1, 1, 6.6, -97.9 , 0 );
setMoveKey( spep_2 + 607 + offset1, 1, 6.6, -97.9 , 0 );
setMoveKey( spep_2 + 608 + offset1, 1, 13, -94.8 , 0 );
setMoveKey( spep_2 + 609 + offset1, 1, 13, -94.8 , 0 );
setMoveKey( spep_2 + 610 + offset1, 1, 23.4, -83.7 , 0 );
setMoveKey( spep_2 + 611 + offset1, 1, 23.4, -83.7 , 0 );
setMoveKey( spep_2 + 612 + offset1, 1, 21.8, -102.7 , 0 );
setMoveKey( spep_2 + 613 + offset1, 1, 21.8, -102.7 , 0 );
setMoveKey( spep_2 + 614 + offset1, 1, 14.2, -89.6 , 0 );
setMoveKey( spep_2 + 615 + offset1, 1, 14.2, -89.6 , 0 );
setMoveKey( spep_2 + 616 + offset1, 1, 34.5, -106.6 , 0 );
setMoveKey( spep_2 + 617 + offset1, 1, 34.5, -106.6 , 0 );
setMoveKey( spep_2 + 618 + offset1, 1, 34.8, -85.6 , 0 );
setMoveKey( spep_2 + 619 + offset1, 1, 34.8, -85.6 , 0 );
setMoveKey( spep_2 + 620 + offset1, 1, 27.1, -100.6 , 0 );
setMoveKey( spep_2 + 621 + offset1, 1, 27.1, -100.6 , 0 );
setMoveKey( spep_2 + 622 + offset1, 1, 25.3, -79.6 , 0 );
setMoveKey( spep_2 + 623 + offset1, 1, 25.3, -79.6 , 0 );
setMoveKey( spep_2 + 624 + offset1, 1, 35.6, -90.6 , 0 );
setMoveKey( spep_2 + 625 + offset1, 1, 35.6, -90.6 , 0 );
setMoveKey( spep_2 + 626 + offset1, 1, 43.8, -81.6 , 0 );
setMoveKey( spep_2 + 627 + offset1, 1, 43.8, -81.6 , 0 );
setMoveKey( spep_2 + 628 + offset1, 1, 35.9, -96.6 , 0 );
setMoveKey( spep_2 + 629 + offset1, 1, 35.9, -96.6 , 0 );
setMoveKey( spep_2 + 630 + offset1, 1, 35.2, -75.2 , 0 );
setMoveKey( spep_2 + 631 + offset1, 1, 35.2, -75.2 , 0 );
setMoveKey( spep_2 + 632 + offset1, 1, 54.3, -97.8 , 0 );
setMoveKey( spep_2 + 633 + offset1, 1, 54.3, -97.8 , 0 );
setMoveKey( spep_2 + 634 + offset1, 1, 61.4, -76.5 , 0 );
setMoveKey( spep_2 + 635 + offset1, 1, 61.4, -76.5 , 0 );
setMoveKey( spep_2 + 636 + offset1, 1, 48.4, -85.1 , 0 );
setMoveKey( spep_2 + 637 + offset1, 1, 48.4, -85.1 , 0 );
setMoveKey( spep_2 + 638 + offset1, 1, 47.4, -79.8 , 0 );
setMoveKey( spep_2 + 639 + offset1, 1, 47.4, -79.8 , 0 );
setMoveKey( spep_2 + 640 + offset1, 1, 66.3, -92.5 , 0 );
setMoveKey( spep_2 + 641 + offset1, 1, 66.3, -92.5 , 0 );
setMoveKey( spep_2 + 642 + offset1, 1, 73.2, -71.3 , 0 );
setMoveKey( spep_2 + 643 + offset1, 1, 73.2, -71.3 , 0 );
setMoveKey( spep_2 + 644 + offset1, 1, 60, -80 , 0 );
setMoveKey( spep_2 + 645 + offset1, 1, 60, -80 , 0 );
setMoveKey( spep_2 + 646 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 647 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 648 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 649 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 650 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 651 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 652 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 653 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 654 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 655 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 656 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 657 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 658 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 659 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 660 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 661 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 662 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 663 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 664 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 665 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 666 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 667 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 668 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 669 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 670 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 671 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 672 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 673 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 674 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 675 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 676 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 677 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 678 + offset1, 1, 58.5, -74.9 , 0 );

setScaleKey( spep_2 + 530 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 532 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 564 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 565 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 566 + offset1, 1, 2, 2 );
setScaleKey( spep_2 + 568 + offset1, 1, 2, 2 );
setScaleKey( spep_2 + 678 + offset1, 1, 2, 2 );

setRotateKey( spep_2 + 530 + offset1, 1, 7.7 );
setRotateKey( spep_2 + 532 + offset1, 1, 7.7 );
setRotateKey( spep_2 + 564 + offset1, 1, 7.7 );
setRotateKey( spep_2 + 565 + offset1, 1, 7.7 );
setRotateKey( spep_2 + 566 + offset1, 1, -5.5 );
setRotateKey( spep_2 + 568 + offset1, 1, -5.5 );
setRotateKey( spep_2 + 572 + offset1, 1, -5.5 );
setRotateKey( spep_2 + 573 + offset1, 1, -5.5 );
setRotateKey( spep_2 + 574 + offset1, 1, -5.4 );
setRotateKey( spep_2 + 578 + offset1, 1, -5.4 );
setRotateKey( spep_2 + 579 + offset1, 1, -5.4 );
setRotateKey( spep_2 + 580 + offset1, 1, -5.3 );
setRotateKey( spep_2 + 586 + offset1, 1, -5.3 );
setRotateKey( spep_2 + 587 + offset1, 1, -5.3 );
setRotateKey( spep_2 + 588 + offset1, 1, -5.2 );
setRotateKey( spep_2 + 594 + offset1, 1, -5.2 );
setRotateKey( spep_2 + 595 + offset1, 1, -5.2 );
setRotateKey( spep_2 + 596 + offset1, 1, -5.1 );
setRotateKey( spep_2 + 602 + offset1, 1, -5.1 );
setRotateKey( spep_2 + 603 + offset1, 1, -5.1 );
setRotateKey( spep_2 + 604 + offset1, 1, -5 );
setRotateKey( spep_2 + 610 + offset1, 1, -5 );
setRotateKey( spep_2 + 611 + offset1, 1, -5 );
setRotateKey( spep_2 + 612 + offset1, 1, -4.9 );
setRotateKey( spep_2 + 620 + offset1, 1, -4.9 );
setRotateKey( spep_2 + 621 + offset1, 1, -4.9 );
setRotateKey( spep_2 + 622 + offset1, 1, -4.8 );
setRotateKey( spep_2 + 628 + offset1, 1, -4.8 );
setRotateKey( spep_2 + 629 + offset1, 1, -4.8 );
setRotateKey( spep_2 + 630 + offset1, 1, -4.7 );
setRotateKey( spep_2 + 634 + offset1, 1, -4.7 );
setRotateKey( spep_2 + 635 + offset1, 1, -4.7 );
setRotateKey( spep_2 + 636 + offset1, 1, -4.6 );
setRotateKey( spep_2 + 642 + offset1, 1, -4.6 );
setRotateKey( spep_2 + 643 + offset1, 1, -4.6 );
setRotateKey( spep_2 + 644 + offset1, 1, -4.5 );
setRotateKey( spep_2 + 678 + offset1, 1, -4.5 );

setBlendColor( spep_2 + 576 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.0 );
setBlendColor( spep_2 + 581 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.1 );
setBlendColor( spep_2 + 586 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.2 );
setBlendColor( spep_2 + 591 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.3 );
setBlendColor( spep_2 + 596 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.4 );
setBlendColor( spep_2 + 601 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.5 );
setBlendColor( spep_2 + 606 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.6 );
setBlendColor( spep_2 + 611 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.7 );
setBlendColor( spep_2 + 616 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.8 );
setBlendColor( spep_2 + 621 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.9 );
setBlendColor( spep_2 + 626 + offset1, 1, 3, 0.9, 0.3, 0.8, 1.0 );
setBlendColor( spep_2 + 678 + offset1, 1, 3, 0, 0, 0, 0 );

setAlphaKey( spep_2 + 50 + offset1, 1, 255 );
setAlphaKey( spep_2 + 626 + offset1, 1, 255 );
setAlphaKey( spep_2 + 628 + offset1, 1, 255 );
setAlphaKey( spep_2 + 636 + offset1, 1, 0 );
setAlphaKey( spep_2 + 678 + offset1, 1, 0 );

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

--瞬間移動
SE023 = playSeVer2( spep_2 + 318, 1109, "", 0, 0, 0, -1);

--顔アップ
SE024 = playSeVer2( spep_2 + 368, 1116, "",spep_2 + 450, 0, 46, -1);

--エネルギー溜め
SE025 = playSeVer2( spep_2 + 398, 1158, "",spep_2 + 518, 0, 26, -1);
SE026 = playSeVer2( spep_2 + 412, 1363, "",spep_2 + 526, 0, 52, 0.6);
setPitch( spep_2 + 412, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_2 + 420, 1282, "",spep_2 + 518, 0, 26, 0.6);
setSeVolumeByWorkId( spep_2 + 420, SE027, 78 );
SE028 = playSeVer2( spep_2 + 424, 20, "", 0, 0, 0, -1);

--エネルギー爆発
SE029 = playSeVer2( spep_2 + 486, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE029, 76 );
SE030 = playSeVer2( spep_2 + 486, 1024, "", 0, 0, 0, -1);

--敵飲み込まれる
SE031 = playSeVer2( spep_2 + 522, 1264, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 522, 1226, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 542, 1258, "", 0, 30, 0, -1);
setSeVolumeByWorkId( spep_2 + 542, SE033, 77 );

-- ** おわり ** --
dealDamage( spep_2 + MAX_FRAME_2 - 102 );
endPhase( spep_2 + MAX_FRAME_2 - 2 );--680

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
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線白
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
-- 腕を解く〜フィニッシュ ef_002 (680F)
------------------------------------------------------
MAX_FRAME_2 = 680;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
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
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

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
setRotateKey( spep_2 + 86 + offset1, 1, 0 );
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
setRotateKey( spep_2 + 206 + offset1, 1, 74.7 );
setRotateKey( spep_2 + 232 + offset1, 1, 74.7 );
setRotateKey( spep_2 + 236 + offset1, 1, 74.7 );

--敵の動き3
setDisp( spep_2 + 462 + offset1, 1, 1 );
setDisp( spep_2 + 529 + offset1, 1, 0 );

changeAnime( spep_2 + 462 + offset1, 1, 107 );

setMoveKey( spep_2 + 462 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 464 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 490 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 491 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 492 + offset1, 1, 435.8, -373.4 , 0 );
setMoveKey( spep_2 + 493 + offset1, 1, 435.8, -373.4 , 0 );
setMoveKey( spep_2 + 494 + offset1, 1, 431.8, -377.4 , 0 );
setMoveKey( spep_2 + 495 + offset1, 1, 431.8, -377.4 , 0 );
setMoveKey( spep_2 + 496 + offset1, 1, 431.8, -373.4 , 0 );
setMoveKey( spep_2 + 497 + offset1, 1, 431.8, -373.4 , 0 );
setMoveKey( spep_2 + 498 + offset1, 1, 435.8, -377.4 , 0 );
setMoveKey( spep_2 + 499 + offset1, 1, 435.8, -377.4 , 0 );
setMoveKey( spep_2 + 500 + offset1, 1, 435.8, -373.4 , 0 );
setMoveKey( spep_2 + 501 + offset1, 1, 435.8, -373.4 , 0 );
setMoveKey( spep_2 + 502 + offset1, 1, 429.8, -379.4 , 0 );
setMoveKey( spep_2 + 503 + offset1, 1, 429.8, -379.4 , 0 );
setMoveKey( spep_2 + 504 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 505 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 506 + offset1, 1, 439.8, -367.4 , 0 );
setMoveKey( spep_2 + 507 + offset1, 1, 439.8, -367.4 , 0 );
setMoveKey( spep_2 + 508 + offset1, 1, 429.8, -383.4 , 0 );
setMoveKey( spep_2 + 509 + offset1, 1, 429.8, -383.4 , 0 );
setMoveKey( spep_2 + 510 + offset1, 1, 425.8, -363.4 , 0 );
setMoveKey( spep_2 + 511 + offset1, 1, 425.8, -363.4 , 0 );
setMoveKey( spep_2 + 512 + offset1, 1, 441.8, -387.4 , 0 );
setMoveKey( spep_2 + 513 + offset1, 1, 441.8, -387.4 , 0 );
setMoveKey( spep_2 + 514 + offset1, 1, 445.8, -361.4 , 0 );
setMoveKey( spep_2 + 515 + offset1, 1, 445.8, -361.4 , 0 );
setMoveKey( spep_2 + 516 + offset1, 1, 429.8, -397.4 , 0 );
setMoveKey( spep_2 + 517 + offset1, 1, 429.8, -397.4 , 0 );
setMoveKey( spep_2 + 518 + offset1, 1, 425.8, -361.4 , 0 );
setMoveKey( spep_2 + 519 + offset1, 1, 425.8, -361.4 , 0 );
setMoveKey( spep_2 + 520 + offset1, 1, 429.8, -387.4 , 0 );
setMoveKey( spep_2 + 521 + offset1, 1, 429.8, -387.4 , 0 );
setMoveKey( spep_2 + 522 + offset1, 1, 437.8, -353.4 , 0 );
setMoveKey( spep_2 + 523 + offset1, 1, 437.8, -353.4 , 0 );
setMoveKey( spep_2 + 524 + offset1, 1, 429.8, -399.4 , 0 );
setMoveKey( spep_2 + 525 + offset1, 1, 429.8, -399.4 , 0 );
setMoveKey( spep_2 + 526 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 528 + offset1, 1, 433.8, -375.4 , 0 );
setMoveKey( spep_2 + 529 + offset1, 1, 433.8, -375.4 , 0 );

setScaleKey( spep_2 + 462 + offset1, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 464 + offset1, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 528 + offset1, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 529 + offset1, 1, 1.47, 1.47 );

setRotateKey( spep_2 + 462 + offset1, 1, 7.6 );
setRotateKey( spep_2 + 464 + offset1, 1, 7.6 );
setRotateKey( spep_2 + 528 + offset1, 1, 7.6 );
setRotateKey( spep_2 + 529 + offset1, 1, 7.6 );


--敵の動き4
setDisp( spep_2 + 530 + offset1, 1, 1 );
setDisp( spep_2 + 678 + offset1, 1, 0 );

changeAnime( spep_2 + 530 + offset1, 1, 108 );
changeAnime( spep_2 + 566 + offset1, 1, 106 );

setMoveKey( spep_2 + 530 + offset1, 1, -255.2, -231.8 , 0 );
setMoveKey( spep_2 + 531 + offset1, 1, -255.2, -231.8 , 0 );
setMoveKey( spep_2 + 532 + offset1, 1, -251.4, -240.7 , 0 );
setMoveKey( spep_2 + 533 + offset1, 1, -251.4, -240.7 , 0 );
setMoveKey( spep_2 + 534 + offset1, 1, -241.6, -213.6 , 0 );
setMoveKey( spep_2 + 535 + offset1, 1, -241.6, -213.6 , 0 );
setMoveKey( spep_2 + 536 + offset1, 1, -211.9, -230.4 , 0 );
setMoveKey( spep_2 + 537 + offset1, 1, -211.9, -230.4 , 0 );
setMoveKey( spep_2 + 538 + offset1, 1, -194.1, -203.3 , 0 );
setMoveKey( spep_2 + 539 + offset1, 1, -194.1, -203.3 , 0 );
setMoveKey( spep_2 + 540 + offset1, 1, -196.3, -206.2 , 0 );
setMoveKey( spep_2 + 541 + offset1, 1, -196.3, -206.2 , 0 );
setMoveKey( spep_2 + 542 + offset1, 1, -186.6, -195.1 , 0 );
setMoveKey( spep_2 + 543 + offset1, 1, -186.6, -195.1 , 0 );
setMoveKey( spep_2 + 544 + offset1, 1, -168.9, -186 , 0 );
setMoveKey( spep_2 + 545 + offset1, 1, -168.9, -186 , 0 );
setMoveKey( spep_2 + 546 + offset1, 1, -147.2, -168.9 , 0 );
setMoveKey( spep_2 + 547 + offset1, 1, -147.2, -168.9 , 0 );
setMoveKey( spep_2 + 548 + offset1, 1, -137.5, -181.8 , 0 );
setMoveKey( spep_2 + 549 + offset1, 1, -137.5, -181.8 , 0 );
setMoveKey( spep_2 + 550 + offset1, 1, -133.8, -162.8 , 0 );
setMoveKey( spep_2 + 551 + offset1, 1, -133.8, -162.8 , 0 );
setMoveKey( spep_2 + 552 + offset1, 1, -102.2, -173.7 , 0 );
setMoveKey( spep_2 + 553 + offset1, 1, -102.2, -173.7 , 0 );
setMoveKey( spep_2 + 554 + offset1, 1, -90.6, -146.7 , 0 );
setMoveKey( spep_2 + 555 + offset1, 1, -90.6, -146.7 , 0 );
setMoveKey( spep_2 + 556 + offset1, 1, -87, -155.7 , 0 );
setMoveKey( spep_2 + 557 + offset1, 1, -87, -155.7 , 0 );
setMoveKey( spep_2 + 558 + offset1, 1, -77.4, -128.7 , 0 );
setMoveKey( spep_2 + 559 + offset1, 1, -77.4, -128.7 , 0 );
setMoveKey( spep_2 + 560 + offset1, 1, -55.9, -133.7 , 0 );
setMoveKey( spep_2 + 561 + offset1, 1, -55.9, -133.7 , 0 );
setMoveKey( spep_2 + 562 + offset1, 1, -36.5, -118.7 , 0 );
setMoveKey( spep_2 + 563 + offset1, 1, -36.5, -118.7 , 0 );
setMoveKey( spep_2 + 564 + offset1, 1, -33, -127.8 , 0 );
setMoveKey( spep_2 + 565 + offset1, 1, -33, -127.8 , 0 );
setMoveKey( spep_2 + 566 + offset1, 1, -46.4, -111.3 , 0 );
setMoveKey( spep_2 + 567 + offset1, 1, -46.4, -111.3 , 0 );
setMoveKey( spep_2 + 568 + offset1, 1, -27.6, -134.1 , 0 );
setMoveKey( spep_2 + 569 + offset1, 1, -27.6, -134.1 , 0 );
setMoveKey( spep_2 + 570 + offset1, 1, -20.8, -112.8 , 0 );
setMoveKey( spep_2 + 571 + offset1, 1, -20.8, -112.8 , 0 );
setMoveKey( spep_2 + 572 + offset1, 1, -34, -121.6 , 0 );
setMoveKey( spep_2 + 573 + offset1, 1, -34, -121.6 , 0 );
setMoveKey( spep_2 + 574 + offset1, 1, -35.3, -116.4 , 0 );
setMoveKey( spep_2 + 575 + offset1, 1, -35.3, -116.4 , 0 );
setMoveKey( spep_2 + 576 + offset1, 1, -28.5, -113.1 , 0 );
setMoveKey( spep_2 + 577 + offset1, 1, -28.5, -113.1 , 0 );
setMoveKey( spep_2 + 578 + offset1, 1, -17.8, -101.9 , 0 );
setMoveKey( spep_2 + 579 + offset1, 1, -17.8, -101.9 , 0 );
setMoveKey( spep_2 + 580 + offset1, 1, -19, -120.7 , 0 );
setMoveKey( spep_2 + 581 + offset1, 1, -19, -120.7 , 0 );
setMoveKey( spep_2 + 582 + offset1, 1, -26.3, -107.5 , 0 );
setMoveKey( spep_2 + 583 + offset1, 1, -26.3, -107.5 , 0 );
setMoveKey( spep_2 + 584 + offset1, 1, -5.6, -124.3 , 0 );
setMoveKey( spep_2 + 585 + offset1, 1, -5.6, -124.3 , 0 );
setMoveKey( spep_2 + 586 + offset1, 1, -5, -103.2 , 0 );
setMoveKey( spep_2 + 587 + offset1, 1, -5, -103.2 , 0 );
setMoveKey( spep_2 + 588 + offset1, 1, -12.3, -118 , 0 );
setMoveKey( spep_2 + 589 + offset1, 1, -12.3, -118 , 0 );
setMoveKey( spep_2 + 590 + offset1, 1, -13.7, -96.8 , 0 );
setMoveKey( spep_2 + 591 + offset1, 1, -13.7, -96.8 , 0 );
setMoveKey( spep_2 + 592 + offset1, 1, -3.1, -107.7 , 0 );
setMoveKey( spep_2 + 593 + offset1, 1, -3.1, -107.7 , 0 );
setMoveKey( spep_2 + 594 + offset1, 1, 5.5, -98.5 , 0 );
setMoveKey( spep_2 + 595 + offset1, 1, 5.5, -98.5 , 0 );
setMoveKey( spep_2 + 596 + offset1, 1, -1.9, -113.4 , 0 );
setMoveKey( spep_2 + 597 + offset1, 1, -1.9, -113.4 , 0 );
setMoveKey( spep_2 + 598 + offset1, 1, -3.4, -92.3 , 0 );
setMoveKey( spep_2 + 599 + offset1, 1, -3.4, -92.3 , 0 );
setMoveKey( spep_2 + 600 + offset1, 1, 15.2, -115.1 , 0 );
setMoveKey( spep_2 + 601 + offset1, 1, 15.2, -115.1 , 0 );
setMoveKey( spep_2 + 602 + offset1, 1, 21.7, -94 , 0 );
setMoveKey( spep_2 + 603 + offset1, 1, 21.7, -94 , 0 );
setMoveKey( spep_2 + 604 + offset1, 1, 8.1, -102.9 , 0 );
setMoveKey( spep_2 + 605 + offset1, 1, 8.1, -102.9 , 0 );
setMoveKey( spep_2 + 606 + offset1, 1, 6.6, -97.9 , 0 );
setMoveKey( spep_2 + 607 + offset1, 1, 6.6, -97.9 , 0 );
setMoveKey( spep_2 + 608 + offset1, 1, 13, -94.8 , 0 );
setMoveKey( spep_2 + 609 + offset1, 1, 13, -94.8 , 0 );
setMoveKey( spep_2 + 610 + offset1, 1, 23.4, -83.7 , 0 );
setMoveKey( spep_2 + 611 + offset1, 1, 23.4, -83.7 , 0 );
setMoveKey( spep_2 + 612 + offset1, 1, 21.8, -102.7 , 0 );
setMoveKey( spep_2 + 613 + offset1, 1, 21.8, -102.7 , 0 );
setMoveKey( spep_2 + 614 + offset1, 1, 14.2, -89.6 , 0 );
setMoveKey( spep_2 + 615 + offset1, 1, 14.2, -89.6 , 0 );
setMoveKey( spep_2 + 616 + offset1, 1, 34.5, -106.6 , 0 );
setMoveKey( spep_2 + 617 + offset1, 1, 34.5, -106.6 , 0 );
setMoveKey( spep_2 + 618 + offset1, 1, 34.8, -85.6 , 0 );
setMoveKey( spep_2 + 619 + offset1, 1, 34.8, -85.6 , 0 );
setMoveKey( spep_2 + 620 + offset1, 1, 27.1, -100.6 , 0 );
setMoveKey( spep_2 + 621 + offset1, 1, 27.1, -100.6 , 0 );
setMoveKey( spep_2 + 622 + offset1, 1, 25.3, -79.6 , 0 );
setMoveKey( spep_2 + 623 + offset1, 1, 25.3, -79.6 , 0 );
setMoveKey( spep_2 + 624 + offset1, 1, 35.6, -90.6 , 0 );
setMoveKey( spep_2 + 625 + offset1, 1, 35.6, -90.6 , 0 );
setMoveKey( spep_2 + 626 + offset1, 1, 43.8, -81.6 , 0 );
setMoveKey( spep_2 + 627 + offset1, 1, 43.8, -81.6 , 0 );
setMoveKey( spep_2 + 628 + offset1, 1, 35.9, -96.6 , 0 );
setMoveKey( spep_2 + 629 + offset1, 1, 35.9, -96.6 , 0 );
setMoveKey( spep_2 + 630 + offset1, 1, 35.2, -75.2 , 0 );
setMoveKey( spep_2 + 631 + offset1, 1, 35.2, -75.2 , 0 );
setMoveKey( spep_2 + 632 + offset1, 1, 54.3, -97.8 , 0 );
setMoveKey( spep_2 + 633 + offset1, 1, 54.3, -97.8 , 0 );
setMoveKey( spep_2 + 634 + offset1, 1, 61.4, -76.5 , 0 );
setMoveKey( spep_2 + 635 + offset1, 1, 61.4, -76.5 , 0 );
setMoveKey( spep_2 + 636 + offset1, 1, 48.4, -85.1 , 0 );
setMoveKey( spep_2 + 637 + offset1, 1, 48.4, -85.1 , 0 );
setMoveKey( spep_2 + 638 + offset1, 1, 47.4, -79.8 , 0 );
setMoveKey( spep_2 + 639 + offset1, 1, 47.4, -79.8 , 0 );
setMoveKey( spep_2 + 640 + offset1, 1, 66.3, -92.5 , 0 );
setMoveKey( spep_2 + 641 + offset1, 1, 66.3, -92.5 , 0 );
setMoveKey( spep_2 + 642 + offset1, 1, 73.2, -71.3 , 0 );
setMoveKey( spep_2 + 643 + offset1, 1, 73.2, -71.3 , 0 );
setMoveKey( spep_2 + 644 + offset1, 1, 60, -80 , 0 );
setMoveKey( spep_2 + 645 + offset1, 1, 60, -80 , 0 );
setMoveKey( spep_2 + 646 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 647 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 648 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 649 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 650 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 651 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 652 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 653 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 654 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 655 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 656 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 657 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 658 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 659 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 660 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 661 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 662 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 663 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 664 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 665 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 666 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 667 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 668 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 669 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 670 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 671 + offset1, 1, 58.5, -74.9 , 0 );
setMoveKey( spep_2 + 672 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 673 + offset1, 1, 74.5, -88.9 , 0 );
setMoveKey( spep_2 + 674 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 675 + offset1, 1, 78.5, -68.9 , 0 );
setMoveKey( spep_2 + 676 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 677 + offset1, 1, 62.5, -78.9 , 0 );
setMoveKey( spep_2 + 678 + offset1, 1, 58.5, -74.9 , 0 );

setScaleKey( spep_2 + 530 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 532 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 564 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 565 + offset1, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 566 + offset1, 1, 2, 2 );
setScaleKey( spep_2 + 568 + offset1, 1, 2, 2 );
setScaleKey( spep_2 + 678 + offset1, 1, 2, 2 );

setRotateKey( spep_2 + 530 + offset1, 1, 7.7 );
setRotateKey( spep_2 + 532 + offset1, 1, 7.7 );
setRotateKey( spep_2 + 564 + offset1, 1, 7.7 );
setRotateKey( spep_2 + 565 + offset1, 1, 7.7 );
setRotateKey( spep_2 + 566 + offset1, 1, -5.5 );
setRotateKey( spep_2 + 568 + offset1, 1, -5.5 );
setRotateKey( spep_2 + 572 + offset1, 1, -5.5 );
setRotateKey( spep_2 + 573 + offset1, 1, -5.5 );
setRotateKey( spep_2 + 574 + offset1, 1, -5.4 );
setRotateKey( spep_2 + 578 + offset1, 1, -5.4 );
setRotateKey( spep_2 + 579 + offset1, 1, -5.4 );
setRotateKey( spep_2 + 580 + offset1, 1, -5.3 );
setRotateKey( spep_2 + 586 + offset1, 1, -5.3 );
setRotateKey( spep_2 + 587 + offset1, 1, -5.3 );
setRotateKey( spep_2 + 588 + offset1, 1, -5.2 );
setRotateKey( spep_2 + 594 + offset1, 1, -5.2 );
setRotateKey( spep_2 + 595 + offset1, 1, -5.2 );
setRotateKey( spep_2 + 596 + offset1, 1, -5.1 );
setRotateKey( spep_2 + 602 + offset1, 1, -5.1 );
setRotateKey( spep_2 + 603 + offset1, 1, -5.1 );
setRotateKey( spep_2 + 604 + offset1, 1, -5 );
setRotateKey( spep_2 + 610 + offset1, 1, -5 );
setRotateKey( spep_2 + 611 + offset1, 1, -5 );
setRotateKey( spep_2 + 612 + offset1, 1, -4.9 );
setRotateKey( spep_2 + 620 + offset1, 1, -4.9 );
setRotateKey( spep_2 + 621 + offset1, 1, -4.9 );
setRotateKey( spep_2 + 622 + offset1, 1, -4.8 );
setRotateKey( spep_2 + 628 + offset1, 1, -4.8 );
setRotateKey( spep_2 + 629 + offset1, 1, -4.8 );
setRotateKey( spep_2 + 630 + offset1, 1, -4.7 );
setRotateKey( spep_2 + 634 + offset1, 1, -4.7 );
setRotateKey( spep_2 + 635 + offset1, 1, -4.7 );
setRotateKey( spep_2 + 636 + offset1, 1, -4.6 );
setRotateKey( spep_2 + 642 + offset1, 1, -4.6 );
setRotateKey( spep_2 + 643 + offset1, 1, -4.6 );
setRotateKey( spep_2 + 644 + offset1, 1, -4.5 );
setRotateKey( spep_2 + 678 + offset1, 1, -4.5 );

setBlendColor( spep_2 + 576 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.0 );
setBlendColor( spep_2 + 581 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.1 );
setBlendColor( spep_2 + 586 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.2 );
setBlendColor( spep_2 + 591 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.3 );
setBlendColor( spep_2 + 596 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.4 );
setBlendColor( spep_2 + 601 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.5 );
setBlendColor( spep_2 + 606 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.6 );
setBlendColor( spep_2 + 611 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.7 );
setBlendColor( spep_2 + 616 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.8 );
setBlendColor( spep_2 + 621 + offset1, 1, 3, 0.9, 0.3, 0.8, 0.9 );
setBlendColor( spep_2 + 626 + offset1, 1, 3, 0.9, 0.3, 0.8, 1.0 );
setBlendColor( spep_2 + 678 + offset1, 1, 3, 0, 0, 0, 0 );

setAlphaKey( spep_2 + 50 + offset1, 1, 255 );
setAlphaKey( spep_2 + 626 + offset1, 1, 255 );
setAlphaKey( spep_2 + 628 + offset1, 1, 255 );
setAlphaKey( spep_2 + 636 + offset1, 1, 0 );
setAlphaKey( spep_2 + 678 + offset1, 1, 0 );

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

--瞬間移動
SE023 = playSeVer2( spep_2 + 318, 1109, "", 0, 0, 0, -1);

--顔アップ
SE024 = playSeVer2( spep_2 + 368, 1116, "",spep_2 + 450, 0, 46, -1);

--エネルギー溜め
SE025 = playSeVer2( spep_2 + 398, 1158, "",spep_2 + 518, 0, 26, -1);
SE026 = playSeVer2( spep_2 + 412, 1363, "",spep_2 + 526, 0, 52, 0.6);
setPitch( spep_2 + 412, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_2 + 420, 1282, "",spep_2 + 518, 0, 26, 0.6);
setSeVolumeByWorkId( spep_2 + 420, SE027, 78 );
SE028 = playSeVer2( spep_2 + 424, 20, "", 0, 0, 0, -1);

--エネルギー爆発
SE029 = playSeVer2( spep_2 + 486, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE029, 76 );
SE030 = playSeVer2( spep_2 + 486, 1024, "", 0, 0, 0, -1);

--敵飲み込まれる
SE031 = playSeVer2( spep_2 + 522, 1264, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 522, 1226, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 542, 1258, "", 0, 30, 0, -1);
setSeVolumeByWorkId( spep_2 + 542, SE033, 77 );

-- ** おわり ** --
dealDamage( spep_2 + MAX_FRAME_2 - 102 );
endPhase( spep_2 + MAX_FRAME_2 - 2 );--680


end



