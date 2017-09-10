.class public Lcom/parrot/arsdk/aracademy/ARAcademyRun;
.super Ljava/lang/Object;
.source "ARAcademyRun.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_RUN_AVATAR:Ljava/lang/String; = "avatar"

.field private static final ARACADEMY_RUN_CAPTURES:Ljava/lang/String; = "captures"

.field private static final ARACADEMY_RUN_CONTROLLER_APPLICATION:Ljava/lang/String; = "controller_application"

.field private static final ARACADEMY_RUN_CONTROLLER_MODEL:Ljava/lang/String; = "controller_model"

.field private static final ARACADEMY_RUN_CRASH:Ljava/lang/String; = "crash"

.field private static final ARACADEMY_RUN_DATE:Ljava/lang/String; = "date"

.field private static final ARACADEMY_RUN_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final ARACADEMY_RUN_DUMMY_DATE:Ljava/lang/String; = "dummy_date"

.field private static final ARACADEMY_RUN_GPS_AVAILABLE:Ljava/lang/String; = "gps_available"

.field private static final ARACADEMY_RUN_GPS_LATITUDE:Ljava/lang/String; = "gps_latitude"

.field private static final ARACADEMY_RUN_GPS_LONGITUDE:Ljava/lang/String; = "gps_longitude"

.field private static final ARACADEMY_RUN_GRADE:Ljava/lang/String; = "grade"

.field private static final ARACADEMY_RUN_ID:Ljava/lang/String; = "id"

.field private static final ARACADEMY_RUN_JUMP:Ljava/lang/String; = "jump"

.field private static final ARACADEMY_RUN_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUN_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field private static final ARACADEMY_RUN_PRODUCT_STYLE:Ljava/lang/String; = "product_style"

.field private static final ARACADEMY_RUN_RUN_ORIGIN:Ljava/lang/String; = "run_origin"

.field private static final ARACADEMY_RUN_RUN_TIME:Ljava/lang/String; = "run_time"

.field private static final ARACADEMY_RUN_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final ARACADEMY_RUN_TAG:Ljava/lang/String; = "ARAcademyRun"

.field private static final ARACADEMY_RUN_TOTAL_RUN_TIME:Ljava/lang/String; = "total_run_time"

.field private static final ARACADEMY_RUN_USER:Ljava/lang/String; = "user"

.field private static final ARACADEMY_RUN_UUID:Ljava/lang/String; = "uuid"

.field private static final ARACADEMY_RUN_VIDEOS:Ljava/lang/String; = "videos"

.field private static final ARACADEMY_RUN_VISIBLE:Ljava/lang/String; = "visible"


# instance fields
.field protected runAvatar:Ljava/lang/String;

.field protected runCaptures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;",
            ">;"
        }
    .end annotation
.end field

.field protected runControllerApplication:Ljava/lang/String;

.field protected runControllerModel:Ljava/lang/String;

.field protected runCrash:I

.field protected runDate:Ljava/lang/String;

.field protected runDummyDate:Ljava/util/Date;

.field protected runGpsAvailable:Z

.field protected runGpsLatitude:D

.field protected runGpsLongitude:D

.field protected runGrade:I

.field protected runId:I

.field protected runJump:I

.field protected runProductId:I

.field protected runProductStyle:I

.field protected runRunOrigin:I

.field protected runRunTime:I

.field protected runSerialNumber:Ljava/lang/String;

.field protected runTotalRunTime:I

.field protected runUser:Ljava/lang/String;

.field protected runUuid:Ljava/lang/String;

.field protected runVideos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;",
            ">;"
        }
    .end annotation
.end field

.field protected runVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDate:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUuid:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUser:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runAvatar:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDate:Ljava/lang/String;

    .line 64
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    .line 65
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUuid:Ljava/lang/String;

    .line 66
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    .line 67
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    .line 77
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUser:Ljava/lang/String;

    .line 82
    const-string v4, ""

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runAvatar:Ljava/lang/String;

    .line 99
    const-string v4, "dummy_date"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const-string v4, "dummy_date"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "dateString":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    .line 106
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "id"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    const-string v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runId:I

    .line 111
    :cond_1
    const-string v4, "date"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 113
    const-string v4, "date"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDate:Ljava/lang/String;

    .line 116
    :cond_2
    const-string v4, "product_id"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 118
    const-string v4, "product_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductId:I

    .line 121
    :cond_3
    const-string v4, "serial_number"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    const-string v4, "serial_number"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    .line 126
    :cond_4
    const-string/jumbo v4, "uuid"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 128
    const-string/jumbo v4, "uuid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUuid:Ljava/lang/String;

    .line 131
    :cond_5
    const-string v4, "controller_model"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 133
    const-string v4, "controller_model"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    .line 136
    :cond_6
    const-string v4, "controller_application"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 138
    const-string v4, "controller_application"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    .line 141
    :cond_7
    const-string v4, "product_style"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 143
    const-string v4, "product_style"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductStyle:I

    .line 146
    :cond_8
    const-string v4, "gps_available"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 148
    const-string v4, "gps_available"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsAvailable:Z

    .line 151
    :cond_9
    const-string v4, "gps_latitude"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 153
    const-string v4, "gps_latitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLatitude:D

    .line 156
    :cond_a
    const-string v4, "gps_longitude"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 158
    const-string v4, "gps_longitude"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLongitude:D

    .line 161
    :cond_b
    const-string v4, "run_time"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 163
    const-string v4, "run_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunTime:I

    .line 166
    :cond_c
    const-string/jumbo v4, "total_run_time"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 168
    const-string/jumbo v4, "total_run_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runTotalRunTime:I

    .line 171
    :cond_d
    const-string v4, "run_origin"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 173
    const-string v4, "run_origin"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunOrigin:I

    .line 176
    :cond_e
    const-string v4, "crash"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 178
    const-string v4, "crash"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCrash:I

    .line 181
    :cond_f
    const-string v4, "jump"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 183
    const-string v4, "jump"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runJump:I

    .line 186
    :cond_10
    const-string/jumbo v4, "user"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 188
    const-string/jumbo v4, "user"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUser:Ljava/lang/String;

    .line 191
    :cond_11
    const-string/jumbo v4, "videos"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 193
    const-string/jumbo v4, "videos"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 195
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    .line 196
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_12

    .line 198
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_12
    const-string v4, "captures"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 204
    const-string v4, "captures"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 206
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    .line 207
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_13

    .line 209
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    new-instance v5, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_13
    const-string/jumbo v4, "visible"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 215
    const-string/jumbo v4, "visible"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVisible:Z

    .line 218
    :cond_14
    const-string v4, "grade"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 220
    const-string v4, "grade"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGrade:I

    .line 223
    :cond_15
    const-string v4, "avatar"

    invoke-static {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 225
    const-string v4, "avatar"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runAvatar:Ljava/lang/String;

    .line 228
    :cond_16
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
    .line 462
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .prologue
    .line 807
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 812
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 813
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 815
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 816
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "dateString":Ljava/lang/String;
    const-string v5, "dummy_date"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 820
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v5, "id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 822
    const-string v5, "date"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    const-string v5, "product_id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 826
    const-string v5, "serial_number"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 828
    const-string/jumbo v5, "uuid"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 830
    const-string v5, "controller_model"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 832
    const-string v5, "controller_application"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerApplication()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 834
    const-string v5, "product_style"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductStyle()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 836
    const-string v5, "gps_available"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsAvailable()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 838
    const-string v5, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLatitude()D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 840
    const-string v5, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 842
    const-string v5, "run_time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getRunTime()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 844
    const-string/jumbo v5, "total_run_time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getTotalRunTime()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 846
    const-string v5, "run_origin"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getRunOrigin()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 848
    const-string v5, "crash"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCrash()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 850
    const-string v5, "jump"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getJump()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 852
    const-string/jumbo v5, "user"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    const-string/jumbo v5, "visible"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 856
    const-string v5, "grade"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 858
    const-string v5, "avatar"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :goto_0
    return-object v2

    .line 861
    :catch_0
    move-exception v1

    .line 863
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .prologue
    .line 676
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 681
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 682
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 686
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 687
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "dateString":Ljava/lang/String;
    const-string v5, "dummy_date"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 694
    :cond_2
    const-string v5, "id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 697
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_5

    .line 699
    :cond_4
    const-string v5, "date"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v6

    if-eq v5, v6, :cond_7

    .line 704
    :cond_6
    const-string v5, "product_id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 707
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_9

    .line 709
    :cond_8
    const-string v5, "serial_number"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_b

    .line 714
    :cond_a
    const-string/jumbo v5, "uuid"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 717
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerModel()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_d

    .line 719
    :cond_c
    const-string v5, "controller_model"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerModel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerApplication()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerApplication()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_f

    .line 724
    :cond_e
    const-string v5, "controller_application"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerApplication()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 727
    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductStyle()I

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductStyle()I

    move-result v6

    if-eq v5, v6, :cond_11

    .line 729
    :cond_10
    const-string v5, "product_style"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductStyle()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 732
    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsAvailable()Z

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsAvailable()Z

    move-result v6

    if-eq v5, v6, :cond_13

    .line 734
    :cond_12
    const-string v5, "gps_available"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsAvailable()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 737
    :cond_13
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLatitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLatitude()D

    move-result-wide v8

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_15

    .line 739
    :cond_14
    const-string v5, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLatitude()D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 742
    :cond_15
    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLongitude()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLongitude()D

    move-result-wide v8

    cmpl-double v5, v6, v8

    if-eqz v5, :cond_17

    .line 744
    :cond_16
    const-string v5, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 747
    :cond_17
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getRunTime()I

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getRunTime()I

    move-result v6

    if-eq v5, v6, :cond_19

    .line 749
    :cond_18
    const-string v5, "run_time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getRunTime()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 752
    :cond_19
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getTotalRunTime()I

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getTotalRunTime()I

    move-result v6

    if-eq v5, v6, :cond_1b

    .line 754
    :cond_1a
    const-string/jumbo v5, "total_run_time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getTotalRunTime()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 757
    :cond_1b
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getRunOrigin()I

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getRunOrigin()I

    move-result v6

    if-eq v5, v6, :cond_1d

    .line 759
    :cond_1c
    const-string v5, "run_origin"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getRunOrigin()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 762
    :cond_1d
    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCrash()I

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCrash()I

    move-result v6

    if-eq v5, v6, :cond_1f

    .line 764
    :cond_1e
    const-string v5, "crash"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCrash()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 767
    :cond_1f
    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getJump()I

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getJump()I

    move-result v6

    if-eq v5, v6, :cond_21

    .line 769
    :cond_20
    const-string v5, "jump"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getJump()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 772
    :cond_21
    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_23

    .line 774
    :cond_22
    const-string/jumbo v5, "user"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 777
    :cond_23
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v6

    if-eq v5, v6, :cond_25

    .line 779
    :cond_24
    const-string/jumbo v5, "visible"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 782
    :cond_25
    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v6

    if-eq v5, v6, :cond_27

    .line 784
    :cond_26
    const-string v5, "grade"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 787
    :cond_27
    if-eqz p1, :cond_28

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v6

    if-eq v5, v6, :cond_29

    .line 789
    :cond_28
    const-string v5, "avatar"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_29
    :goto_0
    return-object v2

    .line 793
    :catch_0
    move-exception v1

    .line 795
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 477
    const/4 v3, 0x0

    .line 481
    .local v3, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    move-object v3, v0

    .line 483
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    if-eqz v5, :cond_0

    .line 485
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    .line 487
    :cond_0
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runId:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runId:I

    .line 488
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDate:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDate:Ljava/lang/String;

    .line 489
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductId:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductId:I

    .line 490
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    .line 491
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUuid:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUuid:Ljava/lang/String;

    .line 492
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    .line 493
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    .line 494
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductStyle:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductStyle:I

    .line 495
    iget-boolean v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsAvailable:Z

    iput-boolean v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsAvailable:Z

    .line 496
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLatitude:D

    iput-wide v6, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLatitude:D

    .line 497
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLongitude:D

    iput-wide v6, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLongitude:D

    .line 498
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunTime:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunTime:I

    .line 499
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runTotalRunTime:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runTotalRunTime:I

    .line 500
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunOrigin:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunOrigin:I

    .line 501
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCrash:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCrash:I

    .line 502
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runJump:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runJump:I

    .line 503
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUser:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUser:Ljava/lang/String;

    .line 505
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 507
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    .line 509
    iget-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    .line 511
    .local v4, "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    iget-object v7, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    .end local v4    # "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 533
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_1
    return-object v3

    .line 515
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 517
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    .line 519
    iget-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;

    .line 521
    .local v4, "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;
    iget-object v7, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 524
    .end local v4    # "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;
    :cond_2
    iget-boolean v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVisible:Z

    iput-boolean v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVisible:Z

    .line 525
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGrade:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGrade:I

    .line 526
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runAvatar:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runAvatar:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 538
    const/4 v0, 0x1

    .line 540
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    if-nez v3, :cond_2

    .line 542
    :cond_0
    const/4 v0, 0x0

    .line 665
    :cond_1
    :goto_0
    return v0

    .line 544
    :cond_2
    if-ne p1, p0, :cond_3

    .line 546
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 551
    check-cast v2, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .line 552
    .local v2, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 553
    :cond_4
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDummyDate()Ljava/util/Date;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    if-eqz v3, :cond_6

    .line 555
    :cond_5
    const/4 v0, 0x0

    .line 557
    :cond_6
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runId:I

    if-eq v3, v4, :cond_7

    .line 559
    const/4 v0, 0x0

    .line 561
    :cond_7
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getDate()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDate:Ljava/lang/String;

    if-eq v3, v4, :cond_8

    .line 563
    const/4 v0, 0x0

    .line 565
    :cond_8
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductId()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductId:I

    if-eq v3, v4, :cond_9

    .line 567
    const/4 v0, 0x0

    .line 569
    :cond_9
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    if-eq v3, v4, :cond_a

    .line 571
    const/4 v0, 0x0

    .line 573
    :cond_a
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUuid:Ljava/lang/String;

    if-eq v3, v4, :cond_b

    .line 575
    const/4 v0, 0x0

    .line 577
    :cond_b
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerModel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    if-eq v3, v4, :cond_c

    .line 579
    const/4 v0, 0x0

    .line 581
    :cond_c
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getControllerApplication()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    if-eq v3, v4, :cond_d

    .line 583
    const/4 v0, 0x0

    .line 585
    :cond_d
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getProductStyle()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductStyle:I

    if-eq v3, v4, :cond_e

    .line 587
    const/4 v0, 0x0

    .line 589
    :cond_e
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsAvailable()Z

    move-result v3

    iget-boolean v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsAvailable:Z

    if-eq v3, v4, :cond_f

    .line 591
    const/4 v0, 0x0

    .line 593
    :cond_f
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLatitude()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLatitude:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_10

    .line 595
    const/4 v0, 0x0

    .line 597
    :cond_10
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLongitude()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLongitude:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_11

    .line 599
    const/4 v0, 0x0

    .line 601
    :cond_11
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getRunTime()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunTime:I

    if-eq v3, v4, :cond_12

    .line 603
    const/4 v0, 0x0

    .line 605
    :cond_12
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getTotalRunTime()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runTotalRunTime:I

    if-eq v3, v4, :cond_13

    .line 607
    const/4 v0, 0x0

    .line 609
    :cond_13
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getRunOrigin()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunOrigin:I

    if-eq v3, v4, :cond_14

    .line 611
    const/4 v0, 0x0

    .line 613
    :cond_14
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCrash()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCrash:I

    if-eq v3, v4, :cond_15

    .line 615
    const/4 v0, 0x0

    .line 617
    :cond_15
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getJump()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runJump:I

    if-eq v3, v4, :cond_16

    .line 619
    const/4 v0, 0x0

    .line 621
    :cond_16
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUser:Ljava/lang/String;

    if-eq v3, v4, :cond_17

    .line 623
    const/4 v0, 0x0

    .line 625
    :cond_17
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_18

    .line 626
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1a

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    if-eqz v3, :cond_1a

    .line 628
    :cond_18
    iget-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    .line 630
    .local v1, "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    invoke-virtual {v1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 632
    const/4 v0, 0x0

    .line 638
    .end local v1    # "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    :cond_1a
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1b

    .line 639
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1d

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    if-eqz v3, :cond_1d

    .line 641
    :cond_1b
    iget-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;

    .line 643
    .local v1, "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;
    invoke-virtual {v1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 645
    const/4 v0, 0x0

    .line 651
    .end local v1    # "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;
    :cond_1d
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v3

    iget-boolean v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVisible:Z

    if-eq v3, v4, :cond_1e

    .line 653
    const/4 v0, 0x0

    .line 655
    :cond_1e
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGrade:I

    if-eq v3, v4, :cond_1f

    .line 657
    const/4 v0, 0x0

    .line 659
    :cond_1f
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runAvatar:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    .line 661
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runAvatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    return-object v0
.end method

.method public getControllerApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    return-object v0
.end method

.method public getControllerModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    return-object v0
.end method

.method public getCrash()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCrash:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDummyDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    return-object v0
.end method

.method public getGpsAvailable()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsAvailable:Z

    return v0
.end method

.method public getGpsLatitude()D
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLatitude:D

    return-wide v0
.end method

.method public getGpsLongitude()D
    .locals 2

    .prologue
    .line 342
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLongitude:D

    return-wide v0
.end method

.method public getGrade()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGrade:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runId:I

    return v0
.end method

.method public getJump()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runJump:I

    return v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductId:I

    return v0
.end method

.method public getProductStyle()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductStyle:I

    return v0
.end method

.method public getRunOrigin()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunOrigin:I

    return v0
.end method

.method public getRunTime()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunTime:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRunTime()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runTotalRunTime:I

    return v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUser:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVisible:Z

    return v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DummyDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SerialNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ControllerModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ControllerApplication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsLatitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsLongitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RunTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TotalRunTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runTotalRunTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RunOrigin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Crash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCrash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Jump: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runJump:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Videos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Captures: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Grade: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGrade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Avatar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runAvatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0
    .param p1, "Avatar"    # Ljava/lang/String;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runAvatar:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setCaptures(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "Captures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;>;"
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCaptures:Ljava/util/List;

    .line 428
    return-void
.end method

.method public setControllerApplication(Ljava/lang/String;)V
    .locals 0
    .param p1, "ControllerApplication"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerApplication:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setControllerModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "ControllerModel"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runControllerModel:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setCrash(I)V
    .locals 0
    .param p1, "Crash"    # I

    .prologue
    .line 387
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runCrash:I

    .line 388
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "Date"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDate:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setDummyDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "DummyDate"    # Ljava/util/Date;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runDummyDate:Ljava/util/Date;

    .line 238
    return-void
.end method

.method public setGpsAvailable(Z)V
    .locals 0
    .param p1, "GpsAvailable"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsAvailable:Z

    .line 328
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 1
    .param p1, "GpsLatitude"    # D

    .prologue
    .line 337
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLatitude:D

    .line 338
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 1
    .param p1, "GpsLongitude"    # D

    .prologue
    .line 347
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGpsLongitude:D

    .line 348
    return-void
.end method

.method public setGrade(I)V
    .locals 0
    .param p1, "Grade"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runGrade:I

    .line 448
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "Id"    # I

    .prologue
    .line 247
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runId:I

    .line 248
    return-void
.end method

.method public setJump(I)V
    .locals 0
    .param p1, "Jump"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runJump:I

    .line 398
    return-void
.end method

.method public setProductId(I)V
    .locals 0
    .param p1, "ProductId"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductId:I

    .line 268
    return-void
.end method

.method public setProductStyle(I)V
    .locals 0
    .param p1, "ProductStyle"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runProductStyle:I

    .line 318
    return-void
.end method

.method public setRunOrigin(I)V
    .locals 0
    .param p1, "RunOrigin"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunOrigin:I

    .line 378
    return-void
.end method

.method public setRunTime(I)V
    .locals 0
    .param p1, "RunTime"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runRunTime:I

    .line 358
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "SerialNumber"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runSerialNumber:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setTotalRunTime(I)V
    .locals 0
    .param p1, "TotalRunTime"    # I

    .prologue
    .line 367
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runTotalRunTime:I

    .line 368
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "User"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUser:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "Uuid"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runUuid:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setVideos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "Videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;>;"
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVideos:Ljava/util/List;

    .line 418
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "Visible"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->runVisible:Z

    .line 438
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyRun{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->membersToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
