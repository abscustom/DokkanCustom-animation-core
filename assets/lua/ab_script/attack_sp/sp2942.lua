--4031980:UR_スーパーベビー2(大猿ベビー)大猿状態_必殺技：超ギャリックブラスター
--sp_effect_a1_00505
--sp2942

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164074; --カード前 ef_001
SP_02  = 164075; --カード後 ef_002

--エフェクト(敵)
SP_01r  = 164076; --カード前：反転用 ef_001r
SP_02r  = 164077; --カード後：反転用 ef_002r

--エフェクト(共通)
SP_01b  = 164081; --カード前_背面 ef_001b

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 472;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カード前_背面(ef_001b)
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
spep_x = spep_0 + 386;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 112 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 112 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 112 + OFFSET_X, 1, -1, 1.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -1, 1.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 31.3, 0.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 31.3, 0.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -7.5, -19.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -7.5, -19.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 203.1, -103.5 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 203.1, -103.5 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 252.1, -146.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 252.1, -146.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 978.6, -215 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 978.6, -215 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 1046.7, -215 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 1046.7, -215 , 0 );

setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 6.98, 6.98 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 6.98, 6.98 );

setRotateKey( spep_0 + 112 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 65 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 65 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 103 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 103 );


-- ** 音 ** --
--おりてくる
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 178, 0, 82, 0.5);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );
SE002 = playSeVer2( spep_0 + 64, 1116, "",spep_0 + 154, 0, 50, -1);
SE003 = playSeVer2( spep_0 + 70, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE003, 86 );
SE004 = playSeVer2( spep_0 + 80, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--平手うち
SE005 = playSeVer2( spep_0 + 114, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 126, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE006, 89 );
SE007 = playSeVer2( spep_0 + 126, 1153, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 132, 1190, "", 0, 0, 0, -1);

--敵とんでいく
SE009 = playSeVer2( spep_0 + 152, 1277, "", 0, 0, 0, -1);

--地面激突
SE010 = playSeVer2( spep_0 + 174, 1061, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 176, 1011, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 198, 1061, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 198, 1159, "", 0, 0, 0, -1);

--着地
SE014 = playSeVer2( spep_0 + 256, 1508, "",spep_0 + 308, 0, 14, 0.6);
setSeVolumeByWorkId( spep_0 + 256, SE014, 56 );
SE015 = playSeVer2( spep_0 + 256, 63, "",spep_0 + 308, 0, 18, -1);
SE016 = playSeVer2( spep_0 + 278, 1395, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 278, 1188, "", 0, 0, 0, -1);

--吠える
SE018 = playSeVer2( spep_0 + 356, 1066, "",spep_0 + 494, 0, 16, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 472f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 268;

-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- カード後(ef_002)
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_0, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_0, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + MAX_FRAME_0, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_0, base_2, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--気弾発射
SE021 = playSeVer2( spep_2 + 30, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE021, 56 );
SE022 = playSeVer2( spep_2 + 30, 1177, "",spep_2 + 180, 0, 74, -1);
SE023 = playSeVer2( spep_2 + 30, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE023, 141 );
SE024 = playSeVer2( spep_2 + 30, 1446, "",spep_2 + 182, 0, 80, -1);

--気弾飛んでいく
SE025 = playSeVer2( spep_2 + 82, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE025, 148 );
SE026 = playSeVer2( spep_2 + 82, 1179, "", 0, 0, 0, -1);

--爆発
SE027 = playSeVer2( spep_2 + 138, 1159, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 152, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 144); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 268f -2f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 472;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- カード前(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カード前_背面(ef_001b)
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
spep_x = spep_0 + 386;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
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
]]

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 112 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 112 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 112 + OFFSET_X, 1, -1, 1.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -1, 1.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 31.3, 0.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 31.3, 0.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -7.5, -19.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -7.5, -19.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 203.1, -103.5 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 203.1, -103.5 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 252.1, -146.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 252.1, -146.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 978.6, -215 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 978.6, -215 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 1046.7, -215 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 1046.7, -215 , 0 );

setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 6.98, 6.98 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 6.98, 6.98 );

setRotateKey( spep_0 + 112 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 65 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 65 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 103 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 103 );


-- ** 音 ** --
--おりてくる
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 178, 0, 82, 0.5);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );
SE002 = playSeVer2( spep_0 + 64, 1116, "",spep_0 + 154, 0, 50, -1);
SE003 = playSeVer2( spep_0 + 70, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE003, 86 );
SE004 = playSeVer2( spep_0 + 80, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--平手うち
SE005 = playSeVer2( spep_0 + 114, 1004, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 126, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE006, 89 );
SE007 = playSeVer2( spep_0 + 126, 1153, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 132, 1190, "", 0, 0, 0, -1);

--敵とんでいく
SE009 = playSeVer2( spep_0 + 152, 1277, "", 0, 0, 0, -1);

--地面激突
SE010 = playSeVer2( spep_0 + 174, 1061, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 176, 1011, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 198, 1061, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 198, 1159, "", 0, 0, 0, -1);

--着地
SE014 = playSeVer2( spep_0 + 256, 1508, "",spep_0 + 308, 0, 14, 0.6);
setSeVolumeByWorkId( spep_0 + 256, SE014, 56 );
SE015 = playSeVer2( spep_0 + 256, 63, "",spep_0 + 308, 0, 18, -1);
SE016 = playSeVer2( spep_0 + 278, 1395, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 278, 1188, "", 0, 0, 0, -1);

--吠える
SE018 = playSeVer2( spep_0 + 356, 1066, "",spep_0 + 494, 0, 16, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 472f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 268;

-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- カード後(ef_002)
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_0, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_0, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + MAX_FRAME_0, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_0, base_2, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--気弾発射
SE021 = playSeVer2( spep_2 + 30, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE021, 56 );
SE022 = playSeVer2( spep_2 + 30, 1177, "",spep_2 + 180, 0, 74, -1);
SE023 = playSeVer2( spep_2 + 30, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE023, 141 );
SE024 = playSeVer2( spep_2 + 30, 1446, "",spep_2 + 182, 0, 80, -1);

--気弾飛んでいく
SE025 = playSeVer2( spep_2 + 82, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE025, 148 );
SE026 = playSeVer2( spep_2 + 82, 1179, "", 0, 0, 0, -1);

--爆発
SE027 = playSeVer2( spep_2 + 138, 1159, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 152, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 144); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 268f -2f

end