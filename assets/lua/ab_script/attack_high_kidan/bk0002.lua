print ("[lua]exec bk0002");

ATK_01 = 0;
ATK_D = 208;
ATK_end = ATK_01+328;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, ATK_D, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, ATK_D, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=326

-- ** エフェクト等 ** --
if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 123, 0x100, -1, 0, 0, 0);  --味方側 ef_201

else
    effect_front = entryEffect( ATK_01 + 0, 126, 0x100, -1, 0, 0, 0);  --敵側 ef_201r

end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + 151, effect_front, 1.1, 1.1);
setEffScaleKey( ATK_01 + 154, effect_front, 1.1, 1.1);
setEffScaleKey( ATK_01 + 155, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

effect_back2 = entryEffect( ATK_01 + 0,124, 0x80, -1, 0, 0, 0); --ef_203
setEffMoveKey( ATK_01 + 0, effect_back2, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back2, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back2, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back2, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back2, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back2, 0);
setEffAlphaKey( ATK_01 + 0, effect_back2, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back2, 255);

-- 気弾エフェクト1(0x40)
kidan01 = entryEffect( ATK_01 + 64, 137, 0x40, 0, 100, 0, 0);  --ef302
setEffMoveKey(ATK_01 + 64, kidan01, -100, 0);
setEffMoveKey(ATK_01 + 76, kidan01, -100, 0);
setEffMoveKey(ATK_01 + 77, kidan01, 155, 45);
setEffMoveKey(ATK_01 + 78, kidan01, 0, 0);

--背景速度操作
if (_IS_PLAYER_SIDE_ == 1) then
	startBgScroll(ATK_01+0,-20,1);
	stopBgScroll(ATK_01+40,10);
	startBgScroll(ATK_01+41,-10,1);
	startBgScroll(ATK_01+84,-5,1);
	startBgScroll(ATK_01+94,-10,1);
	startBgScroll(ATK_01+104,-20,1);
	startBgScroll(ATK_01+120,-40,1);
	startBgScroll(ATK_01+207,-300,1);
	stopBgScroll(ATK_01+209,1);

else
	startBgScroll(ATK_01+0,-20,1);
	stopBgScroll(ATK_01+40,10);
	startBgScroll(ATK_01+84,-5,1);
	startBgScroll(ATK_01+94,-10,1);
	startBgScroll(ATK_01+104,-20,1);
	startBgScroll(ATK_01+120,-40,1);
	startBgScroll(ATK_01+207,-300,1);
	stopBgScroll(ATK_01+209,1);

end

--敵と味方のどちらが手前に来るか
setDrawFront( ATK_01+0, 0, 1);

--画面振動
setShakeXY(ATK_01 + 84 + OFFSET_X,6, 40, 20);
setShakeXY(ATK_01 + 90 + OFFSET_X,16, 30, 10);
setShakeXY(ATK_01 + 156 + OFFSET_X,8, 60, 20);
setShakeXY(ATK_01 + 164 + OFFSET_X,4, 30, 30);
setShakeXY(ATK_01 + 168 + OFFSET_X,4, 0, 40);
setShakeXY(ATK_01 + 172 + OFFSET_X,36, 30, 20);
setShakeXY(ATK_01 + 238 + OFFSET_X,6, 50, 20);
setShakeXY(ATK_01 + 244 + OFFSET_X,8, 40, 40);
setShakeXY(ATK_01 + 252 + OFFSET_X,12, 10, 30);
setShakeXY(ATK_01 + 280 + OFFSET_X,6, 20, 50);
setShakeXY(ATK_01 + 286 + OFFSET_X,6, 30, 40);
setShakeXY(ATK_01 + 292 + OFFSET_X,6, 10, 40);
setShakeXY(ATK_01 + 298 + OFFSET_X,16, 0, 60);
setShakeXY(ATK_01 + 314 + OFFSET_X,10, 10, 10);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------
setDisp(ATK_01 + 120 + OFFSET_X, 0, 0);

changeAnime( ATK_01 + 0 + OFFSET_X, 0, 17 );
changeAnimeAndStop( ATK_01 + 36 + OFFSET_X, 0, 19 ,3);
changeAnimeAndStop( ATK_01 + 78 + OFFSET_X, 0, 19 ,4);

setMoveKey( ATK_01 + 0, 0, -469.7, 140.4 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -411.4, 133.2 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -411.4, 133.2 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -358.3, 127 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -358.3, 127 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -309.6, 121.7 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -309.6, 121.7 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -264.8, 117.4 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 0, -264.8, 117.4 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 0, -223.5, 107.4 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 0, -223.5, 107.4 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 0, -185.2, 98.5 , 0 );
setMoveKey( ATK_01 + 13 + OFFSET_X, 0, -185.2, 98.5 , 0 );
setMoveKey( ATK_01 + 14 + OFFSET_X, 0, -149.6, 90.5 , 0 );
setMoveKey( ATK_01 + 15 + OFFSET_X, 0, -149.6, 90.5 , 0 );
setMoveKey( ATK_01 + 16 + OFFSET_X, 0, -116.2, 83.6 , 0 );
setMoveKey( ATK_01 + 17 + OFFSET_X, 0, -116.2, 83.6 , 0 );
setMoveKey( ATK_01 + 18 + OFFSET_X, 0, -93.8, 71.9 , 0 );
setMoveKey( ATK_01 + 19 + OFFSET_X, 0, -93.8, 71.9 , 0 );
setMoveKey( ATK_01 + 20 + OFFSET_X, 0, -73.2, 61.3 , 0 );
setMoveKey( ATK_01 + 21 + OFFSET_X, 0, -73.2, 61.3 , 0 );
setMoveKey( ATK_01 + 22 + OFFSET_X, 0, -54.4, 51.8 , 0 );
setMoveKey( ATK_01 + 23 + OFFSET_X, 0, -54.4, 51.8 , 0 );
setMoveKey( ATK_01 + 24 + OFFSET_X, 0, -37.1, 43.2 , 0 );
setMoveKey( ATK_01 + 25 + OFFSET_X, 0, -37.1, 43.2 , 0 );
setMoveKey( ATK_01 + 26 + OFFSET_X, 0, -16.9, 27.6 , 0 );
setMoveKey( ATK_01 + 27 + OFFSET_X, 0, -16.9, 27.6 , 0 );
setMoveKey( ATK_01 + 28 + OFFSET_X, 0, 0.8, 14.2 , 0 );
setMoveKey( ATK_01 + 29 + OFFSET_X, 0, 0.8, 14.2 , 0 );
setMoveKey( ATK_01 + 30 + OFFSET_X, 0, 15.2, 3.2 , 0 );
setMoveKey( ATK_01 + 31 + OFFSET_X, 0, 15.2, 3.2 , 0 );
setMoveKey( ATK_01 + 32 + OFFSET_X, 0, 25.4, -4.3 , 0 );
setMoveKey( ATK_01 + 33 + OFFSET_X, 0, 25.4, -4.3 , 0 );
setMoveKey( ATK_01 + 34 + OFFSET_X, 0, 30.1, -7.7 , 0 );
setMoveKey( ATK_01 + 35 + OFFSET_X, 0, 30.1, -7.7 , 0 );
setMoveKey( ATK_01 + 36 + OFFSET_X, 0, 30.9, -8.4 , 0 );
setMoveKey( ATK_01 + 37 + OFFSET_X, 0, 30.9, -8.4 , 0 );
setMoveKey( ATK_01 + 38 + OFFSET_X, 0, 30, -8.9 , 0 );
setMoveKey( ATK_01 + 39 + OFFSET_X, 0, 30, -8.9 , 0 );
setMoveKey( ATK_01 + 40 + OFFSET_X, 0, 26.3, -9.2 , 0 );
setMoveKey( ATK_01 + 41 + OFFSET_X, 0, 26.3, -9.2 , 0 );
setMoveKey( ATK_01 + 42 + OFFSET_X, 0, 19.1, -9.1 , 0 );
setMoveKey( ATK_01 + 43 + OFFSET_X, 0, 19.1, -9.1 , 0 );
setMoveKey( ATK_01 + 44 + OFFSET_X, 0, 5.7, -8.4 , 0 );
setMoveKey( ATK_01 + 45 + OFFSET_X, 0, 5.7, -8.4 , 0 );
setMoveKey( ATK_01 + 46 + OFFSET_X, 0, -15.2, -6.5 , 0 );
setMoveKey( ATK_01 + 47 + OFFSET_X, 0, -15.2, -6.5 , 0 );
setMoveKey( ATK_01 + 48 + OFFSET_X, 0, -36.8, -4 , 0 );
setMoveKey( ATK_01 + 49 + OFFSET_X, 0, -36.8, -4 , 0 );
setMoveKey( ATK_01 + 50 + OFFSET_X, 0, -54.8, -1.6 , 0 );
setMoveKey( ATK_01 + 51 + OFFSET_X, 0, -54.8, -1.6 , 0 );
setMoveKey( ATK_01 + 52 + OFFSET_X, 0, -68.2, 0.3 , 0 );
setMoveKey( ATK_01 + 53 + OFFSET_X, 0, -68.2, 0.3 , 0 );
setMoveKey( ATK_01 + 54 + OFFSET_X, 0, -76.4, 1.4 , 0 );
setMoveKey( ATK_01 + 55 + OFFSET_X, 0, -76.4, 1.4 , 0 );
setMoveKey( ATK_01 + 56 + OFFSET_X, 0, -79.4, 1.8 , 0 );
setMoveKey( ATK_01 + 57 + OFFSET_X, 0, -79.4, 1.8 , 0 );
setMoveKey( ATK_01 + 58 + OFFSET_X, 0, -80, 1.8 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 0, -80, 1.8 , 0 );
setMoveKey( ATK_01 + 81 + OFFSET_X, 0, -80, 1.8 , 0 );
setMoveKey( ATK_01 + 82 + OFFSET_X, 0, -80.5, 1.8 , 0 );
setMoveKey( ATK_01 + 83 + OFFSET_X, 0, -80.5, 1.8 , 0 );
setMoveKey( ATK_01 + 84 + OFFSET_X, 0, -81.8, 1.8 , 0 );
setMoveKey( ATK_01 + 85 + OFFSET_X, 0, -81.8, 1.8 , 0 );
setMoveKey( ATK_01 + 86 + OFFSET_X, 0, -84, 1.8 , 0 );
setMoveKey( ATK_01 + 87 + OFFSET_X, 0, -84, 1.8 , 0 );
setMoveKey( ATK_01 + 88 + OFFSET_X, 0, -87.1, 1.8 , 0 );
setMoveKey( ATK_01 + 89 + OFFSET_X, 0, -87.1, 1.8 , 0 );
setMoveKey( ATK_01 + 90 + OFFSET_X, 0, -91.1, 1.8 , 0 );
setMoveKey( ATK_01 + 91 + OFFSET_X, 0, -91.1, 1.8 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 0, -96, 1.8 , 0 );
setMoveKey( ATK_01 + 93 + OFFSET_X, 0, -96, 1.8 , 0 );
setMoveKey( ATK_01 + 94 + OFFSET_X, 0, -101.7, 1.8 , 0 );
setMoveKey( ATK_01 + 95 + OFFSET_X, 0, -101.7, 1.8 , 0 );
setMoveKey( ATK_01 + 96 + OFFSET_X, 0, -108.4, 1.8 , 0 );
setMoveKey( ATK_01 + 97 + OFFSET_X, 0, -108.4, 1.8 , 0 );
setMoveKey( ATK_01 + 98 + OFFSET_X, 0, -115.9, 1.8 , 0 );
setMoveKey( ATK_01 + 99 + OFFSET_X, 0, -115.9, 1.8 , 0 );
setMoveKey( ATK_01 + 100 + OFFSET_X, 0, -124.3, 1.8 , 0 );
setMoveKey( ATK_01 + 101 + OFFSET_X, 0, -124.3, 1.8 , 0 );
setMoveKey( ATK_01 + 102 + OFFSET_X, 0, -133.6, 1.8 , 0 );
setMoveKey( ATK_01 + 103 + OFFSET_X, 0, -133.6, 1.8 , 0 );
setMoveKey( ATK_01 + 104 + OFFSET_X, 0, -143.8, 1.8 , 0 );
setMoveKey( ATK_01 + 105 + OFFSET_X, 0, -143.8, 1.8 , 0 );
setMoveKey( ATK_01 + 106 + OFFSET_X, 0, -154.9, 1.8 , 0 );
setMoveKey( ATK_01 + 107 + OFFSET_X, 0, -154.9, 1.8 , 0 );
setMoveKey( ATK_01 + 108 + OFFSET_X, 0, -166.9, 1.8 , 0 );
setMoveKey( ATK_01 + 109 + OFFSET_X, 0, -166.9, 1.8 , 0 );
setMoveKey( ATK_01 + 110 + OFFSET_X, 0, -179.7, 1.8 , 0 );
setMoveKey( ATK_01 + 111 + OFFSET_X, 0, -179.7, 1.8 , 0 );
setMoveKey( ATK_01 + 112 + OFFSET_X, 0, -193.5, 1.8 , 0 );
setMoveKey( ATK_01 + 113 + OFFSET_X, 0, -193.5, 1.8 , 0 );
setMoveKey( ATK_01 + 114 + OFFSET_X, 0, -208.1, 1.8 , 0 );
setMoveKey( ATK_01 + 115 + OFFSET_X, 0, -208.1, 1.8 , 0 );
setMoveKey( ATK_01 + 116 + OFFSET_X, 0, -223.6, 1.8 , 0 );
setMoveKey( ATK_01 + 117 + OFFSET_X, 0, -223.6, 1.8 , 0 );
setMoveKey( ATK_01 + 118 + OFFSET_X, 0, -240, 1.8 , 0 );
setMoveKey( ATK_01 + 120 + OFFSET_X, 0, -240, 1.8 , 0 );
setMoveKey( ATK_01 + ATK_end -2, 0, 2000, 0 , 0 );

setScaleKey( ATK_01 + 0, 0, 0.23, 0.23 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 0.23, 0.23 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 0.23, 0.23 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 0.24, 0.24 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 0.24, 0.24 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 0.24, 0.24 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 0.24, 0.24 );
setScaleKey( ATK_01 + 9 + OFFSET_X, 0, 0.24, 0.24 );
setScaleKey( ATK_01 + 10 + OFFSET_X, 0, 0.25, 0.25 );
setScaleKey( ATK_01 + 13 + OFFSET_X, 0, 0.25, 0.25 );
setScaleKey( ATK_01 + 14 + OFFSET_X, 0, 0.26, 0.26 );
setScaleKey( ATK_01 + 15 + OFFSET_X, 0, 0.26, 0.26 );
setScaleKey( ATK_01 + 16 + OFFSET_X, 0, 0.27, 0.27 );
setScaleKey( ATK_01 + 17 + OFFSET_X, 0, 0.27, 0.27 );
setScaleKey( ATK_01 + 18 + OFFSET_X, 0, 0.28, 0.28 );
setScaleKey( ATK_01 + 19 + OFFSET_X, 0, 0.28, 0.28 );
setScaleKey( ATK_01 + 20 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 21 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 22 + OFFSET_X, 0, 0.32, 0.32 );
setScaleKey( ATK_01 + 23 + OFFSET_X, 0, 0.32, 0.32 );
setScaleKey( ATK_01 + 24 + OFFSET_X, 0, 0.34, 0.34 );
setScaleKey( ATK_01 + 25 + OFFSET_X, 0, 0.34, 0.34 );
setScaleKey( ATK_01 + 26 + OFFSET_X, 0, 0.36, 0.36 );
setScaleKey( ATK_01 + 27 + OFFSET_X, 0, 0.36, 0.36 );
setScaleKey( ATK_01 + 28 + OFFSET_X, 0, 0.39, 0.39 );
setScaleKey( ATK_01 + 29 + OFFSET_X, 0, 0.39, 0.39 );
setScaleKey( ATK_01 + 30 + OFFSET_X, 0, 0.42, 0.42 );
setScaleKey( ATK_01 + 31 + OFFSET_X, 0, 0.42, 0.42 );
setScaleKey( ATK_01 + 32 + OFFSET_X, 0, 0.46, 0.46 );
setScaleKey( ATK_01 + 33 + OFFSET_X, 0, 0.46, 0.46 );
setScaleKey( ATK_01 + 34 + OFFSET_X, 0, 0.5, 0.5 );
setScaleKey( ATK_01 + 35 + OFFSET_X, 0, 0.5, 0.5 );
setScaleKey( ATK_01 + 36 + OFFSET_X, 0, 0.56, 0.56 );
setScaleKey( ATK_01 + 37 + OFFSET_X, 0, 0.56, 0.56 );
setScaleKey( ATK_01 + 38 + OFFSET_X, 0, 0.63, 0.63 );
setScaleKey( ATK_01 + 39 + OFFSET_X, 0, 0.63, 0.63 );
setScaleKey( ATK_01 + 40 + OFFSET_X, 0, 0.72, 0.72 );
setScaleKey( ATK_01 + 41 + OFFSET_X, 0, 0.72, 0.72 );
setScaleKey( ATK_01 + 42 + OFFSET_X, 0, 0.84, 0.84 );
setScaleKey( ATK_01 + 43 + OFFSET_X, 0, 0.84, 0.84 );
setScaleKey( ATK_01 + 44 + OFFSET_X, 0, 1, 1 );
setScaleKey( ATK_01 + 45 + OFFSET_X, 0, 1, 1 );
setScaleKey( ATK_01 + 46 + OFFSET_X, 0, 1.17, 1.17 );
setScaleKey( ATK_01 + 47 + OFFSET_X, 0, 1.17, 1.17 );
setScaleKey( ATK_01 + 48 + OFFSET_X, 0, 1.3, 1.3 );
setScaleKey( ATK_01 + 49 + OFFSET_X, 0, 1.3, 1.3 );
setScaleKey( ATK_01 + 50 + OFFSET_X, 0, 1.38, 1.38 );
setScaleKey( ATK_01 + 51 + OFFSET_X, 0, 1.38, 1.38 );
setScaleKey( ATK_01 + 52 + OFFSET_X, 0, 1.42, 1.42 );
setScaleKey( ATK_01 + 53 + OFFSET_X, 0, 1.42, 1.42 );
setScaleKey( ATK_01 + 54 + OFFSET_X, 0, 1.44, 1.44 );
setScaleKey( ATK_01 + 55 + OFFSET_X, 0, 1.44, 1.44 );
setScaleKey( ATK_01 + 56 + OFFSET_X, 0, 1.46, 1.46 );
setScaleKey( ATK_01 + 120 + OFFSET_X, 0, 1.46, 1.46 );

setRotateKey( ATK_01 + 0, 0, 0 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 120 + OFFSET_X, 0, 0 );

-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

	setDisp( ATK_01 + 0, 1, 0 );
	setDisp( ATK_01 + 120 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + ATK_end -2, 1, 0 );
	
	changeAnime( ATK_01 + 120 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 234 + OFFSET_X, 1, 117 );
	
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, -826.4, -16.2 , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, -826.4, -16.2 , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, -743.8, -13.3 , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, -743.8, -13.3 , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, -667.4, -10.6 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, -667.4, -10.6 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, -597.1, -8.2 , 0 );
	setMoveKey( ATK_01 + 127 + OFFSET_X, 1, -597.1, -8.2 , 0 );
	setMoveKey( ATK_01 + 128 + OFFSET_X, 1, -532.9, -5.9 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, -532.9, -5.9 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, -474.9, -3.8 , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, -474.9, -3.8 , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, -423, -2 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, -423, -2 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, -377.2, -0.3 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, -377.2, -0.3 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, -337.5, 1.2 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, -337.5, 1.2 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, -303.9, 2.4 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, -303.9, 2.4 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, -276.4, 3.5 , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, -276.4, 3.5 , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, -255.1, 4.3 , 0 );
	setMoveKey( ATK_01 + 143 + OFFSET_X, 1, -255.1, 4.3 , 0 );
	setMoveKey( ATK_01 + 144 + OFFSET_X, 1, -239.9, 4.9 , 0 );
	setMoveKey( ATK_01 + 145 + OFFSET_X, 1, -239.9, 4.9 , 0 );
	setMoveKey( ATK_01 + 146 + OFFSET_X, 1, -230.9, 5.4 , 0 );
	setMoveKey( ATK_01 + 147 + OFFSET_X, 1, -230.9, 5.4 , 0 );
	setMoveKey( ATK_01 + 148 + OFFSET_X, 1, -227.9, 5.6 , 0 );
	setMoveKey( ATK_01 + 149 + OFFSET_X, 1, -227.9, 5.6 , 0 );
	setMoveKey( ATK_01 + 150 + OFFSET_X, 1, -228.1, 5.7 , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, -228.1, 5.7 , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, -228.3, 5.9 , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, -228.3, 5.9 , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, -228.5, 6 , 0 );
	setMoveKey( ATK_01 + 155 + OFFSET_X, 1, -228.5, 6 , 0 );
	setMoveKey( ATK_01 + 156 + OFFSET_X, 1, -67.4, 11.8 , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, -67.4, 11.8 , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, -65.2, 12 , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, -65.2, 12 , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, -58.2, 12.5 , 0 );
	setMoveKey( ATK_01 + 161 + OFFSET_X, 1, -58.2, 12.5 , 0 );
	setMoveKey( ATK_01 + 162 + OFFSET_X, 1, -46.6, 13.1 , 0 );
	setMoveKey( ATK_01 + 163 + OFFSET_X, 1, -46.6, 13.1 , 0 );
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, -30.2, 13.8 , 0 );
	setMoveKey( ATK_01 + 165 + OFFSET_X, 1, -30.2, 13.8 , 0 );
	setMoveKey( ATK_01 + 166 + OFFSET_X, 1, -9.2, 14.8 , 0 );
	setMoveKey( ATK_01 + 167 + OFFSET_X, 1, -9.2, 14.8 , 0 );
	setMoveKey( ATK_01 + 168 + OFFSET_X, 1, 16.6, 15.9 , 0 );
	setMoveKey( ATK_01 + 169 + OFFSET_X, 1, 16.6, 15.9 , 0 );
	setMoveKey( ATK_01 + 170 + OFFSET_X, 1, 47.2, 17.2 , 0 );
	setMoveKey( ATK_01 + 171 + OFFSET_X, 1, 47.2, 17.2 , 0 );
	setMoveKey( ATK_01 + 172 + OFFSET_X, 1, 82.6, 18.7 , 0 );
	setMoveKey( ATK_01 + 173 + OFFSET_X, 1, 82.6, 18.7 , 0 );
	setMoveKey( ATK_01 + 174 + OFFSET_X, 1, 122.8, 20.3 , 0 );
	setMoveKey( ATK_01 + 175 + OFFSET_X, 1, 122.8, 20.3 , 0 );
	setMoveKey( ATK_01 + 176 + OFFSET_X, 1, 167.8, 22.1 , 0 );
	setMoveKey( ATK_01 + 177 + OFFSET_X, 1, 167.8, 22.1 , 0 );
	setMoveKey( ATK_01 + 178 + OFFSET_X, 1, 217.7, 24.2 , 0 );
	setMoveKey( ATK_01 + 179 + OFFSET_X, 1, 217.7, 24.2 , 0 );
	setMoveKey( ATK_01 + 180 + OFFSET_X, 1, 272.5, 26.3 , 0 );
	setMoveKey( ATK_01 + 181 + OFFSET_X, 1, 272.5, 26.3 , 0 );
	setMoveKey( ATK_01 + 182 + OFFSET_X, 1, 332.2, 28.7 , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, 332.2, 28.7 , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, 396.9, 31.3 , 0 );
	setMoveKey( ATK_01 + 185 + OFFSET_X, 1, 396.9, 31.3 , 0 );
	setMoveKey( ATK_01 + 186 + OFFSET_X, 1, 466.6, 34 , 0 );
	setMoveKey( ATK_01 + 187 + OFFSET_X, 1, 466.6, 34 , 0 );
	setMoveKey( ATK_01 + 188 + OFFSET_X, 1, 541.3, 36.9 , 0 );
	setMoveKey( ATK_01 + 189 + OFFSET_X, 1, 541.3, 36.9 , 0 );
	setMoveKey( ATK_01 + 190 + OFFSET_X, 1, 621.1, 40 , 0 );
	setMoveKey( ATK_01 + 191 + OFFSET_X, 1, 621.1, 40 , 0 );
	setMoveKey( ATK_01 + 192 + OFFSET_X, 1, 706, 43.3 , 0 );
	setMoveKey( ATK_01 + 193 + OFFSET_X, 1, 706, 43.3 , 0 );
	setMoveKey( ATK_01 + 194 + OFFSET_X, 1, 796, 46.8 , 0 );
	setMoveKey( ATK_01 + 195 + OFFSET_X, 1, 796, 46.8 , 0 );
	setMoveKey( ATK_01 + 196 + OFFSET_X, 1, 891.3, 50.5 , 0 );
	setMoveKey( ATK_01 + 197 + OFFSET_X, 1, 891.3, 50.5 , 0 );
	setMoveKey( ATK_01 + 198 + OFFSET_X, 1, 991.7, 54.3 , 0 );
	setMoveKey( ATK_01 + 207 + OFFSET_X, 1, 991.7, 54.3 , 0 );
	setMoveKey( ATK_01 + 208 + OFFSET_X, 1, -51.3, -474.9 , 0 );
	setMoveKey( ATK_01 + 209 + OFFSET_X, 1, -51.3, -474.9 , 0 );
	setMoveKey( ATK_01 + 210 + OFFSET_X, 1, -8.5, -337.7 , 0 );
	setMoveKey( ATK_01 + 211 + OFFSET_X, 1, -8.5, -337.7 , 0 );
	setMoveKey( ATK_01 + 212 + OFFSET_X, 1, 30, -218.1 , 0 );
	setMoveKey( ATK_01 + 213 + OFFSET_X, 1, 30, -218.1 , 0 );
	setMoveKey( ATK_01 + 214 + OFFSET_X, 1, 63.9, -117.1 , 0 );
	setMoveKey( ATK_01 + 215 + OFFSET_X, 1, 63.9, -117.1 , 0 );
	setMoveKey( ATK_01 + 216 + OFFSET_X, 1, 93, -35.2 , 0 );
	setMoveKey( ATK_01 + 217 + OFFSET_X, 1, 93, -35.2 , 0 );
	setMoveKey( ATK_01 + 218 + OFFSET_X, 1, 117.4, 27 , 0 );
	setMoveKey( ATK_01 + 219 + OFFSET_X, 1, 117.4, 27 , 0 );
	setMoveKey( ATK_01 + 220 + OFFSET_X, 1, 115.9, 72.4 , 0 );
	setMoveKey( ATK_01 + 221 + OFFSET_X, 1, 115.9, 72.4 , 0 );
	setMoveKey( ATK_01 + 222 + OFFSET_X, 1, 113.8, 121.4 , 0 );
	setMoveKey( ATK_01 + 223 + OFFSET_X, 1, 113.8, 121.4 , 0 );
	setMoveKey( ATK_01 + 224 + OFFSET_X, 1, 122.9, 118.1 , 0 );
	setMoveKey( ATK_01 + 225 + OFFSET_X, 1, 122.9, 118.1 , 0 );
	setMoveKey( ATK_01 + 226 + OFFSET_X, 1, 103.5, 133.6 , 0 );
	setMoveKey( ATK_01 + 227 + OFFSET_X, 1, 103.5, 133.6 , 0 );
	setMoveKey( ATK_01 + 228 + OFFSET_X, 1, 112.6, 130.3 , 0 );
	setMoveKey( ATK_01 + 229 + OFFSET_X, 1, 112.6, 130.3 , 0 );
	setMoveKey( ATK_01 + 230 + OFFSET_X, 1, 90.4, 138.6 , 0 );
	setMoveKey( ATK_01 + 231 + OFFSET_X, 1, 90.4, 138.6 , 0 );
	setMoveKey( ATK_01 + 232 + OFFSET_X, 1, 99.3, 135.4 , 0 );
	setMoveKey( ATK_01 + 233 + OFFSET_X, 1, 99.3, 135.4 , 0 );
	setMoveKey( ATK_01 + 234 + OFFSET_X, 1, 105.1, 146.1 , 0 );
	setMoveKey( ATK_01 + 235 + OFFSET_X, 1, 105.1, 146.1 , 0 );
	setMoveKey( ATK_01 + 236 + OFFSET_X, 1, 91.6, 152.4 , 0 );
	setMoveKey( ATK_01 + 237 + OFFSET_X, 1, 91.6, 152.4 , 0 );
	setMoveKey( ATK_01 + 238 + OFFSET_X, 1, 81.1, 157.5 , 0 );
	setMoveKey( ATK_01 + 239 + OFFSET_X, 1, 81.1, 157.5 , 0 );
	setMoveKey( ATK_01 + 240 + OFFSET_X, 1, 73, 161.4 , 0 );
	setMoveKey( ATK_01 + 241 + OFFSET_X, 1, 73, 161.4 , 0 );
	setMoveKey( ATK_01 + 242 + OFFSET_X, 1, 67, 164.3 , 0 );
	setMoveKey( ATK_01 + 243 + OFFSET_X, 1, 67, 164.3 , 0 );
	setMoveKey( ATK_01 + 244 + OFFSET_X, 1, 62.7, 166.6 , 0 );
	setMoveKey( ATK_01 + 245 + OFFSET_X, 1, 62.7, 166.6 , 0 );
	setMoveKey( ATK_01 + 246 + OFFSET_X, 1, 59.7, 168.1 , 0 );
	setMoveKey( ATK_01 + 247 + OFFSET_X, 1, 59.7, 168.1 , 0 );
	setMoveKey( ATK_01 + 248 + OFFSET_X, 1, 58, 169.1 , 0 );
	setMoveKey( ATK_01 + 249 + OFFSET_X, 1, 58, 169.1 , 0 );
	setMoveKey( ATK_01 + 250 + OFFSET_X, 1, 57.3, 169.5 , 0 );
	setMoveKey( ATK_01 + 251 + OFFSET_X, 1, 57.3, 169.5 , 0 );
	setMoveKey( ATK_01 + 252 + OFFSET_X, 1, 57.4, 169.6 , 0 );
	setMoveKey( ATK_01 + 253 + OFFSET_X, 1, 57.4, 169.6 , 0 );
	setMoveKey( ATK_01 + 254 + OFFSET_X, 1, 58.2, 169.3 , 0 );
	setMoveKey( ATK_01 + 255 + OFFSET_X, 1, 58.2, 169.3 , 0 );
	setMoveKey( ATK_01 + 256 + OFFSET_X, 1, 59.5, 168.8 , 0 );
	setMoveKey( ATK_01 + 257 + OFFSET_X, 1, 59.5, 168.8 , 0 );
	setMoveKey( ATK_01 + 258 + OFFSET_X, 1, 61.3, 167.9 , 0 );
	setMoveKey( ATK_01 + 259 + OFFSET_X, 1, 61.3, 167.9 , 0 );
	setMoveKey( ATK_01 + 260 + OFFSET_X, 1, 63.4, 166.9 , 0 );
	setMoveKey( ATK_01 + 261 + OFFSET_X, 1, 63.4, 166.9 , 0 );
	setMoveKey( ATK_01 + 262 + OFFSET_X, 1, 65.8, 165.7 , 0 );
	setMoveKey( ATK_01 + 263 + OFFSET_X, 1, 65.8, 165.7 , 0 );
	setMoveKey( ATK_01 + 264 + OFFSET_X, 1, 68.5, 164.4 , 0 );
	setMoveKey( ATK_01 + 265 + OFFSET_X, 1, 68.5, 164.4 , 0 );
	setMoveKey( ATK_01 + 266 + OFFSET_X, 1, 71.2, 162.9 , 0 );
	setMoveKey( ATK_01 + 267 + OFFSET_X, 1, 71.2, 162.9 , 0 );
	setMoveKey( ATK_01 + 268 + OFFSET_X, 1, 73.9, 161.4 , 0 );
	setMoveKey( ATK_01 + 269 + OFFSET_X, 1, 73.9, 161.4 , 0 );
	setMoveKey( ATK_01 + 270 + OFFSET_X, 1, 76.7, 159.8 , 0 );
	setMoveKey( ATK_01 + 271 + OFFSET_X, 1, 76.7, 159.8 , 0 );
	setMoveKey( ATK_01 + 272 + OFFSET_X, 1, 79.3, 158.2 , 0 );
	setMoveKey( ATK_01 + 273 + OFFSET_X, 1, 79.3, 158.2 , 0 );
	setMoveKey( ATK_01 + 274 + OFFSET_X, 1, 81.8, 156.6 , 0 );
	setMoveKey( ATK_01 + 275 + OFFSET_X, 1, 81.8, 156.6 , 0 );
	setMoveKey( ATK_01 + 276 + OFFSET_X, 1, 84.1, 155 , 0 );
	setMoveKey( ATK_01 + 277 + OFFSET_X, 1, 84.1, 155 , 0 );
	setMoveKey( ATK_01 + 278 + OFFSET_X, 1, 86.2, 153.5 , 0 );
	setMoveKey( ATK_01 + 279 + OFFSET_X, 1, 86.2, 153.5 , 0 );
	setMoveKey( ATK_01 + 280 + OFFSET_X, 1, 87.8, 152 , 0 );
	setMoveKey( ATK_01 + 281 + OFFSET_X, 1, 87.8, 152 , 0 );
	setMoveKey( ATK_01 + 282 + OFFSET_X, 1, 89, 150.5 , 0 );
	setMoveKey( ATK_01 + 283 + OFFSET_X, 1, 89, 150.5 , 0 );
	setMoveKey( ATK_01 + 284 + OFFSET_X, 1, 89.7, 149.3 , 0 );
	setMoveKey( ATK_01 + 285 + OFFSET_X, 1, 89.7, 149.3 , 0 );
	setMoveKey( ATK_01 + 286 + OFFSET_X, 1, 89.8, 148.2 , 0 );
	setMoveKey( ATK_01 + 287 + OFFSET_X, 1, 89.8, 148.2 , 0 );
	setMoveKey( ATK_01 + 288 + OFFSET_X, 1, 89.3, 147.3 , 0 );
	setMoveKey( ATK_01 + 289 + OFFSET_X, 1, 89.3, 147.3 , 0 );
	setMoveKey( ATK_01 + 290 + OFFSET_X, 1, 88.3, 146.4 , 0 );
	setMoveKey( ATK_01 + 291 + OFFSET_X, 1, 88.3, 146.4 , 0 );
	setMoveKey( ATK_01 + 292 + OFFSET_X, 1, 87.5, 145.5 , 0 );
	setMoveKey( ATK_01 + 293 + OFFSET_X, 1, 87.5, 145.5 , 0 );
	setMoveKey( ATK_01 + 294 + OFFSET_X, 1, 86.7, 144.5 , 0 );
	setMoveKey( ATK_01 + 295 + OFFSET_X, 1, 86.7, 144.5 , 0 );
	setMoveKey( ATK_01 + 296 + OFFSET_X, 1, 86, 143.4 , 0 );
	setMoveKey( ATK_01 + 297 + OFFSET_X, 1, 86, 143.4 , 0 );
	setMoveKey( ATK_01 + 298 + OFFSET_X, 1, 85.3, 142.2 , 0 );
	setMoveKey( ATK_01 + 299 + OFFSET_X, 1, 85.3, 142.2 , 0 );
	setMoveKey( ATK_01 + 300 + OFFSET_X, 1, 84.8, 141 , 0 );
	setMoveKey( ATK_01 + 301 + OFFSET_X, 1, 84.8, 141 , 0 );
	setMoveKey( ATK_01 + 302 + OFFSET_X, 1, 84.3, 139.7 , 0 );
	setMoveKey( ATK_01 + 303 + OFFSET_X, 1, 84.3, 139.7 , 0 );
	setMoveKey( ATK_01 + 304 + OFFSET_X, 1, 83.8, 138.3 , 0 );
	setMoveKey( ATK_01 + 305 + OFFSET_X, 1, 83.8, 138.3 , 0 );
	setMoveKey( ATK_01 + 306 + OFFSET_X, 1, 83.3, 136.8 , 0 );
	setMoveKey( ATK_01 + 307 + OFFSET_X, 1, 83.3, 136.8 , 0 );
	setMoveKey( ATK_01 + 308 + OFFSET_X, 1, 82.9, 135.4 , 0 );
	setMoveKey( ATK_01 + 309 + OFFSET_X, 1, 82.9, 135.4 , 0 );
	setMoveKey( ATK_01 + 310 + OFFSET_X, 1, 82.5, 133.8 , 0 );
	setMoveKey( ATK_01 + 311 + OFFSET_X, 1, 82.5, 133.8 , 0 );
	setMoveKey( ATK_01 + 312 + OFFSET_X, 1, 82.1, 132.2 , 0 );
	setMoveKey( ATK_01 + 313 + OFFSET_X, 1, 82.1, 132.2 , 0 );
	setMoveKey( ATK_01 + 314 + OFFSET_X, 1, 81.7, 130.5 , 0 );
	setMoveKey( ATK_01 + 315 + OFFSET_X, 1, 81.7, 130.5 , 0 );
	setMoveKey( ATK_01 + 316 + OFFSET_X, 1, 81.4, 128.8 , 0 );
	setMoveKey( ATK_01 + 317 + OFFSET_X, 1, 81.4, 128.8 , 0 );
	setMoveKey( ATK_01 + 318 + OFFSET_X, 1, 81, 127.1 , 0 );
	setMoveKey( ATK_01 + 319 + OFFSET_X, 1, 81, 127.1 , 0 );
	setMoveKey( ATK_01 + 320 + OFFSET_X, 1, 80.7, 125.2 , 0 );
	setMoveKey( ATK_01 + 321 + OFFSET_X, 1, 80.7, 125.2 , 0 );
	setMoveKey( ATK_01 + 322 + OFFSET_X, 1, 80.4, 123.3 , 0 );
	setMoveKey( ATK_01 + 323 + OFFSET_X, 1, 80.4, 123.3 , 0 );
	setMoveKey( ATK_01 + 324 + OFFSET_X, 1, 80, 121.4 , 0 );
	setMoveKey( ATK_01 + 325 + OFFSET_X, 1, 80, 121.4 , 0 );
	setMoveKey( ATK_01 + 326 + OFFSET_X, 1, 79.7, 119.5 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 79.7, 119.5 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );
	
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 1.6, 1.6 );
	setScaleKey( ATK_01 + 141 + OFFSET_X, 1, 1.6, 1.6 );
	setScaleKey( ATK_01 + 142 + OFFSET_X, 1, 1.61, 1.61 );
	setScaleKey( ATK_01 + 157 + OFFSET_X, 1, 1.61, 1.61 );
	setScaleKey( ATK_01 + 158 + OFFSET_X, 1, 1.62, 1.62 );
	setScaleKey( ATK_01 + 169 + OFFSET_X, 1, 1.62, 1.62 );
	setScaleKey( ATK_01 + 170 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 177 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 178 + OFFSET_X, 1, 1.64, 1.64 );
	setScaleKey( ATK_01 + 185 + OFFSET_X, 1, 1.64, 1.64 );
	setScaleKey( ATK_01 + 186 + OFFSET_X, 1, 1.65, 1.65 );
	setScaleKey( ATK_01 + 191 + OFFSET_X, 1, 1.65, 1.65 );
	setScaleKey( ATK_01 + 192 + OFFSET_X, 1, 1.66, 1.66 );
	setScaleKey( ATK_01 + 197 + OFFSET_X, 1, 1.66, 1.66 );
	setScaleKey( ATK_01 + 198 + OFFSET_X, 1, 1.67, 1.67 );
	setScaleKey( ATK_01 + 207 + OFFSET_X, 1, 1.67, 1.67 );
	setScaleKey( ATK_01 + 208 + OFFSET_X, 1, 3.79, 3.79 );
	setScaleKey( ATK_01 + 209 + OFFSET_X, 1, 3.79, 3.79 );
	setScaleKey( ATK_01 + 210 + OFFSET_X, 1, 3.19, 3.19 );
	setScaleKey( ATK_01 + 211 + OFFSET_X, 1, 3.19, 3.19 );
	setScaleKey( ATK_01 + 212 + OFFSET_X, 1, 2.68, 2.68 );
	setScaleKey( ATK_01 + 213 + OFFSET_X, 1, 2.68, 2.68 );
	setScaleKey( ATK_01 + 214 + OFFSET_X, 1, 2.25, 2.25 );
	setScaleKey( ATK_01 + 215 + OFFSET_X, 1, 2.25, 2.25 );
	setScaleKey( ATK_01 + 216 + OFFSET_X, 1, 1.9, 1.9 );
	setScaleKey( ATK_01 + 217 + OFFSET_X, 1, 1.9, 1.9 );
	setScaleKey( ATK_01 + 218 + OFFSET_X, 1, 1.64, 1.64 );
	setScaleKey( ATK_01 + 219 + OFFSET_X, 1, 1.64, 1.64 );
	setScaleKey( ATK_01 + 220 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 221 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 222 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 225 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 226 + OFFSET_X, 1, 0.71, 0.71 );
	setScaleKey( ATK_01 + 229 + OFFSET_X, 1, 0.71, 0.71 );
	setScaleKey( ATK_01 + 230 + OFFSET_X, 1, 0.55, 0.55 );
	setScaleKey( ATK_01 + 233 + OFFSET_X, 1, 0.55, 0.55 );
	setScaleKey( ATK_01 + 234 + OFFSET_X, 1, 0.46, 0.46 );
	setScaleKey( ATK_01 + 235 + OFFSET_X, 1, 0.46, 0.46 );
	setScaleKey( ATK_01 + 236 + OFFSET_X, 1, 0.44, 0.44 );
	setScaleKey( ATK_01 + 237 + OFFSET_X, 1, 0.44, 0.44 );
	setScaleKey( ATK_01 + 238 + OFFSET_X, 1, 0.42, 0.42 );
	setScaleKey( ATK_01 + 239 + OFFSET_X, 1, 0.42, 0.42 );
	setScaleKey( ATK_01 + 240 + OFFSET_X, 1, 0.4, 0.4 );
	setScaleKey( ATK_01 + 241 + OFFSET_X, 1, 0.4, 0.4 );
	setScaleKey( ATK_01 + 242 + OFFSET_X, 1, 0.38, 0.38 );
	setScaleKey( ATK_01 + 243 + OFFSET_X, 1, 0.38, 0.38 );
	setScaleKey( ATK_01 + 244 + OFFSET_X, 1, 0.37, 0.37 );
	setScaleKey( ATK_01 + 245 + OFFSET_X, 1, 0.37, 0.37 );
	setScaleKey( ATK_01 + 246 + OFFSET_X, 1, 0.35, 0.35 );
	setScaleKey( ATK_01 + 247 + OFFSET_X, 1, 0.35, 0.35 );
	setScaleKey( ATK_01 + 248 + OFFSET_X, 1, 0.34, 0.34 );
	setScaleKey( ATK_01 + 249 + OFFSET_X, 1, 0.34, 0.34 );
	setScaleKey( ATK_01 + 250 + OFFSET_X, 1, 0.33, 0.33 );
	setScaleKey( ATK_01 + 251 + OFFSET_X, 1, 0.33, 0.33 );
	setScaleKey( ATK_01 + 252 + OFFSET_X, 1, 0.32, 0.32 );
	setScaleKey( ATK_01 + 255 + OFFSET_X, 1, 0.32, 0.32 );
	setScaleKey( ATK_01 + 256 + OFFSET_X, 1, 0.31, 0.31 );
	setScaleKey( ATK_01 + 257 + OFFSET_X, 1, 0.31, 0.31 );
	setScaleKey( ATK_01 + 258 + OFFSET_X, 1, 0.3, 0.3 );
	setScaleKey( ATK_01 + 261 + OFFSET_X, 1, 0.3, 0.3 );
	setScaleKey( ATK_01 + 262 + OFFSET_X, 1, 0.29, 0.29 );
	setScaleKey( ATK_01 + 267 + OFFSET_X, 1, 0.29, 0.29 );
	setScaleKey( ATK_01 + 268 + OFFSET_X, 1, 0.28, 0.28 );
	setScaleKey( ATK_01 + 273 + OFFSET_X, 1, 0.28, 0.28 );
	setScaleKey( ATK_01 + 274 + OFFSET_X, 1, 0.27, 0.27 );
	setScaleKey( ATK_01 + 287 + OFFSET_X, 1, 0.27, 0.27 );
	setScaleKey( ATK_01 + 288 + OFFSET_X, 1, 0.26, 0.26 );
	setScaleKey( ATK_01 + ATK_end, 1, 0.26, 0.26 );

	setRotateKey( ATK_01 + 120 + OFFSET_X, 1, -2 );
	setRotateKey( ATK_01 + ATK_end, 1, -2 );

else

	setDisp( ATK_01 + 0, 1, 0 );
	setDisp( ATK_01 + 120 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + ATK_end -2, 1, 0 );
	
	changeAnime( ATK_01 + 120 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 208 + OFFSET_X, 1, 108 );
	changeAnime( ATK_01 + 234 + OFFSET_X, 1, 105 );
	
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, -826.4, -16.2 , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, -826.4, -16.2 , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, -743.8, -13.3 , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, -743.8, -13.3 , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, -667.4, -10.6 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, -667.4, -10.6 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, -597.1, -8.2 , 0 );
	setMoveKey( ATK_01 + 127 + OFFSET_X, 1, -597.1, -8.2 , 0 );
	setMoveKey( ATK_01 + 128 + OFFSET_X, 1, -532.9, -5.9 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, -532.9, -5.9 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, -474.9, -3.8 , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, -474.9, -3.8 , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, -423, -2 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, -423, -2 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, -377.2, -0.3 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, -377.2, -0.3 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, -337.5, 1.2 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, -337.5, 1.2 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, -303.9, 2.4 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, -303.9, 2.4 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, -276.4, 3.5 , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, -276.4, 3.5 , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, -255.1, 4.3 , 0 );
	setMoveKey( ATK_01 + 143 + OFFSET_X, 1, -255.1, 4.3 , 0 );
	setMoveKey( ATK_01 + 144 + OFFSET_X, 1, -239.9, 4.9 , 0 );
	setMoveKey( ATK_01 + 145 + OFFSET_X, 1, -239.9, 4.9 , 0 );
	setMoveKey( ATK_01 + 146 + OFFSET_X, 1, -230.9, 5.4 , 0 );
	setMoveKey( ATK_01 + 147 + OFFSET_X, 1, -230.9, 5.4 , 0 );
	setMoveKey( ATK_01 + 148 + OFFSET_X, 1, -227.9, 5.6 , 0 );
	setMoveKey( ATK_01 + 149 + OFFSET_X, 1, -227.9, 5.6 , 0 );
	setMoveKey( ATK_01 + 150 + OFFSET_X, 1, -228.1, 5.7 , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, -228.1, 5.7 , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, -228.3, 5.9 , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, -228.3, 5.9 , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, -228.5, 6 , 0 );
	setMoveKey( ATK_01 + 155 + OFFSET_X, 1, -228.5, 6 , 0 );
	setMoveKey( ATK_01 + 156 + OFFSET_X, 1, -67.4, 11.8 , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, -67.4, 11.8 , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, -65.2, 12 , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, -65.2, 12 , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, -58.2, 12.5 , 0 );
	setMoveKey( ATK_01 + 161 + OFFSET_X, 1, -58.2, 12.5 , 0 );
	setMoveKey( ATK_01 + 162 + OFFSET_X, 1, -46.6, 13.1 , 0 );
	setMoveKey( ATK_01 + 163 + OFFSET_X, 1, -46.6, 13.1 , 0 );
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, -30.2, 13.8 , 0 );
	setMoveKey( ATK_01 + 165 + OFFSET_X, 1, -30.2, 13.8 , 0 );
	setMoveKey( ATK_01 + 166 + OFFSET_X, 1, -9.2, 14.8 , 0 );
	setMoveKey( ATK_01 + 167 + OFFSET_X, 1, -9.2, 14.8 , 0 );
	setMoveKey( ATK_01 + 168 + OFFSET_X, 1, 16.6, 15.9 , 0 );
	setMoveKey( ATK_01 + 169 + OFFSET_X, 1, 16.6, 15.9 , 0 );
	setMoveKey( ATK_01 + 170 + OFFSET_X, 1, 47.2, 17.2 , 0 );
	setMoveKey( ATK_01 + 171 + OFFSET_X, 1, 47.2, 17.2 , 0 );
	setMoveKey( ATK_01 + 172 + OFFSET_X, 1, 82.6, 18.7 , 0 );
	setMoveKey( ATK_01 + 173 + OFFSET_X, 1, 82.6, 18.7 , 0 );
	setMoveKey( ATK_01 + 174 + OFFSET_X, 1, 122.8, 20.3 , 0 );
	setMoveKey( ATK_01 + 175 + OFFSET_X, 1, 122.8, 20.3 , 0 );
	setMoveKey( ATK_01 + 176 + OFFSET_X, 1, 167.8, 22.1 , 0 );
	setMoveKey( ATK_01 + 177 + OFFSET_X, 1, 167.8, 22.1 , 0 );
	setMoveKey( ATK_01 + 178 + OFFSET_X, 1, 217.7, 24.2 , 0 );
	setMoveKey( ATK_01 + 179 + OFFSET_X, 1, 217.7, 24.2 , 0 );
	setMoveKey( ATK_01 + 180 + OFFSET_X, 1, 272.5, 26.3 , 0 );
	setMoveKey( ATK_01 + 181 + OFFSET_X, 1, 272.5, 26.3 , 0 );
	setMoveKey( ATK_01 + 182 + OFFSET_X, 1, 332.2, 28.7 , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, 332.2, 28.7 , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, 396.9, 31.3 , 0 );
	setMoveKey( ATK_01 + 185 + OFFSET_X, 1, 396.9, 31.3 , 0 );
	setMoveKey( ATK_01 + 186 + OFFSET_X, 1, 466.6, 34 , 0 );
	setMoveKey( ATK_01 + 187 + OFFSET_X, 1, 466.6, 34 , 0 );
	setMoveKey( ATK_01 + 188 + OFFSET_X, 1, 541.3, 36.9 , 0 );
	setMoveKey( ATK_01 + 189 + OFFSET_X, 1, 541.3, 36.9 , 0 );
	setMoveKey( ATK_01 + 190 + OFFSET_X, 1, 621.1, 40 , 0 );
	setMoveKey( ATK_01 + 191 + OFFSET_X, 1, 621.1, 40 , 0 );
	setMoveKey( ATK_01 + 192 + OFFSET_X, 1, 706, 43.3 , 0 );
	setMoveKey( ATK_01 + 193 + OFFSET_X, 1, 706, 43.3 , 0 );
	setMoveKey( ATK_01 + 194 + OFFSET_X, 1, 796, 46.8 , 0 );
	setMoveKey( ATK_01 + 195 + OFFSET_X, 1, 796, 46.8 , 0 );
	setMoveKey( ATK_01 + 196 + OFFSET_X, 1, 891.3, 50.5 , 0 );
	setMoveKey( ATK_01 + 197 + OFFSET_X, 1, 891.3, 50.5 , 0 );
	setMoveKey( ATK_01 + 198 + OFFSET_X, 1, 991.7, 54.3 , 0 );
	setMoveKey( ATK_01 + 207 + OFFSET_X, 1, 991.7, 54.3 , 0 );
	setMoveKey( ATK_01 + 208 + OFFSET_X, 1, -51.3, -474.9 , 0 );
	setMoveKey( ATK_01 + 209 + OFFSET_X, 1, -51.3, -474.9 , 0 );
	setMoveKey( ATK_01 + 210 + OFFSET_X, 1, -8.5, -337.7 , 0 );
	setMoveKey( ATK_01 + 211 + OFFSET_X, 1, -8.5, -337.7 , 0 );
	setMoveKey( ATK_01 + 212 + OFFSET_X, 1, 30, -218.1 , 0 );
	setMoveKey( ATK_01 + 213 + OFFSET_X, 1, 30, -218.1 , 0 );
	setMoveKey( ATK_01 + 214 + OFFSET_X, 1, 63.9, -117.1 , 0 );
	setMoveKey( ATK_01 + 215 + OFFSET_X, 1, 63.9, -117.1 , 0 );
	setMoveKey( ATK_01 + 216 + OFFSET_X, 1, 93, -35.2 , 0 );
	setMoveKey( ATK_01 + 217 + OFFSET_X, 1, 93, -35.2 , 0 );
	setMoveKey( ATK_01 + 218 + OFFSET_X, 1, 117.4, 27 , 0 );
	setMoveKey( ATK_01 + 219 + OFFSET_X, 1, 117.4, 27 , 0 );
	setMoveKey( ATK_01 + 220 + OFFSET_X, 1, 115.9, 72.4 , 0 );
	setMoveKey( ATK_01 + 221 + OFFSET_X, 1, 115.9, 72.4 , 0 );
	setMoveKey( ATK_01 + 222 + OFFSET_X, 1, 113.8, 121.4 , 0 );
	setMoveKey( ATK_01 + 223 + OFFSET_X, 1, 113.8, 121.4 , 0 );
	setMoveKey( ATK_01 + 224 + OFFSET_X, 1, 122.9, 118.1 , 0 );
	setMoveKey( ATK_01 + 225 + OFFSET_X, 1, 122.9, 118.1 , 0 );
	setMoveKey( ATK_01 + 226 + OFFSET_X, 1, 103.5, 133.6 , 0 );
	setMoveKey( ATK_01 + 227 + OFFSET_X, 1, 103.5, 133.6 , 0 );
	setMoveKey( ATK_01 + 228 + OFFSET_X, 1, 112.6, 130.3 , 0 );
	setMoveKey( ATK_01 + 229 + OFFSET_X, 1, 112.6, 130.3 , 0 );
	setMoveKey( ATK_01 + 230 + OFFSET_X, 1, 90.4, 138.6 , 0 );
	setMoveKey( ATK_01 + 231 + OFFSET_X, 1, 90.4, 138.6 , 0 );
	setMoveKey( ATK_01 + 232 + OFFSET_X, 1, 99.3, 135.4 , 0 );
	setMoveKey( ATK_01 + 233 + OFFSET_X, 1, 99.3, 135.4 , 0 );
	setMoveKey( ATK_01 + 234 + OFFSET_X, 1, 105.1, 146.1 , 0 );
	setMoveKey( ATK_01 + 235 + OFFSET_X, 1, 105.1, 146.1 , 0 );
	setMoveKey( ATK_01 + 236 + OFFSET_X, 1, 91.6, 152.4 , 0 );
	setMoveKey( ATK_01 + 237 + OFFSET_X, 1, 91.6, 152.4 , 0 );
	setMoveKey( ATK_01 + 238 + OFFSET_X, 1, 81.1, 157.5 , 0 );
	setMoveKey( ATK_01 + 239 + OFFSET_X, 1, 81.1, 157.5 , 0 );
	setMoveKey( ATK_01 + 240 + OFFSET_X, 1, 73, 161.4 , 0 );
	setMoveKey( ATK_01 + 241 + OFFSET_X, 1, 73, 161.4 , 0 );
	setMoveKey( ATK_01 + 242 + OFFSET_X, 1, 67, 164.3 , 0 );
	setMoveKey( ATK_01 + 243 + OFFSET_X, 1, 67, 164.3 , 0 );
	setMoveKey( ATK_01 + 244 + OFFSET_X, 1, 62.7, 166.6 , 0 );
	setMoveKey( ATK_01 + 245 + OFFSET_X, 1, 62.7, 166.6 , 0 );
	setMoveKey( ATK_01 + 246 + OFFSET_X, 1, 59.7, 168.1 , 0 );
	setMoveKey( ATK_01 + 247 + OFFSET_X, 1, 59.7, 168.1 , 0 );
	setMoveKey( ATK_01 + 248 + OFFSET_X, 1, 58, 169.1 , 0 );
	setMoveKey( ATK_01 + 249 + OFFSET_X, 1, 58, 169.1 , 0 );
	setMoveKey( ATK_01 + 250 + OFFSET_X, 1, 57.3, 169.5 , 0 );
	setMoveKey( ATK_01 + 251 + OFFSET_X, 1, 57.3, 169.5 , 0 );
	setMoveKey( ATK_01 + 252 + OFFSET_X, 1, 57.4, 169.6 , 0 );
	setMoveKey( ATK_01 + 253 + OFFSET_X, 1, 57.4, 169.6 , 0 );
	setMoveKey( ATK_01 + 254 + OFFSET_X, 1, 58.2, 169.3 , 0 );
	setMoveKey( ATK_01 + 255 + OFFSET_X, 1, 58.2, 169.3 , 0 );
	setMoveKey( ATK_01 + 256 + OFFSET_X, 1, 59.5, 168.8 , 0 );
	setMoveKey( ATK_01 + 257 + OFFSET_X, 1, 59.5, 168.8 , 0 );
	setMoveKey( ATK_01 + 258 + OFFSET_X, 1, 61.3, 167.9 , 0 );
	setMoveKey( ATK_01 + 259 + OFFSET_X, 1, 61.3, 167.9 , 0 );
	setMoveKey( ATK_01 + 260 + OFFSET_X, 1, 63.4, 166.9 , 0 );
	setMoveKey( ATK_01 + 261 + OFFSET_X, 1, 63.4, 166.9 , 0 );
	setMoveKey( ATK_01 + 262 + OFFSET_X, 1, 65.8, 165.7 , 0 );
	setMoveKey( ATK_01 + 263 + OFFSET_X, 1, 65.8, 165.7 , 0 );
	setMoveKey( ATK_01 + 264 + OFFSET_X, 1, 68.5, 164.4 , 0 );
	setMoveKey( ATK_01 + 265 + OFFSET_X, 1, 68.5, 164.4 , 0 );
	setMoveKey( ATK_01 + 266 + OFFSET_X, 1, 71.2, 162.9 , 0 );
	setMoveKey( ATK_01 + 267 + OFFSET_X, 1, 71.2, 162.9 , 0 );
	setMoveKey( ATK_01 + 268 + OFFSET_X, 1, 73.9, 161.4 , 0 );
	setMoveKey( ATK_01 + 269 + OFFSET_X, 1, 73.9, 161.4 , 0 );
	setMoveKey( ATK_01 + 270 + OFFSET_X, 1, 76.7, 159.8 , 0 );
	setMoveKey( ATK_01 + 271 + OFFSET_X, 1, 76.7, 159.8 , 0 );
	setMoveKey( ATK_01 + 272 + OFFSET_X, 1, 79.3, 158.2 , 0 );
	setMoveKey( ATK_01 + 273 + OFFSET_X, 1, 79.3, 158.2 , 0 );
	setMoveKey( ATK_01 + 274 + OFFSET_X, 1, 81.8, 156.6 , 0 );
	setMoveKey( ATK_01 + 275 + OFFSET_X, 1, 81.8, 156.6 , 0 );
	setMoveKey( ATK_01 + 276 + OFFSET_X, 1, 84.1, 155 , 0 );
	setMoveKey( ATK_01 + 277 + OFFSET_X, 1, 84.1, 155 , 0 );
	setMoveKey( ATK_01 + 278 + OFFSET_X, 1, 86.2, 153.5 , 0 );
	setMoveKey( ATK_01 + 279 + OFFSET_X, 1, 86.2, 153.5 , 0 );
	setMoveKey( ATK_01 + 280 + OFFSET_X, 1, 87.8, 152 , 0 );
	setMoveKey( ATK_01 + 281 + OFFSET_X, 1, 87.8, 152 , 0 );
	setMoveKey( ATK_01 + 282 + OFFSET_X, 1, 89, 150.5 , 0 );
	setMoveKey( ATK_01 + 283 + OFFSET_X, 1, 89, 150.5 , 0 );
	setMoveKey( ATK_01 + 284 + OFFSET_X, 1, 89.7, 149.3 , 0 );
	setMoveKey( ATK_01 + 285 + OFFSET_X, 1, 89.7, 149.3 , 0 );
	setMoveKey( ATK_01 + 286 + OFFSET_X, 1, 89.8, 148.2 , 0 );
	setMoveKey( ATK_01 + 287 + OFFSET_X, 1, 89.8, 148.2 , 0 );
	setMoveKey( ATK_01 + 288 + OFFSET_X, 1, 89.3, 147.3 , 0 );
	setMoveKey( ATK_01 + 289 + OFFSET_X, 1, 89.3, 147.3 , 0 );
	setMoveKey( ATK_01 + 290 + OFFSET_X, 1, 88.3, 146.4 , 0 );
	setMoveKey( ATK_01 + 291 + OFFSET_X, 1, 88.3, 146.4 , 0 );
	setMoveKey( ATK_01 + 292 + OFFSET_X, 1, 87.5, 145.5 , 0 );
	setMoveKey( ATK_01 + 293 + OFFSET_X, 1, 87.5, 145.5 , 0 );
	setMoveKey( ATK_01 + 294 + OFFSET_X, 1, 86.7, 144.5 , 0 );
	setMoveKey( ATK_01 + 295 + OFFSET_X, 1, 86.7, 144.5 , 0 );
	setMoveKey( ATK_01 + 296 + OFFSET_X, 1, 86, 143.4 , 0 );
	setMoveKey( ATK_01 + 297 + OFFSET_X, 1, 86, 143.4 , 0 );
	setMoveKey( ATK_01 + 298 + OFFSET_X, 1, 85.3, 142.2 , 0 );
	setMoveKey( ATK_01 + 299 + OFFSET_X, 1, 85.3, 142.2 , 0 );
	setMoveKey( ATK_01 + 300 + OFFSET_X, 1, 84.8, 141 , 0 );
	setMoveKey( ATK_01 + 301 + OFFSET_X, 1, 84.8, 141 , 0 );
	setMoveKey( ATK_01 + 302 + OFFSET_X, 1, 84.3, 139.7 , 0 );
	setMoveKey( ATK_01 + 303 + OFFSET_X, 1, 84.3, 139.7 , 0 );
	setMoveKey( ATK_01 + 304 + OFFSET_X, 1, 83.8, 138.3 , 0 );
	setMoveKey( ATK_01 + 305 + OFFSET_X, 1, 83.8, 138.3 , 0 );
	setMoveKey( ATK_01 + 306 + OFFSET_X, 1, 83.3, 136.8 , 0 );
	setMoveKey( ATK_01 + 307 + OFFSET_X, 1, 83.3, 136.8 , 0 );
	setMoveKey( ATK_01 + 308 + OFFSET_X, 1, 82.9, 135.4 , 0 );
	setMoveKey( ATK_01 + 309 + OFFSET_X, 1, 82.9, 135.4 , 0 );
	setMoveKey( ATK_01 + 310 + OFFSET_X, 1, 82.5, 133.8 , 0 );
	setMoveKey( ATK_01 + 311 + OFFSET_X, 1, 82.5, 133.8 , 0 );
	setMoveKey( ATK_01 + 312 + OFFSET_X, 1, 82.1, 132.2 , 0 );
	setMoveKey( ATK_01 + 313 + OFFSET_X, 1, 82.1, 132.2 , 0 );
	setMoveKey( ATK_01 + 314 + OFFSET_X, 1, 81.7, 130.5 , 0 );
	setMoveKey( ATK_01 + 315 + OFFSET_X, 1, 81.7, 130.5 , 0 );
	setMoveKey( ATK_01 + 316 + OFFSET_X, 1, 81.4, 128.8 , 0 );
	setMoveKey( ATK_01 + 317 + OFFSET_X, 1, 81.4, 128.8 , 0 );
	setMoveKey( ATK_01 + 318 + OFFSET_X, 1, 81, 127.1 , 0 );
	setMoveKey( ATK_01 + 319 + OFFSET_X, 1, 81, 127.1 , 0 );
	setMoveKey( ATK_01 + 320 + OFFSET_X, 1, 80.7, 125.2 , 0 );
	setMoveKey( ATK_01 + 321 + OFFSET_X, 1, 80.7, 125.2 , 0 );
	setMoveKey( ATK_01 + 322 + OFFSET_X, 1, 80.4, 123.3 , 0 );
	setMoveKey( ATK_01 + 323 + OFFSET_X, 1, 80.4, 123.3 , 0 );
	setMoveKey( ATK_01 + 324 + OFFSET_X, 1, 80, 121.4 , 0 );
	setMoveKey( ATK_01 + 325 + OFFSET_X, 1, 80, 121.4 , 0 );
	setMoveKey( ATK_01 + 326 + OFFSET_X, 1, 79.7, 119.5 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 79.7, 119.5 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 1.6, 1.6 );
	setScaleKey( ATK_01 + 141 + OFFSET_X, 1, 1.6, 1.6 );
	setScaleKey( ATK_01 + 142 + OFFSET_X, 1, 1.61, 1.61 );
	setScaleKey( ATK_01 + 157 + OFFSET_X, 1, 1.61, 1.61 );
	setScaleKey( ATK_01 + 158 + OFFSET_X, 1, 1.62, 1.62 );
	setScaleKey( ATK_01 + 169 + OFFSET_X, 1, 1.62, 1.62 );
	setScaleKey( ATK_01 + 170 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 177 + OFFSET_X, 1, 1.63, 1.63 );
	setScaleKey( ATK_01 + 178 + OFFSET_X, 1, 1.64, 1.64 );
	setScaleKey( ATK_01 + 185 + OFFSET_X, 1, 1.64, 1.64 );
	setScaleKey( ATK_01 + 186 + OFFSET_X, 1, 1.65, 1.65 );
	setScaleKey( ATK_01 + 191 + OFFSET_X, 1, 1.65, 1.65 );
	setScaleKey( ATK_01 + 192 + OFFSET_X, 1, 1.66, 1.66 );
	setScaleKey( ATK_01 + 197 + OFFSET_X, 1, 1.66, 1.66 );
	setScaleKey( ATK_01 + 198 + OFFSET_X, 1, 1.67, 1.67 );
	setScaleKey( ATK_01 + 207 + OFFSET_X, 1, 1.67, 1.67 );
	setScaleKey( ATK_01 + 208 + OFFSET_X, 1, 3.79, 3.79 );
	setScaleKey( ATK_01 + 209 + OFFSET_X, 1, 3.79, 3.79 );
	setScaleKey( ATK_01 + 210 + OFFSET_X, 1, 3.19, 3.19 );
	setScaleKey( ATK_01 + 211 + OFFSET_X, 1, 3.19, 3.19 );
	setScaleKey( ATK_01 + 212 + OFFSET_X, 1, 2.68, 2.68 );
	setScaleKey( ATK_01 + 213 + OFFSET_X, 1, 2.68, 2.68 );
	setScaleKey( ATK_01 + 214 + OFFSET_X, 1, 2.25, 2.25 );
	setScaleKey( ATK_01 + 215 + OFFSET_X, 1, 2.25, 2.25 );
	setScaleKey( ATK_01 + 216 + OFFSET_X, 1, 1.9, 1.9 );
	setScaleKey( ATK_01 + 217 + OFFSET_X, 1, 1.9, 1.9 );
	setScaleKey( ATK_01 + 218 + OFFSET_X, 1, 1.64, 1.64 );
	setScaleKey( ATK_01 + 219 + OFFSET_X, 1, 1.64, 1.64 );
	setScaleKey( ATK_01 + 220 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 221 + OFFSET_X, 1, 1.21, 1.21 );
	setScaleKey( ATK_01 + 222 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 225 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 226 + OFFSET_X, 1, 0.71, 0.71 );
	setScaleKey( ATK_01 + 229 + OFFSET_X, 1, 0.71, 0.71 );
	setScaleKey( ATK_01 + 230 + OFFSET_X, 1, 0.55, 0.55 );
	setScaleKey( ATK_01 + 233 + OFFSET_X, 1, 0.55, 0.55 );
	setScaleKey( ATK_01 + 234 + OFFSET_X, 1, 0.46, 0.46 );
	setScaleKey( ATK_01 + 235 + OFFSET_X, 1, 0.46, 0.46 );
	setScaleKey( ATK_01 + 236 + OFFSET_X, 1, 0.44, 0.44 );
	setScaleKey( ATK_01 + 237 + OFFSET_X, 1, 0.44, 0.44 );
	setScaleKey( ATK_01 + 238 + OFFSET_X, 1, 0.42, 0.42 );
	setScaleKey( ATK_01 + 239 + OFFSET_X, 1, 0.42, 0.42 );
	setScaleKey( ATK_01 + 240 + OFFSET_X, 1, 0.4, 0.4 );
	setScaleKey( ATK_01 + 241 + OFFSET_X, 1, 0.4, 0.4 );
	setScaleKey( ATK_01 + 242 + OFFSET_X, 1, 0.38, 0.38 );
	setScaleKey( ATK_01 + 243 + OFFSET_X, 1, 0.38, 0.38 );
	setScaleKey( ATK_01 + 244 + OFFSET_X, 1, 0.37, 0.37 );
	setScaleKey( ATK_01 + 245 + OFFSET_X, 1, 0.37, 0.37 );
	setScaleKey( ATK_01 + 246 + OFFSET_X, 1, 0.35, 0.35 );
	setScaleKey( ATK_01 + 247 + OFFSET_X, 1, 0.35, 0.35 );
	setScaleKey( ATK_01 + 248 + OFFSET_X, 1, 0.34, 0.34 );
	setScaleKey( ATK_01 + 249 + OFFSET_X, 1, 0.34, 0.34 );
	setScaleKey( ATK_01 + 250 + OFFSET_X, 1, 0.33, 0.33 );
	setScaleKey( ATK_01 + 251 + OFFSET_X, 1, 0.33, 0.33 );
	setScaleKey( ATK_01 + 252 + OFFSET_X, 1, 0.32, 0.32 );
	setScaleKey( ATK_01 + 255 + OFFSET_X, 1, 0.32, 0.32 );
	setScaleKey( ATK_01 + 256 + OFFSET_X, 1, 0.31, 0.31 );
	setScaleKey( ATK_01 + 257 + OFFSET_X, 1, 0.31, 0.31 );
	setScaleKey( ATK_01 + 258 + OFFSET_X, 1, 0.3, 0.3 );
	setScaleKey( ATK_01 + 261 + OFFSET_X, 1, 0.3, 0.3 );
	setScaleKey( ATK_01 + 262 + OFFSET_X, 1, 0.29, 0.29 );
	setScaleKey( ATK_01 + 267 + OFFSET_X, 1, 0.29, 0.29 );
	setScaleKey( ATK_01 + 268 + OFFSET_X, 1, 0.28, 0.28 );
	setScaleKey( ATK_01 + 273 + OFFSET_X, 1, 0.28, 0.28 );
	setScaleKey( ATK_01 + 274 + OFFSET_X, 1, 0.27, 0.27 );
	setScaleKey( ATK_01 + 287 + OFFSET_X, 1, 0.27, 0.27 );
	setScaleKey( ATK_01 + 288 + OFFSET_X, 1, 0.26, 0.26 );
	setScaleKey( ATK_01 + ATK_end, 1, 0.26, 0.26 );

	setRotateKey( ATK_01 + 120 + OFFSET_X, 1, -2 );
	setRotateKey( ATK_01 + 207 + OFFSET_X, 1, -2 );
	setRotateKey( ATK_01 + 208 + OFFSET_X, 1, -58.2 );
	setRotateKey( ATK_01 + 209 + OFFSET_X, 1, -58.2 );
	setRotateKey( ATK_01 + 210 + OFFSET_X, 1, -62.8 );
	setRotateKey( ATK_01 + 211 + OFFSET_X, 1, -62.8 );
	setRotateKey( ATK_01 + 212 + OFFSET_X, 1, -66.9 );
	setRotateKey( ATK_01 + 213 + OFFSET_X, 1, -66.9 );
	setRotateKey( ATK_01 + 214 + OFFSET_X, 1, -70.2 );
	setRotateKey( ATK_01 + 215 + OFFSET_X, 1, -70.2 );
	setRotateKey( ATK_01 + 216 + OFFSET_X, 1, -72.9 );
	setRotateKey( ATK_01 + 217 + OFFSET_X, 1, -72.9 );
	setRotateKey( ATK_01 + 218 + OFFSET_X, 1, -75 );
	setRotateKey( ATK_01 + 219 + OFFSET_X, 1, -75 );
	setRotateKey( ATK_01 + 220 + OFFSET_X, 1, -84.7 );
	setRotateKey( ATK_01 + 221 + OFFSET_X, 1, -84.7 );
	setRotateKey( ATK_01 + 222 + OFFSET_X, 1, -94.5 );
	setRotateKey( ATK_01 + 225 + OFFSET_X, 1, -94.5 );
	setRotateKey( ATK_01 + 226 + OFFSET_X, 1, -115 );
	setRotateKey( ATK_01 + 229 + OFFSET_X, 1, -115 );
	setRotateKey( ATK_01 + 230 + OFFSET_X, 1, -129.2 );
	setRotateKey( ATK_01 + 233 + OFFSET_X, 1, -129.2 );
	setRotateKey( ATK_01 + 234 + OFFSET_X, 1, -34.9 );
	setRotateKey( ATK_01 + 241 + OFFSET_X, 1, -34.9 );
	setRotateKey( ATK_01 + 242 + OFFSET_X, 1, -35 );
	setRotateKey( ATK_01 + 243 + OFFSET_X, 1, -35 );
	setRotateKey( ATK_01 + 244 + OFFSET_X, 1, -35.1 );
	setRotateKey( ATK_01 + 245 + OFFSET_X, 1, -35.1 );
	setRotateKey( ATK_01 + 246 + OFFSET_X, 1, -35.2 );
	setRotateKey( ATK_01 + 247 + OFFSET_X, 1, -35.2 );
	setRotateKey( ATK_01 + 248 + OFFSET_X, 1, -35.3 );
	setRotateKey( ATK_01 + 249 + OFFSET_X, 1, -35.3 );
	setRotateKey( ATK_01 + 250 + OFFSET_X, 1, -35.4 );
	setRotateKey( ATK_01 + 251 + OFFSET_X, 1, -35.4 );
	setRotateKey( ATK_01 + 252 + OFFSET_X, 1, -35.6 );
	setRotateKey( ATK_01 + 253 + OFFSET_X, 1, -35.6 );
	setRotateKey( ATK_01 + 254 + OFFSET_X, 1, -35.8 );
	setRotateKey( ATK_01 + 255 + OFFSET_X, 1, -35.8 );
	setRotateKey( ATK_01 + 256 + OFFSET_X, 1, -36 );
	setRotateKey( ATK_01 + 257 + OFFSET_X, 1, -36 );
	setRotateKey( ATK_01 + 258 + OFFSET_X, 1, -36.2 );
	setRotateKey( ATK_01 + 259 + OFFSET_X, 1, -36.2 );
	setRotateKey( ATK_01 + 260 + OFFSET_X, 1, -36.4 );
	setRotateKey( ATK_01 + 261 + OFFSET_X, 1, -36.4 );
	setRotateKey( ATK_01 + 262 + OFFSET_X, 1, -36.7 );
	setRotateKey( ATK_01 + 263 + OFFSET_X, 1, -36.7 );
	setRotateKey( ATK_01 + 264 + OFFSET_X, 1, -36.9 );
	setRotateKey( ATK_01 + 265 + OFFSET_X, 1, -36.9 );
	setRotateKey( ATK_01 + 266 + OFFSET_X, 1, -37.2 );
	setRotateKey( ATK_01 + 267 + OFFSET_X, 1, -37.2 );
	setRotateKey( ATK_01 + 268 + OFFSET_X, 1, -37.5 );
	setRotateKey( ATK_01 + 269 + OFFSET_X, 1, -37.5 );
	setRotateKey( ATK_01 + 270 + OFFSET_X, 1, -37.8 );
	setRotateKey( ATK_01 + 271 + OFFSET_X, 1, -37.8 );
	setRotateKey( ATK_01 + 272 + OFFSET_X, 1, -38.2 );
	setRotateKey( ATK_01 + 273 + OFFSET_X, 1, -38.2 );
	setRotateKey( ATK_01 + 274 + OFFSET_X, 1, -38.5 );
	setRotateKey( ATK_01 + 275 + OFFSET_X, 1, -38.5 );
	setRotateKey( ATK_01 + 276 + OFFSET_X, 1, -38.9 );
	setRotateKey( ATK_01 + 277 + OFFSET_X, 1, -38.9 );
	setRotateKey( ATK_01 + 278 + OFFSET_X, 1, -39.3 );
	setRotateKey( ATK_01 + 279 + OFFSET_X, 1, -39.3 );
	setRotateKey( ATK_01 + 280 + OFFSET_X, 1, -39.7 );
	setRotateKey( ATK_01 + 281 + OFFSET_X, 1, -39.7 );
	setRotateKey( ATK_01 + 282 + OFFSET_X, 1, -40.1 );
	setRotateKey( ATK_01 + 283 + OFFSET_X, 1, -40.1 );
	setRotateKey( ATK_01 + 284 + OFFSET_X, 1, -40.6 );
	setRotateKey( ATK_01 + 285 + OFFSET_X, 1, -40.6 );
	setRotateKey( ATK_01 + 286 + OFFSET_X, 1, -41 );
	setRotateKey( ATK_01 + 287 + OFFSET_X, 1, -41 );
	setRotateKey( ATK_01 + 288 + OFFSET_X, 1, -41.5 );
	setRotateKey( ATK_01 + 289 + OFFSET_X, 1, -41.5 );
	setRotateKey( ATK_01 + 290 + OFFSET_X, 1, -42 );
	setRotateKey( ATK_01 + 291 + OFFSET_X, 1, -42 );
	setRotateKey( ATK_01 + 292 + OFFSET_X, 1, -42.5 );
	setRotateKey( ATK_01 + 293 + OFFSET_X, 1, -42.5 );
	setRotateKey( ATK_01 + 294 + OFFSET_X, 1, -43.1 );
	setRotateKey( ATK_01 + 295 + OFFSET_X, 1, -43.1 );
	setRotateKey( ATK_01 + 296 + OFFSET_X, 1, -43.6 );
	setRotateKey( ATK_01 + 297 + OFFSET_X, 1, -43.6 );
	setRotateKey( ATK_01 + 298 + OFFSET_X, 1, -44.2 );
	setRotateKey( ATK_01 + 299 + OFFSET_X, 1, -44.2 );
	setRotateKey( ATK_01 + 300 + OFFSET_X, 1, -44.8 );
	setRotateKey( ATK_01 + 301 + OFFSET_X, 1, -44.8 );
	setRotateKey( ATK_01 + 302 + OFFSET_X, 1, -45.4 );
	setRotateKey( ATK_01 + 303 + OFFSET_X, 1, -45.4 );
	setRotateKey( ATK_01 + 304 + OFFSET_X, 1, -46.1 );
	setRotateKey( ATK_01 + 305 + OFFSET_X, 1, -46.1 );
	setRotateKey( ATK_01 + 306 + OFFSET_X, 1, -46.7 );
	setRotateKey( ATK_01 + 307 + OFFSET_X, 1, -46.7 );
	setRotateKey( ATK_01 + 308 + OFFSET_X, 1, -47.4 );
	setRotateKey( ATK_01 + 309 + OFFSET_X, 1, -47.4 );
	setRotateKey( ATK_01 + 310 + OFFSET_X, 1, -48.1 );
	setRotateKey( ATK_01 + 311 + OFFSET_X, 1, -48.1 );
	setRotateKey( ATK_01 + 312 + OFFSET_X, 1, -48.8 );
	setRotateKey( ATK_01 + 313 + OFFSET_X, 1, -48.8 );
	setRotateKey( ATK_01 + 314 + OFFSET_X, 1, -49.5 );
	setRotateKey( ATK_01 + 315 + OFFSET_X, 1, -49.5 );
	setRotateKey( ATK_01 + 316 + OFFSET_X, 1, -50.2 );
	setRotateKey( ATK_01 + 317 + OFFSET_X, 1, -50.2 );
	setRotateKey( ATK_01 + 318 + OFFSET_X, 1, -51 );
	setRotateKey( ATK_01 + 319 + OFFSET_X, 1, -51 );
	setRotateKey( ATK_01 + 320 + OFFSET_X, 1, -51.8 );
	setRotateKey( ATK_01 + 321 + OFFSET_X, 1, -51.8 );
	setRotateKey( ATK_01 + 322 + OFFSET_X, 1, -52.6 );
	setRotateKey( ATK_01 + 323 + OFFSET_X, 1, -52.6 );
	setRotateKey( ATK_01 + 324 + OFFSET_X, 1, -53.4 );
	setRotateKey( ATK_01 + 325 + OFFSET_X, 1, -53.4 );
	setRotateKey( ATK_01 + 326 + OFFSET_X, 1, -54.2 );	
	setRotateKey( ATK_01 + ATK_end, 1, -54.2 );

end

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 14; --エンドフェイズのフレーム数を置き換える
	
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
	setMoveKey(  SP_dodge+5, 0, 90, 80,    0);-- 中央位置から
	setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
	--setDisp( SP_dodge+5, 0, 0);
	
	endPhase(SP_dodge+10);
	do return end
	else end

-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( ATK_01 + 0, 1117, "", 0, 0, 0, -1);
SE002 = playSeVer2( ATK_01 + 0, 63, "",ATK_01 + 76, 0, 24, -1);

--気弾撃つ
SE003 = playSeVer2( ATK_01 + 70, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 70, SE003, 84 );
SE004 = playSeVer2( ATK_01 + 70, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 70, SE004, 79 );
SE005 = playSeVer2( ATK_01 + 70, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 70, SE005, 75 );

--気弾飛んでいく
SE006 = playSeVer2( ATK_01 + 146, 1011, "", 0, 0, 0, -1);
SE007 = playSeVer2( ATK_01 + 146, 1424, "", 0, 0, 0, -1);
setTimeStretch( SE007, 1.25, 30, 4 );
SE008 = playSeVer2( ATK_01 + 184, 1212, "",ATK_01 + 284, 30, 12, -1);
setSeVolumeByWorkId( ATK_01 + 184, SE008, 56 );
setStartTimeMs( SE008,  433 );
SE009 = playSeVer2( ATK_01 + 202, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( ATK_01 + 202, SE009, 172 );

--吹き飛ぶ
SE011 = playSeVer2( ATK_01 + 226, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 226, SE011, 50 );
SE012 = playSeVer2( ATK_01 + 226, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 226, SE012, 50 );

--地面に叩きつける音
SE010 = playSeVer2( ATK_01 + 266, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 266, SE010, 65 );


--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 180;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end

print ("[lua]exec bk0002");