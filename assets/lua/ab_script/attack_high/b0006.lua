print ("[lua]exec b0006");

ATK_01 = 26
ATK_02 = ATK_01+15
ATK_03 = ATK_02+15
ATK_END = ATK_03+45

ENABLE_AUTO_TIME_STRETCH(0.9);

--リッチ化ヒットエフェクト(小攻撃)
--rot : エフェクトの角度
--hit_kinds : ヒット火花の種類(0~7まで)
function hitEffect01(flame,rot,hit_kinds)

	hit = entryEffectLife( flame, 60+hit_kinds, 16, 0x40,  1,   0,  0,  0);--HIT
	setEffRotateKey(flame,hit,rot);
	setEffScaleKey(flame,hit,0.2,0.2);
	setEffScaleKey(flame + 6,hit,1.0,1.0);
	setEffScaleKey(flame + 12,hit,1.2,1.2);
	setEffAlphaKey(flame + 0,hit,255);
	setEffAlphaKey(flame + 6,hit,255);
	setEffAlphaKey(flame + 16,hit,0);

end

--リッチ化ヒットエフェクト(中攻撃)
--rot : エフェクトの角度
--hit_kinds : ヒット火花の種類(0~7まで)
function hitEffect02(flame,rot,hit_kinds)
	
	shock = entryEffect( flame - 3, 55, 0x40,  1,  0,  0,  0);
	setEffScaleKey(flame - 3,shock,0.5,0.5);
	setEffAlphaKey(flame - 3 + 0,shock,255);
	setEffAlphaKey(flame - 3 + 4,shock,255);
	setEffAlphaKey(flame - 3 + 10,shock,0);

	hit = entryEffectLife( flame, 60+hit_kinds, 16, 0x40,  1,   0,  0,  0);--HIT
	setEffRotateKey(flame, hit,rot);
	setEffScaleKey(flame, hit,0.2,0.2);
	setEffScaleKey(flame + 6,hit,0.8,0.8);
	setEffAlphaKey(flame + 0,hit,255);
	setEffAlphaKey(flame + 6,hit,255);
	setEffAlphaKey(flame + 16,hit,0);

end

--リッチ化ヒットエフェクト(大攻撃)
--rot : エフェクトの角度
--hit_kinds : ヒット火花の種類(0~7まで)
function hitEffect03(flame,rot,hit_kinds)
	flame = flame-1;
	
	shock = entryEffect( flame, 55, 0x40,  1,  0,  0,  0);
	setEffScaleKey(flame,shock,0.5,0.5);
	setEffAlphaKey(flame,shock,255);
	setEffAlphaKey(flame+ 4,shock,255);
	setEffAlphaKey(flame+ 10,shock,0);

	hit = entryEffectLife( flame, 60+hit_kinds, 12, 0x40,  1,   0,  0,  0);--HIT
	setEffRotateKey(flame, hit,rot);
	setEffScaleKey(flame, hit,0.2,0.2);
	setEffScaleKey(flame + 6,hit,0.8,0.8);
	setEffAlphaKey(flame,hit,255);
	setEffAlphaKey(flame + 6,hit,255);
	setEffAlphaKey(flame + 12,hit,0);

	entryEffectLife( flame, 50, 6, 0x40,  1,  0,  0, 0);
end

-- 回避カウンター時、カットイン前のフレームで味方キャラが表示されるように (ISHINKI-28854)
setDisp(0, 1, 1);

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 56, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 84, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_03+26, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

-- ズーム許可
setEnvZoomEnable(0, 1);
setDisp( 0, 0, 0);

-- 味方登場
--                f  eid,life, attr, tgt, tag,  x, y
changeAnime( 0,  0,  3);               -- モーション（ダッシュ）
-- setMoveKey( 0,   0, -700,  0,   60);   -- 画面外
setMoveKey( 7,   0, -200, 30,   60);   -- 中央に近づく
setDisp( 7, 0, 1);

-- 敵登場
setLastPosKey( 0, 1);
setLastPosKey( 10, 1);
-- setMoveKey( 0,   1,  800,  50,   40);      -- 画面外
-- setMoveKey( 10,  1,  800,  50,   40);      --
changeAnime( 0,  1,    101);               -- モーション(立ち)

setMoveKey( 20,  1,  50,  50,   40);      -- 画面中央

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
setMoveKey(  SP_dodge+5, 0, -50,  50,   40);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

setMoveKey( 25,  0, -50,  50,   40);      -- 画面中央 ＆ 元サイズ

-------------------------------------------------------
-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
		-----------------------

setEnvZoomEnable(25, 0);
naname = entryEffectLife( ATK_01, 72, 34, 0x80,  -1,  0,  -250,  0); -- 流線斜め
setEffScaleKey(ATK_01, naname, 2,2);
setEffRotateKey(ATK_01, naname, -45);
setEffAlphaKey(ATK_01, naname, 255);
setEffAlphaKey(ATK_01+1, naname, 0);
setEffAlphaKey(ATK_01+16, naname, 0);
setEffAlphaKey(ATK_01+17, naname, 255);
setEffAlphaKey(ATK_01+34, naname, 255);

-- 攻撃
entryFadeBg( ATK_01, 5, 9, 20, 0,  0,  0, 100);

changeAnime( ATK_01,   0, 14);
setShake( ATK_01, 10, 20);
playSe( ATK_01,1012);--SE
entryEffect( ATK_01+1,   23,   0x40,  1,   0,  -80,  0);
shuchusen01 = entryEffectLife(  ATK_01+1, 70, 15, 0,  -1,  0,  0,  0);
setEffScaleKey(ATK_01+1, shuchusen01, 1.0, 1.2);

shock01 = entryEffect( ATK_01+1,   55,   0,  -1,   0,  0,  0);
setEffAlphaKey(ATK_01+1, shock01, 255);
setEffAlphaKey(ATK_01+11, shock01, 0);
shock02 = entryEffect( ATK_01+1,   54,   0,  -1,   0,  0,  0);
setEffAlphaKey(ATK_01+1, shock02, 255);
setEffAlphaKey(ATK_01+6, shock02, 255);
setEffAlphaKey(ATK_01+11, shock02, 0);

--Eダメージ
changeAnime( ATK_01+1,  1,   104);-- モーション
setDamage( ATK_01+1, 1, 0);  -- ダメージ振動等

--移動
setMoveKey( ATK_01+4, 0, -45,  50,  30);-- 中央位置から
setMoveKey( ATK_01+4, 1, 65,  50,  30);-- 中央位置から
changeAnime( ATK_01+4,   0, 9);
--entryEffect( ATK_01+4,   2,   0x40,  1,   0,  0,  0);
playSe( ATK_01+4,1013);--SE

entryKakimoji( ATK_01+5, 2,1,-1,0,-50,200);--ガガガガガガ
--移動
setMoveKey( ATK_01+5, 0, -45,  50,  30);-- 中央位置から
setMoveKey( ATK_01+5, 1, 65,  50,  30);-- 中央位置から
--changeAnime( ATK_01+6, 1, 101);
setMoveKey( ATK_01+8, 0, -60,  50,  30);-- 中央位置から
setMoveKey( ATK_01+8, 1, 150,  50,  30);-- 中央位置から

--突っ込む
changeAnime( ATK_01+10,   0, 3);
setMoveKey( ATK_01+12, 0, -60,  50,   30);-- 中央位置から
setMoveKey( ATK_01+10, 1, 150,  50,  30);-- 中央位置から
setMoveKey( ATK_02, 0, 50,  30,   35);-- 中央位置から
setMoveKey( ATK_02, 1, 140,  30,  35);-- 中央位置から

--entryFlashBg( ATK_02, 1, 0,  0,  0, 0);
-- 攻撃
changeAnime( ATK_02,   0, 10);
playSe( ATK_02,1012);--SE
entryEffect( ATK_02, 23,  0x40,  1,   0,  -80,  0);

--ダメージ
setDamage( ATK_02+2, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( ATK_02+4, 0, 9);
playSe( ATK_02+4, 1012);--SE
--entryEffect( ATK_02+4, 1,  0x40,  1,   0,  0,  0);

--ダメージ
setDamage( ATK_02+5, 1, 0);  -- ダメージ振動等
--entryFlashBg( ATK_02+4, 1, 255,  255,  255);

-- 攻撃
changeAnime( ATK_02+7,   0, 10);
playSe( ATK_02+7,1013);--SE
entryEffect( ATK_02+7,   23,  0x40,  1,   0,  -80,  0);
--ダメージ
setDamage( ATK_02+8, 1, 0);  -- ダメージ振動等

setMoveKey( ATK_02+8, 0, 100,  50,   40);-- 中央位置から
setMoveKey( ATK_02+8, 1, 200,  50,   40);-- 中央位置から

changeAnime( ATK_02+9,   0, 12);
playSe( ATK_02+9,1013);--SE
--entryEffect( ATK_02+9,   2,   0x40,  1,   0,  0,  0);
setDamage( ATK_02+10, 1, 0);  -- ダメージ振動等

--移動
setMoveKey( ATK_02+15, 0, 0,  0,   35);-- 中央位置から
setMoveKey( ATK_02+15, 1, 100,  0,   35);-- 中央位置から

----------------------------------------------
setBgScroll( ATK_03, 18);
setEnvZoomEnable(ATK_03, 1);

--攻撃
changeAnime( ATK_03,   0, 13);-- パンチ2
playSe( ATK_03,1001);--SE
entryEffect( ATK_03,  23,  0x40,   1,  0, -100, 0);
setDamage( ATK_03, 1, 0);-- ダメージ振動等

--移動
setMoveKey( ATK_03+5, 0, -100,  20,   30);-- 中央位置から
setMoveKey( ATK_03+5, 1, 0,  20,   30);-- 中央位置から

--攻撃
changeAnime( ATK_03+7,   0, 9);-- キック3
--entryFlashBg( ATK_03+7, 1, 0,  0,  0, 0);
playSe( ATK_03+7,1013);--SE

shock01 = entryEffect( ATK_03+7,   55,   0,  -1,   0,  0,  0);
setEffAlphaKey(ATK_03+7, shock01, 255);
setEffAlphaKey(ATK_03+17, shock01, 0);
shock02 = entryEffect( ATK_03+7,   54,   0,  -1,   0,  0,  0);
setEffAlphaKey(ATK_03+7, shock02, 255);
setEffAlphaKey(ATK_03+12, shock02, 255);
setEffAlphaKey(ATK_03+17, shock02, 0);

shuchusen02 = entryEffectLife(  ATK_03+7, 70, 15, 0,  -1,  0,  0,  0);
setEffScaleKey(ATK_03+7, shuchusen02, 1.0, 1.2);

setQuake( ATK_03+7, 15, 10); 
pauseChara( ATK_03+7, 5); 
setDamage( ATK_03+8, 1, 0);  -- ダメージ振動等

--setMoveKey( ATK_03+15, 0, -100,  0,   30);-- 中央位置から
setMoveKey( ATK_03+12, 1, 0,  40,   30);-- 中央位置から

--ふっとび移動
setMoveKey( ATK_03+16, 1, 50,  50,   40);      -- 中央位置から
--setMoveKey( ATK_03+19, 0, -50,  20,  40);-- 中央位置から

--P パンチ
changeAnime( ATK_03+20, 0,  3);
setMoveKey( ATK_03+18, 0, -100,  40,  30);-- 中央位置から
setMoveKey( ATK_03+27, 0, -25,  50,  40);-- 中央位置から
changeAnime( ATK_03+26, 0,  11);  -- パンチ
playSe( ATK_03+27,1010);--SE

setMoveKey( ATK_03+20, 1, 50,  20,   40);      -- 中央位置から
setMoveKey( ATK_03+28, 1, 75,  30,  40);-- 中央位置から

entryEffect( ATK_03+28,   23,   0x40,  1,   0,  -80,  0);
setDamage( ATK_03+29, 1, 0);  -- ダメージ振動等
setEnvZoomEnable(ATK_03+33, 0);
setBgScroll( ATK_03+29, 40);
pauseChara( ATK_03+29, 10);

--entryFlashBg( ATK_03+29, 1, 255,  255,  255);
setMoveKey( ATK_03+29+10, 0, 100,  50,  20);-- 中央位置から
setMoveKey( ATK_03+40+10, 0, -700,  30,  0);-- 中央位置から

setMoveKey( ATK_03+29+10, 1,  200,  20,  20);-- 中央位置から
setMoveKey( ATK_03+40+10, 1, 700,  200,  0);-- 中央位置から

dealDamage( ATK_03+20);

----------------------------
else
setEnvZoomEnable(25, 0);
naname = entryEffectLife( ATK_01, 72, 34, 0x80,  -1,  0,  -250,  0); -- 流線斜め
setEffScaleKey(ATK_01, naname, 2,2);
setEffRotateKey(ATK_01, naname, -45);
setEffAlphaKey(ATK_01, naname, 255);
setEffAlphaKey(ATK_01+1, naname, 0);
setEffAlphaKey(ATK_01+16, naname, 0);
setEffAlphaKey(ATK_01+17, naname, 255);
setEffAlphaKey(ATK_01+34, naname, 255);

-- 攻撃
entryFadeBg( ATK_01, 5, 9, 20, 0,  0,  0, 100);

changeAnime( ATK_01,   0, 14);
setShake( ATK_01, 10, 20);
--playSe( ATK_01,1009);--SE
hitEffect01(ATK_01+1,0,7);
--entryEffect( ATK_01+1,   908,   0,  -1,   0,  0,  0);
shuchusen01 = entryEffectLife(  ATK_01+1, 70, 15, 0,  -1,  0,  0,  0);
setEffScaleKey(ATK_01+1, shuchusen01, 1.0, 1.2);

--Eダメージ
changeAnime( ATK_01+1,  1,   106);-- モーション
setDamage( ATK_01+1, 1, 0);  -- ダメージ振動等

--移動
setMoveKey( ATK_01+4, 0, -45,  50,  30);-- 中央位置から
setMoveKey( ATK_01+4, 1, 65,  50,  30);-- 中央位置から
changeAnime( ATK_01+4,   0, 9);
hitEffect02(ATK_01+4,0,6);
--SE1=playSe( ATK_01+4,1001);--SE

entryKakimoji( ATK_01+5, 2,1,-1,0,-50,200);--ガガガガガガ
--移動
setMoveKey( ATK_01+5, 0, -45,  50,  30);-- 中央位置から
setMoveKey( ATK_01+5, 1, 65,  50,  30);-- 中央位置から
--changeAnime( ATK_01+6, 1, 101);
setMoveKey( ATK_01+8, 0, -60,  50,  30);-- 中央位置から
setMoveKey( ATK_01+8, 1, 150,  50,  30);-- 中央位置から

--突っ込む
changeAnime( ATK_01+10,   0, 3);
setMoveKey( ATK_01+12, 0, -60,  50,   30);-- 中央位置から
setMoveKey( ATK_01+10, 1, 150,  50,  30);-- 中央位置から
changeAnime( ATK_01+1,  1,   108);-- モーション
setMoveKey( ATK_02, 0, 50,  30,   35);-- 中央位置から
setMoveKey( ATK_02, 1, 140,  30,  35);-- 中央位置から

--entryFlashBg( ATK_02, 1, 0,  0,  0);
-- 攻撃
changeAnime( ATK_02,   0, 10);
--SE2=playSe( ATK_02,1000);--SE
hitEffect01(ATK_02,0,5);

--ダメージ
changeAnime( ATK_02+1, 1,  106);-- モーション
setDamage( ATK_02+2, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( ATK_02+4, 0, 9);
--SE3=playSe( ATK_02+4, 1000);--SE
--stopSe( ATK_02+4, SE1, 6 );
hitEffect01(ATK_02+4,0,1);

--ダメージ
setDamage( ATK_02+5, 1, 0);  -- ダメージ振動等
--entryFlashBg( ATK_02+4, 1, 255,  255,  255);

-- 攻撃
changeAnime( ATK_02+7,   0, 10);
--SE4=playSe( ATK_02+7,1000);--SE
--stopSe( ATK_02+7, SE2, 6 );
hitEffect02(ATK_02+7,0,1);

changeAnime( ATK_01+1,  1,   108);-- モーション
--ダメージ
setDamage( ATK_02+8, 1, 0);  -- ダメージ振動等

setMoveKey( ATK_02+8, 0, 100,  50,   40);-- 中央位置から
setMoveKey( ATK_02+8, 1, 200,  50,   40);-- 中央位置から

changeAnime( ATK_02+9,   0, 12);
--SE5=playSe( ATK_02+9,1001);--SE
--stopSe( ATK_02+9, SE3, 6 );
hitEffect02(ATK_02+9,0,5);
setDamage( ATK_02+10, 1, 0);  -- ダメージ振動等

--移動
setMoveKey( ATK_02+15, 0, 0,  0,   35);-- 中央位置から
setMoveKey( ATK_02+15, 1, 100,  0,   35);-- 中央位置から

----------------------------------------------
setBgScroll( ATK_03, 18);
setEnvZoomEnable(ATK_03, 1);

--攻撃
changeAnime( ATK_03,   0, 13);-- パンチ2
--SE6=playSe( ATK_03,1001);--SE
--stopSe( ATK_03, SE4, 6 );
hitEffect02(ATK_03,0,7);

setDamage( ATK_03, 1, 0);-- ダメージ振動等
changeAnime( ATK_03,  1,   106);-- モーション
--移動
setMoveKey( ATK_03+5, 0, -100,  20,   30);-- 中央位置から
setMoveKey( ATK_03+5, 1, 0,  20,   30);-- 中央位置から

--攻撃
changeAnime( ATK_03+7,   0, 9);-- キック3
--entryFlashBg( ATK_03+7, 1, 0,  0,  0);
--SE7=playSe( ATK_03+7,1010);--SE
--stopSe( ATK_03+7, SE5, 6 );

hitEffect03(ATK_03+7, 0, 1);
setQuake( ATK_03+7, 15, 10); 
pauseChara( ATK_03+7, 5); 
setDamage( ATK_03+8, 1, 0);  -- ダメージ振動等

--setMoveKey( ATK_03+15, 0, -100,  0,   30);-- 中央位置から
setMoveKey( ATK_03+12, 1, 0,  40,   30);-- 中央位置から

--ふっとび移動
setMoveKey( ATK_03+16, 1, 50,  50,   40);      -- 中央位置から
--setMoveKey( ATK_03+19, 0, -50,  20,  40);-- 中央位置から

--P パンチ
changeAnime( ATK_03+20, 0,  3);
setMoveKey( ATK_03+18, 0, -100,  40,  30);-- 中央位置から
setMoveKey( ATK_03+27, 0, -25,  30,  40);-- 中央位置から
changeAnime( ATK_03+26, 0,  11);  -- パンチ
--playSe( ATK_03+27,1010);--SE
--stopSe( ATK_03+27, SE6, 6 );
ryusen = entryEffectLife(  ATK_03+20, 71,  55,   0x80,     -1,  0,  0,  0);
setEffAlphaKey(ATK_03+20, ryusen, 255);
setEffAlphaKey(ATK_03+28, ryusen, 255);
setEffAlphaKey(ATK_03+29, ryusen, 0);
setEffAlphaKey(ATK_03+44, ryusen, 0);
setEffAlphaKey(ATK_03+45, ryusen, 255);
setEffAlphaKey(ATK_03+75, ryusen, 255);

setMoveKey( ATK_03+20, 1, 50,  20,   40);      -- 中央位置から
setMoveKey( ATK_03+28, 1, 75,  30,  40);-- 中央位置から

shuchusen02 = entryEffectLife(  ATK_03+29, 70, 15, 0,  -1,  0,  0,  0);
setEffScaleKey(ATK_03+29, shuchusen02, 1.0, 1.2);
changeAnime( ATK_03+29, 1,  108);  -- 吹っ飛び
hitEffect03(ATK_03+28, 0, 0);

setDamage( ATK_03+29, 1, 0);  -- ダメージ振動等

setBgScroll( ATK_03+29, 40);
pauseAll( ATK_03+29, 5);

--entryFlashBg( ATK_03+29, 1, 255,  255,  255);
setMoveKey( ATK_03+29, 0, 0,  30,  20);-- 中央位置から
setMoveKey( ATK_03+29+5, 0, 0,  30,  20);-- 中央位置から
setMoveKey( ATK_03+40+5, 0, -900,  30,  0);-- 中央位置から

setMoveKey( ATK_03+29, 1,  100,  20,  20);-- 中央位置から
setMoveKey( ATK_03+29+5, 1,  100,  20,  20);-- 中央位置から
setMoveKey( ATK_03+40+5, 1, 700,  200,  0);-- 中央位置から

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( 0, 1117, "", 0, 0, 0, -1);

--連打
SE002 = playSeVer2( 14, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 14, SE002, 83 );
SE003 = playSeVer2( 14, 1009, "", 0, 0, 0, -1);
SE004 = playSeVer2( 32, 1000, "", 0, 0, 0, -1);
SE005 = playSeVer2( 38, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 38, SE005, 79 );
SE006 = playSeVer2( 44, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 44, SE006, 82 );
SE007 = playSeVer2( 46, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 46, SE007, 74 );
SE008 = playSeVer2( 52, 1000, "", 0, 0, 0, -1);
SE009 = playSeVer2( 66, 1004, "", 0, 0, 0, -1);
SE010 = playSeVer2( 76, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 76, SE010, 67 );

dealDamage( ATK_03+20);
setEnvZoomEnable(ATK_03+40, 0);
end
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_03+29;	
        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
   
else
-- 受け------------------------------------------

endPhase(ATK_03+55);
end


print ("[lua]exec b0006");
