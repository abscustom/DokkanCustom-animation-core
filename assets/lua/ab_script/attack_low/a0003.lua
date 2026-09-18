print("[lua]exec a0003");

id_01 = 0;
ATK_01 = 105+id_01;--205
ATK_02 = ATK_01+5;--211
ATK_03 = ATK_02+5;--218
ATK_04 = ATK_03+5;--228
ATK_05 = ATK_04+6;--236
---------------
ATK_06 = ATK_05+13;--250
ATK_07 = ATK_06+4;--256
ATK_08 = ATK_07+5;--262
ATK_09 = ATK_08+5;--268
ATK_10 = ATK_09+6;--274
---------------
ATK_end = ATK_10+14;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

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

----------------------------------------------
---会心の場合
----------------------------------------------

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 150, 10, 10, 10, 10, 180);        -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 68, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_10+2, 1110, 0x80,     -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

setDrawFront( id_01, 1, 1);
setMoveKey( id_01,   0, -400,  120,50); -- 中間
setMoveKey( 10+id_01,   0, -60,180,100);
setMoveKey( 15+id_01,   0, 100,180,100);
--playSe( 10+id_01,1018);
setMoveKey( 21+id_01,  0, 280, 170,  90); -- 奥
--playSe( 39+id_01,1018);
setMoveKey( 30+id_01,  0, 400, 160,  80); -- 奥
setMoveKey( 31+id_01,  0, 400, -50,  -90); 
setMoveKey( 36+id_01,  0, 80, -60,  -128); -- 奥
setMoveKey( 45+id_01,  0, -120, -20,  0); -- 奥
--setMoveKey( 55+id_01,   0,  -130, -30, 0);  
setMoveKey( 55+id_01,   0,  -280, -5, 30);  


setLastPosKey( id_01, 1);
-- setMoveKey( id_01,   1,  400,   -32,0);
setMoveKey( 10+id_01 ,  1, 80, -120, -128);
setMoveKey( 15+id_01,  1, -100,-120, -70);  
setMoveKey( 21+id_01, 1, -700, -80, -50);
setMoveKey( 31+id_01, 1, -700, 200, 0);
setMoveKey( 35+id_01,  1,  -60, 150, 60);  
setMoveKey( 45+id_01,  1,  100, 100, 80);  
setMoveKey( 55+id_01,  1, 200,80, 100); 

changeAnime( id_01, 0, 1);  -- 右上向き
changeAnime( id_01, 1, 102);  -- 左下向き

changeAnime( id_01+14, 0, 100);  -- 左下向き
changeAnime( id_01+14, 1, 2);  -- 左下向き
changeAnime( 32+id_01, 0,  102);
changeAnime( 32+id_01, 1,  0);
changeAnime( 42+id_01, 1,  100);  -- 右上背中
changeAnime( 41+id_01, 0,  2);  -- 右上背中

-- ** 音 ** --
--回転する
SE001 = playSeVer2( 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( 0, SE001, 56 );
SE002 = playSeVer2( 0, 1019, "",64, 0, 10, -1);
setSeVolumeByWorkId( 0, SE002, 72 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE001, 0);
stopSe( SP_dodge-12, SE002, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,    -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                     -- カットイン差し替え


kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,    -1,  0,  0,  350);   -- 回避の文字表示

	if (_IS_PLAYER_SIDE_ == 1) then

		setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

	else

		setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

	end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);    -- white fade
setMoveKey(  SP_dodge+5, 0, -280, -5, 30);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end


setMoveKey( 100+id_01, 1, 200,80, 100); 
setMoveKey( 105+id_01, 1,  50, 20, 50); 

setMoveKey( 100+id_01,   0, -280, -5, 30); 
setMoveKey( 105+id_01,   0,  -50,  0, 50);  


shuchusen01 = entryEffectLife( 100+id_01,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( 100+id_01, shuchusen01, 1.0, 1.2);
--playSe(100+id_01,43);
shuchusen02 = entryEffectLife( 105+id_01,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( 105+id_01, shuchusen02, 1.0, 1.2);
changeAnime( 100+id_01, 0,  3); -- タックル
changeAnime( 100+id_01, 1,  103);  -- 右上向き
setDrawFront( id_01, 1, 0);
-------------------------------------------一撃目
--P移動
setMoveKey(  ATK_01,  0,  -30,  0,  30);--中央位置から

--E移動
setMoveKey(  ATK_01,  1,  60,  0,  30);

changeAnime(  ATK_01,  0,  12);--キック
-- SE1 =playSe(ATK_01,1001);
-- setSeVolume( ATK_01, 1001, 70 );
--entryEffect(  ATK_10+4,  4,  0,  1,  -10,  20,  0);
hit01 = entryEffectLife(  ATK_10+4,  60,  10,  0,  1,  -10,  20,  0);
setEffScaleKey(ATK_10+4, hit01, 1.0, 1.0);
setEffAlphaKey(ATK_10+4, hit01,255);
setEffAlphaKey(ATK_10+4 + 10, hit01, 0);

--playSe(ATK_10+4,9);
shuchusen03 = entryEffectLife( ATK_10+5,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_10+5, shuchusen03, 1.0, 1.2);

shockEffect(  ATK_10+5,  1,  1,  0,  0,  0);

entryKakimoji(  ATK_10+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK_10+5,  1,  0);--ダメージ振動等
--entryFlashBg(  ATK_10+4,  1,  255,  255,  255);
dealDamage(  ATK_10+4);
naname = entryEffectLife( ATK_end, 72, 55, 0x80,  -1,  0,  -500,  0); -- 流線斜め
setEffScaleKey(ATK_end, naname, 2,2);
setEffRotateKey(ATK_end, naname, -45);

startBgScroll(  ATK_10+4,  30,  3);
changeAnime(  ATK_10+5,  1,  108);--モーション
pauseChara(  ATK_10+7,  5);


   -----------------------------------------------------
   kame_flag = 0x00;
   if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
   -----------------------
   entryEffect(  ATK_01,  23,  0x40,  1,  0,  -100,  0);
   changeAnime(  ATK_01+1,  1,  104);--モーション
   
   -----------------------
   else
   
   --entryEffect(  ATK_01,  1,  0,  1,  0,  0,  50);
   hit02 = entryEffectLife(  ATK_01,  64,  10,  0,  1,  0,  0,  0);
   setEffScaleKey(ATK_01, hit02, 1.0, 1.0);
   setEffAlphaKey(ATK_01, hit02,255);
   setEffAlphaKey(ATK_01 + 10, hit02, 0);

   shockEffect(  ATK_01+1,  0,  1,  0,  0,  0);

   shuchusen04 = entryEffectLife( ATK_01+1,  70,  2,  0,  -1,  0,  0,  0);--集中線
   setEffScaleKey( ATK_01+1, shuchusen04, 1.0, 1.2);
   changeAnime(  ATK_01+1,  1,  106);--モーション
   setDamage(  ATK_01+1,  1,  0);--ダメージ振動等
   pauseChara(  ATK_01+2,  3);
   
   end

-------------------------------------------２撃目
--P移動
setMoveKey(  ATK_02,  0,  -30,  0,  30);
setMoveKey(  ATK_02+1,  0,  -35,  0,  25);--中央位置から

--E　移動
setMoveKey(  ATK_02,  1,  30,  0,  30);
setMoveKey(  ATK_02+1,  1,  40,  0,  25);
changeAnime(  ATK_02+1,  0,  10);--パンチ1
-- SE2 =   playSe(ATK_02+1,1000);
-- setSeVolume( ATK_02, 1000, 70 );
--entryEffect(  ATK_02+1,  2,  0,  1,  0,  -5,  0);
hit03 = entryEffectLife(  ATK_02+1,  66,  10,  0,  1,  0,  -5,  0);
setEffScaleKey(ATK_02+1, hit03, 1.5, 1.5);
setEffAlphaKey(ATK_02+1, hit03,255);
setEffAlphaKey(ATK_02+1 + 10, hit03, 0);

shockEffect( ATK_02+2,  0,  1,  0,  -30, -20);

shuchusen05 = entryEffectLife( ATK_02+2,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_02+2, shuchusen05, 1.0, 1.2);

entryKakimoji(  ATK_02+1,  2,  4,  1,  -1,  -30,  240);--gagaga

changeAnime(  ATK_02+2,  1,  104);--モーション
setDamage(  ATK_02+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_02+3,  2);

setMoveKey(  ATK_03,  0,  -32,  0,  55);--中央位置から
setMoveKey(  ATK_03,  1,  60,  0,  55);
changeAnime(  ATK_03+1,  0,  12);--キック

--  SE3 =   playSe(ATK_03+1,1001);
-- setSeVolume( ATK_03+1, 1001, 70 );
-- stopSe( ATK_03+1, SE1, 8 );
--entryEffect(  ATK_03+1,  1,  0,  1,  10,  15,  20);
hit04 = entryEffectLife(  ATK_03+1,  61,  10,  0,  1,  10,  15,  20);
setEffScaleKey(ATK_03+1, hit04, 0.7, 0.7);
setEffAlphaKey(ATK_03+1, hit04,255);
setEffAlphaKey(ATK_03+1 + 10, hit04, 0);

shockEffect(  ATK_03+2,  0,  1,  10,  15,  20);

shuchusen06 = entryEffectLife( ATK_03+2,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_03+2, shuchusen06, 1.0, 1.2);

setDamage(  ATK_03+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_03+3,  2);

setMoveKey(  ATK_04,  0,  -36,  0,  55);--中央位置から
changeAnime(  ATK_04+1,  0,  13);--パンチ2
--entryFlashBg( ATK_04+1,  1,  0,  0,  0);
--  SE4 =   playSe(ATK_04+1,1001);
-- setSeVolume( ATK_04+1, 1001, 70 );
-- stopSe( ATK_04+1, SE2, 8 );
--entryEffect(  ATK_04+1,  2,  0,  1,  0,  -50,  -30);
hit05 = entryEffectLife(  ATK_04+1,  62,  10,  0,  1,  0,  -40,  -10);
setEffScaleKey(ATK_04+1, hit05, 0.7, 0.7);
setEffAlphaKey(ATK_04+1, hit05,255);
setEffAlphaKey(ATK_04+1 + 10, hit05, 0);

shockEffect(  ATK_04+2,  0,  1,  0,  -50,  -30);

shuchusen07 = entryEffectLife( ATK_04+2,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_04+2, shuchusen07, 1.0, 1.2);

changeAnime(  ATK_04+2,  1,  105);--モーション
setDamage(  ATK_04+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_04+4,  2);

setMoveKey(  ATK_05,  0,  -36,  0,  55);--中央位置から
setMoveKey(  ATK_05+1,  0,  -25,  0, 55);--中央位置から

changeAnime(  ATK_05+2,  0,  11);--パンチ3
setMoveKey(  ATK_05+7,  0,  -49,  0,  55);
setMoveKey(  ATK_05+7,  1,  30,  0,  55);
--entryEffect(  ATK_05+4,  3,  0,  1,  0,  0,  0);
hit06 = entryEffectLife(  ATK_05+4,  65,  10,  0,  1,  0,  0,  0);
setEffScaleKey(ATK_05+4, hit06, 1.5, 1.5);
setEffAlphaKey(ATK_05+4, hit06,255);
setEffAlphaKey(ATK_05+4 + 10, hit06, 0);

--  SE5 =   playSe(ATK_05+4,1009);
-- setSeVolume( ATK_05+4, 1009, 70 );
-- stopSe( ATK_05+4, SE3, 8 );

hit07 = entryEffectLife(  ATK_05+5,  66,  10,  1,  1,  0,  0,  0);
setEffScaleKey(ATK_05+5, hit07, 1.5, 1.5);
setEffAlphaKey(ATK_05+5, hit07,255);
setEffAlphaKey(ATK_05+5 + 10, hit07, 0);

flash01 = entryEffectLife(  ATK_05+5 -4,  51,  12,  1,  1,  0,  0,  0);
setEffRotateKey(ATK_05+5 +4, flash01,60);
setEffAlphaKey(ATK_05+5 - 4, flash01,0);
setEffAlphaKey(ATK_05+5 - 1, flash01, 255);

shuchusen08 = entryEffectLife( ATK_05+2,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_05+2, shuchusen08, 1.0, 1.2);
entryKakimoji(  ATK_05+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK_05+4,  1,  0);--ダメージ振動等
changeAnime(  ATK_05+5,  1,  106);--モーション
pauseChara(  ATK_05+7,  6);
-----------------------------------
setMoveKey(  ATK_06,  0,  -8,  0,  45);--中央位置から
setMoveKey(  ATK_06,  1,  10,  0,  45);

changeAnime(  ATK_06,  0,  9);--パンチ3
--entryEffect(  ATK_06,  1,  0,  1,  0,  0,  0);
hit08 = entryEffectLife(  ATK_06,  64,  10,  1,  1,  0,  0,  0);
setEffScaleKey(ATK_06, hit08, 1.5, 1.5);
setEffAlphaKey(ATK_06, hit08,255);
setEffAlphaKey(ATK_06 + 10, hit08, 0);

--  SE6 =playSe(ATK_06, 1000);
-- setSeVolume( ATK_06, 1000, 70 );
-- stopSe( ATK_06+1, SE4, 8 );

shockEffect(  ATK_06+1,  0,  1,  0,  0,  50);

shuchusen09 = entryEffectLife( ATK_06+1,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_06+1, shuchusen09, 1.0, 1.2);

entryKakimoji(  ATK_06+1,  20,  4,  1,  -1,  -20,  -240);--baki
changeAnime(  ATK_06+1,  1,  106);--モーション
setDamage(  ATK_06+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_06+2,  2);

setMoveKey(  ATK_07+1,  0,  -15,  0,  32);--中央位置から
setMoveKey(  ATK_07+1,  1,  20,  0,  32);
changeAnime(  ATK_07+1,  0,  10);--パンチ1
--entryEffect(  ATK_07+1,  2,  0,  1,  0,  -5,  0);
hit09 = entryEffectLife(  ATK_07+1,  62,  10,  0,  1,  0,  -5,  0);
setEffScaleKey(ATK_07+1, hit09, 0.8, 0.8);
setEffAlphaKey(ATK_07+1, hit09,255);
setEffAlphaKey(ATK_07+1 + 10, hit09, 0);

--  SE7 =playSe(ATK_07+1,1000);
-- setSeVolume( ATK_07+1, 1000, 70 );
-- stopSe( ATK_07+1, SE5, 8 );
shockEffect(  ATK_07+2,  0,  1,  0,  -30,  0);

shuchusen10 = entryEffectLife( ATK_07+2,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_07+2, shuchusen10, 1.0, 1.2);

entryKakimoji(  ATK_07+1,  2,  4,  1,  -1,  -30,  240);--gagaga
changeAnime(  ATK_07+1,  1,  108);--モーション
setDamage(  ATK_07+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_07+3,  2);

setMoveKey(  ATK_08,  0,  -30,  0,  25);--中央位置から
setMoveKey(  ATK_08,  1,  30,  0,  25);
changeAnime(  ATK_08+1,  0,  12);--キック
--entryFlashBg(  ATK_08+1,  1,  0,  0,  0);
--  SE8 =playSe(ATK_08+1,1001);
-- setSeVolume( ATK_08+1, 1001, 70 );
-- stopSe( ATK_08+1, SE6, 8 );
   --  entryEffect(  ATK_08+1,  2,  0,  1,  10,  15,  20);
hit09 = entryEffectLife(  ATK_08+1,  64,  10,  0,  1,  10,  15,  20);
setEffScaleKey(ATK_08+1, hit09, 1.2, 1.2);
setEffAlphaKey(ATK_08+1, hit09,255);
setEffAlphaKey(ATK_08+1 + 10, hit09, 0);

shockEffect(  ATK_08+1,  0,  1, 10,  15,  20);

shuchusen11 = entryEffectLife( ATK_08+1,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_08+1, shuchusen11, 1.0, 1.2);

changeAnime(  ATK_08+2,  1,  106);--モーション
setDamage(  ATK_08+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_08+3,  2);

setMoveKey(  ATK_09,  0,  -36,  0,  25);--中央位置から
changeAnime(  ATK_09+1,  0,  13);--パンチ2
-- playSe(ATK_09+1,1001);
-- setSeVolume( ATK_09+1, 1001, 70 );
-- stopSe( ATK_09+1, SE7, 8 );
--entryEffect(  ATK_09+1,  1,  0,  1,  0,  -25,  -20);
hit10 = entryEffectLife(  ATK_09+1,  66,  10,  0,  1,  0,  -25,  -20);
setEffScaleKey(ATK_09+1, hit10, 1.2, 1.2);
setEffAlphaKey(ATK_09+1, hit10,255);
setEffAlphaKey(ATK_09+1 + 10, hit10, 0);

shockEffect(  ATK_09+1,  0,  1,  0,  -25,  -20);

shuchusen12 = entryEffectLife( ATK_09+1,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_09+1, shuchusen12, 1.0, 1.2);

changeAnime(  ATK_09+2,  1,  105);--モーション
setDamage(  ATK_09+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_09+4,  2);

setMoveKey(  ATK_10,  0,  -36,  0,  25);--中央位置から
setMoveKey(  ATK_10+2,  0,  -32,  0,  25);

changeAnime(  ATK_10+2,  0,  11);--パンチ3
-- playSe(ATK_10+3,1009);
-- setSeVolume( ATK_10+2, 1009, 70 );

-- ** 音 ** --
--連打
SE003 = playSeVer2( 84, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( 90, 1009, "", 0, 0, 0, -1);
SE005 = playSeVer2( 90, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 90, SE005, 126 );

--破裂エフェクト
SE006 = playSeVer2( 92, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 92, SE006, 56 );

--連打
SE007 = playSeVer2( 98, 1000, "", 0, 0, 0, -1);	
SE008 = playSeVer2( 102, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 102, SE008, 56 );
SE009 = playSeVer2( 106, 1000, "", 0, 0, 0, -1);	
SE010 = playSeVer2( 112, 1000, "", 0, 0, 0, -1);	
SE011 = playSeVer2( 112, 1006, "", 0, 0, 0, -1);	
SE012 = playSeVer2( 120, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 120, SE012, 73 );
SE013 = playSeVer2( 126, 1010, "", 0, 0, 0, -1);	
SE014 = playSeVer2( 126, 1000, "", 0, 0, 0, -1);	

--破裂エフェクト
SE015 = playSeVer2( 132, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 132, SE015, 56 );

--連打
SE016 = playSeVer2( 132, 1000, "", 0, 0, 0, -1);	
SE017 = playSeVer2( 134, 1001, "", 0, 0, 0, -1);	
SE018 = playSeVer2( 136, 1000, "", 0, 0, 0, -1);	
SE019 = playSeVer2( 144, 1000, "", 0, 0, 0, -1);	
SE020 = playSeVer2( 144, 1006, "", 0, 0, 0, -1);	

--敵構える
SE023 = playSeVer2( 216, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 216, SE023, 65 );

   -----------------------------------------------------
   kame_flag = 0x00;
--   if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
      if ((_IS_GUARD_ == 0) and (_IS_FINISH_SPECIAL_ONLY_ == 0)) then
         -----------------------
   entryEffect(  ATK_10+4,  23,  0x40,  1,  0,  -100,  0);
   playSe(ATK_10+4,1007);
   setShake(  ATK_10+4,  8,  20);

   shock03 = entryEffectLife(  ATK_10+5,  54,  10, 0,  -1,  0,  0,  0);
   setEffScaleKey(ATK_10+5, shock03, 0.5, 0.5);
   setEffScaleKey(ATK_10+5+ 10, shock03, 3, 3);

   shuchusen13 = entryEffectLife( ATK_10+5,  70,  2,  0,  -1,  0,  0,  0);--集中線
   setEffScaleKey( ATK_10+5, shuchusen13, 1.0, 1.2);
   dealDamage(  ATK_10+4);
   startBgScroll(  ATK_10+4,  30,  3);
   changeAnime(  ATK_10+5,  1,  104);--モーション
   -----------------------
   else
   
   hit11 = entryEffectLife(  ATK_10+4,  60,  10,  0,  1,  -10,  20,  0);
   setEffScaleKey(ATK_10+4, hit11, 1.0, 1.0);
   setEffAlphaKey(ATK_10+4, hit11,255);
   setEffAlphaKey(ATK_10+4 + 10, hit11, 0);

   entryEffectLife(  ATK_10+4 -4,  50,  6,  1,  1,  0,  0,  0);
   flash02 = entryEffectLife(  ATK_10+4 -6,  52,  12,  1,  1,  0,  0,  0);
   setEffRotateKey(ATK_10+4, flash02,60);
   setEffAlphaKey(ATK_10+4 - 6, flash02,0);
   setEffAlphaKey(ATK_10+4, flash02, 255);

   --playSe(ATK_10+4,9);
   shock03 = entryEffectLife(  ATK_10+5,  54,  10, 0,  -1,  0,  0,  0);
   setEffScaleKey(ATK_10+5, shock03, 0.5, 0.5);
   setEffScaleKey(ATK_10+5+ 10, shock03, 3, 3);

   shuchusen13 = entryEffectLife( ATK_10+5,  70,  2,  0,  -1,  0,  0,  0);--集中線
   setEffScaleKey( ATK_10+5, shuchusen13, 1.0, 1.2);
   entryKakimoji(  ATK_10+5,  19,  4,  1,  -1,  -25,  -250);--どん
   setDamage(  ATK_10+5,  1,  0);--ダメージ振動等
   --entryFlashBg(  ATK_10+4,  1,  255,  255,  255);
   dealDamage(  ATK_10+4);
   naname = entryEffectLife( ATK_end, 72, 55, 0x80,  -1,  0,  -500,  0); -- 流線斜め
   setEffScaleKey(ATK_end, naname, 2,2);
   setEffRotateKey(ATK_end, naname, -45);
   
   startBgScroll(  ATK_10+4,  30,  3);
   changeAnime(  ATK_10+5,  1,  108);--モーション
   pauseChara(  ATK_10+7,  5);

   -- ** 音 ** --
   --連打
   SE021 = playSeVer2( 152, 1110, "", 0, 0, 0, -1);	

   --敵飛んでいく
   SE022 = playSeVer2( 152, 1183, "",246, 0, 40, -1);
   setSeVolumeByWorkId( 152, SE022, 63 );

   end

   -----------------------------
   --------------------------------死亡
   kame_flag = 0x00;
   
   if (_IS_DEAD_ == 1) then
      -- 死亡フェーズ (sys0002 / sys0003)
   
   ATK_dead = ATK_10+7;
   	
         entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
      endPhase( ATK_dead+6);
      
   else
   --------------------
   setShake(ATK_end, 8,17);
   setMoveKey(  ATK_end,  0,   -43,  0,  0);--中央位置から
   setMoveKey(  ATK_end+10,  0,  -900,  0,  -50);--画面外へ
   setMoveKey(  ATK_end, 1,  100,   0,  25);
   setMoveKey(  ATK_end+16, 1,  180,   70,  55);
   
   setMoveKey(  ATK_end+40, 1,  180,   70,  100);
   changeAnime(  ATK_end+55,  1,  117);--モーション
   stopBgScroll ( ATK_end+56, 1);
   setDamage(  ATK_end+57,  1,  0);
   --playSe(ATK_end+59,9);
   setMoveKey(  ATK_end+57,  1,  270,  90,  100);--中央位置から
   setMoveKey(  ATK_end+59,  1,  200,  50,  100);--中央位置から
   setMoveKey(  ATK_end+65,  1,  220,  30,  80);--中央位置から
   setScaleKey( ATK_end+59, 1,  1.0, 1.0);
   changeAnime(  ATK_end+59,  1,  100);--モーション
   
   endPhase( ATK_end+70 );
   
   end
   
   print("[lua]exec a0003");
