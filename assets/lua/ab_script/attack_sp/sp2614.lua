--1027540:UR_クリリン(少年期)_必殺技：亀仙流烈風脚
--sp_effect_b1_00268
--sp2614

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162279;   --ef_001　クリリン（少年期）が敵に突っ込み２回殴って構える
SP_01b = 162280;   --ef_001b　クリリン（少年期）が敵に突っ込み２回殴って構える 奥側
SP_02 = 162282;   --ef_002　飛び蹴りを喰らわす
SP_02b = 162283;   --ef_002b　飛び蹴りを喰らわす 奥側

--エフェクト(てき)
SP_01r = 162281;  --ef_001r　クリリン（少年期）が敵に突っ込み２回殴って構える
SP_01br = 162286;  --ef_001br　クリリン（少年期）が敵に突っ込み２回殴って構える 奥側
SP_02r = 162284;  --ef_002r　飛び蹴りを喰らわす
SP_02br = 162287;  --ef_002br　飛び蹴りを喰らわす 奥側

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
-- クリリン（少年期）が敵に突っ込み２回殴って構える(396f)
-------------------------------------------------
MAX_FRAME_0 = 396;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001　クリリン（少年期）が敵に突っ込み２回殴って構える
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b　クリリン（少年期）が敵に突っ込み２回殴って構える 奥側
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 流線(横)１ ** --
spep_r1 = spep_0 + 98;
ryusenLife1 = 14;

ryusen1 = entryEffectLife( spep_r1 + 0, 920, ryusenLife1, 0x80, -1, 0, 0, 0 );  --流線(横)
setEffMoveKey( spep_r1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_r1 + ryusenLife1, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_r1 + 0, ryusen1, 1.0, 1.6 );
setEffScaleKey( spep_r1 + ryusenLife1, ryusen1, 1.0, 1.6 );
setEffRotateKey( spep_r1 + 0, ryusen1, 0 );
setEffRotateKey( spep_r1 + ryusenLife1, ryusen1, 0 );
setEffAlphaKey( spep_r1 + 0, ryusen1, 0 );
setEffAlphaKey( spep_r1 + 1, ryusen1, 255 );
setEffAlphaKey( spep_r1 + ryusenLife1 -4, ryusen1, 255 );
setEffAlphaKey( spep_r1 + ryusenLife1 -3, ryusen1, 120 );
setEffAlphaKey( spep_r1 + ryusenLife1 -2, ryusen1, 120 );
setEffAlphaKey( spep_r1 + ryusenLife1 -1, ryusen1, 50 );
setEffAlphaKey( spep_r1 + ryusenLife1, ryusen1, 50 );

-- ** 流線(横)２ ** --
spep_r2 = spep_0 + 144;
ryusenLife2 = 30;

ryusen2 = entryEffectLife( spep_r2 + 0, 920, ryusenLife2, 0x80, -1, 0, 0, 0 );  --流線(横)
setEffMoveKey( spep_r2 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_r2 + ryusenLife2, ryusen2, 0, 0 , 0 );
setEffScaleKey( spep_r2 + 0, ryusen2, 1.0, 1.6 );
setEffScaleKey( spep_r2 + ryusenLife2, ryusen2, 1.0, 1.6 );
setEffRotateKey( spep_r2 + 0, ryusen2, 0 );
setEffRotateKey( spep_r2 + ryusenLife2, ryusen2, 0 );
setEffAlphaKey( spep_r2 + 0, ryusen2, 50 );
setEffAlphaKey( spep_r2 + 1, ryusen2, 50 );
setEffAlphaKey( spep_r2 + 2, ryusen2, 90 );
setEffAlphaKey( spep_r2 + 3, ryusen2, 90 );
setEffAlphaKey( spep_r2 + 4, ryusen2, 255 );
setEffAlphaKey( spep_r2 + ryusenLife2 -5, ryusen2, 255 );
setEffAlphaKey( spep_r2 + ryusenLife2 -4, ryusen2, 90 );
setEffAlphaKey( spep_r2 + ryusenLife2 -3, ryusen2, 90 );
setEffAlphaKey( spep_r2 + ryusenLife2 -2, ryusen2, 50 );
setEffAlphaKey( spep_r2 + ryusenLife2 -1, ryusen2, 50 );
setEffAlphaKey( spep_r2 + ryusenLife2, ryusen2, 0 );

-- ** 流線(横)３ ** --
spep_r3 = spep_0 + 204;
ryusenLife3 = 16;

ryusen3 = entryEffectLife( spep_r3 + 0, 920, ryusenLife3, 0x80, -1, 0, 0, 0 );  --流線(横)
setEffMoveKey( spep_r3 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_r3 + ryusenLife3, ryusen3, 0, 0 , 0 );
setEffScaleKey( spep_r3 + 0, ryusen3, 1.0, 1.6 );
setEffScaleKey( spep_r3 + ryusenLife3, ryusen3, 1.0, 1.6 );
setEffRotateKey( spep_r3 + 0, ryusen3, 0 );
setEffRotateKey( spep_r3 + ryusenLife3, ryusen3, 0 );
setEffAlphaKey( spep_r3 + 0, ryusen3, 50 );
setEffAlphaKey( spep_r3 + 1, ryusen3, 50 );
setEffAlphaKey( spep_r3 + 2, ryusen3, 90 );
setEffAlphaKey( spep_r3 + 3, ryusen3, 90 );
setEffAlphaKey( spep_r3 + 4, ryusen3, 255 );
setEffAlphaKey( spep_r3 + ryusenLife3 -2, ryusen3, 255 );
setEffAlphaKey( spep_r3 + ryusenLife3 -1, ryusen3, 255 );
setEffAlphaKey( spep_r3 + ryusenLife3, ryusen3, 0 );

-- ** 集中線 ** --
spep_s = spep_0 + 364;
shuchusenLife = 34;

shuchusen = entryEffectLife( spep_s + 0, 906, shuchusenLife, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_s + 0, shuchusen, shuchusenLife, 20 );
setEffMoveKey( spep_s + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_s + shuchusenLife, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_s + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_s + shuchusenLife, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_s + 0, shuchusen, 0 );
setEffRotateKey( spep_s + shuchusenLife, shuchusen, 0 );
setEffAlphaKey( spep_s + 0, shuchusen, 255 );
setEffAlphaKey( spep_s + shuchusenLife, shuchusen, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 126, 0, 20, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE00X, 0);

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
--敵の動き１
setDisp( spep_0 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 131 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 100  + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 112  + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, 88.5, -118.2 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 88.5, -118.2 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 121.8, -99.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 121.8, -99.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 117.9, -80.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 117.9, -80.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 143.5, -105.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 143.5, -105.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 137.6, -80.3 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 137.6, -80.3 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 244.6, -104 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 244.6, -104 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 413.4, -92.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 413.4, -92.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 582.2, -96 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 582.2, -96 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 747.1, -95.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 747.1, -95.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 912, -95.8 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 912, -95.8 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.96, 1.96 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -54 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -54 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -75.5 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -75.5 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -78 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -78 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -85.6 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -85.6 );

--敵の動き２
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 174 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 160 + OFFSET_X, 1, 86.4, -155.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 26.3, -155.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -10.9, -155.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -23.6, -155.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -23.6, -155.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 158.6, -141.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 158.6, -141.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 105.4, -131.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 105.4, -131.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 135, -149.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 135, -149.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 119.2, -129.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 119.2, -129.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 140.9, -143.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 140.9, -143.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 138.9, -131.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 138.9, -131.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 133, -139.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 133, -139.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 289.7, -139.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 289.7, -139.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 446.5, -139.6 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 446.5, -139.6 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 603.2, -139.6 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 760, -139.6 , 0 );

setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.14, 2.14 );

setRotateKey( spep_0 + 160 + OFFSET_X, 1, -47 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -20.8 );

-- ** 音 ** --
--初手パンチ
SE005 = playSeVer2( spep_0 + 88, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 102, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 110, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 110, 1110, "", 0, 0, 0, -1);

--横ダッシュ
SE009 = playSeVer2( spep_0 + 146, 1048, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 146, 44, "", 0, 0, 0, -1);

--殴り飛ばす
SE011 = playSeVer2( spep_0 + 172, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 172, 1047, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 174, 1000, "", 0, 0, 0, -1);

--着地
SE014 = playSeVer2( spep_0 + 192, 1108, "", 0, 0, 0, -1);

--飛び上がる
SE015 = playSeVer2( spep_0 + 202, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 202, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE016, 74 );

--回転
SE017 = playSeVer2( spep_0 + 220, 1151, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 230, 1151, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 240, 1151, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 250, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE020, 93 );
SE021 = playSeVer2( spep_0 + 260, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE021, 93 );
SE022 = playSeVer2( spep_0 + 268, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE022, 82 );

--着地
SE023 = playSeVer2( spep_0 + 284, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE023, 172 );
SE024 = playSeVer2( spep_0 + 284, 1192, "",spep_0 + 304, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 284, SE024, 120 );
SE025 = playSeVer2( spep_0 + 284, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE025, 84 );

--立ち上がる
SE026 = playSeVer2( spep_0 + 324, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE026, 80 );

--構える
SE027 = playSeVer2( spep_0 + 356, 1237, "",spep_0 + 408, 4, 10, -1);
setStartTimeMs( SE027,  133 );
SE028 = playSeVer2( spep_0 + 358, 1006, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --396

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--飛びかかる
SE030 = playSeVer2( spep_1 + 92, 1116, "", 0, 0, 0, 0.6);
SE031 = playSeVer2( spep_1 + 92, 1241, "", 0, 0, 0, -1);

-------------------------------------------------
-- 飛び蹴りを喰らわす(208f)
-------------------------------------------------
MAX_FRAME_2 = 208;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002　飛び蹴りを喰らわす
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b　飛び蹴りを喰らわす 奥側
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0 + OFFSET_X, 1, 727.6, -309.8 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 682.8, -307.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 637.6, -305.9 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 592.2, -303.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 547, -302 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 502.3, -300 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 458.4, -298.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 415.6, -296.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 374.3, -294.3 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 365.2, -293.8 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 356.5, -293.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 348.1, -292.8 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 340, -292.3 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 332.2, -291.8 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 324.7, -291.4 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 317.5, -291 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 310.5, -290.5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 303.9, -290.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 297.5, -289.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 291.4, -289.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 285.5, -289 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 279.9, -288.7 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 274.6, -288.4 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 269.5, -288.1 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 264.6, -287.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 259.9, -287.5 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 255.5, -287.2 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 251.2, -287 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 247.2, -286.8 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 243.4, -286.5 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 239.7, -286.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 236.3, -286.1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 233, -285.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 229.9, -285.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 227, -285.5 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 224.3, -285.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 221.7, -285.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 219.3, -285.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 217, -284.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 214.9, -284.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 212.9, -284.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 212.9, -284.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -32.4, -189.1 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -32.4, -189.1 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 14.3, -189.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 14.3, -189.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 98.9, -189 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 98.9, -189 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 120.4, -173.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 120.4, -173.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 102.7, -196.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 102.7, -196.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 118.3, -177.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 118.3, -177.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 147.7, -198.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 147.7, -198.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 143.7, -183.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 143.7, -183.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 156.4, -194.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 156.4, -194.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 391.5, -87.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 675.8, -87.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 960.1, -87.3 , 0 );

setScaleKey( spep_2 + 0 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 4.11, 4.11 );

setRotateKey( spep_2 + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -4.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--飛びかかる
SE032 = playSeVer2( spep_2 + 24, 1391, "",spep_2 + 92, 0, 32, -1);

--キック
SE033 = playSeVer2( spep_2 + 84, 1120, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 102, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 88 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 208f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- クリリン（少年期）が敵に突っ込み２回殴って構える(396f)
-------------------------------------------------
MAX_FRAME_0 = 396;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001　クリリン（少年期）が敵に突っ込み２回殴って構える
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_001b　クリリン（少年期）が敵に突っ込み２回殴って構える 奥側
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 流線(横)１ ** --
spep_r1 = spep_0 + 98;
ryusenLife1 = 14;

ryusen1 = entryEffectLife( spep_r1 + 0, 920, ryusenLife1, 0x80, -1, 0, 0, 0 );  --流線(横)
setEffMoveKey( spep_r1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_r1 + ryusenLife1, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_r1 + 0, ryusen1, 1.0, 1.6 );
setEffScaleKey( spep_r1 + ryusenLife1, ryusen1, 1.0, 1.6 );
setEffRotateKey( spep_r1 + 0, ryusen1, 0 );
setEffRotateKey( spep_r1 + ryusenLife1, ryusen1, 0 );
setEffAlphaKey( spep_r1 + 0, ryusen1, 0 );
setEffAlphaKey( spep_r1 + 1, ryusen1, 255 );
setEffAlphaKey( spep_r1 + ryusenLife1 -4, ryusen1, 255 );
setEffAlphaKey( spep_r1 + ryusenLife1 -3, ryusen1, 120 );
setEffAlphaKey( spep_r1 + ryusenLife1 -2, ryusen1, 120 );
setEffAlphaKey( spep_r1 + ryusenLife1 -1, ryusen1, 50 );
setEffAlphaKey( spep_r1 + ryusenLife1, ryusen1, 50 );

-- ** 流線(横)２ ** --
spep_r2 = spep_0 + 144;
ryusenLife2 = 30;

ryusen2 = entryEffectLife( spep_r2 + 0, 920, ryusenLife2, 0x80, -1, 0, 0, 0 );  --流線(横)
setEffMoveKey( spep_r2 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_r2 + ryusenLife2, ryusen2, 0, 0 , 0 );
setEffScaleKey( spep_r2 + 0, ryusen2, 1.0, 1.6 );
setEffScaleKey( spep_r2 + ryusenLife2, ryusen2, 1.0, 1.6 );
setEffRotateKey( spep_r2 + 0, ryusen2, 0 );
setEffRotateKey( spep_r2 + ryusenLife2, ryusen2, 0 );
setEffAlphaKey( spep_r2 + 0, ryusen2, 50 );
setEffAlphaKey( spep_r2 + 1, ryusen2, 50 );
setEffAlphaKey( spep_r2 + 2, ryusen2, 90 );
setEffAlphaKey( spep_r2 + 3, ryusen2, 90 );
setEffAlphaKey( spep_r2 + 4, ryusen2, 255 );
setEffAlphaKey( spep_r2 + ryusenLife2 -5, ryusen2, 255 );
setEffAlphaKey( spep_r2 + ryusenLife2 -4, ryusen2, 90 );
setEffAlphaKey( spep_r2 + ryusenLife2 -3, ryusen2, 90 );
setEffAlphaKey( spep_r2 + ryusenLife2 -2, ryusen2, 50 );
setEffAlphaKey( spep_r2 + ryusenLife2 -1, ryusen2, 50 );
setEffAlphaKey( spep_r2 + ryusenLife2, ryusen2, 0 );

-- ** 流線(横)３ ** --
spep_r3 = spep_0 + 204;
ryusenLife3 = 16;

ryusen3 = entryEffectLife( spep_r3 + 0, 920, ryusenLife3, 0x80, -1, 0, 0, 0 );  --流線(横)
setEffMoveKey( spep_r3 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_r3 + ryusenLife3, ryusen3, 0, 0 , 0 );
setEffScaleKey( spep_r3 + 0, ryusen3, 1.0, 1.6 );
setEffScaleKey( spep_r3 + ryusenLife3, ryusen3, 1.0, 1.6 );
setEffRotateKey( spep_r3 + 0, ryusen3, 0 );
setEffRotateKey( spep_r3 + ryusenLife3, ryusen3, 0 );
setEffAlphaKey( spep_r3 + 0, ryusen3, 50 );
setEffAlphaKey( spep_r3 + 1, ryusen3, 50 );
setEffAlphaKey( spep_r3 + 2, ryusen3, 90 );
setEffAlphaKey( spep_r3 + 3, ryusen3, 90 );
setEffAlphaKey( spep_r3 + 4, ryusen3, 255 );
setEffAlphaKey( spep_r3 + ryusenLife3 -2, ryusen3, 255 );
setEffAlphaKey( spep_r3 + ryusenLife3 -1, ryusen3, 255 );
setEffAlphaKey( spep_r3 + ryusenLife3, ryusen3, 0 );

-- ** 集中線 ** --
spep_s = spep_0 + 364;
shuchusenLife = 34;

shuchusen = entryEffectLife( spep_s + 0, 906, shuchusenLife, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_s + 0, shuchusen, shuchusenLife, 20 );
setEffMoveKey( spep_s + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_s + shuchusenLife, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_s + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_s + shuchusenLife, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_s + 0, shuchusen, 0 );
setEffRotateKey( spep_s + shuchusenLife, shuchusen, 0 );
setEffAlphaKey( spep_s + 0, shuchusen, 255 );
setEffAlphaKey( spep_s + shuchusenLife, shuchusen, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 126, 0, 20, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE00X, 0);

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
--敵の動き１
setDisp( spep_0 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 131 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 100  + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 112  + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, 88.5, -118.2 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 88.5, -118.2 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 121.8, -99.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 121.8, -99.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 117.9, -80.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 117.9, -80.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 143.5, -105.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 143.5, -105.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 137.6, -80.3 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 137.6, -80.3 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 244.6, -104 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 244.6, -104 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 413.4, -92.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 413.4, -92.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 582.2, -96 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 582.2, -96 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 747.1, -95.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 747.1, -95.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 912, -95.8 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 912, -95.8 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.96, 1.96 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -54 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -54 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -75.5 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -75.5 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -78 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -78 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -85.6 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -85.6 );

--敵の動き２
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 174 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 160 + OFFSET_X, 1, 86.4, -155.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 26.3, -155.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -10.9, -155.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -23.6, -155.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -23.6, -155.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 158.6, -141.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 158.6, -141.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 105.4, -131.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 105.4, -131.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 135, -149.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 135, -149.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 119.2, -129.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 119.2, -129.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 140.9, -143.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 140.9, -143.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 138.9, -131.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 138.9, -131.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 133, -139.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 133, -139.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 289.7, -139.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 289.7, -139.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 446.5, -139.6 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 446.5, -139.6 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 603.2, -139.6 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 760, -139.6 , 0 );

setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.14, 2.14 );

setRotateKey( spep_0 + 160 + OFFSET_X, 1, -47 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -20.8 );

-- ** 音 ** --
--初手パンチ
SE005 = playSeVer2( spep_0 + 88, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 102, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 110, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 110, 1110, "", 0, 0, 0, -1);

--横ダッシュ
SE009 = playSeVer2( spep_0 + 146, 1048, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 146, 44, "", 0, 0, 0, -1);

--殴り飛ばす
SE011 = playSeVer2( spep_0 + 172, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 172, 1047, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 174, 1000, "", 0, 0, 0, -1);

--着地
SE014 = playSeVer2( spep_0 + 192, 1108, "", 0, 0, 0, -1);

--飛び上がる
SE015 = playSeVer2( spep_0 + 202, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 202, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE016, 74 );

--回転
SE017 = playSeVer2( spep_0 + 220, 1151, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 230, 1151, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 240, 1151, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 250, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE020, 93 );
SE021 = playSeVer2( spep_0 + 260, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE021, 93 );
SE022 = playSeVer2( spep_0 + 268, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE022, 82 );

--着地
SE023 = playSeVer2( spep_0 + 284, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE023, 172 );
SE024 = playSeVer2( spep_0 + 284, 1192, "",spep_0 + 304, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 284, SE024, 120 );
SE025 = playSeVer2( spep_0 + 284, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE025, 84 );

--立ち上がる
SE026 = playSeVer2( spep_0 + 324, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE026, 80 );

--構える
SE027 = playSeVer2( spep_0 + 356, 1237, "",spep_0 + 408, 4, 10, -1);
setStartTimeMs( SE027,  133 );
SE028 = playSeVer2( spep_0 + 358, 1006, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --396

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--飛びかかる
SE030 = playSeVer2( spep_1 + 92, 1116, "", 0, 0, 0, 0.6);
SE031 = playSeVer2( spep_1 + 92, 1241, "", 0, 0, 0, -1);

-------------------------------------------------
-- 飛び蹴りを喰らわす(208f)
-------------------------------------------------
MAX_FRAME_2 = 208;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002　飛び蹴りを喰らわす
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002b　飛び蹴りを喰らわす 奥側
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0 + OFFSET_X, 1, 727.6, -309.8 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 682.8, -307.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 637.6, -305.9 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 592.2, -303.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 547, -302 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 502.3, -300 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 458.4, -298.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 415.6, -296.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 374.3, -294.3 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 365.2, -293.8 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 356.5, -293.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 348.1, -292.8 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 340, -292.3 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 332.2, -291.8 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 324.7, -291.4 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 317.5, -291 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 310.5, -290.5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 303.9, -290.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 297.5, -289.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 291.4, -289.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 285.5, -289 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 279.9, -288.7 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 274.6, -288.4 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 269.5, -288.1 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 264.6, -287.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 259.9, -287.5 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 255.5, -287.2 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 251.2, -287 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 247.2, -286.8 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 243.4, -286.5 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 239.7, -286.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 236.3, -286.1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 233, -285.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 229.9, -285.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 227, -285.5 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 224.3, -285.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 221.7, -285.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 219.3, -285.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 217, -284.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 214.9, -284.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 212.9, -284.7 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 212.9, -284.7 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -32.4, -189.1 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -32.4, -189.1 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 14.3, -189.1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 14.3, -189.1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 98.9, -189 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 98.9, -189 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 120.4, -173.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 120.4, -173.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 102.7, -196.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 102.7, -196.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 118.3, -177.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 118.3, -177.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 147.7, -198.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 147.7, -198.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 143.7, -183.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 143.7, -183.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 156.4, -194.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 156.4, -194.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 391.5, -87.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 675.8, -87.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 960.1, -87.3 , 0 );

setScaleKey( spep_2 + 0 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 4.11, 4.11 );

setRotateKey( spep_2 + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -4.4 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--飛びかかる
SE032 = playSeVer2( spep_2 + 24, 1391, "",spep_2 + 92, 0, 32, -1);

--キック
SE033 = playSeVer2( spep_2 + 84, 1120, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 102, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 88 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム 208f -4


end
