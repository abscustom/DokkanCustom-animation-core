--1027080:ターレス_キルドライバー
--sp_effect_a2_00215
 
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
SP_01 = 161875 --溜め ef_001
SP_02 = 161876 --発射 ef_002
SP_03 = 190002 --ギャン
SP_04 = 1676;--大爆発

--敵側
SP_01r = 161877 --溜め：敵 ef_001r
SP_02r = 161878 --発射：敵 ef_002r

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
 
if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 溜め(236F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01, 236, 0x100, -1, 0, 0, 0 );  --溜め ef_001
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 236, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 236, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 236, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 236 - 2, tame, 255 );
setEffAlphaKey( spep_0 + 236 - 1, tame, 255 );
setEffAlphaKey( spep_0 + 236, tame, 0 );

speff1 = entryEffect( spep_0 + 14, 1505, 0x100, -1, 0, 0, 0, 1390 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 20 + 2, 1018, "", 0, 0, 0, -1);

--画面遷移
SE003 = playSeVer2( spep_0 + 80, 1072, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 114, 1004, "", 0, 0, 0, 0.6);
setPitch( spep_0 + 114, SE004, -400 );
setTimeStretch( SE004, 0.7, 30, 4 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 150, 1130, "", 0, 0, 0, -1);
setPitch( spep_0 + 150, SE005, -800 );
setTimeStretch( SE005, 0.47, 30, 4 );
SE006 = playSeVer2( spep_0 + 188, 1276, "",spep_0 + 246, 0, 10, -1);
setPitch( spep_0 + 188, SE006, -200 );
setTimeStretch( SE006, 0.96, 30, 4 );
SE007 = playSeVer2( spep_0 + 188, 1132, "",spep_0 + 246, 0, 10, -1);
setPitch( spep_0 + 188, SE007, 400 );
setTimeStretch( SE007, 1.27, 30, 4 );
SE008 = playSeVer2( spep_0 + 196, 1262, "",spep_0 + 246, 0, 10, -1);
setPitch( spep_0 + 196, SE008, 300 );
setTimeStretch( SE008, 1.2, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 236 + 2, 0, 0, 0, 0, 210);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_c= spep_0 + 236;

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
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 94;

------------------------------------------------------
-- 発射(159)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
hassya = entryEffectLife( spep_1 + 0, SP_02, 159, 0x100, -1, 0, 0, 0 );  --発射 ef_002
setEffMoveKey( spep_1 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_1 + 159, hassya, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hassya, 1.0, 1.0 );
setEffScaleKey( spep_1 + 159, hassya, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hassya, 0 );
setEffRotateKey( spep_1 + 159, hassya, 0 );
setEffAlphaKey( spep_1 + 0, hassya, 255 );
setEffAlphaKey( spep_1 + 159 - 2, hassya, 255 );
setEffAlphaKey( spep_1 + 159 - 1, hassya, 255 );
setEffAlphaKey( spep_1 + 159, hassya, 0 );

-- ** エフェクト等 ** --
sen = entryEffectLife( spep_1 + 0, 921, 70, 0x80, -1, 0, 0, 0 );  -- 流線
setEffMoveKey( spep_1 + 0, sen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, sen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, sen, 1.5, 1.5 );
setEffScaleKey( spep_1 + 70, sen, 1.5, 1.5 );
setEffRotateKey( spep_1 + 0, sen, 270 );
setEffRotateKey( spep_1 + 70, sen, 270 );
setEffAlphaKey( spep_1 + 0, sen, 255 );
setEffAlphaKey( spep_1 + 70 - 2, sen, 255 );
setEffAlphaKey( spep_1 + 70 - 1, sen, 255 );
setEffAlphaKey( spep_1 + 70, sen, 0 );

shuchusen_1 = entryEffectLife( spep_1 + 0, 906, 70, 0x80, -1, 0, 0, 0 );  -- 集中線
setEffMoveKey( spep_1 + 0, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 159, shuchusen_1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen_1, 1.2, 1.2 );
setEffScaleKey( spep_1 + 159, shuchusen_1, 1.2, 1.2 );
setEffRotateKey( spep_1 + 0, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 159, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 159 - 2, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 159 - 1, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 159, shuchusen_1, 0 );

sen_naname = entryEffectLife( spep_1 + 70, 921, 159, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffMoveKey( spep_1 + 70, sen_naname, 0, 0 , 0 );
setEffMoveKey( spep_1 + 159, sen_naname, 0, 0 , 0 );
setEffScaleKey( spep_1 + 70, sen_naname, 1.0, 1.0 );
setEffScaleKey( spep_1 + 159, sen_naname, 1.0, 1.0 );
setEffRotateKey( spep_1 + 70, sen_naname, 0 );
setEffRotateKey( spep_1 + 159, sen_naname, 0 );
setEffAlphaKey( spep_1 + 70, sen_naname, 255 );
setEffAlphaKey( spep_1 + 159 - 2, sen_naname, 255 );
setEffAlphaKey( spep_1 + 159 - 1, sen_naname, 255 );
setEffAlphaKey( spep_1 + 159, sen_naname, 0 );

-- ** 音 ** --
--気弾発射
SE010 = playSeVer2( spep_1 + 28, 1193, "",spep_1 + 200, 36, 44, -1);
setStartTimeMs( SE010,  867 );
SE011 = playSeVer2( spep_1 + 6, 1146, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 6, 20, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 15, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 159 + 2, 0, 0, 0, 0, 210);       -- ベース暗め　背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
  
  SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE010, 0);
  stopSe( SP_dodge - 12, SE011, 0);
  stopSe( SP_dodge - 12, SE012, 0);
  stopSe( SP_dodge - 12, SE013, 0);

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

-- ** 敵キャラクター ** --
OFFSET_X = -1;
setDisp( spep_1 + OFFSET_X + 74, 1, 1);
setDisp( spep_1 + OFFSET_X + 160, 1, 0);
changeAnime( spep_1 + OFFSET_X + 74, 1, 104 );
changeAnime( spep_1 + OFFSET_X + 134, 1, 108 );

setMoveKey( spep_1 + 74 + OFFSET_X, 1, 246.2, -14.3 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 246.2, -14.3 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 229, -30.5 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 229, -30.5 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 243.9, -14.8 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 243.9, -14.8 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 210.8, -35.1 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 210.8, -35.1 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 241.7, -15.4 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 241.7, -15.4 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 224.6, -23.6 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 224.6, -23.6 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 239.5, -15.9 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 239.5, -15.9 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 230.4, -36.2 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 230.4, -36.2 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 237.3, -16.5 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 237.3, -16.5 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 232.2, -28.7 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 232.2, -28.7 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 235.1, -17 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 235.1, -17 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 226, -33.3 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 226, -33.3 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 232.9, -17.6 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 232.9, -17.6 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 215.8, -25.8 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 215.8, -25.8 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 230.7, -18.1 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 230.7, -18.1 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 221.6, -34.4 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 221.6, -34.4 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 228.5, -18.7 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 228.5, -18.7 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 219.4, -30.9 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 219.4, -30.9 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 226.3, -19.2 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 226.3, -19.2 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 217.2, -31.5 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 217.2, -31.5 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 224.1, -19.8 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 224.1, -19.8 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 211, -32 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 211, -32 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 221.9, -20.3 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 221.9, -20.3 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 208.8, -36.6 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 208.8, -36.6 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 219.7, -20.9 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 219.7, -20.9 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 210.6, -33.1 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 210.6, -33.1 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 217.5, -21.4 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 217.5, -21.4 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 208.4, -33.7 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 208.4, -33.7 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 215.3, -22 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 215.3, -22 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 210.2, -34.3 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 210.2, -34.3 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 211.5, 6 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 211.5, 6 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 206.9, -2 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 206.9, -2 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 218.4, 6 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 218.4, 6 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 213.8, -6 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 213.8, -6 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 225.2, 6 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 225.2, 6 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 220.7, -6 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 220.7, -6 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 232.1, 6 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 232.1, 6 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 227.5, -2 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 227.5, -2 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 239, 6 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 239, 6 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 238.4, -6 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 238.4, -6 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 245.8, 6 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 245.8, 6 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 241.3, -6 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 241.3, -6 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 252.7, 6 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 252.7, 6 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 248.2, -6 , 0 );

setScaleKey( spep_1 + 74 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 75 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 77 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 81 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 83 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 84 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 141 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 142 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 149 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 151 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 152 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 153 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 154 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 157 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 158 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 159 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 160 + OFFSET_X, 1, 1.84, 1.84 );

setRotateKey( spep_1 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 160 + OFFSET_X, 1, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 159;

------------------------------------------------------
-- ギャン (56F)
------------------------------------------------------
gyan = entryEffectLife( spep_2, SP_03 ,56, 0x100, -1, 0, 0, 0); --ギャン
setEffMoveKey( spep_2 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gyan, 0 );
setEffRotateKey( spep_2 + 56, gyan, 0 );
setEffAlphaKey( spep_2 + 0, gyan, 255 );
setEffAlphaKey( spep_2 + 56, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_2 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_2 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_2 + 56, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_2 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_2 + 6, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_2 + 8, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_2 + 10, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_2 + 12, ctgyan, 3, 3 );
setEffScaleKey( spep_2 + 14, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_2 + 16, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_2 + 18, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_2 + 20, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_2 + 22, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_2 + 24, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_2 + 26, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_2 + 28, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_2 + 30, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_2 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_2 + 34, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_2 + 36, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_2 + 38, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_2 + 40, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_2 + 42, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_2 + 44, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_2 + 46, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_2 + 48, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_2 + 50, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_2 + 52, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_2 + 54, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_2 + 56, ctgyan, 4.19, 4.19 );

setEffRotateKey( spep_2 + 0, ctgyan, 0 );
setEffRotateKey( spep_2 + 56, ctgyan, 0 );

setEffAlphaKey( spep_2 + 0, ctgyan, 255 );
setEffAlphaKey( spep_2 + 56, ctgyan, 255 );

-- ** 音 ** --
--ギャン
SE014 = playSeVer2( spep_2 + 0, 1023, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_2 + 55, 0, 0, 16, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 爆発 (190)
------------------------------------------------------
exp = entryEffect( spep_3 + 0, SP_04, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey(spep_3, exp, 0, 0, 0);
setEffMoveKey(spep_3 + 190, exp, 0, 0, 0);
setEffScaleKey(spep_3, exp, 1.2, 1.2);
setEffScaleKey(spep_3 + 190, exp, 1.2, 1.2);
setEffRotateKey(spep_3, exp, 0);
setEffRotateKey(spep_3 + 190, exp, 0);
setEffAlphaKey(spep_3, exp, 255);
setEffAlphaKey(spep_3 + 190, exp, 255);

-- -- ** 音 ** --
-- --爆発予兆
SE015 = playSeVer2( spep_3 + 0, 1184, "",spep_3 + 120, 0, 64, -1);
SE016 = playSeVer2( spep_3 + 37 + 2, 1157, "",spep_3 + 127 + 2, 0, 48, -1);

--爆発
SE017 = playSeVer2( spep_3 + 49 + 4, 1069, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 99 + 4, 1067, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 99 + 4, 1159, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_3 + 150, 60, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 190 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ダメージ表示
dealDamage(spep_3 + 16) ;-- ダメージ表示フレーム
endPhase( spep_3 + 190); -- 終了フレーム

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 溜め(236F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_0 + 0, SP_01r, 236, 0x100, -1, 0, 0, 0 );  --溜め ef_001
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 236, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 236, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 236, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 236 - 2, tame, 255 );
setEffAlphaKey( spep_0 + 236 - 1, tame, 255 );
setEffAlphaKey( spep_0 + 236, tame, 0 );

-- speff1 = entryEffect( spep_0 + 14, 1505, 0x100, -1, 0, 0, 0, 1390 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_0 + 20 + 2, 1018, "", 0, 0, 0, -1);

--画面遷移
SE003 = playSeVer2( spep_0 + 80, 1072, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 114, 1004, "", 0, 0, 0, 0.6);
setPitch( spep_0 + 114, SE004, -400 );
setTimeStretch( SE004, 0.7, 30, 4 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 150, 1130, "", 0, 0, 0, -1);
setPitch( spep_0 + 150, SE005, -800 );
setTimeStretch( SE005, 0.47, 30, 4 );
SE006 = playSeVer2( spep_0 + 188, 1276, "",spep_0 + 246, 0, 10, -1);
setPitch( spep_0 + 188, SE006, -200 );
setTimeStretch( SE006, 0.96, 30, 4 );
SE007 = playSeVer2( spep_0 + 188, 1132, "",spep_0 + 246, 0, 10, -1);
setPitch( spep_0 + 188, SE007, 400 );
setTimeStretch( SE007, 1.27, 30, 4 );
SE008 = playSeVer2( spep_0 + 196, 1262, "",spep_0 + 246, 0, 10, -1);
setPitch( spep_0 + 196, SE008, 300 );
setTimeStretch( SE008, 1.2, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 236 + 2, 0, 0, 0, 0, 210);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_c= spep_0 + 236;

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
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_c + 94;

------------------------------------------------------
-- 発射(159)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
hassya = entryEffectLife( spep_1 + 0, SP_02r, 159, 0x100, -1, 0, 0, 0 );  --発射 ef_002
setEffMoveKey( spep_1 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_1 + 159, hassya, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hassya, -1.0, 1.0 );
setEffScaleKey( spep_1 + 159, hassya, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hassya, 0 );
setEffRotateKey( spep_1 + 159, hassya, 0 );
setEffAlphaKey( spep_1 + 0, hassya, 255 );
setEffAlphaKey( spep_1 + 159 - 2, hassya, 255 );
setEffAlphaKey( spep_1 + 159 - 1, hassya, 255 );
setEffAlphaKey( spep_1 + 159, hassya, 0 );

-- ** エフェクト等 ** --
sen = entryEffectLife( spep_1 + 0, 921, 70, 0x80, -1, 0, 0, 0 );  -- 流線
setEffMoveKey( spep_1 + 0, sen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, sen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, sen, 1.5, 1.5 );
setEffScaleKey( spep_1 + 70, sen, 1.5, 1.5 );
setEffRotateKey( spep_1 + 0, sen, 270 );
setEffRotateKey( spep_1 + 70, sen, 270 );
setEffAlphaKey( spep_1 + 0, sen, 255 );
setEffAlphaKey( spep_1 + 70 - 2, sen, 255 );
setEffAlphaKey( spep_1 + 70 - 1, sen, 255 );
setEffAlphaKey( spep_1 + 70, sen, 0 );

shuchusen_1 = entryEffectLife( spep_1 + 0, 906, 70, 0x80, -1, 0, 0, 0 );  -- 集中線
setEffMoveKey( spep_1 + 0, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 159, shuchusen_1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen_1, 1.2, 1.2 );
setEffScaleKey( spep_1 + 159, shuchusen_1, 1.2, 1.2 );
setEffRotateKey( spep_1 + 0, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 159, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 159 - 2, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 159 - 1, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 159, shuchusen_1, 0 );

sen_naname = entryEffectLife( spep_1 + 70, 921, 159, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffMoveKey( spep_1 + 70, sen_naname, 0, 0 , 0 );
setEffMoveKey( spep_1 + 159, sen_naname, 0, 0 , 0 );
setEffScaleKey( spep_1 + 70, sen_naname, 1.0, 1.0 );
setEffScaleKey( spep_1 + 159, sen_naname, 1.0, 1.0 );
setEffRotateKey( spep_1 + 70, sen_naname, 0 );
setEffRotateKey( spep_1 + 159, sen_naname, 0 );
setEffAlphaKey( spep_1 + 70, sen_naname, 255 );
setEffAlphaKey( spep_1 + 159 - 2, sen_naname, 255 );
setEffAlphaKey( spep_1 + 159 - 1, sen_naname, 255 );
setEffAlphaKey( spep_1 + 159, sen_naname, 0 );


-- ** 音 ** --
--気弾発射
SE010 = playSeVer2( spep_1 + 28, 1193, "",spep_1 + 200, 36, 44, -1);
setStartTimeMs( SE010,  867 );
SE011 = playSeVer2( spep_1 + 6, 1146, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 6, 20, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 15, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 159 + 2, 0, 0, 0, 0, 210);       -- ベース暗め　背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
  
  SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える
    
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE010, 0);
  stopSe( SP_dodge - 12, SE011, 0);
  stopSe( SP_dodge - 12, SE012, 0);
  stopSe( SP_dodge - 12, SE013, 0);

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

-- ** 敵キャラクター ** --
OFFSET_X = -1;
setDisp( spep_1 + OFFSET_X + 74, 1, 1);
setDisp( spep_1 + OFFSET_X + 160, 1, 0);
changeAnime( spep_1 + OFFSET_X + 74, 1, 104 );
changeAnime( spep_1 + OFFSET_X + 134, 1, 108 );

setMoveKey( spep_1 + 74 + OFFSET_X, 1, 246.2, -14.3 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 246.2, -14.3 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 229, -30.5 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 229, -30.5 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 243.9, -14.8 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 243.9, -14.8 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 210.8, -35.1 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 210.8, -35.1 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 241.7, -15.4 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 241.7, -15.4 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 224.6, -23.6 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 224.6, -23.6 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 239.5, -15.9 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 239.5, -15.9 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 230.4, -36.2 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 230.4, -36.2 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 237.3, -16.5 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 237.3, -16.5 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 232.2, -28.7 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 232.2, -28.7 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 235.1, -17 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 235.1, -17 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 226, -33.3 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 226, -33.3 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 232.9, -17.6 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 232.9, -17.6 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 215.8, -25.8 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 215.8, -25.8 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 230.7, -18.1 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 230.7, -18.1 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 221.6, -34.4 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 221.6, -34.4 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 228.5, -18.7 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 228.5, -18.7 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 219.4, -30.9 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 219.4, -30.9 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 226.3, -19.2 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 226.3, -19.2 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 217.2, -31.5 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 217.2, -31.5 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 224.1, -19.8 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 224.1, -19.8 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 211, -32 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 211, -32 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 221.9, -20.3 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 221.9, -20.3 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 208.8, -36.6 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 208.8, -36.6 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 219.7, -20.9 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 219.7, -20.9 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 210.6, -33.1 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 210.6, -33.1 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 217.5, -21.4 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 217.5, -21.4 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 208.4, -33.7 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 208.4, -33.7 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 215.3, -22 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 215.3, -22 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 210.2, -34.3 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 210.2, -34.3 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 211.5, 6 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 211.5, 6 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 206.9, -2 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 206.9, -2 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 218.4, 6 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 218.4, 6 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 213.8, -6 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 213.8, -6 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 225.2, 6 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 225.2, 6 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 220.7, -6 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 220.7, -6 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 232.1, 6 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 232.1, 6 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 227.5, -2 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 227.5, -2 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 239, 6 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 239, 6 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 238.4, -6 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 238.4, -6 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 245.8, 6 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 245.8, 6 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 241.3, -6 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 241.3, -6 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 252.7, 6 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 252.7, 6 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 248.2, -6 , 0 );

setScaleKey( spep_1 + 74 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 75 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 77 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 81 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 83 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_1 + 84 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 141 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 142 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 149 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 151 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 152 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 153 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 154 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 155 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 156 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 157 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 158 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 159 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 160 + OFFSET_X, 1, 1.84, 1.84 );

setRotateKey( spep_1 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 160 + OFFSET_X, 1, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 159;

------------------------------------------------------
-- ギャン (56F)
------------------------------------------------------
gyan = entryEffectLife( spep_2, SP_03 ,56, 0x100, -1, 0, 0, 0); --ギャン
setEffMoveKey( spep_2 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gyan, 0 );
setEffRotateKey( spep_2 + 56, gyan, 0 );
setEffAlphaKey( spep_2 + 0, gyan, 255 );
setEffAlphaKey( spep_2 + 56, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_2 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_2 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_2 + 56, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_2 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_2 + 6, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_2 + 8, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_2 + 10, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_2 + 12, ctgyan, 3, 3 );
setEffScaleKey( spep_2 + 14, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_2 + 16, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_2 + 18, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_2 + 20, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_2 + 22, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_2 + 24, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_2 + 26, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_2 + 28, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_2 + 30, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_2 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_2 + 34, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_2 + 36, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_2 + 38, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_2 + 40, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_2 + 42, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_2 + 44, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_2 + 46, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_2 + 48, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_2 + 50, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_2 + 52, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_2 + 54, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_2 + 56, ctgyan, 4.19, 4.19 );

setEffRotateKey( spep_2 + 0, ctgyan, 0 );
setEffRotateKey( spep_2 + 56, ctgyan, 0 );

setEffAlphaKey( spep_2 + 0, ctgyan, 255 );
setEffAlphaKey( spep_2 + 56, ctgyan, 255 );

-- ** 音 ** --
--ギャン
SE014 = playSeVer2( spep_2 + 0, 1023, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_2 + 55, 0, 0, 16, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 爆発 (190)
------------------------------------------------------
exp = entryEffect( spep_3 + 0, SP_04, 0,  -1,  0,  0,  0);   -- 爆発
setEffMoveKey(spep_3, exp, 0, 0, 0);
setEffMoveKey(spep_3 + 190, exp, 0, 0, 0);
setEffScaleKey(spep_3, exp, 1.2, 1.2);
setEffScaleKey(spep_3 + 190, exp, 1.2, 1.2);
setEffRotateKey(spep_3, exp, 0);
setEffRotateKey(spep_3 + 190, exp, 0);
setEffAlphaKey(spep_3, exp, 255);
setEffAlphaKey(spep_3 + 190, exp, 255);

-- -- ** 音 ** --
-- --爆発予兆
SE015 = playSeVer2( spep_3 + 0, 1184, "",spep_3 + 120, 0, 64, -1);
SE016 = playSeVer2( spep_3 + 37 + 2, 1157, "",spep_3 + 127 + 2, 0, 48, -1);

--爆発
SE017 = playSeVer2( spep_3 + 49 + 4, 1069, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 99 + 4, 1067, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 99 + 4, 1159, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_3 + 150, 60, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 190 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ダメージ表示
dealDamage(spep_3 + 16) ;-- ダメージ表示フレーム
endPhase( spep_3 + 190); -- 終了フレーム
end