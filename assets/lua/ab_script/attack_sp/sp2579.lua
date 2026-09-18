--4026920:LR_超フルパワーサイヤ人4孫悟空_龍撃円舞
--sp_effect_b1_00256
--sp2579

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 161986;  --ef_001   開始〜悟空飛び立つまで
SP_02 = 161987;  --ef_002   悟空蹴り〜フィニッシュ 敵の手前に配置
SP_03 = 161988;  --ef_002b  悟空蹴り〜フィニッシュ 敵の後ろに配置

--エフェクト(てき)
SP_01r = 161989;  --ef_001r   開始〜悟空飛び立つまで
SP_02r = 161990;  --ef_002r   悟空蹴り〜フィニッシュ 敵の手前に配置
SP_03r = 161991;  --ef_002br  悟空蹴り〜フィニッシュ 敵の後ろに配置


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
-- 開始〜悟空飛び立つまで(236f)
-------------------------------------------------
MAX_FRAME_0 = 236;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 開始〜悟空飛び立つまで
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- セリフカットイン
-----------------------------
spep_x = spep_0;

-- ** セリフカットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--セリフカットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 208, 0, 122, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 33 );

SE004 = playSeVer2( spep_0 + 6, 1332, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 36, 1333, "",spep_0 + 92, 0, 20, -1);

--土煙
SE002 = playSeVer2( spep_0 + 76, 1378, "",spep_0 + 236, 28, 86, -1);
setStartTimeMs( SE002,  1267 );

SE006 = playSeVer2( spep_0 + 74, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 67 );
SE007 = playSeVer2( spep_0 + 74, 1188, "", 0, 30, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 74, SE007, 68 );

--顔カットイン
--SE003 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);

--画面遷移
SE008 = playSeVer2( spep_0 + 128, 1072, "", 0, 0, 0, 0.6);

--飛んでいく
SE009 = playSeVer2( spep_0 + 180, 1188, "", 0, 12, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 180, SE009, 96 );
setStartTimeMs( SE009,  167 );
SE010 = playSeVer2( spep_0 + 188, 1026, "",spep_0 + 236, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 188, SE010, 87 );
SE011 = playSeVer2( spep_0 + 188, 1068, "",spep_0 + 236, 0, 16, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 200 ; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE001, 0);
  stopSe( SP_dodge - 12, SE002, 0);
  stopSe( SP_dodge - 12, SE006, 0);
  stopSe( SP_dodge - 12, SE007, 0);
  stopSe( SP_dodge - 12, SE008, 0);
  stopSe( SP_dodge - 12, SE009, 0);
  stopSe( SP_dodge - 12, SE010, 0);
  stopSe( SP_dodge - 12, SE011, 0);
  
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
--飛んでいく
SE012 = playSeVer2( spep_0 + 210, 1033, "",spep_0 + 248, 0, 12, -1);
SE013 = playSeVer2( spep_0 + 212, 1182, "",spep_0 + 252, 0, 16, -1);
SE014 = playSeVer2( spep_0 + 212, 1011, "",spep_0 + 252, 0, 16, -1);
SE015 = playSeVer2( spep_0 + 218, 1277, "",spep_0 + 250, 0, 14, 0.6);
setSeVolumeByWorkId( spep_0 + 218, SE015, 122 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --236


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1);


-------------------------------------------------
-- 悟空蹴り〜フィニッシュ(808f)
-------------------------------------------------
MAX_FRAME_2 = 808;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002 悟空蹴り〜フィニッシュ 敵の手前に配置
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_002b 悟空蹴り〜フィニッシュ 敵の後ろに配置
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1--
setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 144 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 66 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 36, -56 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 36, -56 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 197.8, -169 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 197.8, -169 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 199, -166.6 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 199, -166.6 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 198.5, -169.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 198.5, -169.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 205.3, -171.7 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 205.3, -171.7 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 205.2, -171.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 205.2, -171.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 210.6, -178 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 210.6, -178 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 211, -176.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 211, -176.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 217.6, -181.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 217.6, -181.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 216.1, -183.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 216.1, -183.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 224.2, -184.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 224.2, -184.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 221.6, -186.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 221.6, -186.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 229.6, -191.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 229.6, -191.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 229.1, -190.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 229.1, -190.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 233.7, -197.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 233.7, -197.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 237.2, -194.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 237.2, -194.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 240.8, -201.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 240.8, -201.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 242.8, -201.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 242.8, -201.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 245.9, -203.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 245.9, -203.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 206, -183.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 206, -183.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 204.6, -183.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 204.6, -183.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 200.6, -181.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 200.6, -181.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 194, -177.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 194, -177.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 195.5, -177.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 195.5, -177.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 197.1, -177.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 197.1, -177.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 198.5, -177.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 198.5, -177.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 199.8, -177.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 199.8, -177.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 201, -177.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 201, -177.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 202.1, -177.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 202.1, -177.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 203.1, -177.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 203.1, -177.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 204, -177.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 204, -177.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 204.8, -177.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 204.8, -177.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 205.6, -177.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 205.6, -177.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 206.2, -177.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 206.2, -177.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 206.7, -177.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 206.7, -177.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 207.2, -177.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 207.2, -177.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 207.5, -177.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 207.5, -177.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 207.8, -177.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 207.8, -177.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 207.9, -177.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 207.9, -177.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 208, -177.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 208, -177.9 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.54, 1.54 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -20 );

--敵の動き2--
setDisp( spep_2 + 204 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 294 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 212 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 222 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 230 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 240 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 248 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 258 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 266 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 276 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 284 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 290 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 204 + OFFSET_X, 1, 72.9, -38.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 72.9, -38.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 72.4, -38.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 72.4, -38.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 76.5, -40.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 76.5, -40.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 74.9, -37.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 74.9, -37.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 118.8, -20.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 118.8, -20.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 121, -19.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 121, -19.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 137.3, -18.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 137.3, -18.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 137.6, -18.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 137.6, -18.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 143.1, -19.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 143.1, -19.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 83.8, -36.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 83.8, -36.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 87.1, -40.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 87.1, -40.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 88, -37.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 88, -37.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 88.4, -40.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 88.4, -40.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 128.7, -17.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 128.7, -17.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 135, -21.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 135, -21.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 147.4, -16.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 147.4, -16.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 151.7, -19.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 151.7, -19.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 155.8, -17 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 155.8, -17 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 95.2, -38.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 95.2, -38.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 100.7, -39.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 100.7, -39.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 98.5, -37.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 98.5, -37.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 103.4, -39 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 103.4, -39 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 139, -18.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 139, -18.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 148.4, -21 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 148.4, -21 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 159.3, -16 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 159.3, -16 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 163.1, -19.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 163.1, -19.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 166.1, -15.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 166.1, -15.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 109.6, -40.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 109.6, -40.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 110.1, -37.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 110.1, -37.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 114.1, -38.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 114.1, -38.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 112.9, -37.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 112.9, -37.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 155.4, -20.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 155.4, -20.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 157.5, -18.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 157.5, -18.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 172.4, -20 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 172.4, -20 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 177.7, -15.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 177.7, -15.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 177.8, -20.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 177.8, -20.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 123.1, -36.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 123.1, -36.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 124.2, -41 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 124.2, -41 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 122.1, -38.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 122.1, -38.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 127.7, -41.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 127.7, -41.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 165.6, -18.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 165.6, -18.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 186.6, -20.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 186.6, -20.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 186.8, -17 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 186.8, -17 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 130.9, -41.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 130.9, -41.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 131.3, -37 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 131.3, -37 , 0 );

setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.43, 1.43 );

setRotateKey( spep_2 + 204 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -29.9 );

--敵の動き3--
setDisp( spep_2 + 336 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 457 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 358 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 414 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 336 + OFFSET_X, 1, 88.1, 1.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 88.1, 1.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 99.5, 0 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 99.5, 0 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 109.7, -1.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 109.7, -1.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 118.7, -3.2 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 118.7, -3.2 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 126.5, -4.5 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 126.5, -4.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 133.1, -5.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 133.1, -5.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 138.5, -6.5 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 138.5, -6.5 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 142.7, -7.2 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 142.7, -7.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 145.7, -7.7 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 145.7, -7.7 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 147.5, -8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 147.5, -8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 148.1, -8 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 148.1, -8 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 239.2, -24.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 239.2, -24.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 212.1, -22.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 212.1, -22.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 228.2, -19.9 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 228.2, -19.9 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 220.1, -10.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 220.1, -10.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 218.1, -12.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 218.1, -12.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 211.8, -20.1 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 211.8, -20.1 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 224.7, -20.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 224.7, -20.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 218.1, -9.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 218.1, -9.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 216.1, -10.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 216.1, -10.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 218.1, -20.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 218.1, -20.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 218.1, -14.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 218.1, -14.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 214.1, -10.1 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 214.1, -10.1 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 298, -40 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 298, -40 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 302.3, -45.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 302.3, -45.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 323.9, -48.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 323.9, -48.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 375.1, -58.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 375.1, -58.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 453.9, -68.9 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 453.9, -68.9 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 534.3, -85 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 534.3, -85 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 593.6, -93 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 593.6, -93 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 639.5, -102.1 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 639.5, -102.1 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 669, -105.1 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 669, -105.1 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 690.8, -111.2 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 690.8, -111.2 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 706.9, -111.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 706.9, -111.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 714.6, -112.8 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 714.6, -112.8 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 717.1, -113.3 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 717.1, -113.3 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 25.5, 130.1 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 25.5, 130.1 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 26.5, 121.1 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 26.5, 121.1 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 29.8, 90.3 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 29.8, 90.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 36.5, 28.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 36.5, 28.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 48.3, -79.7 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 48.3, -79.7 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 68.8, -269.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 68.8, -269.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 105.8, -608.3 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 105.8, -608.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 136.5, -892.8 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 136.5, -892.8 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 162, -1134.7 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 162, -1134.7 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 187.8, -1381.7 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 187.8, -1381.7 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 215.9, -1652.5 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 215.9, -1652.5 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 243.6, -1921.2 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 243.6, -1921.2 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 267.7, -2153.2 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 267.7, -2153.2 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 288.2, -2349.5 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 288.2, -2349.5 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 305.3, -2512.1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 305.3, -2512.1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 319.3, -2643.7 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 319.3, -2643.7 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 330.3, -2747.7 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 330.3, -2747.7 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 339, -2828.1 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 339, -2828.1 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 345.6, -2888.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 345.6, -2888.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 350.6, -2934.9 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 350.6, -2934.9 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 354.7, -2972.4 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 354.7, -2972.4 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 363, -3066.8 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 363, -3066.8 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 371.3, -3161.1 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 379.5, -3255.4 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 387.7, -3349.7 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 396, -3444.1 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 404.3, -3538.4 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 412.4, -3632.7 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 420.7, -3727.1 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 428.9, -3821.4 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 437.1, -3915.7 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 445.3, -4010 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 453.5, -4104.3 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 461.7, -4198.6 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 469.8, -4292.9 , 0 );

setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 8.09, 8.09 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 8.09, 8.09 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 8.59, 8.59 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 8.59, 8.59 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 8.99, 8.99 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 8.99, 8.99 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 9.3, 9.3 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 9.3, 9.3 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 9.55, 9.55 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 9.55, 9.55 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 9.74, 9.74 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 9.74, 9.74 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 10.23, 10.23 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 10.23, 10.23 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 10.47, 10.47 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 10.7, 10.7 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 10.94, 10.94 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 11.17, 11.17 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 11.4, 11.4 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 11.64, 11.64 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 11.87, 11.87 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 12.11, 12.11 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 12.34, 12.34 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 12.57, 12.57 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 12.81, 12.81 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 13.04, 13.04 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 13.28, 13.28 );

setRotateKey( spep_2 + 336 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, 90 );

--敵の動き4--
--setDisp( spep_2 + 484 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 524 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 484 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 520 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 484 + OFFSET_X, 1, -475.7, 56.2 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -475.7, 56.2 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -399.8, 18.2 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -399.8, 18.2 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -363.4, 0 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -363.4, 0 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -337.9, -12.8 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -337.9, -12.8 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -318.3, -22.6 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -318.3, -22.6 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -302.6, -30.5 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -302.6, -30.5 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -289.6, -37 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -289.6, -37 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -278.8, -42.4 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -278.8, -42.4 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -269.7, -47 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -269.7, -47 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -262, -50.9 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -262, -50.9 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -255.6, -54.1 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -255.6, -54.1 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -250.2, -56.8 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -250.2, -56.8 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -245.8, -59 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -245.8, -59 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -242.3, -60.8 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -242.3, -60.8 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -239.6, -62.2 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -239.6, -62.2 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -237.7, -63.2 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -237.7, -63.2 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -236.4, -63.8 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -236.4, -63.8 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -236, -64.1 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -236, -64.1 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -356, -144.1 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -356, -144.1 , 0 );

setScaleKey( spep_2 + 484 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 484 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 519 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 520 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 484 + OFFSET_X , 1, 2, 0, 0, 0, 0.0);
setBlendColor( spep_2 + 520 + OFFSET_X , 1, 2, 0.75, 0.46, 0.22, 0.6);
setBlendColor( spep_2 + 523 + OFFSET_X , 1, 2, 0.75, 0.46, 0.22, 0.6);
setBlendColor( spep_2 + 524 + OFFSET_X , 1, 2, 0, 0, 0, 0.0);

-- ** 音 ** --
--飛び込んでくる
SE017 = playSeVer2( spep_1 + 92, 1116, "",spep_2 + 78, 0, 46, -1);
SE018 = playSeVer2( spep_1 + 92, 1117, "",spep_2 + 90, 0, 28, -1);
SE019 = playSeVer2( spep_1 + 92, 1258, "",spep_2 + 88, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 92, SE019, 85 );

--飛び蹴り
SE020 = playSeVer2( spep_2 + 58, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE020, 72 );
SE021 = playSeVer2( spep_2 + 62, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 62, 1359, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 66, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 66, 1188, "",spep_2 + 168, 0, 72, -1);

--体勢整える
SE025 = playSeVer2( spep_2 + 118, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE025, 68 );

--ラッシュ
SE026 = playSeVer2( spep_2 + 142, 1009, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 142, 1110, "",spep_2 + 172, 0, 14, -1);
SE028 = playSeVer2( spep_2 + 150, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE028, 87 );
SE029 = playSeVer2( spep_2 + 160, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE029, 120 );
SE030 = playSeVer2( spep_2 + 162, 1110, "",spep_2 + 192, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 162, SE030, 81 );
SE031 = playSeVer2( spep_2 + 170, 1010, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 180, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE032, 79 );
SE033 = playSeVer2( spep_2 + 180, 1009, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 188, 1110, "",spep_2 + 218, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 188, SE034, 73 );
SE035 = playSeVer2( spep_2 + 194, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE035, 145 );
SE036 = playSeVer2( spep_2 + 198, 1153, "",spep_2 + 226, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 198, SE036, 59 );
SE037 = playSeVer2( spep_2 + 206, 1010, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 218, 1010, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 222, 1110, "",spep_2 + 252, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 222, SE039, 79 );
SE040 = playSeVer2( spep_2 + 228, 1000, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 228, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE041, 62 );
SE042 = playSeVer2( spep_2 + 240, 1110, "",spep_2 + 270, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 240, SE042, 88 );
SE043 = playSeVer2( spep_2 + 240, 1010, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 248, 1000, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 250, 1010, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 262, 1153, "",spep_2 + 292, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 262, SE046, 60 );
SE047 = playSeVer2( spep_2 + 262, 1010, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 274, 1110, "",spep_2 + 304, 0, 14, -1);
SE049 = playSeVer2( spep_2 + 274, 1010, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 284, 1000, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 284, 1010, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 290, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE053 = playSeVer2( spep_2 + 304, 1116, "",spep_2 + 350, 0, 22, -1);
SE054 = playSeVer2( spep_2 + 312, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 312, SE054, -600 );
setTimeStretch( SE054, 0.6, 30, 4 );

--蹴り飛ばす
SE055 = playSeVer2( spep_2 + 354, 1003, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 360, 1187, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 360, 1153, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 360, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE059 = playSeVer2( spep_2 + 380, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 380, SE059, 61 );

--画面遷移
SE060 = playSeVer2( spep_2 + 412, 1232, "", 0, 0, 0, -1);

--向かってくる
SE061 = playSeVer2( spep_2 + 422, 1117, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 422, 44, "", 0, 0, 0, -1);

--瞬間移動
SE063 = playSeVer2( spep_2 + 470, 1109, "", 0, 0, 0, -1);

--連続気弾
SE064 = playSeVer2( spep_2 + 514, 1406, "",spep_2 + 640, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 514, SE064, 130 );
SE065 = playSeVer2( spep_2 + 514, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 514, SE065, 120 );
SE066 = playSeVer2( spep_2 + 528, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 528, SE066, 95 );
SE067 = playSeVer2( spep_2 + 540, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 540, SE067, 120 );
SE068 = playSeVer2( spep_2 + 554, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 554, SE068, 111 );
SE069 = playSeVer2( spep_2 + 570, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 570, SE069, 105 );
SE070 = playSeVer2( spep_2 + 582, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 582, SE070, 100 );
SE071 = playSeVer2( spep_2 + 594, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 594, SE071, 120 );

--爆発
SE072 = playSeVer2( spep_2 + 594, 1023, "", 0, 0, 0, -1);

--連続気弾
SE073 = playSeVer2( spep_2 + 608, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 608, SE073, 67 );

--爆発
SE074 = playSeVer2( spep_2 + 608, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 608, SE074, 79 );

--連続気弾
SE075 = playSeVer2( spep_2 + 620, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 620, SE075, 53 );
SE076 = playSeVer2( spep_2 + 632, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 632, SE076, 42 );

--爆発
SE077 = playSeVer2( spep_2 + 632, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 632, SE077, 70 );
SE078 = playSeVer2( spep_2 + 644, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 644, SE078, 72 );
SE079 = playSeVer2( spep_2 + 674, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 674, SE079, 68 );
SE080 = playSeVer2( spep_2 + 678, 1067, "", 0, 0, 0, -1);

--着地
SE081 = playSeVer2( spep_2 + 744, 63, "",spep_2 + 784, 0, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 744, SE081, 68 );
SE082 = playSeVer2( spep_2 + 762, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 762, SE082, 186 );
SE083 = playSeVer2( spep_2 + 770, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 770, SE083, 216 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 676); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 808f - 2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開始〜悟空飛び立つまで(236f)
-------------------------------------------------
MAX_FRAME_0 = 236;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001 開始〜悟空飛び立つまで
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- セリフカットイン
-----------------------------
spep_x = spep_0;

-- ** セリフカットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--セリフカットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 208, 0, 122, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 33 );

SE004 = playSeVer2( spep_0 + 6, 1332, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 36, 1333, "",spep_0 + 92, 0, 20, -1);

--土煙
SE002 = playSeVer2( spep_0 + 76, 1378, "",spep_0 + 236, 28, 86, -1);
setStartTimeMs( SE002,  1267 );

SE006 = playSeVer2( spep_0 + 74, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 67 );
SE007 = playSeVer2( spep_0 + 74, 1188, "", 0, 30, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 74, SE007, 68 );

--顔カットイン
--SE003 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);

--画面遷移
SE008 = playSeVer2( spep_0 + 128, 1072, "", 0, 0, 0, 0.6);

--飛んでいく
SE009 = playSeVer2( spep_0 + 180, 1188, "", 0, 12, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 180, SE009, 96 );
setStartTimeMs( SE009,  167 );
SE010 = playSeVer2( spep_0 + 188, 1026, "",spep_0 + 236, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 188, SE010, 87 );
SE011 = playSeVer2( spep_0 + 188, 1068, "",spep_0 + 236, 0, 16, -1);

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 200 ; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE001, 0);
  stopSe( SP_dodge - 12, SE002, 0);
  stopSe( SP_dodge - 12, SE006, 0);
  stopSe( SP_dodge - 12, SE007, 0);
  stopSe( SP_dodge - 12, SE008, 0);
  stopSe( SP_dodge - 12, SE009, 0);
  stopSe( SP_dodge - 12, SE010, 0);
  stopSe( SP_dodge - 12, SE011, 0);
  
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
--飛んでいく
SE012 = playSeVer2( spep_0 + 210, 1033, "",spep_0 + 248, 0, 12, -1);
SE013 = playSeVer2( spep_0 + 212, 1182, "",spep_0 + 252, 0, 16, -1);
SE014 = playSeVer2( spep_0 + 212, 1011, "",spep_0 + 252, 0, 16, -1);
SE015 = playSeVer2( spep_0 + 218, 1277, "",spep_0 + 250, 0, 14, 0.6);
setSeVolumeByWorkId( spep_0 + 218, SE015, 122 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --236


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1);


-------------------------------------------------
-- 悟空蹴り〜フィニッシュ(808f)
-------------------------------------------------
MAX_FRAME_2 = 808;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002 悟空蹴り〜フィニッシュ 敵の手前に配置
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0); -- ef_002b 悟空蹴り〜フィニッシュ 敵の後ろに配置
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1--
setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 144 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 66 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 36, -56 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 36, -56 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 197.8, -169 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 197.8, -169 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 199, -166.6 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 199, -166.6 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 198.5, -169.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 198.5, -169.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 205.3, -171.7 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 205.3, -171.7 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 205.2, -171.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 205.2, -171.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 210.6, -178 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 210.6, -178 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 211, -176.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 211, -176.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 217.6, -181.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 217.6, -181.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 216.1, -183.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 216.1, -183.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 224.2, -184.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 224.2, -184.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 221.6, -186.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 221.6, -186.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 229.6, -191.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 229.6, -191.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 229.1, -190.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 229.1, -190.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 233.7, -197.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 233.7, -197.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 237.2, -194.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 237.2, -194.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 240.8, -201.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 240.8, -201.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 242.8, -201.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 242.8, -201.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 245.9, -203.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 245.9, -203.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 206, -183.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 206, -183.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 204.6, -183.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 204.6, -183.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 200.6, -181.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 200.6, -181.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 194, -177.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 194, -177.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 195.5, -177.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 195.5, -177.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 197.1, -177.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 197.1, -177.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 198.5, -177.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 198.5, -177.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 199.8, -177.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 199.8, -177.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 201, -177.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 201, -177.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 202.1, -177.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 202.1, -177.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 203.1, -177.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 203.1, -177.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 204, -177.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 204, -177.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 204.8, -177.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 204.8, -177.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 205.6, -177.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 205.6, -177.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 206.2, -177.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 206.2, -177.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 206.7, -177.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 206.7, -177.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 207.2, -177.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 207.2, -177.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 207.5, -177.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 207.5, -177.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 207.8, -177.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 207.8, -177.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 207.9, -177.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 207.9, -177.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 208, -177.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 208, -177.9 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.54, 1.54 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -20 );

--敵の動き2--
setDisp( spep_2 + 204 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 294 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 212 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 222 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 230 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 240 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 248 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 258 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 266 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 276 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 284 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 290 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 204 + OFFSET_X, 1, 72.9, -38.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 72.9, -38.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 72.4, -38.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 72.4, -38.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 76.5, -40.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 76.5, -40.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 74.9, -37.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 74.9, -37.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 118.8, -20.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 118.8, -20.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 121, -19.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 121, -19.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 137.3, -18.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 137.3, -18.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 137.6, -18.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 137.6, -18.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 143.1, -19.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 143.1, -19.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 83.8, -36.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 83.8, -36.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 87.1, -40.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 87.1, -40.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 88, -37.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 88, -37.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 88.4, -40.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 88.4, -40.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 128.7, -17.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 128.7, -17.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 135, -21.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 135, -21.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 147.4, -16.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 147.4, -16.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 151.7, -19.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 151.7, -19.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 155.8, -17 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 155.8, -17 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 95.2, -38.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 95.2, -38.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 100.7, -39.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 100.7, -39.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 98.5, -37.9 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 98.5, -37.9 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 103.4, -39 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 103.4, -39 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 139, -18.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 139, -18.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 148.4, -21 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 148.4, -21 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 159.3, -16 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 159.3, -16 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 163.1, -19.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 163.1, -19.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 166.1, -15.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 166.1, -15.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 109.6, -40.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 109.6, -40.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 110.1, -37.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 110.1, -37.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 114.1, -38.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 114.1, -38.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 112.9, -37.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 112.9, -37.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 155.4, -20.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 155.4, -20.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 157.5, -18.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 157.5, -18.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 172.4, -20 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 172.4, -20 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 177.7, -15.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 177.7, -15.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 177.8, -20.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 177.8, -20.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 123.1, -36.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 123.1, -36.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 124.2, -41 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 124.2, -41 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 122.1, -38.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 122.1, -38.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 127.7, -41.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 127.7, -41.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 165.6, -18.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 165.6, -18.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 186.6, -20.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 186.6, -20.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 186.8, -17 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 186.8, -17 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 130.9, -41.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 130.9, -41.5 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 131.3, -37 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 131.3, -37 , 0 );

setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.43, 1.43 );

setRotateKey( spep_2 + 204 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -29.9 );

--敵の動き3--
setDisp( spep_2 + 336 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 457 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 358 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 414 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 336 + OFFSET_X, 1, 88.1, 1.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 88.1, 1.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 99.5, 0 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 99.5, 0 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 109.7, -1.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 109.7, -1.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 118.7, -3.2 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 118.7, -3.2 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 126.5, -4.5 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 126.5, -4.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 133.1, -5.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 133.1, -5.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 138.5, -6.5 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 138.5, -6.5 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 142.7, -7.2 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 142.7, -7.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 145.7, -7.7 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 145.7, -7.7 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 147.5, -8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 147.5, -8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 148.1, -8 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 148.1, -8 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 239.2, -24.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 239.2, -24.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 212.1, -22.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 212.1, -22.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 228.2, -19.9 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 228.2, -19.9 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 220.1, -10.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 220.1, -10.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 218.1, -12.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 218.1, -12.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 211.8, -20.1 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 211.8, -20.1 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 224.7, -20.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 224.7, -20.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 218.1, -9.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 218.1, -9.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 216.1, -10.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 216.1, -10.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 218.1, -20.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 218.1, -20.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 218.1, -14.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 218.1, -14.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 214.1, -10.1 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 214.1, -10.1 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 298, -40 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 298, -40 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 302.3, -45.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 302.3, -45.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 323.9, -48.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 323.9, -48.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 375.1, -58.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 375.1, -58.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 453.9, -68.9 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 453.9, -68.9 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 534.3, -85 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 534.3, -85 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 593.6, -93 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 593.6, -93 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 639.5, -102.1 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 639.5, -102.1 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 669, -105.1 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 669, -105.1 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 690.8, -111.2 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 690.8, -111.2 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 706.9, -111.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 706.9, -111.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 714.6, -112.8 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 714.6, -112.8 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 717.1, -113.3 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 717.1, -113.3 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 25.5, 130.1 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 25.5, 130.1 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 26.5, 121.1 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 26.5, 121.1 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 29.8, 90.3 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 29.8, 90.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 36.5, 28.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 36.5, 28.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 48.3, -79.7 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 48.3, -79.7 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 68.8, -269.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 68.8, -269.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 105.8, -608.3 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 105.8, -608.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 136.5, -892.8 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 136.5, -892.8 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 162, -1134.7 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 162, -1134.7 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 187.8, -1381.7 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 187.8, -1381.7 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 215.9, -1652.5 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 215.9, -1652.5 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 243.6, -1921.2 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 243.6, -1921.2 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 267.7, -2153.2 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 267.7, -2153.2 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 288.2, -2349.5 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 288.2, -2349.5 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 305.3, -2512.1 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 305.3, -2512.1 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 319.3, -2643.7 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 319.3, -2643.7 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 330.3, -2747.7 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 330.3, -2747.7 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 339, -2828.1 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 339, -2828.1 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 345.6, -2888.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 345.6, -2888.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 350.6, -2934.9 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 350.6, -2934.9 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 354.7, -2972.4 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 354.7, -2972.4 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 363, -3066.8 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 363, -3066.8 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 371.3, -3161.1 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 379.5, -3255.4 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 387.7, -3349.7 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 396, -3444.1 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 404.3, -3538.4 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 412.4, -3632.7 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 420.7, -3727.1 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 428.9, -3821.4 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 437.1, -3915.7 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 445.3, -4010 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 453.5, -4104.3 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 461.7, -4198.6 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 469.8, -4292.9 , 0 );

setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 4.44, 4.44 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 8.09, 8.09 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 8.09, 8.09 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 8.59, 8.59 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 8.59, 8.59 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 8.99, 8.99 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 8.99, 8.99 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 9.3, 9.3 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 9.3, 9.3 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 9.55, 9.55 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 9.55, 9.55 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 9.74, 9.74 );
setScaleKey( spep_2 + 451 + OFFSET_X, 1, 9.74, 9.74 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 10.23, 10.23 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 10.23, 10.23 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 10.47, 10.47 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 10.7, 10.7 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 10.94, 10.94 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 11.17, 11.17 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 11.4, 11.4 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 11.64, 11.64 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 11.87, 11.87 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 12.11, 12.11 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 12.34, 12.34 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 12.57, 12.57 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 12.81, 12.81 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 13.04, 13.04 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 13.28, 13.28 );

setRotateKey( spep_2 + 336 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -33.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -30.6 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, 90 );

--敵の動き4--
--setDisp( spep_2 + 484 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 524 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 484 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 520 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 484 + OFFSET_X, 1, -475.7, 56.2 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -475.7, 56.2 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -399.8, 18.2 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -399.8, 18.2 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -363.4, 0 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -363.4, 0 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -337.9, -12.8 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -337.9, -12.8 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -318.3, -22.6 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -318.3, -22.6 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -302.6, -30.5 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -302.6, -30.5 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -289.6, -37 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -289.6, -37 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -278.8, -42.4 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -278.8, -42.4 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -269.7, -47 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -269.7, -47 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -262, -50.9 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -262, -50.9 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -255.6, -54.1 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -255.6, -54.1 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -250.2, -56.8 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -250.2, -56.8 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -245.8, -59 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -245.8, -59 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -242.3, -60.8 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -242.3, -60.8 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -239.6, -62.2 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -239.6, -62.2 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -237.7, -63.2 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -237.7, -63.2 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -236.4, -63.8 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -236.4, -63.8 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -236, -64.1 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -236, -64.1 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 2, -284 , 0 );--851
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 2, -284 , 0 );--854

setScaleKey( spep_2 + 484 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 484 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 519 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 520 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, -30 );

setBlendColor( spep_2 + 484 + OFFSET_X , 1, 2, 0, 0, 0, 0.0);
setBlendColor( spep_2 + 520 + OFFSET_X , 1, 2, 0.75, 0.46, 0.22, 0.6);
setBlendColor( spep_2 + 523 + OFFSET_X , 1, 2, 0.75, 0.46, 0.22, 0.6);
setBlendColor( spep_2 + 524 + OFFSET_X , 1, 2, 0, 0, 0, 0.0);

-- ** 音 ** --
--飛び込んでくる
SE017 = playSeVer2( spep_1 + 92, 1116, "",spep_2 + 78, 0, 46, -1);
SE018 = playSeVer2( spep_1 + 92, 1117, "",spep_2 + 90, 0, 28, -1);
SE019 = playSeVer2( spep_1 + 92, 1258, "",spep_2 + 88, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 92, SE019, 85 );

--飛び蹴り
SE020 = playSeVer2( spep_2 + 58, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE020, 72 );
SE021 = playSeVer2( spep_2 + 62, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 62, 1359, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 66, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 66, 1188, "",spep_2 + 168, 0, 72, -1);

--体勢整える
SE025 = playSeVer2( spep_2 + 118, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE025, 68 );

--ラッシュ
SE026 = playSeVer2( spep_2 + 142, 1009, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 142, 1110, "",spep_2 + 172, 0, 14, -1);
SE028 = playSeVer2( spep_2 + 150, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE028, 87 );
SE029 = playSeVer2( spep_2 + 160, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE029, 120 );
SE030 = playSeVer2( spep_2 + 162, 1110, "",spep_2 + 192, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 162, SE030, 81 );
SE031 = playSeVer2( spep_2 + 170, 1010, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 180, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE032, 79 );
SE033 = playSeVer2( spep_2 + 180, 1009, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 188, 1110, "",spep_2 + 218, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 188, SE034, 73 );
SE035 = playSeVer2( spep_2 + 194, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE035, 145 );
SE036 = playSeVer2( spep_2 + 198, 1153, "",spep_2 + 226, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 198, SE036, 59 );
SE037 = playSeVer2( spep_2 + 206, 1010, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 218, 1010, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 222, 1110, "",spep_2 + 252, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 222, SE039, 79 );
SE040 = playSeVer2( spep_2 + 228, 1000, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 228, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 228, SE041, 62 );
SE042 = playSeVer2( spep_2 + 240, 1110, "",spep_2 + 270, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 240, SE042, 88 );
SE043 = playSeVer2( spep_2 + 240, 1010, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 248, 1000, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 250, 1010, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 262, 1153, "",spep_2 + 292, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 262, SE046, 60 );
SE047 = playSeVer2( spep_2 + 262, 1010, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 274, 1110, "",spep_2 + 304, 0, 14, -1);
SE049 = playSeVer2( spep_2 + 274, 1010, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 284, 1000, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 284, 1010, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 290, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE053 = playSeVer2( spep_2 + 304, 1116, "",spep_2 + 350, 0, 22, -1);
SE054 = playSeVer2( spep_2 + 312, 1004, "", 0, 0, 0, -1);
setPitch( spep_2 + 312, SE054, -600 );
setTimeStretch( SE054, 0.6, 30, 4 );

--蹴り飛ばす
SE055 = playSeVer2( spep_2 + 354, 1003, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 360, 1187, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 360, 1153, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 360, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE059 = playSeVer2( spep_2 + 380, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 380, SE059, 61 );

--画面遷移
SE060 = playSeVer2( spep_2 + 412, 1232, "", 0, 0, 0, -1);

--向かってくる
SE061 = playSeVer2( spep_2 + 422, 1117, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 422, 44, "", 0, 0, 0, -1);

--瞬間移動
SE063 = playSeVer2( spep_2 + 470, 1109, "", 0, 0, 0, -1);

--連続気弾
SE064 = playSeVer2( spep_2 + 514, 1406, "",spep_2 + 640, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 514, SE064, 130 );
SE065 = playSeVer2( spep_2 + 514, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 514, SE065, 120 );
SE066 = playSeVer2( spep_2 + 528, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 528, SE066, 95 );
SE067 = playSeVer2( spep_2 + 540, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 540, SE067, 120 );
SE068 = playSeVer2( spep_2 + 554, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 554, SE068, 111 );
SE069 = playSeVer2( spep_2 + 570, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 570, SE069, 105 );
SE070 = playSeVer2( spep_2 + 582, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 582, SE070, 100 );
SE071 = playSeVer2( spep_2 + 594, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 594, SE071, 120 );

--爆発
SE072 = playSeVer2( spep_2 + 594, 1023, "", 0, 0, 0, -1);

--連続気弾
SE073 = playSeVer2( spep_2 + 608, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 608, SE073, 67 );

--爆発
SE074 = playSeVer2( spep_2 + 608, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 608, SE074, 79 );

--連続気弾
SE075 = playSeVer2( spep_2 + 620, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 620, SE075, 53 );
SE076 = playSeVer2( spep_2 + 632, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 632, SE076, 42 );

--爆発
SE077 = playSeVer2( spep_2 + 632, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 632, SE077, 70 );
SE078 = playSeVer2( spep_2 + 644, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 644, SE078, 72 );
SE079 = playSeVer2( spep_2 + 674, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 674, SE079, 68 );
SE080 = playSeVer2( spep_2 + 678, 1067, "", 0, 0, 0, -1);

--着地
SE081 = playSeVer2( spep_2 + 744, 63, "",spep_2 + 784, 0, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 744, SE081, 68 );
SE082 = playSeVer2( spep_2 + 762, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 762, SE082, 186 );
SE083 = playSeVer2( spep_2 + 770, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 770, SE083, 216 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 676); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 808f - 2


end
