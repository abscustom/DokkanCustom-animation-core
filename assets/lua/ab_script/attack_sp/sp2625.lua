--1027570:UR_ピラフ_簡易版
--sp_effect_a9_00112
--sp2625

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162385;	--突撃	ef_005
SP_01b = 162330;	--登場＆突撃（ピラフのみ）	ef_004
SP_02 = 162326;	--正面迫る＆文字EF	ef_002
SP_02b = 162328;	--敵にヒット＆背景	ef_003

--エフェクト(てき)
SP_01r = 162386;	--突撃	ef_005r
SP_01br = 162331;	--登場＆突撃（ピラフのみ）	ef_004r
SP_02r = 162327;	--正面迫る＆文字EF	ef_002r
SP_02br = 162329;	--敵にヒット＆背景	ef_003r

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
-- 登場＆突撃（ピラフのみ）
-------------------------------------------------


MAX_FRAME_0 = 254;


-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 白フェード ** --
entryFade( spep_0 + 142, 8, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 248, 6, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 64;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 255 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 160 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 160 + OFFSET_X, 1, 202, 114 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 202, 114 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 202, 113.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 202, 113.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 202, 112.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 202, 112.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 202, 110.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 202, 110.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 202, 107.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 202, 107.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 202, 104.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 202, 104.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 202, 101.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 202, 101.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 202, 97.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 202, 97.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 202, 94.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 202, 94.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 202, 90.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 202, 90.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 202, 86.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 202, 86.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 202, 83.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 202, 83.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 202, 79.6 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 202, 79.6 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 202, 76.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 202, 76.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 202, 72.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 202, 72.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 202, 69.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 202, 69.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 202, 66.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 202, 66.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 202, 64.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 202, 64.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 202, 62 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 202, 62 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 202, 59.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 202, 59.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 202, 58.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 202, 58.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 202, 56.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 202, 56.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 202, 55.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 202, 55.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 202, 54.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 202, 54.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 202, 54.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 202, 54.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 202, 54 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 202, 54 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 202, 53.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 202, 53.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 202, 52.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 202, 52.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 202, 52 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 202, 52 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 202, 51.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 202, 51.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 202, 50.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 202, 50.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 202, 50 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 202, 50 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 202, 49.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 202, 49.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 202, 48.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 202, 48.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 202, 48 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 202, 48 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 202, 47.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 202, 47.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 202, 46.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 202, 46.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 202, 46 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 202, 46 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 202, 45.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 202, 45.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 202, 44.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 202, 44.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 202, 44 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 202, 44 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 201.9, 44.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 201.9, 44.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 201.9, 44.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 201.9, 44.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 202, 44.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 202, 44.2 , 0 );

setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 160 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--指さす
SE002 = playSeVer2( spep_0 + 46, 1150, "", 0, 4, 0, -1);
setStartTimeMs( SE002,  367 );
SE003 = playSeVer2( spep_0 + 54, 1189, "", 0, 0, 0, -1);

--指さす
SE005 = playSeVer2( spep_0 + 64, 1045, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE006, 93 );
SE006 = playSeVer2( spep_0 + 64, 1170, "", 0, 0, 0, -1);

--飛び上がる
SE007 = playSeVer2( spep_0 + 152, 1012, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 152, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 152, 1152, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE010, 71 );
SE010 = playSeVer2( spep_0 + 152, 1326, "",spep_0 + 214, 0, 34, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 186; --エンドフェイズのフレーム数を置き換える

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
-- ** 音 ** --
--まるくなる
SE011 = playSeVer2( spep_0 + 196, 1260, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE012, 135 );
SE012 = playSeVer2( spep_0 + 204, 1151, "", 0, 0, 0, -1);

--飛んでいく
SE013 = playSeVer2( spep_0 + 234, 1027, "",spep_0 + 266, 0, 8, -1);
SE014 = playSeVer2( spep_0 + 234, 1193, "",spep_0 + 266, 0, 8, -1);
SE015 = playSeVer2( spep_0 + 234, 1121, "",spep_0 + 266, 0, 8, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --254


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 正面迫る＆文字EF/正面迫る＆文字EF
-------------------------------------------------

MAX_FRAME_1 = 238;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 70, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 78 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 238 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 78 + OFFSET_X, 1, 102 );
changeAnime( spep_1 + 98 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 78 + OFFSET_X, 1, 0, 3 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 0, 3 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, -8.4, 45.4 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, -8.4, 45.4 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, -4.9, 67.6 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, -4.9, 67.6 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, -4.1, 45.6 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, -4.1, 45.6 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -3.5, 61.5 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, -3.5, 61.5 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -3.1, 47.8 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, -3.1, 47.8 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -3, 62.5 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, -3, 62.5 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, -23.2, 9.5 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, -23.2, 9.5 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, -79.9, -152.7 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, -79.9, -152.7 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 54.9, -76.1 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 54.9, -76.1 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, -62.5, -264.4 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, -62.5, -264.4 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, -92, -98 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, -92, -98 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 27.2, -80.6 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 27.2, -80.6 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 26, -100.8 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 26, -100.8 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 27.2, -85 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 27.2, -85 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 26, -99.5 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 26, -99.5 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 27.2, -89.7 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 27.2, -89.7 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 26, -96.7 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 26, -96.7 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 27.2, -89.7 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 27.2, -89.7 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 26, -94.6 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 26, -94.6 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 27.2, -91.7 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 27.2, -91.7 , 0 );

setScaleKey( spep_1 + 78 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_1 + 78 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 109 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_1 + 111 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, -157.7 );
setRotateKey( spep_1 + 113 + OFFSET_X, 1, -157.7 );
setRotateKey( spep_1 + 114 + OFFSET_X, 1, -332.9 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, -332.9 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -180 );
setRotateKey( spep_1 + 117 + OFFSET_X, 1, -180 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, -60.8 );
setRotateKey( spep_1 + 119 + OFFSET_X, 1, -60.8 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 238 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--回転しながら飛んでくる
SE017 = playSeVer2( spep_1 + 0, 1182, "", spep_1 + 90, 0, 10, -1);
SE020 = playSeVer2( spep_1 + 0, 1326, "",spep_1 + 116, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 0, SE021, 94 );
SE021 = playSeVer2( spep_1 + 0, 1399, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE022, 153 );
SE022 = playSeVer2( spep_1 + 24, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 24, SE023, 49 );
setTimeStretch( SE023, 1.4, 30, 4 );
SE018 = playSeVer2( spep_1 + 0, 1409, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE019, 237 );
SE019 = playSeVer2( spep_1 + 0, 1403, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE020, 176 );

--敵ヒット
SE023 = playSeVer2( spep_1 + 92, 1187, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 92, 1120, "", 0, 0, 0, -1);

--画面割れる
SE025 = playSeVer2( spep_1 + 116, 1054, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 116, 1025, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 130); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場＆突撃（ピラフのみ）
-------------------------------------------------


MAX_FRAME_0 = 254;


-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_004r
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 白フェード ** --
entryFade( spep_0 + 142, 8, 10, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 248, 6, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 64;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 255 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 160 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 160 + OFFSET_X, 1, 202, 114 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 202, 114 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 202, 113.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 202, 113.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 202, 112.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 202, 112.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 202, 110.2 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 202, 110.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 202, 107.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 202, 107.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 202, 104.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 202, 104.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 202, 101.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 202, 101.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 202, 97.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 202, 97.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 202, 94.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 202, 94.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 202, 90.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 202, 90.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 202, 86.8 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 202, 86.8 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 202, 83.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 202, 83.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 202, 79.6 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 202, 79.6 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 202, 76.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 202, 76.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 202, 72.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 202, 72.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 202, 69.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 202, 69.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 202, 66.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 202, 66.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 202, 64.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 202, 64.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 202, 62 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 202, 62 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 202, 59.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 202, 59.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 202, 58.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 202, 58.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 202, 56.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 202, 56.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 202, 55.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 202, 55.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 202, 54.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 202, 54.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 202, 54.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 202, 54.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 202, 54 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 202, 54 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 202, 53.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 202, 53.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 202, 52.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 202, 52.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 202, 52 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 202, 52 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 202, 51.3 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 202, 51.3 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 202, 50.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 202, 50.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 202, 50 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 202, 50 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 202, 49.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 202, 49.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 202, 48.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 202, 48.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 202, 48 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 202, 48 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 202, 47.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 202, 47.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 202, 46.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 202, 46.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 202, 46 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 202, 46 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 202, 45.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 202, 45.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 202, 44.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 202, 44.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 202, 44 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 202, 44 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 201.9, 44.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 201.9, 44.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 201.9, 44.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 201.9, 44.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 202, 44.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 202, 44.2 , 0 );

setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 160 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--指さす
SE002 = playSeVer2( spep_0 + 46, 1150, "", 0, 4, 0, -1);
setStartTimeMs( SE002,  367 );
SE003 = playSeVer2( spep_0 + 54, 1189, "", 0, 0, 0, -1);

--指さす
SE005 = playSeVer2( spep_0 + 64, 1045, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE006, 93 );
SE006 = playSeVer2( spep_0 + 64, 1170, "", 0, 0, 0, -1);

--飛び上がる
SE007 = playSeVer2( spep_0 + 152, 1012, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 152, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 152, 1152, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE010, 71 );
SE010 = playSeVer2( spep_0 + 152, 1326, "",spep_0 + 214, 0, 34, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 186; --エンドフェイズのフレーム数を置き換える

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
-- ** 音 ** --
--まるくなる
SE011 = playSeVer2( spep_0 + 196, 1260, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE012, 135 );
SE012 = playSeVer2( spep_0 + 204, 1151, "", 0, 0, 0, -1);

--飛んでいく
SE013 = playSeVer2( spep_0 + 234, 1027, "",spep_0 + 266, 0, 8, -1);
SE014 = playSeVer2( spep_0 + 234, 1193, "",spep_0 + 266, 0, 8, -1);
SE015 = playSeVer2( spep_0 + 234, 1121, "",spep_0 + 266, 0, 8, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --254


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 正面迫る＆文字EF/正面迫る＆文字EF
-------------------------------------------------

MAX_FRAME_1 = 238;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002r
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_003r
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 70, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 78 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 238 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 78 + OFFSET_X, 1, 102 );
changeAnime( spep_1 + 98 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 78 + OFFSET_X, 1, 0, 3 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 0, 3 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, -8.4, 45.4 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, -8.4, 45.4 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, -4.9, 67.6 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, -4.9, 67.6 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, -4.1, 45.6 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, -4.1, 45.6 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -3.5, 61.5 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, -3.5, 61.5 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -3.1, 47.8 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, -3.1, 47.8 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -3, 62.5 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, -3, 62.5 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, -23.2, 9.5 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, -23.2, 9.5 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, -79.9, -152.7 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, -79.9, -152.7 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 54.9, -76.1 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 54.9, -76.1 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, -62.5, -264.4 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, -62.5, -264.4 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, -92, -98 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, -92, -98 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 27.2, -80.6 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 27.2, -80.6 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 26, -100.8 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 26, -100.8 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 27.2, -85 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 27.2, -85 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 26, -99.5 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 26, -99.5 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 27.2, -89.7 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 27.2, -89.7 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 26, -96.7 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 26, -96.7 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 27.2, -89.7 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 27.2, -89.7 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 26, -94.6 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 26, -94.6 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 27.2, -91.7 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 27.2, -91.7 , 0 );

setScaleKey( spep_1 + 78 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 123 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 129 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 131 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 135 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 136 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_1 + 78 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 109 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 110 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_1 + 111 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, -157.7 );
setRotateKey( spep_1 + 113 + OFFSET_X, 1, -157.7 );
setRotateKey( spep_1 + 114 + OFFSET_X, 1, -332.9 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, -332.9 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -180 );
setRotateKey( spep_1 + 117 + OFFSET_X, 1, -180 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, -60.8 );
setRotateKey( spep_1 + 119 + OFFSET_X, 1, -60.8 );
setRotateKey( spep_1 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 238 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--回転しながら飛んでくる
SE017 = playSeVer2( spep_1 + 0, 1182, "", spep_1 + 90, 0, 10, -1);
SE020 = playSeVer2( spep_1 + 0, 1326, "",spep_1 + 116, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 0, SE021, 94 );
SE021 = playSeVer2( spep_1 + 0, 1399, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE022, 153 );
SE022 = playSeVer2( spep_1 + 24, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 24, SE023, 49 );
setTimeStretch( SE023, 1.4, 30, 4 );
SE018 = playSeVer2( spep_1 + 0, 1409, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE019, 237 );
SE019 = playSeVer2( spep_1 + 0, 1403, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE020, 176 );

--敵ヒット
SE023 = playSeVer2( spep_1 + 92, 1187, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 92, 1120, "", 0, 0, 0, -1);

--画面割れる
SE025 = playSeVer2( spep_1 + 116, 1054, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_1 + 116, 1025, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 130); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

end
