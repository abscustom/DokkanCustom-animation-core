print ("[lua]exec b0004");

ATK_01 = 0;
ATK_D = 218;
ATK_end = ATK_01+318;

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 182, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 182, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D+0, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

MAX_FRAME_0=316

-- ** エフェクト等 ** --
effect_back = entryEffect( ATK_01 + 0,82, 0x100, -1, 0, 0, 0); --ef_122(中間)
setEffMoveKey( ATK_01 + 0, effect_back, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back, 0);
setEffAlphaKey( ATK_01 + 0, effect_back, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back, 255);


if (_IS_PLAYER_SIDE_ == 1) then
    effect_front = entryEffect( ATK_01 + 0, 81, 0x100, -1, 0, 0, 0);  --味方側 ef_121
else
    effect_front = entryEffect( ATK_01 + 0, 84, 0x100, -1, 0, 0, 0);  --敵側 ef_121r
end

setEffMoveKey( ATK_01 + 0, effect_front, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_front, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_front, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_front, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_front, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_front, 0);
setEffAlphaKey( ATK_01 + 0, effect_front, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_front, 255);

effect_back2 = entryEffect( ATK_01 + 0,83, 0x80, -1, 0, 0, 0); --ef_123
setEffMoveKey( ATK_01 + 0, effect_back2, 0, 0 , 0);
setEffMoveKey( ATK_01 + MAX_FRAME_0, effect_back2, 0, 0 , 0);
setEffScaleKey( ATK_01 + 0, effect_back2, 1.0, 1.0);
setEffScaleKey( ATK_01 + MAX_FRAME_0, effect_back2, 1.0, 1.0);
setEffRotateKey( ATK_01 + 0, effect_back2, 0);
setEffRotateKey( ATK_01 + MAX_FRAME_0, effect_back2, 0);
setEffAlphaKey( ATK_01 + 0, effect_back2, 255);
setEffAlphaKey( ATK_01 + MAX_FRAME_0, effect_back2, 255);

--背景速度操作
if (_IS_PLAYER_SIDE_ == 1) then
	startBgScroll(ATK_01+0,-80,1);
	stopBgScroll(ATK_01+59,1);
	setBgScroll(ATK_01+60,-10);
	startBgScroll(ATK_01+82,-10,20);
	stopBgScroll(ATK_01+100,10);
	setBgScroll(ATK_01+120,0);
	startBgScroll(ATK_01+140,-800,1);
	stopBgScroll(ATK_01+141,1);
	startBgScroll(ATK_01+186,800,1);
	stopBgScroll(ATK_01+187,1);

else
	startBgScroll(ATK_01+0,-80,1);
	stopBgScroll(ATK_01+59,1);
	setBgScroll(ATK_01+60,10);
	startBgScroll(ATK_01+82,-10,20);
	stopBgScroll(ATK_01+100,10);
	setBgScroll(ATK_01+120,0);
	startBgScroll(ATK_01+140,-800,1);
	stopBgScroll(ATK_01+141,1);
	startBgScroll(ATK_01+186,800,1);
	stopBgScroll(ATK_01+187,1);

end

-- 味方の動き
--敵と味方のどちらが手前に来るか
setDrawFront( ATK_01, 0, 1);
setDrawFront( ATK_01+200, 0, 0);
setDrawFront( ATK_01+200, 1, 1);

--画面振動
setShakeXY(ATK_01 + 84 + OFFSET_X,4, 50, 0);
setShakeXY(ATK_01 + 88 + OFFSET_X,8, 30, 0);
setShakeXY(ATK_01 + 96 + OFFSET_X,8, 10, 10);
setShakeXY(ATK_01 + 110 + OFFSET_X,8, 20, 10);
setShakeXY(ATK_01 + 118 + OFFSET_X,12, 20, 5);
setShakeXY(ATK_01 + 130 + OFFSET_X,6, 30, 10);
setShakeXY(ATK_01 + 136 + OFFSET_X,8, 10, 30);
setShakeXY(ATK_01 + 168 + OFFSET_X,4, 40, 0);
setShakeXY(ATK_01 + 172 + OFFSET_X,18, 5, 20);
setShakeXY(ATK_01 + 220 + OFFSET_X,6, 10, 30);
setShakeXY(ATK_01 + 226 + OFFSET_X,12, 20, 20)
setShakeXY(ATK_01 + 246 + OFFSET_X,4, 50, 50);
setShakeXY(ATK_01 + 250 + OFFSET_X,4, 30, 10);
setShakeXY(ATK_01 + 254 + OFFSET_X,8, 10, 60);
setShakeXY(ATK_01 + 262 + OFFSET_X,18, 20, 40);
setShakeXY(ATK_01 + 280 + OFFSET_X,10, 20, 0);
setShakeXY(ATK_01 + 290 + OFFSET_X,10, 0, 30);
setShakeXY(ATK_01 + 300 + OFFSET_X,10, 0, 20);
setShakeXY(ATK_01 + 310 + OFFSET_X,10, 0, 10);

-----------------------------------------------------
--味方の動き
-----------------------------------------------------

setDisp(ATK_01 + 140 + OFFSET_X,0,0)
setDisp(ATK_01 + 160 + OFFSET_X,0,1)

setDisp(ATK_01 + 162 + OFFSET_X,0,0)
setDisp(ATK_01 + 164 + OFFSET_X,0,1)
setDisp(ATK_01 + 186 + OFFSET_X,0,0)

setDisp(ATK_01 + 208 + OFFSET_X,0,1)
setDisp(ATK_01 + 210 + OFFSET_X,0,0)
setDisp(ATK_01 + 212 + OFFSET_X,0,1)
setDisp(ATK_01 + ATK_end -2,0,0)

changeAnime( ATK_01 + 0, 0, 16 );
changeAnime( ATK_01 + 60 + OFFSET_X, 0, 3 );
changeAnimeAndStop( ATK_01 + 104 + OFFSET_X, 0, 11 ,1)
changeAnime( ATK_01 + 110 + OFFSET_X, 0, 9 );
changeAnimeAndStop( ATK_01 + 116 + OFFSET_X, 0, 11 ,1)
changeAnimeAndStop( ATK_01 + 118 + OFFSET_X, 0, 11 ,3)
changeAnimeAndStop( ATK_01 + 124 + OFFSET_X, 0, 11 ,1)
changeAnime( ATK_01 + 130 + OFFSET_X, 0, 12 );
changeAnimeAndStop( ATK_01 + 160 + OFFSET_X, 0, 111 ,1)
changeAnime( ATK_01 + 168 + OFFSET_X, 0, 114 );
changeAnimeAndStop( ATK_01 + 208 + OFFSET_X, 0, 15 ,1)
changeAnime( ATK_01 + 218 + OFFSET_X, 0, 15 );

setMoveKey( ATK_01 + 0, 0, -0.1, -0.2 , 0 );
setMoveKey( ATK_01 + 2 + OFFSET_X, 0, -0.1, -0.2 , 0 );
setMoveKey( ATK_01 + 3 + OFFSET_X, 0, -0.1, -0.2 , 0 );
setMoveKey( ATK_01 + 4 + OFFSET_X, 0, -0.1, -0.2 , 0 );
setMoveKey( ATK_01 + 5 + OFFSET_X, 0, -0.1, -0.2 , 0 );
setMoveKey( ATK_01 + 6 + OFFSET_X, 0, -0.1, -0.1 , 0 );
setMoveKey( ATK_01 + 7 + OFFSET_X, 0, -0.1, -0.1 , 0 );
setMoveKey( ATK_01 + 8 + OFFSET_X, 0, -0.1, -0.2 , 0 );
setMoveKey( ATK_01 + 11 + OFFSET_X, 0, -0.1, -0.2 , 0 );
setMoveKey( ATK_01 + 12 + OFFSET_X, 0, 0, -0.2 , 0 );
setMoveKey( ATK_01 + 13 + OFFSET_X, 0, 0, -0.2 , 0 );
setMoveKey( ATK_01 + 14 + OFFSET_X, 0, -0.1, -0.1 , 0 );
setMoveKey( ATK_01 + 15 + OFFSET_X, 0, -0.1, -0.1 , 0 );
setMoveKey( ATK_01 + 16 + OFFSET_X, 0, 0, -0.1 , 0 );
setMoveKey( ATK_01 + 17 + OFFSET_X, 0, 0, -0.1 , 0 );
setMoveKey( ATK_01 + 18 + OFFSET_X, 0, 0, -0.2 , 0 );
setMoveKey( ATK_01 + 19 + OFFSET_X, 0, 0, -0.2 , 0 );
setMoveKey( ATK_01 + 20 + OFFSET_X, 0, -0.1, -0.2 , 0 );
setMoveKey( ATK_01 + 21 + OFFSET_X, 0, -0.1, -0.2 , 0 );
setMoveKey( ATK_01 + 22 + OFFSET_X, 0, 0, -0.1 , 0 );
setMoveKey( ATK_01 + 23 + OFFSET_X, 0, 0, -0.1 , 0 );
setMoveKey( ATK_01 + 24 + OFFSET_X, 0, -0.1, -0.1 , 0 );
setMoveKey( ATK_01 + 25 + OFFSET_X, 0, -0.1, -0.1 , 0 );
setMoveKey( ATK_01 + 26 + OFFSET_X, 0, 0, -0.1 , 0 );
setMoveKey( ATK_01 + 27 + OFFSET_X, 0, 0, -0.1 , 0 );
setMoveKey( ATK_01 + 28 + OFFSET_X, 0, -0.1, -0.1 , 0 );
setMoveKey( ATK_01 + 31 + OFFSET_X, 0, -0.1, -0.1 , 0 );
setMoveKey( ATK_01 + 32 + OFFSET_X, 0, 0, -0.1 , 0 );
setMoveKey( ATK_01 + 35 + OFFSET_X, 0, 0, -0.1 , 0 );
setMoveKey( ATK_01 + 36 + OFFSET_X, 0, -0.1, -0.1 , 0 );
setMoveKey( ATK_01 + 37 + OFFSET_X, 0, -0.1, -0.1 , 0 );
setMoveKey( ATK_01 + 38 + OFFSET_X, 0, 0, -0.1 , 0 );
setMoveKey( ATK_01 + 39 + OFFSET_X, 0, 0, -0.1 , 0 );
setMoveKey( ATK_01 + 40 + OFFSET_X, 0, 0, 0 , 0 );
setMoveKey( ATK_01 + 49 + OFFSET_X, 0, 0, 0 , 0 );
setMoveKey( ATK_01 + 50 + OFFSET_X, 0, 0, 0.1 , 0 );
setMoveKey( ATK_01 + 57 + OFFSET_X, 0, 0, 0.1 , 0 );
setMoveKey( ATK_01 + 58 + OFFSET_X, 0, 0, 0.2 , 0 );
setMoveKey( ATK_01 + 59 + OFFSET_X, 0, 0, 0.2 , 0 );
setMoveKey( ATK_01 + 60 + OFFSET_X, 0, -1079.9, -0.2 , 0 );
setMoveKey( ATK_01 + 61 + OFFSET_X, 0, -1079.9, -0.2 , 0 );
setMoveKey( ATK_01 + 62 + OFFSET_X, 0, -1055.3, -0.2 , 0 );
setMoveKey( ATK_01 + 63 + OFFSET_X, 0, -1055.3, -0.2 , 0 );
setMoveKey( ATK_01 + 64 + OFFSET_X, 0, -1014.9, -0.2 , 0 );
setMoveKey( ATK_01 + 65 + OFFSET_X, 0, -1014.9, -0.2 , 0 );
setMoveKey( ATK_01 + 66 + OFFSET_X, 0, -958.7, -0.2 , 0 );
setMoveKey( ATK_01 + 67 + OFFSET_X, 0, -958.7, -0.2 , 0 );
setMoveKey( ATK_01 + 68 + OFFSET_X, 0, -886.7, -0.2 , 0 );
setMoveKey( ATK_01 + 69 + OFFSET_X, 0, -886.7, -0.2 , 0 );
setMoveKey( ATK_01 + 70 + OFFSET_X, 0, -798.9, -0.2 , 0 );
setMoveKey( ATK_01 + 71 + OFFSET_X, 0, -798.9, -0.2 , 0 );
setMoveKey( ATK_01 + 72 + OFFSET_X, 0, -695.3, -0.2 , 0 );
setMoveKey( ATK_01 + 73 + OFFSET_X, 0, -695.3, -0.2 , 0 );
setMoveKey( ATK_01 + 74 + OFFSET_X, 0, -575.9, -0.2 , 0 );
setMoveKey( ATK_01 + 75 + OFFSET_X, 0, -575.9, -0.2 , 0 );
setMoveKey( ATK_01 + 76 + OFFSET_X, 0, -440.6, -0.2 , 0 );
setMoveKey( ATK_01 + 77 + OFFSET_X, 0, -440.6, -0.2 , 0 );
setMoveKey( ATK_01 + 78 + OFFSET_X, 0, -289.6, -0.2 , 0 );
setMoveKey( ATK_01 + 79 + OFFSET_X, 0, -289.6, -0.2 , 0 );
setMoveKey( ATK_01 + 80 + OFFSET_X, 0, -122.7, -0.2 , 0 );
setMoveKey( ATK_01 + 81 + OFFSET_X, 0, -122.7, -0.2 , 0 );
setMoveKey( ATK_01 + 82 + OFFSET_X, 0, -120.6, -0.2 , 0 );
setMoveKey( ATK_01 + 83 + OFFSET_X, 0, -120.6, -0.2 , 0 );
setMoveKey( ATK_01 + 84 + OFFSET_X, 0, -119.9, -0.2 , 0 );
setMoveKey( ATK_01 + 85 + OFFSET_X, 0, -119.9, -0.2 , 0 );
setMoveKey( ATK_01 + 86 + OFFSET_X, 0, -115.7, -0.2 , 0 );
setMoveKey( ATK_01 + 87 + OFFSET_X, 0, -115.7, -0.2 , 0 );
setMoveKey( ATK_01 + 88 + OFFSET_X, 0, -112.9, -0.2 , 0 );
setMoveKey( ATK_01 + 89 + OFFSET_X, 0, -112.9, -0.2 , 0 );
setMoveKey( ATK_01 + 90 + OFFSET_X, 0, -111.8, -0.2 , 0 );
setMoveKey( ATK_01 + 91 + OFFSET_X, 0, -111.8, -0.2 , 0 );
setMoveKey( ATK_01 + 92 + OFFSET_X, 0, -112.1, -0.2 , 0 );
setMoveKey( ATK_01 + 93 + OFFSET_X, 0, -112.1, -0.2 , 0 );
setMoveKey( ATK_01 + 94 + OFFSET_X, 0, -114, -0.2 , 0 );
setMoveKey( ATK_01 + 95 + OFFSET_X, 0, -114, -0.2 , 0 );
setMoveKey( ATK_01 + 96 + OFFSET_X, 0, -117.4, -0.2 , 0 );
setMoveKey( ATK_01 + 97 + OFFSET_X, 0, -117.4, -0.2 , 0 );
setMoveKey( ATK_01 + 98 + OFFSET_X, 0, -122.4, -0.2 , 0 );
setMoveKey( ATK_01 + 99 + OFFSET_X, 0, -122.4, -0.2 , 0 );
setMoveKey( ATK_01 + 100 + OFFSET_X, 0, -128.8, -0.2 , 0 );
setMoveKey( ATK_01 + 101 + OFFSET_X, 0, -128.8, -0.2 , 0 );
setMoveKey( ATK_01 + 102 + OFFSET_X, 0, -116.5, -0.2 , 0 );
setMoveKey( ATK_01 + 103 + OFFSET_X, 0, -116.5, -0.2 , 0 );
setMoveKey( ATK_01 + 104 + OFFSET_X, 0, -105.2, -0.1 , 0 );
setMoveKey( ATK_01 + 105 + OFFSET_X, 0, -105.2, -0.1 , 0 );
setMoveKey( ATK_01 + 106 + OFFSET_X, 0, -94.5, 0 , 0 );
setMoveKey( ATK_01 + 107 + OFFSET_X, 0, -94.5, 0 , 0 );
setMoveKey( ATK_01 + 108 + OFFSET_X, 0, -83.1, 0 , 0 );
setMoveKey( ATK_01 + 109 + OFFSET_X, 0, -83.1, 0 , 0 );
setMoveKey( ATK_01 + 110 + OFFSET_X, 0, -67.4, 8.1 , 0 );
setMoveKey( ATK_01 + 111 + OFFSET_X, 0, -67.4, 8.1 , 0 );
setMoveKey( ATK_01 + 112 + OFFSET_X, 0, -74.2, 8.1 , 0 );
setMoveKey( ATK_01 + 113 + OFFSET_X, 0, -74.2, 8.1 , 0 );
setMoveKey( ATK_01 + 114 + OFFSET_X, 0, -80.1, 8.1 , 0 );
setMoveKey( ATK_01 + 115 + OFFSET_X, 0, -80.1, 8.1 , 0 );
setMoveKey( ATK_01 + 116 + OFFSET_X, 0, -68.5, 0.1 , 0 );
setMoveKey( ATK_01 + 117 + OFFSET_X, 0, -68.5, 0.1 , 0 );
setMoveKey( ATK_01 + 118 + OFFSET_X, 0, -32.6, 0.1 , 0 );
setMoveKey( ATK_01 + 119 + OFFSET_X, 0, -32.6, 0.1 , 0 );
setMoveKey( ATK_01 + 120 + OFFSET_X, 0, -35.8, 0.1 , 0 );
setMoveKey( ATK_01 + 121 + OFFSET_X, 0, -35.8, 0.1 , 0 );
setMoveKey( ATK_01 + 122 + OFFSET_X, 0, -38.1, 0.1 , 0 );
setMoveKey( ATK_01 + 123 + OFFSET_X, 0, -38.1, 0.1 , 0 );
setMoveKey( ATK_01 + 124 + OFFSET_X, 0, -21.5, -5.9 , 0 );
setMoveKey( ATK_01 + 125 + OFFSET_X, 0, -21.5, -5.9 , 0 );
setMoveKey( ATK_01 + 126 + OFFSET_X, 0, -21.9, -5.9 , 0 );
setMoveKey( ATK_01 + 129 + OFFSET_X, 0, -21.9, -5.9 , 0 );
setMoveKey( ATK_01 + 130 + OFFSET_X, 0, 17.7, 15.3 , 0 );
setMoveKey( ATK_01 + 140 + OFFSET_X, 0, 17.7, 15.3 , 0 );
setMoveKey( ATK_01 + 158 + OFFSET_X, 0, 134.1, 8.3 , 0 );
setMoveKey( ATK_01 + 197 + OFFSET_X, 0, 134.1, 8.3 , 0 );
setMoveKey( ATK_01 + 198 + OFFSET_X, 0, 1090.3, -965.9 , 0 );
setMoveKey( ATK_01 + 207 + OFFSET_X, 0, 1090.3, -965.9 , 0 );
setMoveKey( ATK_01 + 208 + OFFSET_X, 0, -103.7, 167.4 , 0 );
setMoveKey( ATK_01 + 215 + OFFSET_X, 0, -103.7, 167.4 , 0 );
setMoveKey( ATK_01 + 216 + OFFSET_X, 0, -116.4, 177 , 0 );
setMoveKey( ATK_01 + ATK_end -3, 0, -116.4, 177 , 0 );
setMoveKey( ATK_01 + ATK_end -2, 0, 2000, 0, 0 );

setScaleKey( ATK_01 + 0, 0, 0.81, 0.81 );
setScaleKey( ATK_01 + 2 + OFFSET_X, 0, 0.84, 0.84 );
setScaleKey( ATK_01 + 3 + OFFSET_X, 0, 0.84, 0.84 );
setScaleKey( ATK_01 + 4 + OFFSET_X, 0, 0.8, 0.8 );
setScaleKey( ATK_01 + 5 + OFFSET_X, 0, 0.8, 0.8 );
setScaleKey( ATK_01 + 6 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 7 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 8 + OFFSET_X, 0, 0.82, 0.82 );
setScaleKey( ATK_01 + 9 + OFFSET_X, 0, 0.82, 0.82 );
setScaleKey( ATK_01 + 10 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 11 + OFFSET_X, 0, 0.87, 0.87 );
setScaleKey( ATK_01 + 12 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 13 + OFFSET_X, 0, 0.85, 0.85 );
setScaleKey( ATK_01 + 14 + OFFSET_X, 0, 0.92, 0.92 );
setScaleKey( ATK_01 + 15 + OFFSET_X, 0, 0.92, 0.92 );
setScaleKey( ATK_01 + 16 + OFFSET_X, 0, 0.89, 0.89 );
setScaleKey( ATK_01 + 17 + OFFSET_X, 0, 0.89, 0.89 );
setScaleKey( ATK_01 + 18 + OFFSET_X, 0, 0.97, 0.97 );
setScaleKey( ATK_01 + 19 + OFFSET_X, 0, 0.97, 0.97 );
setScaleKey( ATK_01 + 20 + OFFSET_X, 0, 0.94, 0.94 );
setScaleKey( ATK_01 + 21 + OFFSET_X, 0, 0.94, 0.94 );
setScaleKey( ATK_01 + 22 + OFFSET_X, 0, 1.05, 1.05 );
setScaleKey( ATK_01 + 23 + OFFSET_X, 0, 1.05, 1.05 );
setScaleKey( ATK_01 + 24 + OFFSET_X, 0, 1.03, 1.03 );
setScaleKey( ATK_01 + 25 + OFFSET_X, 0, 1.03, 1.03 );
setScaleKey( ATK_01 + 26 + OFFSET_X, 0, 1.12, 1.12 );
setScaleKey( ATK_01 + 27 + OFFSET_X, 0, 1.12, 1.12 );
setScaleKey( ATK_01 + 28 + OFFSET_X, 0, 1.11, 1.11 );
setScaleKey( ATK_01 + 29 + OFFSET_X, 0, 1.11, 1.11 );
setScaleKey( ATK_01 + 30 + OFFSET_X, 0, 1.23, 1.23 );
setScaleKey( ATK_01 + 31 + OFFSET_X, 0, 1.23, 1.23 );
setScaleKey( ATK_01 + 32 + OFFSET_X, 0, 1.2, 1.2 );
setScaleKey( ATK_01 + 33 + OFFSET_X, 0, 1.2, 1.2 );
setScaleKey( ATK_01 + 34 + OFFSET_X, 0, 1.34, 1.34 );
setScaleKey( ATK_01 + 35 + OFFSET_X, 0, 1.34, 1.34 );
setScaleKey( ATK_01 + 36 + OFFSET_X, 0, 1.31, 1.31 );
setScaleKey( ATK_01 + 37 + OFFSET_X, 0, 1.31, 1.31 );
setScaleKey( ATK_01 + 38 + OFFSET_X, 0, 1.47, 1.47 );
setScaleKey( ATK_01 + 39 + OFFSET_X, 0, 1.47, 1.47 );
setScaleKey( ATK_01 + 40 + OFFSET_X, 0, 1.45, 1.45 );
setScaleKey( ATK_01 + 41 + OFFSET_X, 0, 1.45, 1.45 );
setScaleKey( ATK_01 + 42 + OFFSET_X, 0, 1.62, 1.62 );
setScaleKey( ATK_01 + 43 + OFFSET_X, 0, 1.62, 1.62 );
setScaleKey( ATK_01 + 44 + OFFSET_X, 0, 1.58, 1.58 );
setScaleKey( ATK_01 + 45 + OFFSET_X, 0, 1.58, 1.58 );
setScaleKey( ATK_01 + 46 + OFFSET_X, 0, 1.76, 1.76 );
setScaleKey( ATK_01 + 47 + OFFSET_X, 0, 1.76, 1.76 );
setScaleKey( ATK_01 + 48 + OFFSET_X, 0, 1.75, 1.75 );
setScaleKey( ATK_01 + 49 + OFFSET_X, 0, 1.75, 1.75 );
setScaleKey( ATK_01 + 50 + OFFSET_X, 0, 1.91, 1.91 );
setScaleKey( ATK_01 + 53 + OFFSET_X, 0, 1.91, 1.91 );
setScaleKey( ATK_01 + 54 + OFFSET_X, 0, 2.1, 2.1 );
setScaleKey( ATK_01 + 55 + OFFSET_X, 0, 2.1, 2.1 );
setScaleKey( ATK_01 + 56 + OFFSET_X, 0, 2.08, 2.08 );
setScaleKey( ATK_01 + 57 + OFFSET_X, 0, 2.08, 2.08 );
setScaleKey( ATK_01 + 58 + OFFSET_X, 0, 2.33, 2.33 );
setScaleKey( ATK_01 + 59 + OFFSET_X, 0, 2.33, 2.33 );
setScaleKey( ATK_01 + 60 + OFFSET_X, 0, 1.6, 1.6 );
setScaleKey( ATK_01 + 216 + OFFSET_X, 0, 1.6, 1.6 );
setScaleKey( ATK_01 + ATK_end, 0, 1.6, 1.6 );

setRotateKey( ATK_01 + 0, 0, 0 );
setRotateKey( ATK_01 + 2 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 3 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 4 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 5 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 6 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 7 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 101 + OFFSET_X, 0, 0 );
setRotateKey( ATK_01 + 102 + OFFSET_X, 0, -13.7 );
setRotateKey( ATK_01 + 103 + OFFSET_X, 0, -13.7 );
setRotateKey( ATK_01 + 104 + OFFSET_X, 0, 8.1 );
setRotateKey( ATK_01 + 105 + OFFSET_X, 0, 8.1 );
setRotateKey( ATK_01 + 106 + OFFSET_X, 0, -5.5 );
setRotateKey( ATK_01 + 107 + OFFSET_X, 0, -5.5 );
setRotateKey( ATK_01 + 108 + OFFSET_X, 0, -11.1 );
setRotateKey( ATK_01 + 109 + OFFSET_X, 0, -11.1 );
setRotateKey( ATK_01 + 110 + OFFSET_X, 0, 8.8 );
setRotateKey( ATK_01 + 115 + OFFSET_X, 0, 8.8 );
setRotateKey( ATK_01 + 116 + OFFSET_X, 0, -16.8 );
setRotateKey( ATK_01 + 117 + OFFSET_X, 0, -16.8 );
setRotateKey( ATK_01 + 118 + OFFSET_X, 0, 1.9 );
setRotateKey( ATK_01 + 123 + OFFSET_X, 0, 1.9 );
setRotateKey( ATK_01 + 124 + OFFSET_X, 0, -19.7 );
setRotateKey( ATK_01 + 129 + OFFSET_X, 0, -19.7 );
setRotateKey( ATK_01 + 130 + OFFSET_X, 0, -3.2 );
setRotateKey( ATK_01 + 159 + OFFSET_X, 0, -3.2 );
setRotateKey( ATK_01 + 160 + OFFSET_X, 0, 0.1 );
setRotateKey( ATK_01 + ATK_end, 0, 0.1 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( ATK_01 + 0, 1182, "", 0, 0, 0, -1);	
SE002 = playSeVer2( ATK_01 + 0, 1117, "", 0, 0, 0, -1);	
SE003 = playSeVer2( ATK_01 + 6, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 6, SE003, 56 );
setTimeStretch( SE003, 1.24, 30, 4 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

	SP_dodge = 30; --エンドフェイズのフレーム数を置き換える
	
	playSe( SP_dodge-12, 1042);
	stopSe( SP_dodge-12, SE001, 0);
	stopSe( SP_dodge-12, SE002, 0);
	stopSe( SP_dodge-12, SE003, 0);

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
--タックル
SE004 = playSeVer2( ATK_01 + 58, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( ATK_01 + 72, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 72, SE005, 92 );
SE006 = playSeVer2( ATK_01 + 72, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 72, SE006, 82 );

--連続攻撃
SE007 = playSeVer2( ATK_01 + 90, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 90, SE007, 145 );
SE008 = playSeVer2( ATK_01 + 98, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( ATK_01 + 102, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( ATK_01 + 122, 1187, "",ATK_01 + 176, 0, 32, -1);
setSeVolumeByWorkId( ATK_01 + 122, SE010, 58 );

--瞬間移動
SE011 = playSeVer2( ATK_01 + 140, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 140, SE011, 130 );

--蹴り上げ
SE012 = playSeVer2( ATK_01 + 150, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 150, SE012, 87 );
SE013 = playSeVer2( ATK_01 + 160, 1187, "",ATK_01 + 216, 0, 34, -1);
SE014 = playSeVer2( ATK_01 + 164, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE015 = playSeVer2( ATK_01 + 192, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 192, SE015, 123 );

--叩きつける
SE016 = playSeVer2( ATK_01 + 200, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 200, SE016, 146 );
SE017 = playSeVer2( ATK_01 + 202, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 202, SE017, 84 );

--地面激突
SE018 = playSeVer2( ATK_01 + 232, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( ATK_01 + 232, SE018, 78 );

-----------------------------------------------------
--敵の動き
-----------------------------------------------------

if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then

	setDisp( ATK_01 + 0, 1, 0 );
	setDisp( ATK_01 + 60 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + 140 + OFFSET_X, 1, 0 );
	setDisp( ATK_01 + 152 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + 186 + OFFSET_X, 1, 0 );
	setDisp( ATK_01 + 198 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + 236 + OFFSET_X, 1, 0 );

	changeAnime( ATK_01 + 60 + OFFSET_X, 1, 101 );
	changeAnime( ATK_01 + 80 + OFFSET_X, 1, 104 );
	-- changeAnime( ATK_01 + 110 + OFFSET_X, 1, 106 );
	-- changeAnime( ATK_01 + 130 + OFFSET_X, 1, 108 );
	changeAnime( ATK_01 + 168 + OFFSET_X, 1, 4 );
	-- changeAnime( ATK_01 + 216 + OFFSET_X, 1, 8 );
	
	setMoveKey( ATK_01 + 60 + OFFSET_X, 1, -68.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 61 + OFFSET_X, 1, -68.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 62 + OFFSET_X, 1, -52.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 63 + OFFSET_X, 1, -52.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 64 + OFFSET_X, 1, -37.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 65 + OFFSET_X, 1, -37.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 66 + OFFSET_X, 1, -24.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 67 + OFFSET_X, 1, -24.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 68 + OFFSET_X, 1, -12.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 69 + OFFSET_X, 1, -12.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 70 + OFFSET_X, 1, -2.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 71 + OFFSET_X, 1, -2.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 72 + OFFSET_X, 1, 6.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 6.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 74 + OFFSET_X, 1, 14.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 75 + OFFSET_X, 1, 14.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 76 + OFFSET_X, 1, 20.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 77 + OFFSET_X, 1, 20.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 78 + OFFSET_X, 1, 25.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 79 + OFFSET_X, 1, 25.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 80 + OFFSET_X, 1, 28.9, 14.5 , 0 );
	setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 28.9, 14.5 , 0 );
	setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 31, 14.5 , 0 );
	setMoveKey( ATK_01 + 83 + OFFSET_X, 1, 31, 14.5 , 0 );
	setMoveKey( ATK_01 + 84 + OFFSET_X, 1, 31.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 85 + OFFSET_X, 1, 31.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 86 + OFFSET_X, 1, 44, 14.5 , 0 );
	setMoveKey( ATK_01 + 87 + OFFSET_X, 1, 44, 14.5 , 0 );
	setMoveKey( ATK_01 + 88 + OFFSET_X, 1, 54.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 89 + OFFSET_X, 1, 54.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, 62.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 91 + OFFSET_X, 1, 62.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 92 + OFFSET_X, 1, 68.9, 14.5 , 0 );
	setMoveKey( ATK_01 + 93 + OFFSET_X, 1, 68.9, 14.5 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, 73.2, 14.5 , 0 );
	setMoveKey( ATK_01 + 95 + OFFSET_X, 1, 73.2, 14.5 , 0 );
	setMoveKey( ATK_01 + 96 + OFFSET_X, 1, 75.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, 75.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 75.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 99 + OFFSET_X, 1, 75.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 100 + OFFSET_X, 1, 73.8, 14.5 , 0 );
	setMoveKey( ATK_01 + 101 + OFFSET_X, 1, 73.8, 14.5 , 0 );
	setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 70, 14.5 , 0 );
	setMoveKey( ATK_01 + 103 + OFFSET_X, 1, 70, 14.5 , 0 );
	setMoveKey( ATK_01 + 104 + OFFSET_X, 1, 64.2, 14.5 , 0 );
	setMoveKey( ATK_01 + 105 + OFFSET_X, 1, 64.2, 14.5 , 0 );
	setMoveKey( ATK_01 + 106 + OFFSET_X, 1, 56.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 56.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 48.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 48.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 110 + OFFSET_X, 1, 71.5, 0.9 , 0 );
	setMoveKey( ATK_01 + 111 + OFFSET_X, 1, 71.5, 0.9 , 0 );
	setMoveKey( ATK_01 + 112 + OFFSET_X, 1, 74.7, 0.9 , 0 );
	setMoveKey( ATK_01 + 113 + OFFSET_X, 1, 74.7, 0.9 , 0 );
	setMoveKey( ATK_01 + 114 + OFFSET_X, 1, 74.8, 0.9 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, 74.8, 0.9 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 71.8, 0.9 , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, 71.8, 0.9 , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, 67.1, 0 , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, 67.1, 0 , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, 86.2, 0 , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, 86.2, 0 , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, 97.2, 0 , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, 97.2, 0 , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, 100.3, 0 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 100.3, 0 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 99.9, 0 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 99.9, 0 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 187.8, 80.7 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 187.8, 80.7 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 304.7, 135.4 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 304.7, 135.4 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 421.6, 190.1 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 421.6, 190.1 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 538.5, 244.8 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 538.5, 244.8 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 655.4, 299.5 , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, 655.4, 299.5 , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, -685.9, -315.4 , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, -685.9, -315.4 , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, -568.9, -260.7 , 0 );
	setMoveKey( ATK_01 + 155 + OFFSET_X, 1, -568.9, -260.7 , 0 );
	setMoveKey( ATK_01 + 156 + OFFSET_X, 1, -452, -206 , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, -452, -206 , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, -335.1, -151.3 , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, -335.1, -151.3 , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, -218.2, -96.6 , 0 );
	setMoveKey( ATK_01 + 161 + OFFSET_X, 1, -218.2, -96.6 , 0 );
	setMoveKey( ATK_01 + 162 + OFFSET_X, 1, -101.3, -41.9 , 0 );
	setMoveKey( ATK_01 + 163 + OFFSET_X, 1, -101.3, -41.9 , 0 );
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, 15.6, 12.8 , 0 );
	setMoveKey( ATK_01 + 167 + OFFSET_X, 1, 15.6, 12.8 , 0 );
	setMoveKey( ATK_01 + 168 + OFFSET_X, 1, -30.1, 34.5 , 0 );
	setMoveKey( ATK_01 + 171 + OFFSET_X, 1, -30.1, 34.5 , 0 );
	setMoveKey( ATK_01 + 172 + OFFSET_X, 1, -112.5, 118 , 0 );
	setMoveKey( ATK_01 + 173 + OFFSET_X, 1, -112.5, 118 , 0 );
	setMoveKey( ATK_01 + 174 + OFFSET_X, 1, -194.8, 201.5 , 0 );
	setMoveKey( ATK_01 + 175 + OFFSET_X, 1, -194.8, 201.5 , 0 );
	setMoveKey( ATK_01 + 176 + OFFSET_X, 1, -277.2, 285 , 0 );
	setMoveKey( ATK_01 + 177 + OFFSET_X, 1, -277.2, 285 , 0 );
	setMoveKey( ATK_01 + 178 + OFFSET_X, 1, -359.6, 368.6 , 0 );
	setMoveKey( ATK_01 + 179 + OFFSET_X, 1, -359.6, 368.6 , 0 );
	setMoveKey( ATK_01 + 180 + OFFSET_X, 1, -442, 452.1 , 0 );
	setMoveKey( ATK_01 + 181 + OFFSET_X, 1, -442, 452.1 , 0 );
	setMoveKey( ATK_01 + 182 + OFFSET_X, 1, -524.4, 535.6 , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, -524.4, 535.6 , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, -606.8, 619.2 , 0 );
	setMoveKey( ATK_01 + 197 + OFFSET_X, 1, -606.8, 619.2 , 0 );
	setMoveKey( ATK_01 + 198 + OFFSET_X, 1, 679, -689.2 , 0 );
	setMoveKey( ATK_01 + 199 + OFFSET_X, 1, 679, -689.2 , 0 );
	setMoveKey( ATK_01 + 200 + OFFSET_X, 1, 596.6, -605.7 , 0 );
	setMoveKey( ATK_01 + 201 + OFFSET_X, 1, 596.6, -605.7 , 0 );
	setMoveKey( ATK_01 + 202 + OFFSET_X, 1, 514.3, -522.1 , 0 );
	setMoveKey( ATK_01 + 203 + OFFSET_X, 1, 514.3, -522.1 , 0 );
	setMoveKey( ATK_01 + 204 + OFFSET_X, 1, 431.9, -438.6 , 0 );
	setMoveKey( ATK_01 + 205 + OFFSET_X, 1, 431.9, -438.6 , 0 );
	setMoveKey( ATK_01 + 206 + OFFSET_X, 1, 349.5, -355.1 , 0 );
	setMoveKey( ATK_01 + 207 + OFFSET_X, 1, 349.5, -355.1 , 0 );
	setMoveKey( ATK_01 + 208 + OFFSET_X, 1, 267.1, -271.6 , 0 );
	setMoveKey( ATK_01 + 209 + OFFSET_X, 1, 267.1, -271.6 , 0 );
	setMoveKey( ATK_01 + 210 + OFFSET_X, 1, 184.7, -188 , 0 );
	setMoveKey( ATK_01 + 211 + OFFSET_X, 1, 184.7, -188 , 0 );
	setMoveKey( ATK_01 + 212 + OFFSET_X, 1, 102.3, -104.5 , 0 );
	setMoveKey( ATK_01 + 213 + OFFSET_X, 1, 102.3, -104.5 , 0 );
	setMoveKey( ATK_01 + 214 + OFFSET_X, 1, 19.9, -21 , 0 );
	setMoveKey( ATK_01 + 215 + OFFSET_X, 1, 19.9, -21 , 0 );
	setMoveKey( ATK_01 + 216 + OFFSET_X, 1, -69.4, -19.1 , 0 );
	setMoveKey( ATK_01 + 223 + OFFSET_X, 1, -69.4, -19.1 , 0 );
	setMoveKey( ATK_01 + 224 + OFFSET_X, 1, -43.4, -200.1 , 0 );
	setMoveKey( ATK_01 + 225 + OFFSET_X, 1, -43.4, -200.1 , 0 );
	setMoveKey( ATK_01 + 226 + OFFSET_X, 1, -17.4, -381.1 , 0 );
	setMoveKey( ATK_01 + 227 + OFFSET_X, 1, -17.4, -381.1 , 0 );
	setMoveKey( ATK_01 + 228 + OFFSET_X, 1, 8.6, -562.1 , 0 );
	setMoveKey( ATK_01 + 229 + OFFSET_X, 1, 8.6, -562.1 , 0 );
	setMoveKey( ATK_01 + 230 + OFFSET_X, 1, 34.6, -743.1 , 0 );
	setMoveKey( ATK_01 + 231 + OFFSET_X, 1, 34.6, -743.1 , 0 );
	setMoveKey( ATK_01 + 232 + OFFSET_X, 1, 60.6, -924.1 , 0 );
	setMoveKey( ATK_01 + 233 + OFFSET_X, 1, 60.6, -924.1 , 0 );
	setMoveKey( ATK_01 + 234 + OFFSET_X, 1, 86.6, -1105.1 , 0 );
	setMoveKey( ATK_01 + 235 + OFFSET_X, 1, 86.6, -1105.1 , 0 );
	setMoveKey( ATK_01 + 236 + OFFSET_X, 1, 112.6, -1286.1 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );

	setScaleKey( ATK_01 + 60 + OFFSET_X, 1, 1.6, 1.6 );
	setScaleKey( ATK_01 + 236 + OFFSET_X, 1, 1.6, 1.6 );
	
	setRotateKey( ATK_01 + 60 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 109 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 110 + OFFSET_X, 1, -31 );
	setRotateKey( ATK_01 + 117 + OFFSET_X, 1, -31 );
	setRotateKey( ATK_01 + 118 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 167 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 168 + OFFSET_X, 1, 22 );
	setRotateKey( ATK_01 + 215 + OFFSET_X, 1, 22 );
	setRotateKey( ATK_01 + 216 + OFFSET_X, 1, -100.7 );
	setRotateKey( ATK_01 + 236 + OFFSET_X, 1, -100.7 );
	
else
	
	setDisp( ATK_01 + 0, 1, 0 );
	setDisp( ATK_01 + 60 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + 140 + OFFSET_X, 1, 0 );
	setDisp( ATK_01 + 152 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + 186 + OFFSET_X, 1, 0 );
	setDisp( ATK_01 + 198 + OFFSET_X, 1, 1 );
	setDisp( ATK_01 + 236 + OFFSET_X, 1, 0 );

	changeAnime( ATK_01 + 60 + OFFSET_X, 1, 101 );
	changeAnime( ATK_01 + 80 + OFFSET_X, 1, 104 );
	changeAnime( ATK_01 + 110 + OFFSET_X, 1, 106 );
	changeAnime( ATK_01 + 130 + OFFSET_X, 1, 108 );
	changeAnime( ATK_01 + 168 + OFFSET_X, 1, 6 );
	changeAnime( ATK_01 + 216 + OFFSET_X, 1, 8 );
	
	setMoveKey( ATK_01 + 60 + OFFSET_X, 1, -68.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 61 + OFFSET_X, 1, -68.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 62 + OFFSET_X, 1, -52.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 63 + OFFSET_X, 1, -52.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 64 + OFFSET_X, 1, -37.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 65 + OFFSET_X, 1, -37.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 66 + OFFSET_X, 1, -24.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 67 + OFFSET_X, 1, -24.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 68 + OFFSET_X, 1, -12.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 69 + OFFSET_X, 1, -12.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 70 + OFFSET_X, 1, -2.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 71 + OFFSET_X, 1, -2.3, 14.5 , 0 );
	setMoveKey( ATK_01 + 72 + OFFSET_X, 1, 6.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 73 + OFFSET_X, 1, 6.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 74 + OFFSET_X, 1, 14.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 75 + OFFSET_X, 1, 14.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 76 + OFFSET_X, 1, 20.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 77 + OFFSET_X, 1, 20.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 78 + OFFSET_X, 1, 25.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 79 + OFFSET_X, 1, 25.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 80 + OFFSET_X, 1, 28.9, 14.5 , 0 );
	setMoveKey( ATK_01 + 81 + OFFSET_X, 1, 28.9, 14.5 , 0 );
	setMoveKey( ATK_01 + 82 + OFFSET_X, 1, 31, 14.5 , 0 );
	setMoveKey( ATK_01 + 83 + OFFSET_X, 1, 31, 14.5 , 0 );
	setMoveKey( ATK_01 + 84 + OFFSET_X, 1, 31.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 85 + OFFSET_X, 1, 31.7, 14.5 , 0 );
	setMoveKey( ATK_01 + 86 + OFFSET_X, 1, 44, 14.5 , 0 );
	setMoveKey( ATK_01 + 87 + OFFSET_X, 1, 44, 14.5 , 0 );
	setMoveKey( ATK_01 + 88 + OFFSET_X, 1, 54.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 89 + OFFSET_X, 1, 54.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 90 + OFFSET_X, 1, 62.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 91 + OFFSET_X, 1, 62.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 92 + OFFSET_X, 1, 68.9, 14.5 , 0 );
	setMoveKey( ATK_01 + 93 + OFFSET_X, 1, 68.9, 14.5 , 0 );
	setMoveKey( ATK_01 + 94 + OFFSET_X, 1, 73.2, 14.5 , 0 );
	setMoveKey( ATK_01 + 95 + OFFSET_X, 1, 73.2, 14.5 , 0 );
	setMoveKey( ATK_01 + 96 + OFFSET_X, 1, 75.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 97 + OFFSET_X, 1, 75.4, 14.5 , 0 );
	setMoveKey( ATK_01 + 98 + OFFSET_X, 1, 75.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 99 + OFFSET_X, 1, 75.6, 14.5 , 0 );
	setMoveKey( ATK_01 + 100 + OFFSET_X, 1, 73.8, 14.5 , 0 );
	setMoveKey( ATK_01 + 101 + OFFSET_X, 1, 73.8, 14.5 , 0 );
	setMoveKey( ATK_01 + 102 + OFFSET_X, 1, 70, 14.5 , 0 );
	setMoveKey( ATK_01 + 103 + OFFSET_X, 1, 70, 14.5 , 0 );
	setMoveKey( ATK_01 + 104 + OFFSET_X, 1, 64.2, 14.5 , 0 );
	setMoveKey( ATK_01 + 105 + OFFSET_X, 1, 64.2, 14.5 , 0 );
	setMoveKey( ATK_01 + 106 + OFFSET_X, 1, 56.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 107 + OFFSET_X, 1, 56.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 108 + OFFSET_X, 1, 48.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 109 + OFFSET_X, 1, 48.5, 14.5 , 0 );
	setMoveKey( ATK_01 + 110 + OFFSET_X, 1, 71.5, 0.9 , 0 );
	setMoveKey( ATK_01 + 111 + OFFSET_X, 1, 71.5, 0.9 , 0 );
	setMoveKey( ATK_01 + 112 + OFFSET_X, 1, 74.7, 0.9 , 0 );
	setMoveKey( ATK_01 + 113 + OFFSET_X, 1, 74.7, 0.9 , 0 );
	setMoveKey( ATK_01 + 114 + OFFSET_X, 1, 74.8, 0.9 , 0 );
	setMoveKey( ATK_01 + 115 + OFFSET_X, 1, 74.8, 0.9 , 0 );
	setMoveKey( ATK_01 + 116 + OFFSET_X, 1, 71.8, 0.9 , 0 );
	setMoveKey( ATK_01 + 117 + OFFSET_X, 1, 71.8, 0.9 , 0 );
	setMoveKey( ATK_01 + 118 + OFFSET_X, 1, 67.1, 0 , 0 );
	setMoveKey( ATK_01 + 119 + OFFSET_X, 1, 67.1, 0 , 0 );
	setMoveKey( ATK_01 + 120 + OFFSET_X, 1, 86.2, 0 , 0 );
	setMoveKey( ATK_01 + 121 + OFFSET_X, 1, 86.2, 0 , 0 );
	setMoveKey( ATK_01 + 122 + OFFSET_X, 1, 97.2, 0 , 0 );
	setMoveKey( ATK_01 + 123 + OFFSET_X, 1, 97.2, 0 , 0 );
	setMoveKey( ATK_01 + 124 + OFFSET_X, 1, 100.3, 0 , 0 );
	setMoveKey( ATK_01 + 125 + OFFSET_X, 1, 100.3, 0 , 0 );
	setMoveKey( ATK_01 + 126 + OFFSET_X, 1, 99.9, 0 , 0 );
	setMoveKey( ATK_01 + 129 + OFFSET_X, 1, 99.9, 0 , 0 );
	setMoveKey( ATK_01 + 130 + OFFSET_X, 1, 187.8, 80.7 , 0 );
	setMoveKey( ATK_01 + 133 + OFFSET_X, 1, 187.8, 80.7 , 0 );
	setMoveKey( ATK_01 + 134 + OFFSET_X, 1, 304.7, 135.4 , 0 );
	setMoveKey( ATK_01 + 135 + OFFSET_X, 1, 304.7, 135.4 , 0 );
	setMoveKey( ATK_01 + 136 + OFFSET_X, 1, 421.6, 190.1 , 0 );
	setMoveKey( ATK_01 + 137 + OFFSET_X, 1, 421.6, 190.1 , 0 );
	setMoveKey( ATK_01 + 138 + OFFSET_X, 1, 538.5, 244.8 , 0 );
	setMoveKey( ATK_01 + 139 + OFFSET_X, 1, 538.5, 244.8 , 0 );
	setMoveKey( ATK_01 + 140 + OFFSET_X, 1, 655.4, 299.5 , 0 );
	setMoveKey( ATK_01 + 151 + OFFSET_X, 1, 655.4, 299.5 , 0 );
	setMoveKey( ATK_01 + 152 + OFFSET_X, 1, -685.9, -315.4 , 0 );
	setMoveKey( ATK_01 + 153 + OFFSET_X, 1, -685.9, -315.4 , 0 );
	setMoveKey( ATK_01 + 154 + OFFSET_X, 1, -568.9, -260.7 , 0 );
	setMoveKey( ATK_01 + 155 + OFFSET_X, 1, -568.9, -260.7 , 0 );
	setMoveKey( ATK_01 + 156 + OFFSET_X, 1, -452, -206 , 0 );
	setMoveKey( ATK_01 + 157 + OFFSET_X, 1, -452, -206 , 0 );
	setMoveKey( ATK_01 + 158 + OFFSET_X, 1, -335.1, -151.3 , 0 );
	setMoveKey( ATK_01 + 159 + OFFSET_X, 1, -335.1, -151.3 , 0 );
	setMoveKey( ATK_01 + 160 + OFFSET_X, 1, -218.2, -96.6 , 0 );
	setMoveKey( ATK_01 + 161 + OFFSET_X, 1, -218.2, -96.6 , 0 );
	setMoveKey( ATK_01 + 162 + OFFSET_X, 1, -101.3, -41.9 , 0 );
	setMoveKey( ATK_01 + 163 + OFFSET_X, 1, -101.3, -41.9 , 0 );
	setMoveKey( ATK_01 + 164 + OFFSET_X, 1, 15.6, 12.8 , 0 );
	setMoveKey( ATK_01 + 167 + OFFSET_X, 1, 15.6, 12.8 , 0 );
	setMoveKey( ATK_01 + 168 + OFFSET_X, 1, -30.1, 34.5 , 0 );
	setMoveKey( ATK_01 + 171 + OFFSET_X, 1, -30.1, 34.5 , 0 );
	setMoveKey( ATK_01 + 172 + OFFSET_X, 1, -112.5, 118 , 0 );
	setMoveKey( ATK_01 + 173 + OFFSET_X, 1, -112.5, 118 , 0 );
	setMoveKey( ATK_01 + 174 + OFFSET_X, 1, -194.8, 201.5 , 0 );
	setMoveKey( ATK_01 + 175 + OFFSET_X, 1, -194.8, 201.5 , 0 );
	setMoveKey( ATK_01 + 176 + OFFSET_X, 1, -277.2, 285 , 0 );
	setMoveKey( ATK_01 + 177 + OFFSET_X, 1, -277.2, 285 , 0 );
	setMoveKey( ATK_01 + 178 + OFFSET_X, 1, -359.6, 368.6 , 0 );
	setMoveKey( ATK_01 + 179 + OFFSET_X, 1, -359.6, 368.6 , 0 );
	setMoveKey( ATK_01 + 180 + OFFSET_X, 1, -442, 452.1 , 0 );
	setMoveKey( ATK_01 + 181 + OFFSET_X, 1, -442, 452.1 , 0 );
	setMoveKey( ATK_01 + 182 + OFFSET_X, 1, -524.4, 535.6 , 0 );
	setMoveKey( ATK_01 + 183 + OFFSET_X, 1, -524.4, 535.6 , 0 );
	setMoveKey( ATK_01 + 184 + OFFSET_X, 1, -606.8, 619.2 , 0 );
	setMoveKey( ATK_01 + 197 + OFFSET_X, 1, -606.8, 619.2 , 0 );
	setMoveKey( ATK_01 + 198 + OFFSET_X, 1, 679, -689.2 , 0 );
	setMoveKey( ATK_01 + 199 + OFFSET_X, 1, 679, -689.2 , 0 );
	setMoveKey( ATK_01 + 200 + OFFSET_X, 1, 596.6, -605.7 , 0 );
	setMoveKey( ATK_01 + 201 + OFFSET_X, 1, 596.6, -605.7 , 0 );
	setMoveKey( ATK_01 + 202 + OFFSET_X, 1, 514.3, -522.1 , 0 );
	setMoveKey( ATK_01 + 203 + OFFSET_X, 1, 514.3, -522.1 , 0 );
	setMoveKey( ATK_01 + 204 + OFFSET_X, 1, 431.9, -438.6 , 0 );
	setMoveKey( ATK_01 + 205 + OFFSET_X, 1, 431.9, -438.6 , 0 );
	setMoveKey( ATK_01 + 206 + OFFSET_X, 1, 349.5, -355.1 , 0 );
	setMoveKey( ATK_01 + 207 + OFFSET_X, 1, 349.5, -355.1 , 0 );
	setMoveKey( ATK_01 + 208 + OFFSET_X, 1, 267.1, -271.6 , 0 );
	setMoveKey( ATK_01 + 209 + OFFSET_X, 1, 267.1, -271.6 , 0 );
	setMoveKey( ATK_01 + 210 + OFFSET_X, 1, 184.7, -188 , 0 );
	setMoveKey( ATK_01 + 211 + OFFSET_X, 1, 184.7, -188 , 0 );
	setMoveKey( ATK_01 + 212 + OFFSET_X, 1, 102.3, -104.5 , 0 );
	setMoveKey( ATK_01 + 213 + OFFSET_X, 1, 102.3, -104.5 , 0 );
	setMoveKey( ATK_01 + 214 + OFFSET_X, 1, 19.9, -21 , 0 );
	setMoveKey( ATK_01 + 215 + OFFSET_X, 1, 19.9, -21 , 0 );
	setMoveKey( ATK_01 + 216 + OFFSET_X, 1, -69.4, -19.1 , 0 );
	setMoveKey( ATK_01 + 223 + OFFSET_X, 1, -69.4, -19.1 , 0 );
	setMoveKey( ATK_01 + 224 + OFFSET_X, 1, -43.4, -200.1 , 0 );
	setMoveKey( ATK_01 + 225 + OFFSET_X, 1, -43.4, -200.1 , 0 );
	setMoveKey( ATK_01 + 226 + OFFSET_X, 1, -17.4, -381.1 , 0 );
	setMoveKey( ATK_01 + 227 + OFFSET_X, 1, -17.4, -381.1 , 0 );
	setMoveKey( ATK_01 + 228 + OFFSET_X, 1, 8.6, -562.1 , 0 );
	setMoveKey( ATK_01 + 229 + OFFSET_X, 1, 8.6, -562.1 , 0 );
	setMoveKey( ATK_01 + 230 + OFFSET_X, 1, 34.6, -743.1 , 0 );
	setMoveKey( ATK_01 + 231 + OFFSET_X, 1, 34.6, -743.1 , 0 );
	setMoveKey( ATK_01 + 232 + OFFSET_X, 1, 60.6, -924.1 , 0 );
	setMoveKey( ATK_01 + 233 + OFFSET_X, 1, 60.6, -924.1 , 0 );
	setMoveKey( ATK_01 + 234 + OFFSET_X, 1, 86.6, -1105.1 , 0 );
	setMoveKey( ATK_01 + 235 + OFFSET_X, 1, 86.6, -1105.1 , 0 );
	setMoveKey( ATK_01 + 236 + OFFSET_X, 1, 112.6, -1286.1 , 0 );
	setMoveKey( ATK_01 + ATK_end -2, 1, 2000, 0 , 0 );
	
	setScaleKey( ATK_01 + 60 + OFFSET_X, 1, 1.6, 1.6 );
	setScaleKey( ATK_01 + 236 + OFFSET_X, 1, 1.6, 1.6 );
	
	setRotateKey( ATK_01 + 60 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 109 + OFFSET_X, 1, 0 );
	setRotateKey( ATK_01 + 110 + OFFSET_X, 1, -31 );
	setRotateKey( ATK_01 + 117 + OFFSET_X, 1, -31 );
	setRotateKey( ATK_01 + 118 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 167 + OFFSET_X, 1, -12 );
	setRotateKey( ATK_01 + 168 + OFFSET_X, 1, 22 );
	setRotateKey( ATK_01 + 215 + OFFSET_X, 1, 22 );
	setRotateKey( ATK_01 + 216 + OFFSET_X, 1, -100.7 );
	setRotateKey( ATK_01 + 236 + OFFSET_X, 1, -100.7 );

end

--------------------------------死亡

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_01 + 240;	

    setDisp( ATK_dead, 1, 1 );
        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
else

dealDamage(  ATK_D+4);
endPhase(  ATK_end);
end


print ("[lua]exec b0004");