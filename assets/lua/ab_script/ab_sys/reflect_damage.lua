fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

INIT_FRAME = 0;
INIT_SCALE = 1.3;
TARGET_ACTOR = 0;

setEnvZoomEnable(0, 0);

------------------
-- 初期化
-- 立ちモーション
changeAnime(INIT_FRAME,              0, 0);
setScaleKey(INIT_FRAME, TARGET_ACTOR, INIT_SCALE, INIT_SCALE, 0);
-- 画面右位置 
setMoveKey(INIT_FRAME,  TARGET_ACTOR,   125,   0,  0);

------------------
-- アクション開始
MOVE_START = 7;
-- 仰け反りモーション
changeAnime(MOVE_START, 0, 6);
-- 集中線
dead_sen=entryEffectLife( MOVE_START, 913, 30+20, 0x80,  -1,  0,  0,  0);
setEffMoveKey(  MOVE_START,  dead_sen,  0, 150, 0 );
setEffScaleKey(  MOVE_START,  dead_sen,  -1, 1 );

setScaleKey(MOVE_START, TARGET_ACTOR, 1.3, 1.3, 0);
entryFadeBg(0, 0, MOVE_START, 0, 10, 10, 10, 180);

------------------
-- ダメージ
DAMAGE_TIME = MOVE_START + 1;
setShake( DAMAGE_TIME, 10, 20);
playSe( DAMAGE_TIME,1009);--SE
entryFade(DAMAGE_TIME, 5, 4, 8, fcolor_r, 0, 0, 255);
entryFade(DAMAGE_TIME+1, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);

-- ダメージ表示
dealDamage(DAMAGE_TIME + 6);

-- メッセージ表示
showMessageLabel(DAMAGE_TIME + 53);

MIDLE_SCALE = 0.85;
setMoveKey(DAMAGE_TIME + 36, TARGET_ACTOR, -155,  23,  0);   -- 中央位置から
setScaleKey(DAMAGE_TIME + 36, TARGET_ACTOR, MIDLE_SCALE, MIDLE_SCALE, 0);
------------------
-- ふっとび移動
MOVE_END = 55;
LAST_SCALE = 0.75;
setMoveKey(MOVE_END, TARGET_ACTOR, -195,  30,  0);   -- 中央位置から

setScaleKey(MOVE_END, TARGET_ACTOR, LAST_SCALE, LAST_SCALE, 0);
setBgScroll(MOVE_END,8);
-- 立ちモーション
changeAnime(MOVE_END,              0, 0);

-- 最後の処理
SCENE_END = MOVE_END + 55;
setScaleKey(SCENE_END, TARGET_ACTOR, LAST_SCALE, LAST_SCALE, 0);
endPhase(SCENE_END);
