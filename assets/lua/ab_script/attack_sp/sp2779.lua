--1030150:UR_黒衣の女戦士_必殺技：グラスフォール
--sp_effect_a9_00135
--sp2779

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163277;  --開始～氷塊前でポーズ ef_001
SP_02 = 163279;  --氷塊発射～フィニッシュ ef_002
SP_02b = 163280;  --氷塊発射～フィニッシュ ef_002b

--エフェクト(敵)
SP_01r = 163278;  --開始～氷塊前でポーズ ef_001r
SP_02r = 163281;  --氷塊発射～フィニッシュ ef_002r
SP_02br = 163282;  --氷塊発射～フィニッシュ ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始～氷塊前でポーズ
-------------------------------------------------
MAX_FRAME_0 = 306;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～氷塊前でポーズ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, -515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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

-- ** 音 ** --

--構える
SE002 = playSeVer2( spep_0 + 12, 1004, "", 0, 0, 0, -1);

--氷出現する
SE003 = playSeVer2( spep_0 + 76, 1384, "",spep_0 + 174, 0, 54, -1);
SE004 = playSeVer2( spep_0 + 76, 1339, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 145 );
SE005 = playSeVer2( spep_0 + 80, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE005, 50 );
SE006 = playSeVer2( spep_0 + 80, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE006, 79 );
SE007 = playSeVer2( spep_0 + 104, 1226, "",spep_0 + 320, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 104, SE007, 37 );

--画面遷移
SE008 = playSeVer2( spep_0 + 170, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE008, 79 );

--天を指さす
SE009 = playSeVer2( spep_0 + 200, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 218, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 218, 1116, "",spep_0 + 264, 0, 24, -1);

--ポーズとる
SE012 = playSeVer2( spep_0 + 276, 4, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 306F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-- ** 音 ** --

--ベース音
SE014 = playSeVer2( spep_1 + 78, 1263, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 78, 1226, "",spep_1 + 406, 0, 38, -1);
setSeVolumeByWorkId( spep_1 + 78, SE015, 45 );

-------------------------------------------------
-- 氷塊発射～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 448;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 氷塊発射～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 氷塊発射～フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --

--敵の動き1--

setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 182 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 140 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 172 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, 178.8, -230.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 178.8, -230.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 183.2, -226.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 183.2, -226.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 183, -236.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 183, -236.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 173.4, -225.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 173.4, -225.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 172.4, -237.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 172.4, -237.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 178.8, -230.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 178.8, -230.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 160.6, -302.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 160.6, -302.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 148, -231.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 148, -231.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 152.1, -264.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 152.1, -264.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 87.5, -217.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 87.5, -217.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 110.5, -184.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 110.5, -184.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 165.7, -251 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 165.7, -251 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 275.3, -244.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 275.3, -244.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 290.7, -269 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 290.7, -269 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 275.3, -244.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 275.3, -244.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 278.4, -273 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 278.4, -273 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 290.7, -258.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 290.7, -258.9 , 0 );

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 27.2 );

--敵の動き2--

setDisp( spep_2 + 286 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 302 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 286 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 286 + OFFSET_X, 1, 3.9, -353.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 3.9, -353.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 40, -282.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 40, -282.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 55.9, -333 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 55.9, -333 , 0 );

setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_2 + 286 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -2.4 );

setBlendColor( spep_2 + 286 + OFFSET_X, 1, 3, 0,0, 0, 0.75 );
setBlendColor( spep_2 + 302 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--指むける
SE016 = playSeVer2( spep_2 + 54, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE016, 151 );

--氷飛ばす
SE017 = playSeVer2( spep_2 + 82, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 82, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE018, 62 );
SE019 = playSeVer2( spep_2 + 82, 1384, "",spep_2 + 202, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 82, SE019, 75 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 142; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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

--敵ヒット
SE020 = playSeVer2( spep_2 + 156, 1114, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 156, 1120, "", 0, 0, 0, -1);

--爆発前前兆
SE022 = playSeVer2( spep_2 + 224, 1157, "",spep_2 + 322, 0, 36, -1);
SE023 = playSeVer2( spep_2 + 224, 1250, "",spep_2 + 320, 0, 32, -1);
SE024 = playSeVer2( spep_2 + 276, 1160, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 278, 1067, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 284, 1267, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 298); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 448F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始～氷塊前でポーズ
-------------------------------------------------
MAX_FRAME_0 = 306;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開始～氷塊前でポーズ(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;
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
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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

-- ** 音 ** --

--構える
SE002 = playSeVer2( spep_0 + 12, 1004, "", 0, 0, 0, -1);

--氷出現する
SE003 = playSeVer2( spep_0 + 76, 1384, "",spep_0 + 174, 0, 54, -1);
SE004 = playSeVer2( spep_0 + 76, 1339, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE004, 145 );
SE005 = playSeVer2( spep_0 + 80, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE005, 50 );
SE006 = playSeVer2( spep_0 + 80, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE006, 79 );
SE007 = playSeVer2( spep_0 + 104, 1226, "",spep_0 + 320, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 104, SE007, 37 );

--画面遷移
SE008 = playSeVer2( spep_0 + 170, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE008, 79 );

--天を指さす
SE009 = playSeVer2( spep_0 + 200, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 218, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 218, 1116, "",spep_0 + 264, 0, 24, -1);

--ポーズとる
SE012 = playSeVer2( spep_0 + 276, 4, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 306F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-- ** 音 ** --

--ベース音
SE014 = playSeVer2( spep_1 + 78, 1263, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 78, 1226, "",spep_1 + 406, 0, 38, -1);
setSeVolumeByWorkId( spep_1 + 78, SE015, 45 );

-------------------------------------------------
-- 氷塊発射～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 448;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 氷塊発射～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 氷塊発射～フィニッシュ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --

--敵の動き1--

setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 182 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 140 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 172 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, 178.8, -230.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 178.8, -230.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 183.2, -226.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 183.2, -226.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 183, -236.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 183, -236.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 173.4, -225.1 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 173.4, -225.1 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 172.4, -237.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 172.4, -237.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 178.8, -230.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 178.8, -230.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 160.6, -302.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 160.6, -302.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 148, -231.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 148, -231.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 152.1, -264.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 152.1, -264.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 87.5, -217.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 87.5, -217.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 110.5, -184.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 110.5, -184.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 165.7, -251 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 165.7, -251 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 275.3, -244.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 275.3, -244.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 290.7, -269 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 290.7, -269 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 275.3, -244.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 275.3, -244.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 278.4, -273 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 278.4, -273 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 290.7, -258.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 290.7, -258.9 , 0 );

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 27.2 );

--敵の動き2--

setDisp( spep_2 + 286 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 302 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 286 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 286 + OFFSET_X, 1, 3.9, -353.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 3.9, -353.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 40, -282.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 40, -282.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 55.9, -333 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 55.9, -333 , 0 );

setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_2 + 286 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -2.4 );

setBlendColor( spep_2 + 286 + OFFSET_X, 1, 3, 0,0, 0, 0.75 );
setBlendColor( spep_2 + 302 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--指むける
SE016 = playSeVer2( spep_2 + 54, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE016, 151 );

--氷飛ばす
SE017 = playSeVer2( spep_2 + 82, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 82, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE018, 62 );
SE019 = playSeVer2( spep_2 + 82, 1384, "",spep_2 + 202, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 82, SE019, 75 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 142; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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

--敵ヒット
SE020 = playSeVer2( spep_2 + 156, 1114, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 156, 1120, "", 0, 0, 0, -1);

--爆発前前兆
SE022 = playSeVer2( spep_2 + 224, 1157, "",spep_2 + 322, 0, 36, -1);
SE023 = playSeVer2( spep_2 + 224, 1250, "",spep_2 + 320, 0, 32, -1);
SE024 = playSeVer2( spep_2 + 276, 1160, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 278, 1067, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 284, 1267, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 298); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 448F

end