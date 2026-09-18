--1026510:URフロスト(最終形態)_カオスビーム
--sp_effect_a2_00209

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
SP_01 = 161711;	--冒頭～格闘	ef_001
SP_02 = 161712;	--冒頭～格闘	ef_001_back
SP_03 = 161715;	--カオスビーム連射～フィニッシュ	ef_002
SP_04 = 161716; --カオスビーム連射～フィニッシュ	ef_002_back

--敵側
SP_01r = 161713; --冒頭～格闘	ef_001_re
SP_02r = 161714; --冒頭～格闘	ef_001_re_back


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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 冒頭～格闘(346 - 6 F)
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
boto = entryEffectLife( spep_0 + 0, SP_01, 346 - 6, 0x100, -1, 0, 0, 0 );  --冒頭～格闘	ef_001
setEffMoveKey( spep_0 + 0, boto, 0, 0 , 0 );
setEffMoveKey( spep_0 + 346 - 6, boto, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, boto, 1.0, 1.0 );
setEffScaleKey( spep_0 + 346 - 6, boto, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boto, 0 );
setEffRotateKey( spep_0 + 346 - 6, boto, 0 );
setEffAlphaKey( spep_0 + 0, boto, 255 );
setEffAlphaKey( spep_0 + 346 - 6 - 2, boto, 255 );
setEffAlphaKey( spep_0 + 346 - 6 - 1, boto, 255 );
setEffAlphaKey( spep_0 + 346 - 6, boto, 0 );

-- ** エフェクト等 ** --
boto_back = entryEffectLife( spep_0 + 0, SP_02, 346 - 6, 0x80, -1, 0, 0, 0 );  --冒頭～格闘	ef_001_back
setEffMoveKey( spep_0 + 0, boto_back, 0, 0 , 0 );
setEffMoveKey( spep_0 + 346 - 6, boto_back, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, boto_back, 1.0, 1.0 );
setEffScaleKey( spep_0 + 346 - 6, boto_back, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boto_back, 0 );
setEffRotateKey( spep_0 + 346 - 6, boto_back, 0 );
setEffAlphaKey( spep_0 + 0, boto_back, 255 );
setEffAlphaKey( spep_0 + 346 - 6 - 2, boto_back, 255 );
setEffAlphaKey( spep_0 + 346 - 6 - 1, boto_back, 255 );
setEffAlphaKey( spep_0 + 346 - 6, boto_back, 0 );

-- ** 顔カットイン ** --
spep_x = spep_0 + 16;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135 - 150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135 - 150, 515.5 , 0 );
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 350, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--顔カットイン
SE002 = playSeVer2( spep_0 + 24 + 1, 1018, "", 0, 0, 0, -1);

--ズームアウト
SE003 = playSeVer2( spep_0 + 98, 1072, "", 0, 0, 0, 0.6);

--突っ込んでくる
SE004 = playSeVer2( spep_0 + 150, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 150, 9, "", 0, 0, 0, -1);
setTimeStretch( SE005, 1.43, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 346 - 6 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE001, 0);
  stopSe( SP_dodge - 12, SE003, 0);
  stopSe( SP_dodge - 12, SE004, 0);
  stopSe( SP_dodge - 12, SE005, 0);
  
  speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
  
  kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
  setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
  setEffAlphaKey( SP_dodge, kaihi1, 255);

  
  pauseAll( SP_dodge, 67);
  
  entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
  endPhase(SP_dodge+10);
  
  do return end
  else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 - 1 + 226, 1, 1 );
setDisp( spep_0 - 1 + 342, 1, 0 );

changeAnime( spep_0 - 1 + 226, 1, 106 );
changeAnime( spep_0 - 1 + 294, 1, 108 );

setMoveKey( spep_0 - 1 + 226, 1, 1.8, 56.4 , 0 );
setMoveKey( spep_0 - 1 + 227, 1, 1.8, 56.4 , 0 );
setMoveKey( spep_0 - 1 + 228, 1, 52.9, 17.8 , 0 );
setMoveKey( spep_0 - 1 + 229, 1, 52.9, 17.8 , 0 );
setMoveKey( spep_0 - 1 + 230, 1, 82.1, 88.8 , 0 );
setMoveKey( spep_0 - 1 + 231, 1, 82.1, 88.8 , 0 );
setMoveKey( spep_0 - 1 + 232, 1, 83.3, 123.3 , 0 );
setMoveKey( spep_0 - 1 + 233, 1, 83.3, 123.3 , 0 );
setMoveKey( spep_0 - 1 + 234, 1, 84.2, 159 , 0 );
setMoveKey( spep_0 - 1 + 235, 1, 84.2, 159 , 0 );
setMoveKey( spep_0 - 1 + 236, 1, 121.1, 176.6 , 0 );
setMoveKey( spep_0 - 1 + 237, 1, 121.1, 176.6 , 0 );
setMoveKey( spep_0 - 1 + 238, 1, 114, 128.3 , 0 );
setMoveKey( spep_0 - 1 + 239, 1, 114, 128.3 , 0 );
setMoveKey( spep_0 - 1 + 240, 1, 106.9, 146 , 0 );
setMoveKey( spep_0 - 1 + 241, 1, 106.9, 146 , 0 );
setMoveKey( spep_0 - 1 + 242, 1, 107.7, 145.6 , 0 );
setMoveKey( spep_0 - 1 + 243, 1, 107.7, 145.6 , 0 );
setMoveKey( spep_0 - 1 + 244, 1, 108.6, 145.2 , 0 );
setMoveKey( spep_0 - 1 + 245, 1, 108.6, 145.2 , 0 );
setMoveKey( spep_0 - 1 + 246, 1, 109.4, 144.9 , 0 );
setMoveKey( spep_0 - 1 + 247, 1, 109.4, 144.9 , 0 );
setMoveKey( spep_0 - 1 + 248, 1, 110.3, 144.5 , 0 );
setMoveKey( spep_0 - 1 + 249, 1, 110.3, 144.5 , 0 );
setMoveKey( spep_0 - 1 + 250, 1, 111.1, 144.2 , 0 );
setMoveKey( spep_0 - 1 + 251, 1, 111.1, 144.2 , 0 );
setMoveKey( spep_0 - 1 + 252, 1, 112, 143.8 , 0 );
setMoveKey( spep_0 - 1 + 253, 1, 112, 143.8 , 0 );
setMoveKey( spep_0 - 1 + 254, 1, 112.8, 143.4 , 0 );
setMoveKey( spep_0 - 1 + 255, 1, 112.8, 143.4 , 0 );
setMoveKey( spep_0 - 1 + 256, 1, 113.7, 143 , 0 );
setMoveKey( spep_0 - 1 + 257, 1, 113.7, 143 , 0 );
setMoveKey( spep_0 - 1 + 258, 1, 114.6, 142.6 , 0 );
setMoveKey( spep_0 - 1 + 259, 1, 114.6, 142.6 , 0 );
setMoveKey( spep_0 - 1 + 260, 1, 115.4, 142.2 , 0 );
setMoveKey( spep_0 - 1 + 261, 1, 115.4, 142.2 , 0 );
setMoveKey( spep_0 - 1 + 262, 1, 116.3, 141.8 , 0 );
setMoveKey( spep_0 - 1 + 263, 1, 116.3, 141.8 , 0 );
setMoveKey( spep_0 - 1 + 264, 1, 117.1, 141.4 , 0 );
setMoveKey( spep_0 - 1 + 265, 1, 117.1, 141.4 , 0 );
setMoveKey( spep_0 - 1 + 266, 1, 117.9, 141 , 0 );
setMoveKey( spep_0 - 1 + 267, 1, 117.9, 141 , 0 );
setMoveKey( spep_0 - 1 + 268, 1, 118.8, 140.5 , 0 );
setMoveKey( spep_0 - 1 + 269, 1, 118.8, 140.5 , 0 );
setMoveKey( spep_0 - 1 + 270, 1, 119.6, 140.1 , 0 );
setMoveKey( spep_0 - 1 + 271, 1, 119.6, 140.1 , 0 );
setMoveKey( spep_0 - 1 + 272, 1, 120.4, 139.7 , 0 );
setMoveKey( spep_0 - 1 + 273, 1, 120.4, 139.7 , 0 );
setMoveKey( spep_0 - 1 + 274, 1, 121.3, 139.2 , 0 );
setMoveKey( spep_0 - 1 + 275, 1, 121.3, 139.2 , 0 );
setMoveKey( spep_0 - 1 + 276, 1, 122.2, 138.8 , 0 );
setMoveKey( spep_0 - 1 + 277, 1, 122.2, 138.8 , 0 );
setMoveKey( spep_0 - 1 + 278, 1, 122.9, 138.3 , 0 );
setMoveKey( spep_0 - 1 + 279, 1, 122.9, 138.3 , 0 );
setMoveKey( spep_0 - 1 + 280, 1, 123.8, 137.9 , 0 );
setMoveKey( spep_0 - 1 + 281, 1, 123.8, 137.9 , 0 );
setMoveKey( spep_0 - 1 + 282, 1, 124.7, 137.4 , 0 );
setMoveKey( spep_0 - 1 + 283, 1, 124.7, 137.4 , 0 );
setMoveKey( spep_0 - 1 + 284, 1, 125.4, 137 , 0 );
setMoveKey( spep_0 - 1 + 285, 1, 125.4, 137 , 0 );
setMoveKey( spep_0 - 1 + 286, 1, 126.3, 136.5 , 0 );
setMoveKey( spep_0 - 1 + 287, 1, 126.3, 136.5 , 0 );
setMoveKey( spep_0 - 1 + 288, 1, 127.1, 136 , 0 );
setMoveKey( spep_0 - 1 + 289, 1, 127.1, 136 , 0 );
setMoveKey( spep_0 - 1 + 290, 1, 127.9, 135.5 , 0 );
setMoveKey( spep_0 - 1 + 291, 1, 127.9, 135.5 , 0 );
setMoveKey( spep_0 - 1 + 292, 1, 128.8, 135 , 0 );
setMoveKey( spep_0 - 1 + 293, 1, 128.8, 135 , 0 );
setMoveKey( spep_0 - 1 + 294, 1, 204.9, 99.9 , 0 );
setMoveKey( spep_0 - 1 + 295, 1, 204.9, 99.9 , 0 );
setMoveKey( spep_0 - 1 + 296, 1, 270.7, 98.8 , 0 );
setMoveKey( spep_0 - 1 + 297, 1, 270.7, 98.8 , 0 );
setMoveKey( spep_0 - 1 + 298, 1, 284.1, 114 , 0 );
setMoveKey( spep_0 - 1 + 299, 1, 284.1, 114 , 0 );
setMoveKey( spep_0 - 1 + 300, 1, 362.8, 45.1 , 0 );
setMoveKey( spep_0 - 1 + 301, 1, 362.8, 45.1 , 0 );
setMoveKey( spep_0 - 1 + 302, 1, 400.8, 58.2 , 0 );
setMoveKey( spep_0 - 1 + 303, 1, 400.8, 58.2 , 0 );
setMoveKey( spep_0 - 1 + 304, 1, 392.1, 7.3 , 0 );
setMoveKey( spep_0 - 1 + 305, 1, 392.1, 7.3 , 0 );
setMoveKey( spep_0 - 1 + 306, 1, 420.7, 26.4 , 0 );
setMoveKey( spep_0 - 1 + 307, 1, 420.7, 26.4 , 0 );
setMoveKey( spep_0 - 1 + 308, 1, 482.8, 27.5 , 0 );
setMoveKey( spep_0 - 1 + 309, 1, 482.8, 27.5 , 0 );
setMoveKey( spep_0 - 1 + 310, 1, 521.8, -19 , 0 );
setMoveKey( spep_0 - 1 + 311, 1, 521.8, -19 , 0 );
setMoveKey( spep_0 - 1 + 312, 1, 558.1, 0.5 , 0 );
setMoveKey( spep_0 - 1 + 313, 1, 558.1, 0.5 , 0 );
setMoveKey( spep_0 - 1 + 314, 1, 600.1, 2 , 0 );
setMoveKey( spep_0 - 1 + 315, 1, 600.1, 2 , 0 );
setMoveKey( spep_0 - 1 + 316, 1, 639.4, 3.5 , 0 );
setMoveKey( spep_0 - 1 + 317, 1, 639.4, 3.5 , 0 );
setMoveKey( spep_0 - 1 + 318, 1, 676.3, 4.9 , 0 );
setMoveKey( spep_0 - 1 + 319, 1, 676.3, 4.9 , 0 );
setMoveKey( spep_0 - 1 + 320, 1, 710.8, 6.4 , 0 );
setMoveKey( spep_0 - 1 + 321, 1, 710.8, 6.4 , 0 );
setMoveKey( spep_0 - 1 + 322, 1, 742.8, 7.9 , 0 );
setMoveKey( spep_0 - 1 + 323, 1, 742.8, 7.9 , 0 );
setMoveKey( spep_0 - 1 + 324, 1, 772.5, 9.4 , 0 );
setMoveKey( spep_0 - 1 + 325, 1, 772.5, 9.4 , 0 );
setMoveKey( spep_0 - 1 + 326, 1, 799.7, 10.9 , 0 );
setMoveKey( spep_0 - 1 + 327, 1, 799.7, 10.9 , 0 );
setMoveKey( spep_0 - 1 + 328, 1, 824.7, 12.3 , 0 );
setMoveKey( spep_0 - 1 + 329, 1, 824.7, 12.3 , 0 );
setMoveKey( spep_0 - 1 + 330, 1, 847.2, 13.8 , 0 );
setMoveKey( spep_0 - 1 + 331, 1, 847.2, 13.8 , 0 );
setMoveKey( spep_0 - 1 + 332, 1, 867.6, 15.3 , 0 );
setMoveKey( spep_0 - 1 + 333, 1, 867.6, 15.3 , 0 );
setMoveKey( spep_0 - 1 + 334, 1, 885.7, 16.7 , 0 );
setMoveKey( spep_0 - 1 + 335, 1, 885.7, 16.7 , 0 );
setMoveKey( spep_0 - 1 + 336, 1, 901.5, 18.2 , 0 );
setMoveKey( spep_0 - 1 + 337, 1, 901.5, 18.2 , 0 );
setMoveKey( spep_0 - 1 + 338, 1, 915.2, 19.8 , 0 );
setMoveKey( spep_0 - 1 + 339, 1, 915.2, 19.8 , 0 );
setMoveKey( spep_0 - 1 + 340, 1, 926.7, 21.2 , 0 );
setMoveKey( spep_0 - 1 + 341, 1, 926.7, 21.2 , 0 );
setMoveKey( spep_0 - 1 + 342, 1, 935.9, 22.7 , 0 );

setScaleKey( spep_0 - 1 + 226, 1, 1.6, 1.6 );
setScaleKey( spep_0 - 1 + 227, 1, 1.6, 1.6 );
setScaleKey( spep_0 - 1 + 228, 1, 1.59, 1.59 );
setScaleKey( spep_0 - 1 + 230, 1, 1.59, 1.59 );
setScaleKey( spep_0 - 1 + 231, 1, 1.59, 1.59 );
setScaleKey( spep_0 - 1 + 232, 1, 1.58, 1.58 );
setScaleKey( spep_0 - 1 + 233, 1, 1.58, 1.58 );
setScaleKey( spep_0 - 1 + 234, 1, 1.57, 1.57 );
setScaleKey( spep_0 - 1 + 236, 1, 1.57, 1.57 );
setScaleKey( spep_0 - 1 + 237, 1, 1.57, 1.57 );
setScaleKey( spep_0 - 1 + 238, 1, 1.56, 1.56 );
setScaleKey( spep_0 - 1 + 240, 1, 1.56, 1.56 );
setScaleKey( spep_0 - 1 + 241, 1, 1.56, 1.56 );
setScaleKey( spep_0 - 1 + 242, 1, 1.55, 1.55 );
setScaleKey( spep_0 - 1 + 244, 1, 1.55, 1.55 );
setScaleKey( spep_0 - 1 + 245, 1, 1.55, 1.55 );
setScaleKey( spep_0 - 1 + 246, 1, 1.54, 1.54 );
setScaleKey( spep_0 - 1 + 247, 1, 1.54, 1.54 );
setScaleKey( spep_0 - 1 + 248, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 250, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 251, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 252, 1, 1.52, 1.52 );
setScaleKey( spep_0 - 1 + 254, 1, 1.52, 1.52 );
setScaleKey( spep_0 - 1 + 255, 1, 1.52, 1.52 );
setScaleKey( spep_0 - 1 + 256, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 258, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 259, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 260, 1, 1.5, 1.5 );
setScaleKey( spep_0 - 1 + 261, 1, 1.5, 1.5 );
setScaleKey( spep_0 - 1 + 262, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 264, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 265, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 266, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 268, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 269, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 270, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 272, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 273, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 274, 1, 1.46, 1.46 );
setScaleKey( spep_0 - 1 + 275, 1, 1.46, 1.46 );
setScaleKey( spep_0 - 1 + 276, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 278, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 279, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 280, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 282, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 283, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 284, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 286, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 287, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 288, 1, 1.42, 1.42 );
setScaleKey( spep_0 - 1 + 289, 1, 1.42, 1.42 );
setScaleKey( spep_0 - 1 + 290, 1, 1.41, 1.41 );
setScaleKey( spep_0 - 1 + 293, 1, 1.41, 1.41 );
setScaleKey( spep_0 - 1 + 294, 1, 1.54, 1.54 );
setScaleKey( spep_0 - 1 + 296, 1, 1.54, 1.54 );
setScaleKey( spep_0 - 1 + 297, 1, 1.54, 1.54 );
setScaleKey( spep_0 - 1 + 298, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 300, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 301, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 302, 1, 1.52, 1.52 );
setScaleKey( spep_0 - 1 + 303, 1, 1.52, 1.52 );
setScaleKey( spep_0 - 1 + 304, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 306, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 307, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 308, 1, 1.5, 1.5 );
setScaleKey( spep_0 - 1 + 309, 1, 1.5, 1.5 );
setScaleKey( spep_0 - 1 + 310, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 312, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 313, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 314, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 315, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 316, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 318, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 319, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 320, 1, 1.46, 1.46 );
setScaleKey( spep_0 - 1 + 321, 1, 1.46, 1.46 );
setScaleKey( spep_0 - 1 + 322, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 324, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 325, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 326, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 328, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 329, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 330, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 331, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 332, 1, 1.42, 1.42 );
setScaleKey( spep_0 - 1 + 334, 1, 1.42, 1.42 );
setScaleKey( spep_0 - 1 + 335, 1, 1.42, 1.42 );
setScaleKey( spep_0 - 1 + 336, 1, 1.41, 1.41 );
setScaleKey( spep_0 - 1 + 337, 1, 1.41, 1.41 );
setScaleKey( spep_0 - 1 + 338, 1, 1.4, 1.4 );
setScaleKey( spep_0 - 1 + 340, 1, 1.4, 1.4 );
setScaleKey( spep_0 - 1 + 341, 1, 1.4, 1.4 );
setScaleKey( spep_0 - 1 + 342, 1, 1.39, 1.39 );

setRotateKey( spep_0 - 1 + 226, 1, -48 );
setRotateKey( spep_0 - 1 + 227, 1, -48 );
setRotateKey( spep_0 - 1 + 228, 1, -47.2 );
setRotateKey( spep_0 - 1 + 229, 1, -47.2 );
setRotateKey( spep_0 - 1 + 230, 1, -44.9 );
setRotateKey( spep_0 - 1 + 231, 1, -44.9 );
setRotateKey( spep_0 - 1 + 232, 1, -41 );
setRotateKey( spep_0 - 1 + 233, 1, -41 );
setRotateKey( spep_0 - 1 + 234, 1, -40.6 );
setRotateKey( spep_0 - 1 + 235, 1, -40.6 );
setRotateKey( spep_0 - 1 + 236, 1, -40.3 );
setRotateKey( spep_0 - 1 + 237, 1, -40.3 );
setRotateKey( spep_0 - 1 + 238, 1, -39.9 );
setRotateKey( spep_0 - 1 + 239, 1, -39.9 );
setRotateKey( spep_0 - 1 + 240, 1, -39.5 );
setRotateKey( spep_0 - 1 + 241, 1, -39.5 );
setRotateKey( spep_0 - 1 + 242, 1, -39.2 );
setRotateKey( spep_0 - 1 + 243, 1, -39.2 );
setRotateKey( spep_0 - 1 + 244, 1, -38.8 );
setRotateKey( spep_0 - 1 + 245, 1, -38.8 );
setRotateKey( spep_0 - 1 + 246, 1, -38.4 );
setRotateKey( spep_0 - 1 + 247, 1, -38.4 );
setRotateKey( spep_0 - 1 + 248, 1, -38.1 );
setRotateKey( spep_0 - 1 + 249, 1, -38.1 );
setRotateKey( spep_0 - 1 + 250, 1, -37.7 );
setRotateKey( spep_0 - 1 + 251, 1, -37.7 );
setRotateKey( spep_0 - 1 + 252, 1, -37.3 );
setRotateKey( spep_0 - 1 + 253, 1, -37.3 );
setRotateKey( spep_0 - 1 + 254, 1, -37 );
setRotateKey( spep_0 - 1 + 255, 1, -37 );
setRotateKey( spep_0 - 1 + 256, 1, -36.6 );
setRotateKey( spep_0 - 1 + 257, 1, -36.6 );
setRotateKey( spep_0 - 1 + 258, 1, -36.2 );
setRotateKey( spep_0 - 1 + 259, 1, -36.2 );
setRotateKey( spep_0 - 1 + 260, 1, -35.9 );
setRotateKey( spep_0 - 1 + 261, 1, -35.9 );
setRotateKey( spep_0 - 1 + 262, 1, -35.5 );
setRotateKey( spep_0 - 1 + 263, 1, -35.5 );
setRotateKey( spep_0 - 1 + 264, 1, -35.1 );
setRotateKey( spep_0 - 1 + 265, 1, -35.1 );
setRotateKey( spep_0 - 1 + 266, 1, -34.8 );
setRotateKey( spep_0 - 1 + 267, 1, -34.8 );
setRotateKey( spep_0 - 1 + 268, 1, -34.4 );
setRotateKey( spep_0 - 1 + 269, 1, -34.4 );
setRotateKey( spep_0 - 1 + 270, 1, -34 );
setRotateKey( spep_0 - 1 + 271, 1, -34 );
setRotateKey( spep_0 - 1 + 272, 1, -33.7 );
setRotateKey( spep_0 - 1 + 273, 1, -33.7 );
setRotateKey( spep_0 - 1 + 274, 1, -33.3 );
setRotateKey( spep_0 - 1 + 275, 1, -33.3 );
setRotateKey( spep_0 - 1 + 276, 1, -32.9 );
setRotateKey( spep_0 - 1 + 277, 1, -32.9 );
setRotateKey( spep_0 - 1 + 278, 1, -32.6 );
setRotateKey( spep_0 - 1 + 279, 1, -32.6 );
setRotateKey( spep_0 - 1 + 280, 1, -32.2 );
setRotateKey( spep_0 - 1 + 281, 1, -32.2 );
setRotateKey( spep_0 - 1 + 282, 1, -31.8 );
setRotateKey( spep_0 - 1 + 283, 1, -31.8 );
setRotateKey( spep_0 - 1 + 284, 1, -31.5 );
setRotateKey( spep_0 - 1 + 285, 1, -31.5 );
setRotateKey( spep_0 - 1 + 286, 1, -31.1 );
setRotateKey( spep_0 - 1 + 287, 1, -31.1 );
setRotateKey( spep_0 - 1 + 288, 1, -30.7 );
setRotateKey( spep_0 - 1 + 289, 1, -30.7 );
setRotateKey( spep_0 - 1 + 290, 1, -30.4 );
setRotateKey( spep_0 - 1 + 291, 1, -30.4 );
setRotateKey( spep_0 - 1 + 292, 1, -30 );
setRotateKey( spep_0 - 1 + 293, 1, -30 );
setRotateKey( spep_0 - 1 + 294, 1, 0 );
setRotateKey( spep_0 - 1 + 295, 1, 0 );
setRotateKey( spep_0 - 1 + 296, 1, 3.1 );
setRotateKey( spep_0 - 1 + 297, 1, 3.1 );
setRotateKey( spep_0 - 1 + 298, 1, 6.1 );
setRotateKey( spep_0 - 1 + 299, 1, 6.1 );
setRotateKey( spep_0 - 1 + 300, 1, 8.9 );
setRotateKey( spep_0 - 1 + 301, 1, 8.9 );
setRotateKey( spep_0 - 1 + 302, 1, 11.7 );
setRotateKey( spep_0 - 1 + 303, 1, 11.7 );
setRotateKey( spep_0 - 1 + 304, 1, 14.4 );
setRotateKey( spep_0 - 1 + 305, 1, 14.4 );
setRotateKey( spep_0 - 1 + 306, 1, 17 );
setRotateKey( spep_0 - 1 + 307, 1, 17 );
setRotateKey( spep_0 - 1 + 308, 1, 19.4 );
setRotateKey( spep_0 - 1 + 309, 1, 19.4 );
setRotateKey( spep_0 - 1 + 310, 1, 21.8 );
setRotateKey( spep_0 - 1 + 311, 1, 21.8 );
setRotateKey( spep_0 - 1 + 312, 1, 24 );
setRotateKey( spep_0 - 1 + 313, 1, 24 );
setRotateKey( spep_0 - 1 + 314, 1, 26.2 );
setRotateKey( spep_0 - 1 + 315, 1, 26.2 );
setRotateKey( spep_0 - 1 + 316, 1, 28.2 );
setRotateKey( spep_0 - 1 + 317, 1, 28.2 );
setRotateKey( spep_0 - 1 + 318, 1, 30.1 );
setRotateKey( spep_0 - 1 + 319, 1, 30.1 );
setRotateKey( spep_0 - 1 + 320, 1, 32 );
setRotateKey( spep_0 - 1 + 321, 1, 32 );
setRotateKey( spep_0 - 1 + 322, 1, 33.7 );
setRotateKey( spep_0 - 1 + 323, 1, 33.7 );
setRotateKey( spep_0 - 1 + 324, 1, 35.3 );
setRotateKey( spep_0 - 1 + 325, 1, 35.3 );
setRotateKey( spep_0 - 1 + 326, 1, 36.8 );
setRotateKey( spep_0 - 1 + 327, 1, 36.8 );
setRotateKey( spep_0 - 1 + 328, 1, 38.3 );
setRotateKey( spep_0 - 1 + 329, 1, 38.3 );
setRotateKey( spep_0 - 1 + 330, 1, 39.6 );
setRotateKey( spep_0 - 1 + 331, 1, 39.6 );
setRotateKey( spep_0 - 1 + 332, 1, 40.8 );
setRotateKey( spep_0 - 1 + 333, 1, 40.8 );
setRotateKey( spep_0 - 1 + 334, 1, 41.9 );
setRotateKey( spep_0 - 1 + 335, 1, 41.9 );
setRotateKey( spep_0 - 1 + 336, 1, 42.9 );
setRotateKey( spep_0 - 1 + 337, 1, 42.9 );
setRotateKey( spep_0 - 1 + 338, 1, 43.8 );
setRotateKey( spep_0 - 1 + 339, 1, 43.8 );
setRotateKey( spep_0 - 1 + 340, 1, 44.5 );
setRotateKey( spep_0 - 1 + 341, 1, 44.5 );
setRotateKey( spep_0 - 1 + 342, 1, 45.2 );

-- ** 音 ** --
--振りかぶる
SE006 = playSeVer2( spep_0 + 200 + 2, 1116, "",spep_0 + 250, 0, 20, -1);
SE007 = playSeVer2( spep_0 + 214 + 2, 1003, "", 0, 0, 0, -1);

--アッパー
SE008 = playSeVer2( spep_0 + 226, 1153, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 226, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE009, 89 );

--飛び上がる
SE010 = playSeVer2( spep_0 + 276, 1117, "",spep_0 + 306, 0, 16, -1);

--尻尾アタック
SE011 = playSeVer2( spep_0 + 290, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 290, 1048, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 298, 1120, "",spep_0 + 354, 0, 14, -5);

-- ** 次の準備 ** --
spep_1 = spep_0 + 346 - 6;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff1 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff1, 1, 1 );
setEffReplaceTexture( speff1, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff1, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen1, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen1, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 90, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- カオスビーム連射～フィニッシュ(374 F)
------------------------------------------------------
-- spep_2 = 0;

-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --カオスビーム連射～フィニッシュ	ef_002
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 374, beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 374, beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 374, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 374, beam, 255 );

beam_back = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --カオスビーム連射～フィニッシュ	ef_002_back
setEffMoveKey( spep_2 + 0, beam_back, 0, 0 , 0 );
setEffMoveKey( spep_2 + 374, beam_back, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam_back, 1.0, 1.0 );
setEffScaleKey( spep_2 + 374, beam_back, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_back, 0 );
setEffRotateKey( spep_2 + 374, beam_back, 0 );
setEffAlphaKey( spep_2 + 0, beam_back, 255 );
setEffAlphaKey( spep_2 + 374, beam_back, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 - 1 + 166, 1, 1 );
setDisp( spep_2 - 1 + 188, 1, 0 );

changeAnime( spep_2 - 1 + 166, 1, 105 );

setMoveKey( spep_2 - 1 + 166, 1, -48, -89.2 , 0 );
setMoveKey( spep_2 - 1 + 167, 1, -48, -89.2 , 0 );
setMoveKey( spep_2 - 1 + 168, 1, -48, -89.2 , 0 );
setMoveKey( spep_2 - 1 + 169, 1, -48, -89.2 , 0 );
setMoveKey( spep_2 - 1 + 170, 1, -48.2, -91.7 , 0 );
setMoveKey( spep_2 - 1 + 171, 1, -48.2, -91.7 , 0 );
setMoveKey( spep_2 - 1 + 172, 1, -46.2, -93.1 , 0 );
setMoveKey( spep_2 - 1 + 173, 1, -46.2, -93.1 , 0 );
setMoveKey( spep_2 - 1 + 174, 1, -44.2, -94.5 , 0 );
setMoveKey( spep_2 - 1 + 175, 1, -44.2, -94.5 , 0 );
setMoveKey( spep_2 - 1 + 176, 1, -42.2, -96.1 , 0 );
setMoveKey( spep_2 - 1 + 177, 1, -42.2, -96.1 , 0 );
setMoveKey( spep_2 - 1 + 178, 1, -40.1, -97.7 , 0 );
setMoveKey( spep_2 - 1 + 179, 1, -40.1, -97.7 , 0 );
setMoveKey( spep_2 - 1 + 180, 1, -38.1, -99.4 , 0 );
setMoveKey( spep_2 - 1 + 181, 1, -38.1, -99.4 , 0 );
setMoveKey( spep_2 - 1 + 182, 1, -36.1, -101.2 , 0 );
setMoveKey( spep_2 - 1 + 183, 1, -36.1, -101.2 , 0 );
setMoveKey( spep_2 - 1 + 184, 1, -34, -103.2 , 0 );
setMoveKey( spep_2 - 1 + 185, 1, -34, -103.2 , 0 );
setMoveKey( spep_2 - 1 + 186, 1, -31.9, -105.2 , 0 );
setMoveKey( spep_2 - 1 + 188, 1, -31.9, -105.2 , 0 );

setScaleKey( spep_2 - 1 + 166, 1, 9.98, 9.98 );
setScaleKey( spep_2 - 1 + 167, 1, 9.98, 9.98 );
setScaleKey( spep_2 - 1 + 168, 1, 9.98, 9.98 );
setScaleKey( spep_2 - 1 + 169, 1, 9.98, 9.98 );
setScaleKey( spep_2 - 1 + 170, 1, 10.01, 10.01 );
setScaleKey( spep_2 - 1 + 171, 1, 10.01, 10.01 );
setScaleKey( spep_2 - 1 + 172, 1, 8.86, 8.86 );
setScaleKey( spep_2 - 1 + 173, 1, 8.86, 8.86 );
setScaleKey( spep_2 - 1 + 174, 1, 7.69, 7.69 );
setScaleKey( spep_2 - 1 + 175, 1, 7.69, 7.69 );
setScaleKey( spep_2 - 1 + 176, 1, 6.52, 6.52 );
setScaleKey( spep_2 - 1 + 177, 1, 6.52, 6.52 );
setScaleKey( spep_2 - 1 + 178, 1, 5.34, 5.34 );
setScaleKey( spep_2 - 1 + 179, 1, 5.34, 5.34 );
setScaleKey( spep_2 - 1 + 180, 1, 4.15, 4.15 );
setScaleKey( spep_2 - 1 + 181, 1, 4.15, 4.15 );
setScaleKey( spep_2 - 1 + 182, 1, 2.96, 2.96 );
setScaleKey( spep_2 - 1 + 183, 1, 2.96, 2.96 );
setScaleKey( spep_2 - 1 + 184, 1, 1.75, 1.75 );
setScaleKey( spep_2 - 1 + 185, 1, 1.75, 1.75 );
setScaleKey( spep_2 - 1 + 186, 1, 0.55, 0.55 );
setScaleKey( spep_2 - 1 + 188, 1, 0.55, 0.55 );

setRotateKey( spep_2 - 1 + 166, 1, -19 );

-- ** 音 ** --
--発射前気弾溜め
SE015 = playSeVer2( spep_2 + 0, 1295, "",spep_2 + 36, 0, 16, -1);
SE016 = playSeVer2( spep_2 + 0, 1282, "",spep_2 + 36, 0, 16, -1);

--気弾１
SE017 = playSeVer2( spep_2 + 20, 1016, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 22, 1401, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 22, 1312, "", 0, 0, 0, -1);


--気弾２
SE023 = playSeVer2( spep_2 + 48, 1016, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 50, 1401, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 50, 1312, "", 0, 0, 0, -1);

--気弾３
SE026 = playSeVer2( spep_2 + 72, 1016, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 74, 1401, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 74, 1312, "", 0, 0, 0, -1);

--気弾４
SE029 = playSeVer2( spep_2 + 100, 1016, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 100, 1401, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 100, 1312, "", 0, 0, 0, -1);

--気弾５
SE020 = playSeVer2( spep_2 + 128, 1016, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 128, 1401, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 128, 1312, "", 0, 0, 0, -1);

--気弾６
SE032 = playSeVer2( spep_2 + 156, 1016, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 156, 1401, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 156, 1312, "", 0, 0, 0, -1);

--連続気弾
SE035 = playSeVer2( spep_2 + 174, 1403, "",spep_2 + 250, 0, 44, -1);
SE036 = playSeVer2( spep_2 + 174, 1406, "",spep_2 + 250, 0, 44, -1);
SE037 = playSeVer2( spep_2 + 182, 1401, "", 0, 0, 0, -1);

--爆発
SE038 = playSeVer2( spep_2 + 192, 1011, "", 0, 0, 0, -1);

--連続気弾
SE039 = playSeVer2( spep_2 + 202, 1401, "", 0, 0, 0, -1);

--爆発
SE040 = playSeVer2( spep_2 + 214, 1024, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 234, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 374 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 260 );
endPhase( spep_2 + 364 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭～格闘(346 - 6 F)
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
boto = entryEffectLife( spep_0 + 0, SP_01r, 346 - 6, 0x100, -1, 0, 0, 0 );  --冒頭～格闘	ef_001_re
setEffMoveKey( spep_0 + 0, boto, 0, 0 , 0 );
setEffMoveKey( spep_0 + 346 - 6, boto, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, boto, 1.0, 1.0 );
setEffScaleKey( spep_0 + 346 - 6, boto, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boto, 0 );
setEffRotateKey( spep_0 + 346 - 6, boto, 0 );
setEffAlphaKey( spep_0 + 0, boto, 255 );
setEffAlphaKey( spep_0 + 346 - 6 - 2, boto, 255 );
setEffAlphaKey( spep_0 + 346 - 6 - 1, boto, 255 );
setEffAlphaKey( spep_0 + 346 - 6, boto, 0 );

-- ** エフェクト等 ** --
boto_back = entryEffectLife( spep_0 + 0, SP_02r, 346 - 6, 0x80, -1, 0, 0, 0 );  --冒頭～格闘	ef_001_re_back
setEffMoveKey( spep_0 + 0, boto_back, 0, 0 , 0 );
setEffMoveKey( spep_0 + 346 - 6, boto_back, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, boto_back, 1.0, 1.0 );
setEffScaleKey( spep_0 + 346 - 6, boto_back, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boto_back, 0 );
setEffRotateKey( spep_0 + 346 - 6, boto_back, 0 );
setEffAlphaKey( spep_0 + 0, boto_back, 255 );
setEffAlphaKey( spep_0 + 346 - 6 - 2, boto_back, 255 );
setEffAlphaKey( spep_0 + 346 - 6 - 1, boto_back, 255 );
setEffAlphaKey( spep_0 + 346 - 6, boto_back, 0 );

-- ** 顔カットイン ** --
spep_x = spep_0 + 16;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135 - 150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135 - 150, 515.5 , 0 );
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
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 350, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--顔カットイン
SE002 = playSeVer2( spep_0 + 24 + 1, 1018, "", 0, 0, 0, -1);

--ズームアウト
SE003 = playSeVer2( spep_0 + 98, 1072, "", 0, 0, 0, 0.6);

--突っ込んでくる
SE004 = playSeVer2( spep_0 + 150, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 150, 9, "", 0, 0, 0, -1);
setTimeStretch( SE005, 1.43, 30, 4 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 346 - 6 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE001, 0);
  stopSe( SP_dodge - 12, SE003, 0);
  stopSe( SP_dodge - 12, SE004, 0);
  stopSe( SP_dodge - 12, SE005, 0);
  
  speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
  
  kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
  setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
  setEffAlphaKey( SP_dodge, kaihi1, 255);

  
  pauseAll( SP_dodge, 67);
  
  entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
  endPhase(SP_dodge+10);
  
  do return end
  else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 - 1 + 226, 1, 1 );
setDisp( spep_0 - 1 + 342, 1, 0 );

changeAnime( spep_0 - 1 + 226, 1, 106 );
changeAnime( spep_0 - 1 + 294, 1, 108 );

setMoveKey( spep_0 - 1 + 226, 1, 1.8, 56.4 , 0 );
setMoveKey( spep_0 - 1 + 227, 1, 1.8, 56.4 , 0 );
setMoveKey( spep_0 - 1 + 228, 1, 52.9, 17.8 , 0 );
setMoveKey( spep_0 - 1 + 229, 1, 52.9, 17.8 , 0 );
setMoveKey( spep_0 - 1 + 230, 1, 82.1, 88.8 , 0 );
setMoveKey( spep_0 - 1 + 231, 1, 82.1, 88.8 , 0 );
setMoveKey( spep_0 - 1 + 232, 1, 83.3, 123.3 , 0 );
setMoveKey( spep_0 - 1 + 233, 1, 83.3, 123.3 , 0 );
setMoveKey( spep_0 - 1 + 234, 1, 84.2, 159 , 0 );
setMoveKey( spep_0 - 1 + 235, 1, 84.2, 159 , 0 );
setMoveKey( spep_0 - 1 + 236, 1, 121.1, 176.6 , 0 );
setMoveKey( spep_0 - 1 + 237, 1, 121.1, 176.6 , 0 );
setMoveKey( spep_0 - 1 + 238, 1, 114, 128.3 , 0 );
setMoveKey( spep_0 - 1 + 239, 1, 114, 128.3 , 0 );
setMoveKey( spep_0 - 1 + 240, 1, 106.9, 146 , 0 );
setMoveKey( spep_0 - 1 + 241, 1, 106.9, 146 , 0 );
setMoveKey( spep_0 - 1 + 242, 1, 107.7, 145.6 , 0 );
setMoveKey( spep_0 - 1 + 243, 1, 107.7, 145.6 , 0 );
setMoveKey( spep_0 - 1 + 244, 1, 108.6, 145.2 , 0 );
setMoveKey( spep_0 - 1 + 245, 1, 108.6, 145.2 , 0 );
setMoveKey( spep_0 - 1 + 246, 1, 109.4, 144.9 , 0 );
setMoveKey( spep_0 - 1 + 247, 1, 109.4, 144.9 , 0 );
setMoveKey( spep_0 - 1 + 248, 1, 110.3, 144.5 , 0 );
setMoveKey( spep_0 - 1 + 249, 1, 110.3, 144.5 , 0 );
setMoveKey( spep_0 - 1 + 250, 1, 111.1, 144.2 , 0 );
setMoveKey( spep_0 - 1 + 251, 1, 111.1, 144.2 , 0 );
setMoveKey( spep_0 - 1 + 252, 1, 112, 143.8 , 0 );
setMoveKey( spep_0 - 1 + 253, 1, 112, 143.8 , 0 );
setMoveKey( spep_0 - 1 + 254, 1, 112.8, 143.4 , 0 );
setMoveKey( spep_0 - 1 + 255, 1, 112.8, 143.4 , 0 );
setMoveKey( spep_0 - 1 + 256, 1, 113.7, 143 , 0 );
setMoveKey( spep_0 - 1 + 257, 1, 113.7, 143 , 0 );
setMoveKey( spep_0 - 1 + 258, 1, 114.6, 142.6 , 0 );
setMoveKey( spep_0 - 1 + 259, 1, 114.6, 142.6 , 0 );
setMoveKey( spep_0 - 1 + 260, 1, 115.4, 142.2 , 0 );
setMoveKey( spep_0 - 1 + 261, 1, 115.4, 142.2 , 0 );
setMoveKey( spep_0 - 1 + 262, 1, 116.3, 141.8 , 0 );
setMoveKey( spep_0 - 1 + 263, 1, 116.3, 141.8 , 0 );
setMoveKey( spep_0 - 1 + 264, 1, 117.1, 141.4 , 0 );
setMoveKey( spep_0 - 1 + 265, 1, 117.1, 141.4 , 0 );
setMoveKey( spep_0 - 1 + 266, 1, 117.9, 141 , 0 );
setMoveKey( spep_0 - 1 + 267, 1, 117.9, 141 , 0 );
setMoveKey( spep_0 - 1 + 268, 1, 118.8, 140.5 , 0 );
setMoveKey( spep_0 - 1 + 269, 1, 118.8, 140.5 , 0 );
setMoveKey( spep_0 - 1 + 270, 1, 119.6, 140.1 , 0 );
setMoveKey( spep_0 - 1 + 271, 1, 119.6, 140.1 , 0 );
setMoveKey( spep_0 - 1 + 272, 1, 120.4, 139.7 , 0 );
setMoveKey( spep_0 - 1 + 273, 1, 120.4, 139.7 , 0 );
setMoveKey( spep_0 - 1 + 274, 1, 121.3, 139.2 , 0 );
setMoveKey( spep_0 - 1 + 275, 1, 121.3, 139.2 , 0 );
setMoveKey( spep_0 - 1 + 276, 1, 122.2, 138.8 , 0 );
setMoveKey( spep_0 - 1 + 277, 1, 122.2, 138.8 , 0 );
setMoveKey( spep_0 - 1 + 278, 1, 122.9, 138.3 , 0 );
setMoveKey( spep_0 - 1 + 279, 1, 122.9, 138.3 , 0 );
setMoveKey( spep_0 - 1 + 280, 1, 123.8, 137.9 , 0 );
setMoveKey( spep_0 - 1 + 281, 1, 123.8, 137.9 , 0 );
setMoveKey( spep_0 - 1 + 282, 1, 124.7, 137.4 , 0 );
setMoveKey( spep_0 - 1 + 283, 1, 124.7, 137.4 , 0 );
setMoveKey( spep_0 - 1 + 284, 1, 125.4, 137 , 0 );
setMoveKey( spep_0 - 1 + 285, 1, 125.4, 137 , 0 );
setMoveKey( spep_0 - 1 + 286, 1, 126.3, 136.5 , 0 );
setMoveKey( spep_0 - 1 + 287, 1, 126.3, 136.5 , 0 );
setMoveKey( spep_0 - 1 + 288, 1, 127.1, 136 , 0 );
setMoveKey( spep_0 - 1 + 289, 1, 127.1, 136 , 0 );
setMoveKey( spep_0 - 1 + 290, 1, 127.9, 135.5 , 0 );
setMoveKey( spep_0 - 1 + 291, 1, 127.9, 135.5 , 0 );
setMoveKey( spep_0 - 1 + 292, 1, 128.8, 135 , 0 );
setMoveKey( spep_0 - 1 + 293, 1, 128.8, 135 , 0 );
setMoveKey( spep_0 - 1 + 294, 1, 204.9, 99.9 , 0 );
setMoveKey( spep_0 - 1 + 295, 1, 204.9, 99.9 , 0 );
setMoveKey( spep_0 - 1 + 296, 1, 270.7, 98.8 , 0 );
setMoveKey( spep_0 - 1 + 297, 1, 270.7, 98.8 , 0 );
setMoveKey( spep_0 - 1 + 298, 1, 284.1, 114 , 0 );
setMoveKey( spep_0 - 1 + 299, 1, 284.1, 114 , 0 );
setMoveKey( spep_0 - 1 + 300, 1, 362.8, 45.1 , 0 );
setMoveKey( spep_0 - 1 + 301, 1, 362.8, 45.1 , 0 );
setMoveKey( spep_0 - 1 + 302, 1, 400.8, 58.2 , 0 );
setMoveKey( spep_0 - 1 + 303, 1, 400.8, 58.2 , 0 );
setMoveKey( spep_0 - 1 + 304, 1, 392.1, 7.3 , 0 );
setMoveKey( spep_0 - 1 + 305, 1, 392.1, 7.3 , 0 );
setMoveKey( spep_0 - 1 + 306, 1, 420.7, 26.4 , 0 );
setMoveKey( spep_0 - 1 + 307, 1, 420.7, 26.4 , 0 );
setMoveKey( spep_0 - 1 + 308, 1, 482.8, 27.5 , 0 );
setMoveKey( spep_0 - 1 + 309, 1, 482.8, 27.5 , 0 );
setMoveKey( spep_0 - 1 + 310, 1, 521.8, -19 , 0 );
setMoveKey( spep_0 - 1 + 311, 1, 521.8, -19 , 0 );
setMoveKey( spep_0 - 1 + 312, 1, 558.1, 0.5 , 0 );
setMoveKey( spep_0 - 1 + 313, 1, 558.1, 0.5 , 0 );
setMoveKey( spep_0 - 1 + 314, 1, 600.1, 2 , 0 );
setMoveKey( spep_0 - 1 + 315, 1, 600.1, 2 , 0 );
setMoveKey( spep_0 - 1 + 316, 1, 639.4, 3.5 , 0 );
setMoveKey( spep_0 - 1 + 317, 1, 639.4, 3.5 , 0 );
setMoveKey( spep_0 - 1 + 318, 1, 676.3, 4.9 , 0 );
setMoveKey( spep_0 - 1 + 319, 1, 676.3, 4.9 , 0 );
setMoveKey( spep_0 - 1 + 320, 1, 710.8, 6.4 , 0 );
setMoveKey( spep_0 - 1 + 321, 1, 710.8, 6.4 , 0 );
setMoveKey( spep_0 - 1 + 322, 1, 742.8, 7.9 , 0 );
setMoveKey( spep_0 - 1 + 323, 1, 742.8, 7.9 , 0 );
setMoveKey( spep_0 - 1 + 324, 1, 772.5, 9.4 , 0 );
setMoveKey( spep_0 - 1 + 325, 1, 772.5, 9.4 , 0 );
setMoveKey( spep_0 - 1 + 326, 1, 799.7, 10.9 , 0 );
setMoveKey( spep_0 - 1 + 327, 1, 799.7, 10.9 , 0 );
setMoveKey( spep_0 - 1 + 328, 1, 824.7, 12.3 , 0 );
setMoveKey( spep_0 - 1 + 329, 1, 824.7, 12.3 , 0 );
setMoveKey( spep_0 - 1 + 330, 1, 847.2, 13.8 , 0 );
setMoveKey( spep_0 - 1 + 331, 1, 847.2, 13.8 , 0 );
setMoveKey( spep_0 - 1 + 332, 1, 867.6, 15.3 , 0 );
setMoveKey( spep_0 - 1 + 333, 1, 867.6, 15.3 , 0 );
setMoveKey( spep_0 - 1 + 334, 1, 885.7, 16.7 , 0 );
setMoveKey( spep_0 - 1 + 335, 1, 885.7, 16.7 , 0 );
setMoveKey( spep_0 - 1 + 336, 1, 901.5, 18.2 , 0 );
setMoveKey( spep_0 - 1 + 337, 1, 901.5, 18.2 , 0 );
setMoveKey( spep_0 - 1 + 338, 1, 915.2, 19.8 , 0 );
setMoveKey( spep_0 - 1 + 339, 1, 915.2, 19.8 , 0 );
setMoveKey( spep_0 - 1 + 340, 1, 926.7, 21.2 , 0 );
setMoveKey( spep_0 - 1 + 341, 1, 926.7, 21.2 , 0 );
setMoveKey( spep_0 - 1 + 342, 1, 935.9, 22.7 , 0 );

setScaleKey( spep_0 - 1 + 226, 1, 1.6, 1.6 );
setScaleKey( spep_0 - 1 + 227, 1, 1.6, 1.6 );
setScaleKey( spep_0 - 1 + 228, 1, 1.59, 1.59 );
setScaleKey( spep_0 - 1 + 230, 1, 1.59, 1.59 );
setScaleKey( spep_0 - 1 + 231, 1, 1.59, 1.59 );
setScaleKey( spep_0 - 1 + 232, 1, 1.58, 1.58 );
setScaleKey( spep_0 - 1 + 233, 1, 1.58, 1.58 );
setScaleKey( spep_0 - 1 + 234, 1, 1.57, 1.57 );
setScaleKey( spep_0 - 1 + 236, 1, 1.57, 1.57 );
setScaleKey( spep_0 - 1 + 237, 1, 1.57, 1.57 );
setScaleKey( spep_0 - 1 + 238, 1, 1.56, 1.56 );
setScaleKey( spep_0 - 1 + 240, 1, 1.56, 1.56 );
setScaleKey( spep_0 - 1 + 241, 1, 1.56, 1.56 );
setScaleKey( spep_0 - 1 + 242, 1, 1.55, 1.55 );
setScaleKey( spep_0 - 1 + 244, 1, 1.55, 1.55 );
setScaleKey( spep_0 - 1 + 245, 1, 1.55, 1.55 );
setScaleKey( spep_0 - 1 + 246, 1, 1.54, 1.54 );
setScaleKey( spep_0 - 1 + 247, 1, 1.54, 1.54 );
setScaleKey( spep_0 - 1 + 248, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 250, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 251, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 252, 1, 1.52, 1.52 );
setScaleKey( spep_0 - 1 + 254, 1, 1.52, 1.52 );
setScaleKey( spep_0 - 1 + 255, 1, 1.52, 1.52 );
setScaleKey( spep_0 - 1 + 256, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 258, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 259, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 260, 1, 1.5, 1.5 );
setScaleKey( spep_0 - 1 + 261, 1, 1.5, 1.5 );
setScaleKey( spep_0 - 1 + 262, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 264, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 265, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 266, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 268, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 269, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 270, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 272, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 273, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 274, 1, 1.46, 1.46 );
setScaleKey( spep_0 - 1 + 275, 1, 1.46, 1.46 );
setScaleKey( spep_0 - 1 + 276, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 278, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 279, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 280, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 282, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 283, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 284, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 286, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 287, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 288, 1, 1.42, 1.42 );
setScaleKey( spep_0 - 1 + 289, 1, 1.42, 1.42 );
setScaleKey( spep_0 - 1 + 290, 1, 1.41, 1.41 );
setScaleKey( spep_0 - 1 + 293, 1, 1.41, 1.41 );
setScaleKey( spep_0 - 1 + 294, 1, 1.54, 1.54 );
setScaleKey( spep_0 - 1 + 296, 1, 1.54, 1.54 );
setScaleKey( spep_0 - 1 + 297, 1, 1.54, 1.54 );
setScaleKey( spep_0 - 1 + 298, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 300, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 301, 1, 1.53, 1.53 );
setScaleKey( spep_0 - 1 + 302, 1, 1.52, 1.52 );
setScaleKey( spep_0 - 1 + 303, 1, 1.52, 1.52 );
setScaleKey( spep_0 - 1 + 304, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 306, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 307, 1, 1.51, 1.51 );
setScaleKey( spep_0 - 1 + 308, 1, 1.5, 1.5 );
setScaleKey( spep_0 - 1 + 309, 1, 1.5, 1.5 );
setScaleKey( spep_0 - 1 + 310, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 312, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 313, 1, 1.49, 1.49 );
setScaleKey( spep_0 - 1 + 314, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 315, 1, 1.48, 1.48 );
setScaleKey( spep_0 - 1 + 316, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 318, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 319, 1, 1.47, 1.47 );
setScaleKey( spep_0 - 1 + 320, 1, 1.46, 1.46 );
setScaleKey( spep_0 - 1 + 321, 1, 1.46, 1.46 );
setScaleKey( spep_0 - 1 + 322, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 324, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 325, 1, 1.45, 1.45 );
setScaleKey( spep_0 - 1 + 326, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 328, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 329, 1, 1.44, 1.44 );
setScaleKey( spep_0 - 1 + 330, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 331, 1, 1.43, 1.43 );
setScaleKey( spep_0 - 1 + 332, 1, 1.42, 1.42 );
setScaleKey( spep_0 - 1 + 334, 1, 1.42, 1.42 );
setScaleKey( spep_0 - 1 + 335, 1, 1.42, 1.42 );
setScaleKey( spep_0 - 1 + 336, 1, 1.41, 1.41 );
setScaleKey( spep_0 - 1 + 337, 1, 1.41, 1.41 );
setScaleKey( spep_0 - 1 + 338, 1, 1.4, 1.4 );
setScaleKey( spep_0 - 1 + 340, 1, 1.4, 1.4 );
setScaleKey( spep_0 - 1 + 341, 1, 1.4, 1.4 );
setScaleKey( spep_0 - 1 + 342, 1, 1.39, 1.39 );

setRotateKey( spep_0 - 1 + 226, 1, -48 );
setRotateKey( spep_0 - 1 + 227, 1, -48 );
setRotateKey( spep_0 - 1 + 228, 1, -47.2 );
setRotateKey( spep_0 - 1 + 229, 1, -47.2 );
setRotateKey( spep_0 - 1 + 230, 1, -44.9 );
setRotateKey( spep_0 - 1 + 231, 1, -44.9 );
setRotateKey( spep_0 - 1 + 232, 1, -41 );
setRotateKey( spep_0 - 1 + 233, 1, -41 );
setRotateKey( spep_0 - 1 + 234, 1, -40.6 );
setRotateKey( spep_0 - 1 + 235, 1, -40.6 );
setRotateKey( spep_0 - 1 + 236, 1, -40.3 );
setRotateKey( spep_0 - 1 + 237, 1, -40.3 );
setRotateKey( spep_0 - 1 + 238, 1, -39.9 );
setRotateKey( spep_0 - 1 + 239, 1, -39.9 );
setRotateKey( spep_0 - 1 + 240, 1, -39.5 );
setRotateKey( spep_0 - 1 + 241, 1, -39.5 );
setRotateKey( spep_0 - 1 + 242, 1, -39.2 );
setRotateKey( spep_0 - 1 + 243, 1, -39.2 );
setRotateKey( spep_0 - 1 + 244, 1, -38.8 );
setRotateKey( spep_0 - 1 + 245, 1, -38.8 );
setRotateKey( spep_0 - 1 + 246, 1, -38.4 );
setRotateKey( spep_0 - 1 + 247, 1, -38.4 );
setRotateKey( spep_0 - 1 + 248, 1, -38.1 );
setRotateKey( spep_0 - 1 + 249, 1, -38.1 );
setRotateKey( spep_0 - 1 + 250, 1, -37.7 );
setRotateKey( spep_0 - 1 + 251, 1, -37.7 );
setRotateKey( spep_0 - 1 + 252, 1, -37.3 );
setRotateKey( spep_0 - 1 + 253, 1, -37.3 );
setRotateKey( spep_0 - 1 + 254, 1, -37 );
setRotateKey( spep_0 - 1 + 255, 1, -37 );
setRotateKey( spep_0 - 1 + 256, 1, -36.6 );
setRotateKey( spep_0 - 1 + 257, 1, -36.6 );
setRotateKey( spep_0 - 1 + 258, 1, -36.2 );
setRotateKey( spep_0 - 1 + 259, 1, -36.2 );
setRotateKey( spep_0 - 1 + 260, 1, -35.9 );
setRotateKey( spep_0 - 1 + 261, 1, -35.9 );
setRotateKey( spep_0 - 1 + 262, 1, -35.5 );
setRotateKey( spep_0 - 1 + 263, 1, -35.5 );
setRotateKey( spep_0 - 1 + 264, 1, -35.1 );
setRotateKey( spep_0 - 1 + 265, 1, -35.1 );
setRotateKey( spep_0 - 1 + 266, 1, -34.8 );
setRotateKey( spep_0 - 1 + 267, 1, -34.8 );
setRotateKey( spep_0 - 1 + 268, 1, -34.4 );
setRotateKey( spep_0 - 1 + 269, 1, -34.4 );
setRotateKey( spep_0 - 1 + 270, 1, -34 );
setRotateKey( spep_0 - 1 + 271, 1, -34 );
setRotateKey( spep_0 - 1 + 272, 1, -33.7 );
setRotateKey( spep_0 - 1 + 273, 1, -33.7 );
setRotateKey( spep_0 - 1 + 274, 1, -33.3 );
setRotateKey( spep_0 - 1 + 275, 1, -33.3 );
setRotateKey( spep_0 - 1 + 276, 1, -32.9 );
setRotateKey( spep_0 - 1 + 277, 1, -32.9 );
setRotateKey( spep_0 - 1 + 278, 1, -32.6 );
setRotateKey( spep_0 - 1 + 279, 1, -32.6 );
setRotateKey( spep_0 - 1 + 280, 1, -32.2 );
setRotateKey( spep_0 - 1 + 281, 1, -32.2 );
setRotateKey( spep_0 - 1 + 282, 1, -31.8 );
setRotateKey( spep_0 - 1 + 283, 1, -31.8 );
setRotateKey( spep_0 - 1 + 284, 1, -31.5 );
setRotateKey( spep_0 - 1 + 285, 1, -31.5 );
setRotateKey( spep_0 - 1 + 286, 1, -31.1 );
setRotateKey( spep_0 - 1 + 287, 1, -31.1 );
setRotateKey( spep_0 - 1 + 288, 1, -30.7 );
setRotateKey( spep_0 - 1 + 289, 1, -30.7 );
setRotateKey( spep_0 - 1 + 290, 1, -30.4 );
setRotateKey( spep_0 - 1 + 291, 1, -30.4 );
setRotateKey( spep_0 - 1 + 292, 1, -30 );
setRotateKey( spep_0 - 1 + 293, 1, -30 );
setRotateKey( spep_0 - 1 + 294, 1, 0 );
setRotateKey( spep_0 - 1 + 295, 1, 0 );
setRotateKey( spep_0 - 1 + 296, 1, 3.1 );
setRotateKey( spep_0 - 1 + 297, 1, 3.1 );
setRotateKey( spep_0 - 1 + 298, 1, 6.1 );
setRotateKey( spep_0 - 1 + 299, 1, 6.1 );
setRotateKey( spep_0 - 1 + 300, 1, 8.9 );
setRotateKey( spep_0 - 1 + 301, 1, 8.9 );
setRotateKey( spep_0 - 1 + 302, 1, 11.7 );
setRotateKey( spep_0 - 1 + 303, 1, 11.7 );
setRotateKey( spep_0 - 1 + 304, 1, 14.4 );
setRotateKey( spep_0 - 1 + 305, 1, 14.4 );
setRotateKey( spep_0 - 1 + 306, 1, 17 );
setRotateKey( spep_0 - 1 + 307, 1, 17 );
setRotateKey( spep_0 - 1 + 308, 1, 19.4 );
setRotateKey( spep_0 - 1 + 309, 1, 19.4 );
setRotateKey( spep_0 - 1 + 310, 1, 21.8 );
setRotateKey( spep_0 - 1 + 311, 1, 21.8 );
setRotateKey( spep_0 - 1 + 312, 1, 24 );
setRotateKey( spep_0 - 1 + 313, 1, 24 );
setRotateKey( spep_0 - 1 + 314, 1, 26.2 );
setRotateKey( spep_0 - 1 + 315, 1, 26.2 );
setRotateKey( spep_0 - 1 + 316, 1, 28.2 );
setRotateKey( spep_0 - 1 + 317, 1, 28.2 );
setRotateKey( spep_0 - 1 + 318, 1, 30.1 );
setRotateKey( spep_0 - 1 + 319, 1, 30.1 );
setRotateKey( spep_0 - 1 + 320, 1, 32 );
setRotateKey( spep_0 - 1 + 321, 1, 32 );
setRotateKey( spep_0 - 1 + 322, 1, 33.7 );
setRotateKey( spep_0 - 1 + 323, 1, 33.7 );
setRotateKey( spep_0 - 1 + 324, 1, 35.3 );
setRotateKey( spep_0 - 1 + 325, 1, 35.3 );
setRotateKey( spep_0 - 1 + 326, 1, 36.8 );
setRotateKey( spep_0 - 1 + 327, 1, 36.8 );
setRotateKey( spep_0 - 1 + 328, 1, 38.3 );
setRotateKey( spep_0 - 1 + 329, 1, 38.3 );
setRotateKey( spep_0 - 1 + 330, 1, 39.6 );
setRotateKey( spep_0 - 1 + 331, 1, 39.6 );
setRotateKey( spep_0 - 1 + 332, 1, 40.8 );
setRotateKey( spep_0 - 1 + 333, 1, 40.8 );
setRotateKey( spep_0 - 1 + 334, 1, 41.9 );
setRotateKey( spep_0 - 1 + 335, 1, 41.9 );
setRotateKey( spep_0 - 1 + 336, 1, 42.9 );
setRotateKey( spep_0 - 1 + 337, 1, 42.9 );
setRotateKey( spep_0 - 1 + 338, 1, 43.8 );
setRotateKey( spep_0 - 1 + 339, 1, 43.8 );
setRotateKey( spep_0 - 1 + 340, 1, 44.5 );
setRotateKey( spep_0 - 1 + 341, 1, 44.5 );
setRotateKey( spep_0 - 1 + 342, 1, 45.2 );

-- ** 音 ** --
--振りかぶる
SE006 = playSeVer2( spep_0 + 200 + 2, 1116, "",spep_0 + 250, 0, 20, -1);
SE007 = playSeVer2( spep_0 + 214 + 2, 1003, "", 0, 0, 0, -1);

--アッパー
SE008 = playSeVer2( spep_0 + 226, 1153, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 226, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE009, 89 );

--飛び上がる
SE010 = playSeVer2( spep_0 + 276, 1117, "",spep_0 + 306, 0, 16, -1);

--尻尾アタック
SE011 = playSeVer2( spep_0 + 290, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 290, 1048, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 298, 1120, "",spep_0 + 354, 0, 14, -5);

-- ** 次の準備 ** --
spep_1 = spep_0 + 346 - 6;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff1 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff1, 1, 1 );
setEffReplaceTexture( speff1, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff1, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen1, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen1, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 90, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- カオスビーム連射～フィニッシュ(374 F)
------------------------------------------------------
-- spep_2 = 0;

-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --カオスビーム連射～フィニッシュ	ef_002
setEffMoveKey( spep_2 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_2 + 374, beam, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_2 + 374, beam, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam, 0 );
setEffRotateKey( spep_2 + 374, beam, 0 );
setEffAlphaKey( spep_2 + 0, beam, 255 );
setEffAlphaKey( spep_2 + 374, beam, 255 );

beam_back = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --カオスビーム連射～フィニッシュ	ef_002_back
setEffMoveKey( spep_2 + 0, beam_back, 0, 0 , 0 );
setEffMoveKey( spep_2 + 374, beam_back, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, beam_back, -1.0, 1.0 );
setEffScaleKey( spep_2 + 374, beam_back, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, beam_back, 0 );
setEffRotateKey( spep_2 + 374, beam_back, 0 );
setEffAlphaKey( spep_2 + 0, beam_back, 255 );
setEffAlphaKey( spep_2 + 374, beam_back, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 - 1 + 166, 1, 1 );
setDisp( spep_2 - 1 + 188, 1, 0 );

changeAnime( spep_2 - 1 + 166, 1, 5 );

setMoveKey( spep_2 - 1 + 166, 1, 48, -89.2 , 0 );
setMoveKey( spep_2 - 1 + 167, 1, 48, -89.2 , 0 );
setMoveKey( spep_2 - 1 + 168, 1, 48, -89.2 , 0 );
setMoveKey( spep_2 - 1 + 169, 1, 48, -89.2 , 0 );
setMoveKey( spep_2 - 1 + 170, 1, 48.2, -91.7 , 0 );
setMoveKey( spep_2 - 1 + 171, 1, 48.2, -91.7 , 0 );
setMoveKey( spep_2 - 1 + 172, 1, 46.2, -93.1 , 0 );
setMoveKey( spep_2 - 1 + 173, 1, 46.2, -93.1 , 0 );
setMoveKey( spep_2 - 1 + 174, 1, 44.2, -94.5 , 0 );
setMoveKey( spep_2 - 1 + 175, 1, 44.2, -94.5 , 0 );
setMoveKey( spep_2 - 1 + 176, 1, 42.2, -96.1 , 0 );
setMoveKey( spep_2 - 1 + 177, 1, 42.2, -96.1 , 0 );
setMoveKey( spep_2 - 1 + 178, 1, 40.1, -97.7 , 0 );
setMoveKey( spep_2 - 1 + 179, 1, 40.1, -97.7 , 0 );
setMoveKey( spep_2 - 1 + 180, 1, 38.1, -99.4 , 0 );
setMoveKey( spep_2 - 1 + 181, 1, 38.1, -99.4 , 0 );
setMoveKey( spep_2 - 1 + 182, 1, 36.1, -101.2 , 0 );
setMoveKey( spep_2 - 1 + 183, 1, 36.1, -101.2 , 0 );
setMoveKey( spep_2 - 1 + 184, 1, 34, -103.2 , 0 );
setMoveKey( spep_2 - 1 + 185, 1, 34, -103.2 , 0 );
setMoveKey( spep_2 - 1 + 186, 1, 31.9, -105.2 , 0 );
setMoveKey( spep_2 - 1 + 188, 1, 31.9, -105.2 , 0 );

setScaleKey( spep_2 - 1 + 166, 1, 9.98, 9.98 );
setScaleKey( spep_2 - 1 + 167, 1, 9.98, 9.98 );
setScaleKey( spep_2 - 1 + 168, 1, 9.98, 9.98 );
setScaleKey( spep_2 - 1 + 169, 1, 9.98, 9.98 );
setScaleKey( spep_2 - 1 + 170, 1, 10.01, 10.01 );
setScaleKey( spep_2 - 1 + 171, 1, 10.01, 10.01 );
setScaleKey( spep_2 - 1 + 172, 1, 8.86, 8.86 );
setScaleKey( spep_2 - 1 + 173, 1, 8.86, 8.86 );
setScaleKey( spep_2 - 1 + 174, 1, 7.69, 7.69 );
setScaleKey( spep_2 - 1 + 175, 1, 7.69, 7.69 );
setScaleKey( spep_2 - 1 + 176, 1, 6.52, 6.52 );
setScaleKey( spep_2 - 1 + 177, 1, 6.52, 6.52 );
setScaleKey( spep_2 - 1 + 178, 1, 5.34, 5.34 );
setScaleKey( spep_2 - 1 + 179, 1, 5.34, 5.34 );
setScaleKey( spep_2 - 1 + 180, 1, 4.15, 4.15 );
setScaleKey( spep_2 - 1 + 181, 1, 4.15, 4.15 );
setScaleKey( spep_2 - 1 + 182, 1, 2.96, 2.96 );
setScaleKey( spep_2 - 1 + 183, 1, 2.96, 2.96 );
setScaleKey( spep_2 - 1 + 184, 1, 1.75, 1.75 );
setScaleKey( spep_2 - 1 + 185, 1, 1.75, 1.75 );
setScaleKey( spep_2 - 1 + 186, 1, 0.55, 0.55 );
setScaleKey( spep_2 - 1 + 188, 1, 0.55, 0.55 );

setRotateKey( spep_2 - 1 + 166, 1, 19 );

-- ** 音 ** --
--発射前気弾溜め
SE015 = playSeVer2( spep_2 + 0, 1295, "",spep_2 + 36, 0, 16, -1);
SE016 = playSeVer2( spep_2 + 0, 1282, "",spep_2 + 36, 0, 16, -1);

--気弾１
SE017 = playSeVer2( spep_2 + 20, 1016, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 22, 1401, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 22, 1312, "", 0, 0, 0, -1);


--気弾２
SE023 = playSeVer2( spep_2 + 48, 1016, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 50, 1401, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 50, 1312, "", 0, 0, 0, -1);

--気弾３
SE026 = playSeVer2( spep_2 + 72, 1016, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 74, 1401, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 74, 1312, "", 0, 0, 0, -1);

--気弾４
SE029 = playSeVer2( spep_2 + 100, 1016, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 100, 1401, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 100, 1312, "", 0, 0, 0, -1);

--気弾５
SE020 = playSeVer2( spep_2 + 128, 1016, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 128, 1401, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 128, 1312, "", 0, 0, 0, -1);

--気弾６
SE032 = playSeVer2( spep_2 + 156, 1016, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 156, 1401, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 156, 1312, "", 0, 0, 0, -1);

--連続気弾
SE035 = playSeVer2( spep_2 + 174, 1403, "",spep_2 + 250, 0, 44, -1);
SE036 = playSeVer2( spep_2 + 174, 1406, "",spep_2 + 250, 0, 44, -1);
SE037 = playSeVer2( spep_2 + 182, 1401, "", 0, 0, 0, -1);

--爆発
SE038 = playSeVer2( spep_2 + 192, 1011, "", 0, 0, 0, -1);

--連続気弾
SE039 = playSeVer2( spep_2 + 202, 1401, "", 0, 0, 0, -1);

--爆発
SE040 = playSeVer2( spep_2 + 214, 1024, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 234, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 374 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 260 );
endPhase( spep_2 + 364 );
end