--4022200:超ゴジータ_格闘無効
--sp_effect_b4_00192

setPhase(9);

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

print("_SPECIAL_ENERGY_COLOR_");
print(_SPECIAL_ENERGY_COLOR_);

SP_01 = 157555;--本体
SP_02 = 157556;--敵攻撃にかかるエフェクト

-- ズーム許可
setEnvZoomEnable(0, 0);
setVisibleUI(0, 0);
removeAllEffect(2);--必要

setDisp( 0 , 1, 0 );

setMoveKey( 0, 1, 5000, 0 , 0 );
setMoveKey( 1, 1, 5000, 0 , 0 );
setMoveKey( 2, 1, 5000, 0 , 0 );
setMoveKey( 3, 1, 5000, 0 , 0 );
setMoveKey( 4, 1, 5000, 0 , 0 );
setMoveKey( 5, 1, 5000, 0 , 0 );

setScaleKey( 0, 1, 1, 1 );
setScaleKey( 1, 1, 1, 1 );
setScaleKey( 2, 1, 1, 1 );
setScaleKey( 3, 1, 1, 1 );
setScaleKey( 4, 1, 1, 1 );
setScaleKey( 5, 1, 1, 1 );

setRotateKey( 0, 1, 0 );
setRotateKey( 1, 1, 0 );
setRotateKey( 2, 1, 0 );
setRotateKey( 3, 1, 0 );
setRotateKey( 4, 1, 0 );
setRotateKey( 5, 1, 0 );

-- ** 冒頭に白フェードを出す ** --
entryFade(4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fadeシーン切り替わり予定

------------------------------------------------------
-- 格闘無効演出(96F)
------------------------------------------------------
flipAttackerSide(0)

spep_1 = 4;
-- ** エフェクト等 ** --
eff_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, eff_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 104, eff_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, eff_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 104, eff_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, eff_f, 0 );
setEffRotateKey( spep_1 + 104, eff_f, 0 );
setEffAlphaKey( spep_1 + 0, eff_f, 255 );
setEffAlphaKey( spep_1 + 104, eff_f, 255 );

-- ** エフェクト等 ** --
eff_b = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, eff_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 104, eff_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, eff_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 104, eff_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, eff_b, 0 );
setEffRotateKey( spep_1 + 104, eff_b, 0 );
setEffAlphaKey( spep_1 + 0, eff_b, 255 );
setEffAlphaKey( spep_1 + 104, eff_b, 255 );

--敵の動き
--[[setDisp( spep_1-1 + 12, 1, 1 );
setDisp( spep_1-1 + 18, 1, 0 );

changeAnime( spep_1-1 + 12, 1, 110 );
--changeAnime( spep_1-1 + 12, 1, 10 );


--元
setMoveKey( spep_1-1 + 12, 1, 2472.8, -458.3 , 0 );
setMoveKey( spep_1-1 + 18, 1, 2472.8, -458.3 , 0 );

setScaleKey( spep_1-1 + 12, 1, 21.54, 21.54 );
setScaleKey( spep_1-1 + 18, 1, 21.54, 21.54 );

setRotateKey( spep_1-1 + 12, 1, 14 );
setRotateKey( spep_1-1 + 18, 1, 14 );
]]

setDisp( spep_1-1 + 12, 0, 1 );
setDisp( spep_1-1 + 18, 0, 0 );

changeAnime( spep_1-1 + 12, 0, 110 );
--changeAnime( spep_1-1 + 12, 1, 10 );


--元
setMoveKey( spep_1-1 + 12, 0, 2472.8, -458.3 , 0 );
setMoveKey( spep_1-1 + 18, 0, 2472.8, -458.3 , 0 );

setScaleKey( spep_1-1 + 12, 0, 21.54, 21.54 );
setScaleKey( spep_1-1 + 18, 0, 21.54, 21.54 );

setRotateKey( spep_1-1 + 12, 0, 14 );
setRotateKey( spep_1-1 + 18, 0, 14 );

--[[
--悟空
setMoveKey( spep_1-1 + 12, 1, -2472.8, -458.3 , 0 );
setMoveKey( spep_1-1 + 18, 1, -2472.8, -458.3 , 0 );

setScaleKey( spep_1-1 + 12, 1, 21.54, 21.54 );
setScaleKey( spep_1-1 + 18, 1, 21.54, 21.54 );

setRotateKey( spep_1-1 + 12, 1, -14 );
setRotateKey( spep_1-1 + 18, 1, -14 );
]]--

--[[
--スーパージャネンバ 
setMoveKey( spep_1-1 + 12, 1, 3272.8, -758.3 , 0 );
setMoveKey( spep_1-1 + 18, 1, 3272.8, -758.3 , 0 );

setScaleKey( spep_1-1 + 12, 1, 21.54, 21.54 );
setScaleKey( spep_1-1 + 18, 1, 21.54, 21.54 );

setRotateKey( spep_1-1 + 12, 1, 15 );
setRotateKey( spep_1-1 + 18, 1, 15 );
]]

--SE
--顔面ヒット
SE002 = playSe( spep_1 + 12, 1003 );
SE003 = playSe( spep_1 + 14, 1189 );
setSeVolumeByWorkId( spep_1 + 14, SE003, 71 );
SE004 = playSe( spep_1 + 18, 1187 );
stopSe( spep_1 + 36, SE004, 10 );
SE001 = playSe( spep_1 + 18, 1188 );
setSeVolumeByWorkId( spep_1 + 18, SE001, 0 );
setSeVolumeByWorkId( spep_1 + 19, SE001, 37.5 );
setSeVolumeByWorkId( spep_1 + 20, SE001, 75 );
setStartTimeMs( SE001,  183 );
SE005 = playSe( spep_1 + 20, 1190 );
SE006 = playSe( spep_1 + 22, 1153 );
setSeVolumeByWorkId( spep_1 + 22, SE006, 86 );


-- ダメージ表示
dealDamage(spep_1+20);

-- ** 背景 ** --
entryFadeBg( spep_1+0, 0, 104, 0, 0, 0, 0, 120);       --ベース暗め　背景

endPhase(94);