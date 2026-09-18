--4026560:URマジュニア(巨大化) 大魔王覚醒乱舞
--sp_effect_a7_00063

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


--エフェクトID追加
--味方側
SP_01 = 161803;	--カットインからパンチ	ef_001
SP_02 = 161804;	--カットインからパンチ　裏面	ef_001_back
SP_03 = 161807;	--踏みつけ	ef_002
SP_04 = 161808;	--踏みつけ　裏面	ef_002_back
SP_05 = 161811;	--フィニッシュ	ef_003

--敵側
SP_01r = 161805;	--カットインからパンチ　敵側	ef_001_re
SP_02r = 161806;	--カットインからパンチ　敵側　裏面	ef_001_back_re
SP_03r = 161809;	--踏みつけ　敵側	ef_002_re
SP_04r = 161810;	--踏みつけ　敵側　裏面	ef_002_back_re
SP_05r = 161812;	--フィニッシュ　敵側	ef_003_re


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
-- カットインからパンチ(264F)
------------------------------------------------------
spep_0 = 0;
 
-- ** エフェクト等 ** --
punch = entryEffectLife( spep_0 + 0, SP_01, 266, 0x100, -1, 0, 0, 0 );  --カットインからパンチ ef_001
setEffMoveKey( spep_0 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_0 + 264, punch, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, punch, 1.0, 1.0 );
setEffScaleKey( spep_0 + 264, punch, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, punch, 0 );
setEffRotateKey( spep_0 + 264, punch, 0 );
setEffAlphaKey( spep_0 + 0, punch, 255 );
setEffAlphaKey( spep_0 + 264 - 2, punch, 255 );
setEffAlphaKey( spep_0 + 264 - 1, punch, 255 );
setEffAlphaKey( spep_0 + 264, punch, 0 );

punch_back = entryEffectLife( spep_0 + 0, SP_02, 266, 0x80, -1, 0, 0, 0 );  --カットインからパンチ　裏面 ef_001_back
setEffMoveKey( spep_0 + 0, punch_back, 0, 0 , 0 );
setEffMoveKey( spep_0 + 264, punch_back, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, punch_back, 1.0, 1.0 );
setEffScaleKey( spep_0 + 264, punch_back, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, punch_back, 0 );
setEffRotateKey( spep_0 + 264, punch_back, 0 );
setEffAlphaKey( spep_0 + 0, punch_back, 255 );
setEffAlphaKey( spep_0 + 264 - 2, punch_back, 255 );
setEffAlphaKey( spep_0 + 264 - 1, punch_back, 255 );
setEffAlphaKey( spep_0 + 264, punch_back, 0 );

-- ** 顔カットイン ** --
spep_x = spep_0 + 62;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135 - 280, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135 - 280, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
offset_0 = -1;
setDisp( spep_0 + offset_0 + 158, 1, 1 );

changeAnime( spep_0 + offset_0 + 158, 1, 118 );

setMoveKey( spep_0 + offset_0 + 158, 1, -34.5, -529 , 0 );
setMoveKey( spep_0 + offset_0 + 159, 1, -34.5, -529 , 0 );
setMoveKey( spep_0 + offset_0 + 160, 1, -35.1, -521 , 0 );
setMoveKey( spep_0 + offset_0 + 161, 1, -35.1, -521 , 0 );
setMoveKey( spep_0 + offset_0 + 162, 1, -35.6, -514 , 0 );
setMoveKey( spep_0 + offset_0 + 163, 1, -35.6, -514 , 0 );
setMoveKey( spep_0 + offset_0 + 164, 1, -36.1, -507.8 , 0 );
setMoveKey( spep_0 + offset_0 + 165, 1, -36.1, -507.8 , 0 );
setMoveKey( spep_0 + offset_0 + 166, 1, -36.5, -502.5 , 0 );
setMoveKey( spep_0 + offset_0 + 167, 1, -36.5, -502.5 , 0 );
setMoveKey( spep_0 + offset_0 + 168, 1, -36.8, -497.9 , 0 );
setMoveKey( spep_0 + offset_0 + 169, 1, -36.8, -497.9 , 0 );
setMoveKey( spep_0 + offset_0 + 170, 1, -37.1, -494.1 , 0 );
setMoveKey( spep_0 + offset_0 + 171, 1, -37.1, -494.1 , 0 );
setMoveKey( spep_0 + offset_0 + 172, 1, -37.3, -490.8 , 0 );
setMoveKey( spep_0 + offset_0 + 173, 1, -37.3, -490.8 , 0 );
setMoveKey( spep_0 + offset_0 + 174, 1, -37.5, -488.2 , 0 );
setMoveKey( spep_0 + offset_0 + 175, 1, -37.5, -488.2 , 0 );
setMoveKey( spep_0 + offset_0 + 176, 1, -37.7, -486.1 , 0 );
setMoveKey( spep_0 + offset_0 + 177, 1, -37.7, -486.1 , 0 );
setMoveKey( spep_0 + offset_0 + 178, 1, -37.8, -484.4 , 0 );
setMoveKey( spep_0 + offset_0 + 179, 1, -37.8, -484.4 , 0 );
setMoveKey( spep_0 + offset_0 + 180, 1, -37.9, -483.2 , 0 );
setMoveKey( spep_0 + offset_0 + 181, 1, -37.9, -483.2 , 0 );
setMoveKey( spep_0 + offset_0 + 182, 1, -38, -482.3 , 0 );
setMoveKey( spep_0 + offset_0 + 183, 1, -38, -482.3 , 0 );
setMoveKey( spep_0 + offset_0 + 184, 1, -38, -481.7 , 0 );
setMoveKey( spep_0 + offset_0 + 185, 1, -38, -481.7 , 0 );
setMoveKey( spep_0 + offset_0 + 186, 1, -38, -481.4 , 0 );
setMoveKey( spep_0 + offset_0 + 187, 1, -38, -481.4 , 0 );
setMoveKey( spep_0 + offset_0 + 188, 1, -38.1, -481.2 , 0 );
setMoveKey( spep_0 + offset_0 + 189, 1, -38.1, -481.2 , 0 );
setMoveKey( spep_0 + offset_0 + 190, 1, -38.1, -481.1 , 0 );
setMoveKey( spep_0 + offset_0 + 192, 1, -38.1, -481.1 , 0 );
setMoveKey( spep_0 + offset_0 + 193, 1, -38.1, -481.1 , 0 );
setMoveKey( spep_0 + offset_0 + 194, 1, -21.2, -466.8 , 0 );
setMoveKey( spep_0 + offset_0 + 195, 1, -21.2, -466.8 , 0 );
setMoveKey( spep_0 + offset_0 + 196, 1, 6.9, -458.6 , 0 );
setMoveKey( spep_0 + offset_0 + 197, 1, 6.9, -458.6 , 0 );
setMoveKey( spep_0 + offset_0 + 198, 1, 27.9, -452.4 , 0 );
setMoveKey( spep_0 + offset_0 + 199, 1, 27.9, -452.4 , 0 );
setMoveKey( spep_0 + offset_0 + 200, 1, 43, -448 , 0 );
setMoveKey( spep_0 + offset_0 + 201, 1, 43, -448 , 0 );
setMoveKey( spep_0 + offset_0 + 202, 1, 53.2, -445 , 0 );
setMoveKey( spep_0 + offset_0 + 203, 1, 53.2, -445 , 0 );
setMoveKey( spep_0 + offset_0 + 204, 1, 59.3, -443.3 , 0 );


setScaleKey( spep_0 + offset_0 + 158, 1, 1, 1 );
setScaleKey( spep_0 + offset_0 + 159, 1, 1, 1 );
setScaleKey( spep_0 + offset_0 + 160, 1, 1.02, 1.02 );
setScaleKey( spep_0 + offset_0 + 161, 1, 1.02, 1.02 );
setScaleKey( spep_0 + offset_0 + 162, 1, 1.04, 1.04 );
setScaleKey( spep_0 + offset_0 + 163, 1, 1.04, 1.04 );
setScaleKey( spep_0 + offset_0 + 164, 1, 1.05, 1.05 );
setScaleKey( spep_0 + offset_0 + 165, 1, 1.05, 1.05 );
setScaleKey( spep_0 + offset_0 + 166, 1, 1.06, 1.06 );
setScaleKey( spep_0 + offset_0 + 167, 1, 1.06, 1.06 );
setScaleKey( spep_0 + offset_0 + 168, 1, 1.07, 1.07 );
setScaleKey( spep_0 + offset_0 + 169, 1, 1.07, 1.07 );
setScaleKey( spep_0 + offset_0 + 170, 1, 1.08, 1.08 );
setScaleKey( spep_0 + offset_0 + 171, 1, 1.08, 1.08 );
setScaleKey( spep_0 + offset_0 + 172, 1, 1.09, 1.09 );
setScaleKey( spep_0 + offset_0 + 174, 1, 1.09, 1.09 );
setScaleKey( spep_0 + offset_0 + 175, 1, 1.09, 1.09 );
setScaleKey( spep_0 + offset_0 + 176, 1, 1.1, 1.1 );
setScaleKey( spep_0 + offset_0 + 180, 1, 1.1, 1.1 );
setScaleKey( spep_0 + offset_0 + 181, 1, 1.1, 1.1 );
setScaleKey( spep_0 + offset_0 + 182, 1, 1.11, 1.11 );
setScaleKey( spep_0 + offset_0 + 192, 1, 1.11, 1.11 );
setScaleKey( spep_0 + offset_0 + 193, 1, 1.11, 1.11 );
setScaleKey( spep_0 + offset_0 + 194, 1, 1.2, 1.2 );
setScaleKey( spep_0 + offset_0 + 195, 1, 1.2, 1.2 );
setScaleKey( spep_0 + offset_0 + 196, 1, 1.16, 1.16 );
setScaleKey( spep_0 + offset_0 + 197, 1, 1.16, 1.16 );
setScaleKey( spep_0 + offset_0 + 198, 1, 1.13, 1.13 );
setScaleKey( spep_0 + offset_0 + 199, 1, 1.13, 1.13 );
setScaleKey( spep_0 + offset_0 + 200, 1, 1.11, 1.11 );
setScaleKey( spep_0 + offset_0 + 201, 1, 1.11, 1.11 );
setScaleKey( spep_0 + offset_0 + 202, 1, 1.1, 1.1 );
setScaleKey( spep_0 + offset_0 + 203, 1, 1.1, 1.1 );
setScaleKey( spep_0 + offset_0 + 204, 1, 1.09, 1.09 );

setRotateKey( spep_0 + offset_0 + 158, 1, 0 );
setRotateKey( spep_0 + offset_0 + 204, 1, 0 );

-- ** 音 ** --
--入り		
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン		
SE002 = playSeVer2( spep_0 + 70, 1018, "", 0, 0, 0, -1);

--振りかぶる
SE003 = playSeVer2( spep_0 + 160, 1116, "", spep_0 + 202, 0, 22, -1);
SE004 = playSeVer2( spep_0 + 160, 1232, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 164, 1153, "", 0, 16, 0, 0.6);
SE006 = playSeVer2( spep_0 + 168, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 264 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 205; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE003, 0);
  stopSe( SP_dodge - 12, SE004, 0);
  stopSe( SP_dodge - 12, SE005, 0);
  stopSe( SP_dodge - 12, SE006, 0);
  
  speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
  
  kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
  setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
  setEffAlphaKey( SP_dodge, kaihi1, 255);

  
  pauseAll( SP_dodge, 67);

  -- ** 敵キャラクター ** --
  setMoveKey( SP_dodge + 0, 1, 59.3, -443.3 , 0 );
  setMoveKey( SP_dodge + 1, 1, 59.3, -443.3 , 0 );
  setMoveKey( SP_dodge + 2, 1, 62.4, -442.3 , 0 );
  setMoveKey( SP_dodge + 3, 1, 62.4, -442.3 , 0 );
  setMoveKey( SP_dodge + 4, 1, 63.6, -442 , 0 );
  setMoveKey( SP_dodge + 5, 1, 63.6, -442 , 0 );
  setMoveKey( SP_dodge + 6, 1, 63.8, -441.9 , 0 );
  setMoveKey( SP_dodge + 7, 1, 63.8, -441.9 , 0 );
  setMoveKey( SP_dodge + 8, 1, 89.6, -405.8 , 0 );
  setMoveKey( SP_dodge + 10, 1, 89.6, -405.8 , 0 );

  setScaleKey( SP_dodge + 0, 1, 1.09, 1.09 );
  setScaleKey( SP_dodge + 9, 1, 1.09, 1.09 );
  setScaleKey( SP_dodge + 10, 1, 1.21, 1.21 );

  setRotateKey(  SP_dodge + 0, 1, 0 );
  setRotateKey(  SP_dodge + 10, 1, 0 );
  
  entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
  endPhase(SP_dodge+10);
  
  do return end
  else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 + offset_0 + 267, 1, 0 );

changeAnime( spep_0 + offset_0 + 216, 1, 106 );

setMoveKey( spep_0 + offset_0 + 205, 1, 59.3, -443.3 , 0 );
setMoveKey( spep_0 + offset_0 + 206, 1, 62.4, -442.3 , 0 );
setMoveKey( spep_0 + offset_0 + 207, 1, 62.4, -442.3 , 0 );
setMoveKey( spep_0 + offset_0 + 208, 1, 63.6, -442 , 0 );
setMoveKey( spep_0 + offset_0 + 209, 1, 63.6, -442 , 0 );
setMoveKey( spep_0 + offset_0 + 210, 1, 63.8, -441.9 , 0 );
setMoveKey( spep_0 + offset_0 + 211, 1, 63.8, -441.9 , 0 );
setMoveKey( spep_0 + offset_0 + 212, 1, 89.6, -405.8 , 0 );
setMoveKey( spep_0 + offset_0 + 215, 1, 89.6, -405.8 , 0 );
setMoveKey( spep_0 + offset_0 + 216, 1, 51.7, -483.4 , 0 );
setMoveKey( spep_0 + offset_0 + 217, 1, 51.7, -483.4 , 0 );
setMoveKey( spep_0 + offset_0 + 218, 1, 35, -392.4 , 0 );
setMoveKey( spep_0 + offset_0 + 219, 1, 35, -392.4 , 0 );
setMoveKey( spep_0 + offset_0 + 220, 1, -12.9, -438.3 , 0 );
setMoveKey( spep_0 + offset_0 + 221, 1, -12.9, -438.3 , 0 );
setMoveKey( spep_0 + offset_0 + 222, 1, 37.9, -438.9 , 0 );
setMoveKey( spep_0 + offset_0 + 223, 1, 37.9, -438.9 , 0 );
setMoveKey( spep_0 + offset_0 + 224, 1, 24.5, -401.2 , 0 );
setMoveKey( spep_0 + offset_0 + 225, 1, 24.5, -401.2 , 0 );
setMoveKey( spep_0 + offset_0 + 226, 1, 58.8, -407.4 , 0 );
setMoveKey( spep_0 + offset_0 + 227, 1, 58.8, -407.4 , 0 );
setMoveKey( spep_0 + offset_0 + 228, 1, 15.9, -425.4 , 0 );
setMoveKey( spep_0 + offset_0 + 229, 1, 15.9, -425.4 , 0 );
setMoveKey( spep_0 + offset_0 + 230, 1, 20.9, -445.3 , 0 );
setMoveKey( spep_0 + offset_0 + 231, 1, 20.9, -445.3 , 0 );
setMoveKey( spep_0 + offset_0 + 232, 1, 38.7, -442.9 , 0 );
setMoveKey( spep_0 + offset_0 + 233, 1, 38.7, -442.9 , 0 );
setMoveKey( spep_0 + offset_0 + 234, 1, 41.3, -423.5 , 0 );
setMoveKey( spep_0 + offset_0 + 235, 1, 41.3, -423.5 , 0 );
setMoveKey( spep_0 + offset_0 + 236, 1, 44.8, -448.9 , 0 );
setMoveKey( spep_0 + offset_0 + 237, 1, 44.8, -448.9 , 0 );
setMoveKey( spep_0 + offset_0 + 238, 1, 28.1, -441.2 , 0 );
setMoveKey( spep_0 + offset_0 + 239, 1, 28.1, -441.2 , 0 );
setMoveKey( spep_0 + offset_0 + 240, 1, 47.1, -430.5 , 0 );
setMoveKey( spep_0 + offset_0 + 241, 1, 47.1, -430.5 , 0 );
setMoveKey( spep_0 + offset_0 + 242, 1, 27.6, -425.6 , 0 );
setMoveKey( spep_0 + offset_0 + 243, 1, 27.6, -425.6 , 0 );
setMoveKey( spep_0 + offset_0 + 244, 1, 36.7, -434.7 , 0 );
setMoveKey( spep_0 + offset_0 + 245, 1, 36.7, -434.7 , 0 );
setMoveKey( spep_0 + offset_0 + 246, 1, 45.9, -427.8 , 0 );
setMoveKey( spep_0 + offset_0 + 247, 1, 45.9, -427.8 , 0 );
setMoveKey( spep_0 + offset_0 + 248, 1, 37.7, -426.8 , 0 );
setMoveKey( spep_0 + offset_0 + 249, 1, 37.7, -426.8 , 0 );
setMoveKey( spep_0 + offset_0 + 250, 1, 33.7, -435.8 , 0 );
setMoveKey( spep_0 + offset_0 + 251, 1, 33.7, -435.8 , 0 );
setMoveKey( spep_0 + offset_0 + 252, 1, 42.7, -432.8 , 0 );
setMoveKey( spep_0 + offset_0 + 267, 1, 42.7, -432.8 , 0 );

setScaleKey( spep_0 + offset_0 + 210, 1, 1.09, 1.09 );
setScaleKey( spep_0 + offset_0 + 211, 1, 1.09, 1.09 );
setScaleKey( spep_0 + offset_0 + 212, 1, 1.21, 1.21 );
setScaleKey( spep_0 + offset_0 + 216, 1, 1.21, 1.21 );
setScaleKey( spep_0 + offset_0 + 267, 1, 1.21, 1.21 );

setRotateKey( spep_0 + offset_0 + 215, 1, 0 );
setRotateKey( spep_0 + offset_0 + 216, 1, 12.4 );
setRotateKey( spep_0 + offset_0 + 267, 1, 12.4 );

-- ** 音 ** --
--パンチ		
SE007 = playSeVer2( spep_0 + 210, 1061, "",spep_0 + 278, 0, 10, -1);
SE008 = playSeVer2( spep_0 + 212, 1033, "",spep_0 + 278, 0, 10, -1);
SE009 = playSeVer2( spep_0 + 214, 1159, "",spep_0 + 278, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 214, SE009, 92 );
SE010 = playSeVer2( spep_0 + 214, 1187, "",spep_0 + 278, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 214, SE010, 79 );
 
 
-- ** 次の準備 ** --
spep_c = spep_0 + 264;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
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
playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_1 = spep_c + 94;

------------------------------------------------------
-- 踏みつけ(230F)
------------------------------------------------------
-- spep_1 = 0;

-- ** エフェクト等 ** --
trample = entryEffectLife( spep_1 + 0, SP_03, 230, 0x100, -1, 0, 0, 0 );  --踏みつけ ef_002
setEffMoveKey( spep_1 + 0, trample, 0, 0 , 0 );
setEffMoveKey( spep_1 + 230, trample, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, trample, 1.0, 1.0 );
setEffScaleKey( spep_1 + 230, trample, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, trample, 0 );
setEffRotateKey( spep_1 + 230, trample, 0 );
setEffAlphaKey( spep_1 + 0, trample, 255 );
setEffAlphaKey( spep_1 + 230 - 2, trample, 255 );
setEffAlphaKey( spep_1 + 230 - 1, trample, 255 );
setEffAlphaKey( spep_1 + 230, trample, 0 );

trample_back = entryEffectLife( spep_1 + 0, SP_04, 230, 0x80, -1, 0, 0, 0 );  --踏みつけ ef_002
setEffMoveKey( spep_1 + 0, trample_back, 0, 0 , 0 );
setEffMoveKey( spep_1 + 230, trample_back, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, trample_back, 1.0, 1.0 );
setEffScaleKey( spep_1 + 230, trample_back, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, trample_back, 0 );
setEffRotateKey( spep_1 + 230, trample_back, 0 );
setEffAlphaKey( spep_1 + 0, trample_back, 255 );
setEffAlphaKey( spep_1 + 230 - 2, trample_back, 255 );
setEffAlphaKey( spep_1 + 230 - 1, trample_back, 255 );
setEffAlphaKey( spep_1 + 230, trample_back, 0 );

-- ** 敵キャラクター ** --
offset_1 = -1;
setDisp( spep_1 + offset_1 + 42, 1, 1 );
setDisp( spep_1 + offset_1 + 88, 1, 0 );
setDisp( spep_1 + offset_1 + 90, 1, 1 );
setDisp( spep_1 + offset_1 + 104, 1, 0 );
setDisp( spep_1 + offset_1 + 106, 1, 1 );
setDisp( spep_1 + offset_1 + 140, 1, 0 );
setDisp( spep_1 + offset_1 + 174, 1, 1 );
setDisp( spep_1 + offset_1 + 234, 1, 0 );

changeAnime( spep_1 + offset_1 + 42, 1, 106 );
changeAnime( spep_1 + offset_1 + 62, 1, 107 );
changeAnime( spep_1 + offset_1 + 90, 1, 105 );
changeAnime( spep_1 + offset_1 + 106, 1, 108 );
changeAnime( spep_1 + offset_1 + 174, 1, 106 );

setMoveKey( spep_1 + offset_1 + 42, 1, 100, -107 , 0 );-- 106
setMoveKey( spep_1 + offset_1 + 43, 1, 100, -107 , 0 );
setMoveKey( spep_1 + offset_1 + 44, 1, 111.4, -99.8 , 0 );
setMoveKey( spep_1 + offset_1 + 45, 1, 111.4, -99.8 , 0 );
setMoveKey( spep_1 + offset_1 + 46, 1, 123.1, -92.4 , 0 );
setMoveKey( spep_1 + offset_1 + 47, 1, 123.1, -92.4 , 0 );
setMoveKey( spep_1 + offset_1 + 48, 1, 135.1, -84.9 , 0 );
setMoveKey( spep_1 + offset_1 + 49, 1, 135.1, -84.9 , 0 );
setMoveKey( spep_1 + offset_1 + 50, 1, 147.5, -77.2 , 0 );
setMoveKey( spep_1 + offset_1 + 51, 1, 147.5, -77.2 , 0 );
setMoveKey( spep_1 + offset_1 + 52, 1, 160.4, -69.2 , 0 );
setMoveKey( spep_1 + offset_1 + 53, 1, 160.4, -69.2 , 0 );
setMoveKey( spep_1 + offset_1 + 54, 1, 173.9, -60.8 , 0 );
setMoveKey( spep_1 + offset_1 + 55, 1, 173.9, -60.8 , 0 );
setMoveKey( spep_1 + offset_1 + 56, 1, 177.9, -58.7 , 0 );
setMoveKey( spep_1 + offset_1 + 57, 1, 177.9, -58.7 , 0 );
setMoveKey( spep_1 + offset_1 + 58, 1, 182.7, -56.2 , 0 );
setMoveKey( spep_1 + offset_1 + 59, 1, 182.7, -56.2 , 0 );
setMoveKey( spep_1 + offset_1 + 60, 1, 188.1, -53.2 , 0 );
setMoveKey( spep_1 + offset_1 + 62, 1, 130.1, -133.7 , 0 );-- 107
setMoveKey( spep_1 + offset_1 + 63, 1, 130.1, -133.7 , 0 );
setMoveKey( spep_1 + offset_1 + 64, 1, 109, -178.8 , 0 );
setMoveKey( spep_1 + offset_1 + 65, 1, 109, -178.8 , 0 );
setMoveKey( spep_1 + offset_1 + 66, 1, 152.9, -150.5 , 0 );
setMoveKey( spep_1 + offset_1 + 67, 1, 152.9, -150.5 , 0 );
setMoveKey( spep_1 + offset_1 + 68, 1, 116.9, -162.9 , 0 );
setMoveKey( spep_1 + offset_1 + 69, 1, 116.9, -162.9 , 0 );
setMoveKey( spep_1 + offset_1 + 70, 1, 137.8, -189.8 , 0 );
setMoveKey( spep_1 + offset_1 + 71, 1, 137.8, -189.8 , 0 );
setMoveKey( spep_1 + offset_1 + 72, 1, 124, -197.2 , 0 );
setMoveKey( spep_1 + offset_1 + 73, 1, 124, -197.2 , 0 );
setMoveKey( spep_1 + offset_1 + 74, 1, 109.7, -247.7 , 0 );
setMoveKey( spep_1 + offset_1 + 75, 1, 109.7, -247.7 , 0 );
setMoveKey( spep_1 + offset_1 + 76, 1, 113, -264.5 , 0 );
setMoveKey( spep_1 + offset_1 + 77, 1, 113, -264.5 , 0 );
setMoveKey( spep_1 + offset_1 + 78, 1, 93, -260.3 , 0 );
setMoveKey( spep_1 + offset_1 + 79, 1, 93, -260.3 , 0 );
setMoveKey( spep_1 + offset_1 + 80, 1, 100.7, -278.3 , 0 );
setMoveKey( spep_1 + offset_1 + 81, 1, 100.7, -278.3 , 0 );
setMoveKey( spep_1 + offset_1 + 82, 1, 91.3, -311.3 , 0 );
setMoveKey( spep_1 + offset_1 + 83, 1, 91.3, -311.3 , 0 );
setMoveKey( spep_1 + offset_1 + 84, 1, 91.7, -323.3 , 0 );
setMoveKey( spep_1 + offset_1 + 85, 1, 91.7, -323.3 , 0 );
setMoveKey( spep_1 + offset_1 + 86, 1, 79.1, -338.2 , 0 );
setMoveKey( spep_1 + offset_1 + 88, 1, 79.1, -338.2 , 0 );
setMoveKey( spep_1 + offset_1 + 90, 1, -795.4, 322.3 , 0 );-- 105
setMoveKey( spep_1 + offset_1 + 91, 1, -795.4, 322.3 , 0 );
setMoveKey( spep_1 + offset_1 + 92, 1, -740.1, 313.7 , 0 );
setMoveKey( spep_1 + offset_1 + 93, 1, -740.1, 313.7 , 0 );
setMoveKey( spep_1 + offset_1 + 94, 1, -645.3, 291.5 , 0 );
setMoveKey( spep_1 + offset_1 + 95, 1, -645.3, 291.5 , 0 );
setMoveKey( spep_1 + offset_1 + 96, 1, -513.7, 256.2 , 0 );
setMoveKey( spep_1 + offset_1 + 97, 1, -513.7, 256.2 , 0 );
setMoveKey( spep_1 + offset_1 + 98, 1, -346.5, 207.7 , 0 );
setMoveKey( spep_1 + offset_1 + 99, 1, -346.5, 207.7 , 0 );
setMoveKey( spep_1 + offset_1 + 100, 1, -144.2, 146.3 , 0 );
setMoveKey( spep_1 + offset_1 + 101, 1, -144.2, 146.3 , 0 );
setMoveKey( spep_1 + offset_1 + 102, 1, -141.7, 144.9 , 0 );
setMoveKey( spep_1 + offset_1 + 103, 1, -141.7, 144.9 , 0 );
setMoveKey( spep_1 + offset_1 + 104, 1, -139.8, 143.9 , 0 );
setMoveKey( spep_1 + offset_1 + 106, 1, 10.1, 34.2 , 0 );-- 108
setMoveKey( spep_1 + offset_1 + 107, 1, 10.1, 34.2 , 0 );
setMoveKey( spep_1 + offset_1 + 108, 1, -2.5, -27.5 , 0 );
setMoveKey( spep_1 + offset_1 + 109, 1, -2.5, -27.5 , 0 );
setMoveKey( spep_1 + offset_1 + 110, 1, 36.9, 45 , 0 );
setMoveKey( spep_1 + offset_1 + 111, 1, 36.9, 45 , 0 );
setMoveKey( spep_1 + offset_1 + 112, 1, -3.8, 52.6 , 0 );
setMoveKey( spep_1 + offset_1 + 113, 1, -3.8, 52.6 , 0 );
setMoveKey( spep_1 + offset_1 + 114, 1, 43.3, 36.4 , 0 );
setMoveKey( spep_1 + offset_1 + 115, 1, 43.3, 36.4 , 0 );
setMoveKey( spep_1 + offset_1 + 116, 1, 20.3, 45.4 , 0 );
setMoveKey( spep_1 + offset_1 + 117, 1, 20.3, 45.4 , 0 );
setMoveKey( spep_1 + offset_1 + 118, 1, 11.2, 11.5 , 0 );
setMoveKey( spep_1 + offset_1 + 119, 1, 11.2, 11.5 , 0 );
setMoveKey( spep_1 + offset_1 + 120, 1, 20, 11.7 , 0 );
setMoveKey( spep_1 + offset_1 + 121, 1, 20, 11.7 , 0 );
setMoveKey( spep_1 + offset_1 + 122, 1, 5.7, 33 , 0 );
setMoveKey( spep_1 + offset_1 + 123, 1, 5.7, 33 , 0 );
setMoveKey( spep_1 + offset_1 + 124, 1, 19.3, 32.4 , 0 );
setMoveKey( spep_1 + offset_1 + 125, 1, 19.3, 32.4 , 0 );
setMoveKey( spep_1 + offset_1 + 126, 1, 18.9, 14.8 , 0 );
setMoveKey( spep_1 + offset_1 + 127, 1, 18.9, 14.8 , 0 );
setMoveKey( spep_1 + offset_1 + 128, 1, 23.7, 22.6 , 0 );
setMoveKey( spep_1 + offset_1 + 129, 1, 23.7, 22.6 , 0 );
setMoveKey( spep_1 + offset_1 + 130, 1, 18.4, 25.4 , 0 );
setMoveKey( spep_1 + offset_1 + 131, 1, 18.4, 25.4 , 0 );
setMoveKey( spep_1 + offset_1 + 132, 1, 25.1, 23.3 , 0 );
setMoveKey( spep_1 + offset_1 + 133, 1, 25.1, 23.3 , 0 );
setMoveKey( spep_1 + offset_1 + 134, 1, 20.8, 18.2 , 0 );
setMoveKey( spep_1 + offset_1 + 135, 1, 20.8, 18.2 , 0 );
setMoveKey( spep_1 + offset_1 + 136, 1, 27.5, 28.1 , 0 );
setMoveKey( spep_1 + offset_1 + 137, 1, 27.5, 28.1 , 0 );
setMoveKey( spep_1 + offset_1 + 138, 1, 29.8, 23.4 , 0 );
setMoveKey( spep_1 + offset_1 + 140, 1, 29.8, 23.4 , 0 );
setMoveKey( spep_1 + offset_1 + 174, 1, -6.4, 33 , 0 );-- 106
setMoveKey( spep_1 + offset_1 + 175, 1, -6.4, 33 , 0 );
setMoveKey( spep_1 + offset_1 + 176, 1, -6.6, 33.9 , 0 );
setMoveKey( spep_1 + offset_1 + 182, 1, -6.6, 33.9 , 0 );
setMoveKey( spep_1 + offset_1 + 183, 1, -6.6, 33.9 , 0 );
setMoveKey( spep_1 + offset_1 + 184, 1, -6.6, 33.8 , 0 );
setMoveKey( spep_1 + offset_1 + 186, 1, -6.6, 33.8 , 0 );
setMoveKey( spep_1 + offset_1 + 187, 1, -6.6, 33.8 , 0 );
setMoveKey( spep_1 + offset_1 + 188, 1, -6.5, 33.8 , 0 );
setMoveKey( spep_1 + offset_1 + 189, 1, -6.5, 33.8 , 0 );
setMoveKey( spep_1 + offset_1 + 190, 1, -6.5, 33.7 , 0 );
setMoveKey( spep_1 + offset_1 + 191, 1, -6.5, 33.7 , 0 );
setMoveKey( spep_1 + offset_1 + 192, 1, -6.5, 33.6 , 0 );
setMoveKey( spep_1 + offset_1 + 194, 1, -6.5, 33.6 , 0 );
setMoveKey( spep_1 + offset_1 + 195, 1, -6.5, 33.6 , 0 );
setMoveKey( spep_1 + offset_1 + 196, 1, -20.5, -44.6 , 0 );
setMoveKey( spep_1 + offset_1 + 197, 1, -20.5, -44.6 , 0 );
setMoveKey( spep_1 + offset_1 + 198, 1, 17.5, 47.3 , 0 );
setMoveKey( spep_1 + offset_1 + 199, 1, 17.5, 47.3 , 0 );
setMoveKey( spep_1 + offset_1 + 200, 1, -37.4, 89.1 , 0 );
setMoveKey( spep_1 + offset_1 + 201, 1, -37.4, 89.1 , 0 );
setMoveKey( spep_1 + offset_1 + 202, 1, 37.6, 28.9 , 0 );
setMoveKey( spep_1 + offset_1 + 203, 1, 37.6, 28.9 , 0 );
setMoveKey( spep_1 + offset_1 + 204, 1, -2.3, 50.7 , 0 );
setMoveKey( spep_1 + offset_1 + 205, 1, -2.3, 50.7 , 0 );
setMoveKey( spep_1 + offset_1 + 206, 1, -12.3, 17.4 , 0 );
setMoveKey( spep_1 + offset_1 + 207, 1, -12.3, 17.4 , 0 );
setMoveKey( spep_1 + offset_1 + 208, 1, -4.2, 18.1 , 0 );
setMoveKey( spep_1 + offset_1 + 209, 1, -4.2, 18.1 , 0 );
setMoveKey( spep_1 + offset_1 + 210, 1, -19.2, 39.8 , 0 );
setMoveKey( spep_1 + offset_1 + 211, 1, -19.2, 39.8 , 0 );
setMoveKey( spep_1 + offset_1 + 212, 1, -6.1, 39.5 , 0 );
setMoveKey( spep_1 + offset_1 + 213, 1, -6.1, 39.5 , 0 );
setMoveKey( spep_1 + offset_1 + 214, 1, -10.1, 24.3 , 0 );
setMoveKey( spep_1 + offset_1 + 215, 1, -10.1, 24.3 , 0 );
setMoveKey( spep_1 + offset_1 + 216, 1, -4, 30 , 0 );
setMoveKey( spep_1 + offset_1 + 217, 1, -4, 30 , 0 );
setMoveKey( spep_1 + offset_1 + 218, 1, -11, 32.8 , 0 );
setMoveKey( spep_1 + offset_1 + 219, 1, -11, 32.8 , 0 );
setMoveKey( spep_1 + offset_1 + 220, 1, -5.9, 30.7 , 0 );
setMoveKey( spep_1 + offset_1 + 221, 1, -5.9, 30.7 , 0 );
setMoveKey( spep_1 + offset_1 + 222, 1, -18.9, 38.5 , 0 );
setMoveKey( spep_1 + offset_1 + 223, 1, -18.9, 38.5 , 0 );
setMoveKey( spep_1 + offset_1 + 224, 1, -7.9, 38.4 , 0 );
setMoveKey( spep_1 + offset_1 + 225, 1, -7.9, 38.4 , 0 );
setMoveKey( spep_1 + offset_1 + 226, 1, -9.9, 23.3 , 0 );
setMoveKey( spep_1 + offset_1 + 227, 1, -9.9, 23.3 , 0 );
setMoveKey( spep_1 + offset_1 + 228, 1, -3.9, 29.2 , 0 );
setMoveKey( spep_1 + offset_1 + 229, 1, -3.9, 29.2 , 0 );
setMoveKey( spep_1 + offset_1 + 230, 1, -10.9, 32.2 , 0 );
setMoveKey( spep_1 + offset_1 + 231, 1, -10.9, 32.2 , 0 );
setMoveKey( spep_1 + offset_1 + 232, 1, -5.8, 30.2 , 0 );
setMoveKey( spep_1 + offset_1 + 233, 1, -5.8, 30.2 , 0 );
setMoveKey( spep_1 + offset_1 + 234, 1, -5.8, 30.1 , 0 );

setScaleKey( spep_1 + offset_1 + 42, 1, 0.82, 0.82 );-- 106
setScaleKey( spep_1 + offset_1 + 46, 1, 0.82, 0.82 );
setScaleKey( spep_1 + offset_1 + 47, 1, 0.82, 0.82 );
setScaleKey( spep_1 + offset_1 + 48, 1, 0.83, 0.83 );
setScaleKey( spep_1 + offset_1 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_1 + offset_1 + 51, 1, 0.83, 0.83 );
setScaleKey( spep_1 + offset_1 + 52, 1, 0.84, 0.84 );
setScaleKey( spep_1 + offset_1 + 54, 1, 0.84, 0.84 );
setScaleKey( spep_1 + offset_1 + 55, 1, 0.84, 0.84 );
setScaleKey( spep_1 + offset_1 + 56, 1, 0.85, 0.85 );
setScaleKey( spep_1 + offset_1 + 57, 1, 0.85, 0.85 );
setScaleKey( spep_1 + offset_1 + 58, 1, 0.86, 0.86 );
setScaleKey( spep_1 + offset_1 + 59, 1, 0.86, 0.86 );
setScaleKey( spep_1 + offset_1 + 60, 1, 0.87, 0.87 );
setScaleKey( spep_1 + offset_1 + 62, 1, 0.48, 0.48 );-- 107
setScaleKey( spep_1 + offset_1 + 63, 1, 0.48, 0.48 );
setScaleKey( spep_1 + offset_1 + 64, 1, 0.57, 0.57 );
setScaleKey( spep_1 + offset_1 + 65, 1, 0.57, 0.57 );
setScaleKey( spep_1 + offset_1 + 66, 1, 0.56, 0.56 );
setScaleKey( spep_1 + offset_1 + 67, 1, 0.56, 0.56 );
setScaleKey( spep_1 + offset_1 + 68, 1, 0.62, 0.62 );
setScaleKey( spep_1 + offset_1 + 69, 1, 0.62, 0.62 );
setScaleKey( spep_1 + offset_1 + 70, 1, 0.68, 0.68 );
setScaleKey( spep_1 + offset_1 + 71, 1, 0.68, 0.68 );
setScaleKey( spep_1 + offset_1 + 72, 1, 0.74, 0.74 );
setScaleKey( spep_1 + offset_1 + 73, 1, 0.74, 0.74 );
setScaleKey( spep_1 + offset_1 + 74, 1, 0.77, 0.77 );
setScaleKey( spep_1 + offset_1 + 75, 1, 0.77, 0.77 );
setScaleKey( spep_1 + offset_1 + 76, 1, 0.8, 0.8 );
setScaleKey( spep_1 + offset_1 + 77, 1, 0.8, 0.8 );
setScaleKey( spep_1 + offset_1 + 78, 1, 0.84, 0.84 );
setScaleKey( spep_1 + offset_1 + 79, 1, 0.84, 0.84 );
setScaleKey( spep_1 + offset_1 + 80, 1, 0.9, 0.9 );
setScaleKey( spep_1 + offset_1 + 81, 1, 0.9, 0.9 );
setScaleKey( spep_1 + offset_1 + 82, 1, 0.94, 0.94 );
setScaleKey( spep_1 + offset_1 + 83, 1, 0.94, 0.94 );
setScaleKey( spep_1 + offset_1 + 84, 1, 0.99, 0.99 );
setScaleKey( spep_1 + offset_1 + 85, 1, 0.99, 0.99 );
setScaleKey( spep_1 + offset_1 + 86, 1, 1.03, 1.03 );
setScaleKey( spep_1 + offset_1 + 88, 1, 1.03, 1.03 );
setScaleKey( spep_1 + offset_1 + 90, 1, 3.78, 3.78 );-- 105
setScaleKey( spep_1 + offset_1 + 91, 1, 3.78, 3.78 );
setScaleKey( spep_1 + offset_1 + 92, 1, 3.6, 3.6 );
setScaleKey( spep_1 + offset_1 + 93, 1, 3.6, 3.6 );
setScaleKey( spep_1 + offset_1 + 94, 1, 3.37, 3.37 );
setScaleKey( spep_1 + offset_1 + 95, 1, 3.37, 3.37 );
setScaleKey( spep_1 + offset_1 + 96, 1, 3.08, 3.08 );
setScaleKey( spep_1 + offset_1 + 97, 1, 3.08, 3.08 );
setScaleKey( spep_1 + offset_1 + 98, 1, 2.74, 2.74 );
setScaleKey( spep_1 + offset_1 + 99, 1, 2.74, 2.74 );
setScaleKey( spep_1 + offset_1 + 100, 1, 2.34, 2.34 );
setScaleKey( spep_1 + offset_1 + 101, 1, 2.34, 2.34 );
setScaleKey( spep_1 + offset_1 + 102, 1, 2.31, 2.31 );
setScaleKey( spep_1 + offset_1 + 103, 1, 2.31, 2.31 );
setScaleKey( spep_1 + offset_1 + 104, 1, 2.29, 2.29 );
setScaleKey( spep_1 + offset_1 + 106, 1, 2.42, 2.42 );-- 108
setScaleKey( spep_1 + offset_1 + 107, 1, 2.42, 2.42 );
setScaleKey( spep_1 + offset_1 + 108, 1, 2.41, 2.41 );
setScaleKey( spep_1 + offset_1 + 109, 1, 2.41, 2.41 );
setScaleKey( spep_1 + offset_1 + 110, 1, 2.4, 2.4 );
setScaleKey( spep_1 + offset_1 + 111, 1, 2.4, 2.4 );
setScaleKey( spep_1 + offset_1 + 112, 1, 2.39, 2.39 );
setScaleKey( spep_1 + offset_1 + 138, 1, 2.39, 2.39 );
setScaleKey( spep_1 + offset_1 + 140, 1, 2.39, 2.39 );
setScaleKey( spep_1 + offset_1 + 174, 1, 2.09, 2.09 );-- 106
setScaleKey( spep_1 + offset_1 + 175, 1, 2.09, 2.09 );
setScaleKey( spep_1 + offset_1 + 176, 1, 2.14, 2.14 );
setScaleKey( spep_1 + offset_1 + 190, 1, 2.14, 2.14 );
setScaleKey( spep_1 + offset_1 + 191, 1, 2.14, 2.14 );
setScaleKey( spep_1 + offset_1 + 192, 1, 2.13, 2.13 );
setScaleKey( spep_1 + offset_1 + 194, 1, 2.13, 2.13 );
setScaleKey( spep_1 + offset_1 + 195, 1, 2.13, 2.13 );
setScaleKey( spep_1 + offset_1 + 196, 1, 2.12, 2.12 );
setScaleKey( spep_1 + offset_1 + 197, 1, 2.12, 2.12 );
setScaleKey( spep_1 + offset_1 + 198, 1, 2.11, 2.11 );
setScaleKey( spep_1 + offset_1 + 199, 1, 2.11, 2.11 );
setScaleKey( spep_1 + offset_1 + 200, 1, 2.1, 2.1 );
setScaleKey( spep_1 + offset_1 + 201, 1, 2.1, 2.1 );
setScaleKey( spep_1 + offset_1 + 202, 1, 2.09, 2.09 );
setScaleKey( spep_1 + offset_1 + 203, 1, 2.09, 2.09 );
setScaleKey( spep_1 + offset_1 + 204, 1, 2.07, 2.07 );
setScaleKey( spep_1 + offset_1 + 205, 1, 2.07, 2.07 );
setScaleKey( spep_1 + offset_1 + 206, 1, 2.06, 2.06 );
setScaleKey( spep_1 + offset_1 + 207, 1, 2.06, 2.06 );
setScaleKey( spep_1 + offset_1 + 208, 1, 2.04, 2.04 );
setScaleKey( spep_1 + offset_1 + 209, 1, 2.04, 2.04 );
setScaleKey( spep_1 + offset_1 + 210, 1, 2.02, 2.02 );
setScaleKey( spep_1 + offset_1 + 211, 1, 2.02, 2.02 );
setScaleKey( spep_1 + offset_1 + 212, 1, 2, 2 );
setScaleKey( spep_1 + offset_1 + 213, 1, 2, 2 );
setScaleKey( spep_1 + offset_1 + 214, 1, 1.98, 1.98 );
setScaleKey( spep_1 + offset_1 + 215, 1, 1.98, 1.98 );
setScaleKey( spep_1 + offset_1 + 216, 1, 1.97, 1.97 );
setScaleKey( spep_1 + offset_1 + 217, 1, 1.97, 1.97 );
setScaleKey( spep_1 + offset_1 + 218, 1, 1.95, 1.95 );
setScaleKey( spep_1 + offset_1 + 219, 1, 1.95, 1.95 );
setScaleKey( spep_1 + offset_1 + 220, 1, 1.94, 1.94 );
setScaleKey( spep_1 + offset_1 + 221, 1, 1.94, 1.94 );
setScaleKey( spep_1 + offset_1 + 222, 1, 1.93, 1.93 );
setScaleKey( spep_1 + offset_1 + 224, 1, 1.93, 1.93 );
setScaleKey( spep_1 + offset_1 + 225, 1, 1.93, 1.93 );
setScaleKey( spep_1 + offset_1 + 226, 1, 1.92, 1.92 );
setScaleKey( spep_1 + offset_1 + 228, 1, 1.92, 1.92 );
setScaleKey( spep_1 + offset_1 + 229, 1, 1.92, 1.92 );
setScaleKey( spep_1 + offset_1 + 234, 1, 1.91, 1.91 );

setRotateKey( spep_1 + offset_1 + 42, 1, 0 );-- 106
setRotateKey( spep_1 + offset_1 + 60, 1, 0 );
setRotateKey( spep_1 + offset_1 + 62, 1, 58.7 );-- 107
setRotateKey( spep_1 + offset_1 + 88, 1, 58.7 );
setRotateKey( spep_1 + offset_1 + 90, 1, 55.6 );-- 105
setRotateKey( spep_1 + offset_1 + 91, 1, 55.6 );
setRotateKey( spep_1 + offset_1 + 92, 1, 56.2 );
setRotateKey( spep_1 + offset_1 + 93, 1, 56.2 );
setRotateKey( spep_1 + offset_1 + 94, 1, 56.8 );
setRotateKey( spep_1 + offset_1 + 95, 1, 56.8 );
setRotateKey( spep_1 + offset_1 + 96, 1, 57.2 );
setRotateKey( spep_1 + offset_1 + 97, 1, 57.2 );
setRotateKey( spep_1 + offset_1 + 98, 1, 57.6 );
setRotateKey( spep_1 + offset_1 + 99, 1, 57.6 );
setRotateKey( spep_1 + offset_1 + 100, 1, 57.9 );
setRotateKey( spep_1 + offset_1 + 101, 1, 57.9 );
setRotateKey( spep_1 + offset_1 + 102, 1, 58.1 );
setRotateKey( spep_1 + offset_1 + 103, 1, 58.1 );
setRotateKey( spep_1 + offset_1 + 104, 1, 58.3 );
setRotateKey( spep_1 + offset_1 + 106, 1, 38.7 );-- 108
setRotateKey( spep_1 + offset_1 + 107, 1, 38.7 );
setRotateKey( spep_1 + offset_1 + 108, 1, 38.8 );
setRotateKey( spep_1 + offset_1 + 109, 1, 38.8 );
setRotateKey( spep_1 + offset_1 + 110, 1, 38.9 );
setRotateKey( spep_1 + offset_1 + 112, 1, 38.9 );
setRotateKey( spep_1 + offset_1 + 113, 1, 38.9 );
setRotateKey( spep_1 + offset_1 + 114, 1, 39 );
setRotateKey( spep_1 + offset_1 + 140, 1, 39 );
setRotateKey( spep_1 + offset_1 + 174, 1, -12 );-- 106
setRotateKey( spep_1 + offset_1 + 234, 1, -12 );

-- ** 音 ** --
--振りかぶる２
SE012 = playSeVer2( spep_1 + 0, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE012,  67 );
SE013 = playSeVer2( spep_1 + 4, 1116, "",spep_1 + 46, 0, 20, -1);
SE014 = playSeVer2( spep_1 + 4, 1278, "",spep_1 + 66, 0, 20, -1);

--振りかぶる３
SE015 = playSeVer2( spep_1 + 30, 1153, "", 0, 18, 0, 0.6);
SE016 = playSeVer2( spep_1 + 36, 1004, "", 0, 0, 0, -1);

--張り手
SE017 = playSeVer2( spep_1 + 52 + 4, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 52 + 4, 1010, "", 0, 0, 0, -1);

--敵地面激突
SE019 = playSeVer2( spep_1 + 96 + 4, 1061, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 96 + 4, 1168, "",spep_1 + 170 + 4, 0, 46, -1);
SE021 = playSeVer2( spep_1 + 96 + 4, 1011, "", 0, 0, 0, -1);

--足振り下ろす
SE022 = playSeVer2( spep_1 + 142 + 4, 1116, "",spep_1 + 188 + 4, 0, 24, -1);
SE023 = playSeVer2( spep_1 + 142 + 4, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 142 + 4, 1153, "", 0, 18, 0, 0.6);

--踏みつけ
SE025 = playSeVer2( spep_1 + 182 + 4, 1061, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 186 + 4, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 186 + 4, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 230 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

 
-- ** 次の準備 ** --
spep_2 = spep_1 + 230;

------------------------------------------------------
-- フィニッシュ(228F)
------------------------------------------------------
--spep_2 = 0;
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --フィニッシュ ef_003
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 228, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 228, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 228, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 228, finish, 255 );

-- ** 音 ** --
--口から気出す
SE028 = playSeVer2( spep_2 + 32, 1258, "",spep_2 + 112, 0, 22, -1);
SE029 = playSeVer2( spep_2 + 40, 1027, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 40, 1183, "",spep_2 + 112, 0, 22, -1);

--爆発
SE031 = playSeVer2( spep_2 + 84, 1024, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 84, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 84, 1067, "", 0, 0, 0, -1);
 
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 228 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景
 
-- ** ダメージ表示 ** --
dealDamage( spep_2 + 105 );
endPhase( spep_2 + 228 - 6 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カットインからパンチ(264F)
------------------------------------------------------
spep_0 = 0;
 
-- ** エフェクト等 ** --
punch = entryEffectLife( spep_0 + 0, SP_01r, 264, 0x100, -1, 0, 0, 0 );  --カットインからパンチ ef_001
setEffMoveKey( spep_0 + 0, punch, 0, 0 , 0 );
setEffMoveKey( spep_0 + 264, punch, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, punch, -1.0, 1.0 );
setEffScaleKey( spep_0 + 264, punch, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, punch, 0 );
setEffRotateKey( spep_0 + 264, punch, 0 );
setEffAlphaKey( spep_0 + 0, punch, 255 );
setEffAlphaKey( spep_0 + 264 - 2, punch, 255 );
setEffAlphaKey( spep_0 + 264 - 1, punch, 255 );
setEffAlphaKey( spep_0 + 264, punch, 0 );

punch_back = entryEffectLife( spep_0 + 0, SP_02r, 264, 0x80, -1, 0, 0, 0 );  --カットインからパンチ　裏面 ef_001_back
setEffMoveKey( spep_0 + 0, punch_back, 0, 0 , 0 );
setEffMoveKey( spep_0 + 264, punch_back, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, punch_back, -1.0, 1.0 );
setEffScaleKey( spep_0 + 264, punch_back, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, punch_back, 0 );
setEffRotateKey( spep_0 + 264, punch_back, 0 );
setEffAlphaKey( spep_0 + 0, punch_back, 255 );
setEffAlphaKey( spep_0 + 264 - 2, punch_back, 255 );
setEffAlphaKey( spep_0 + 264 - 1, punch_back, 255 );
setEffAlphaKey( spep_0 + 264, punch_back, 0 );

-- ** 顔カットイン ** --
spep_x = spep_0 + 62;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135 + 20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135 + 20, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
offset_0 = -1;
setDisp( spep_0 + offset_0 + 158, 1, 1 );

changeAnime( spep_0 + offset_0 + 158, 1, 118 );

setMoveKey( spep_0 + offset_0 + 158, 1, -34.5, -529 , 0 );
setMoveKey( spep_0 + offset_0 + 159, 1, -34.5, -529 , 0 );
setMoveKey( spep_0 + offset_0 + 160, 1, -35.1, -521 , 0 );
setMoveKey( spep_0 + offset_0 + 161, 1, -35.1, -521 , 0 );
setMoveKey( spep_0 + offset_0 + 162, 1, -35.6, -514 , 0 );
setMoveKey( spep_0 + offset_0 + 163, 1, -35.6, -514 , 0 );
setMoveKey( spep_0 + offset_0 + 164, 1, -36.1, -507.8 , 0 );
setMoveKey( spep_0 + offset_0 + 165, 1, -36.1, -507.8 , 0 );
setMoveKey( spep_0 + offset_0 + 166, 1, -36.5, -502.5 , 0 );
setMoveKey( spep_0 + offset_0 + 167, 1, -36.5, -502.5 , 0 );
setMoveKey( spep_0 + offset_0 + 168, 1, -36.8, -497.9 , 0 );
setMoveKey( spep_0 + offset_0 + 169, 1, -36.8, -497.9 , 0 );
setMoveKey( spep_0 + offset_0 + 170, 1, -37.1, -494.1 , 0 );
setMoveKey( spep_0 + offset_0 + 171, 1, -37.1, -494.1 , 0 );
setMoveKey( spep_0 + offset_0 + 172, 1, -37.3, -490.8 , 0 );
setMoveKey( spep_0 + offset_0 + 173, 1, -37.3, -490.8 , 0 );
setMoveKey( spep_0 + offset_0 + 174, 1, -37.5, -488.2 , 0 );
setMoveKey( spep_0 + offset_0 + 175, 1, -37.5, -488.2 , 0 );
setMoveKey( spep_0 + offset_0 + 176, 1, -37.7, -486.1 , 0 );
setMoveKey( spep_0 + offset_0 + 177, 1, -37.7, -486.1 , 0 );
setMoveKey( spep_0 + offset_0 + 178, 1, -37.8, -484.4 , 0 );
setMoveKey( spep_0 + offset_0 + 179, 1, -37.8, -484.4 , 0 );
setMoveKey( spep_0 + offset_0 + 180, 1, -37.9, -483.2 , 0 );
setMoveKey( spep_0 + offset_0 + 181, 1, -37.9, -483.2 , 0 );
setMoveKey( spep_0 + offset_0 + 182, 1, -38, -482.3 , 0 );
setMoveKey( spep_0 + offset_0 + 183, 1, -38, -482.3 , 0 );
setMoveKey( spep_0 + offset_0 + 184, 1, -38, -481.7 , 0 );
setMoveKey( spep_0 + offset_0 + 185, 1, -38, -481.7 , 0 );
setMoveKey( spep_0 + offset_0 + 186, 1, -38, -481.4 , 0 );
setMoveKey( spep_0 + offset_0 + 187, 1, -38, -481.4 , 0 );
setMoveKey( spep_0 + offset_0 + 188, 1, -38.1, -481.2 , 0 );
setMoveKey( spep_0 + offset_0 + 189, 1, -38.1, -481.2 , 0 );
setMoveKey( spep_0 + offset_0 + 190, 1, -38.1, -481.1 , 0 );
setMoveKey( spep_0 + offset_0 + 192, 1, -38.1, -481.1 , 0 );
setMoveKey( spep_0 + offset_0 + 193, 1, -38.1, -481.1 , 0 );
setMoveKey( spep_0 + offset_0 + 194, 1, -21.2, -466.8 , 0 );
setMoveKey( spep_0 + offset_0 + 195, 1, -21.2, -466.8 , 0 );
setMoveKey( spep_0 + offset_0 + 196, 1, 6.9, -458.6 , 0 );
setMoveKey( spep_0 + offset_0 + 197, 1, 6.9, -458.6 , 0 );
setMoveKey( spep_0 + offset_0 + 198, 1, 27.9, -452.4 , 0 );
setMoveKey( spep_0 + offset_0 + 199, 1, 27.9, -452.4 , 0 );
setMoveKey( spep_0 + offset_0 + 200, 1, 43, -448 , 0 );
setMoveKey( spep_0 + offset_0 + 201, 1, 43, -448 , 0 );
setMoveKey( spep_0 + offset_0 + 202, 1, 53.2, -445 , 0 );
setMoveKey( spep_0 + offset_0 + 203, 1, 53.2, -445 , 0 );
setMoveKey( spep_0 + offset_0 + 204, 1, 59.3, -443.3 , 0 );

setScaleKey( spep_0 + offset_0 + 158, 1, 1, 1 );
setScaleKey( spep_0 + offset_0 + 159, 1, 1, 1 );
setScaleKey( spep_0 + offset_0 + 160, 1, 1.02, 1.02 );
setScaleKey( spep_0 + offset_0 + 161, 1, 1.02, 1.02 );
setScaleKey( spep_0 + offset_0 + 162, 1, 1.04, 1.04 );
setScaleKey( spep_0 + offset_0 + 163, 1, 1.04, 1.04 );
setScaleKey( spep_0 + offset_0 + 164, 1, 1.05, 1.05 );
setScaleKey( spep_0 + offset_0 + 165, 1, 1.05, 1.05 );
setScaleKey( spep_0 + offset_0 + 166, 1, 1.06, 1.06 );
setScaleKey( spep_0 + offset_0 + 167, 1, 1.06, 1.06 );
setScaleKey( spep_0 + offset_0 + 168, 1, 1.07, 1.07 );
setScaleKey( spep_0 + offset_0 + 169, 1, 1.07, 1.07 );
setScaleKey( spep_0 + offset_0 + 170, 1, 1.08, 1.08 );
setScaleKey( spep_0 + offset_0 + 171, 1, 1.08, 1.08 );
setScaleKey( spep_0 + offset_0 + 172, 1, 1.09, 1.09 );
setScaleKey( spep_0 + offset_0 + 174, 1, 1.09, 1.09 );
setScaleKey( spep_0 + offset_0 + 175, 1, 1.09, 1.09 );
setScaleKey( spep_0 + offset_0 + 176, 1, 1.1, 1.1 );
setScaleKey( spep_0 + offset_0 + 180, 1, 1.1, 1.1 );
setScaleKey( spep_0 + offset_0 + 181, 1, 1.1, 1.1 );
setScaleKey( spep_0 + offset_0 + 182, 1, 1.11, 1.11 );
setScaleKey( spep_0 + offset_0 + 192, 1, 1.11, 1.11 );
setScaleKey( spep_0 + offset_0 + 193, 1, 1.11, 1.11 );
setScaleKey( spep_0 + offset_0 + 194, 1, 1.2, 1.2 );
setScaleKey( spep_0 + offset_0 + 195, 1, 1.2, 1.2 );
setScaleKey( spep_0 + offset_0 + 196, 1, 1.16, 1.16 );
setScaleKey( spep_0 + offset_0 + 197, 1, 1.16, 1.16 );
setScaleKey( spep_0 + offset_0 + 198, 1, 1.13, 1.13 );
setScaleKey( spep_0 + offset_0 + 199, 1, 1.13, 1.13 );
setScaleKey( spep_0 + offset_0 + 200, 1, 1.11, 1.11 );
setScaleKey( spep_0 + offset_0 + 201, 1, 1.11, 1.11 );
setScaleKey( spep_0 + offset_0 + 202, 1, 1.1, 1.1 );
setScaleKey( spep_0 + offset_0 + 203, 1, 1.1, 1.1 );
setScaleKey( spep_0 + offset_0 + 204, 1, 1.09, 1.09 );

setRotateKey( spep_0 + offset_0 + 158, 1, 0 );
setRotateKey( spep_0 + offset_0 + 204, 1, 0 );

-- ** 音 ** --
--入り		
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン		
SE002 = playSeVer2( spep_0 + 70, 1018, "", 0, 0, 0, -1);

--振りかぶる
SE003 = playSeVer2( spep_0 + 160, 1116, "", spep_0 + 202, 0, 22, -1);
SE004 = playSeVer2( spep_0 + 160, 1232, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 164, 1153, "", 0, 16, 0, 0.6);
SE006 = playSeVer2( spep_0 + 168, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 264 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 205; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE003, 0);
  stopSe( SP_dodge - 12, SE004, 0);
  stopSe( SP_dodge - 12, SE005, 0);
  stopSe( SP_dodge - 12, SE006, 0);
  
  speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
  
  kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
  setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
  setEffAlphaKey( SP_dodge, kaihi1, 255);

  
  pauseAll( SP_dodge, 67);

  -- ** 敵キャラクター ** --
  setMoveKey( SP_dodge + 0, 1, 59.3, -443.3 , 0 );
  setMoveKey( SP_dodge + 1, 1, 59.3, -443.3 , 0 );
  setMoveKey( SP_dodge + 2, 1, 62.4, -442.3 , 0 );
  setMoveKey( SP_dodge + 3, 1, 62.4, -442.3 , 0 );
  setMoveKey( SP_dodge + 4, 1, 63.6, -442 , 0 );
  setMoveKey( SP_dodge + 5, 1, 63.6, -442 , 0 );
  setMoveKey( SP_dodge + 6, 1, 63.8, -441.9 , 0 );
  setMoveKey( SP_dodge + 7, 1, 63.8, -441.9 , 0 );
  setMoveKey( SP_dodge + 8, 1, 89.6, -405.8 , 0 );
  setMoveKey( SP_dodge + 10, 1, 89.6, -405.8 , 0 );

  setScaleKey( SP_dodge + 0, 1, 1.09, 1.09 );
  setScaleKey( SP_dodge + 9, 1, 1.09, 1.09 );
  setScaleKey( SP_dodge + 10, 1, 1.21, 1.21 );

  setRotateKey(  SP_dodge + 0, 1, 0 );
  setRotateKey(  SP_dodge + 10, 1, 0 );
  
  entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
  endPhase(SP_dodge+10);
  
  do return end
  else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 + offset_0 + 267, 1, 0 );

changeAnime( spep_0 + offset_0 + 216, 1, 106 );

setMoveKey( spep_0 + offset_0 + 205, 1, 59.3, -443.3 , 0 );
setMoveKey( spep_0 + offset_0 + 206, 1, 62.4, -442.3 , 0 );
setMoveKey( spep_0 + offset_0 + 207, 1, 62.4, -442.3 , 0 );
setMoveKey( spep_0 + offset_0 + 208, 1, 63.6, -442 , 0 );
setMoveKey( spep_0 + offset_0 + 209, 1, 63.6, -442 , 0 );
setMoveKey( spep_0 + offset_0 + 210, 1, 63.8, -441.9 , 0 );
setMoveKey( spep_0 + offset_0 + 211, 1, 63.8, -441.9 , 0 );
setMoveKey( spep_0 + offset_0 + 212, 1, 89.6, -405.8 , 0 );
setMoveKey( spep_0 + offset_0 + 215, 1, 89.6, -405.8 , 0 );
setMoveKey( spep_0 + offset_0 + 216, 1, -6.3, -483.4 , 0 );
setMoveKey( spep_0 + offset_0 + 217, 1, -6.3, -483.4 , 0 );
setMoveKey( spep_0 + offset_0 + 218, 1, 15, -392.4 , 0 );
setMoveKey( spep_0 + offset_0 + 219, 1, 15, -392.4 , 0 );
setMoveKey( spep_0 + offset_0 + 220, 1, 67, -438.3 , 0 );
setMoveKey( spep_0 + offset_0 + 221, 1, 67, -438.3 , 0 );
setMoveKey( spep_0 + offset_0 + 222, 1, 19.9, -438.9 , 0 );
setMoveKey( spep_0 + offset_0 + 223, 1, 19.9, -438.9 , 0 );
setMoveKey( spep_0 + offset_0 + 224, 1, 36.5, -401.2 , 0 );
setMoveKey( spep_0 + offset_0 + 225, 1, 36.5, -401.2 , 0 );
setMoveKey( spep_0 + offset_0 + 226, 1, 4.8, -407.4 , 0 );
setMoveKey( spep_0 + offset_0 + 227, 1, 4.8, -407.4 , 0 );
setMoveKey( spep_0 + offset_0 + 228, 1, 49.9, -425.4 , 0 );
setMoveKey( spep_0 + offset_0 + 229, 1, 49.9, -425.4 , 0 );
setMoveKey( spep_0 + offset_0 + 230, 1, 46.9, -445.3 , 0 );
setMoveKey( spep_0 + offset_0 + 231, 1, 46.9, -445.3 , 0 );
setMoveKey( spep_0 + offset_0 + 232, 1, 30.7, -442.9 , 0 );
setMoveKey( spep_0 + offset_0 + 233, 1, 30.7, -442.9 , 0 );
setMoveKey( spep_0 + offset_0 + 234, 1, 9.3, -423.5 , 0 );
setMoveKey( spep_0 + offset_0 + 235, 1, 9.3, -423.5 , 0 );
setMoveKey( spep_0 + offset_0 + 236, 1, 26.8, -448.9 , 0 );
setMoveKey( spep_0 + offset_0 + 237, 1, 26.8, -448.9 , 0 );
setMoveKey( spep_0 + offset_0 + 238, 1, 44.1, -441.2 , 0 );
setMoveKey( spep_0 + offset_0 + 239, 1, 44.1, -441.2 , 0 );
setMoveKey( spep_0 + offset_0 + 240, 1, 25.6, -430.5 , 0 );
setMoveKey( spep_0 + offset_0 + 241, 1, 25.6, -430.5 , 0 );
setMoveKey( spep_0 + offset_0 + 242, 1, 45.6, -425.6 , 0 );
setMoveKey( spep_0 + offset_0 + 243, 1, 45.6, -425.6 , 0 );
setMoveKey( spep_0 + offset_0 + 244, 1, 36.7, -434.7 , 0 );
setMoveKey( spep_0 + offset_0 + 245, 1, 36.7, -434.7 , 0 );
setMoveKey( spep_0 + offset_0 + 246, 1, 27.6, -427.8 , 0 );
setMoveKey( spep_0 + offset_0 + 247, 1, 27.6, -427.8 , 0 );
setMoveKey( spep_0 + offset_0 + 248, 1, 35.7, -426.8 , 0 );
setMoveKey( spep_0 + offset_0 + 249, 1, 35.7, -426.8 , 0 );
setMoveKey( spep_0 + offset_0 + 250, 1, 39.7, -435.8 , 0 );
setMoveKey( spep_0 + offset_0 + 251, 1, 39.7, -435.8 , 0 );
setMoveKey( spep_0 + offset_0 + 252, 1, 30.7, -432.8 , 0 );
setMoveKey( spep_0 + offset_0 + 267, 1, 30.7, -432.8 , 0 );

setScaleKey( spep_0 + offset_0 + 210, 1, 1.09, 1.09 );
setScaleKey( spep_0 + offset_0 + 211, 1, 1.09, 1.09 );
setScaleKey( spep_0 + offset_0 + 212, 1, 1.21, 1.21 );
setScaleKey( spep_0 + offset_0 + 216, 1, 1.21, 1.21 );
setScaleKey( spep_0 + offset_0 + 267, 1, 1.21, 1.21 );

setRotateKey( spep_0 + offset_0 + 215, 1, 0 );
setRotateKey( spep_0 + offset_0 + 216, 1, 12.4 );
setRotateKey( spep_0 + offset_0 + 267, 1, 12.4 );

-- ** 音 ** --
--パンチ		
SE007 = playSeVer2( spep_0 + 210, 1061, "", spep_0 + 278, 0, 10, -1);
SE008 = playSeVer2( spep_0 + 212, 1033, "", spep_0 + 278, 0, 10, -1);
SE009 = playSeVer2( spep_0 + 214, 1159, "", spep_0 + 278, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 214, SE009, 92 );
SE010 = playSeVer2( spep_0 + 214, 1187, "", spep_0 + 278, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 214, SE010, 79 );
 
-- ** 次の準備 ** --
spep_c = spep_0 + 264;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
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
playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_1 = spep_c + 94;

------------------------------------------------------
-- 踏みつけ(230F)
------------------------------------------------------
-- spep_1 = 0;
 
-- ** エフェクト等 ** --
trample = entryEffectLife( spep_1 + 0, SP_03r, 230, 0x100, -1, 0, 0, 0 );  --踏みつけ ef_002
setEffMoveKey( spep_1 + 0, trample, 0, 0 , 0 );
setEffMoveKey( spep_1 + 230, trample, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, trample, -1.0, 1.0 );
setEffScaleKey( spep_1 + 230, trample, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, trample, 0 );
setEffRotateKey( spep_1 + 230, trample, 0 );
setEffAlphaKey( spep_1 + 0, trample, 255 );
setEffAlphaKey( spep_1 + 230 - 2, trample, 255 );
setEffAlphaKey( spep_1 + 230 - 1, trample, 255 );
setEffAlphaKey( spep_1 + 230, trample, 0 );

trample_back = entryEffectLife( spep_1 + 0, SP_04r, 230, 0x80, -1, 0, 0, 0 );  --踏みつけ ef_002
setEffMoveKey( spep_1 + 0, trample_back, 0, 0 , 0 );
setEffMoveKey( spep_1 + 230, trample_back, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, trample_back, -1.0, 1.0 );
setEffScaleKey( spep_1 + 230, trample_back, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, trample_back, 0 );
setEffRotateKey( spep_1 + 230, trample_back, 0 );
setEffAlphaKey( spep_1 + 0, trample_back, 255 );
setEffAlphaKey( spep_1 + 230 - 2, trample_back, 255 );
setEffAlphaKey( spep_1 + 230 - 1, trample_back, 255 );
setEffAlphaKey( spep_1 + 230, trample_back, 0 );

-- ** 敵キャラクター ** --
offset_1 = -1;
setDisp( spep_1 + offset_1 + 42, 1, 1 );
setDisp( spep_1 + offset_1 + 88, 1, 0 );
setDisp( spep_1 + offset_1 + 90, 1, 1 );
setDisp( spep_1 + offset_1 + 104, 1, 0 );
setDisp( spep_1 + offset_1 + 106, 1, 1 );
setDisp( spep_1 + offset_1 + 140, 1, 0 );
setDisp( spep_1 + offset_1 + 174, 1, 1 );
setDisp( spep_1 + offset_1 + 234, 1, 0 );

changeAnime( spep_1 + offset_1 + 42, 1, 106 );
changeAnime( spep_1 + offset_1 + 62, 1, 107 );
changeAnime( spep_1 + offset_1 + 90, 1, 105 );
changeAnime( spep_1 + offset_1 + 106, 1, 108 );
changeAnime( spep_1 + offset_1 + 174, 1, 106 );

setMoveKey( spep_1 + offset_1 + 42, 1, 100, -107 , 0 );-- 106
setMoveKey( spep_1 + offset_1 + 43, 1, 100, -107 , 0 );
setMoveKey( spep_1 + offset_1 + 44, 1, 111.4, -99.8 , 0 );
setMoveKey( spep_1 + offset_1 + 45, 1, 111.4, -99.8 , 0 );
setMoveKey( spep_1 + offset_1 + 46, 1, 123.1, -92.4 , 0 );
setMoveKey( spep_1 + offset_1 + 47, 1, 123.1, -92.4 , 0 );
setMoveKey( spep_1 + offset_1 + 48, 1, 135.1, -84.9 , 0 );
setMoveKey( spep_1 + offset_1 + 49, 1, 135.1, -84.9 , 0 );
setMoveKey( spep_1 + offset_1 + 50, 1, 147.5, -77.2 , 0 );
setMoveKey( spep_1 + offset_1 + 51, 1, 147.5, -77.2 , 0 );
setMoveKey( spep_1 + offset_1 + 52, 1, 160.4, -69.2 , 0 );
setMoveKey( spep_1 + offset_1 + 53, 1, 160.4, -69.2 , 0 );
setMoveKey( spep_1 + offset_1 + 54, 1, 173.9, -60.8 , 0 );
setMoveKey( spep_1 + offset_1 + 55, 1, 173.9, -60.8 , 0 );
setMoveKey( spep_1 + offset_1 + 56, 1, 177.9, -58.7 , 0 );
setMoveKey( spep_1 + offset_1 + 57, 1, 177.9, -58.7 , 0 );
setMoveKey( spep_1 + offset_1 + 58, 1, 182.7, -56.2 , 0 );
setMoveKey( spep_1 + offset_1 + 59, 1, 182.7, -56.2 , 0 );
setMoveKey( spep_1 + offset_1 + 60, 1, 188.1, -53.2 , 0 );
setMoveKey( spep_1 + offset_1 + 62, 1, 130.1, -133.7 , 0 );-- 107
setMoveKey( spep_1 + offset_1 + 63, 1, 130.1, -133.7 , 0 );
setMoveKey( spep_1 + offset_1 + 64, 1, 151, -178.8 , 0 );
setMoveKey( spep_1 + offset_1 + 65, 1, 151, -178.8 , 0 );
setMoveKey( spep_1 + offset_1 + 66, 1, 104.9, -150.5 , 0 );
setMoveKey( spep_1 + offset_1 + 67, 1, 104.9, -150.5 , 0 );
setMoveKey( spep_1 + offset_1 + 68, 1, 136.9, -162.9 , 0 );
setMoveKey( spep_1 + offset_1 + 69, 1, 136.9, -162.9 , 0 );
setMoveKey( spep_1 + offset_1 + 70, 1, 109.8, -189.8 , 0 );
setMoveKey( spep_1 + offset_1 + 71, 1, 109.8, -189.8 , 0 );
setMoveKey( spep_1 + offset_1 + 72, 1, 116, -197.2 , 0 );
setMoveKey( spep_1 + offset_1 + 73, 1, 116, -197.2 , 0 );
setMoveKey( spep_1 + offset_1 + 74, 1, 121.7, -247.7 , 0 );
setMoveKey( spep_1 + offset_1 + 75, 1, 121.7, -247.7 , 0 );
setMoveKey( spep_1 + offset_1 + 76, 1, 109, -264.5 , 0 );
setMoveKey( spep_1 + offset_1 + 77, 1, 109, -264.5 , 0 );
setMoveKey( spep_1 + offset_1 + 78, 1, 119, -260.3 , 0 );
setMoveKey( spep_1 + offset_1 + 79, 1, 119, -260.3 , 0 );
setMoveKey( spep_1 + offset_1 + 80, 1, 100.7, -278.3 , 0 );
setMoveKey( spep_1 + offset_1 + 81, 1, 100.7, -278.3 , 0 );
setMoveKey( spep_1 + offset_1 + 82, 1, 99.3, -311.3 , 0 );
setMoveKey( spep_1 + offset_1 + 83, 1, 99.3, -311.3 , 0 );
setMoveKey( spep_1 + offset_1 + 84, 1, 87.7, -323.3 , 0 );
setMoveKey( spep_1 + offset_1 + 85, 1, 87.7, -323.3 , 0 );
setMoveKey( spep_1 + offset_1 + 86, 1, 89.1, -338.2 , 0 );
setMoveKey( spep_1 + offset_1 + 89, 1, 89.1, -338.2 , 0 );
setMoveKey( spep_1 + offset_1 + 90, 1, -795.4, 322.3 , 0 );-- 105
setMoveKey( spep_1 + offset_1 + 91, 1, -795.4, 322.3 , 0 );
setMoveKey( spep_1 + offset_1 + 92, 1, -740.1, 313.7 , 0 );
setMoveKey( spep_1 + offset_1 + 93, 1, -740.1, 313.7 , 0 );
setMoveKey( spep_1 + offset_1 + 94, 1, -645.3, 291.5 , 0 );
setMoveKey( spep_1 + offset_1 + 95, 1, -645.3, 291.5 , 0 );
setMoveKey( spep_1 + offset_1 + 96, 1, -513.7, 256.2 , 0 );
setMoveKey( spep_1 + offset_1 + 97, 1, -513.7, 256.2 , 0 );
setMoveKey( spep_1 + offset_1 + 98, 1, -346.5, 207.7 , 0 );
setMoveKey( spep_1 + offset_1 + 99, 1, -346.5, 207.7 , 0 );
setMoveKey( spep_1 + offset_1 + 100, 1, -144.2, 146.3 , 0 );
setMoveKey( spep_1 + offset_1 + 101, 1, -144.2, 146.3 , 0 );
setMoveKey( spep_1 + offset_1 + 102, 1, -141.7, 144.9 , 0 );
setMoveKey( spep_1 + offset_1 + 103, 1, -141.7, 144.9 , 0 );
setMoveKey( spep_1 + offset_1 + 104, 1, -139.8, 143.9 , 0 );
setMoveKey( spep_1 + offset_1 + 106, 1, 10.1, 34.2 , 0 );-- 108
setMoveKey( spep_1 + offset_1 + 107, 1, 10.1, 34.2 , 0 );
setMoveKey( spep_1 + offset_1 + 108, 1, 25.5, -27.5 , 0 );
setMoveKey( spep_1 + offset_1 + 109, 1, 25.5, -27.5 , 0 );
setMoveKey( spep_1 + offset_1 + 110, 1, -11.1, 45 , 0 );
setMoveKey( spep_1 + offset_1 + 111, 1, -11.1, 45 , 0 );
setMoveKey( spep_1 + offset_1 + 112, 1, 32.2, 52.6 , 0 );
setMoveKey( spep_1 + offset_1 + 113, 1, 32.2, 52.6 , 0 );
setMoveKey( spep_1 + offset_1 + 114, 1, -12.7, 36.4 , 0 );
setMoveKey( spep_1 + offset_1 + 115, 1, -12.7, 36.4 , 0 );
setMoveKey( spep_1 + offset_1 + 116, 1, 12.3, 45.4 , 0 );
setMoveKey( spep_1 + offset_1 + 117, 1, 12.3, 45.4 , 0 );
setMoveKey( spep_1 + offset_1 + 118, 1, 23.2, 11.5 , 0 );
setMoveKey( spep_1 + offset_1 + 119, 1, 23.2, 11.5 , 0 );
setMoveKey( spep_1 + offset_1 + 120, 1, 16, 11.7 , 0 );
setMoveKey( spep_1 + offset_1 + 121, 1, 16, 11.7 , 0 );
setMoveKey( spep_1 + offset_1 + 122, 1, 31.7, 33 , 0 );
setMoveKey( spep_1 + offset_1 + 123, 1, 31.7, 33 , 0 );
setMoveKey( spep_1 + offset_1 + 124, 1, 19.3, 32.4 , 0 );
setMoveKey( spep_1 + offset_1 + 125, 1, 19.3, 32.4 , 0 );
setMoveKey( spep_1 + offset_1 + 126, 1, 20.9, 14.8 , 0 );
setMoveKey( spep_1 + offset_1 + 127, 1, 20.9, 14.8 , 0 );
setMoveKey( spep_1 + offset_1 + 128, 1, 19.7, 22.6 , 0 );
setMoveKey( spep_1 + offset_1 + 129, 1, 19.7, 22.6 , 0 );
setMoveKey( spep_1 + offset_1 + 130, 1, 28.4, 25.4 , 0 );
setMoveKey( spep_1 + offset_1 + 131, 1, 28.4, 25.4 , 0 );
setMoveKey( spep_1 + offset_1 + 132, 1, 25.1, 23.3 , 0 );
setMoveKey( spep_1 + offset_1 + 133, 1, 25.1, 23.3 , 0 );
setMoveKey( spep_1 + offset_1 + 134, 1, 32.8, 18.2 , 0 );
setMoveKey( spep_1 + offset_1 + 135, 1, 32.8, 18.2 , 0 );
setMoveKey( spep_1 + offset_1 + 136, 1, 29.5, 28.1 , 0 );
setMoveKey( spep_1 + offset_1 + 137, 1, 29.5, 28.1 , 0 );
setMoveKey( spep_1 + offset_1 + 138, 1, 29.8, 23.4 , 0 );
setMoveKey( spep_1 + offset_1 + 140, 1, 29.8, 23.4 , 0 );
setMoveKey( spep_1 + offset_1 + 174, 1, -6.4, 33 , 0 );-- 106
setMoveKey( spep_1 + offset_1 + 175, 1, -6.4, 33 , 0 );
setMoveKey( spep_1 + offset_1 + 176, 1, -6.6, 33.9 , 0 );
setMoveKey( spep_1 + offset_1 + 182, 1, -6.6, 33.9 , 0 );
setMoveKey( spep_1 + offset_1 + 183, 1, -6.6, 33.9 , 0 );
setMoveKey( spep_1 + offset_1 + 184, 1, -6.6, 33.8 , 0 );
setMoveKey( spep_1 + offset_1 + 186, 1, -6.6, 33.8 , 0 );
setMoveKey( spep_1 + offset_1 + 187, 1, -6.6, 33.8 , 0 );
setMoveKey( spep_1 + offset_1 + 188, 1, -6.5, 33.8 , 0 );
setMoveKey( spep_1 + offset_1 + 189, 1, -6.5, 33.8 , 0 );
setMoveKey( spep_1 + offset_1 + 190, 1, -6.5, 33.7 , 0 );
setMoveKey( spep_1 + offset_1 + 191, 1, -6.5, 33.7 , 0 );
setMoveKey( spep_1 + offset_1 + 192, 1, -6.5, 33.6 , 0 );
setMoveKey( spep_1 + offset_1 + 194, 1, -6.5, 33.6 , 0 );
setMoveKey( spep_1 + offset_1 + 195, 1, -6.5, 33.6 , 0 );
setMoveKey( spep_1 + offset_1 + 196, 1, 7.5, -44.6 , 0 );
setMoveKey( spep_1 + offset_1 + 197, 1, 7.5, -44.6 , 0 );
setMoveKey( spep_1 + offset_1 + 198, 1, -30.5, 47.3 , 0 );
setMoveKey( spep_1 + offset_1 + 199, 1, -30.5, 47.3 , 0 );
setMoveKey( spep_1 + offset_1 + 200, 1, 24.6, 89.1 , 0 );
setMoveKey( spep_1 + offset_1 + 201, 1, 24.6, 89.1 , 0 );
setMoveKey( spep_1 + offset_1 + 202, 1, -50.4, 28.9 , 0 );
setMoveKey( spep_1 + offset_1 + 203, 1, -50.4, 28.9 , 0 );
setMoveKey( spep_1 + offset_1 + 204, 1, -10.3, 50.7 , 0 );
setMoveKey( spep_1 + offset_1 + 205, 1, -10.3, 50.7 , 0 );
setMoveKey( spep_1 + offset_1 + 206, 1, -0.3, 17.4 , 0 );
setMoveKey( spep_1 + offset_1 + 207, 1, -0.3, 17.4 , 0 );
setMoveKey( spep_1 + offset_1 + 208, 1, -8.2, 18.1 , 0 );
setMoveKey( spep_1 + offset_1 + 209, 1, -8.2, 18.1 , 0 );
setMoveKey( spep_1 + offset_1 + 210, 1, 6.8, 39.8 , 0 );
setMoveKey( spep_1 + offset_1 + 211, 1, 6.8, 39.8 , 0 );
setMoveKey( spep_1 + offset_1 + 212, 1, -6.1, 39.5 , 0 );
setMoveKey( spep_1 + offset_1 + 213, 1, -6.1, 39.5 , 0 );
setMoveKey( spep_1 + offset_1 + 214, 1, -2.1, 24.3 , 0 );
setMoveKey( spep_1 + offset_1 + 215, 1, -2.1, 24.3 , 0 );
setMoveKey( spep_1 + offset_1 + 216, 1, -8, 30 , 0 );
setMoveKey( spep_1 + offset_1 + 217, 1, -8, 30 , 0 );
setMoveKey( spep_1 + offset_1 + 218, 1, -1, 32.8 , 0 );
setMoveKey( spep_1 + offset_1 + 219, 1, -1, 32.8 , 0 );
setMoveKey( spep_1 + offset_1 + 220, 1, -5.9, 30.7 , 0 );
setMoveKey( spep_1 + offset_1 + 221, 1, -5.9, 30.7 , 0 );
setMoveKey( spep_1 + offset_1 + 222, 1, 7.1, 38.5 , 0 );
setMoveKey( spep_1 + offset_1 + 223, 1, 7.1, 38.5 , 0 );
setMoveKey( spep_1 + offset_1 + 224, 1, -3.9, 38.4 , 0 );
setMoveKey( spep_1 + offset_1 + 225, 1, -3.9, 38.4 , 0 );
setMoveKey( spep_1 + offset_1 + 226, 1, -1.9, 23.3 , 0 );
setMoveKey( spep_1 + offset_1 + 227, 1, -1.9, 23.3 , 0 );
setMoveKey( spep_1 + offset_1 + 228, 1, -7.9, 29.2 , 0 );
setMoveKey( spep_1 + offset_1 + 229, 1, -7.9, 29.2 , 0 );
setMoveKey( spep_1 + offset_1 + 230, 1, -0.9, 32.2 , 0 );
setMoveKey( spep_1 + offset_1 + 231, 1, -0.9, 32.2 , 0 );
setMoveKey( spep_1 + offset_1 + 232, 1, -5.8, 30.2 , 0 );
setMoveKey( spep_1 + offset_1 + 233, 1, -5.8, 30.2 , 0 );
setMoveKey( spep_1 + offset_1 + 234, 1, -5.8, 30.1 , 0 );

setScaleKey( spep_1 + offset_1 + 42, 1, 0.82, 0.82 );-- 106
setScaleKey( spep_1 + offset_1 + 46, 1, 0.82, 0.82 );
setScaleKey( spep_1 + offset_1 + 47, 1, 0.82, 0.82 );
setScaleKey( spep_1 + offset_1 + 48, 1, 0.83, 0.83 );
setScaleKey( spep_1 + offset_1 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_1 + offset_1 + 51, 1, 0.83, 0.83 );
setScaleKey( spep_1 + offset_1 + 52, 1, 0.84, 0.84 );
setScaleKey( spep_1 + offset_1 + 54, 1, 0.84, 0.84 );
setScaleKey( spep_1 + offset_1 + 55, 1, 0.84, 0.84 );
setScaleKey( spep_1 + offset_1 + 56, 1, 0.85, 0.85 );
setScaleKey( spep_1 + offset_1 + 57, 1, 0.85, 0.85 );
setScaleKey( spep_1 + offset_1 + 58, 1, 0.86, 0.86 );
setScaleKey( spep_1 + offset_1 + 59, 1, 0.86, 0.86 );
setScaleKey( spep_1 + offset_1 + 60, 1, 0.87, 0.87 );
setScaleKey( spep_1 + offset_1 + 62, 1, 0.48, 0.48 );-- 107
setScaleKey( spep_1 + offset_1 + 63, 1, 0.48, 0.48 );
setScaleKey( spep_1 + offset_1 + 64, 1, 0.57, 0.57 );
setScaleKey( spep_1 + offset_1 + 65, 1, 0.57, 0.57 );
setScaleKey( spep_1 + offset_1 + 66, 1, 0.56, 0.56 );
setScaleKey( spep_1 + offset_1 + 67, 1, 0.56, 0.56 );
setScaleKey( spep_1 + offset_1 + 68, 1, 0.62, 0.62 );
setScaleKey( spep_1 + offset_1 + 69, 1, 0.62, 0.62 );
setScaleKey( spep_1 + offset_1 + 70, 1, 0.68, 0.68 );
setScaleKey( spep_1 + offset_1 + 71, 1, 0.68, 0.68 );
setScaleKey( spep_1 + offset_1 + 72, 1, 0.74, 0.74 );
setScaleKey( spep_1 + offset_1 + 73, 1, 0.74, 0.74 );
setScaleKey( spep_1 + offset_1 + 74, 1, 0.77, 0.77 );
setScaleKey( spep_1 + offset_1 + 75, 1, 0.77, 0.77 );
setScaleKey( spep_1 + offset_1 + 76, 1, 0.8, 0.8 );
setScaleKey( spep_1 + offset_1 + 77, 1, 0.8, 0.8 );
setScaleKey( spep_1 + offset_1 + 78, 1, 0.84, 0.84 );
setScaleKey( spep_1 + offset_1 + 79, 1, 0.84, 0.84 );
setScaleKey( spep_1 + offset_1 + 80, 1, 0.9, 0.9 );
setScaleKey( spep_1 + offset_1 + 81, 1, 0.9, 0.9 );
setScaleKey( spep_1 + offset_1 + 82, 1, 0.94, 0.94 );
setScaleKey( spep_1 + offset_1 + 83, 1, 0.94, 0.94 );
setScaleKey( spep_1 + offset_1 + 84, 1, 0.99, 0.99 );
setScaleKey( spep_1 + offset_1 + 85, 1, 0.99, 0.99 );
setScaleKey( spep_1 + offset_1 + 86, 1, 1.03, 1.03 );
setScaleKey( spep_1 + offset_1 + 88, 1, 1.03, 1.03 );
setScaleKey( spep_1 + offset_1 + 90, 1, 3.78, 3.78 );-- 105
setScaleKey( spep_1 + offset_1 + 91, 1, 3.78, 3.78 );
setScaleKey( spep_1 + offset_1 + 92, 1, 3.6, 3.6 );
setScaleKey( spep_1 + offset_1 + 93, 1, 3.6, 3.6 );
setScaleKey( spep_1 + offset_1 + 94, 1, 3.37, 3.37 );
setScaleKey( spep_1 + offset_1 + 95, 1, 3.37, 3.37 );
setScaleKey( spep_1 + offset_1 + 96, 1, 3.08, 3.08 );
setScaleKey( spep_1 + offset_1 + 97, 1, 3.08, 3.08 );
setScaleKey( spep_1 + offset_1 + 98, 1, 2.74, 2.74 );
setScaleKey( spep_1 + offset_1 + 99, 1, 2.74, 2.74 );
setScaleKey( spep_1 + offset_1 + 100, 1, 2.34, 2.34 );
setScaleKey( spep_1 + offset_1 + 101, 1, 2.34, 2.34 );
setScaleKey( spep_1 + offset_1 + 102, 1, 2.31, 2.31 );
setScaleKey( spep_1 + offset_1 + 103, 1, 2.31, 2.31 );
setScaleKey( spep_1 + offset_1 + 104, 1, 2.29, 2.29 );
setScaleKey( spep_1 + offset_1 + 106, 1, 2.42, 2.42 );-- 108
setScaleKey( spep_1 + offset_1 + 107, 1, 2.42, 2.42 );
setScaleKey( spep_1 + offset_1 + 108, 1, 2.41, 2.41 );
setScaleKey( spep_1 + offset_1 + 109, 1, 2.41, 2.41 );
setScaleKey( spep_1 + offset_1 + 110, 1, 2.4, 2.4 );
setScaleKey( spep_1 + offset_1 + 111, 1, 2.4, 2.4 );
setScaleKey( spep_1 + offset_1 + 112, 1, 2.39, 2.39 );
setScaleKey( spep_1 + offset_1 + 138, 1, 2.39, 2.39 );
setScaleKey( spep_1 + offset_1 + 140, 1, 2.39, 2.39 );
setScaleKey( spep_1 + offset_1 + 174, 1, 2.09, 2.09 );-- 106
setScaleKey( spep_1 + offset_1 + 175, 1, 2.09, 2.09 );
setScaleKey( spep_1 + offset_1 + 176, 1, 2.14, 2.14 );
setScaleKey( spep_1 + offset_1 + 190, 1, 2.14, 2.14 );
setScaleKey( spep_1 + offset_1 + 191, 1, 2.14, 2.14 );
setScaleKey( spep_1 + offset_1 + 192, 1, 2.13, 2.13 );
setScaleKey( spep_1 + offset_1 + 194, 1, 2.13, 2.13 );
setScaleKey( spep_1 + offset_1 + 195, 1, 2.13, 2.13 );
setScaleKey( spep_1 + offset_1 + 196, 1, 2.12, 2.12 );
setScaleKey( spep_1 + offset_1 + 197, 1, 2.12, 2.12 );
setScaleKey( spep_1 + offset_1 + 198, 1, 2.11, 2.11 );
setScaleKey( spep_1 + offset_1 + 199, 1, 2.11, 2.11 );
setScaleKey( spep_1 + offset_1 + 200, 1, 2.1, 2.1 );
setScaleKey( spep_1 + offset_1 + 201, 1, 2.1, 2.1 );
setScaleKey( spep_1 + offset_1 + 202, 1, 2.09, 2.09 );
setScaleKey( spep_1 + offset_1 + 203, 1, 2.09, 2.09 );
setScaleKey( spep_1 + offset_1 + 204, 1, 2.07, 2.07 );
setScaleKey( spep_1 + offset_1 + 205, 1, 2.07, 2.07 );
setScaleKey( spep_1 + offset_1 + 206, 1, 2.06, 2.06 );
setScaleKey( spep_1 + offset_1 + 207, 1, 2.06, 2.06 );
setScaleKey( spep_1 + offset_1 + 208, 1, 2.04, 2.04 );
setScaleKey( spep_1 + offset_1 + 209, 1, 2.04, 2.04 );
setScaleKey( spep_1 + offset_1 + 210, 1, 2.02, 2.02 );
setScaleKey( spep_1 + offset_1 + 211, 1, 2.02, 2.02 );
setScaleKey( spep_1 + offset_1 + 212, 1, 2, 2 );
setScaleKey( spep_1 + offset_1 + 213, 1, 2, 2 );
setScaleKey( spep_1 + offset_1 + 214, 1, 1.98, 1.98 );
setScaleKey( spep_1 + offset_1 + 215, 1, 1.98, 1.98 );
setScaleKey( spep_1 + offset_1 + 216, 1, 1.97, 1.97 );
setScaleKey( spep_1 + offset_1 + 217, 1, 1.97, 1.97 );
setScaleKey( spep_1 + offset_1 + 218, 1, 1.95, 1.95 );
setScaleKey( spep_1 + offset_1 + 219, 1, 1.95, 1.95 );
setScaleKey( spep_1 + offset_1 + 220, 1, 1.94, 1.94 );
setScaleKey( spep_1 + offset_1 + 221, 1, 1.94, 1.94 );
setScaleKey( spep_1 + offset_1 + 222, 1, 1.93, 1.93 );
setScaleKey( spep_1 + offset_1 + 224, 1, 1.93, 1.93 );
setScaleKey( spep_1 + offset_1 + 225, 1, 1.93, 1.93 );
setScaleKey( spep_1 + offset_1 + 226, 1, 1.92, 1.92 );
setScaleKey( spep_1 + offset_1 + 228, 1, 1.92, 1.92 );
setScaleKey( spep_1 + offset_1 + 229, 1, 1.92, 1.92 );
setScaleKey( spep_1 + offset_1 + 234, 1, 1.91, 1.91 );

setRotateKey( spep_1 + offset_1 + 42, 1, 0 );-- 106
setRotateKey( spep_1 + offset_1 + 60, 1, 0 );
setRotateKey( spep_1 + offset_1 + 62, 1, 58.7 );-- 107
setRotateKey( spep_1 + offset_1 + 88, 1, 58.7 );
setRotateKey( spep_1 + offset_1 + 90, 1, 55.6 );-- 105
setRotateKey( spep_1 + offset_1 + 91, 1, 55.6 );
setRotateKey( spep_1 + offset_1 + 92, 1, 56.2 );
setRotateKey( spep_1 + offset_1 + 93, 1, 56.2 );
setRotateKey( spep_1 + offset_1 + 94, 1, 56.8 );
setRotateKey( spep_1 + offset_1 + 95, 1, 56.8 );
setRotateKey( spep_1 + offset_1 + 96, 1, 57.2 );
setRotateKey( spep_1 + offset_1 + 97, 1, 57.2 );
setRotateKey( spep_1 + offset_1 + 98, 1, 57.6 );
setRotateKey( spep_1 + offset_1 + 99, 1, 57.6 );
setRotateKey( spep_1 + offset_1 + 100, 1, 57.9 );
setRotateKey( spep_1 + offset_1 + 101, 1, 57.9 );
setRotateKey( spep_1 + offset_1 + 102, 1, 58.1 );
setRotateKey( spep_1 + offset_1 + 103, 1, 58.1 );
setRotateKey( spep_1 + offset_1 + 104, 1, 58.3 );
setRotateKey( spep_1 + offset_1 + 106, 1, 38.7 );-- 108
setRotateKey( spep_1 + offset_1 + 107, 1, 38.7 );
setRotateKey( spep_1 + offset_1 + 108, 1, 38.8 );
setRotateKey( spep_1 + offset_1 + 109, 1, 38.8 );
setRotateKey( spep_1 + offset_1 + 110, 1, 38.9 );
setRotateKey( spep_1 + offset_1 + 112, 1, 38.9 );
setRotateKey( spep_1 + offset_1 + 113, 1, 38.9 );
setRotateKey( spep_1 + offset_1 + 114, 1, 39 );
setRotateKey( spep_1 + offset_1 + 140, 1, 39 );
setRotateKey( spep_1 + offset_1 + 174, 1, -12 );-- 106
setRotateKey( spep_1 + offset_1 + 234, 1, -12 );

-- ** 音 ** --
--振りかぶる２
SE012 = playSeVer2( spep_1 + 0, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE012,  67 );
SE013 = playSeVer2( spep_1 + 4, 1116, "",spep_1 + 46, 0, 20, -1);
SE014 = playSeVer2( spep_1 + 4, 1278, "",spep_1 + 66, 0, 20, -1);

--振りかぶる３
SE015 = playSeVer2( spep_1 + 30, 1153, "", 0, 18, 0, 0.6);
SE016 = playSeVer2( spep_1 + 36, 1004, "", 0, 0, 0, -1);

--張り手
SE017 = playSeVer2( spep_1 + 52 + 4, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 52 + 4, 1010, "", 0, 0, 0, -1);

--敵地面激突
SE019 = playSeVer2( spep_1 + 96 + 4, 1061, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 96 + 4, 1168, "", spep_1 + 170 + 4, 0, 46, -1);
SE021 = playSeVer2( spep_1 + 96 + 4, 1011, "", 0, 0, 0, -1);

--足振り下ろす
SE022 = playSeVer2( spep_1 + 142 + 4, 1116, "", spep_1 + 188 + 4, 0, 24, -1);
SE023 = playSeVer2( spep_1 + 142 + 4, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 142 + 4, 1153, "", 0, 18, 0, 0.6);

--踏みつけ
SE025 = playSeVer2( spep_1 + 182 + 4, 1061, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 186 + 4, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 186 + 4, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 230 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景
 
-- ** 次の準備 ** --
spep_2 = spep_1 + 230;

------------------------------------------------------
-- フィニッシュ(228F)
------------------------------------------------------
--spep_2 = 0;
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --フィニッシュ ef_003
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 228, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + 228, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 228, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 228, finish, 255 );

-- ** 音 ** --
--口から気出す
SE028 = playSeVer2( spep_2 + 32, 1258, "", spep_2 + 112, 0, 22, -1);
SE029 = playSeVer2( spep_2 + 40, 1027, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 40, 1183, "", spep_2 + 112, 0, 22, -1);

--爆発
SE031 = playSeVer2( spep_2 + 84, 1024, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 84, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 84, 1067, "", 0, 0, 0, -1);
 
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 228 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景
 
-- ** ダメージ表示 ** --
dealDamage( spep_2 + 105 );
endPhase( spep_2 + 228 - 6 );

end