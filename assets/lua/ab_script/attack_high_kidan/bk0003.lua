print ("[lua]exec bk0003");

ATK_01 = 0;
ATK_D = 192;
ATK_end = ATK_01+256;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, ATK_D, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, ATK_D, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=254

-- ** エフェクト等 ** --
if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 127, 0x100, -1, 0, 0, 0);  --味方側 ef_211

else
    effect_front = entryEffect( ATK_01 + 0, 130, 0x100, -1, 0, 0, 0);  --敵側 ef_211r

end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

effect_back2 = entryEffect( ATK_01 + 0,128, 0x80, -1, 0, 0, 0); --ef_212
setEffMoveKey( ATK_01 + 0, effect_back2, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back2, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back2, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back2, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back2, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back2, 0);
setEffAlphaKey( ATK_01 + 0, effect_back2, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back2, 255);

ryusen = entryEffectLife( ATK_01 + 0,71, 58, 0x80, -1, 0, 0, 0); --流線
setEffMoveKey( ATK_01 + 0, ryusen, 0, 0 , 0);
setEffMoveKey( ATK_01 + 58, ryusen, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, ryusen, 1.2, 1.3);
setEffScaleKey( ATK_01 + 58, ryusen, 1.2, 1.3);
setEffRotateKey( ATK_01 + 0, ryusen, 20);
setEffRotateKey( ATK_01 + 58, ryusen, 20);

-- 気弾エフェクト1(0x40)
kidan01 = entryEffect( ATK_01 + 58, 138, 0x40, 0, 100, -60, -10);  --ef302
setEffMoveKey(ATK_01 + 58, kidan01, -60, -10);
setEffMoveKey(ATK_01 + 66, kidan01, -60, -10);
setEffMoveKey(ATK_01 + 67, kidan01, -140, 20);
setEffMoveKey(ATK_01 + 76, kidan01, -140, 20);
setEffMoveKey(ATK_01 + 77, kidan01, -180, 40);
setEffRotateKey(ATK_01 + 58, kidan01, 15);
setEffAlphaKey(ATK_01 + 58, kidan01, 255);
setEffAlphaKey(ATK_01 + 78, kidan01, 255);
setEffAlphaKey(ATK_01 + 79, kidan01, 0);

kidan02 = entryEffect( ATK_01 + 60, 138, 0x40, 0, 100, -170, 0);  --ef302
setEffRotateKey(ATK_01 + 60, kidan02, 15);
setEffAlphaKey(ATK_01 + 60, kidan02, 0);
setEffAlphaKey(ATK_01 + 82, kidan02, 0);
setEffAlphaKey(ATK_01 + 83, kidan02, 255);

--背景速度操作
if (_IS_PLAYER_SIDE_ == 1) then
	startBgScroll(ATK_01+0,-100,1);
	stopBgScroll(ATK_01+40,30);
	startBgScroll(ATK_01+60,-20,1);
	startBgScroll(ATK_01+70,-60,1);
	startBgScroll(ATK_01+80,-100,1);
	stopBgScroll(ATK_01+190,1);

else
	startBgScroll(ATK_01+0,-100,1);
	stopBgScroll(ATK_01+40,30);
	startBgScroll(ATK_01+60,-20,1);
	startBgScroll(ATK_01+70,-60,1);
	startBgScroll(ATK_01+80,-100,1);
	stopBgScroll(ATK_01+190,1);

end

--敵と味方のどちらが手前に来るか
setDrawFront( ATK_01+0, 0, 1);

-- --画面振動
setShakeXY(ATK_01 + 20 + OFFSET_X,8, 50, 30);
setShakeXY(ATK_01 + 28 + OFFSET_X,8, 20, 30);
setShakeXY(ATK_01 + 36 + OFFSET_X,8, 20, 30);
setShakeXY(ATK_01 + 44 + OFFSET_X,10, 10, 30);
setShakeXY(ATK_01 + 196 + OFFSET_X,8, 40, 60);
setShakeXY(ATK_01 + 204 + OFFSET_X,8, 30, 40);
setShakeXY(ATK_01 + 212 + OFFSET_X,8, 30, 30);
setShakeXY(ATK_01 + 220 + OFFSET_X,8, 10, 20);
setShakeXY(ATK_01 + 228 + OFFSET_X,24, 0, 20);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------
setDisp(ATK_01 + 94 + OFFSET_X, 0, 0);

changeAnimeAndStop( ATK_01 + 0, 0, 11 ,1);
changeAnimeAndStop( ATK_01 + 20 + OFFSET_X, 0, 11 ,4);
changeAnimeAndStop( ATK_01 + 28 + OFFSET_X, 0, 11 ,1);
changeAnime( ATK_01 + 34 + OFFSET_X, 0, 13 );
changeAnimeAndStop( ATK_01 + 54 + OFFSET_X, 0, 19 ,1);
changeAnimeAndStop( ATK_01 + 78 + OFFSET_X, 0, 19 ,10);

setMoveKey( ATK_01 + 0, 0, -969, 313.1 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -889.4, 287.2 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -889.4, 287.2 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -809.9, 261.3 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -809.9, 261.3 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -730.3, 235.4 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -730.3, 235.4 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -650.8, 209.6 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 0, -650.8, 209.6 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 0, -571.2, 183.7 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 0, -571.2, 183.7 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 0, -491.7, 157.8 , 0 );
setMoveKey( ATK_01 + 13 + OFFSET_X, 0, -491.7, 157.8 , 0 );
setMoveKey( ATK_01 + 14 + OFFSET_X, 0, -412.2, 132 , 0 );
setMoveKey( ATK_01 + 15 + OFFSET_X, 0, -412.2, 132 , 0 );
setMoveKey( ATK_01 + 16 + OFFSET_X, 0, -332.6, 106.1 , 0 );
setMoveKey( ATK_01 + 17 + OFFSET_X, 0, -332.6, 106.1 , 0 );
setMoveKey( ATK_01 + 18 + OFFSET_X, 0, -253.1, 80.2 , 0 );
setMoveKey( ATK_01 + 19 + OFFSET_X, 0, -253.1, 80.2 , 0 );
setMoveKey( ATK_01 + 20 + OFFSET_X, 0, -173.5, 54.3 , 0 );
setMoveKey( ATK_01 + 21 + OFFSET_X, 0, -173.5, 54.3 , 0 );
setMoveKey( ATK_01 + 22 + OFFSET_X, 0, -164.3, 51.4 , 0 );
setMoveKey( ATK_01 + 23 + OFFSET_X, 0, -164.3, 51.4 , 0 );
setMoveKey( ATK_01 + 24 + OFFSET_X, 0, -158.8, 49.6 , 0 );
setMoveKey( ATK_01 + 25 + OFFSET_X, 0, -158.8, 49.6 , 0 );
setMoveKey( ATK_01 + 26 + OFFSET_X, 0, -157, 49 , 0 );
setMoveKey( ATK_01 + 27 + OFFSET_X, 0, -157, 49 , 0 );
setMoveKey( ATK_01 + 28 + OFFSET_X, 0, -140.5, 43.6 , 0 );
setMoveKey( ATK_01 + 29 + OFFSET_X, 0, -140.5, 43.6 , 0 );
setMoveKey( ATK_01 + 30 + OFFSET_X, 0, -99.5, 25.7 , 0 );
setMoveKey( ATK_01 + 31 + OFFSET_X, 0, -99.5, 25.7 , 0 );
setMoveKey( ATK_01 + 32 + OFFSET_X, 0, -85.9, 19.8 , 0 );
setMoveKey( ATK_01 + 33 + OFFSET_X, 0, -85.9, 19.8 , 0 );
setMoveKey( ATK_01 + 34 + OFFSET_X, 0, -18.7, 24.8 , 0 );
setMoveKey( ATK_01 + 37 + OFFSET_X, 0, -18.7, 24.8 , 0 );
setMoveKey( ATK_01 + 38 + OFFSET_X, 0, -12.7, 22.9 , 0 );
setMoveKey( ATK_01 + 39 + OFFSET_X, 0, -12.7, 22.9 , 0 );
setMoveKey( ATK_01 + 40 + OFFSET_X, 0, -8.1, 21.4 , 0 );
setMoveKey( ATK_01 + 41 + OFFSET_X, 0, -8.1, 21.4 , 0 );
setMoveKey( ATK_01 + 42 + OFFSET_X, 0, -4.8, 20.3 , 0 );
setMoveKey( ATK_01 + 43 + OFFSET_X, 0, -4.8, 20.3 , 0 );
setMoveKey( ATK_01 + 44 + OFFSET_X, 0, -2.8, 19.7 , 0 );
setMoveKey( ATK_01 + 45 + OFFSET_X, 0, -2.8, 19.7 , 0 );
setMoveKey( ATK_01 + 46 + OFFSET_X, 0, -2.1, 19.5 , 0 );
setMoveKey( ATK_01 + 51 + OFFSET_X, 0, -2.1, 19.5 , 0 );
setMoveKey( ATK_01 + 52 + OFFSET_X, 0, 15.5, 11.8 , 0 );
setMoveKey( ATK_01 + 53 + OFFSET_X, 0, 15.5, 11.8 , 0 );
setMoveKey( ATK_01 + 54 + OFFSET_X, 0, -8.3, 0.6 , 0 );
setMoveKey( ATK_01 + 59 + OFFSET_X, 0, -8.3, 0.6 , 0 );
setMoveKey( ATK_01 + 60 + OFFSET_X, 0, 70.9, -23.2 , 0 );
setMoveKey( ATK_01 + 61 + OFFSET_X, 0, 70.9, -23.2 , 0 );
setMoveKey( ATK_01 + 62 + OFFSET_X, 0, 68.7, -22.5 , 0 );
setMoveKey( ATK_01 + 63 + OFFSET_X, 0, 68.7, -22.5 , 0 );
setMoveKey( ATK_01 + 64 + OFFSET_X, 0, 62.3, -20.5 , 0 );
setMoveKey( ATK_01 + 65 + OFFSET_X, 0, 62.3, -20.5 , 0 );
setMoveKey( ATK_01 + 66 + OFFSET_X, 0, 51.6, -17.3 , 0 );
setMoveKey( ATK_01 + 67 + OFFSET_X, 0, 51.6, -17.3 , 0 );
setMoveKey( ATK_01 + 68 + OFFSET_X, 0, 36.6, -12.7 , 0 );
setMoveKey( ATK_01 + 69 + OFFSET_X, 0, 36.6, -12.7 , 0 );
setMoveKey( ATK_01 + 70 + OFFSET_X, 0, 17.3, -6.7 , 0 );
setMoveKey( ATK_01 + 71 + OFFSET_X, 0, 17.3, -6.7 , 0 );
setMoveKey( ATK_01 + 72 + OFFSET_X, 0, -6.2, 0.5 , 0 );
setMoveKey( ATK_01 + 73 + OFFSET_X, 0, -6.2, 0.5 , 0 );
setMoveKey( ATK_01 + 74 + OFFSET_X, 0, -34.1, 9 , 0 );
setMoveKey( ATK_01 + 75 + OFFSET_X, 0, -34.1, 9 , 0 );
setMoveKey( ATK_01 + 76 + OFFSET_X, 0, -66.2, 18.9 , 0 );
setMoveKey( ATK_01 + 77 + OFFSET_X, 0, -66.2, 18.9 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 0, -102.6, 30 , 0 );
setMoveKey( ATK_01 + 79 + OFFSET_X, 0, -102.6, 30 , 0 );
setMoveKey( ATK_01 + 80 + OFFSET_X, 0, -143.3, 42.5 , 0 );
setMoveKey( ATK_01 + 81 + OFFSET_X, 0, -143.3, 42.5 , 0 );
setMoveKey( ATK_01 + 82 + OFFSET_X, 0, -188.3, 56.3 , 0 );
setMoveKey( ATK_01 + 83 + OFFSET_X, 0, -188.3, 56.3 , 0 );
setMoveKey( ATK_01 + 84 + OFFSET_X, 0, -237.6, 71.4 , 0 );
setMoveKey( ATK_01 + 85 + OFFSET_X, 0, -237.6, 71.4 , 0 );
setMoveKey( ATK_01 + 86 + OFFSET_X, 0, -291.1, 87.9 , 0 );
setMoveKey( ATK_01 + 87 + OFFSET_X, 0, -291.1, 87.9 , 0 );
setMoveKey( ATK_01 + 88 + OFFSET_X, 0, -348.9, 105.6 , 0 );
setMoveKey( ATK_01 + 89 + OFFSET_X, 0, -348.9, 105.6 , 0 );
setMoveKey( ATK_01 + 90 + OFFSET_X, 0, -411, 124.7 , 0 );
setMoveKey( ATK_01 + 91 + OFFSET_X, 0, -411, 124.7 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 0, -477.4, 145 , 0 );
setMoveKey( ATK_01 + 94 + OFFSET_X, 0, -477.4, 145 , 0 );
setMoveKey( ATK_01 + ATK_end -2, 0, 2000, 0 , 0 );

setScaleKey( ATK_01 + 0, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 59 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 60 + OFFSET_X, 0, 1.25, 1.25 );
setScaleKey( ATK_01 + 63 + OFFSET_X, 0, 1.25, 1.25 );
setScaleKey( ATK_01 + 64 + OFFSET_X, 0, 1.26, 1.26 );
setScaleKey( ATK_01 + 67 + OFFSET_X, 0, 1.26, 1.26 );
setScaleKey( ATK_01 + 68 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 71 + OFFSET_X, 0, 1.27, 1.27 );
setScaleKey( ATK_01 + 72 + OFFSET_X, 0, 1.28, 1.28 );
setScaleKey( ATK_01 + 73 + OFFSET_X, 0, 1.28, 1.28 );
setScaleKey( ATK_01 + 74 + OFFSET_X, 0, 1.29, 1.29 );
setScaleKey( ATK_01 + 75 + OFFSET_X, 0, 1.29, 1.29 );
setScaleKey( ATK_01 + 76 + OFFSET_X, 0, 1.31, 1.31 );
setScaleKey( ATK_01 + 77 + OFFSET_X, 0, 1.31, 1.31 );
setScaleKey( ATK_01 + 78 + OFFSET_X, 0, 1.32, 1.32 );
setScaleKey( ATK_01 + 79 + OFFSET_X, 0, 1.32, 1.32 );
setScaleKey( ATK_01 + 80 + OFFSET_X, 0, 1.33, 1.33 );
setScaleKey( ATK_01 + 81 + OFFSET_X, 0, 1.33, 1.33 );
setScaleKey( ATK_01 + 82 + OFFSET_X, 0, 1.35, 1.35 );
setScaleKey( ATK_01 + 83 + OFFSET_X, 0, 1.35, 1.35 );
setScaleKey( ATK_01 + 84 + OFFSET_X, 0, 1.37, 1.37 );
setScaleKey( ATK_01 + 85 + OFFSET_X, 0, 1.37, 1.37 );
setScaleKey( ATK_01 + 86 + OFFSET_X, 0, 1.39, 1.39 );
setScaleKey( ATK_01 + 87 + OFFSET_X, 0, 1.39, 1.39 );
setScaleKey( ATK_01 + 88 + OFFSET_X, 0, 1.41, 1.41 );
setScaleKey( ATK_01 + 89 + OFFSET_X, 0, 1.41, 1.41 );
setScaleKey( ATK_01 + 90 + OFFSET_X, 0, 1.43, 1.43 );
setScaleKey( ATK_01 + 91 + OFFSET_X, 0, 1.43, 1.43 );
setScaleKey( ATK_01 + 92 + OFFSET_X, 0, 1.46, 1.46 );
setScaleKey( ATK_01 + 94 + OFFSET_X, 0, 1.46, 1.46 );

setRotateKey( ATK_01 + 0 + OFFSET_X, 0, 18 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, 18 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, 18 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, 18 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, 18 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, 18 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, 18 );
setRotateKey( ATK_01 + 29 + OFFSET_X, 0, 18 );
setRotateKey( ATK_01 + 30 + OFFSET_X, 0, 4.9 );
setRotateKey( ATK_01 + 31 + OFFSET_X, 0, 4.9 );
setRotateKey( ATK_01 + 32 + OFFSET_X, 0, 0.6 );
setRotateKey( ATK_01 + 33 + OFFSET_X, 0, 0.6 );
setRotateKey( ATK_01 + 34 + OFFSET_X, 0, 5 );
setRotateKey( ATK_01 + 51 + OFFSET_X, 0, 5 );
setRotateKey( ATK_01 + 52 + OFFSET_X, 0, 24.4 );
setRotateKey( ATK_01 + 53 + OFFSET_X, 0, 24.4 );
setRotateKey( ATK_01 + 54 + OFFSET_X, 0, 18 );
setRotateKey( ATK_01 + 78 + OFFSET_X, 0, 18 );
setRotateKey( ATK_01 + 94 + OFFSET_X, 0, 18 );


yy = 200;
-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

	setDisp(ATK_01 + 48 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 108 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 186 + OFFSET_X, 1, 0);

	changeAnime( ATK_01 + 0, 1, 101 );
	changeAnime( ATK_01 + 20 + OFFSET_X, 1, 104 );
	--changeAnime( ATK_01 + 34 + OFFSET_X, 1, 108 );
	
	setMoveKey( ATK_01 + 0, 1, -500.3, 160.6 , 0 );
	setMoveKey( ATK_01 + 1 + OFFSET_X, 1, -500.3, 160.6 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, -381.9, 122.2 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, -381.9, 122.2 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, -281.8, 89.6 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, -281.8, 89.6 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, -199.8, 62.9 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, -199.8, 62.9 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, -136.1, 42.2 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, -136.1, 42.2 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, -90.5, 27.4 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, -90.5, 27.4 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, -63.2, 18.5 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, -63.2, 18.5 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, -54.1, 15.5 , 0 );
	setMoveKey( ATK_01 + 19 + OFFSET_X, 1, -54.1, 15.5 , 0 );
	setMoveKey( ATK_01 + 20 + OFFSET_X, 1, -47.8, 16.1 , 0 );
	setMoveKey( ATK_01 + 21 + OFFSET_X, 1, -47.8, 16.1 , 0 );
	setMoveKey( ATK_01 + 22 + OFFSET_X, 1, -27.6, 9.4 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, -27.6, 9.4 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, -11, 4 , 0 );
	setMoveKey( ATK_01 + 25 + OFFSET_X, 1, -11, 4 , 0 );
	setMoveKey( ATK_01 + 26 + OFFSET_X, 1, 1.8, -0.3 , 0 );
	setMoveKey( ATK_01 + 27 + OFFSET_X, 1, 1.8, -0.3 , 0 );
	setMoveKey( ATK_01 + 28 + OFFSET_X, 1, 11, -3.3 , 0 );
	setMoveKey( ATK_01 + 29 + OFFSET_X, 1, 11, -3.3 , 0 );
	setMoveKey( ATK_01 + 30 + OFFSET_X, 1, 16.5, -5.1 , 0 );
	setMoveKey( ATK_01 + 31 + OFFSET_X, 1, 16.5, -5.1 , 0 );
	setMoveKey( ATK_01 + 32 + OFFSET_X, 1, 18.4, -5.7 , 0 );
	setMoveKey( ATK_01 + 33 + OFFSET_X, 1, 18.4, -5.7 , 0 );
	setMoveKey( ATK_01 + 34 + OFFSET_X, 1, 126.4, -38.5 , 0 );
	setMoveKey( ATK_01 + 37 + OFFSET_X, 1, 126.4, -38.5 , 0 );
	setMoveKey( ATK_01 + 38 + OFFSET_X, 1, 255.3, -80.4 , 0 );
	setMoveKey( ATK_01 + 39 + OFFSET_X, 1, 255.3, -80.4 , 0 );
	setMoveKey( ATK_01 + 40 + OFFSET_X, 1, 384.2, -122.3 , 0 );
	setMoveKey( ATK_01 + 41 + OFFSET_X, 1, 384.2, -122.3 , 0 );
	setMoveKey( ATK_01 + 42 + OFFSET_X, 1, 513.2, -164.3 , 0 );
	setMoveKey( ATK_01 + 43 + OFFSET_X, 1, 513.2, -164.3 , 0 );
	setMoveKey( ATK_01 + 44 + OFFSET_X, 1, 642.1, -206.2 , 0 );
	setMoveKey( ATK_01 + 45 + OFFSET_X, 1, 642.1, -206.2 , 0 );
	setMoveKey( ATK_01 + 46 + OFFSET_X, 1, 771, -248.1 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 771, -248.1 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, -578, 535.3 + yy , 0 );
	setMoveKey( ATK_01 + 109 + OFFSET_X, 1, -578, 535.3 + yy , 0 );
	setMoveKey( ATK_01 + 110 + OFFSET_X, 1, -246.3, 199.2 + yy , 0 );
	setMoveKey( ATK_01 + 111 + OFFSET_X, 1, -246.3, 199.2 + yy , 0 );
	setMoveKey( ATK_01 + 112 + OFFSET_X, 1, -109.2, 55.7 + yy , 0 );
	setMoveKey( ATK_01 + 113 + OFFSET_X, 1, -109.2, 55.7 + yy , 0 );
	setMoveKey( ATK_01 + 114 + OFFSET_X, 1, -10.6, -51.4 + yy , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, -10.6, -51.4 + yy , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 44.8, -111.8 + yy , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, 44.8, -111.8 + yy , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, 95.9, -168.8 + yy , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, 95.9, -168.8 + yy , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, 124.4, -200 + yy , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, 124.4, -200 + yy , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, 156.1, -236.1 + yy , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, 156.1, -236.1 + yy , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, 173.3, -255.2 + yy , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 173.3, -255.2 + yy , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 195.5, -280.6 + yy , 0 );
	setMoveKey( ATK_01 + 127 + OFFSET_X, 1, 195.5, -280.6 + yy , 0 );
	setMoveKey( ATK_01 + 128 + OFFSET_X, 1, 206, -292.2 + yy , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 206, -292.2 + yy , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 221.8, -310.5 + yy , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 221.8, -310.5 + yy , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 228.1, -317.3 + yy , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 228.1, -317.3 + yy , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 240.3, -331.6 + yy , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 240.3, -331.6 + yy , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 243.9, -335.5 + yy , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 243.9, -335.5 + yy , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 253.7, -346.8 + yy , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 253.7, -346.8 + yy , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 255.6, -348.9 + yy , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 255.6, -348.9 + yy , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 263.7, -358.4 + yy , 0 );
	setMoveKey( ATK_01 + 143 + OFFSET_X, 1, 263.7, -358.4 + yy , 0 );
	setMoveKey( ATK_01 + 144 + OFFSET_X, 1, 264.6, -359.3 + yy , 0 );
	setMoveKey( ATK_01 + 145 + OFFSET_X, 1, 264.6, -359.3 + yy , 0 );
	setMoveKey( ATK_01 + 146 + OFFSET_X, 1, 271.4, -367.2 + yy , 0 );
	setMoveKey( ATK_01 + 147 + OFFSET_X, 1, 271.4, -367.2 + yy , 0 );
	setMoveKey( ATK_01 + 148 + OFFSET_X, 1, 271.1, -366.7 + yy , 0 );
	setMoveKey( ATK_01 + 149 + OFFSET_X, 1, 271.1, -366.7 + yy , 0 );
	setMoveKey( ATK_01 + 150 + OFFSET_X, 1, 277.1, -373.9 + yy , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, 277.1, -373.9 + yy , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, 276.7, -373.2 + yy , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, 276.7, -373.2 + yy , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, 281.9, -379.5 + yy , 0 );
	setMoveKey( ATK_01 + 155 + OFFSET_X, 1, 281.9, -379.5 + yy , 0 );
	setMoveKey( ATK_01 + 156 + OFFSET_X, 1, 280.5, -377.5 + yy , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, 280.5, -377.5 + yy , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, 285.5, -383.5 + yy , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, 285.5, -383.5 + yy , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, 284.5, -382.2 + yy , 0 );
	setMoveKey( ATK_01 + 161 + OFFSET_X, 1, 284.5, -382.2 + yy , 0 );
	setMoveKey( ATK_01 + 162 + OFFSET_X, 1, 288.1, -386.6 + yy , 0 );
	setMoveKey( ATK_01 + 163 + OFFSET_X, 1, 288.1, -386.6 + yy , 0 );
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, 287.1, -385.2 + yy , 0 );
	setMoveKey( ATK_01 + 165 + OFFSET_X, 1, 287.1, -385.2 + yy , 0 );
	setMoveKey( ATK_01 + 166 + OFFSET_X, 1, 291.4, -390.3 + yy , 0 );
	setMoveKey( ATK_01 + 167 + OFFSET_X, 1, 291.4, -390.3 + yy , 0 );
	setMoveKey( ATK_01 + 168 + OFFSET_X, 1, 289.9, -388.5 + yy , 0 );
	setMoveKey( ATK_01 + 169 + OFFSET_X, 1, 289.9, -388.5 + yy , 0 );
	setMoveKey( ATK_01 + 170 + OFFSET_X, 1, 293.6, -392.9 + yy , 0 );
	setMoveKey( ATK_01 + 171 + OFFSET_X, 1, 293.6, -392.9 + yy , 0 );
	setMoveKey( ATK_01 + 172 + OFFSET_X, 1, 292.2, -391.1 + yy , 0 );
	setMoveKey( ATK_01 + 173 + OFFSET_X, 1, 292.2, -391.1 + yy , 0 );
	setMoveKey( ATK_01 + 174 + OFFSET_X, 1, 296.2, -395.9 + yy , 0 );
	setMoveKey( ATK_01 + 175 + OFFSET_X, 1, 296.2, -395.9 + yy , 0 );
	setMoveKey( ATK_01 + 176 + OFFSET_X, 1, 294.1, -393.3 + yy , 0 );
	setMoveKey( ATK_01 + 177 + OFFSET_X, 1, 294.1, -393.3 + yy , 0 );
	setMoveKey( ATK_01 + 178 + OFFSET_X, 1, 297.7, -397.7 + yy , 0 );
	setMoveKey( ATK_01 + 179 + OFFSET_X, 1, 297.7, -397.7 + yy , 0 );
	setMoveKey( ATK_01 + 180 + OFFSET_X, 1, 297, -396.8 + yy , 0 );
	setMoveKey( ATK_01 + 181 + OFFSET_X, 1, 297, -396.8 + yy , 0 );
	setMoveKey( ATK_01 + 182 + OFFSET_X, 1, 300.1, -400.4 + yy , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, 300.1, -400.4 + yy , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, 299.2, -399.2 + yy , 0 );
	setMoveKey( ATK_01 + 186 + OFFSET_X, 1, 299.2, -399.2 + yy , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 0, 1, 1.22, 1.22 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 1.23, 1.23 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 1.23, 1.23 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1.23, 1.23 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1.23, 1.23 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1.24, 1.24 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1.24, 1.24 );
	setScaleKey( ATK_01 + 107 + OFFSET_X, 1, 1.24, 1.24 );
	setScaleKey( ATK_01 + 108 + OFFSET_X, 1, 2.63, 2.63 );
	setScaleKey( ATK_01 + 109 + OFFSET_X, 1, 2.63, 2.63 );
	setScaleKey( ATK_01 + 110 + OFFSET_X, 1, 1.84, 1.84 );
	setScaleKey( ATK_01 + 111 + OFFSET_X, 1, 1.84, 1.84 );
	setScaleKey( ATK_01 + 112 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 113 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 114 + OFFSET_X, 1, 1.26, 1.26 );
	setScaleKey( ATK_01 + 115 + OFFSET_X, 1, 1.26, 1.26 );
	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 117 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 0.99, 0.99 );
	setScaleKey( ATK_01 + 119 + OFFSET_X, 1, 0.99, 0.99 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 0.92, 0.92 );
	setScaleKey( ATK_01 + 121 + OFFSET_X, 1, 0.92, 0.92 );
	setScaleKey( ATK_01 + 122 + OFFSET_X, 1, 0.84, 0.84 );
	setScaleKey( ATK_01 + 123 + OFFSET_X, 1, 0.84, 0.84 );
	setScaleKey( ATK_01 + 124 + OFFSET_X, 1, 0.8, 0.8 );
	setScaleKey( ATK_01 + 125 + OFFSET_X, 1, 0.8, 0.8 );
	setScaleKey( ATK_01 + 126 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 127 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 128 + OFFSET_X, 1, 0.72, 0.72 );
	setScaleKey( ATK_01 + 129 + OFFSET_X, 1, 0.72, 0.72 );
	setScaleKey( ATK_01 + 130 + OFFSET_X, 1, 0.67, 0.67 );
	setScaleKey( ATK_01 + 131 + OFFSET_X, 1, 0.67, 0.67 );
	setScaleKey( ATK_01 + 132 + OFFSET_X, 1, 0.66, 0.66 );
	setScaleKey( ATK_01 + 133 + OFFSET_X, 1, 0.66, 0.66 );
	setScaleKey( ATK_01 + 134 + OFFSET_X, 1, 0.63, 0.63 );
	setScaleKey( ATK_01 + 135 + OFFSET_X, 1, 0.63, 0.63 );
	setScaleKey( ATK_01 + 136 + OFFSET_X, 1, 0.62, 0.62 );
	setScaleKey( ATK_01 + 137 + OFFSET_X, 1, 0.62, 0.62 );
	setScaleKey( ATK_01 + 138 + OFFSET_X, 1, 0.59, 0.59 );
	setScaleKey( ATK_01 + 141 + OFFSET_X, 1, 0.59, 0.59 );
	setScaleKey( ATK_01 + 142 + OFFSET_X, 1, 0.57, 0.57 );
	setScaleKey( ATK_01 + 145 + OFFSET_X, 1, 0.57, 0.57 );
	setScaleKey( ATK_01 + 146 + OFFSET_X, 1, 0.55, 0.55 );
	setScaleKey( ATK_01 + 149 + OFFSET_X, 1, 0.55, 0.55 );
	setScaleKey( ATK_01 + 150 + OFFSET_X, 1, 0.53, 0.53 );
	setScaleKey( ATK_01 + 153 + OFFSET_X, 1, 0.53, 0.53 );
	setScaleKey( ATK_01 + 154 + OFFSET_X, 1, 0.52, 0.52 );
	setScaleKey( ATK_01 + 157 + OFFSET_X, 1, 0.52, 0.52 );
	setScaleKey( ATK_01 + 158 + OFFSET_X, 1, 0.51, 0.51 );
	setScaleKey( ATK_01 + 161 + OFFSET_X, 1, 0.51, 0.51 );
	setScaleKey( ATK_01 + 162 + OFFSET_X, 1, 0.5, 0.5 );
	setScaleKey( ATK_01 + 163 + OFFSET_X, 1, 0.5, 0.5 );
	setScaleKey( ATK_01 + 164 + OFFSET_X, 1, 0.51, 0.51 );
	setScaleKey( ATK_01 + 165 + OFFSET_X, 1, 0.51, 0.51 );
	setScaleKey( ATK_01 + 166 + OFFSET_X, 1, 0.5, 0.5 );
	setScaleKey( ATK_01 + 169 + OFFSET_X, 1, 0.5, 0.5 );
	setScaleKey( ATK_01 + 170 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 173 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 174 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 175 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 176 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 177 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 178 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 181 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 182 + OFFSET_X, 1, 0.47, 0.47 );
	setScaleKey( ATK_01 + 183 + OFFSET_X, 1, 0.47, 0.47 );
	setScaleKey( ATK_01 + 184 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 186 + OFFSET_X, 1, 0.48, 0.48 );

	setRotateKey( ATK_01 + 0, 1, 28.1 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 25.4 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 25.4 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 23.1 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 23.1 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 21.3 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 21.3 );
	setRotateKey( ATK_01 + 8 + OFFSET_X, 1, 19.9 );
	setRotateKey( ATK_01 + 9 + OFFSET_X, 1, 19.9 );
	setRotateKey( ATK_01 + 10 + OFFSET_X, 1, 18.8 );
	setRotateKey( ATK_01 + 11 + OFFSET_X, 1, 18.8 );
	setRotateKey( ATK_01 + 12 + OFFSET_X, 1, 18.2 );
	setRotateKey( ATK_01 + 13 + OFFSET_X, 1, 18.2 );
	setRotateKey( ATK_01 + 14 + OFFSET_X, 1, 18 );
	setRotateKey( ATK_01 + 33 + OFFSET_X, 1, 18 );
	setRotateKey( ATK_01 + 34 + OFFSET_X, 1, 28.5 );
	setRotateKey( ATK_01 + 107 + OFFSET_X, 1, 28.5 );
	setRotateKey( ATK_01 + 108 + OFFSET_X, 1, 47 );
	setRotateKey( ATK_01 + 109 + OFFSET_X, 1, 47 );
	setRotateKey( ATK_01 + 110 + OFFSET_X, 1, 47.9 );
	setRotateKey( ATK_01 + 111 + OFFSET_X, 1, 47.9 );
	setRotateKey( ATK_01 + 112 + OFFSET_X, 1, 48.3 );
	setRotateKey( ATK_01 + 113 + OFFSET_X, 1, 48.3 );
	setRotateKey( ATK_01 + 114 + OFFSET_X, 1, 48.5 );
	setRotateKey( ATK_01 + 115 + OFFSET_X, 1, 48.5 );
	setRotateKey( ATK_01 + 116 + OFFSET_X, 1, 48.7 );
	setRotateKey( ATK_01 + 117 + OFFSET_X, 1, 48.7 );
	setRotateKey( ATK_01 + 118 + OFFSET_X, 1, 48.8 );
	setRotateKey( ATK_01 + 119 + OFFSET_X, 1, 48.8 );
	setRotateKey( ATK_01 + 120 + OFFSET_X, 1, 48.9 );
	setRotateKey( ATK_01 + 121 + OFFSET_X, 1, 48.9 );
	setRotateKey( ATK_01 + 122 + OFFSET_X, 1, 49 );
	setRotateKey( ATK_01 + 125 + OFFSET_X, 1, 49 );
	setRotateKey( ATK_01 + 126 + OFFSET_X, 1, 49.1 );
	setRotateKey( ATK_01 + 129 + OFFSET_X, 1, 49.1 );
	setRotateKey( ATK_01 + 130 + OFFSET_X, 1, 49.2 );
	setRotateKey( ATK_01 + 139 + OFFSET_X, 1, 49.2 );
	setRotateKey( ATK_01 + 140 + OFFSET_X, 1, 49.3 );
	setRotateKey( ATK_01 + 165 + OFFSET_X, 1, 49.3 );
	setRotateKey( ATK_01 + 166 + OFFSET_X, 1, 49.4 );
	setRotateKey( ATK_01 + 186 + OFFSET_X, 1, 49.4 );

else

	setDisp(ATK_01 + 48 + OFFSET_X, 1, 0);
	setDisp(ATK_01 + 108 + OFFSET_X, 1, 1);
	setDisp(ATK_01 + 186 + OFFSET_X, 1, 0);

	changeAnime( ATK_01 + 0, 1, 101 );
	changeAnime( ATK_01 + 20 + OFFSET_X, 1, 106 );
	changeAnime( ATK_01 + 34 + OFFSET_X, 1, 108 );
	
	setMoveKey( ATK_01 + 0, 1, -500.3, 160.6 , 0 );
	setMoveKey( ATK_01 + 1 + OFFSET_X, 1, -500.3, 160.6 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, -381.9, 122.2 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, -381.9, 122.2 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, -281.8, 89.6 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, -281.8, 89.6 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, -199.8, 62.9 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, -199.8, 62.9 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, -136.1, 42.2 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, -136.1, 42.2 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, -90.5, 27.4 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, -90.5, 27.4 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, -63.2, 18.5 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, -63.2, 18.5 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, -54.1, 15.5 , 0 );
	setMoveKey( ATK_01 + 19 + OFFSET_X, 1, -54.1, 15.5 , 0 );
	setMoveKey( ATK_01 + 20 + OFFSET_X, 1, -47.8, 16.1 , 0 );
	setMoveKey( ATK_01 + 21 + OFFSET_X, 1, -47.8, 16.1 , 0 );
	setMoveKey( ATK_01 + 22 + OFFSET_X, 1, -27.6, 9.4 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, -27.6, 9.4 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, -11, 4 , 0 );
	setMoveKey( ATK_01 + 25 + OFFSET_X, 1, -11, 4 , 0 );
	setMoveKey( ATK_01 + 26 + OFFSET_X, 1, 1.8, -0.3 , 0 );
	setMoveKey( ATK_01 + 27 + OFFSET_X, 1, 1.8, -0.3 , 0 );
	setMoveKey( ATK_01 + 28 + OFFSET_X, 1, 11, -3.3 , 0 );
	setMoveKey( ATK_01 + 29 + OFFSET_X, 1, 11, -3.3 , 0 );
	setMoveKey( ATK_01 + 30 + OFFSET_X, 1, 16.5, -5.1 , 0 );
	setMoveKey( ATK_01 + 31 + OFFSET_X, 1, 16.5, -5.1 , 0 );
	setMoveKey( ATK_01 + 32 + OFFSET_X, 1, 18.4, -5.7 , 0 );
	setMoveKey( ATK_01 + 33 + OFFSET_X, 1, 18.4, -5.7 , 0 );
	setMoveKey( ATK_01 + 34 + OFFSET_X, 1, 126.4, -38.5 , 0 );
	setMoveKey( ATK_01 + 37 + OFFSET_X, 1, 126.4, -38.5 , 0 );
	setMoveKey( ATK_01 + 38 + OFFSET_X, 1, 255.3, -80.4 , 0 );
	setMoveKey( ATK_01 + 39 + OFFSET_X, 1, 255.3, -80.4 , 0 );
	setMoveKey( ATK_01 + 40 + OFFSET_X, 1, 384.2, -122.3 , 0 );
	setMoveKey( ATK_01 + 41 + OFFSET_X, 1, 384.2, -122.3 , 0 );
	setMoveKey( ATK_01 + 42 + OFFSET_X, 1, 513.2, -164.3 , 0 );
	setMoveKey( ATK_01 + 43 + OFFSET_X, 1, 513.2, -164.3 , 0 );
	setMoveKey( ATK_01 + 44 + OFFSET_X, 1, 642.1, -206.2 , 0 );
	setMoveKey( ATK_01 + 45 + OFFSET_X, 1, 642.1, -206.2 , 0 );
	setMoveKey( ATK_01 + 46 + OFFSET_X, 1, 771, -248.1 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 771, -248.1 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, -578, 535.3 + yy , 0 );
	setMoveKey( ATK_01 + 109 + OFFSET_X, 1, -578, 535.3 + yy , 0 );
	setMoveKey( ATK_01 + 110 + OFFSET_X, 1, -246.3, 199.2 + yy , 0 );
	setMoveKey( ATK_01 + 111 + OFFSET_X, 1, -246.3, 199.2 + yy , 0 );
	setMoveKey( ATK_01 + 112 + OFFSET_X, 1, -109.2, 55.7 + yy , 0 );
	setMoveKey( ATK_01 + 113 + OFFSET_X, 1, -109.2, 55.7 + yy , 0 );
	setMoveKey( ATK_01 + 114 + OFFSET_X, 1, -10.6, -51.4 + yy , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, -10.6, -51.4 + yy , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 44.8, -111.8 + yy , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, 44.8, -111.8 + yy , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, 95.9, -168.8 + yy , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, 95.9, -168.8 + yy , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, 124.4, -200 + yy , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, 124.4, -200 + yy , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, 156.1, -236.1 + yy , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, 156.1, -236.1 + yy , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, 173.3, -255.2 + yy , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 173.3, -255.2 + yy , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 195.5, -280.6 + yy , 0 );
	setMoveKey( ATK_01 + 127 + OFFSET_X, 1, 195.5, -280.6 + yy , 0 );
	setMoveKey( ATK_01 + 128 + OFFSET_X, 1, 206, -292.2 + yy , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 206, -292.2 + yy , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 221.8, -310.5 + yy , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 221.8, -310.5 + yy , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 228.1, -317.3 + yy , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 228.1, -317.3 + yy , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 240.3, -331.6 + yy , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 240.3, -331.6 + yy , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 243.9, -335.5 + yy , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 243.9, -335.5 + yy , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 253.7, -346.8 + yy , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 253.7, -346.8 + yy , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 255.6, -348.9 + yy , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 255.6, -348.9 + yy , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 263.7, -358.4 + yy , 0 );
	setMoveKey( ATK_01 + 143 + OFFSET_X, 1, 263.7, -358.4 + yy , 0 );
	setMoveKey( ATK_01 + 144 + OFFSET_X, 1, 264.6, -359.3 + yy , 0 );
	setMoveKey( ATK_01 + 145 + OFFSET_X, 1, 264.6, -359.3 + yy , 0 );
	setMoveKey( ATK_01 + 146 + OFFSET_X, 1, 271.4, -367.2 + yy , 0 );
	setMoveKey( ATK_01 + 147 + OFFSET_X, 1, 271.4, -367.2 + yy , 0 );
	setMoveKey( ATK_01 + 148 + OFFSET_X, 1, 271.1, -366.7 + yy , 0 );
	setMoveKey( ATK_01 + 149 + OFFSET_X, 1, 271.1, -366.7 + yy , 0 );
	setMoveKey( ATK_01 + 150 + OFFSET_X, 1, 277.1, -373.9 + yy , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, 277.1, -373.9 + yy , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, 276.7, -373.2 + yy , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, 276.7, -373.2 + yy , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, 281.9, -379.5 + yy , 0 );
	setMoveKey( ATK_01 + 155 + OFFSET_X, 1, 281.9, -379.5 + yy , 0 );
	setMoveKey( ATK_01 + 156 + OFFSET_X, 1, 280.5, -377.5 + yy , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, 280.5, -377.5 + yy , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, 285.5, -383.5 + yy , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, 285.5, -383.5 + yy , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, 284.5, -382.2 + yy , 0 );
	setMoveKey( ATK_01 + 161 + OFFSET_X, 1, 284.5, -382.2 + yy , 0 );
	setMoveKey( ATK_01 + 162 + OFFSET_X, 1, 288.1, -386.6 + yy , 0 );
	setMoveKey( ATK_01 + 163 + OFFSET_X, 1, 288.1, -386.6 + yy , 0 );
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, 287.1, -385.2 + yy , 0 );
	setMoveKey( ATK_01 + 165 + OFFSET_X, 1, 287.1, -385.2 + yy , 0 );
	setMoveKey( ATK_01 + 166 + OFFSET_X, 1, 291.4, -390.3 + yy , 0 );
	setMoveKey( ATK_01 + 167 + OFFSET_X, 1, 291.4, -390.3 + yy , 0 );
	setMoveKey( ATK_01 + 168 + OFFSET_X, 1, 289.9, -388.5 + yy , 0 );
	setMoveKey( ATK_01 + 169 + OFFSET_X, 1, 289.9, -388.5 + yy , 0 );
	setMoveKey( ATK_01 + 170 + OFFSET_X, 1, 293.6, -392.9 + yy , 0 );
	setMoveKey( ATK_01 + 171 + OFFSET_X, 1, 293.6, -392.9 + yy , 0 );
	setMoveKey( ATK_01 + 172 + OFFSET_X, 1, 292.2, -391.1 + yy , 0 );
	setMoveKey( ATK_01 + 173 + OFFSET_X, 1, 292.2, -391.1 + yy , 0 );
	setMoveKey( ATK_01 + 174 + OFFSET_X, 1, 296.2, -395.9 + yy , 0 );
	setMoveKey( ATK_01 + 175 + OFFSET_X, 1, 296.2, -395.9 + yy , 0 );
	setMoveKey( ATK_01 + 176 + OFFSET_X, 1, 294.1, -393.3 + yy , 0 );
	setMoveKey( ATK_01 + 177 + OFFSET_X, 1, 294.1, -393.3 + yy , 0 );
	setMoveKey( ATK_01 + 178 + OFFSET_X, 1, 297.7, -397.7 + yy , 0 );
	setMoveKey( ATK_01 + 179 + OFFSET_X, 1, 297.7, -397.7 + yy , 0 );
	setMoveKey( ATK_01 + 180 + OFFSET_X, 1, 297, -396.8 + yy , 0 );
	setMoveKey( ATK_01 + 181 + OFFSET_X, 1, 297, -396.8 + yy , 0 );
	setMoveKey( ATK_01 + 182 + OFFSET_X, 1, 300.1, -400.4 + yy , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, 300.1, -400.4 + yy , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, 299.2, -399.2 + yy , 0 );
	setMoveKey( ATK_01 + 186 + OFFSET_X, 1, 299.2, -399.2 + yy , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 0, 1, 1.22, 1.22 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 1.23, 1.23 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 1.23, 1.23 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 1.23, 1.23 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 1.23, 1.23 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 1.24, 1.24 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 1.24, 1.24 );
	setScaleKey( ATK_01 + 107 + OFFSET_X, 1, 1.24, 1.24 );
	setScaleKey( ATK_01 + 108 + OFFSET_X, 1, 2.63, 2.63 );
	setScaleKey( ATK_01 + 109 + OFFSET_X, 1, 2.63, 2.63 );
	setScaleKey( ATK_01 + 110 + OFFSET_X, 1, 1.84, 1.84 );
	setScaleKey( ATK_01 + 111 + OFFSET_X, 1, 1.84, 1.84 );
	setScaleKey( ATK_01 + 112 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 113 + OFFSET_X, 1, 1.5, 1.5 );
	setScaleKey( ATK_01 + 114 + OFFSET_X, 1, 1.26, 1.26 );
	setScaleKey( ATK_01 + 115 + OFFSET_X, 1, 1.26, 1.26 );
	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 117 + OFFSET_X, 1, 1.12, 1.12 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 0.99, 0.99 );
	setScaleKey( ATK_01 + 119 + OFFSET_X, 1, 0.99, 0.99 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 0.92, 0.92 );
	setScaleKey( ATK_01 + 121 + OFFSET_X, 1, 0.92, 0.92 );
	setScaleKey( ATK_01 + 122 + OFFSET_X, 1, 0.84, 0.84 );
	setScaleKey( ATK_01 + 123 + OFFSET_X, 1, 0.84, 0.84 );
	setScaleKey( ATK_01 + 124 + OFFSET_X, 1, 0.8, 0.8 );
	setScaleKey( ATK_01 + 125 + OFFSET_X, 1, 0.8, 0.8 );
	setScaleKey( ATK_01 + 126 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 127 + OFFSET_X, 1, 0.74, 0.74 );
	setScaleKey( ATK_01 + 128 + OFFSET_X, 1, 0.72, 0.72 );
	setScaleKey( ATK_01 + 129 + OFFSET_X, 1, 0.72, 0.72 );
	setScaleKey( ATK_01 + 130 + OFFSET_X, 1, 0.67, 0.67 );
	setScaleKey( ATK_01 + 131 + OFFSET_X, 1, 0.67, 0.67 );
	setScaleKey( ATK_01 + 132 + OFFSET_X, 1, 0.66, 0.66 );
	setScaleKey( ATK_01 + 133 + OFFSET_X, 1, 0.66, 0.66 );
	setScaleKey( ATK_01 + 134 + OFFSET_X, 1, 0.63, 0.63 );
	setScaleKey( ATK_01 + 135 + OFFSET_X, 1, 0.63, 0.63 );
	setScaleKey( ATK_01 + 136 + OFFSET_X, 1, 0.62, 0.62 );
	setScaleKey( ATK_01 + 137 + OFFSET_X, 1, 0.62, 0.62 );
	setScaleKey( ATK_01 + 138 + OFFSET_X, 1, 0.59, 0.59 );
	setScaleKey( ATK_01 + 141 + OFFSET_X, 1, 0.59, 0.59 );
	setScaleKey( ATK_01 + 142 + OFFSET_X, 1, 0.57, 0.57 );
	setScaleKey( ATK_01 + 145 + OFFSET_X, 1, 0.57, 0.57 );
	setScaleKey( ATK_01 + 146 + OFFSET_X, 1, 0.55, 0.55 );
	setScaleKey( ATK_01 + 149 + OFFSET_X, 1, 0.55, 0.55 );
	setScaleKey( ATK_01 + 150 + OFFSET_X, 1, 0.53, 0.53 );
	setScaleKey( ATK_01 + 153 + OFFSET_X, 1, 0.53, 0.53 );
	setScaleKey( ATK_01 + 154 + OFFSET_X, 1, 0.52, 0.52 );
	setScaleKey( ATK_01 + 157 + OFFSET_X, 1, 0.52, 0.52 );
	setScaleKey( ATK_01 + 158 + OFFSET_X, 1, 0.51, 0.51 );
	setScaleKey( ATK_01 + 161 + OFFSET_X, 1, 0.51, 0.51 );
	setScaleKey( ATK_01 + 162 + OFFSET_X, 1, 0.5, 0.5 );
	setScaleKey( ATK_01 + 163 + OFFSET_X, 1, 0.5, 0.5 );
	setScaleKey( ATK_01 + 164 + OFFSET_X, 1, 0.51, 0.51 );
	setScaleKey( ATK_01 + 165 + OFFSET_X, 1, 0.51, 0.51 );
	setScaleKey( ATK_01 + 166 + OFFSET_X, 1, 0.5, 0.5 );
	setScaleKey( ATK_01 + 169 + OFFSET_X, 1, 0.5, 0.5 );
	setScaleKey( ATK_01 + 170 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 173 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 174 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 175 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 176 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 177 + OFFSET_X, 1, 0.49, 0.49 );
	setScaleKey( ATK_01 + 178 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 181 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 182 + OFFSET_X, 1, 0.47, 0.47 );
	setScaleKey( ATK_01 + 183 + OFFSET_X, 1, 0.47, 0.47 );
	setScaleKey( ATK_01 + 184 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 186 + OFFSET_X, 1, 0.48, 0.48 );

	setRotateKey( ATK_01 + 0, 1, 28.1 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, 25.4 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, 25.4 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, 23.1 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, 23.1 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, 21.3 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, 21.3 );
	setRotateKey( ATK_01 + 8 + OFFSET_X, 1, 19.9 );
	setRotateKey( ATK_01 + 9 + OFFSET_X, 1, 19.9 );
	setRotateKey( ATK_01 + 10 + OFFSET_X, 1, 18.8 );
	setRotateKey( ATK_01 + 11 + OFFSET_X, 1, 18.8 );
	setRotateKey( ATK_01 + 12 + OFFSET_X, 1, 18.2 );
	setRotateKey( ATK_01 + 13 + OFFSET_X, 1, 18.2 );
	setRotateKey( ATK_01 + 14 + OFFSET_X, 1, 18 );
	setRotateKey( ATK_01 + 19 + OFFSET_X, 1, 18 );
	setRotateKey( ATK_01 + 20 + OFFSET_X, 1, -16.5 );
	setRotateKey( ATK_01 + 21 + OFFSET_X, 1, -16.5 );
	setRotateKey( ATK_01 + 22 + OFFSET_X, 1, -15.7 );
	setRotateKey( ATK_01 + 23 + OFFSET_X, 1, -15.7 );
	setRotateKey( ATK_01 + 24 + OFFSET_X, 1, -15 );
	setRotateKey( ATK_01 + 25 + OFFSET_X, 1, -15 );
	setRotateKey( ATK_01 + 26 + OFFSET_X, 1, -14.6 );
	setRotateKey( ATK_01 + 27 + OFFSET_X, 1, -14.6 );
	setRotateKey( ATK_01 + 28 + OFFSET_X, 1, -14.2 );
	setRotateKey( ATK_01 + 29 + OFFSET_X, 1, -14.2 );
	setRotateKey( ATK_01 + 30 + OFFSET_X, 1, -14 );
	setRotateKey( ATK_01 + 31 + OFFSET_X, 1, -14 );
	setRotateKey( ATK_01 + 32 + OFFSET_X, 1, -13.9 );
	setRotateKey( ATK_01 + 33 + OFFSET_X, 1, -13.9 );
	setRotateKey( ATK_01 + 34 + OFFSET_X, 1, 28.5 );
	setRotateKey( ATK_01 + 107 + OFFSET_X, 1, 28.5 );
	setRotateKey( ATK_01 + 108 + OFFSET_X, 1, 47 );
	setRotateKey( ATK_01 + 109 + OFFSET_X, 1, 47 );
	setRotateKey( ATK_01 + 110 + OFFSET_X, 1, 47.9 );
	setRotateKey( ATK_01 + 111 + OFFSET_X, 1, 47.9 );
	setRotateKey( ATK_01 + 112 + OFFSET_X, 1, 48.3 );
	setRotateKey( ATK_01 + 113 + OFFSET_X, 1, 48.3 );
	setRotateKey( ATK_01 + 114 + OFFSET_X, 1, 48.5 );
	setRotateKey( ATK_01 + 115 + OFFSET_X, 1, 48.5 );
	setRotateKey( ATK_01 + 116 + OFFSET_X, 1, 48.7 );
	setRotateKey( ATK_01 + 117 + OFFSET_X, 1, 48.7 );
	setRotateKey( ATK_01 + 118 + OFFSET_X, 1, 48.8 );
	setRotateKey( ATK_01 + 119 + OFFSET_X, 1, 48.8 );
	setRotateKey( ATK_01 + 120 + OFFSET_X, 1, 48.9 );
	setRotateKey( ATK_01 + 121 + OFFSET_X, 1, 48.9 );
	setRotateKey( ATK_01 + 122 + OFFSET_X, 1, 49 );
	setRotateKey( ATK_01 + 125 + OFFSET_X, 1, 49 );
	setRotateKey( ATK_01 + 126 + OFFSET_X, 1, 49.1 );
	setRotateKey( ATK_01 + 129 + OFFSET_X, 1, 49.1 );
	setRotateKey( ATK_01 + 130 + OFFSET_X, 1, 49.2 );
	setRotateKey( ATK_01 + 139 + OFFSET_X, 1, 49.2 );
	setRotateKey( ATK_01 + 140 + OFFSET_X, 1, 49.3 );
	setRotateKey( ATK_01 + 165 + OFFSET_X, 1, 49.3 );
	setRotateKey( ATK_01 + 166 + OFFSET_X, 1, 49.4 );
	setRotateKey( ATK_01 + 186 + OFFSET_X, 1, 49.4 );
	
end

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 10; --エンドフェイズのフレーム数を置き換える
	
	playSe( SP_dodge-10, 1042);
	
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
	setMoveKey(  SP_dodge+5, 0, 90, 80,    0);-- 中央位置から
	setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
	--setDisp( SP_dodge+5, 0, 0);
	
	endPhase(SP_dodge+10);
	do return end
	else end

-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( ATK_01 + 0, 1019, "",ATK_01 + 56, 0, 18, -1);

--殴る
SE002 = playSeVer2( ATK_01 + 2, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 2, SE002, 146 );
SE003 = playSeVer2( ATK_01 + 10, 1009, "", 0, 0, 0, -1);
SE004 = playSeVer2( ATK_01 + 10, 1000, "", 0, 0, 0, -1);

--蹴り飛ばす
SE005 = playSeVer2( ATK_01 + 28, 1010, "", 0, 0, 0, -1);
SE006 = playSeVer2( ATK_01 + 28, 1110, "", 0, 0, 0, -1);

--気弾溜め
SE007 = playSeVer2( ATK_01 + 42, 1296, "",ATK_01 + 88, 0, 14, -1);

--気弾発射
SE008 = playSeVer2( ATK_01 + 72, 1145, "", 0, 0, 0, -1);

--敵飛んでいく
SE009 = playSeVer2( ATK_01 + 96, 1121, "",ATK_01 + 220, 0, 76, -1);
setSeVolumeByWorkId( ATK_01 + 96, SE009, 71 );

--気弾飛んでいく
SE010 = playSeVer2( ATK_01 + 146, 1021, "", 0, 0, 0, -1);
SE011 = playSeVer2( ATK_01 + 146, 1202, "",ATK_01 + 204, 0, 16, 0.6);
setSeVolumeByWorkId( ATK_01 + 146, SE011, 166 );

--爆発
SE012 = playSeVer2( ATK_01 + 176, 1023, "", 0, 0, 0, -1);
SE013 = playSeVer2( ATK_01 + 182, 1011, "", 0, 0, 0, -1);


--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 178;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else
setDisp(ATK_01 + 186 + OFFSET_X, 1, 0);

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end

print ("[lua]exec bk0003");