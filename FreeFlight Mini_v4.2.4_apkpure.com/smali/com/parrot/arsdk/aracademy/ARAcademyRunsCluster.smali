.class public Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
.super Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;
.source "ARAcademyRunsCluster.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_RUNSCLUSTER_CAPTURE:Ljava/lang/String; = "capture"

.field private static final ARACADEMY_RUNSCLUSTER_GPS:Ljava/lang/String; = "gps"

.field private static final ARACADEMY_RUNSCLUSTER_INDEX:Ljava/lang/String; = "index"

.field private static final ARACADEMY_RUNSCLUSTER_MEDIA:Ljava/lang/String; = "media"

.field private static final ARACADEMY_RUNSCLUSTER_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNSCLUSTER_TAG:Ljava/lang/String; = "ARAcademyRunsCluster"

.field private static final ARACADEMY_RUNSCLUSTER_VIDEO:Ljava/lang/String; = "video"


# instance fields
.field protected runsClusterCapture:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

.field protected runsClusterGps:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

.field protected runsClusterIndex:Ljava/lang/String;

.field protected runsClusterMedia:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

.field protected runsClusterVideo:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterIndex:Ljava/lang/String;

    .line 47
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
    .line 55
    invoke-direct {p0, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;-><init>(Lorg/json/JSONObject;)V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterIndex:Ljava/lang/String;

    .line 57
    const-string v0, "index"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterIndex:Ljava/lang/String;

    .line 62
    :cond_0
    const-string v0, "capture"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    const-string v1, "capture"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterCapture:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 67
    :cond_1
    const-string/jumbo v0, "video"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    const-string/jumbo v1, "video"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterVideo:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 72
    :cond_2
    const-string v0, "media"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    const-string v1, "media"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterMedia:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 77
    :cond_3
    const-string v0, "gps"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    const-string v1, "gps"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterGps:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 82
    :cond_4
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
    .line 136
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;

    .prologue
    .line 309
    invoke-static {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;)Lorg/json/JSONObject;

    move-result-object v1

    .line 314
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "index"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 318
    const-string v2, "capture"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 327
    const-string/jumbo v2, "video"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 336
    const-string v2, "media"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    :goto_2
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 345
    const-string v2, "gps"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    :goto_3
    return-object v1

    .line 322
    :cond_0
    const-string v2, "capture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 331
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "video"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 340
    :cond_2
    const-string v2, "media"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 349
    :cond_3
    const-string v2, "gps"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;

    .prologue
    .line 232
    invoke-static {p0, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;)Lorg/json/JSONObject;

    move-result-object v1

    .line 237
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getIndex()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 239
    :cond_0
    const-string v2, "index"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 247
    const-string v2, "capture"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 256
    :cond_5
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 258
    :cond_6
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 260
    const-string/jumbo v2, "video"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 269
    :cond_8
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-nez v2, :cond_a

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 271
    :cond_9
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 273
    const-string v2, "media"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 282
    :cond_b
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-nez v2, :cond_d

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 284
    :cond_c
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 286
    const-string v2, "gps"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    :cond_d
    :goto_3
    return-object v1

    .line 251
    :cond_e
    const-string v2, "capture"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 264
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_f
    :try_start_1
    const-string/jumbo v2, "video"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1

    .line 277
    :cond_10
    const-string v2, "media"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 290
    :cond_11
    const-string v2, "gps"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    invoke-super {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;

    .line 154
    .restart local v0    # "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterIndex:Ljava/lang/String;

    iput-object v1, v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterIndex:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterCapture:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterCapture:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    iput-object v1, v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterCapture:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterVideo:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterVideo:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    iput-object v1, v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterVideo:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterMedia:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterMedia:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    iput-object v1, v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterMedia:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterGps:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    if-eqz v1, :cond_3

    .line 173
    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterGps:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    iput-object v1, v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterGps:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 176
    :cond_3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 181
    const/4 v0, 0x1

    .line 183
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;

    if-nez v2, :cond_2

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 221
    :cond_1
    :goto_0
    return v0

    .line 187
    :cond_2
    if-ne p1, p0, :cond_3

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 194
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;

    .line 195
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getIndex()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterIndex:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    .line 197
    const/4 v0, 0x0

    .line 199
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterCapture:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 200
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterCapture:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    if-eqz v2, :cond_7

    .line 202
    :cond_6
    const/4 v0, 0x0

    .line 204
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterVideo:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 205
    :cond_8
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterVideo:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    if-eqz v2, :cond_a

    .line 207
    :cond_9
    const/4 v0, 0x0

    .line 209
    :cond_a
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterMedia:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 210
    :cond_b
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterMedia:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    if-eqz v2, :cond_d

    .line 212
    :cond_c
    const/4 v0, 0x0

    .line 214
    :cond_d
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterGps:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 215
    :cond_e
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterGps:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    if-eqz v2, :cond_1

    .line 217
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getCapture()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterCapture:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    return-object v0
.end method

.method public getGps()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterGps:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    return-object v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getMedia()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterMedia:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    return-object v0
.end method

.method public getVideo()Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterVideo:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Capture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterCapture:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterVideo:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Media: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterMedia:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Gps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterGps:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCapture(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)V
    .locals 0
    .param p1, "Capture"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterCapture:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 102
    return-void
.end method

.method public setGps(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)V
    .locals 0
    .param p1, "Gps"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterGps:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 132
    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "Index"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterIndex:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setMedia(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)V
    .locals 0
    .param p1, "Media"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterMedia:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 122
    return-void
.end method

.method public setVideo(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;)V
    .locals 0
    .param p1, "Video"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->runsClusterVideo:Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterMediasInfo;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyRunsCluster{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->membersToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsCluster;->membersToString()Ljava/lang/String;

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
