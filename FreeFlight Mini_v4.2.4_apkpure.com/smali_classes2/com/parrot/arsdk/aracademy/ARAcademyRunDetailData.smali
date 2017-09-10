.class public Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
.super Ljava/lang/Object;
.source "ARAcademyRunDetailData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_RUNDETAILDATA_ALERT_STATE:Ljava/lang/String; = "alert_state"

.field private static final ARACADEMY_RUNDETAILDATA_ALTITUDE:Ljava/lang/String; = "altitude"

.field private static final ARACADEMY_RUNDETAILDATA_ANGLE_PHI:Ljava/lang/String; = "angle_phi"

.field private static final ARACADEMY_RUNDETAILDATA_ANGLE_PSI:Ljava/lang/String; = "angle_psi"

.field private static final ARACADEMY_RUNDETAILDATA_ANGLE_THETA:Ljava/lang/String; = "angle_theta"

.field private static final ARACADEMY_RUNDETAILDATA_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final ARACADEMY_RUNDETAILDATA_CONTROLLER_GPS_LATITUDE:Ljava/lang/String; = "controller_gps_latitude"

.field private static final ARACADEMY_RUNDETAILDATA_CONTROLLER_GPS_LONGITUDE:Ljava/lang/String; = "controller_gps_longitude"

.field private static final ARACADEMY_RUNDETAILDATA_FLIP_TYPE:Ljava/lang/String; = "flip_type"

.field private static final ARACADEMY_RUNDETAILDATA_FLYING_STATE:Ljava/lang/String; = "flying_state"

.field private static final ARACADEMY_RUNDETAILDATA_JUMP_TYPE:Ljava/lang/String; = "jump_type"

.field private static final ARACADEMY_RUNDETAILDATA_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNDETAILDATA_PRODUCT_GPS_AVAILABLE:Ljava/lang/String; = "product_gps_available"

.field private static final ARACADEMY_RUNDETAILDATA_PRODUCT_GPS_LATITUDE:Ljava/lang/String; = "product_gps_latitude"

.field private static final ARACADEMY_RUNDETAILDATA_PRODUCT_GPS_LONGITUDE:Ljava/lang/String; = "product_gps_longitude"

.field private static final ARACADEMY_RUNDETAILDATA_PRODUCT_GPS_POSITION_ERROR:Ljava/lang/String; = "product_gps_position_error"

.field private static final ARACADEMY_RUNDETAILDATA_SPEED:Ljava/lang/String; = "speed"

.field private static final ARACADEMY_RUNDETAILDATA_SPEED_VX:Ljava/lang/String; = "speed_vx"

.field private static final ARACADEMY_RUNDETAILDATA_SPEED_VY:Ljava/lang/String; = "speed_vy"

.field private static final ARACADEMY_RUNDETAILDATA_SPEED_VZ:Ljava/lang/String; = "speed_vz"

.field private static final ARACADEMY_RUNDETAILDATA_TAG:Ljava/lang/String; = "ARAcademyRunDetailData"

.field private static final ARACADEMY_RUNDETAILDATA_TIME:Ljava/lang/String; = "time"

.field private static final ARACADEMY_RUNDETAILDATA_WIFI_SIGNAL:Ljava/lang/String; = "wifi_signal"


# instance fields
.field protected runDetailDataAlertState:I

.field protected runDetailDataAltitude:I

.field protected runDetailDataAnglePhi:D

.field protected runDetailDataAnglePsi:D

.field protected runDetailDataAngleTheta:D

.field protected runDetailDataBatteryLevel:I

.field protected runDetailDataControllerGpsLatitude:D

.field protected runDetailDataControllerGpsLongitude:D

.field protected runDetailDataFlipType:I

.field protected runDetailDataFlyingState:I

.field protected runDetailDataJumpType:I

.field protected runDetailDataProductGpsAvailable:Z

.field protected runDetailDataProductGpsLatitude:D

.field protected runDetailDataProductGpsLongitude:D

.field protected runDetailDataProductGpsPositionError:I

.field protected runDetailDataSpeed:D

.field protected runDetailDataSpeedVx:D

.field protected runDetailDataSpeedVy:D

.field protected runDetailDataSpeedVz:D

.field protected runDetailDataTime:I

.field protected runDetailDataWifiSignal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "members"    # Lorg/json/JSONArray;
    .param p2, "data"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_15

    .line 205
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "memberName":Ljava/lang/String;
    const-string v2, "time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataTime:I

    .line 203
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    const-string v2, "battery_level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataBatteryLevel:I

    goto :goto_1

    .line 215
    :cond_2
    const-string v2, "controller_gps_longitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLongitude:D

    goto :goto_1

    .line 219
    :cond_3
    const-string v2, "controller_gps_latitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLatitude:D

    goto :goto_1

    .line 223
    :cond_4
    const-string v2, "flying_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlyingState:I

    goto :goto_1

    .line 227
    :cond_5
    const-string v2, "alert_state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 229
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAlertState:I

    goto :goto_1

    .line 231
    :cond_6
    const-string v2, "wifi_signal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 233
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataWifiSignal:I

    goto :goto_1

    .line 235
    :cond_7
    const-string v2, "product_gps_available"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 237
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsAvailable:Z

    goto :goto_1

    .line 239
    :cond_8
    const-string v2, "product_gps_longitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 241
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLongitude:D

    goto :goto_1

    .line 243
    :cond_9
    const-string v2, "product_gps_latitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 245
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLatitude:D

    goto/16 :goto_1

    .line 247
    :cond_a
    const-string v2, "product_gps_position_error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 249
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsPositionError:I

    goto/16 :goto_1

    .line 251
    :cond_b
    const-string v2, "speed_vx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 253
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVx:D

    goto/16 :goto_1

    .line 255
    :cond_c
    const-string v2, "speed_vy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 257
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVy:D

    goto/16 :goto_1

    .line 259
    :cond_d
    const-string v2, "speed_vz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 261
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVz:D

    goto/16 :goto_1

    .line 263
    :cond_e
    const-string v2, "angle_phi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 265
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePhi:D

    goto/16 :goto_1

    .line 267
    :cond_f
    const-string v2, "angle_theta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 269
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAngleTheta:D

    goto/16 :goto_1

    .line 271
    :cond_10
    const-string v2, "angle_psi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 273
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePsi:D

    goto/16 :goto_1

    .line 275
    :cond_11
    const-string v2, "altitude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 277
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAltitude:I

    goto/16 :goto_1

    .line 279
    :cond_12
    const-string v2, "flip_type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 281
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlipType:I

    goto/16 :goto_1

    .line 283
    :cond_13
    const-string v2, "speed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 285
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeed:D

    goto/16 :goto_1

    .line 287
    :cond_14
    const-string v2, "jump_type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataJumpType:I

    goto/16 :goto_1

    .line 292
    .end local v1    # "memberName":Ljava/lang/String;
    :cond_15
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataTime:I

    .line 93
    :cond_0
    const-string v0, "battery_level"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    const-string v0, "battery_level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataBatteryLevel:I

    .line 98
    :cond_1
    const-string v0, "controller_gps_longitude"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    const-string v0, "controller_gps_longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLongitude:D

    .line 103
    :cond_2
    const-string v0, "controller_gps_latitude"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    const-string v0, "controller_gps_latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLatitude:D

    .line 108
    :cond_3
    const-string v0, "flying_state"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    const-string v0, "flying_state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlyingState:I

    .line 113
    :cond_4
    const-string v0, "alert_state"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    const-string v0, "alert_state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAlertState:I

    .line 118
    :cond_5
    const-string v0, "wifi_signal"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    const-string v0, "wifi_signal"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataWifiSignal:I

    .line 123
    :cond_6
    const-string v0, "product_gps_available"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    const-string v0, "product_gps_available"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsAvailable:Z

    .line 128
    :cond_7
    const-string v0, "product_gps_longitude"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 130
    const-string v0, "product_gps_longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLongitude:D

    .line 133
    :cond_8
    const-string v0, "product_gps_latitude"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    const-string v0, "product_gps_latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLatitude:D

    .line 138
    :cond_9
    const-string v0, "product_gps_position_error"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 140
    const-string v0, "product_gps_position_error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsPositionError:I

    .line 143
    :cond_a
    const-string v0, "speed_vx"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 145
    const-string v0, "speed_vx"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVx:D

    .line 148
    :cond_b
    const-string v0, "speed_vy"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 150
    const-string v0, "speed_vy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVy:D

    .line 153
    :cond_c
    const-string v0, "speed_vz"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 155
    const-string v0, "speed_vz"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVz:D

    .line 158
    :cond_d
    const-string v0, "angle_phi"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 160
    const-string v0, "angle_phi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePhi:D

    .line 163
    :cond_e
    const-string v0, "angle_theta"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 165
    const-string v0, "angle_theta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAngleTheta:D

    .line 168
    :cond_f
    const-string v0, "angle_psi"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 170
    const-string v0, "angle_psi"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePsi:D

    .line 173
    :cond_10
    const-string v0, "altitude"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 175
    const-string v0, "altitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAltitude:I

    .line 178
    :cond_11
    const-string v0, "flip_type"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 180
    const-string v0, "flip_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlipType:I

    .line 183
    :cond_12
    const-string v0, "speed"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 185
    const-string v0, "speed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeed:D

    .line 188
    :cond_13
    const-string v0, "jump_type"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 190
    const-string v0, "jump_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataJumpType:I

    .line 193
    :cond_14
    return-void
.end method

.method private static checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .prologue
    .line 794
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 799
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getTime()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 801
    const-string v2, "battery_level"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 803
    const-string v2, "controller_gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getControllerGpsLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 805
    const-string v2, "controller_gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getControllerGpsLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 807
    const-string v2, "flying_state"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getFlyingState()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 809
    const-string v2, "alert_state"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAlertState()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 811
    const-string v2, "wifi_signal"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getWifiSignal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 813
    const-string v2, "product_gps_available"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsAvailable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 815
    const-string v2, "product_gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 817
    const-string v2, "product_gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 819
    const-string v2, "product_gps_position_error"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsPositionError()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 821
    const-string v2, "speed_vx"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVx()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 823
    const-string v2, "speed_vy"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVy()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 825
    const-string v2, "speed_vz"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVz()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 827
    const-string v2, "angle_phi"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAnglePhi()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 829
    const-string v2, "angle_theta"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAngleTheta()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 831
    const-string v2, "angle_psi"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAnglePsi()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 833
    const-string v2, "altitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAltitude()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 835
    const-string v2, "flip_type"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getFlipType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 837
    const-string v2, "speed"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeed()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 839
    const-string v2, "jump_type"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getJumpType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-object v1

    .line 842
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .prologue
    .line 669
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 674
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getTime()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getTime()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 676
    :cond_0
    const-string v2, "time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getTime()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 679
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 681
    :cond_2
    const-string v2, "battery_level"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 684
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getControllerGpsLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getControllerGpsLongitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    .line 686
    :cond_4
    const-string v2, "controller_gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getControllerGpsLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 689
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getControllerGpsLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getControllerGpsLatitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_7

    .line 691
    :cond_6
    const-string v2, "controller_gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getControllerGpsLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 694
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getFlyingState()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getFlyingState()I

    move-result v3

    if-eq v2, v3, :cond_9

    .line 696
    :cond_8
    const-string v2, "flying_state"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getFlyingState()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 699
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAlertState()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAlertState()I

    move-result v3

    if-eq v2, v3, :cond_b

    .line 701
    :cond_a
    const-string v2, "alert_state"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAlertState()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 704
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getWifiSignal()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getWifiSignal()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 706
    :cond_c
    const-string v2, "wifi_signal"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getWifiSignal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 709
    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsAvailable()Z

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsAvailable()Z

    move-result v3

    if-eq v2, v3, :cond_f

    .line 711
    :cond_e
    const-string v2, "product_gps_available"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsAvailable()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 714
    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_11

    .line 716
    :cond_10
    const-string v2, "product_gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 719
    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_13

    .line 721
    :cond_12
    const-string v2, "product_gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 724
    :cond_13
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsPositionError()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsPositionError()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 726
    :cond_14
    const-string v2, "product_gps_position_error"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsPositionError()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 729
    :cond_15
    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVx()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVx()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_17

    .line 731
    :cond_16
    const-string v2, "speed_vx"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVx()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 734
    :cond_17
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVy()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVy()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_19

    .line 736
    :cond_18
    const-string v2, "speed_vy"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVy()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 739
    :cond_19
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVz()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVz()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1b

    .line 741
    :cond_1a
    const-string v2, "speed_vz"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVz()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 744
    :cond_1b
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAnglePhi()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAnglePhi()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1d

    .line 746
    :cond_1c
    const-string v2, "angle_phi"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAnglePhi()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 749
    :cond_1d
    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAngleTheta()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAngleTheta()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1f

    .line 751
    :cond_1e
    const-string v2, "angle_theta"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAngleTheta()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 754
    :cond_1f
    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAnglePsi()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAnglePsi()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_21

    .line 756
    :cond_20
    const-string v2, "angle_psi"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAnglePsi()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 759
    :cond_21
    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAltitude()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAltitude()I

    move-result v3

    if-eq v2, v3, :cond_23

    .line 761
    :cond_22
    const-string v2, "altitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAltitude()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 764
    :cond_23
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getFlipType()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getFlipType()I

    move-result v3

    if-eq v2, v3, :cond_25

    .line 766
    :cond_24
    const-string v2, "flip_type"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getFlipType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 769
    :cond_25
    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeed()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeed()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_27

    .line 771
    :cond_26
    const-string v2, "speed"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeed()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 774
    :cond_27
    if-eqz p1, :cond_28

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getJumpType()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getJumpType()I

    move-result v3

    if-eq v2, v3, :cond_29

    .line 776
    :cond_28
    const-string v2, "jump_type"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getJumpType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 785
    :cond_29
    :goto_0
    return-object v1

    .line 780
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 521
    const/4 v3, 0x0

    .line 525
    .local v3, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    move-object v3, v0

    .line 526
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataTime:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataTime:I

    .line 527
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataBatteryLevel:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataBatteryLevel:I

    .line 528
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLongitude:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLongitude:D

    .line 529
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLatitude:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLatitude:D

    .line 530
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlyingState:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlyingState:I

    .line 531
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAlertState:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAlertState:I

    .line 532
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataWifiSignal:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataWifiSignal:I

    .line 533
    iget-boolean v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsAvailable:Z

    iput-boolean v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsAvailable:Z

    .line 534
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLongitude:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLongitude:D

    .line 535
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLatitude:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLatitude:D

    .line 536
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsPositionError:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsPositionError:I

    .line 537
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVx:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVx:D

    .line 538
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVy:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVy:D

    .line 539
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVz:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVz:D

    .line 540
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePhi:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePhi:D

    .line 541
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAngleTheta:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAngleTheta:D

    .line 542
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePsi:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePsi:D

    .line 543
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAltitude:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAltitude:I

    .line 544
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlipType:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlipType:I

    .line 545
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeed:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeed:D

    .line 546
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataJumpType:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataJumpType:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return-object v3

    .line 548
    :catch_0
    move-exception v2

    .line 550
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 558
    const/4 v0, 0x1

    .line 560
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    if-nez v2, :cond_2

    .line 562
    :cond_0
    const/4 v0, 0x0

    .line 658
    :cond_1
    :goto_0
    return v0

    .line 564
    :cond_2
    if-ne p1, p0, :cond_3

    .line 566
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 571
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 572
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getTime()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataTime:I

    if-eq v2, v3, :cond_4

    .line 574
    const/4 v0, 0x0

    .line 576
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataBatteryLevel:I

    if-eq v2, v3, :cond_5

    .line 578
    const/4 v0, 0x0

    .line 580
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getControllerGpsLongitude()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLongitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    .line 582
    const/4 v0, 0x0

    .line 584
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getControllerGpsLatitude()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLatitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_7

    .line 586
    const/4 v0, 0x0

    .line 588
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getFlyingState()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlyingState:I

    if-eq v2, v3, :cond_8

    .line 590
    const/4 v0, 0x0

    .line 592
    :cond_8
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAlertState()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAlertState:I

    if-eq v2, v3, :cond_9

    .line 594
    const/4 v0, 0x0

    .line 596
    :cond_9
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getWifiSignal()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataWifiSignal:I

    if-eq v2, v3, :cond_a

    .line 598
    const/4 v0, 0x0

    .line 600
    :cond_a
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsAvailable()Z

    move-result v2

    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsAvailable:Z

    if-eq v2, v3, :cond_b

    .line 602
    const/4 v0, 0x0

    .line 604
    :cond_b
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLongitude()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLongitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_c

    .line 606
    const/4 v0, 0x0

    .line 608
    :cond_c
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsLatitude()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLatitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_d

    .line 610
    const/4 v0, 0x0

    .line 612
    :cond_d
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getProductGpsPositionError()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsPositionError:I

    if-eq v2, v3, :cond_e

    .line 614
    const/4 v0, 0x0

    .line 616
    :cond_e
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVx()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVx:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_f

    .line 618
    const/4 v0, 0x0

    .line 620
    :cond_f
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVy()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVy:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_10

    .line 622
    const/4 v0, 0x0

    .line 624
    :cond_10
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeedVz()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVz:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_11

    .line 626
    const/4 v0, 0x0

    .line 628
    :cond_11
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAnglePhi()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePhi:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_12

    .line 630
    const/4 v0, 0x0

    .line 632
    :cond_12
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAngleTheta()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAngleTheta:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_13

    .line 634
    const/4 v0, 0x0

    .line 636
    :cond_13
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAnglePsi()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePsi:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_14

    .line 638
    const/4 v0, 0x0

    .line 640
    :cond_14
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getAltitude()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAltitude:I

    if-eq v2, v3, :cond_15

    .line 642
    const/4 v0, 0x0

    .line 644
    :cond_15
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getFlipType()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlipType:I

    if-eq v2, v3, :cond_16

    .line 646
    const/4 v0, 0x0

    .line 648
    :cond_16
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getSpeed()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeed:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_17

    .line 650
    const/4 v0, 0x0

    .line 652
    :cond_17
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getJumpType()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataJumpType:I

    if-eq v2, v3, :cond_1

    .line 654
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getAlertState()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAlertState:I

    return v0
.end method

.method public getAltitude()I
    .locals 1

    .prologue
    .line 466
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAltitude:I

    return v0
.end method

.method public getAnglePhi()D
    .locals 2

    .prologue
    .line 436
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePhi:D

    return-wide v0
.end method

.method public getAnglePsi()D
    .locals 2

    .prologue
    .line 456
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePsi:D

    return-wide v0
.end method

.method public getAngleTheta()D
    .locals 2

    .prologue
    .line 446
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAngleTheta:D

    return-wide v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataBatteryLevel:I

    return v0
.end method

.method public getControllerGpsLatitude()D
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLatitude:D

    return-wide v0
.end method

.method public getControllerGpsLongitude()D
    .locals 2

    .prologue
    .line 316
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLongitude:D

    return-wide v0
.end method

.method public getFlipType()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlipType:I

    return v0
.end method

.method public getFlyingState()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlyingState:I

    return v0
.end method

.method public getJumpType()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataJumpType:I

    return v0
.end method

.method public getProductGpsAvailable()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsAvailable:Z

    return v0
.end method

.method public getProductGpsLatitude()D
    .locals 2

    .prologue
    .line 386
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLatitude:D

    return-wide v0
.end method

.method public getProductGpsLongitude()D
    .locals 2

    .prologue
    .line 376
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLongitude:D

    return-wide v0
.end method

.method public getProductGpsPositionError()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsPositionError:I

    return v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 486
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeed:D

    return-wide v0
.end method

.method public getSpeedVx()D
    .locals 2

    .prologue
    .line 406
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVx:D

    return-wide v0
.end method

.method public getSpeedVy()D
    .locals 2

    .prologue
    .line 416
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVy:D

    return-wide v0
.end method

.method public getSpeedVz()D
    .locals 2

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVz:D

    return-wide v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataTime:I

    return v0
.end method

.method public getWifiSignal()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataWifiSignal:I

    return v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", BatteryLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ControllerGpsLongitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ControllerGpsLatitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FlyingState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlyingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AlertState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAlertState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", WifiSignal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataWifiSignal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductGpsAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductGpsLongitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductGpsLatitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductGpsPositionError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsPositionError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SpeedVx: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVx:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SpeedVy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVy:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SpeedVz: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVz:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AnglePhi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePhi:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AngleTheta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAngleTheta:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AnglePsi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePsi:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Altitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAltitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FlipType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlipType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Speed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeed:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", JumpType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataJumpType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlertState(I)V
    .locals 0
    .param p1, "AlertState"    # I

    .prologue
    .line 351
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAlertState:I

    .line 352
    return-void
.end method

.method public setAltitude(I)V
    .locals 0
    .param p1, "Altitude"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAltitude:I

    .line 472
    return-void
.end method

.method public setAnglePhi(D)V
    .locals 1
    .param p1, "AnglePhi"    # D

    .prologue
    .line 441
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePhi:D

    .line 442
    return-void
.end method

.method public setAnglePsi(D)V
    .locals 1
    .param p1, "AnglePsi"    # D

    .prologue
    .line 461
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAnglePsi:D

    .line 462
    return-void
.end method

.method public setAngleTheta(D)V
    .locals 1
    .param p1, "AngleTheta"    # D

    .prologue
    .line 451
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataAngleTheta:D

    .line 452
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 0
    .param p1, "BatteryLevel"    # I

    .prologue
    .line 311
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataBatteryLevel:I

    .line 312
    return-void
.end method

.method public setControllerGpsLatitude(D)V
    .locals 1
    .param p1, "ControllerGpsLatitude"    # D

    .prologue
    .line 331
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLatitude:D

    .line 332
    return-void
.end method

.method public setControllerGpsLongitude(D)V
    .locals 1
    .param p1, "ControllerGpsLongitude"    # D

    .prologue
    .line 321
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataControllerGpsLongitude:D

    .line 322
    return-void
.end method

.method public setFlipType(I)V
    .locals 0
    .param p1, "FlipType"    # I

    .prologue
    .line 481
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlipType:I

    .line 482
    return-void
.end method

.method public setFlyingState(I)V
    .locals 0
    .param p1, "FlyingState"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataFlyingState:I

    .line 342
    return-void
.end method

.method public setJumpType(I)V
    .locals 0
    .param p1, "JumpType"    # I

    .prologue
    .line 501
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataJumpType:I

    .line 502
    return-void
.end method

.method public setProductGpsAvailable(Z)V
    .locals 0
    .param p1, "ProductGpsAvailable"    # Z

    .prologue
    .line 371
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsAvailable:Z

    .line 372
    return-void
.end method

.method public setProductGpsLatitude(D)V
    .locals 1
    .param p1, "ProductGpsLatitude"    # D

    .prologue
    .line 391
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLatitude:D

    .line 392
    return-void
.end method

.method public setProductGpsLongitude(D)V
    .locals 1
    .param p1, "ProductGpsLongitude"    # D

    .prologue
    .line 381
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsLongitude:D

    .line 382
    return-void
.end method

.method public setProductGpsPositionError(I)V
    .locals 0
    .param p1, "ProductGpsPositionError"    # I

    .prologue
    .line 401
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataProductGpsPositionError:I

    .line 402
    return-void
.end method

.method public setSpeed(D)V
    .locals 1
    .param p1, "Speed"    # D

    .prologue
    .line 491
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeed:D

    .line 492
    return-void
.end method

.method public setSpeedVx(D)V
    .locals 1
    .param p1, "SpeedVx"    # D

    .prologue
    .line 411
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVx:D

    .line 412
    return-void
.end method

.method public setSpeedVy(D)V
    .locals 1
    .param p1, "SpeedVy"    # D

    .prologue
    .line 421
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVy:D

    .line 422
    return-void
.end method

.method public setSpeedVz(D)V
    .locals 1
    .param p1, "SpeedVz"    # D

    .prologue
    .line 431
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataSpeedVz:D

    .line 432
    return-void
.end method

.method public setTime(I)V
    .locals 0
    .param p1, "Time"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataTime:I

    .line 302
    return-void
.end method

.method public setWifiSignal(I)V
    .locals 0
    .param p1, "WifiSignal"    # I

    .prologue
    .line 361
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->runDetailDataWifiSignal:I

    .line 362
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyRunDetailData{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->membersToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
