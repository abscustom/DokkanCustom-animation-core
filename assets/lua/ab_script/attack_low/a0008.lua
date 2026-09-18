print ("[lua]exec a0008");

id_01 = 0; 
id_02 = id_01+45; 

ATK_01 = id_02+5;
ATK_02 = ATK_01+5;
ATK_03 = ATK_02+5;
ATK_04 = ATK_03+5;
id_03 = ATK_04+18; 
-------------------------
ATK_06 = id_03+45;
ATK_07 = ATK_06+2;
ATK_08 = ATK_07+2;
ATK_09 = ATK_08+2;
ATK_10 = ATK_09+2;
-----------------------
ATK_end = ATK_10+30;

ENABLE_AUTO_TIME_STRETCH(0.9);

--リッチ化ヒットエフェクト
function shockEffect(flame,pra,tag1,tag2,x,y)
	shock01 = entryEffectLife( flame,  55, 8,  pra,  tag1,  tag2,  x,  y);
	setEffScaleKey(flame + 0,shock01,0.5, 0.5);
	setEffAlphaKey(flame + 0,shock01,255);
	setEffAlphaKey(flame + 4,shock01,255);
	setEffAlphaKey(flame + 8,shock01,0);
	shock02 = entryEffectLife( flame+4,  56, 6, pra,  tag1,  tag2,  x,  y);
	setEffScaleKey(flame + 4,shock02,0.5, 0.5);
	setEffAlphaKey(flame + 4,shock02,255);
	setEffAlphaKey(flame + 8,shock02,255);
	setEffAlphaKey(flame + 10,shock02,0);
 
 end

-- 回避カウンター時、カットイン前のフレームでキャラが表示されるように (ISHINKI-28854)
setDisp(0, 1, 1);

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 136, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 86, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_10+2, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end


----------------------------------------------
--移動一回目
----------------------------------------------
setLastPosKey( 0, 1);
setDisp( 0, 0, 0);

setMoveKey(  id_01+15,   0, -150,  0,   50);     --向き合う
setMoveKey(  id_01+15,   1,  150,  0,   50);
setDisp( id_01+15, 0, 1);

changeAnime( id_01, 0, 0);  -- 右上向き
changeAnime( id_01, 1, 100);  -- 左下向き

setMoveKey(  id_01+25,   0, -50,  50,   100);     --向き合う
setMoveKey(  id_01+25,   1,  50, -50,   100);

setMoveKey(  id_01+35,   0,  100,  100,   100);     --向き合う
setMoveKey(  id_01+35,   1, -100, -100,   100);

changeAnime( id_01+28, 0, 100);  -- 右上向き
changeAnime( id_01+28, 1,   1);  -- 左下向き


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 40; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, 120,  150,   100);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

setMoveKey(  id_01+45,   0,  120,  150,   100);     --向き合う
setMoveKey(  id_01+45,   1, -120, -150,   100);

----------------------------------------------
--ぶつかる
-----------------------------------------------
changeAnime( id_02, 0, 103);  -- 右上向き
changeAnime( id_02, 1,   3);  -- 左下向き
setMoveKey(  id_02,   0,  120,  150,   100);     --向かう
setMoveKey(  id_02,   1, -120, -150,   100);
setRotateKey( id_02,  0,  -45);
setRotateKey( id_02,  1,  -45);

setMoveKey(  id_02+5,   0,   10,  10,   100);
setMoveKey(  id_02+5,   1,  -10, -10,   100);

-----なぐり
changeAnime( ATK_01,  1,  9);--パンチ3
changeAnime( ATK_01,  0,  110);--パンチ3
--playSe(ATK_01,1000);
-- SE1=playSe(ATK_01,1000);

shockEffect(  ATK_01+1,  0,  -1,  0,  0,  0);
shuchusen01 = entryEffectLife( ATK_01+1,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_01+1, shuchusen01, 1.0, 1.2);

setMoveKey(  ATK_01+2,  0,  30,  20,  100);
setMoveKey(  ATK_01+2,  1,  -30,  -20,  100);

setRotateKey( ATK_01+2,  0,  0);
setRotateKey( ATK_01+2,  1,  0);

setMoveKey(  ATK_01+4,  0,  15,  0,  100);
setMoveKey(  ATK_01+4,  1,  -10,  0,  100);

changeAnime(  ATK_02+1,  1,  10);--パンチ1
changeAnime(  ATK_02+1,  0, 109);--パンチ1
--playSe(ATK_02+1,1000);
-- SE2=playSe(ATK_02+1,1000);
shockEffect(  ATK_02+2,  0,  -1,  0,  0,  0);
shuchusen02 = entryEffectLife( ATK_02+2,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_01+2, shuchusen02, 1.0, 1.2);


changeAnime(  ATK_03+1,  1,  12);--キック
changeAnime(  ATK_03+1,  0,  113);--キック
--playSe(ATK_03+1,1001);
-- SE3=playSe(ATK_03+1,1001);
-- stopSe( ATK_03+1, SE1, 6 );
shuchusen03 = entryEffectLife( ATK_03+2,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_03+2, shuchusen03, 1.0, 1.2);

shockEffect(  ATK_03+2,  0,  -1,  10,  30,  40);

changeAnime(  ATK_04+1,  1,  13);--パンチ2
changeAnime(  ATK_04+1,  0,  112);--パンチ2
--entryFlashBg(  ATK_04+1,  1,  0,  0,  0);
--playSe(ATK_04+1,1001);
-- SE4=playSe(ATK_04+1,1001);
-- stopSe( ATK_04+1, SE2, 6 );
shockEffect(  ATK_04+2,  0,  -1,  0,  -50,  -60);
shuchusen04 = entryEffectLife( ATK_04+2,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_04+2, shuchusen04, 1.0, 1.2);

pauseChara(  ATK_04+4,  2);

--弾ける
setMoveKey(  ATK_04+6,   0,   15,  0,  100);
setMoveKey(  ATK_04+6,   1,  -10,  0,  100);

setMoveKey(  ATK_04+13,  0,   90,  20,   55);
setMoveKey(  ATK_04+13,  1, -100, -30,   55);
-------------------------------------
--移動
-------------------------------------
setMoveKey(  id_03,  0,   90,  20,   45);
setMoveKey(  id_03,  1, -100, -30,   45);

changeAnime(  id_03+1,  1,  0);--パンチ2
changeAnime(  id_03+1,  0,  100);--パンチ2

changeAnime(  id_03+7,  0,  2);--パンチ2
changeAnime(  id_03+7,  1,  101);--パンチ2

setMoveKey(  id_03+10,   0,   230, 180,  40);     
setMoveKey(  id_03+10,   1,  -250,  -150, 45);

setMoveKey(  id_03+15,   0,   -270,  230,   45); 
setMoveKey(  id_03+15,   1,   280,   -190,   55);

setMoveKey(  id_03+25,   0,   -250,  80,   55); 
setMoveKey(  id_03+25,   1,  280, -90,   55);

setMoveKey(  id_03+35,   0,  -200,  40,   60);
setMoveKey(  id_03+35,   1,  180,   -65,   60);


changeAnime(  id_03+40,  0,  3);--パンチ2
changeAnime(  id_03+40,  1,  103);--パンチ2
-- SE5=playSe( id_03+40,1018);
-- setSeVolume( id_03+40,1018, 70 );
-- stopSe( id_03+40, SE3, 6 );
setRotateKey( id_03+39,  0,  0);
setRotateKey( id_03+39,  1,  0);
setRotateKey( id_03+40,  0,  -25);
setRotateKey( id_03+40,  1,  -25);

setMoveKey(  id_03+40,   0,  -200,  20,   60);
setMoveKey(  id_03+40,   1,  180,   -10,  60);

setMoveKey(  id_03+45,   0,  -20, 0,   100);
setMoveKey(  id_03+45,   1,  20, 0,   100);
---------------------------------------

changeAnime(  ATK_06,  0,  9);--パンチ3
changeAnime(  ATK_06,  1,  112);--キック
-- SE6=playSe(ATK_06,1000);
-- setSeVolume( ATK_06,1000, 70 );
-- SE7=playSe(ATK_06,1001);
-- setSeVolume( ATK_06,1001, 70 );
-- stopSe( ATK_06, SE4, 6 );
shockEffect(  ATK_06,  0,  -1,  0,  0,  0);
shuchusen06 = entryEffectLife( ATK_06,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_06, shuchusen05, 1.0, 1.2);

changeAnime(  ATK_07+1,  0,  12);--パンチ1
changeAnime(  ATK_07+1,  1,  104);--ガード
hit01 = entryEffectLife(  ATK_07+1,  65,  10,  0,  1,  0,  -30,  0);
setEffScaleKey(ATK_07+1, hit01, 1.4, 1.4);
setEffAlphaKey(ATK_07+1, hit01,255);
setEffAlphaKey(ATK_07+1 + 10, hit01, 0);


flash01 = entryEffectLife(  ATK_07+1-4,  50,  8,  0,  1,   0,  -40,  0);
setEffAlphaKey(ATK_07+1-4, flash01,0);
setEffAlphaKey(ATK_07+1, flash01, 255);

-- SE8=playSe(ATK_07+1,1010);
-- setSeVolume( ATK_07+1,1010, 70 );
-- SE9=playSe(ATK_07+1,1013);
-- setSeVolume( ATK_07+1,1013, 70 );
-- stopSe( ATK_07+1, SE5, 6 );
shockEffect(  ATK_07+2,  0,  -1,  0,  0,  0);
shuchusen07= entryEffectLife( ATK_07+2,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_07+2, shuchusen07, 1.0, 1.2);

setDamage(  ATK_07+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_07+3,  2);


setMoveKey(  ATK_07,   0,  -30, 0,   100);
setMoveKey(  ATK_07,   1,  30, 0,   100);
setRotateKey( ATK_08,  0,  -25);
setRotateKey( ATK_08,  1,  -25);
setRotateKey( ATK_08+1,  0,  15);
setRotateKey( ATK_08+1,  1,  15);

setMoveKey(  ATK_08+2,   0,  -45, -10,   35);
setMoveKey(  ATK_08+2,   1,  45, 0,   35);

changeAnime(  ATK_08+1,  0,  12);--キック
entryFlashBg(  ATK_08+1,  1,  0,  0,  0);
-- SE10=playSe(ATK_08+1,1001);
-- setSeVolume( ATK_08+1,1001, 70 );
-- stopSe( ATK_08+1, SE6, 6 );
-- stopSe( ATK_08+1, SE7, 6 );
hit02 = entryEffectLife(  ATK_08+1,  64,  10,  0,  1,  0,  3,  3);
setEffScaleKey(ATK_08+1, hit02, 1.0, 1.0);
setEffAlphaKey(ATK_08+1, hit02,255);
setEffAlphaKey(ATK_08+1 + 10, hit02, 0);

flash02 = entryEffectLife(  ATK_08+1-4,  52,  20,  0,  1,   0,  -20,  0);
setEffAlphaKey(ATK_08+1-4, flash02,0);
setEffAlphaKey(ATK_08+1, flash02, 255);

shuchusen08= entryEffectLife( ATK_08+1,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_08+1, shuchusen08, 1.0, 1.2);

shockEffect(  ATK_08+1,  0,  -1,  0,  0,  0);
changeAnime(  ATK_08+2,  1,  106);--モーション
setDamage(  ATK_08+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_08+3,  2);

changeAnime(  ATK_09+1,  0,  13);--パンチ2
-- SE11=playSe(ATK_09+1,1001);
-- setSeVolume( ATK_09+1,1001, 70 );
-- stopSe( ATK_09+1, SE8, 6 );
-- stopSe( ATK_09+1, SE9, 6 );
hit03 = entryEffectLife(  ATK_09+1,  61,  10,  0,  1,  0,  -20,  -3);
setEffScaleKey(ATK_09+1, hit03, 1.0, 1.0);
setEffAlphaKey(ATK_09+1, hit03,255);
setEffAlphaKey(ATK_09+1 + 10, hit03, 0);

shockEffect(  ATK_09+1,  0,  -1,  0,  0,  0);
shuchusen09= entryEffectLife( ATK_09+1,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_09+1, shuchusen09, 1.0, 1.2);

changeAnime(  ATK_09+2,  1,  105);--モーション
setDamage(  ATK_09+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_09+4,  2);


changeAnime(  ATK_10+2,  0,  11);--パンチ3
-- playSe(ATK_10+3,1009);
-- setSeVolume( ATK_10+3,1000, 70 );
-- stopSe( ATK_10+3, SE10, 6 );
-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
entryEffect(  ATK_10+4,  23,  0x40,  1,  0,-100,  0);
setRotateKey( ATK_10+1,  1,  15);
setRotateKey( ATK_10+2,  1,  0);
playSe(ATK_10+4,1012);
entryFlashBg(  ATK_10+4,  1,  255,  255,  255);
dealDamage(  ATK_10+4);
startBgScroll(  ATK_10+4,  30,  3);
changeAnime(  ATK_10+5,  1,  104);--モーション

----------------------------
else
setBgScroll( ATK_10+4,25);
hit04 = entryEffectLife(  ATK_10+4,  60,  10,  1,  1,  0,  -20,  -3);
setEffScaleKey(ATK_10+4, hit04, 1.2, 1.2);
setEffAlphaKey(ATK_10+4, hit04,255);
setEffAlphaKey(ATK_10+4 + 10, hit04, 0);

shuchusen10 = entryEffectLife( ATK_10+5,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_10+5, shuchusen10, 1.0, 1.2);

shockEffect(  ATK_10+5,  0,  -1,  0,  0,  0);
entryKakimoji(  ATK_10+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK_10+5,  1,  0);--ダメージ振動等
dealDamage(  ATK_10+4);
setQuake( ATK_10+4, 7, 15);
entryFlashBg( ATK_10+4, 1, 255, 255, 255);
changeAnime(  ATK_10+5,  1,  108);--モーション
pauseChara(  ATK_10+7,  5);
end

-- ** 音 ** --
--回転する
SE001 = playSeVer2( 0, 1117, "",56, 0, 26, -1);
SE002 = playSeVer2( 6, 1167, "",52, 0, 24, -1);
setSeVolumeByWorkId( 6, SE002, 56 );

--連打
SE003 = playSeVer2( 36, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 36, SE003, 141 );
SE004 = playSeVer2( 40, 20, "",102, 0, 36, -1);
setSeVolumeByWorkId( 40, SE004, 51 );
SE005 = playSeVer2( 42, 1000, "", 0, 0, 0, -1);
SE006 = playSeVer2( 46, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 46, SE006, 74 );
SE007 = playSeVer2( 48, 1006, "", 0, 0, 0, -1);
SE008 = playSeVer2( 50, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 50, SE008, 67 );

--間をとる
SE009 = playSeVer2( 82, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 82, SE009, 71 );

--連打２
SE010 = playSeVer2( 112, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 112, SE010, 133 );
SE011 = playSeVer2( 118, 20, "",180, 0, 36, -1);
setSeVolumeByWorkId( 118, SE011, 56 );
SE012 = playSeVer2( 118, 1006, "", 0, 0, 0, -1);
SE013 = playSeVer2( 118, 1000, "", 0, 0, 0, -1);
SE014 = playSeVer2( 126, 1006, "", 0, 0, 0, -1);
SE015 = playSeVer2( 132, 1000, "", 0, 0, 0, -1);
SE016 = playSeVer2( 136, 1110, "", 0, 0, 0, -1);

--敵構える
SE017 = playSeVer2( 152, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 152, SE017, 56 );
--------------------------------

--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_10+8;	
        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
   
else
-------------

naname = entryEffectLife( ATK_10+8, 72, 20, 0x80,  -1,  0,  -500,  0); -- 流線斜め
setEffScaleKey(ATK_10+8, naname, 2,2);
setEffRotateKey(ATK_10+8, naname, -45);

setEnvZoomEnable(  ATK_10+8,  0);
--弾ける
setMoveKey(  ATK_10+12,   0,   -45, -20,   35);
setMoveKey(  ATK_10+12,   1,  45, 15,   35);

setMoveKey(  ATK_10+16,  0,  -900,  -40,   0);
setMoveKey(  ATK_10+16,  1,   280, 149,   0);
-------------------------------------
--playSe(ATK_10+18,38);
shunkan = entryEffect(  ATK_10+18,  57,  0,  0,  0,  0,  0);
setEffRotateKey(ATK_10+18, shunkan, 90);

setDisp ( ATK_10+21, 0, 0);
setDisp ( ATK_10+22, 0, 1);
setDisp ( ATK_10+24, 0,0);
changeAnime(  ATK_10+23,  1,  117);--パンチ
--playSe(ATK_10+23,7);
setMoveKey(  ATK_10+26,  1,   500, 149,   0);
setRotateKey( ATK_10+26, 1,  15)
setRotateKey( ATK_10+27, 1,  0)
setMoveKey(  ATK_10+30,  1,   250, 120,   0);
setBgScroll( ATK_10+30,8);
--------------------------------------
changeAnime(  ATK_end+14,  1,  100);--パンチ
endPhase( ATK_end+15);
end



print(  "[lua]execa001");

