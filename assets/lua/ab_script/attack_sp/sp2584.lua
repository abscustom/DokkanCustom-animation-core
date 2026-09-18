--1027190:UR_マジュニア_超爆裂魔破
--sp_effect_a7_00067
--sp2584

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162084;  --ef_001 登場 タメ
SP_02 = 162086;  --ef_002 必殺技
SP_03 = 162087;  --ef_002_back 必殺技 裏側

--エフェクト(てき)
SP_01r = 162085;  --ef_001 登場 タメ 敵側
SP_02r = 162088;  --ef_002_r 必殺技 敵側
SP_03r = 162089;  --ef_002_back_r 必殺技 裏側 敵側



------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場 タメ(262f)
-------------------------------------------------
MAX_FRAME_0 = 262;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 登場 タメ
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_N + 0, 0, MAX_FRAME_X +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 34, 1035, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 74, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 76, 1147, "",spep_0 + 240, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 32 );
SE005 = playSeVer2( spep_0 + 98, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 122, 1036, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 144 ; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE001, 0);
  stopSe( SP_dodge - 12, SE003, 0);
  stopSe( SP_dodge - 12, SE004, 0);
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 172;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
--オーラ
SE007 = playSeVer2( spep_0 + 146, 1036, "", 0, 0, 0, -1);

--画面遷移
SE008 = playSeVer2( spep_0 + 146, 8, "", 0, 0, 0, -1);

--気弾溜め
SE002 = playSeVer2( spep_0 + 164, 1400, "",spep_0 + 282, 10, 22, -1);
setSeVolumeByWorkId( spep_0 + 164, SE002, 123 );
setStartTimeMs( SE002,  1933 );
SE009 = playSeVer2( spep_0 + 166, 1144, "",spep_0 + 286, 0, 18, 0.6);
setSeVolumeByWorkId( spep_0 + 166, SE009, 48 );
SE010 = playSeVer2( spep_0 + 166, 1227, "",spep_0 + 282, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 166, SE010, 80 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --262

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 必殺技(302f)
-------------------------------------------------
MAX_FRAME_2 = 302;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002 必殺技
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_002_back 必殺技 裏側
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
spep_N = spep_2 + 179;

setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 302 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 104 );
changeAnime( spep_N + 0 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, 242.9, -27.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 251.6, -18.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 242.2, -25.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 248.9, -20.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 239.5, -27.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 246.2, -22 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 236.8, -28.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 243.5, -23.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 234.2, -30.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 240.8, -25.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 231.5, -32.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 238.1, -27.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 228.8, -34.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 235.4, -29.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 226.1, -36.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 232.7, -31 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 223.4, -37.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 230, -32.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 220.7, -39.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 227.3, -34.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 218, -41.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 224.6, -36.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 215.3, -43.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 221.9, -38.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 212.6, -45 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 219.2, -39.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 209.9, -46.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 216.5, -41.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 207.2, -48.5 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.65, 2.65 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 0 );

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N -1 + 4, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N -1 + 6, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N -1 + 8, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N -1 + 10, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N -1 + 12, 1, -28.8, -46 , 0 );
setMoveKey( spep_N -1 + 14, 1, -32.3, -52 , 0 );
setMoveKey( spep_N -1 + 16, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 18, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 20, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 22, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 24, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 26, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 28, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 30, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 32, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N -1 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_N -1 + 6, 1, 0.635, 0.635 );
setScaleKey( spep_N -1 + 8, 1, 0.855, 0.855 );
setScaleKey( spep_N -1 + 10, 1, 1.075, 1.07 );
setScaleKey( spep_N -1 + 12, 1, 1.295, 1.29 );
setScaleKey( spep_N -1 + 14, 1, 1.51, 1.505 );
setScaleKey( spep_N -1 + 16, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 18, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 20, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 22, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 24, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 26, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 28, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 30, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 32, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, -122.8 - 232 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N -1 + 4, 1, -1 );
setRotateKey( spep_N -1 + 6, 1, 120.7 );
setRotateKey( spep_N -1 + 8, 1, 242.5 );
setRotateKey( spep_N -1 + 10, 1, 364.3 );
setRotateKey( spep_N -1 + 12, 1, 486 );
setRotateKey( spep_N -1 + 14, 1, 607.8 );
setRotateKey( spep_N -1 + 16, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 729.5 );

-- ** 音 ** --
--気爆発させる
SE013 = playSeVer2( spep_2 + 4, 1024, "", 0, 0, 0, 0.7);
SE014 = playSeVer2( spep_2 + 4, 1231, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_2 + 4, SE014, 251 );

--ズームアウト
SE015 = playSeVer2( spep_2 + 74, 1072, "", 0, 0, 0, 0.6);

--気弾飛んでいく
SE016 = playSeVer2( spep_2 + 116, 1021, "", 0, 0, 0, -1);

--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, 0.7);

--画面割れ
SE0N2 = playSeVer2( spep_N + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 14, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 186 ); -- ダメージ表示フレーム
endPhase( spep_2 + 288 ); -- 302f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場 タメ(262f)
-------------------------------------------------
MAX_FRAME_0 = 262;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001 登場 タメ
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_N + 0, 0, MAX_FRAME_X +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 34, 1035, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 74, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 76, 1147, "",spep_0 + 240, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 32 );
SE005 = playSeVer2( spep_0 + 98, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 122, 1036, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 144 ; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE001, 0);
  stopSe( SP_dodge - 12, SE003, 0);
  stopSe( SP_dodge - 12, SE004, 0);
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 172;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--オーラ
SE007 = playSeVer2( spep_0 + 146, 1036, "", 0, 0, 0, -1);

--画面遷移
SE008 = playSeVer2( spep_0 + 146, 8, "", 0, 0, 0, -1);

--気弾溜め
SE002 = playSeVer2( spep_0 + 164, 1400, "",spep_0 + 282, 10, 22, -1);
setSeVolumeByWorkId( spep_0 + 164, SE002, 123 );
setStartTimeMs( SE002,  1933 );
SE009 = playSeVer2( spep_0 + 166, 1144, "",spep_0 + 286, 0, 18, 0.6);
setSeVolumeByWorkId( spep_0 + 166, SE009, 48 );
SE010 = playSeVer2( spep_0 + 166, 1227, "",spep_0 + 282, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 166, SE010, 80 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --262

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 必殺技(302f)
-------------------------------------------------
MAX_FRAME_2 = 302;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002_r 必殺技 敵側
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0); -- ef_002_back_r 必殺技 裏側 敵側
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
spep_N = spep_2 + 179;

setDisp( spep_2 + 122 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 302 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 122 + OFFSET_X, 1, 104 );
changeAnime( spep_N + 0 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 122 + OFFSET_X, 1, 242.9, -27.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 251.6, -18.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 242.2, -25.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 248.9, -20.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 239.5, -27.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 246.2, -22 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 236.8, -28.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 243.5, -23.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 234.2, -30.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 240.8, -25.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 231.5, -32.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 238.1, -27.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 228.8, -34.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 235.4, -29.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 226.1, -36.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 232.7, -31 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 223.4, -37.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 230, -32.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 220.7, -39.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 227.3, -34.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 218, -41.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 224.6, -36.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 215.3, -43.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 221.9, -38.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 212.6, -45 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 219.2, -39.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 209.9, -46.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 216.5, -41.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 207.2, -48.5 , 0 );

setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.65, 2.65 );

setRotateKey( spep_2 + 122 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 0 );

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N -1 + 4, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N -1 + 6, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N -1 + 8, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N -1 + 10, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N -1 + 12, 1, -28.8, -46 , 0 );
setMoveKey( spep_N -1 + 14, 1, -32.3, -52 , 0 );
setMoveKey( spep_N -1 + 16, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 18, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 20, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 22, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 24, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 26, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 28, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N -1 + 30, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N -1 + 32, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N -1 + 4, 1, 0.42, 0.42 );
setScaleKey( spep_N -1 + 6, 1, 0.635, 0.635 );
setScaleKey( spep_N -1 + 8, 1, 0.855, 0.855 );
setScaleKey( spep_N -1 + 10, 1, 1.075, 1.07 );
setScaleKey( spep_N -1 + 12, 1, 1.295, 1.29 );
setScaleKey( spep_N -1 + 14, 1, 1.51, 1.505 );
setScaleKey( spep_N -1 + 16, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 18, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 20, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 22, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 24, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 26, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 28, 1, 1.73, 1.725 );
setScaleKey( spep_N -1 + 30, 1, 1.905, 1.9 );
setScaleKey( spep_N -1 + 32, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, -122.8 - 232 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N -1 + 4, 1, -1 );
setRotateKey( spep_N -1 + 6, 1, 120.7 );
setRotateKey( spep_N -1 + 8, 1, 242.5 );
setRotateKey( spep_N -1 + 10, 1, 364.3 );
setRotateKey( spep_N -1 + 12, 1, 486 );
setRotateKey( spep_N -1 + 14, 1, 607.8 );
setRotateKey( spep_N -1 + 16, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 729.5 );

-- ** 音 ** --
--気爆発させる
SE013 = playSeVer2( spep_2 + 4, 1024, "", 0, 0, 0, 0.7);
SE014 = playSeVer2( spep_2 + 4, 1231, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_2 + 4, SE014, 251 );

--ズームアウト
SE015 = playSeVer2( spep_2 + 74, 1072, "", 0, 0, 0, 0.6);

--気弾飛んでいく
SE016 = playSeVer2( spep_2 + 116, 1021, "", 0, 0, 0, -1);

--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, 0.7);

--画面割れ
SE0N2 = playSeVer2( spep_N + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 14, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 186 ); -- ダメージ表示フレーム
endPhase( spep_2 + 288 ); -- 302f

end
