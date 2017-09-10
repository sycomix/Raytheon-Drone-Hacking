.class public Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
.super Ljava/lang/Object;
.source "ARAcademyDrone.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_DRONE_DEVICE:Ljava/lang/String; = "device"

.field private static final ARACADEMY_DRONE_NICKNAME:Ljava/lang/String; = "nickname"

.field private static final ARACADEMY_DRONE_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_DRONE_OPTIN:Ljava/lang/String; = "optin"

.field private static final ARACADEMY_DRONE_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field private static final ARACADEMY_DRONE_PRODUCT_STYLE:Ljava/lang/String; = "product_style"

.field private static final ARACADEMY_DRONE_SERIAL:Ljava/lang/String; = "serial"

.field private static final ARACADEMY_DRONE_TAG:Ljava/lang/String; = "ARAcademyDrone"

.field private static final ARACADEMY_DRONE_TOTAL_PICTURES:Ljava/lang/String; = "total_pictures"

.field private static final ARACADEMY_DRONE_TOTAL_RUNS:Ljava/lang/String; = "total_runs"

.field private static final ARACADEMY_DRONE_TOTAL_RUNS_TIME:Ljava/lang/String; = "total_runs_time"

.field private static final ARACADEMY_DRONE_TOTAL_VIDEOS:Ljava/lang/String; = "total_videos"


# instance fields
.field protected droneDevice:Ljava/lang/String;

.field protected droneNickname:Ljava/lang/String;

.field protected droneOptin:Z

.field protected droneProductId:I

.field protected droneProductStyle:I

.field protected droneSerial:Ljava/lang/String;

.field protected droneTotalPictures:I

.field protected droneTotalRuns:I

.field protected droneTotalRunsTime:D

.field protected droneTotalVideos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    .line 56
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    .line 65
    const-string v0, "serial"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "serial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    .line 70
    :cond_0
    const-string v0, "product_id"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "product_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductId:I

    .line 75
    :cond_1
    const-string v0, "nickname"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const-string v0, "nickname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    .line 80
    :cond_2
    const-string v0, "device"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "device"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    .line 85
    :cond_3
    const-string v0, "optin"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    const-string v0, "optin"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneOptin:Z

    .line 90
    :cond_4
    const-string/jumbo v0, "total_runs_time"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    const-string/jumbo v0, "total_runs_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRunsTime:D

    .line 95
    :cond_5
    const-string/jumbo v0, "total_pictures"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    const-string/jumbo v0, "total_pictures"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalPictures:I

    .line 100
    :cond_6
    const-string/jumbo v0, "total_videos"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    const-string/jumbo v0, "total_videos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalVideos:I

    .line 105
    :cond_7
    const-string/jumbo v0, "total_runs"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 107
    const-string/jumbo v0, "total_runs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRuns:I

    .line 110
    :cond_8
    const-string v0, "product_style"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 112
    const-string v0, "product_style"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductStyle:I

    .line 115
    :cond_9
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
    .line 219
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyDrone;

    .prologue
    .line 397
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 402
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "serial"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 404
    const-string v2, "product_id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getProductId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 406
    const-string v2, "nickname"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v2, "device"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string v2, "optin"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getOptin()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 412
    const-string/jumbo v2, "total_runs_time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalRunsTime()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 414
    const-string/jumbo v2, "total_pictures"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalPictures()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 416
    const-string/jumbo v2, "total_videos"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalVideos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 418
    const-string/jumbo v2, "total_runs"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalRuns()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 420
    const-string v2, "product_style"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getProductStyle()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-object v1

    .line 423
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyDrone;Lcom/parrot/arsdk/aracademy/ARAcademyDrone;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyDrone;

    .prologue
    .line 327
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 332
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getSerial()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 334
    :cond_0
    const-string v2, "serial"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getProductId()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getProductId()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 339
    :cond_2
    const-string v2, "product_id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getProductId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 342
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getNickname()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 344
    :cond_4
    const-string v2, "nickname"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getDevice()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_7

    .line 349
    :cond_6
    const-string v2, "device"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getDevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getOptin()Z

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getOptin()Z

    move-result v3

    if-eq v2, v3, :cond_9

    .line 354
    :cond_8
    const-string v2, "optin"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getOptin()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 357
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalRunsTime()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalRunsTime()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_b

    .line 359
    :cond_a
    const-string/jumbo v2, "total_runs_time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalRunsTime()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 362
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalPictures()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalPictures()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 364
    :cond_c
    const-string/jumbo v2, "total_pictures"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalPictures()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 367
    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalVideos()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalVideos()I

    move-result v3

    if-eq v2, v3, :cond_f

    .line 369
    :cond_e
    const-string/jumbo v2, "total_videos"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalVideos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalRuns()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalRuns()I

    move-result v3

    if-eq v2, v3, :cond_11

    .line 374
    :cond_10
    const-string/jumbo v2, "total_runs"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalRuns()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getProductStyle()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getProductStyle()I

    move-result v3

    if-eq v2, v3, :cond_13

    .line 379
    :cond_12
    const-string v2, "product_style"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getProductStyle()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_13
    :goto_0
    return-object v1

    .line 383
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 234
    const/4 v3, 0x0

    .line 238
    .local v3, "model":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;

    move-object v3, v0

    .line 239
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    iput-object v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    .line 240
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductId:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductId:I

    .line 241
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    iput-object v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    .line 242
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    iput-object v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    .line 243
    iget-boolean v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneOptin:Z

    iput-boolean v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneOptin:Z

    .line 244
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRunsTime:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRunsTime:D

    .line 245
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalPictures:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalPictures:I

    .line 246
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalVideos:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalVideos:I

    .line 247
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRuns:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRuns:I

    .line 248
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductStyle:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductStyle:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-object v3

    .line 250
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 260
    const/4 v0, 0x1

    .line 262
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;

    if-nez v2, :cond_2

    .line 264
    :cond_0
    const/4 v0, 0x0

    .line 316
    :cond_1
    :goto_0
    return v0

    .line 266
    :cond_2
    if-ne p1, p0, :cond_3

    .line 268
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 273
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;

    .line 274
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyDrone;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getSerial()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    .line 276
    const/4 v0, 0x0

    .line 278
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getProductId()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductId:I

    if-eq v2, v3, :cond_5

    .line 280
    const/4 v0, 0x0

    .line 282
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getNickname()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    .line 284
    const/4 v0, 0x0

    .line 286
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getDevice()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    if-eq v2, v3, :cond_7

    .line 288
    const/4 v0, 0x0

    .line 290
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getOptin()Z

    move-result v2

    iget-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneOptin:Z

    if-eq v2, v3, :cond_8

    .line 292
    const/4 v0, 0x0

    .line 294
    :cond_8
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalRunsTime()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRunsTime:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_9

    .line 296
    const/4 v0, 0x0

    .line 298
    :cond_9
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalPictures()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalPictures:I

    if-eq v2, v3, :cond_a

    .line 300
    const/4 v0, 0x0

    .line 302
    :cond_a
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalVideos()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalVideos:I

    if-eq v2, v3, :cond_b

    .line 304
    const/4 v0, 0x0

    .line 306
    :cond_b
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getTotalRuns()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRuns:I

    if-eq v2, v3, :cond_c

    .line 308
    const/4 v0, 0x0

    .line 310
    :cond_c
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->getProductStyle()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductStyle:I

    if-eq v2, v3, :cond_1

    .line 312
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getOptin()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneOptin:Z

    return v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductId:I

    return v0
.end method

.method public getProductStyle()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductStyle:I

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPictures()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalPictures:I

    return v0
.end method

.method public getTotalRuns()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRuns:I

    return v0
.end method

.method public getTotalRunsTime()D
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRunsTime:D

    return-wide v0
.end method

.method public getTotalVideos()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalVideos:I

    return v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Nickname: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Optin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneOptin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TotalRunsTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRunsTime:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TotalPictures: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalPictures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TotalVideos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalVideos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TotalRuns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRuns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "Device"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneDevice:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0
    .param p1, "Nickname"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneNickname:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setOptin(Z)V
    .locals 0
    .param p1, "Optin"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneOptin:Z

    .line 165
    return-void
.end method

.method public setProductId(I)V
    .locals 0
    .param p1, "ProductId"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductId:I

    .line 135
    return-void
.end method

.method public setProductStyle(I)V
    .locals 0
    .param p1, "ProductStyle"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneProductStyle:I

    .line 215
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "Serial"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneSerial:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setTotalPictures(I)V
    .locals 0
    .param p1, "TotalPictures"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalPictures:I

    .line 185
    return-void
.end method

.method public setTotalRuns(I)V
    .locals 0
    .param p1, "TotalRuns"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRuns:I

    .line 205
    return-void
.end method

.method public setTotalRunsTime(D)V
    .locals 1
    .param p1, "TotalRunsTime"    # D

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalRunsTime:D

    .line 175
    return-void
.end method

.method public setTotalVideos(I)V
    .locals 0
    .param p1, "TotalVideos"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->droneTotalVideos:I

    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyDrone{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyDrone;->membersToString()Ljava/lang/String;

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
