DELETE FROM TRAIN.TRAIN;
DELETE FROM TRAIN.COMPARTMENT;



INSERT INTO TRAIN.TRAIN (TRAIN_ID, TRAIN_NAME, TRAIN_NUMBER, LAST_SERVICED_DATE, LAST_MODIFIED_DATETIME) VALUES (1001 ,'RAJDHANI EXPRESS', 500010,  CURRENT_DATE     ,CURRENT_DATE);
INSERT INTO TRAIN.TRAIN (TRAIN_ID, TRAIN_NAME, TRAIN_NUMBER, LAST_SERVICED_DATE, LAST_MODIFIED_DATETIME) VALUES (1002 ,'SHATABDI',         500011,  CURRENT_DATE     ,CURRENT_DATE);
INSERT INTO TRAIN.TRAIN (TRAIN_ID, TRAIN_NAME, TRAIN_NUMBER, LAST_SERVICED_DATE, LAST_MODIFIED_DATETIME) VALUES (1003 ,'GARIB RATH',       500012,  CURRENT_DATE     ,CURRENT_DATE);
INSERT INTO TRAIN.TRAIN (TRAIN_ID, TRAIN_NAME, TRAIN_NUMBER, LAST_SERVICED_DATE, LAST_MODIFIED_DATETIME) VALUES (1004 ,'INTERCITY',        500013,  CURRENT_DATE     ,CURRENT_DATE);


COMMIT;
