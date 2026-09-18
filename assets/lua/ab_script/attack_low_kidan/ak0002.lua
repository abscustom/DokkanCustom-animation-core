print(  "[lua]exec ak0002");

rn_00 = 0;
--rn_01 = rn_00+29;
--rn_02 = rn_01+23;
--rn_03 = rn_02+15;

ATK_01 = rn_00+25;
ATK_02 = ATK_01+16;
ATK_03 = ATK_02+40;
ATK_04 = ATK_03+20;
ATK_05 = ATK_04+11;
---------------
ATK_end = ATK_03+30;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

ENABLE_AUTO_TIME_STRETCH(0.9);

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 84, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 89, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_03+33, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

-------------------------
--導入
-------------------------
--P　初期位置
setMoveKey(  rn_00,  0,  -700,  0,  100);
setMoveKey(  rn_00,  1,  700,  0,  0);

changeAnime(  rn_00,  0,  3);

-- setMoveKey(  rn_00+3,  0,  -700,  100,  100);
-- SE1=playSe( rn_00+3,1018);--ダッシュSE
setMoveKey(  rn_00+15,  0,  100,  30,  100);

setMoveKey(  rn_00+15,  0,  100,  120,  80);
setMoveKey(  rn_00+25,  0,  130,  0,  50);
---------------------
changeAnime(  ATK_01, 0, 19);


-- SE2=playSe(ATK_02+8,1015);
-- SE3=playSe(ATK_02+8,1015);
-- stopSe( ATK_02+8, SE1, 6 );

ef1 = entryEffect( ATK_01+4, 140, 0x40, 0, 100, 0,  0);    -- 気弾
ef2 = entryEffect( ATK_01+15, 140, 0x40, 0, 100, 0,  0);    -- 気弾

setEffMoveKey( ATK_01+16, ef2, 100, 30, 0);
setEffMoveKey( ATK_01+17, ef2, -20, 0, 0);

------------
changeAnime(  ATK_02, 0, 19);

-- SE4=playSe(ATK_02+3,1015);
-- stopSe( ATK_02+3, SE2, 6 );

ef3 = entryEffect( ATK_02+4, 140, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_02+9, 140, 16,0x40, 0, 100, 0,  0);    -- 気弾

--------------------

setMoveKey(  ATK_02+23,  0,  -240,  50,  -128);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( 0, 1117, "", 0, 0, 0, -1);

--連続気弾発射
SE002 = playSeVer2( 16, 1015, "",42, 0, 18, -1);
setSeVolumeByWorkId( 16, SE002, 66 );
SE003 = playSeVer2( 16, 1016, "", 0, 0, 0, -1);
SE004 = playSeVer2( 28, 1015, "",54, 0, 16, -1);
setSeVolumeByWorkId( 28, SE004, 79 );
SE005 = playSeVer2( 28, 1016, "", 0, 0, 0, -1);
SE006 = playSeVer2( 36, 1015, "",62, 0, 16, -1);
setSeVolumeByWorkId( 36, SE006, 74 );
SE007 = playSeVer2( 36, 1016, "", 0, 0, 0, -1);
SE008 = playSeVer2( 46, 1015, "",72, 0, 14, -1);
setSeVolumeByWorkId( 46, SE008, 72 );
SE009 = playSeVer2( 46, 1016, "", 0, 0, 0, -1);

--気弾飛んでいく
SE010 = playSeVer2( 68, 1177, "",128, 0, 32, -1);
setSeVolumeByWorkId( 68, SE010, 71 );
SE011 = playSeVer2( 68, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 68, SE011, 75 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 68; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, 130,  0,  50);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

entryFade( ATK_02+30, 5, 7, 4, 0,0,0,0);


setMoveKey(  ATK_02+30,  0,  -700,  0,  -100);
setDisp( ATK_02+36, 0, 0);
changeAnime(  ATK_02+40,  1,  117);

setMoveKey(  ATK_03,  1,  700,  0,  0);
setMoveKey(  ATK_03+1,  1,  120,  30,  -100);

ef1_atk = entryEffect( ATK_03+7, 140, 0x80, 1, 0, -720,  20);    -- 気弾
setEffMoveKey( ATK_03+8, ef1_atk, -1020,  12, 0);

ef2_atk = entryEffect( ATK_03+15, 140, 0x80, 1, 0, -780,  0);    -- 気弾
setEffMoveKey( ATK_03+16, ef2_atk, -1050,  0, 0);

ef1_atk1 = entryEffectLife( ATK_03+18, 140, 8, 0x80, 1, 0, -720,  -30);    -- 気弾
setEffMoveKey( ATK_03+19, ef1_atk1, -1050,  -30, 0);

ef2_atk2 = entryEffect( ATK_03+25, 140, 0x80, 1, 0, -780,  25);    -- 気弾
setEffMoveKey( ATK_03+26, ef2_atk2, -1050,  25, 0);

ef2_atk3 = entryEffect( ATK_03+33, 140, 0x80, 1, 0, -780,  0);    -- 気弾
setEffMoveKey( ATK_03+34, ef2_atk3, -1050,  0, 0);


-----------------------------------------------------ガード
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
		-----------------------
--爆破
entryEffect( ATK_03+8, 23,   0x40,   1,  0,-100,  0);
entryEffect( ATK_03+20, 23,   0x40,  1,  0,-100,  0);
--entryEffect( ATK_03+23, 23,   0x40,  1,  0,-100,  0);
entryEffect( ATK_03+23,  11,  0x40,  1,  0,  0,  0);
entryEffect( ATK_03+33, 23,   0x40,  1,  0,-100,  0);
SE5=playSe(ATK_03+8,1008);
stopSe( ATK_03+8, SE3, 6 );
SE6=playSe(ATK_03+20,1005);
stopSe( ATK_03+20, SE4, 6 );
SE7=playSe(ATK_03+23,1005);
stopSe( ATK_03+23, SE5, 6 );
SE8=playSe(ATK_03+33,1008);
stopSe( ATK_03+33, SE6, 6 );

--entryFlashBg( ATK_03+9,  1,  255,  255,  255);
changeAnime(  ATK_03+8,  1,  104);
setMoveKey(  ATK_03+8,1,  120,  30,  -100);
setMoveKey(  ATK_03+10,  1,  130,  12, -100);

setDamage(  ATK_03+8,  1,  0);
setDamage(  ATK_03+20,  1,  0);
setDamage(  ATK_03+23,  1,  0);
setDamage(  ATK_03+33,  1,  0);

setMoveKey(  ATK_03+20, 1, 130,  12,  -100);
setMoveKey(  ATK_03+23,  1,  150,  0, -100);
--entryFlashBg( ATK_04+33,  1,  255,  255,  255);
setMoveKey(  ATK_03+33,  1,  150,  0,  -100);
setMoveKey(  ATK_03+36, 1,  180,  0,  -100);
dealDamage(  ATK_03+33);

---------------
else
--爆破
entryEffect( ATK_03+8, 11,   0,  1, -40, 0, 0);
shuchusen01 = entryEffectLife( ATK_03+8,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_03+8, shuchusen01, 1.0, 1.2);
entryEffect( ATK_03+20, 11,   0, 1, -30, 30, 0);
shuchusen02 = entryEffectLife( ATK_03+20,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_03+20, shuchusen02, 1.0, 1.2);
entryEffect( ATK_03+23, 11,   0, 1, 20, -20, 0);
shuchusen03 = entryEffectLife( ATK_03+23,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_03+23, shuchusen03, 1.0, 1.2);
entryEffect( ATK_03+33, 11,   0x80,  1, 0, 0, 0);
shuchusen03 = entryEffectLife( ATK_03+33,  70,  2,  0,  -1,  0,  0,  0);--集中線
setEffScaleKey( ATK_03+33, shuchusen03, 1.0, 1.2);
-- playSe(ATK_03+8,1002);
-- playSe(ATK_03+20,10011);
-- playSe(ATK_03+23,1002);
-- playSe(ATK_03+33,1011);

--ダメージ振動等
setDamage(  ATK_03+8,  1,  0);
setDamage(  ATK_03+20,  1,  0);
setDamage(  ATK_03+23,  1,  0);
setDamage(  ATK_03+33,  1,  0);

--entryFlashBg( ATK_03+8,  1,  255,  255,  255);
changeAnime(  ATK_03+8,  1,  106);
setMoveKey(  ATK_03+8,1,  120,  30,  -100);
setMoveKey(  ATK_03+10,  1,  140,  12, -100);

changeAnime(  ATK_03+20,  1,  108);
--entryFlashBg( ATK_03+20,  1, 0,  0,  0);
setMoveKey(  ATK_03+20, 1, 140,  12,  -100);
setMoveKey(  ATK_03+23,  1,  180,  0, -100);
changeAnime(  ATK_03+23,  1,  106);
entryFlashBg( ATK_03+33,  1,  255,  255,  255);
setMoveKey(  ATK_03+33,  1,  180,  0,  -100);
changeAnime(  ATK_03+33,  1,  108);
setMoveKey(  ATK_03+36, 1,  230,  0,  -100);
dealDamage(  ATK_03+33);

-- ** 音 ** --
--連続爆発
SE012 = playSeVer2( 82, 1023, "", 0, 0, 0, -1);
SE013 = playSeVer2( 94, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( 94, SE013, 79 );
SE014 = playSeVer2( 106, 1011, "",158, 0, 26, -1);
setSeVolumeByWorkId( 106, SE014, 71 );

-----------------------------------------------------
end
--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_04+36;	
        entryFade( ATK_dead, 5, 5, 17, 119,3,16,255); -- カット接続用
   endPhase( ATK_dead+6);
   
else
------------

setMoveKey(  ATK_04+36,  1,  230,  0,  -100);
setMoveKey(  ATK_04+40, 1,  210,  0,  -100);
changeAnime(  ATK_04+45,  1,  104);
changeAnime(  ATK_04+48,  1,  100);
endPhase(  ATK_04+44+20);

end
