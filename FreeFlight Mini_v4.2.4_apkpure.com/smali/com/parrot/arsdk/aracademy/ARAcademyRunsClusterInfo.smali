.class public Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;
.super Ljava/lang/Object;
.source "ARAcademyRunsClusterInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_RUNSCLUSTERINFO_COUNT:Ljava/lang/String; = "count"

.field private static final ARACADEMY_RUNSCLUSTERINFO_GPS_LATITUDE:Ljava/lang/String; = "gps_latitude"

.field private static final ARACADEMY_RUNSCLUSTERINFO_GPS_LONGITUDE:Ljava/lang/String; = "gps_longitude"

.field private static final ARACADEMY_RUNSCLUSTERINFO_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNSCLUSTERINFO_TAG:Ljava/lang/String; = "ARAcademyRunsClusterInfo"


# instance fields
.field protected runsClusterInfoCount:I

.field protected runsClusterInfoGpsLatitude:D

.field protected runsClusterInfoGpsLongitude:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
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
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "count"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoCount:I

    .line 56
    :cond_0
    const-string v0, "gps_latitude"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const-string v0, "gps_latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLatitude:D

    .line 61
    :cond_1
    const-string v0, "gps_longitude"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    const-string v0, "gps_longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLongitude:D

    .line 66
    :cond_2
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
    .line 100
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;

    .prologue
    .line 208
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 213
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "count"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string v2, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getGpsLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 217
    const-string v2, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getGpsLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-object v1

    .line 220
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;

    .prologue
    .line 173
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 178
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 180
    :cond_0
    const-string v2, "count"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getGpsLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getGpsLatitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_3

    .line 185
    :cond_2
    const-string v2, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getGpsLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 188
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getGpsLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getGpsLongitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    .line 190
    :cond_4
    const-string v2, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getGpsLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_5
    :goto_0
    return-object v1

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 115
    const/4 v3, 0x0

    .line 119
    .local v3, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;

    move-object v3, v0

    .line 120
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoCount:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoCount:I

    .line 121
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLatitude:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLatitude:D

    .line 122
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLongitude:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLongitude:D
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-object v3

    .line 124
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 134
    const/4 v0, 0x1

    .line 136
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;

    if-nez v2, :cond_2

    .line 138
    :cond_0
    const/4 v0, 0x0

    .line 162
    :cond_1
    :goto_0
    return v0

    .line 140
    :cond_2
    if-ne p1, p0, :cond_3

    .line 142
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 147
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;

    .line 148
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getCount()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoCount:I

    if-eq v2, v3, :cond_4

    .line 150
    const/4 v0, 0x0

    .line 152
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getGpsLatitude()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLatitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_5

    .line 154
    const/4 v0, 0x0

    .line 156
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->getGpsLongitude()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLongitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoCount:I

    return v0
.end method

.method public getGpsLatitude()D
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLatitude:D

    return-wide v0
.end method

.method public getGpsLongitude()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLongitude:D

    return-wide v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsLatitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsLongitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "Count"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoCount:I

    .line 76
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 1
    .param p1, "GpsLatitude"    # D

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLatitude:D

    .line 86
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 1
    .param p1, "GpsLongitude"    # D

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->runsClusterInfoGpsLongitude:D

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyRunsClusterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunsClusterInfo;->membersToString()Ljava/lang/String;

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
