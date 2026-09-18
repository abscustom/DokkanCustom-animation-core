print ("[lua]exec b0013");

ATK_01 = 0;
ATK_D = 114;
ATK_end = ATK_01+152;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, ATK_D, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, ATK_D, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=150

-- ** エフェクト等 ** --
effect_back = entryEffect( ATK_01 + 0,116, 0x100, -1, 0, 0, 0); --ef_172(中間)
setEffMoveKey( ATK_01 + 0, effect_back, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back, 0);
setEffAlphaKey( ATK_01 + 0, effect_back, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back, 255);

if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 115, 0x100, -1, 0, 0, 0);  --味方側 ef_171

else
    effect_front = entryEffect( ATK_01 + 0, 118, 0x100, -1, 0, 0, 0);  --敵側 ef_171r

end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

--背景速度操作
if (_IS_PLAYER_SIDE_ == 1) then
	setBgScroll(ATK_01+0, 0);
	startBgScroll(ATK_01+2,-30,1);
	startBgScroll(ATK_01+32,-50,1);
	stopBgScroll(ATK_01+60,10);
	startBgScroll(ATK_01+70,-40,20);
	stopBgScroll(ATK_01+100,20);
	startBgScroll(ATK_01+110,-20,1);
	stopBgScroll(ATK_01+130,30);

else
	setBgScroll(ATK_01+0, 0);
	startBgScroll(ATK_01+2,-30,1);
	startBgScroll(ATK_01+32,-50,1);
	stopBgScroll(ATK_01+60,10);
	startBgScroll(ATK_01+70,-40,20);
	stopBgScroll(ATK_01+100,20);
	startBgScroll(ATK_01+110,-20,1);
	stopBgScroll(ATK_01+130,30);

end

--敵と味方のどちらが手前に来るか
-- front : 前に描画する方
function setFront(flame,front) 
	if (front == 1) then
    	setDrawFront( flame, 0, 0);
    	setDrawFront( flame, 1, 1);
	else
    	setDrawFront( flame, 1, 0);
    	setDrawFront( flame, 0, 1);
	end
end

setDrawFront( ATK_01+0, 1, 1);
setFront(ATK_01+36 + OFFSET_X,0)
setFront(ATK_01+44 + OFFSET_X,1)
setFront(ATK_01+48 + OFFSET_X,0)
setFront(ATK_01+82 + OFFSET_X,1)
setFront(ATK_01+86 + OFFSET_X,0)
setFront(ATK_01+90 + OFFSET_X,1)
setFront(ATK_01+92 + OFFSET_X,0)
setFront(ATK_01+96 + OFFSET_X,1)
setFront(ATK_01+98 + OFFSET_X,0)
setFront(ATK_01+116 + OFFSET_X,1)

-----------------------------------------------------
--味方の動き
-----------------------------------------------------

setDisp( ATK_01 + 52 + OFFSET_X, 0, 0 );
setDisp( ATK_01 + 56 + OFFSET_X, 0, 1 );
setDisp( ATK_01 + 58 + OFFSET_X, 0, 0 );
setDisp( ATK_01 + 74 + OFFSET_X, 0, 1 );
setDisp( ATK_01 + 100 + OFFSET_X, 0, 0 );
setDisp( ATK_01 + 116 + OFFSET_X, 0, 1 );
setDisp( ATK_01 + ATK_end -2, 0, 0 );

changeAnime( ATK_01 + 0, 0, 116 );
changeAnime( ATK_01 + 32 + OFFSET_X, 0, 104 );
changeAnimeAndStop( ATK_01 + 36 + OFFSET_X, 0, 111 , 3);
changeAnime( ATK_01 + 40 + OFFSET_X, 0, 14 );
changeAnime( ATK_01 + 44 + OFFSET_X, 0, 12 );
changeAnimeAndStop( ATK_01 + 48 + OFFSET_X, 0, 11 , 3);
changeAnime( ATK_01 + 74 + OFFSET_X, 0, 114 );
changeAnimeAndStop( ATK_01 + 78 + OFFSET_X, 0, 111 , 3);
changeAnime( ATK_01 + 82 + OFFSET_X, 0, 104 );
changeAnimeAndStop( ATK_01 + 86 + OFFSET_X, 0, 111 , 3);
changeAnime( ATK_01 + 90 + OFFSET_X, 0, 104 );
changeAnime( ATK_01 + 92 + OFFSET_X, 0, 114 );
changeAnimeAndStop( ATK_01 + 94 + OFFSET_X, 0, 111 , 3);
changeAnime( ATK_01 + 96 + OFFSET_X, 0, 104 );
changeAnimeAndStop( ATK_01 + 98 + OFFSET_X, 0, 111 , 3);
changeAnime( ATK_01 + 116 + OFFSET_X, 0, 116 );

setMoveKey( ATK_01 + 0, 0, -243.9, -116.8 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -243.9, -116.8 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -243.9, -116.8 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -243.4, -116.8 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -243.4, -116.8 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -242.5, -116.9 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -242.5, -116.9 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -241, -117.1 , 0 );
setMoveKey( ATK_01 + 9 + OFFSET_X, 0, -241, -117.1 , 0 );
setMoveKey( ATK_01 + 10 + OFFSET_X, 0, -238.9, -117.2 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 0, -238.9, -117.2 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 0, -236.1, -117.4 , 0 );
setMoveKey( ATK_01 + 13 + OFFSET_X, 0, -236.1, -117.4 , 0 );
setMoveKey( ATK_01 + 14 + OFFSET_X, 0, -232.6, -117.4 , 0 );
setMoveKey( ATK_01 + 15 + OFFSET_X, 0, -232.6, -117.4 , 0 );
setMoveKey( ATK_01 + 16 + OFFSET_X, 0, -228, -117.3 , 0 );
setMoveKey( ATK_01 + 17 + OFFSET_X, 0, -228, -117.3 , 0 );
setMoveKey( ATK_01 + 18 + OFFSET_X, 0, -222.1, -116.8 , 0 );
setMoveKey( ATK_01 + 19 + OFFSET_X, 0, -222.1, -116.8 , 0 );
setMoveKey( ATK_01 + 20 + OFFSET_X, 0, -214.7, -115.7 , 0 );
setMoveKey( ATK_01 + 21 + OFFSET_X, 0, -214.7, -115.7 , 0 );
setMoveKey( ATK_01 + 22 + OFFSET_X, 0, -205, -113.3 , 0 );
setMoveKey( ATK_01 + 23 + OFFSET_X, 0, -205, -113.3 , 0 );
setMoveKey( ATK_01 + 24 + OFFSET_X, 0, -191.7, -108 , 0 );
setMoveKey( ATK_01 + 25 + OFFSET_X, 0, -191.7, -108 , 0 );
setMoveKey( ATK_01 + 26 + OFFSET_X, 0, -172, -95.6 , 0 );
setMoveKey( ATK_01 + 27 + OFFSET_X, 0, -172, -95.6 , 0 );
setMoveKey( ATK_01 + 28 + OFFSET_X, 0, -123.7, -30.1 , 0 );
setMoveKey( ATK_01 + 31 + OFFSET_X, 0, -123.7, -30.1 , 0 );
setMoveKey( ATK_01 + 32 + OFFSET_X, 0, 80.2, 10.1 , 0 );
setMoveKey( ATK_01 + 35 + OFFSET_X, 0, 80.2, 10.1 , 0 );
setMoveKey( ATK_01 + 36 + OFFSET_X, 0, 114.7, -42.4 , 0 );
setMoveKey( ATK_01 + 39 + OFFSET_X, 0, 114.7, -42.4 , 0 );
setMoveKey( ATK_01 + 40 + OFFSET_X, 0, -86.3, -27.5 , 0 );
setMoveKey( ATK_01 + 43 + OFFSET_X, 0, -86.3, -27.5 , 0 );
setMoveKey( ATK_01 + 44 + OFFSET_X, 0, 36, 6.6 , 0 );
setMoveKey( ATK_01 + 47 + OFFSET_X, 0, 36, 6.6 , 0 );
setMoveKey( ATK_01 + 48 + OFFSET_X, 0, -60, -25.9 , 0 );
setMoveKey( ATK_01 + 55 + OFFSET_X, 0, -60, -25.9 , 0 );
setMoveKey( ATK_01 + 56 + OFFSET_X, 0, -50.9, -12.1 , 0 );
setMoveKey( ATK_01 + 73 + OFFSET_X, 0, -50.9, -12.1 , 0 );
setMoveKey( ATK_01 + 74 + OFFSET_X, 0, -99.2, 117.7 , 0 );
setMoveKey( ATK_01 + 77 + OFFSET_X, 0, -99.2, 117.7 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 0, -99.1, 111.1 , 0 );
setMoveKey( ATK_01 + 91 + OFFSET_X, 0, -99.1, 111.1 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 0, -99.2, 117.7 , 0 );
setMoveKey( ATK_01 + 93 + OFFSET_X, 0, -99.2, 117.7 , 0 );
setMoveKey( ATK_01 + 94 + OFFSET_X, 0, -99.1, 111.1 , 0 );
setMoveKey( ATK_01 + 115 + OFFSET_X, 0, -99.1, 111.1 , 0 );
setMoveKey( ATK_01 + 116 + OFFSET_X, 0, -127.6, 129.8 , 0 );
setMoveKey( ATK_01 + 117 + OFFSET_X, 0, -127.6, 129.8 , 0 );
setMoveKey( ATK_01 + 118 + OFFSET_X, 0, -123.8, 126.5 , 0 );
setMoveKey( ATK_01 + 119 + OFFSET_X, 0, -123.8, 126.5 , 0 );
setMoveKey( ATK_01 + 120 + OFFSET_X, 0, -122.5, 125.4 , 0 );
setMoveKey( ATK_01 + 121 + OFFSET_X, 0, -122.5, 125.4 , 0 );
setMoveKey( ATK_01 + 122 + OFFSET_X, 0, -121.7, 124.8 , 0 );
setMoveKey( ATK_01 + 123 + OFFSET_X, 0, -121.7, 124.8 , 0 );
setMoveKey( ATK_01 + 124 + OFFSET_X, 0, -121.2, 124.3 , 0 );
setMoveKey( ATK_01 + 125 + OFFSET_X, 0, -121.2, 124.3 , 0 );
setMoveKey( ATK_01 + 126 + OFFSET_X, 0, -120.8, 123.9 , 0 );
setMoveKey( ATK_01 + 127 + OFFSET_X, 0, -120.8, 123.9 , 0 );
setMoveKey( ATK_01 + 128 + OFFSET_X, 0, -120.6, 123.7 , 0 );
setMoveKey( ATK_01 + 129 + OFFSET_X, 0, -120.6, 123.7 , 0 );
setMoveKey( ATK_01 + 130 + OFFSET_X, 0, -120.3, 123.5 , 0 );
setMoveKey( ATK_01 + 131 + OFFSET_X, 0, -120.3, 123.5 , 0 );
setMoveKey( ATK_01 + 132 + OFFSET_X, 0, -120.1, 123.4 , 0 );
setMoveKey( ATK_01 + 133 + OFFSET_X, 0, -120.1, 123.4 , 0 );
setMoveKey( ATK_01 + 134 + OFFSET_X, 0, -120.1, 123.3 , 0 );
setMoveKey( ATK_01 + 135 + OFFSET_X, 0, -120.1, 123.3 , 0 );
setMoveKey( ATK_01 + 136 + OFFSET_X, 0, -120, 123.2 , 0 );
setMoveKey( ATK_01 + 137 + OFFSET_X, 0, -120, 123.2 , 0 );
setMoveKey( ATK_01 + 138 + OFFSET_X, 0, -119.9, 123.2 , 0 );
setMoveKey( ATK_01 + ATK_end -3, 0, -119.9, 123.2 , 0 );
setMoveKey( ATK_01 + ATK_end -2, 0, 2000, 0 , 0 );

setScaleKey( ATK_01 + 0, 0, 0.29, 0.29 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 0.29, 0.29 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 0.29, 0.29 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 0.29, 0.29 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 0.29, 0.29 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 9 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 10 + OFFSET_X, 0, 0.31, 0.31 );
setScaleKey( ATK_01 + 11 + OFFSET_X, 0, 0.31, 0.31 );
setScaleKey( ATK_01 + 12 + OFFSET_X, 0, 0.33, 0.33 );
setScaleKey( ATK_01 + 13 + OFFSET_X, 0, 0.33, 0.33 );
setScaleKey( ATK_01 + 14 + OFFSET_X, 0, 0.35, 0.35 );
setScaleKey( ATK_01 + 15 + OFFSET_X, 0, 0.35, 0.35 );
setScaleKey( ATK_01 + 16 + OFFSET_X, 0, 0.37, 0.37 );
setScaleKey( ATK_01 + 17 + OFFSET_X, 0, 0.37, 0.37 );
setScaleKey( ATK_01 + 18 + OFFSET_X, 0, 0.4, 0.4 );
setScaleKey( ATK_01 + 19 + OFFSET_X, 0, 0.4, 0.4 );
setScaleKey( ATK_01 + 20 + OFFSET_X, 0, 0.44, 0.44 );
setScaleKey( ATK_01 + 21 + OFFSET_X, 0, 0.44, 0.44 );
setScaleKey( ATK_01 + 22 + OFFSET_X, 0, 0.48, 0.48 );
setScaleKey( ATK_01 + 23 + OFFSET_X, 0, 0.48, 0.48 );
setScaleKey( ATK_01 + 24 + OFFSET_X, 0, 0.55, 0.55 );
setScaleKey( ATK_01 + 25 + OFFSET_X, 0, 0.55, 0.55 );
setScaleKey( ATK_01 + 26 + OFFSET_X, 0, 0.65, 0.65 );
setScaleKey( ATK_01 + 27 + OFFSET_X, 0, 0.65, 0.65 );
setScaleKey( ATK_01 + 28 + OFFSET_X, 0, 0.89, 0.89 );
setScaleKey( ATK_01 + 31 + OFFSET_X, 0, 0.89, 0.89 );
setScaleKey( ATK_01 + 32 + OFFSET_X, 0, 1.68, 1.68 );
setScaleKey( ATK_01 + 35 + OFFSET_X, 0, 1.68, 1.68 );
setScaleKey( ATK_01 + 36 + OFFSET_X, 0, 1.78, 1.78 );
setScaleKey( ATK_01 + 39 + OFFSET_X, 0, 1.78, 1.78 );
setScaleKey( ATK_01 + 40 + OFFSET_X, 0, 1.82, 1.82 );
setScaleKey( ATK_01 + 43 + OFFSET_X, 0, 1.82, 1.82 );
setScaleKey( ATK_01 + 44 + OFFSET_X, 0, 1.8, 1.8 );
setScaleKey( ATK_01 + 47 + OFFSET_X, 0, 1.8, 1.8 );
setScaleKey( ATK_01 + 48 + OFFSET_X, 0, 1.99, 1.99 );
setScaleKey( ATK_01 + 73 + OFFSET_X, 0, 1.99, 1.99 );
setScaleKey( ATK_01 + 74 + OFFSET_X, 0, 0.4, 0.4 );
setScaleKey( ATK_01 + 115 + OFFSET_X, 0, 0.4, 0.4 );
setScaleKey( ATK_01 + 116 + OFFSET_X, 0, 0.27, 0.27 );
setScaleKey( ATK_01 + 117 + OFFSET_X, 0, 0.27, 0.27 );
setScaleKey( ATK_01 + 118 + OFFSET_X, 0, 0.29, 0.29 );
setScaleKey( ATK_01 + 119 + OFFSET_X, 0, 0.29, 0.29 );
setScaleKey( ATK_01 + 120 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 121 + OFFSET_X, 0, 0.3, 0.3 );
setScaleKey( ATK_01 + 122 + OFFSET_X, 0, 0.31, 0.31 );
setScaleKey( ATK_01 + 129 + OFFSET_X, 0, 0.31, 0.31 );
setScaleKey( ATK_01 + 130 + OFFSET_X, 0, 0.32, 0.32 );
setScaleKey( ATK_01 + ATK_end, 0, 0.32, 0.32 );

setRotateKey( ATK_01 + 0, 0, 0 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 31 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 32 + OFFSET_X, 0, -19.7 );
setRotateKey( ATK_01 + 35 + OFFSET_X, 0, -19.7 );
setRotateKey( ATK_01 + 36 + OFFSET_X, 0, 3 );
setRotateKey( ATK_01 + 43 + OFFSET_X, 0, 3 );
setRotateKey( ATK_01 + 44 + OFFSET_X, 0, -14.5 );
setRotateKey( ATK_01 + 47 + OFFSET_X, 0, -14.5 );
setRotateKey( ATK_01 + 48 + OFFSET_X, 0, -12.2 );
setRotateKey( ATK_01 + 73 + OFFSET_X, 0, -12.2 );
setRotateKey( ATK_01 + 74 + OFFSET_X, 0, 11.3 );
setRotateKey( ATK_01 + 115 + OFFSET_X, 0, 11.3 );
setRotateKey( ATK_01 + 116 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + ATK_end, 0, 0 );

-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

	setDisp( ATK_01 + 52 + OFFSET_X, 1, 0 );
	setDisp( ATK_01 + 56 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + 58 + OFFSET_X, 1, 0 );
	setDisp( ATK_01 + 74 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + 100 + OFFSET_X, 1, 0 );
	setDisp( ATK_01 + 116 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + ATK_end -2, 1, 0 );

	changeAnime( ATK_01 + 0, 1, 102 );
	changeAnimeAndStop( ATK_01 + 32 + OFFSET_X, 1, 11 , 3);
	changeAnime( ATK_01 + 36 + OFFSET_X, 1, 12 );
	changeAnime( ATK_01 + 40 + OFFSET_X, 1, 104 );
	changeAnimeAndStop( ATK_01 + 44 + OFFSET_X, 1, 111 , 3);
	changeAnime( ATK_01 + 48 + OFFSET_X, 1, 112 );
	changeAnime( ATK_01 + 74 + OFFSET_X, 1, 9 );
	changeAnime( ATK_01 + 78 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 82 + OFFSET_X, 1, 12 );
	changeAnime( ATK_01 + 86 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 90 + OFFSET_X, 1, 12 );
	changeAnime( ATK_01 + 92 + OFFSET_X, 1, 9 );
	changeAnime( ATK_01 + 94 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 96 + OFFSET_X, 1, 12 );
	changeAnime( ATK_01 + 98 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 116 + OFFSET_X, 1, 104 );

	setMoveKey( ATK_01 + 0, 1, 935.7, 438.5 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 935.4, 438.4 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 935.4, 438.4 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 933.8, 437.6 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 933.8, 437.6 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 929.7, 435.8 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 929.7, 435.8 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 922.4, 432.6 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 922.4, 432.6 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 910.8, 427.4 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, 910.8, 427.4 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, 894, 419.9 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, 894, 419.9 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, 870.7, 409.6 , 0 );
	setMoveKey( ATK_01 + 15 + OFFSET_X, 1, 870.7, 409.6 , 0 );
	setMoveKey( ATK_01 + 16 + OFFSET_X, 1, 839.4, 395.6 , 0 );
	setMoveKey( ATK_01 + 17 + OFFSET_X, 1, 839.4, 395.6 , 0 );
	setMoveKey( ATK_01 + 18 + OFFSET_X, 1, 798, 377.2 , 0 );
	setMoveKey( ATK_01 + 19 + OFFSET_X, 1, 798, 377.2 , 0 );
	setMoveKey( ATK_01 + 20 + OFFSET_X, 1, 743.1, 352.8 , 0 );
	setMoveKey( ATK_01 + 21 + OFFSET_X, 1, 743.1, 352.8 , 0 );
	setMoveKey( ATK_01 + 22 + OFFSET_X, 1, 669.7, 320.1 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, 669.7, 320.1 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, 568.3, 275 , 0 );
	setMoveKey( ATK_01 + 25 + OFFSET_X, 1, 568.3, 275 , 0 );
	setMoveKey( ATK_01 + 26 + OFFSET_X, 1, 417.3, 207.8 , 0 );
	setMoveKey( ATK_01 + 27 + OFFSET_X, 1, 417.3, 207.8 , 0 );
	setMoveKey( ATK_01 + 28 + OFFSET_X, 1, 113.4, 72.1 , 0 );
	setMoveKey( ATK_01 + 31 + OFFSET_X, 1, 113.4, 72.1 , 0 );
	setMoveKey( ATK_01 + 32 + OFFSET_X, 1, -68.8, -36 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, -68.8, -36 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, -47.9, -14.3 , 0 );
	setMoveKey( ATK_01 + 39 + OFFSET_X, 1, -47.9, -14.3 , 0 );
	setMoveKey( ATK_01 + 40 + OFFSET_X, 1, 79.7, 11.8 , 0 );
	setMoveKey( ATK_01 + 43 + OFFSET_X, 1, 79.7, 11.8 , 0 );
	setMoveKey( ATK_01 + 44 + OFFSET_X, 1, 112, 21.5 , 0 );
	setMoveKey( ATK_01 + 47 + OFFSET_X, 1, 112, 21.5 , 0 );
	setMoveKey( ATK_01 + 48 + OFFSET_X, 1, 89.8, -28.1 , 0 );
	setMoveKey( ATK_01 + 55 + OFFSET_X, 1, 89.8, -28.1 , 0 );
	setMoveKey( ATK_01 + 56 + OFFSET_X, 1, 108.4, -14.5 , 0 );
	setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 108.4, -14.5 , 0 );
	setMoveKey( ATK_01 + 74 + OFFSET_X, 1, -134.1, 120.6 , 0 );
	setMoveKey( ATK_01 + 77 + OFFSET_X, 1, -134.1, 120.6 , 0 );
	setMoveKey( ATK_01 + 78 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 81 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 82 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 85 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 86 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 89 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 91 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 92 + OFFSET_X, 1, -134.1, 120.6 , 0 );
	setMoveKey( ATK_01 + 93 + OFFSET_X, 1, -134.1, 120.6 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 95 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 96 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, -46.9, 85.8 , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, -46.9, 85.8 , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, -43.7, 84 , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, -43.7, 84 , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, -32.6, 78.3 , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, -32.6, 78.3 , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, -14.1, 68.7 , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, -14.1, 68.7 , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, 7.8, 57.3 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 7.8, 57.3 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 28.2, 46.7 , 0 );
	setMoveKey( ATK_01 + 127 + OFFSET_X, 1, 28.2, 46.7 , 0 );
	setMoveKey( ATK_01 + 128 + OFFSET_X, 1, 44.9, 38 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 44.9, 38 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 57.9, 31.3 , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 57.9, 31.3 , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 67.7, 26.2 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 67.7, 26.2 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 74.9, 22.4 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 74.9, 22.4 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 79.9, 19.8 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 79.9, 19.8 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 83.2, 18.1 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 83.2, 18.1 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 85.1, 17.1 , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 85.1, 17.1 , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 85.3, 16.7 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 85.3, 16.7 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 0, 1, 5.81, 5.81 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 5.81, 5.81 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 5.81, 5.81 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 5.8, 5.8 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 5.8, 5.8 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 5.78, 5.78 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 5.78, 5.78 );
	setScaleKey( ATK_01 + 8 + OFFSET_X, 1, 5.74, 5.74 );
	setScaleKey( ATK_01 + 9 + OFFSET_X, 1, 5.74, 5.74 );
	setScaleKey( ATK_01 + 10 + OFFSET_X, 1, 5.68, 5.68 );
	setScaleKey( ATK_01 + 11 + OFFSET_X, 1, 5.68, 5.68 );
	setScaleKey( ATK_01 + 12 + OFFSET_X, 1, 5.6, 5.6 );
	setScaleKey( ATK_01 + 13 + OFFSET_X, 1, 5.6, 5.6 );
	setScaleKey( ATK_01 + 14 + OFFSET_X, 1, 5.48, 5.48 );
	setScaleKey( ATK_01 + 15 + OFFSET_X, 1, 5.48, 5.48 );
	setScaleKey( ATK_01 + 16 + OFFSET_X, 1, 5.33, 5.33 );
	setScaleKey( ATK_01 + 17 + OFFSET_X, 1, 5.33, 5.33 );
	setScaleKey( ATK_01 + 18 + OFFSET_X, 1, 5.12, 5.12 );
	setScaleKey( ATK_01 + 19 + OFFSET_X, 1, 5.12, 5.12 );
	setScaleKey( ATK_01 + 20 + OFFSET_X, 1, 4.85, 4.85 );
	setScaleKey( ATK_01 + 21 + OFFSET_X, 1, 4.85, 4.85 );
	setScaleKey( ATK_01 + 22 + OFFSET_X, 1, 4.48, 4.48 );
	setScaleKey( ATK_01 + 23 + OFFSET_X, 1, 4.48, 4.48 );
	setScaleKey( ATK_01 + 24 + OFFSET_X, 1, 3.97, 3.97 );
	setScaleKey( ATK_01 + 25 + OFFSET_X, 1, 3.97, 3.97 );
	setScaleKey( ATK_01 + 26 + OFFSET_X, 1, 3.22, 3.22 );
	setScaleKey( ATK_01 + 27 + OFFSET_X, 1, 3.22, 3.22 );
	setScaleKey( ATK_01 + 28 + OFFSET_X, 1, 1.78, 1.78 );
	setScaleKey( ATK_01 + 31 + OFFSET_X, 1, 1.78, 1.78 );
	setScaleKey( ATK_01 + 32 + OFFSET_X, 1, 1.81, 1.81 );
	setScaleKey( ATK_01 + 35 + OFFSET_X, 1, 1.81, 1.81 );
	setScaleKey( ATK_01 + 36 + OFFSET_X, 1, 1.65, 1.65 );
	setScaleKey( ATK_01 + 39 + OFFSET_X, 1, 1.65, 1.65 );
	setScaleKey( ATK_01 + 40 + OFFSET_X, 1, 1.69, 1.69 );
	setScaleKey( ATK_01 + 43 + OFFSET_X, 1, 1.69, 1.69 );
	setScaleKey( ATK_01 + 44 + OFFSET_X, 1, 1.75, 1.75 );
	setScaleKey( ATK_01 + 47 + OFFSET_X, 1, 1.75, 1.75 );
	setScaleKey( ATK_01 + 48 + OFFSET_X, 1, 1.83, 1.83 );
	setScaleKey( ATK_01 + 73 + OFFSET_X, 1, 1.83, 1.83 );
	setScaleKey( ATK_01 + 74 + OFFSET_X, 1, 0.38, 0.38 );
	setScaleKey( ATK_01 + 115 + OFFSET_X, 1, 0.38, 0.38 );
	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 117 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 0.8, 0.8 );
	setScaleKey( ATK_01 + 119 + OFFSET_X, 1, 0.8, 0.8 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 0.82, 0.82 );
	setScaleKey( ATK_01 + 121 + OFFSET_X, 1, 0.82, 0.82 );
	setScaleKey( ATK_01 + 122 + OFFSET_X, 1, 0.86, 0.86 );
	setScaleKey( ATK_01 + 123 + OFFSET_X, 1, 0.86, 0.86 );
	setScaleKey( ATK_01 + 124 + OFFSET_X, 1, 0.91, 0.91 );
	setScaleKey( ATK_01 + 125 + OFFSET_X, 1, 0.91, 0.91 );
	setScaleKey( ATK_01 + 126 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 127 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 128 + OFFSET_X, 1, 0.98, 0.98 );
	setScaleKey( ATK_01 + 129 + OFFSET_X, 1, 0.98, 0.98 );
	setScaleKey( ATK_01 + 130 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 131 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 132 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 133 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 134 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 135 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 136 + OFFSET_X, 1, 1.06, 1.06 );
	setScaleKey( ATK_01 + 137 + OFFSET_X, 1, 1.06, 1.06 );
	setScaleKey( ATK_01 + 138 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + ATK_end, 1, 1.07, 1.07 );

	setRotateKey( ATK_01 + 0, 1, -12 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 35 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 36 + OFFSET_X, 1, 18 );
	setRotateKey( ATK_01 + 39 + OFFSET_X, 1, 18 );
	setRotateKey( ATK_01 + 40 + OFFSET_X, 1, -12.5 );
	setRotateKey( ATK_01 + 47 + OFFSET_X, 1, -12.5 );
	setRotateKey( ATK_01 + 48 + OFFSET_X, 1, 2.7 );
	setRotateKey( ATK_01 + 73 + OFFSET_X, 1, 2.7 );
	setRotateKey( ATK_01 + 74 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 81 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 82 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 85 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 86 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 89 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 90 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 91 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 92 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 95 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 96 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 97 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 98 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 115 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 116 + OFFSET_X, 1, 20 );
	setRotateKey( ATK_01 + ATK_end, 1, 20 );

else

	setDisp( ATK_01 + 52 + OFFSET_X, 1, 0 );
	setDisp( ATK_01 + 56 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + 58 + OFFSET_X, 1, 0 );
	setDisp( ATK_01 + 74 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + 100 + OFFSET_X, 1, 0 );
	setDisp( ATK_01 + 116 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + ATK_end -2, 1, 0 );

	changeAnime( ATK_01 + 0, 1, 102 );
	changeAnimeAndStop( ATK_01 + 32 + OFFSET_X, 1, 11 , 3);
	changeAnime( ATK_01 + 36 + OFFSET_X, 1, 12 );
	changeAnime( ATK_01 + 40 + OFFSET_X, 1, 104 );
	changeAnimeAndStop( ATK_01 + 44 + OFFSET_X, 1, 111 , 3);
	changeAnime( ATK_01 + 48 + OFFSET_X, 1, 112 );
	changeAnime( ATK_01 + 74 + OFFSET_X, 1, 9 );
	changeAnime( ATK_01 + 78 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 82 + OFFSET_X, 1, 12 );
	changeAnime( ATK_01 + 86 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 90 + OFFSET_X, 1, 12 );
	changeAnime( ATK_01 + 92 + OFFSET_X, 1, 9 );
	changeAnime( ATK_01 + 94 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 96 + OFFSET_X, 1, 12 );
	changeAnime( ATK_01 + 98 + OFFSET_X, 1, 10 );
	changeAnime( ATK_01 + 116 + OFFSET_X, 1, 107 );

	setMoveKey( ATK_01 + 0, 1, 935.7, 438.5 , 0 );
	setMoveKey( ATK_01 + 2 + OFFSET_X, 1, 935.4, 438.4 , 0 );
	setMoveKey( ATK_01 + 3 + OFFSET_X, 1, 935.4, 438.4 , 0 );
	setMoveKey( ATK_01 + 4 + OFFSET_X, 1, 933.8, 437.6 , 0 );
	setMoveKey( ATK_01 + 5 + OFFSET_X, 1, 933.8, 437.6 , 0 );
	setMoveKey( ATK_01 + 6 + OFFSET_X, 1, 929.7, 435.8 , 0 );
	setMoveKey( ATK_01 + 7 + OFFSET_X, 1, 929.7, 435.8 , 0 );
	setMoveKey( ATK_01 + 8 + OFFSET_X, 1, 922.4, 432.6 , 0 );
	setMoveKey( ATK_01 + 9 + OFFSET_X, 1, 922.4, 432.6 , 0 );
	setMoveKey( ATK_01 + 10 + OFFSET_X, 1, 910.8, 427.4 , 0 );
	setMoveKey( ATK_01 + 11 + OFFSET_X, 1, 910.8, 427.4 , 0 );
	setMoveKey( ATK_01 + 12 + OFFSET_X, 1, 894, 419.9 , 0 );
	setMoveKey( ATK_01 + 13 + OFFSET_X, 1, 894, 419.9 , 0 );
	setMoveKey( ATK_01 + 14 + OFFSET_X, 1, 870.7, 409.6 , 0 );
	setMoveKey( ATK_01 + 15 + OFFSET_X, 1, 870.7, 409.6 , 0 );
	setMoveKey( ATK_01 + 16 + OFFSET_X, 1, 839.4, 395.6 , 0 );
	setMoveKey( ATK_01 + 17 + OFFSET_X, 1, 839.4, 395.6 , 0 );
	setMoveKey( ATK_01 + 18 + OFFSET_X, 1, 798, 377.2 , 0 );
	setMoveKey( ATK_01 + 19 + OFFSET_X, 1, 798, 377.2 , 0 );
	setMoveKey( ATK_01 + 20 + OFFSET_X, 1, 743.1, 352.8 , 0 );
	setMoveKey( ATK_01 + 21 + OFFSET_X, 1, 743.1, 352.8 , 0 );
	setMoveKey( ATK_01 + 22 + OFFSET_X, 1, 669.7, 320.1 , 0 );
	setMoveKey( ATK_01 + 23 + OFFSET_X, 1, 669.7, 320.1 , 0 );
	setMoveKey( ATK_01 + 24 + OFFSET_X, 1, 568.3, 275 , 0 );
	setMoveKey( ATK_01 + 25 + OFFSET_X, 1, 568.3, 275 , 0 );
	setMoveKey( ATK_01 + 26 + OFFSET_X, 1, 417.3, 207.8 , 0 );
	setMoveKey( ATK_01 + 27 + OFFSET_X, 1, 417.3, 207.8 , 0 );
	setMoveKey( ATK_01 + 28 + OFFSET_X, 1, 113.4, 72.1 , 0 );
	setMoveKey( ATK_01 + 31 + OFFSET_X, 1, 113.4, 72.1 , 0 );
	setMoveKey( ATK_01 + 32 + OFFSET_X, 1, -68.8, -36 , 0 );
	setMoveKey( ATK_01 + 35 + OFFSET_X, 1, -68.8, -36 , 0 );
	setMoveKey( ATK_01 + 36 + OFFSET_X, 1, -47.9, -14.3 , 0 );
	setMoveKey( ATK_01 + 39 + OFFSET_X, 1, -47.9, -14.3 , 0 );
	setMoveKey( ATK_01 + 40 + OFFSET_X, 1, 79.7, 11.8 , 0 );
	setMoveKey( ATK_01 + 43 + OFFSET_X, 1, 79.7, 11.8 , 0 );
	setMoveKey( ATK_01 + 44 + OFFSET_X, 1, 112, 21.5 , 0 );
	setMoveKey( ATK_01 + 47 + OFFSET_X, 1, 112, 21.5 , 0 );
	setMoveKey( ATK_01 + 48 + OFFSET_X, 1, 89.8, -28.1 , 0 );
	setMoveKey( ATK_01 + 55 + OFFSET_X, 1, 89.8, -28.1 , 0 );
	setMoveKey( ATK_01 + 56 + OFFSET_X, 1, 108.4, -14.5 , 0 );
	setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 108.4, -14.5 , 0 );
	setMoveKey( ATK_01 + 74 + OFFSET_X, 1, -134.1, 120.6 , 0 );
	setMoveKey( ATK_01 + 77 + OFFSET_X, 1, -134.1, 120.6 , 0 );
	setMoveKey( ATK_01 + 78 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 81 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 82 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 85 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 86 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 89 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 91 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 92 + OFFSET_X, 1, -134.1, 120.6 , 0 );
	setMoveKey( ATK_01 + 93 + OFFSET_X, 1, -134.1, 120.6 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 95 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 96 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, -133.1, 131.6 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, -133, 130.5 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, -46.9, 85.8 , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, -46.9, 85.8 , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, -43.7, 84 , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, -43.7, 84 , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, -32.6, 78.3 , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, -32.6, 78.3 , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, -14.1, 68.7 , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, -14.1, 68.7 , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, 7.8, 57.3 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 7.8, 57.3 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 28.2, 46.7 , 0 );
	setMoveKey( ATK_01 + 127 + OFFSET_X, 1, 28.2, 46.7 , 0 );
	setMoveKey( ATK_01 + 128 + OFFSET_X, 1, 44.9, 38 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 44.9, 38 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 57.9, 31.3 , 0 );
	setMoveKey( ATK_01 + 131 + OFFSET_X, 1, 57.9, 31.3 , 0 );
	setMoveKey( ATK_01 + 132 + OFFSET_X, 1, 67.7, 26.2 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 67.7, 26.2 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 74.9, 22.4 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 74.9, 22.4 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 79.9, 19.8 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 79.9, 19.8 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 83.2, 18.1 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 83.2, 18.1 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 85.1, 17.1 , 0 );
	setMoveKey( ATK_01 + 141 + OFFSET_X, 1, 85.1, 17.1 , 0 );
	setMoveKey( ATK_01 + 142 + OFFSET_X, 1, 85.3, 16.7 , 0 );
	setMoveKey( ATK_01 + ATK_end -3, 1, 85.3, 16.7 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 0, 1, 5.81, 5.81 );
	setScaleKey( ATK_01 + 2 + OFFSET_X, 1, 5.81, 5.81 );
	setScaleKey( ATK_01 + 3 + OFFSET_X, 1, 5.81, 5.81 );
	setScaleKey( ATK_01 + 4 + OFFSET_X, 1, 5.8, 5.8 );
	setScaleKey( ATK_01 + 5 + OFFSET_X, 1, 5.8, 5.8 );
	setScaleKey( ATK_01 + 6 + OFFSET_X, 1, 5.78, 5.78 );
	setScaleKey( ATK_01 + 7 + OFFSET_X, 1, 5.78, 5.78 );
	setScaleKey( ATK_01 + 8 + OFFSET_X, 1, 5.74, 5.74 );
	setScaleKey( ATK_01 + 9 + OFFSET_X, 1, 5.74, 5.74 );
	setScaleKey( ATK_01 + 10 + OFFSET_X, 1, 5.68, 5.68 );
	setScaleKey( ATK_01 + 11 + OFFSET_X, 1, 5.68, 5.68 );
	setScaleKey( ATK_01 + 12 + OFFSET_X, 1, 5.6, 5.6 );
	setScaleKey( ATK_01 + 13 + OFFSET_X, 1, 5.6, 5.6 );
	setScaleKey( ATK_01 + 14 + OFFSET_X, 1, 5.48, 5.48 );
	setScaleKey( ATK_01 + 15 + OFFSET_X, 1, 5.48, 5.48 );
	setScaleKey( ATK_01 + 16 + OFFSET_X, 1, 5.33, 5.33 );
	setScaleKey( ATK_01 + 17 + OFFSET_X, 1, 5.33, 5.33 );
	setScaleKey( ATK_01 + 18 + OFFSET_X, 1, 5.12, 5.12 );
	setScaleKey( ATK_01 + 19 + OFFSET_X, 1, 5.12, 5.12 );
	setScaleKey( ATK_01 + 20 + OFFSET_X, 1, 4.85, 4.85 );
	setScaleKey( ATK_01 + 21 + OFFSET_X, 1, 4.85, 4.85 );
	setScaleKey( ATK_01 + 22 + OFFSET_X, 1, 4.48, 4.48 );
	setScaleKey( ATK_01 + 23 + OFFSET_X, 1, 4.48, 4.48 );
	setScaleKey( ATK_01 + 24 + OFFSET_X, 1, 3.97, 3.97 );
	setScaleKey( ATK_01 + 25 + OFFSET_X, 1, 3.97, 3.97 );
	setScaleKey( ATK_01 + 26 + OFFSET_X, 1, 3.22, 3.22 );
	setScaleKey( ATK_01 + 27 + OFFSET_X, 1, 3.22, 3.22 );
	setScaleKey( ATK_01 + 28 + OFFSET_X, 1, 1.78, 1.78 );
	setScaleKey( ATK_01 + 31 + OFFSET_X, 1, 1.78, 1.78 );
	setScaleKey( ATK_01 + 32 + OFFSET_X, 1, 1.81, 1.81 );
	setScaleKey( ATK_01 + 35 + OFFSET_X, 1, 1.81, 1.81 );
	setScaleKey( ATK_01 + 36 + OFFSET_X, 1, 1.65, 1.65 );
	setScaleKey( ATK_01 + 39 + OFFSET_X, 1, 1.65, 1.65 );
	setScaleKey( ATK_01 + 40 + OFFSET_X, 1, 1.69, 1.69 );
	setScaleKey( ATK_01 + 43 + OFFSET_X, 1, 1.69, 1.69 );
	setScaleKey( ATK_01 + 44 + OFFSET_X, 1, 1.75, 1.75 );
	setScaleKey( ATK_01 + 47 + OFFSET_X, 1, 1.75, 1.75 );
	setScaleKey( ATK_01 + 48 + OFFSET_X, 1, 1.83, 1.83 );
	setScaleKey( ATK_01 + 73 + OFFSET_X, 1, 1.83, 1.83 );
	setScaleKey( ATK_01 + 74 + OFFSET_X, 1, 0.38, 0.38 );
	setScaleKey( ATK_01 + 115 + OFFSET_X, 1, 0.38, 0.38 );
	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 0.29, 0.29 );
	setScaleKey( ATK_01 + 117 + OFFSET_X, 1, 0.29, 0.29 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 0.3, 0.3 );
	setScaleKey( ATK_01 + 119 + OFFSET_X, 1, 0.3, 0.3 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 0.32, 0.32 );
	setScaleKey( ATK_01 + 121 + OFFSET_X, 1, 0.32, 0.32 );
	setScaleKey( ATK_01 + 122 + OFFSET_X, 1, 0.36, 0.36 );
	setScaleKey( ATK_01 + 123 + OFFSET_X, 1, 0.36, 0.36 );
	setScaleKey( ATK_01 + 124 + OFFSET_X, 1, 0.41, 0.41 );
	setScaleKey( ATK_01 + 125 + OFFSET_X, 1, 0.41, 0.41 );
	setScaleKey( ATK_01 + 126 + OFFSET_X, 1, 0.45, 0.45 );
	setScaleKey( ATK_01 + 127 + OFFSET_X, 1, 0.45, 0.45 );
	setScaleKey( ATK_01 + 128 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 129 + OFFSET_X, 1, 0.48, 0.48 );
	setScaleKey( ATK_01 + 130 + OFFSET_X, 1, 0.51, 0.51 );
	setScaleKey( ATK_01 + 131 + OFFSET_X, 1, 0.51, 0.51 );
	setScaleKey( ATK_01 + 132 + OFFSET_X, 1, 0.53, 0.53 );
	setScaleKey( ATK_01 + 133 + OFFSET_X, 1, 0.53, 0.53 );
	setScaleKey( ATK_01 + 134 + OFFSET_X, 1, 0.55, 0.55 );
	setScaleKey( ATK_01 + 135 + OFFSET_X, 1, 0.55, 0.55 );
	setScaleKey( ATK_01 + 136 + OFFSET_X, 1, 0.56, 0.56 );
	setScaleKey( ATK_01 + 137 + OFFSET_X, 1, 0.56, 0.56 );
	setScaleKey( ATK_01 + 138 + OFFSET_X, 1, 0.57, 0.57 );
	setScaleKey( ATK_01 + ATK_end, 1, 0.57, 0.57 );

	setScaleKey( ATK_01 + 116 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 117 + OFFSET_X, 1, 0.79, 0.79 );
	setScaleKey( ATK_01 + 118 + OFFSET_X, 1, 0.8, 0.8 );
	setScaleKey( ATK_01 + 119 + OFFSET_X, 1, 0.8, 0.8 );
	setScaleKey( ATK_01 + 120 + OFFSET_X, 1, 0.82, 0.82 );
	setScaleKey( ATK_01 + 121 + OFFSET_X, 1, 0.82, 0.82 );
	setScaleKey( ATK_01 + 122 + OFFSET_X, 1, 0.86, 0.86 );
	setScaleKey( ATK_01 + 123 + OFFSET_X, 1, 0.86, 0.86 );
	setScaleKey( ATK_01 + 124 + OFFSET_X, 1, 0.91, 0.91 );
	setScaleKey( ATK_01 + 125 + OFFSET_X, 1, 0.91, 0.91 );
	setScaleKey( ATK_01 + 126 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 127 + OFFSET_X, 1, 0.95, 0.95 );
	setScaleKey( ATK_01 + 128 + OFFSET_X, 1, 0.98, 0.98 );
	setScaleKey( ATK_01 + 129 + OFFSET_X, 1, 0.98, 0.98 );
	setScaleKey( ATK_01 + 130 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 131 + OFFSET_X, 1, 1.01, 1.01 );
	setScaleKey( ATK_01 + 132 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 133 + OFFSET_X, 1, 1.03, 1.03 );
	setScaleKey( ATK_01 + 134 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 135 + OFFSET_X, 1, 1.05, 1.05 );
	setScaleKey( ATK_01 + 136 + OFFSET_X, 1, 1.06, 1.06 );
	setScaleKey( ATK_01 + 137 + OFFSET_X, 1, 1.06, 1.06 );
	setScaleKey( ATK_01 + 138 + OFFSET_X, 1, 1.07, 1.07 );
	setScaleKey( ATK_01 + ATK_end, 1, 1.07, 1.07 );

	setRotateKey( ATK_01 + 0, 1, -12 );
	setRotateKey( ATK_01 + 2 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 3 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 4 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 5 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 6 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 7 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 35 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 36 + OFFSET_X, 1, 18 );
	setRotateKey( ATK_01 + 39 + OFFSET_X, 1, 18 );
	setRotateKey( ATK_01 + 40 + OFFSET_X, 1, -12.5 );
	setRotateKey( ATK_01 + 47 + OFFSET_X, 1, -12.5 );
	setRotateKey( ATK_01 + 48 + OFFSET_X, 1, 2.7 );
	setRotateKey( ATK_01 + 73 + OFFSET_X, 1, 2.7 );
	setRotateKey( ATK_01 + 74 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 81 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 82 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 85 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 86 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 89 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 90 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 91 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 92 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 95 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 96 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 97 + OFFSET_X, 1, 33.8 );
	setRotateKey( ATK_01 + 98 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 115 + OFFSET_X, 1, 2.6 );
	setRotateKey( ATK_01 + 116 + OFFSET_X, 1, -36.2 );
	setRotateKey( ATK_01 + 119 + OFFSET_X, 1, -36.2 );
	setRotateKey( ATK_01 + 120 + OFFSET_X, 1, -36.1 );
	setRotateKey( ATK_01 + 121 + OFFSET_X, 1, -36.1 );
	setRotateKey( ATK_01 + 122 + OFFSET_X, 1, -35.9 );
	setRotateKey( ATK_01 + 123 + OFFSET_X, 1, -35.9 );
	setRotateKey( ATK_01 + 124 + OFFSET_X, 1, -35.6 );
	setRotateKey( ATK_01 + 125 + OFFSET_X, 1, -35.6 );
	setRotateKey( ATK_01 + 126 + OFFSET_X, 1, -35.4 );
	setRotateKey( ATK_01 + 127 + OFFSET_X, 1, -35.4 );
	setRotateKey( ATK_01 + 128 + OFFSET_X, 1, -35.2 );
	setRotateKey( ATK_01 + 129 + OFFSET_X, 1, -35.2 );
	setRotateKey( ATK_01 + 130 + OFFSET_X, 1, -35.1 );
	setRotateKey( ATK_01 + 131 + OFFSET_X, 1, -35.1 );
	setRotateKey( ATK_01 + 132 + OFFSET_X, 1, -35 );
	setRotateKey( ATK_01 + 133 + OFFSET_X, 1, -35 );
	setRotateKey( ATK_01 + 134 + OFFSET_X, 1, -34.9 );
	setRotateKey( ATK_01 + 137 + OFFSET_X, 1, -34.9 );
	setRotateKey( ATK_01 + 138 + OFFSET_X, 1, -34.8 );
	setRotateKey( ATK_01 + ATK_end, 1, -34.8 );

end

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( ATK_01 + 0, 1117, "",ATK_01 + 52, 0, 18, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 20; --エンドフェイズのフレーム数を置き換える
	
	playSe( SP_dodge-12, 1042);
	stopSe( SP_dodge-12, SE001, 0);

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
--連打１
SE002 = playSeVer2( ATK_01 + 18, 1425, "",ATK_01 + 60, 0, 16, -1);
SE003 = playSeVer2( ATK_01 + 18, 1009, "", 0, 0, 0, -1);
SE004 = playSeVer2( ATK_01 + 30, 1010, "", 0, 0, 0, -1);

--瞬間移動
SE005 = playSeVer2( ATK_01 + 42, 1109, "", 0, 0, 0, -1);

--連打２
SE006 = playSeVer2( ATK_01 + 62, 1425, "",ATK_01 + 104, 0, 16, -1);
setSeVolumeByWorkId( ATK_01 + 62, SE006, 75 );
SE007 = playSeVer2( ATK_01 + 62, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 62, SE007, 71 );
SE008 = playSeVer2( ATK_01 + 74, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 74, SE008, 65 );

--ラスト吹き飛ばす
SE009 = playSeVer2( ATK_01 + 90, 1049, "",ATK_01 + 136, 0, 24, -1);
setSeVolumeByWorkId( ATK_01 + 90, SE009, 71 );
SE010 = playSeVer2( ATK_01 + 94, 20, "",ATK_01 + 154, 0, 34, -1);
setSeVolumeByWorkId( ATK_01 + 94, SE010, 73 );
SE011 = playSeVer2( ATK_01 + 94, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 94, SE011, 79 );
SE012 = playSeVer2( ATK_01 + 100, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 100, SE012, 74 );

--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 112;	

        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end


print ("[lua]exec b0013");