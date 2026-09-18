print ("[lua]exec a0005");

ATK_01 = 26
ATK_02 = ATK_01+30
ATK_03 = ATK_02+35
ATK_END = ATK_03+45

ENABLE_AUTO_TIME_STRETCH(0.9);

--リッチ化ヒットエフェクト
function shockEffect(flame,pra,tag1,tag2,x,y)
	shock01 = entryEffectLife( flame,  55, 8,  pra,  tag1,  tag2,  x,  y);
	setEffScaleKey(flame + 0,shock01,0.7, 0.7);
	setEffAlphaKey(flame + 0,shock01,255);
	setEffAlphaKey(flame + 4,shock01,255);
	setEffAlphaKey(flame + 8,shock01,0);
	shock02 = entryEffectLife( flame+4,  56, 6, pra,  tag1,  tag2,  x,  y);
	setEffScaleKey(flame + 4,shock02,0.7, 0.7);
	setEffAlphaKey(flame + 4,shock02,255);
	setEffAlphaKey(flame + 8,shock02,255);
	setEffAlphaKey(flame + 10,shock02,0);
 
 end

-- 回避カウンター時、カットイン前のフレームで味方キャラが表示されるように (ISHINKI-28854)
setDisp(0, 1, 1);

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 101, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 65, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_03+34, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end


-- ズーム許可
setEnvZoomEnable(0, 1);

-- 味方登場
--                f  eid,life, attr, tgt, tag,  x, y
changeAnime( 0,  0,  3);               -- モーション（ダッシュ）
setMoveKey( 0,   0, -700,  0,   0);   -- 画面外
setMoveKey( 7,   0, -200, 30,   0);   -- 中央に近づく
stopBgScroll(15, 45);
-- 敵登場
setLastPosKey( 0, 1);
setLastPosKey( 10, 1);
-- setMoveKey( 0,   1,  800,  50,   0);      -- 画面外
-- setMoveKey( 10,  1,  800,  100,   0);      --
changeAnime( 0,  1,    101);               -- モーション(立ち)
setMoveKey( 20,  1,  180,  100,   0);      -- 画面中央

-- ** 音 ** --
--向かっていく
SE001 = playSeVer2( 0, 1117, "", 36, 0, 10, -1);
setSeVolumeByWorkId( 0, SE001, 63 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え


kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

	if (_IS_PLAYER_SIDE_ == 1) then

		setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

	else

		setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

	end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5, 0, 75,  100,  0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

setMoveKey( 25,  0, 75,  100,   0);      -- 画面中央 ＆ 元サイズ

-------------------------------------------------------
-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
		-----------------------

setEnvZoomEnable(25, 0);
ryusen = entryEffectLife( ATK_01, 71,  60,  0x80,  -1,  0,  0,  0);
setEffScaleKey(ATK_01, ryusen, 1.0, 1.4)
setEffBlendColor(ATK_01, ryusen, 1, 1,1,1,1);

-- 攻撃
entryFadeBg( ATK_01, 5, 10, 5, 0,  0,  0, 80);

changeAnime( ATK_01,   0, 9);
setShake( ATK_01, 10, 20);
SE1=playSe( ATK_01,1006);--SE
setSeVolume( ATK_01,1006, 70 );
entryEffect( ATK_01,   23,   0x40,   1,  0,-100,  0);
pauseAll(ATK_01+1,5);
--Eダメージ
changeAnime( ATK_01,  1,   104);-- モーション
setDamage( ATK_01+1, 1, 0);  -- ダメージ振動等

setMoveKey( ATK_01+6,  1,  180,  100,   0);      -- 画面中央
setMoveKey( ATK_01+6,  0, 75,  100,   0);      -- 画面中央 ＆ 元サイズ
--移動
setMoveKey( ATK_01+10, 0, -200,  50,  0);-- 中央位置から
setMoveKey( ATK_01+8, 1, 700,  100,  0);-- 中央位置から


--突っ込む
changeAnime( ATK_01+9,   0, 0);
setMoveKey( ATK_01+25, 0, -230,  0,   0);-- 中央位置から

------------------------------------------
--移動
changeAnime( ATK_02,   0, 3);
setMoveKey( ATK_02+10, 0, 70,  -80,  0);-- 中央位置から

changeAnime( ATK_02,   1, 100);
setMoveKey( ATK_02+4, 1, 700,  100,  0);-- 中央位置から
setMoveKey( ATK_02+5, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_02+9, 1, 180,  -80,  0);-- 中央位置から

-- 攻撃
changeAnime( ATK_02+8,   0, 12);
SE2=playSe( ATK_02+8,1007);--SE
setSeVolume( ATK_02+8,1007, 70 );
entryEffect( ATK_02+8, 23,  0x40,    1,  0,-100,  0);
--ダメージ
changeAnime( ATK_02+8, 1,  104);-- モーション
setDamage( ATK_02+9, 1, 0);  -- ダメージ振動等
pauseAll(ATK_02+9,5);

--移動
setMoveKey( ATK_02+14, 1, 180,  -80,  0);-- 中央位置から
setMoveKey( ATK_02+14, 0, 70,  -80,  0);-- 中央位置から

setMoveKey( ATK_02+17, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_02+16, 0, -200,  -30,  0);-- 中央位置から

--突っ込む
changeAnime( ATK_02+17,   0, 0);
setMoveKey( ATK_02+30, 0, -230,  0,   0);-- 中央位置から

------------------------------------------
--移動
changeAnime( ATK_03,   0, 3);

changeAnime( ATK_03,   1, 100);

--移動
setMoveKey( ATK_03, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_03, 0, -230,  -30,  0);-- 中央位置から

setMoveKey( ATK_03+5, 0, -80,  0,   0);-- 中央位置から
setMoveKey( ATK_03+5, 1, 80,  0,   0);-- 中央位置から

setEnvZoomEnable(ATK_03+4, 1);
changeAnime( ATK_03+3,   0, 9);
SE3=playSe( ATK_03+5,1006);--SE
setSeVolume( ATK_03+5,1006, 70 );
stopSe( ATK_03+5, SE1, 6 );

entryEffect( ATK_03+5,   23,   0x40,     1,  0,-100,  0);

--Eダメージ
changeAnime( ATK_03+6,  1,   104);-- モーション

--攻撃
changeAnime( ATK_03+10,   0, 10);
--entryEffect( ATK_03+10,   23,   0x40,    1,  0,-100,  0);
SE4=playSe( ATK_03+10,1006);--SE
setSeVolume( ATK_03+10,1006, 70 );
stopSe( ATK_03+10, SE2, 6 );

changeAnime( ATK_03+14,   0, 12);
setShake( ATK_03+14, 10, 20);
SE5=playSe( ATK_03+14,1007);--SE
setSeVolume( ATK_03+14,1007, 70 );
stopSe( ATK_03+14, SE3, 6 );

entryEffect( ATK_03+14,   23,   0x40,     1,  0,-100,  0);

--攻撃
changeAnime( ATK_03+18,   0, 13);
--entryEffect( ATK_03+18,   23,   0x40,    1,  0,-100,  0);
SE6=playSe( ATK_03+18,1007);--SE
setSeVolume( ATK_03+18,1007, 70 );
stopSe( ATK_03+18, SE4, 6 );

changeAnime( ATK_03+21,   0, 9);
setShake( ATK_03+21, 10, 20);
SE7=playSe( ATK_03+21,1006);--SE
setSeVolume( ATK_03+21,1006, 70 );
stopSe( ATK_03+21, SE5, 6 );
--entryEffect( ATK_03+21,   23,   0x40,    1,  0,-100,  0);

--攻撃
changeAnime( ATK_03+25,   0, 12);
entryEffect( ATK_03+25,   23,   0x40,    1,  0,-100,  0);
SE8=playSe( ATK_03+25,1007);--SE
setSeVolume( ATK_03+25,1007, 70 );
stopSe( ATK_03+21, SE6, 6 );

changeAnime( ATK_03+29, 0, 10);
setShake( ATK_03+29, 10, 20);
SE9=playSe( ATK_03+29,1007);--SE
setSeVolume( ATK_03+29,1007, 70 );
stopSe( ATK_03+29, SE7, 6 );

entryEffect( ATK_03+29,  23,   0x40,    1,  0,-100,  0);

--Eダメージ
setDamage( ATK_03+30, 1, 0);  -- ダメージ振動等

--P ぱんち
changeAnime( ATK_03+34, 0,  13);  -- 蹴り
playSe( ATK_03+34, 1008);--SE
setSeVolume( ATK_03+34,1008, 70 );
--entryEffect( ATK_03+34,   23,   0x40,    1,  0,-100,  0);
dealDamage( ATK_03+34);
----------------------------
else

setEnvZoomEnable(25, 0);
ryusen = entryEffectLife( ATK_01, 71,  60,  0x80,  -1,  0,  0,  0);
setEffScaleKey(ATK_01, ryusen, 1.0, 1.4)
setEffBlendColor(ATK_01, ryusen, 1, 1,1,1,1);

-- 攻撃
entryFadeBg( ATK_01, 5, 10, 5, 0,  0,  0, 80);

changeAnime( ATK_01,   0, 9);
setShake( ATK_01, 10, 20);
-- SE1=playSe( ATK_01,1000);--SE
-- setSeVolume( ATK_01,1000, 70 );

hit01 = entryEffectLife(  ATK_01+1,  64,  10,  0x40,  1,   0,  0,  0);
setEffScaleKey(ATK_01+1, hit01, 1.2, 1.2);
setEffAlphaKey(ATK_01+1, hit01,255);
setEffAlphaKey(ATK_01+1 + 10, hit01, 0);

shockEffect( ATK_01+1,   0,  1,   0,  0,  0);
-- shuchusen01 = entryEffectLife( ATK_01+1,  70,  2,  0,  -1,  0,  0,  0);--集中線
-- setEffScaleKey( ATK_01+1, shuchusen01, 1.0, 1.2);

--Eダメージ
changeAnime( ATK_01+1,  1,   106);-- モーション
setDamage( ATK_01+1, 1, 0);  -- ダメージ振動等

--攻撃
changeAnime( ATK_01+4,   0, 10);
hit02 = entryEffectLife(  ATK_01+4,  67,  10,  0x40,  1,   0,  0,  -20);
setEffScaleKey(ATK_01+4, hit02, 1.2, 1.2);
setEffAlphaKey(ATK_01+4, hit02,255);
setEffAlphaKey(ATK_01+4 + 10, hit02, 0);

-- SE2=playSe( ATK_01+4,1000);--SE
-- setSeVolume( ATK_01+4,1000, 70 );

changeAnime( ATK_01+6,   0, 9);
setShake( ATK_01+6, 10, 20);
-- SE3=playSe( ATK_01+6,1000);--SE
-- setSeVolume( ATK_01+6,1000, 70 );
-- stopSe( ATK_01+6, SE1, 6 );

hit03 = entryEffectLife(  ATK_01+6,  61,  10,  0x40,  1,   0,  0,  0);
setEffScaleKey(ATK_01+6, hit03, 0.8, 0.8);
setEffAlphaKey(ATK_01+6, hit03,255);
setEffAlphaKey(ATK_01+6 + 10, hit03, 0);

shockEffect( ATK_01+7,   0,  1,   0,  0,  0);
-- shuchusen02 = entryEffectLife( ATK_01+7,  70,  2,  0,  -1,  0,  0,  0);--集中線
-- setEffScaleKey( ATK_01+7, shuchusen02, 1.0, 1.2);

--Eダメージ
setDamage( ATK_01+7, 1, 0);  -- ダメージ振動等

--攻撃
changeAnime( ATK_01+10,   0, 10);

hit04 = entryEffectLife(  ATK_01+10,  65,  10,  0x40,  1,   0,  0,  -10);
setEffScaleKey(ATK_01+10, hit04, 1.4, 1.4);
setEffAlphaKey(ATK_01+10, hit04,255);
setEffAlphaKey(ATK_01+10 + 10, hit04, 0);

-- SE4=playSe( ATK_01+10,1000);--SE
-- setSeVolume( ATK_01+10,1000, 70 );
-- stopSe( ATK_01+10, SE2, 6 );

setMoveKey( ATK_01+15,  1,  180,  100,   0);      -- 画面中央
setMoveKey( ATK_01+15,  0, 70,  100,   0);      -- 画面中央 ＆ 元サイズ
--移動
setMoveKey( ATK_01+20, 0, -200,  50,  0);-- 中央位置から
setMoveKey( ATK_01+18, 1, 700,  100,  0);-- 中央位置から

--突っ込む
changeAnime( ATK_01+20,   0, 0);
setMoveKey( ATK_01+25, 0, -230,  0,   0);-- 中央位置から

------------------------------------------
--移動
changeAnime( ATK_02,   0, 3);
setMoveKey( ATK_02+10, 0, 70,  -80,  0);-- 中央位置から

changeAnime( ATK_02,   1, 100);
setMoveKey( ATK_02+4, 1, 700,  100,  0);-- 中央位置から
setMoveKey( ATK_02+5, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_02+9, 1, 180,  -80,  0);-- 中央位置から

-- 攻撃
changeAnime( ATK_02+8,   0, 12);
-- SE5=playSe( ATK_02+8,1001);--SE
-- setSeVolume( ATK_02+8,1001, 70 );
-- stopSe( ATK_02+8, SE3, 6 );

hit05 = entryEffectLife(  ATK_02+8,  65,  10,  0x40,  1,   0,  0,  0);
setEffScaleKey(ATK_02+8, hit05, 1.4, 1.4);
setEffAlphaKey(ATK_02+8, hit05,255);
setEffAlphaKey(ATK_02+8 + 10, hit05, 0);

shockEffect( ATK_02+8,   0,  1,   0,  0,  0);

-- shuchusen03 = entryEffectLife( ATK_02+8,  70,  2,  0,  -1,  0,  0,  0);--集中線
-- setEffScaleKey( ATK_02+8, shuchusen03, 1.0, 1.2);


--ダメージ
changeAnime( ATK_02+8, 1,  106);-- モーション
setDamage( ATK_02+9, 1, 0);  -- ダメージ振動等


-- 攻撃
changeAnime( ATK_02+11, 0, 13);
-- SE6=playSe( ATK_02+11, 1001);--SE
-- setSeVolume( ATK_02+11,1001, 70 );
-- stopSe( ATK_02+11, SE4, 6 );

hit06 = entryEffectLife(  ATK_02+11,  66,  10,  0x40,  1,   0,  0,  -15);
setEffScaleKey(ATK_02+11, hit06, 1.0, 1.0);
setEffAlphaKey(ATK_02+11, hit06,255);
setEffAlphaKey(ATK_02+11 + 10, hit06, 0);

shockEffect( ATK_02+11,   0,  1,   0,  0,  0);
-- shuchusen04 = entryEffectLife( ATK_02+11,  70,  2,  0,  -1,  0,  0,  0);--集中線
-- setEffScaleKey( ATK_02+11, shuchusen04, 1.0, 1.2);

--ダメージ
setDamage( ATK_02+12, 1, 0);  -- ダメージ振動等
--entryFlashBg( ATK_02+12, 1, 255,  255,  255);


-- 攻撃
changeAnime( ATK_02+16,   0, 12);
-- SE7=playSe( ATK_02+16,1001);--SE
-- setSeVolume( ATK_02+16,1001, 70 );
-- stopSe( ATK_02+16, SE5, 6 );

hit07 = entryEffectLife(  ATK_02+16,  67,  10,  0x40,  1,   0,  0,  0);
setEffScaleKey(ATK_02+16, hit07, 1.2, 1.2);
setEffAlphaKey(ATK_02+16, hit07,255);
setEffAlphaKey(ATK_02+16 + 10, hit07, 0);

--ダメージ
setDamage( ATK_02+17, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( ATK_02+20,   0, 13);
-- SE8=playSe( ATK_02+20,1010);--SE
-- setSeVolume( ATK_02+20,1010, 70 );
-- stopSe( ATK_02+20, SE6, 6 );

hit08 = entryEffectLife(  ATK_02+20,  67,  10,  0x40,  1,   0,  0,  -10);
setEffScaleKey(ATK_02+20, hit08, 1.2, 1.2);
setEffAlphaKey(ATK_02+20, hit08,255);
setEffAlphaKey(ATK_02+20 + 10, hit08, 0);

shockEffect( ATK_02+20,   0,  1,   0,  0,  0);

-- shuchusen05 = entryEffectLife( ATK_02+20,  70,  2,  0,  -1,  0,  0,  0);--集中線
-- setEffScaleKey( ATK_02+20, shuchusen05, 1.0, 1.2);

--ダメージ
setDamage( ATK_02+21, 1, 0);  -- ダメージ振動等


--移動
setMoveKey( ATK_02+25, 1, 180,  -80,  0);-- 中央位置から
setMoveKey( ATK_02+25, 0, 70,  -80,  0);-- 中央位置から

setMoveKey( ATK_02+27, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_02+27, 0, -200,  -30,  0);-- 中央位置から

--突っ込む
changeAnime( ATK_02+30,   0, 0);
setMoveKey( ATK_02+30, 0, -230,  0,   0);-- 中央位置から

------------------------------------------
--移動
changeAnime( ATK_03,   0, 3);

changeAnime( ATK_03,   1, 100);

--移動
setMoveKey( ATK_03, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_03, 0, -230,  -30,  0);-- 中央位置から

setMoveKey( ATK_03+5, 0, -50,  0,   0);-- 中央位置から
setMoveKey( ATK_03+5, 1, 50,  0,   0);-- 中央位置から

setEnvZoomEnable(ATK_03+4, 1);
changeAnime( ATK_03+3,   0, 9);
-- SE9=playSe( ATK_03+5,1000);--SE
-- setSeVolume( ATK_03+5,1000, 70 );
-- stopSe( ATK_03+5, SE7, 6 );

entryKakimoji( ATK_03+3, 17,1,-1,0,-50,200);--ガガガガガガ

hit09 = entryEffectLife(  ATK_03+5,  64,  10,  0x40,  1,   0,  0,  0);
setEffScaleKey(ATK_03+5, hit09, 1.2, 1.2);
setEffAlphaKey(ATK_03+5, hit09,255);
setEffAlphaKey(ATK_03+5 + 10, hit09, 0);

shock03 = entryEffectLife( ATK_03+5,  55, 28,  0,   -1,  0,  0,0);
setEffScaleKey(ATK_03+5 + 0,shock03,0.8, 0.8);
setEffAlphaKey(ATK_03+5 + 0,shock03,255);
setEffAlphaKey(ATK_03+5 + 24,shock03,255);
setEffAlphaKey(ATK_03+5 + 28,shock03,0);
shock04 = entryEffectLife( ATK_03+5+4,  56, 26, 0,   -1,  0,  0,0);
setEffScaleKey(ATK_03+5 + 4,shock04,0.8, 0.8);
setEffAlphaKey(ATK_03+5 + 4,shock04,255);
setEffAlphaKey(ATK_03+5 + 24,shock04,255);
setEffAlphaKey(ATK_03+5 + 26,shock04,0);

shuchusen06 = entryEffectLife( ATK_03+5,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_03+5, shuchusen06, 1.0, 1.2);

--Eダメージ
changeAnime( ATK_03+6,  1,   106);-- モーション
setDamage( ATK_03+6, 1, 0);  -- ダメージ振動等


--攻撃
changeAnime( ATK_03+10,   0, 10);
hit10 = entryEffectLife(  ATK_03+10,  62,  10,  0x40,  1,   0,  0,  -12);
setEffScaleKey(ATK_03+10, hit10, 0.7, 0.7);
setEffAlphaKey(ATK_03+10, hit10,255);
setEffAlphaKey(ATK_03+10 + 10, hit10, 0);

-- SE10=playSe( ATK_03+10,1000);--SE
-- setSeVolume( ATK_03+10,1000, 70 );
-- stopSe( ATK_03+10, SE8, 6 );

setMoveKey( ATK_03+14, 0, -80,  0,   0);-- 中央位置から
setMoveKey( ATK_03+14, 1, 60,  0,   0);-- 中央位置から

changeAnime( ATK_03+14,   0, 12);
setShake( ATK_03+14, 10, 20);
-- SE11=playSe( ATK_03+14,1001);--SE
-- setSeVolume( ATK_03+14,1001, 70 );
-- stopSe( ATK_03+14, SE9, 6 );

hit11 = entryEffectLife(  ATK_03+14,  66,  10,  0x40,  1,   0,  0,  10);
setEffScaleKey(ATK_03+14, hit11, 1.0, 1.0);
setEffAlphaKey(ATK_03+14, hit11,255);
setEffAlphaKey(ATK_03+14 + 10, hit11, 0);

shockEffect( ATK_03+14,   0,  -1,   0,  0,  0);
shuchusen07 = entryEffectLife( ATK_03+14,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_03+14, shuchusen07, 1.0, 1.2);


--Eダメージ
setDamage( ATK_03+14, 1, 0);  -- ダメージ振動等

setMoveKey( ATK_03+18, 0, -60,  0,   0);-- 中央位置から
setMoveKey( ATK_03+18, 1, 50,  0,   0);-- 中央位置から
--攻撃
changeAnime( ATK_03+18,   0, 13);
hit12 = entryEffectLife(  ATK_03+18,  65,  10,  0x40,  1,   0,  0,  -10);
setEffScaleKey(ATK_03+18, hit12, 1.4, 1.4);
setEffAlphaKey(ATK_03+18, hit12,255);
setEffAlphaKey(ATK_03+18 + 10, hit12, 0);


-- SE12=playSe( ATK_03+18,1001);--SE
-- setSeVolume( ATK_03+18,1001, 70 );
-- stopSe( ATK_03+18, SE10, 6 );

changeAnime( ATK_03+21,   0, 9);
setShake( ATK_03+21, 10, 20);
-- SE13=playSe( ATK_03+21,1000);--SE
-- setSeVolume( ATK_03+21,1000, 70 );
-- stopSe( ATK_03+21, SE11, 6 );

hit13 = entryEffectLife(  ATK_03+21,  60,  10,  0x40,  1,   0,  0,  5);
setEffScaleKey(ATK_03+21, hit13, 0.7, 0.7);
setEffAlphaKey(ATK_03+21, hit13,255);
setEffAlphaKey(ATK_03+21 + 10, hit13, 0);

shockEffect( ATK_03+21,   0,  -1,   0,  0,  0);
shuchusen08 = entryEffectLife( ATK_03+21,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_03+21, shuchusen08, 1.0, 1.2);


--Eダメージ
setDamage( ATK_03+21, 1, 0);  -- ダメージ振動等

setMoveKey( ATK_03+21, 0, -50,  0,   0);-- 中央位置から
setMoveKey( ATK_03+21, 1, 50,  0,   0);-- 中央位置から
--攻撃
changeAnime( ATK_03+25,   0, 12);
hit14 = entryEffectLife(  ATK_03+25,  62,  10,  0x40,  1,   0,  0,  0);
setEffScaleKey(ATK_03+25, hit14, 0.8, 0.8);
setEffAlphaKey(ATK_03+25, hit14,255);
setEffAlphaKey(ATK_03+25 + 10, hit14, 0);

-- SE14=playSe( ATK_03+25,1001);--SE
-- setSeVolume( ATK_03+25,1001, 70 );
-- stopSe( ATK_03+25, SE12, 6 );

changeAnime( ATK_03+29,   0, 10);
setShake( ATK_03+29, 10, 20);
-- SE15=playSe( ATK_03+29,1000);--SE
-- setSeVolume( ATK_03+29,1000, 70 );
-- stopSe( ATK_03+29, SE13, 6 );

hit15 = entryEffectLife(  ATK_03+29,  64,  10,  0x40,  1,   0,  0,  -5);
setEffScaleKey(ATK_03+29, hit15, 1,0, 1.0);
setEffAlphaKey(ATK_03+29, hit15,255);
setEffAlphaKey(ATK_03+29 + 10, hit15, 0);

shockEffect( ATK_03+29,   0,  -1,   0,  0,  0);
shuchusen09 = entryEffectLife( ATK_03+29,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_03+29, shuchusen09, 1.0, 1.2);


--Eダメージ
setDamage( ATK_03+30, 1, 0);  -- ダメージ振動等


--P ぱんち

changeAnime( ATK_03+34, 0,  13);  -- 蹴り
changeAnime( ATK_03+35, 1,  108);  -- 吹っ飛び
-- playSe( ATK_03+34, 1001);--SE
-- setSeVolume( ATK_03+34,1001, 70 );
-- stopSe( ATK_03+34, SE14, 6 );

hit16 = entryEffectLife(  ATK_03+34,  60,  10,  0x40,  1,   0,  0,  -20);
setEffScaleKey(ATK_03+34, hit16, 1.0, 1.0);
setEffAlphaKey(ATK_03+34, hit16,255);
setEffAlphaKey(ATK_03+34 + 10, hit16, 0);
entryEffectLife(  ATK_03+34,  55,  10,  0x40,  1,   0,  0,  -20);

-- ** 音 ** --
--連打グループ１
SE002 = playSeVer2( 8, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 8, SE002, 153 );
SE003 = playSeVer2( 16, 1000, "", 0, 0, 0, -1);
SE003_2 = playSeVer2( 20, 1059, "", 86, 0, 38, -1);
setSeVolumeByWorkId( 20, SE003_2, 32 );
setPitch( 20, SE003_2, -800 );
setTimeStretch( SE003_2, 0.47, 30, 4 );
SE004 = playSeVer2( 20, 1000, "", 0, 0, 0, -1);
SE005 = playSeVer2( 26, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 26, SE005, 81 );

--連打グループ２
SE006 = playSeVer2( 50, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 50, SE006, 153 );
SE006_2 = playSeVer2( 56, 1059, "",118, 0, 34, -1);
setSeVolumeByWorkId( 56, SE006_2, 32 );
setPitch( 56, SE006_2, -800 );
setTimeStretch( SE006_2, 0.47, 30, 4 );
SE007 = playSeVer2( 56, 1000, "", 0, 0, 0, -1);
SE008 = playSeVer2( 56, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 56, SE008, 72 );
SE009 = playSeVer2( 64, 1000, "", 0, 0, 0, -1);
SE010 = playSeVer2( 70, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 70, SE010, 81 );

--連打グループ３
SE011 = playSeVer2( 78, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 78, SE011, 141 );
SE011_2 = playSeVer2( 86, 1059, "",150, 0, 38, -1);
setSeVolumeByWorkId( 86, SE011_2, 32 );
setPitch( 86, SE011_2, -800 );
setTimeStretch( SE011_2, 0.47, 30, 4 );
SE012 = playSeVer2( 86, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 86, SE012, 82 );
SE013 = playSeVer2( 90, 1001, "", 0, 0, 0, -1);
SE014 = playSeVer2( 100, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 100, SE014, 81 );
SE015 = playSeVer2( 106, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 106, SE015, 85 );
SE016 = playSeVer2( 112, 1000, "", 0, 0, 0, -1);
SE017 = playSeVer2( 116, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 116, SE017, 77 );

setDamage( ATK_03+34, 1, 0);  -- ダメージ振動等

pauseChara( ATK_03+34, 5);
dealDamage( ATK_03+34);

--[[
setMoveKey( ATK_03+39, 0, -80,  0,   0);-- 中央位置から
setMoveKey( ATK_03+39, 1, 80,  0,   0);-- 中央位置から
--ふっとび移動
setMoveKey( ATK_03+45, 1, 230,  0,   0);      -- 中央位置から
setMoveKey( ATK_03+45, 0, -700,  0,  0);-- 中央位置から
--]]

end
--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_03+34;	
        entryFade( ATK_dead, 5, 5, 17, 119,3,16,0); -- カット接続用
   endPhase( ATK_dead+6);
   
else
-- 受け------------------------------------------
-- 味方移動（画面外へ)
naname = entryEffectLife( ATK_03+37, 72, 30, 0x80,  -1,  0,  -500,  0); -- 流線斜め
setEffScaleKey(ATK_03+37, naname, 2,2);
setEffRotateKey(ATK_03+37, naname, -45);

setMoveKey( ATK_03+39, 0, -80,  0,   0);-- 中央位置から
setMoveKey( ATK_03+39, 1, 80,  0,   0);-- 中央位置から
--ふっとび移動
setMoveKey( ATK_03+45, 1, 230,  0,   0);      -- 中央位置から
setMoveKey( ATK_03+45, 0, -700,  0,  0);-- 中央位置から


setMoveKey( ATK_END, 0, -700,  0,   0);      -- 画面外へ
setDisp( ATK_END, 0, 0);--味方非表示20170607

setMoveKey( ATK_END+37, 1, 250,  0,   0);      -- 吹っ飛び中
changeAnime( ATK_END+38, 1, 100);               -- モーション(立ち)
setMoveKey( ATK_END+48, 1, 100,  0,   0);      -- 敵画面中央へゆっくり戻す

stopBgScroll(  ATK_END+38, 8);

endPhase(ATK_END+48+20);
end


print ("[lua]exec a0005");
