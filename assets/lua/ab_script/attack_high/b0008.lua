print(  "[lua]exec b0008");


rn_01 = 0;
rn_02 = 20;
ATK_01 = rn_02+20;--205
ATK_02 = ATK_01+4;--211
ATK_03 = ATK_02+4;--218
ATK_04 = ATK_03+4;--228
ATK_05 = ATK_04+5;--236
---------------
ATK_06 = ATK_05+12;--250
ATK_07 = ATK_06+3;--256
ATK_08 = ATK_07+3;--262
ATK_09 = ATK_08+3;--268
ATK_10 = ATK_09+3;--274
---------------
ATK_end = ATK_10+14;

ENABLE_AUTO_TIME_STRETCH(0.9);

--リッチ化ヒットエフェクト(火花)
--hit_kinds : ヒット火花の種類(0~7まで)
--x : エフェクトのx座標
--y : エフェクトのy座標
function hitEffect01(flame,hit_kinds,x,y)

	hit = entryEffectLife( flame, 60+hit_kinds, 16, 0,  1,   0,  x,  y);
	setEffRotateKey(flame,hit,rot);
	setEffScaleKey(flame,hit,0.2,0.2);
	setEffScaleKey(flame + 6,hit,1.0,1.0);
	setEffAlphaKey(flame + 0,hit,255);
	setEffAlphaKey(flame + 6,hit,255);
	setEffAlphaKey(flame + 16,hit,0);

end

--リッチ化ヒットエフェクト(衝撃波)
--hit_kinds : 衝撃波の種類(0~2まで)
--x : エフェクトのx座標
--y : エフェクトのy座標
function hitEffect02(flame,hit_kinds,x,y)
	
	shock = entryEffect( flame, 54+hit_kinds, 0,  1,  0,  x,  y);
	setEffRotateKey(flame,hit,rot);
	setEffScaleKey(flame,shock,0.6,0.6);
	setEffAlphaKey(flame + 0,shock,255);
	setEffAlphaKey(flame + 8,shock,255);
	setEffAlphaKey(flame + 10,shock,0);

end

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

setMoveKey(  0,  1,  -700,  0,  0);

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 81, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 70, 61, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_10+2, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

setMoveKey(  0,  0,  -700,  0,  -128);--中央に近づく
setLastPosKey( 0, 1);
-- setMoveKey(  0,  1,  -700,  0,  -128);--中央に近づく

changeAnime(  rn_01,  0,  3);

setMoveKey(  rn_01+5,  0,  -40,  0,  -128);--中央に近づく
setMoveKey(  rn_01+8,  0,  -18,  0,  -128);--中央に近づく

entryEffectLife(  rn_01+3, 71,  37,  0x80,  -1,  0,  0,  0);
entryKakimoji(  rn_01+11,  6,  4,  0,  -1,  -50,  200)

setMoveKey(  rn_01+10,  0,  -170,  0,  -128);--中央に近づく
setMoveKey(  rn_01+15,  0,  800,  100,  -128);--中央に近づく
--playSe(rn_01+15,1018);
--------------------------------------------------------------

setMoveKey(  0,  1,  -700,  0,  0);

setEnvZoomEnable(  rn_02,  1);
changeAnime(  rn_02+3,  1,  104);
setMoveKey(  rn_02+3,  0,  800,  0,  0);
setMoveKey(  rn_02+4,  0,  -850,  0,  0);
setMoveKey(  rn_02+4,  1,  -700,  0,  0);

-- ** 音 ** --
--向かっていく
SE001 = playSeVer2( rn_01 + 0, 1117, "", 0, 0, 0, -1);
SE002 = playSeVer2( rn_01 + 4, 1019, "", 0, 0, 0, -1);

--向かっていく２
SE003 = playSeVer2( rn_01 + 2, 1232, "", 0, 0, 0, -1);
SE004 = playSeVer2( rn_01 + 2, 1277, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 35; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE001, 0);
stopSe( SP_dodge-12, SE002, 0);
stopSe( SP_dodge-12, SE003, 0);
stopSe( SP_dodge-12, SE004, 0);

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
setMoveKey(  SP_dodge+5, 0, -120,  0,  0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end


setMoveKey(  rn_02+20,  0,  -120,  0,  0);
setMoveKey(  rn_02+20,  1,  80,  0,  0);

-------------------------------------------

setMoveKey(  ATK_01,  0,  -30,  0,  0);--
setMoveKey(  ATK_01-1,  1,  60,  0,  0);
changeAnime(  ATK_01,  0,  9);--パンチ3
--playSe(ATK_01,1000);
-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
		-----------------------
entryEffect(  ATK_01,  23,  0x40,  1,  0,-100,  0);
playSe(ATK_01,1004);
changeAnime(  ATK_01+1,  1,  104);--モーション
pauseChara(  ATK_01+2,  5);
setMoveKey(  ATK_02,  0,  -35,  0,  0);--
setMoveKey(  ATK_02,  1,  60,  0,  0);
setMoveKey(  ATK_02+1,  1,  80,  0,  0);
changeAnime(  ATK_02+1,  0,  10);--パンチ1
playSe(ATK_02+1,1003);
--entryEffect(  ATK_02+1,  23,   0x40,  1,  0,-100,  0);
setDamage(  ATK_02+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_02+3,  1);
changeAnime(  ATK_02+4,  1,  100);--モーション

setMoveKey(  ATK_03,  0,  -32,  0,  0);--
setMoveKey(  ATK_03,  1,  60,  0,  0);
changeAnime(  ATK_03+1,  0,  12);--キック
playSe(ATK_03+1,1004);
--entryEffect(  ATK_03+1,  23,   0x40,  1,  0,-100,  0);
changeAnime(  ATK_03+2,  1,  104);--モーション

setDamage(  ATK_03+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_03+3,  1);

setMoveKey(  ATK_04,  0,  -36,  0,  0);--
changeAnime(  ATK_04+1,  0,  13);--パンチ2
--entryFlashBg(  ATK_04+1,  1,  0,  0,  0);
playSe(ATK_04+1,1004);
entryEffect(  ATK_04+1,  23,   0x40,  1,  0,-100,  0);
--changeAnime(  ATK_04+2,  1,  105);--モーション
setDamage(  ATK_04+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_04+4,  1);

setMoveKey(  ATK_05,  0,  -36,  0,  0);--
setMoveKey(  ATK_05+1,  0,  -55,  0,  0);--

changeAnime(  ATK_05+2,  0,  11);--パンチ3
setMoveKey(  ATK_05+3,  0,  -89,  0,  0);--
--entryEffect(  ATK_05+4,  23,   0x40, 1,  0,-100,  0);
playSe(ATK_05+4,1011);
entryKakimoji(  ATK_05+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK_05+4,  1,  0);--ダメージ振動等
changeAnime(  ATK_05+13,  1,  100);--モーション
pauseChara(  ATK_05+7,  5);
setMoveKey(  ATK_05+7,  0,  -89,  0,  0);--
-----------------------------------
setMoveKey(  ATK_06,  0,  -28,  0,  0);--
setMoveKey(  ATK_06-1,  1,  60,  0,  0);

changeAnime(  ATK_06,  0,  9);--パンチ3
--entryEffect(  ATK_06,  23,   0x40,  1,  0,-100,  0);
playSe(ATK_06,1003);
changeAnime(  ATK_06,  1,  104);--モーション
setDamage(  ATK_06+1,  1,  0);--ダメージ振動等

setMoveKey(  ATK_07+1,  0,  -45,  0,  0);--
setMoveKey(  ATK_07,  1,  60,  0,  0);
setMoveKey(  ATK_07+1,  1,  80,  0,  0);
changeAnime(  ATK_07+1,  0,  10);--パンチ1
entryEffect(  ATK_07+1,  23,   0x40, 1,  0,-100,  0);
playSe(ATK_07+1,1003);
setDamage(  ATK_07+2,  1,  0);--ダメージ振動等

setMoveKey(  ATK_08,  0,  -32,  0,  0);--
setMoveKey(  ATK_08,  1,  60,  0,  0);
changeAnime(  ATK_08+1,  0,  12);--キック
playSe(ATK_08+1,1004);
--entryEffect(  ATK_08+1,  23,  0x40,  1,  0,-100,  0);
setDamage(  ATK_08+2,  1,  0);--ダメージ振動等

setMoveKey(  ATK_09,  0,  -36,  0,  0);--
changeAnime(  ATK_09+1,  0,  13);--パンチ2
playSe(ATK_09+1,1001);
entryEffect(  ATK_09+1,  23,  0x40,  1,  0,-100,  0);
setDamage(  ATK_09+2,  1,  0);--ダメージ振動等

setMoveKey(  ATK_10,  0,  -36,  0,  0);--
setMoveKey(  ATK_10+2,  0,  -32,  0,  0);--

changeAnime(  ATK_10+2,  0,  11);--パンチ3
setMoveKey(  ATK_10+5,  0,  -43,  0,  0);--
playSe(ATK_10+3,1011);

---------------------------------------通常攻撃HIT
else
setQuake(  ATK_01+1,  5,  12);
hitEffect01(ATK_01, 5, 0, 50);
hitEffect02(ATK_01+1, 1, 0, 50);
entryEffect(  ATK_01+1,  70,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_01+1,  20,  4,  1,  -1,  -20,  -240);--baki
changeAnime(  ATK_01+1,  1,  106);--モーション
setDamage(  ATK_01+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_01+2,  1);

setMoveKey(  ATK_02,  0,  -35,  0,  0);--
setMoveKey(  ATK_02,  1,  60,  0,  0);
setMoveKey(  ATK_02+1,  1,  80,  0,  0);
changeAnime(  ATK_02+1,  0,  10);--パンチ1
--playSe(ATK_02+1,1000);
hitEffect01(ATK_02+1, 1, -30, -20);
hitEffect02(ATK_02+2, 2, -30, -20);
entryEffect(  ATK_02+2,  70,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_02+1,  2,  4,  1,  -1,  -30,  240);--gagaga
changeAnime(  ATK_02+2,  1,  108);--モーション
setDamage(  ATK_02+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_02+3,  1);

setMoveKey(  ATK_03,  0,  -32,  0,  0);--
setMoveKey(  ATK_03,  1,  60,  0,  0);
changeAnime(  ATK_03+1,  0,  12);--キック
--playSe(ATK_03+1,1001);
hitEffect01(ATK_03+1, 6, 15, 20);
hitEffect02(ATK_03+2, 1, 15, 20);
entryEffect(  ATK_03+2,  70,  0,  -1,  0,  0,  0);
changeAnime(  ATK_03+2,  1,  106);--モーション

setDamage(  ATK_03+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_03+3,  1);

setMoveKey(  ATK_04,  0,  -36,  0,  0);--
changeAnime(  ATK_04+1,  0,  13);--パンチ2
--entryFlashBg(  ATK_04+1,  1,  0,  0,  0);
--playSe(ATK_04+1,1001);
hitEffect01(ATK_04+1, 7, -50, -30);
hitEffect02(ATK_04+2, 1, -50, -30);
entryEffect(  ATK_04+2,  70,  0,  -1,  0,  0,  0);
changeAnime(  ATK_04+2,  1,  105);--モーション
setDamage(  ATK_04+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_04+4,  1);

setMoveKey(  ATK_05,  0,  -36,  0,  0);--
setMoveKey(  ATK_05+1,  0,  -55,  0,  0);--

changeAnime(  ATK_05+2,  0,  11);--パンチ3
setMoveKey(  ATK_05+3,  0,  -89,  0,  0);--
--playSe(ATK_05+4,1009);
hitEffect01(ATK_05+4, 1, 0, 0);
hitEffect02(ATK_05+5, 2, 0, 0);

entryEffect(  ATK_05+5,  70,  1,  -1,  0,  0,  0);
entryKakimoji(  ATK_05+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK_05+4,  1,  0);--ダメージ振動等
changeAnime(  ATK_05+5,  1,  106);--モーション
pauseChara(  ATK_05+7,  5);
setMoveKey(  ATK_05+7,  0,  -89,  0,  0);--
-----------------------------------
setMoveKey(  ATK_06,  0,  -28,  0,  0);--
setMoveKey(  ATK_06-1,  1,  60,  0,  0);

changeAnime(  ATK_06,  0,  9);--パンチ3
--playSe(ATK_06,1000);
hitEffect01(ATK_06, 7, 0, 50);
hitEffect02(ATK_06+1, 1, 0, 50);

entryEffect(  ATK_06+1,  70,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_06+1,  20,  4,  1,  -1,  -20,  -240);--baki
----entryFlashBg(  ATK_06,  1,  255,  255,  255);
changeAnime(  ATK_06+1,  1,  106);--モーション
setDamage(  ATK_06+1,  1,  0);--ダメージ振動等

setMoveKey(  ATK_07+1,  0,  -45,  0,  0);--
setMoveKey(  ATK_07,  1,  60,  0,  0);
setMoveKey(  ATK_07+1,  1,  80,  0,  0);
changeAnime(  ATK_07+1,  0,  10);--パンチ1
--playSe(ATK_07+1,1000);
hitEffect01(ATK_07+1, 1, -30, 0);
hitEffect02(ATK_07+2, 2, -30, 0);
entryEffect(  ATK_07+2,  70,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_07+1,  2,  4,  1,  -1,  -30,  240);--gagaga
changeAnime(  ATK_07+1,  1,  108);--モーション
setDamage(  ATK_07+2,  1,  0);--ダメージ振動等

setMoveKey(  ATK_08,  0,  -32,  0,  0);--
setMoveKey(  ATK_08,  1,  60,  0,  0);
changeAnime(  ATK_08+1,  0,  12);--キック
--entryFlashBg(  ATK_08+1,  1,  0,  0,  0);
--playSe(ATK_08+1,1001);
hitEffect01(ATK_08+1, 7, 15, 20);
hitEffect02(ATK_08+1, 1, 15, 20);
entryEffect(  ATK_08+1,  70,  0,  -1,  0,  0,  0);
changeAnime(  ATK_08+2,  1,  106);--モーション
setDamage(  ATK_08+2,  1,  0);--ダメージ振動等

setMoveKey(  ATK_09,  0,  -36,  0,  0);--
changeAnime(  ATK_09+1,  0,  13);--パンチ2
--playSe(ATK_09+1,1001);
hitEffect01(ATK_08+1, 5, -25, -20);
hitEffect02(ATK_08+1, 2, -25, -20);

entryEffect(  ATK_09+1,  70,  0,  -1,  0,  0,  0);
changeAnime(  ATK_09+2,  1,  105);--モーション
setDamage(  ATK_09+2,  1,  0);--ダメージ振動等

setMoveKey(  ATK_10,  0,  -36,  0,  0);--
setMoveKey(  ATK_10+2,  0,  -32,  0,  0);--

changeAnime(  ATK_10+2,  0,  11);--パンチ3
setMoveKey(  ATK_10+5,  0,  -43,  0,  0);--
--playSe(ATK_10+3,1009);
end
-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
entryEffect(  ATK_10+4,  23,  0, 1,  0,-100,  0);

playSe(ATK_10+4,1006);
dealDamage(  ATK_10+4);
naname = entryEffectLife( ATK_end, 72, 75, 0x80,  -1,  0,  -250,  0); -- 流線斜め
setEffScaleKey(ATK_end, naname, 2,2);
setEffRotateKey(ATK_end, naname, -45);
setEffAlphaKey(ATK_end, naname, 255);
setEffAlphaKey(ATK_end+55, naname, 255);
setEffAlphaKey(ATK_end+56, naname, 0);
setEffAlphaKey(ATK_end+68, naname, 0);
setEffAlphaKey(ATK_end+69, naname, 255);
setEffAlphaKey(ATK_end+75, naname, 255);


startBgScroll(  ATK_10+4,  30,  3);
changeAnime(  ATK_10+5,  1,  104);--モーション
pauseChara(  ATK_10+7,  7);


else

setQuake(  ATK_10+2,  7,  18);

hitEffect01(ATK_10+4, 1, 20, 0);
hitEffect02(ATK_10+5, 1, 0, 0);
hitEffect02(ATK_10+5, 2, 0, 0);
entryEffect(ATK_10+5,  50,  1,  1,  0,  0,  0);
entryEffect(ATK_10+7,  53,  1,  1,  0,  0,  0);

entryEffect(  ATK_10+5,  70,  1,  -1,  0,  0,  0);
entryKakimoji(  ATK_10+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK_10+5,  1,  0);--ダメージ振動等
--entryFlashBg(  ATK_10+4,  1,  255,  255,  255);
dealDamage(  ATK_10+4);
--entryEffectLife( ATK_end, 913, 75, 0x80,  -1,  0,  0,  0); -- 流線斜め
naname = entryEffectLife( ATK_end, 72, 75, 0x80,  -1,  0,  -250,  0); -- 流線斜め
setEffScaleKey(ATK_end, naname, 2,2);
setEffRotateKey(ATK_end, naname, -45);
setEffAlphaKey(ATK_end, naname, 255);
setEffAlphaKey(ATK_end+55, naname, 255);
setEffAlphaKey(ATK_end+56, naname, 0);
setEffAlphaKey(ATK_end+68, naname, 0);
setEffAlphaKey(ATK_end+69, naname, 255);
setEffAlphaKey(ATK_end+75, naname, 255);

startBgScroll(  ATK_10+4,  30,  3);
changeAnime(  ATK_10+5,  1,  108);--モーション
pauseChara(  ATK_10+7,  5);
setShake( ATK_10+7, 7, 18);

-- ** 音 ** --
--連打
SE005 = playSeVer2( rn_01 + 28, 1009, "", 0, 0, 0, -1);
SE006 = playSeVer2( rn_01 + 28, 1000, "", 0, 0, 0, -1);
SE007 = playSeVer2( rn_01 + 40, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( rn_01 + 44, 1010, "", 0, 0, 0, -1);
SE009 = playSeVer2( rn_01 + 52, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( rn_01 + 62, 1000, "", 0, 0, 0, -1);
SE011 = playSeVer2( rn_01 + 62, 1009, "", 0, 0, 0, -1);

--殴り飛ばす
SE012 = playSeVer2( rn_01 + 76, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( rn_01 + 76, SE012, 68 );
SE013 = playSeVer2( rn_01 + 76, 1183, "",rn_01 + 160, 0, 44, -1);
setSeVolumeByWorkId( rn_01 + 76, SE013, 79 );

--敵構える
SE014 = playSeVer2( rn_01 + 148, 1013, "", 0, 0, 0, -1);


end
-----------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_10+14;	
        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
   
else
-------------

setMoveKey(  ATK_end,  0,  -42,  0,  0);--
setMoveKey(  ATK_end+10,  0,  -900,  0,  0);--画面外へ
setMoveKey(  ATK_end, 1,  100,    0,  0);
--setQuake(  ATK_end+1,  55,  10);
setMoveKey(  ATK_end+16, 1,  180,   70,  0);

----entryFlash( (ATK_end+2), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (ATK_end+12), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (ATK_end+16), 1, fcolor_r, fcolor_g, fcolor_b, 200);
----entryFlash( (ATK_end+55), 1, fcolor_r, fcolor_g, fcolor_b, 200);

setMoveKey(  ATK_end+40, 1,  180,   70,  0);

--setQuake(  ATK_end+56,  15,  100);
shuchusen01 =  entryEffect(  ATK_end+56,  70,  1,  -1,  0,  0,  0);
setEffScaleKey(ATK_end+56, shuchusen01, 1.0, 1.2);
--entryEffect(  ATK_end+53,  70,  1,  -1,  0,  0,  0);
changeAnime(  ATK_end+55,  1,  104);--モーション
--setScaleKey( ATK_end+58, 1,  0, 0);
stopBgScroll ( ATK_end+56, 1);
setDamage(  ATK_end+57,  1,  0);
setMoveKey(  ATK_end+57,  1,  270,  90,  0);--
setMoveKey(  ATK_end+59,  1,  80,  10,  0);--
setMoveKey(  ATK_end+65,  1,  100,  0,  0);--
setScaleKey( ATK_end+59, 1,  1.0, 1.0);
changeAnime(  ATK_end+70,  1,  117);--モーション
endPhase( ATK_end+59+20);

end
print(  "[lua]execa001");
