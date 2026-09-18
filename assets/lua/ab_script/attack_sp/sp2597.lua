--1027120:LR_超サイヤ人ゴッドSS孫悟空&超サイヤ人ゴッドSSベジータ_超必殺技：かめはめ波&ファイナルフラッシュ
--sp_effect_a1_00407
--sp2597

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162172;  --ef_001　セリフカットイン
SP_02 = 162173;  --ef_002　カードカットイン明け　前面
SP_02b = 162174;  --ef_003　カードカットイン明け　背面
SP_03 = 162175;  --ef_004　フィニッシュ

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セリフカットイン（84f）
-------------------------------------------------
MAX_FRAME_0 = 84;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 セリフカットイン
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--構える
SE002 = playSeVer2( spep_0 + 16, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 76 );

--気ダメ
SE003 = playSeVer2( spep_0 + 28, 1035, "",spep_0 + 104, 0, 12, -1);
SE004 = playSeVer2( spep_0 + 28, 1024, "",spep_0 + 106, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 28, SE004, 65 );

--オーラ
SE005 = playSeVer2( spep_0 + 28, 1181, "",spep_0 + 106, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 28, SE005, 204 );
SE006 = playSeVer2( spep_0 + 28, 1407, "",spep_0 + 106, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 28, SE006, 166 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --84f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン明け(764f)
-------------------------------------------------
MAX_FRAME_2 = 764;

-- ** エフェクト等 ** --
grapple_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002 カードカットイン明け　前面
setEffMoveKey( spep_2 + 0, grapple_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, grapple_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, grapple_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, grapple_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, grapple_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, grapple_f, 0);
setEffAlphaKey( spep_2 + 0, grapple_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, grapple_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, grapple_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, grapple_f, 0);

grapple_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_003 カードカットイン明け　背面
setEffMoveKey( spep_2 + 0, grapple_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, grapple_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, grapple_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, grapple_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, grapple_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, grapple_b, 0);
setEffAlphaKey( spep_2 + 0, grapple_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, grapple_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, grapple_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, grapple_b, 0);

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 106, 906, 22, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 106, shuchusen_2, 22, 20 );
setEffMoveKey( spep_2 + 106, shuchusen_2, 0, 0, 0 );
setEffMoveKey( spep_2 + 128, shuchusen_2, 0, 0, 0 );
setEffScaleKey( spep_2 + 106, shuchusen_2, 2.0, 2.0 );
setEffScaleKey( spep_2 + 128, shuchusen_2, 2.0, 2.0 );
setEffRotateKey( spep_2 + 106, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 128, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 106, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 107, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 128 -2, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 128 -1, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 128, shuchusen_2, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--向かっていく
SE008 = playSeVer2( spep_2 + 2, 1011, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 8, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 8, 1117, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 8, 1181, "",spep_2 + 186, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 8, SE011, 129 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 38; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--敵の動き1--
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 199 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 178 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 59.5, 42.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 59.5, 42.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -52.7, -58.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -52.7, -58.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 67.2, -49.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 67.2, -49.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -20.6, 56.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -20.6, 56.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 16.6, -24 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 16.6, -24 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 3.2, 4.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 3.2, 4.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 4.4, 2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 4.4, 2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 4.4, 5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 4.4, 5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 2.6, 2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 3.8, 3.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 4.4, 2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 4.4, 5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 2.6, 2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 3.8, 3.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -117.6, 44 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -111.6, 50.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -103.2, 53.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -95, 54.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -86.3, 55.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -75.7, 56.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -63, 58.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -47.8, 62.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -30.4, 66.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -12.8, 72.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 1.3, 77.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 7.8, 80.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 10.3, 81 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 15.5, 80.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 20.7, 80.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 24.1, 81 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 25.5, 85 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 24.9, 95 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 25.5, 101.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 27.5, 103.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 28.7, 18.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 26, 20.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 26.5, 16.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 22.8, 16.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 22.3, 18.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 13.3, 21.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 13.3, 21.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 28, 74.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 28, 74.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 22, 165.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 10.9, 227.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 12.7, 295.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 9.5, 353.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 7.6, 412.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 1.9, 475.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 3.2, 549.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 3.2, 625 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 3.2, 625 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 3.2, 700.4 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 79 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 79 );

--敵の動き2--
setDisp( spep_2 + 518 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 616 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 518 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 518 + OFFSET_X, 1, 0, 493 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 0, 493 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -1.2, 496.6 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -1.2, 496.6 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 9.6, 484.3 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 9.6, 484.3 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 10.4, 489.9 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 10.4, 489.9 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 9.1, 479.5 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 9.1, 479.5 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 9.9, 487.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 9.9, 487.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 20.7, 474.8 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 20.7, 474.8 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 14.3, 488.7 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 14.3, 488.7 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 5.9, 486.6 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 5.9, 486.6 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -0.5, 502.4 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -0.5, 502.4 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 3.1, 498.3 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -3.3, 512.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -11.7, 510.1 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -18.1, 526 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -9.9, 510.1 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -11.7, 512.2 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -15.6, 498.3 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -17.4, 502.4 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -9.2, 486.6 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -11, 488.7 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -14.9, 474.8 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -14.1, 489.5 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -3.4, 484.2 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -2.7, 496.8 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -3.9, 493.4 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -3.2, 508.1 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 7.5, 502.7 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 8.2, 515.4 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 7, 512.1 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 6, 520.1 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 15, 508.1 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 14, 514.1 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 11.1, 504.1 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 10.1, 512.1 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 19.1, 500.1 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 18.1, 506.1 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 15.2, 496.1 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 14.2, 504.2 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 20.5, 494.2 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 16.7, 502.2 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 11, 494.2 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 7.3, 504.2 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 13.5, 494.2 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 9.8, 502.2 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 4.1, 494.2 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 0.3, 504.2 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 6.6, 494.2 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 2.9, 502.2 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, -2.8, 494.2 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -6.6, 504.2 , 0 );

setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 616 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 518 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 616 + OFFSET_X, 1, 28.8 );

-- ** 音 ** --
--振りかぶる
SE012 = playSeVer2( spep_2 + 44, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 44, 1116, "",spep_2 + 76, 0, 12, -1);
SE014 = playSeVer2( spep_2 + 74, 1004, "", 0, 0, 0, -1);

--悟空パンチ
SE015 = playSeVer2( spep_2 + 98, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 98, 1359, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 104, 1110, "", 0, 0, 0, -1);

--ベジータ翻る
SE018 = playSeVer2( spep_2 + 136, 1004, "", 0, 0, 0, -1);

--ベジータ蹴り上げる
SE020 = playSeVer2( spep_2 + 172, 1123, "", 0, 0, 0, -1);
setPitch( spep_2 + 172, SE020, 200 );
setTimeStretch( SE020, 1.13, 30, 4 );
SE021 = playSeVer2( spep_2 + 176, 1110, "", 0, 0, 0, -1);

--画面遷移
SE022 = playSeVer2( spep_2 + 208, 1232, "", 0, 0, 0, -1);

--かめはめ波溜め
SE019 = playSeVer2( spep_2 + 222, 1210, "",spep_2 + 396, 22, 16, -1);
setStartTimeMs( SE019,  1267 );
SE023 = playSeVer2( spep_2 + 216, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE023, 138 );
SE024 = playSeVer2( spep_2 + 216, 1209, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 216, 1356, "",spep_2 + 396, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 216, SE025, 61 );

--ベジータ気弾溜め
SE026 = playSeVer2( spep_2 + 290, 1274, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 298, 1296, "",spep_2 + 394, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 298, SE027, 126 );

--かめはめ波発射
SE028 = playSeVer2( spep_2 + 368, 1258, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 368, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE029, 148 );
SE030 = playSeVer2( spep_2 + 372, 1213, "",spep_2 + 492, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 372, SE030, 82 );
SE031 = playSeVer2( spep_2 + 372, 1205, "",spep_2 + 416, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 372, SE031, 74 );

--ベジータ気弾発射前溜め
SE032 = playSeVer2( spep_2 + 440, 1282, "",spep_2 + 496, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 440, SE032, 79 );

--ベジータ気弾発射
SE033 = playSeVer2( spep_2 + 470, 1212, "",spep_2 + 550, 0, 16, -1);
SE034 = playSeVer2( spep_2 + 470, 1213, "",spep_2 + 556, 0, 22, -1);
SE035 = playSeVer2( spep_2 + 470, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 470, SE035, 78 );

--気弾ヒット
SE036 = playSeVer2( spep_2 + 530, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 530, SE036, 87 );
SE037 = playSeVer2( spep_2 + 530, 1068, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 530, 1043, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 530, 1161, "",spep_2 + 694, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 530, SE039, 74 );

--カットイン
SE040 = playSeVer2( spep_2 + 638, 1062, "", 0, 0, 0, 0.6);
SE041 = playSeVer2( spep_2 + 638, 1126, "",spep_2 + 712, 0, 42, 0.6);
setPitch( spep_2 + 638, SE041, -600 );
setTimeStretch( SE041, 0.6, 30, 4 );

--気弾パワーアップ
SE042 = playSeVer2( spep_2 + 678, 1213, "",spep_2 + 846, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 678, SE042, 91 );
SE043 = playSeVer2( spep_2 + 678, 1161, "",spep_2 + 844, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 678, SE043, 97 );
SE044 = playSeVer2( spep_2 + 684, 1258, "",spep_2 + 836, 0, 28, -1);

--気弾膨らんでいく
SE045 = playSeVer2( spep_2 + 714, 1215, "",spep_2 + 894, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 714, SE045, 69 );
setPitch( spep_2 + 714, SE045, 400 );
setTimeStretch( SE045, 1.27, 30, 4 );

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  --764f

-------------------------------------------------
-- フィニッシュ（178f）
-------------------------------------------------
MAX_FRAME_3 = 178;

-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_004 フィニッシュ
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish, 0);
setEffAlphaKey( spep_3 + 0, finish, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--爆発
SE046 = playSeVer2( spep_3 + 26, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 26, SE046, 115 );
SE047 = playSeVer2( spep_3 + 42, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 42, SE047, 63 );
SE049 = playSeVer2( spep_3 + 50, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 50, SE049, 107 );
SE051 = playSeVer2( spep_3 + 64, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 64, SE051, 108 );

--風圧音
SE048 = playSeVer2( spep_3 + 42, 1258, "", 0, 30, 0, -1);
setSeVolumeByWorkId( spep_3 + 42, SE048, 71 );
SE050 = playSeVer2( spep_3 + 60, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE050, 74 );
setPitch( spep_3 + 60, SE050, -600 );
setTimeStretch( SE050, 0.75, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 58 ); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3 -4 ); -- 終了フレーム 178f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セリフカットイン（84f）
-------------------------------------------------
MAX_FRAME_0 = 84;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 セリフカットイン
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--構える
SE002 = playSeVer2( spep_0 + 16, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE002, 76 );

--気ダメ
SE003 = playSeVer2( spep_0 + 28, 1035, "",spep_0 + 104, 0, 12, -1);
SE004 = playSeVer2( spep_0 + 28, 1024, "",spep_0 + 106, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 28, SE004, 65 );

--オーラ
SE005 = playSeVer2( spep_0 + 28, 1181, "",spep_0 + 106, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 28, SE005, 204 );
SE006 = playSeVer2( spep_0 + 28, 1407, "",spep_0 + 106, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 28, SE006, 166 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --84f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン明け(764f)
-------------------------------------------------
MAX_FRAME_2 = 764;

-- ** エフェクト等 ** --
grapple_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002 カードカットイン明け　前面
setEffMoveKey( spep_2 + 0, grapple_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, grapple_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, grapple_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, grapple_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, grapple_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, grapple_f, 0);
setEffAlphaKey( spep_2 + 0, grapple_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, grapple_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, grapple_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, grapple_f, 0);

grapple_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_003 カードカットイン明け　背面
setEffMoveKey( spep_2 + 0, grapple_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, grapple_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, grapple_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, grapple_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, grapple_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, grapple_b, 0);
setEffAlphaKey( spep_2 + 0, grapple_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -2, grapple_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 -1, grapple_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, grapple_b, 0);

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 106, 906, 22, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 106, shuchusen_2, 22, 20 );
setEffMoveKey( spep_2 + 106, shuchusen_2, 0, 0, 0 );
setEffMoveKey( spep_2 + 128, shuchusen_2, 0, 0, 0 );
setEffScaleKey( spep_2 + 106, shuchusen_2, 2.0, 2.0 );
setEffScaleKey( spep_2 + 128, shuchusen_2, 2.0, 2.0 );
setEffRotateKey( spep_2 + 106, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 128, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 106, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 107, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 128 -2, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 128 -1, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 128, shuchusen_2, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--向かっていく
SE008 = playSeVer2( spep_2 + 2, 1011, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 8, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 8, 1117, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 8, 1181, "",spep_2 + 186, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 8, SE011, 129 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 38; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--敵の動き1--
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 199 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 178 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, -59.5, 42.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -59.5, 42.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 52.7, -58.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 52.7, -58.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -67.2, -49.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -67.2, -49.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 20.6, 56.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 20.6, 56.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -16.6, -24 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -16.6, -24 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -3.2, 4.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -3.2, 4.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -4.4, 2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -4.4, 2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -4.4, 5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -4.4, 5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -2.6, 2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -3.8, 3.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -4.4, 2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -4.4, 5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -2.6, 2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -3.8, 3.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 117.6, 44 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 111.6, 50.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 103.2, 53.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 95, 54.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 86.3, 55.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 75.7, 56.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 63, 58.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 47.8, 62.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 30.4, 66.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 12.8, 72.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -1.3, 77.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -7.8, 80.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -10.3, 81 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -15.5, 80.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -20.7, 80.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -24.1, 81 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -25.5, 85 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -24.9, 95 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -25.5, 101.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -27.5, 103.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -28.7, 18.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -26, 20.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -26.5, 16.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -22.8, 16.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -22.3, 18.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -13.3, 21.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -13.3, 21.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -28, 74.3 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -28, 74.3 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -22, 165.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -10.9, 227.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -12.7, 295.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -9.5, 353.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -7.6, 412.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -1.9, 475.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -3.2, 549.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -3.2, 625 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -3.2, 625 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -3.2, 700.4 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -79 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -79 );

--敵の動き2--
setDisp( spep_2 + 518 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 616 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 518 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 518 + OFFSET_X, 1, 0, 493 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 0, 493 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -1.2, 496.6 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -1.2, 496.6 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 9.6, 484.3 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 9.6, 484.3 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 10.4, 489.9 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 10.4, 489.9 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 9.1, 479.5 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 9.1, 479.5 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 9.9, 487.2 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 9.9, 487.2 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 20.7, 474.8 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 20.7, 474.8 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 14.3, 488.7 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 14.3, 488.7 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 5.9, 486.6 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 5.9, 486.6 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -0.5, 502.4 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -0.5, 502.4 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 3.1, 498.3 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 3.3, 512.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 11.7, 510.1 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 18.1, 526 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 9.9, 510.1 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 11.7, 512.2 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 15.6, 498.3 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 17.4, 502.4 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 9.2, 486.6 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 11, 488.7 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 14.9, 474.8 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 14.1, 489.5 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 3.4, 484.2 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 2.7, 496.8 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 3.9, 493.4 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 3.2, 508.1 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -7.5, 502.7 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -8.2, 515.4 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -7, 512.1 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -6, 520.1 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -15, 508.1 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -14, 514.1 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -11.1, 504.1 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -10.1, 512.1 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -19.1, 500.1 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -18.1, 506.1 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -15.2, 496.1 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -14.2, 504.2 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -20.5, 494.2 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -16.7, 502.2 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -11, 494.2 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -7.3, 504.2 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -13.5, 494.2 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -9.8, 502.2 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -4.1, 494.2 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -0.3, 504.2 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -6.6, 494.2 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -2.9, 502.2 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 2.8, 494.2 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 6.6, 504.2 , 0 );

setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 616 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 518 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 616 + OFFSET_X, 1, -28.8 );

-- ** 音 ** --
--振りかぶる
SE012 = playSeVer2( spep_2 + 44, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 44, 1116, "",spep_2 + 76, 0, 12, -1);
SE014 = playSeVer2( spep_2 + 74, 1004, "", 0, 0, 0, -1);

--悟空パンチ
SE015 = playSeVer2( spep_2 + 98, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 98, 1359, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 104, 1110, "", 0, 0, 0, -1);

--ベジータ翻る
SE018 = playSeVer2( spep_2 + 136, 1004, "", 0, 0, 0, -1);

--ベジータ蹴り上げる
SE020 = playSeVer2( spep_2 + 172, 1123, "", 0, 0, 0, -1);
setPitch( spep_2 + 172, SE020, 200 );
setTimeStretch( SE020, 1.13, 30, 4 );
SE021 = playSeVer2( spep_2 + 176, 1110, "", 0, 0, 0, -1);

--画面遷移
SE022 = playSeVer2( spep_2 + 208, 1232, "", 0, 0, 0, -1);

--かめはめ波溜め
SE019 = playSeVer2( spep_2 + 222, 1210, "",spep_2 + 396, 22, 16, -1);
setStartTimeMs( SE019,  1267 );
SE023 = playSeVer2( spep_2 + 216, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE023, 138 );
SE024 = playSeVer2( spep_2 + 216, 1209, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 216, 1356, "",spep_2 + 396, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 216, SE025, 61 );

--ベジータ気弾溜め
SE026 = playSeVer2( spep_2 + 290, 1274, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 298, 1296, "",spep_2 + 394, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 298, SE027, 126 );

--かめはめ波発射
SE028 = playSeVer2( spep_2 + 368, 1258, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 368, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE029, 148 );
SE030 = playSeVer2( spep_2 + 372, 1213, "",spep_2 + 492, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 372, SE030, 82 );
SE031 = playSeVer2( spep_2 + 372, 1205, "",spep_2 + 416, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 372, SE031, 74 );

--ベジータ気弾発射前溜め
SE032 = playSeVer2( spep_2 + 440, 1282, "",spep_2 + 496, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 440, SE032, 79 );

--ベジータ気弾発射
SE033 = playSeVer2( spep_2 + 470, 1212, "",spep_2 + 550, 0, 16, -1);
SE034 = playSeVer2( spep_2 + 470, 1213, "",spep_2 + 556, 0, 22, -1);
SE035 = playSeVer2( spep_2 + 470, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 470, SE035, 78 );

--気弾ヒット
SE036 = playSeVer2( spep_2 + 530, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 530, SE036, 87 );
SE037 = playSeVer2( spep_2 + 530, 1068, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 530, 1043, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 530, 1161, "",spep_2 + 694, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 530, SE039, 74 );

--カットイン
SE040 = playSeVer2( spep_2 + 638, 1062, "", 0, 0, 0, 0.6);
SE041 = playSeVer2( spep_2 + 638, 1126, "",spep_2 + 712, 0, 42, 0.6);
setPitch( spep_2 + 638, SE041, -600 );
setTimeStretch( SE041, 0.6, 30, 4 );

--気弾パワーアップ
SE042 = playSeVer2( spep_2 + 678, 1213, "",spep_2 + 846, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 678, SE042, 91 );
SE043 = playSeVer2( spep_2 + 678, 1161, "",spep_2 + 844, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 678, SE043, 97 );
SE044 = playSeVer2( spep_2 + 684, 1258, "",spep_2 + 836, 0, 28, -1);

--気弾膨らんでいく
SE045 = playSeVer2( spep_2 + 714, 1215, "",spep_2 + 894, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 714, SE045, 69 );
setPitch( spep_2 + 714, SE045, 400 );
setTimeStretch( SE045, 1.27, 30, 4 );

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  --764f

-------------------------------------------------
-- フィニッシュ（178f）
-------------------------------------------------
MAX_FRAME_3 = 178;

-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_004 フィニッシュ
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish, 0);
setEffAlphaKey( spep_3 + 0, finish, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
-- ** 音 ** --
--爆発
SE046 = playSeVer2( spep_3 + 26, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 26, SE046, 115 );
SE047 = playSeVer2( spep_3 + 42, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 42, SE047, 63 );
SE049 = playSeVer2( spep_3 + 50, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 50, SE049, 107 );
SE051 = playSeVer2( spep_3 + 64, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 64, SE051, 108 );

--風圧音
SE048 = playSeVer2( spep_3 + 42, 1258, "", 0, 30, 0, -1);
setSeVolumeByWorkId( spep_3 + 42, SE048, 71 );
SE050 = playSeVer2( spep_3 + 60, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 60, SE050, 74 );
setPitch( spep_3 + 60, SE050, -600 );
setTimeStretch( SE050, 0.75, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 58 ); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3 -4 ); -- 終了フレーム 178f -4


end
