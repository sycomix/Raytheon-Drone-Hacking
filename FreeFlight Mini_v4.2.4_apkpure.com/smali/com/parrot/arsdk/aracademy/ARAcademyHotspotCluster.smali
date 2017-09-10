.class public Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
.super Ljava/lang/Object;
.source "ARAcademyHotspotCluster.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_HOTSPOTCLUSTER_COUNT:Ljava/lang/String; = "count"

.field private static final ARACADEMY_HOTSPOTCLUSTER_GPS_LATITUDE:Ljava/lang/String; = "gps_latitude"

.field private static final ARACADEMY_HOTSPOTCLUSTER_GPS_LONGITUDE:Ljava/lang/String; = "gps_longitude"

.field private static final ARACADEMY_HOTSPOTCLUSTER_INDEX:Ljava/lang/String; = "index"

.field private static final ARACADEMY_HOTSPOTCLUSTER_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_HOTSPOTCLUSTER_TAG:Ljava/lang/String; = "ARAcademyHotspotCluster"


# instance fields
.field protected hotspotClusterCount:Ljava/lang/String;

.field protected hotspotClusterGpsLatitude:Ljava/lang/String;

.field protected hotspotClusterGpsLongitude:Ljava/lang/String;

.field protected hotspotClusterIndex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterIndex:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterCount:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLatitude:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLongitude:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterIndex:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterCount:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLatitude:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLongitude:Ljava/lang/String;

    .line 53
    const-string v0, "index"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterIndex:Ljava/lang/String;

    .line 58
    :cond_0
    const-string v0, "count"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterCount:Ljava/lang/String;

    .line 63
    :cond_1
    const-string v0, "gps_latitude"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "gps_latitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLatitude:Ljava/lang/String;

    .line 68
    :cond_2
    const-string v0, "gps_longitude"

    invoke-static {p1, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    const-string v0, "gps_longitude"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLongitude:Ljava/lang/String;

    .line 73
    :cond_3
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
    .line 117
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;

    .prologue
    .line 235
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 240
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "index"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v2, "count"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v2, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getGpsLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v2, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getGpsLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;

    .prologue
    .line 195
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getIndex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getIndex()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 202
    :cond_0
    const-string v2, "index"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getIndex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getCount()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 207
    :cond_2
    const-string v2, "count"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getGpsLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getGpsLatitude()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 212
    :cond_4
    const-string v2, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getGpsLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getGpsLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getGpsLongitude()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_7

    .line 217
    :cond_6
    const-string v2, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getGpsLongitude()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_7
    :goto_0
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 136
    .local v2, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;

    move-object v2, v0

    .line 137
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterIndex:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterIndex:Ljava/lang/String;

    .line 138
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterCount:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterCount:Ljava/lang/String;

    .line 139
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLatitude:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLatitude:Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLongitude:Ljava/lang/String;

    iput-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLongitude:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-object v2

    .line 142
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 152
    const/4 v0, 0x1

    .line 154
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;

    if-nez v2, :cond_2

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 184
    :cond_1
    :goto_0
    return v0

    .line 158
    :cond_2
    if-ne p1, p0, :cond_3

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 165
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;

    .line 166
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getIndex()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterIndex:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    .line 168
    const/4 v0, 0x0

    .line 170
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getCount()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterCount:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    .line 172
    const/4 v0, 0x0

    .line 174
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getGpsLatitude()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLatitude:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    .line 176
    const/4 v0, 0x0

    .line 178
    :cond_6
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->getGpsLongitude()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLongitude:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 180
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterCount:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLatitude:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLongitude:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterIndex:Ljava/lang/String;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsLatitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLatitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsLongitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLongitude:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCount(Ljava/lang/String;)V
    .locals 0
    .param p1, "Count"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterCount:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setGpsLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "GpsLatitude"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLatitude:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setGpsLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "GpsLongitude"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterGpsLongitude:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setIndex(Ljava/lang/String;)V
    .locals 0
    .param p1, "Index"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->hotspotClusterIndex:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyHotspotCluster{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspotCluster;->membersToString()Ljava/lang/String;

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
