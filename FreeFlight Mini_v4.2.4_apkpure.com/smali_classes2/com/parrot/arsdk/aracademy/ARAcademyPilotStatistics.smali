.class public Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;
.super Ljava/lang/Object;
.source "ARAcademyPilotStatistics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_PILOTSTATISTICS_ALTITUDE_MAX:Ljava/lang/String; = "altitude_max"

.field private static final ARACADEMY_PILOTSTATISTICS_COUNT_CRASH:Ljava/lang/String; = "count_crash"

.field private static final ARACADEMY_PILOTSTATISTICS_COUNT_DRONES:Ljava/lang/String; = "count_drones"

.field private static final ARACADEMY_PILOTSTATISTICS_COUNT_PHOTOS:Ljava/lang/String; = "count_photos"

.field private static final ARACADEMY_PILOTSTATISTICS_COUNT_RUNS:Ljava/lang/String; = "count_runs"

.field private static final ARACADEMY_PILOTSTATISTICS_COUNT_VIDEOS:Ljava/lang/String; = "count_videos"

.field private static final ARACADEMY_PILOTSTATISTICS_CRASH_AVERAGE:Ljava/lang/String; = "crash_average"

.field private static final ARACADEMY_PILOTSTATISTICS_LAST_DATE:Ljava/lang/String; = "last_date"

.field private static final ARACADEMY_PILOTSTATISTICS_LAST_DURATION:Ljava/lang/String; = "last_duration"

.field private static final ARACADEMY_PILOTSTATISTICS_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_PILOTSTATISTICS_SPEED_MAX:Ljava/lang/String; = "speed_max"

.field private static final ARACADEMY_PILOTSTATISTICS_TAG:Ljava/lang/String; = "ARAcademyPilotStatistics"

.field private static final ARACADEMY_PILOTSTATISTICS_TIME_AVERAGE:Ljava/lang/String; = "time_average"

.field private static final ARACADEMY_PILOTSTATISTICS_TIME_TOTAL:Ljava/lang/String; = "time_total"


# instance fields
.field protected pilotStatisticsAltitudeMax:I

.field protected pilotStatisticsCountCrash:I

.field protected pilotStatisticsCountDrones:I

.field protected pilotStatisticsCountPhotos:I

.field protected pilotStatisticsCountRuns:I

.field protected pilotStatisticsCountVideos:I

.field protected pilotStatisticsCrashAverage:D

.field protected pilotStatisticsLastDate:Ljava/lang/String;

.field protected pilotStatisticsLastDuration:I

.field protected pilotStatisticsSpeedMax:D

.field protected pilotStatisticsTimeAverage:I

.field protected pilotStatisticsTimeTotal:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    .line 60
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
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    .line 69
    const-string v0, "count_drones"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "count_drones"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountDrones:I

    .line 74
    :cond_0
    const-string v0, "count_runs"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const-string v0, "count_runs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountRuns:I

    .line 79
    :cond_1
    const-string v0, "time_average"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const-string v0, "time_average"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeAverage:I

    .line 84
    :cond_2
    const-string v0, "count_photos"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const-string v0, "count_photos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountPhotos:I

    .line 89
    :cond_3
    const-string v0, "crash_average"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 91
    const-string v0, "crash_average"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCrashAverage:D

    .line 94
    :cond_4
    const-string v0, "count_crash"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    const-string v0, "count_crash"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountCrash:I

    .line 99
    :cond_5
    const-string v0, "altitude_max"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    const-string v0, "altitude_max"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsAltitudeMax:I

    .line 104
    :cond_6
    const-string v0, "last_date"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    const-string v0, "last_date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    .line 109
    :cond_7
    const-string v0, "speed_max"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 111
    const-string v0, "speed_max"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsSpeedMax:D

    .line 114
    :cond_8
    const-string v0, "last_duration"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 116
    const-string v0, "last_duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDuration:I

    .line 119
    :cond_9
    const-string v0, "count_videos"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 121
    const-string v0, "count_videos"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountVideos:I

    .line 124
    :cond_a
    const-string v0, "time_total"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 126
    const-string v0, "time_total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeTotal:D

    .line 129
    :cond_b
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
    .line 253
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    .prologue
    .line 451
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 456
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "count_drones"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountDrones()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 458
    const-string v2, "count_runs"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountRuns()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 460
    const-string v2, "time_average"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeAverage()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 462
    const-string v2, "count_photos"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountPhotos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 464
    const-string v2, "crash_average"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCrashAverage()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 466
    const-string v2, "count_crash"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountCrash()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 468
    const-string v2, "altitude_max"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getAltitudeMax()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 470
    const-string v2, "last_date"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getLastDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    const-string v2, "speed_max"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getSpeedMax()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 474
    const-string v2, "last_duration"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getLastDuration()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 476
    const-string v2, "count_videos"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountVideos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 478
    const-string v2, "time_total"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeTotal()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-object v1

    .line 481
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    .prologue
    .line 371
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 376
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountDrones()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountDrones()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 378
    :cond_0
    const-string v2, "count_drones"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountDrones()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 381
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountRuns()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountRuns()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 383
    :cond_2
    const-string v2, "count_runs"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountRuns()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeAverage()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeAverage()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 388
    :cond_4
    const-string v2, "time_average"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeAverage()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 391
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountPhotos()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountPhotos()I

    move-result v3

    if-eq v2, v3, :cond_7

    .line 393
    :cond_6
    const-string v2, "count_photos"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountPhotos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 396
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCrashAverage()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCrashAverage()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_9

    .line 398
    :cond_8
    const-string v2, "crash_average"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCrashAverage()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 401
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountCrash()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountCrash()I

    move-result v3

    if-eq v2, v3, :cond_b

    .line 403
    :cond_a
    const-string v2, "count_crash"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountCrash()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 406
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getAltitudeMax()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getAltitudeMax()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 408
    :cond_c
    const-string v2, "altitude_max"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getAltitudeMax()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 411
    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getLastDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getLastDate()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_f

    .line 413
    :cond_e
    const-string v2, "last_date"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getLastDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getSpeedMax()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getSpeedMax()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_11

    .line 418
    :cond_10
    const-string v2, "speed_max"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getSpeedMax()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 421
    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getLastDuration()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getLastDuration()I

    move-result v3

    if-eq v2, v3, :cond_13

    .line 423
    :cond_12
    const-string v2, "last_duration"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getLastDuration()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 426
    :cond_13
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountVideos()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountVideos()I

    move-result v3

    if-eq v2, v3, :cond_15

    .line 428
    :cond_14
    const-string v2, "count_videos"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountVideos()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 431
    :cond_15
    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeTotal()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeTotal()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_17

    .line 433
    :cond_16
    const-string v2, "time_total"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeTotal()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :cond_17
    :goto_0
    return-object v1

    .line 437
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 268
    const/4 v3, 0x0

    .line 272
    .local v3, "model":Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    move-object v3, v0

    .line 273
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountDrones:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountDrones:I

    .line 274
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountRuns:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountRuns:I

    .line 275
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeAverage:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeAverage:I

    .line 276
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountPhotos:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountPhotos:I

    .line 277
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCrashAverage:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCrashAverage:D

    .line 278
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountCrash:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountCrash:I

    .line 279
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsAltitudeMax:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsAltitudeMax:I

    .line 280
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    .line 281
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsSpeedMax:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsSpeedMax:D

    .line 282
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDuration:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDuration:I

    .line 283
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountVideos:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountVideos:I

    .line 284
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeTotal:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeTotal:D
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-object v3

    .line 286
    :catch_0
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 296
    const/4 v0, 0x1

    .line 298
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    if-nez v2, :cond_2

    .line 300
    :cond_0
    const/4 v0, 0x0

    .line 360
    :cond_1
    :goto_0
    return v0

    .line 302
    :cond_2
    if-ne p1, p0, :cond_3

    .line 304
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 309
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;

    .line 310
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountDrones()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountDrones:I

    if-eq v2, v3, :cond_4

    .line 312
    const/4 v0, 0x0

    .line 314
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountRuns()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountRuns:I

    if-eq v2, v3, :cond_5

    .line 316
    const/4 v0, 0x0

    .line 318
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeAverage()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeAverage:I

    if-eq v2, v3, :cond_6

    .line 320
    const/4 v0, 0x0

    .line 322
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountPhotos()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountPhotos:I

    if-eq v2, v3, :cond_7

    .line 324
    const/4 v0, 0x0

    .line 326
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCrashAverage()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCrashAverage:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_8

    .line 328
    const/4 v0, 0x0

    .line 330
    :cond_8
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountCrash()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountCrash:I

    if-eq v2, v3, :cond_9

    .line 332
    const/4 v0, 0x0

    .line 334
    :cond_9
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getAltitudeMax()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsAltitudeMax:I

    if-eq v2, v3, :cond_a

    .line 336
    const/4 v0, 0x0

    .line 338
    :cond_a
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getLastDate()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    if-eq v2, v3, :cond_b

    .line 340
    const/4 v0, 0x0

    .line 342
    :cond_b
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getSpeedMax()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsSpeedMax:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_c

    .line 344
    const/4 v0, 0x0

    .line 346
    :cond_c
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getLastDuration()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDuration:I

    if-eq v2, v3, :cond_d

    .line 348
    const/4 v0, 0x0

    .line 350
    :cond_d
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getCountVideos()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountVideos:I

    if-eq v2, v3, :cond_e

    .line 352
    const/4 v0, 0x0

    .line 354
    :cond_e
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->getTimeTotal()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeTotal:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 356
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAltitudeMax()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsAltitudeMax:I

    return v0
.end method

.method public getCountCrash()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountCrash:I

    return v0
.end method

.method public getCountDrones()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountDrones:I

    return v0
.end method

.method public getCountPhotos()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountPhotos:I

    return v0
.end method

.method public getCountRuns()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountRuns:I

    return v0
.end method

.method public getCountVideos()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountVideos:I

    return v0
.end method

.method public getCrashAverage()D
    .locals 2

    .prologue
    .line 173
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCrashAverage:D

    return-wide v0
.end method

.method public getLastDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    return-object v0
.end method

.method public getLastDuration()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDuration:I

    return v0
.end method

.method public getSpeedMax()D
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsSpeedMax:D

    return-wide v0
.end method

.method public getTimeAverage()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeAverage:I

    return v0
.end method

.method public getTimeTotal()D
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeTotal:D

    return-wide v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountDrones: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountDrones:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CountRuns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountRuns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TimeAverage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeAverage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CountPhotos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountPhotos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CrashAverage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCrashAverage:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CountCrash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountCrash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AltitudeMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsAltitudeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LastDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SpeedMax: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsSpeedMax:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LastDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CountVideos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountVideos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TimeTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeTotal:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAltitudeMax(I)V
    .locals 0
    .param p1, "AltitudeMax"    # I

    .prologue
    .line 198
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsAltitudeMax:I

    .line 199
    return-void
.end method

.method public setCountCrash(I)V
    .locals 0
    .param p1, "CountCrash"    # I

    .prologue
    .line 188
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountCrash:I

    .line 189
    return-void
.end method

.method public setCountDrones(I)V
    .locals 0
    .param p1, "CountDrones"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountDrones:I

    .line 139
    return-void
.end method

.method public setCountPhotos(I)V
    .locals 0
    .param p1, "CountPhotos"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountPhotos:I

    .line 169
    return-void
.end method

.method public setCountRuns(I)V
    .locals 0
    .param p1, "CountRuns"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountRuns:I

    .line 149
    return-void
.end method

.method public setCountVideos(I)V
    .locals 0
    .param p1, "CountVideos"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCountVideos:I

    .line 239
    return-void
.end method

.method public setCrashAverage(D)V
    .locals 1
    .param p1, "CrashAverage"    # D

    .prologue
    .line 178
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsCrashAverage:D

    .line 179
    return-void
.end method

.method public setLastDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "LastDate"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDate:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setLastDuration(I)V
    .locals 0
    .param p1, "LastDuration"    # I

    .prologue
    .line 228
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsLastDuration:I

    .line 229
    return-void
.end method

.method public setSpeedMax(D)V
    .locals 1
    .param p1, "SpeedMax"    # D

    .prologue
    .line 218
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsSpeedMax:D

    .line 219
    return-void
.end method

.method public setTimeAverage(I)V
    .locals 0
    .param p1, "TimeAverage"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeAverage:I

    .line 159
    return-void
.end method

.method public setTimeTotal(D)V
    .locals 1
    .param p1, "TimeTotal"    # D

    .prologue
    .line 248
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->pilotStatisticsTimeTotal:D

    .line 249
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyPilotStatistics{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyPilotStatistics;->membersToString()Ljava/lang/String;

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
