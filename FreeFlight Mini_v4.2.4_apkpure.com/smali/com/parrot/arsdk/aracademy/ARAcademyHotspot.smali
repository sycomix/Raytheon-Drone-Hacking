.class public Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
.super Ljava/lang/Object;
.source "ARAcademyHotspot.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_HOTSPOT_COUNTRY:Ljava/lang/String; = "country"

.field private static final ARACADEMY_HOTSPOT_CREATION_DATE:Ljava/lang/String; = "creation_date"

.field private static final ARACADEMY_HOTSPOT_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final ARACADEMY_HOTSPOT_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final ARACADEMY_HOTSPOT_GPS_LATITUDE:Ljava/lang/String; = "gps_latitude"

.field private static final ARACADEMY_HOTSPOT_GPS_LONGITUDE:Ljava/lang/String; = "gps_longitude"

.field private static final ARACADEMY_HOTSPOT_GRADE:Ljava/lang/String; = "grade"

.field private static final ARACADEMY_HOTSPOT_ID:Ljava/lang/String; = "id"

.field private static final ARACADEMY_HOTSPOT_NAME:Ljava/lang/String; = "name"

.field private static final ARACADEMY_HOTSPOT_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_HOTSPOT_TAG:Ljava/lang/String; = "ARAcademyHotspot"

.field private static final ARACADEMY_HOTSPOT_TYPE:Ljava/lang/String; = "type"

.field private static final ARACADEMY_HOTSPOT_USER:Ljava/lang/String; = "user"


# instance fields
.field protected hotspotCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

.field protected hotspotCreationDate:Ljava/util/Date;

.field protected hotspotDescription:Ljava/lang/String;

.field protected hotspotGpsLatitude:D

.field protected hotspotGpsLongitude:D

.field protected hotspotGrade:I

.field protected hotspotId:I

.field protected hotspotName:Ljava/lang/String;

.field protected hotspotType:I

.field protected hotspotUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotName:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotDescription:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/net/MalformedURLException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotName:Ljava/lang/String;

    .line 48
    const-string v2, ""

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotDescription:Ljava/lang/String;

    .line 70
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotId:I

    .line 75
    :cond_0
    const-string/jumbo v2, "user"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    const-string/jumbo v3, "user"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    .line 80
    :cond_1
    const-string/jumbo v2, "type"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotType:I

    .line 85
    :cond_2
    const-string v2, "name"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 87
    const-string v2, "name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotName:Ljava/lang/String;

    .line 90
    :cond_3
    const-string v2, "description"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    const-string v2, "description"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotDescription:Ljava/lang/String;

    .line 95
    :cond_4
    const-string v2, "gps_latitude"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 97
    const-string v2, "gps_latitude"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLatitude:D

    .line 100
    :cond_5
    const-string v2, "gps_longitude"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 102
    const-string v2, "gps_longitude"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLongitude:D

    .line 105
    :cond_6
    const-string v2, "country"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 107
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    const-string v3, "country"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;-><init>(Lorg/json/JSONObject;)V

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .line 110
    :cond_7
    const-string v2, "creation_date"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 112
    const-string v2, "creation_date"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "dateString":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCreationDate:Ljava/util/Date;

    .line 117
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v1    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_8
    const-string v2, "grade"

    invoke-static {p1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 119
    const-string v2, "grade"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGrade:I

    .line 122
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
    .line 226
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    .prologue
    .line 440
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 445
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 447
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 449
    const-string/jumbo v4, "user"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v5

    invoke-static {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyUser;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 456
    :goto_0
    const-string/jumbo v4, "type"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getType()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 458
    const-string v4, "name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 460
    const-string v4, "description"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    const-string v4, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGpsLatitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 464
    const-string v4, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGpsLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 466
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 468
    const-string v4, "country"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v5

    invoke-static {v5}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyCountry;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    :goto_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCreationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 477
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 478
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCreationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "dateString":Ljava/lang/String;
    const-string v4, "creation_date"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 482
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v4, "grade"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGrade()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    :goto_2
    return-object v2

    .line 453
    :cond_1
    const-string/jumbo v4, "user"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 472
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_1
    const-string v4, "country"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    .prologue
    .line 349
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 354
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getId()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 356
    :cond_0
    const-string v4, "id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    :cond_1
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 360
    :cond_2
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 362
    :cond_3
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 364
    const-string/jumbo v4, "user"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyUser;Lcom/parrot/arsdk/aracademy/ARAcademyUser;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getType()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getType()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 374
    :cond_5
    const-string/jumbo v4, "type"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getType()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 377
    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getName()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_8

    .line 379
    :cond_7
    const-string v4, "name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getDescription()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_a

    .line 384
    :cond_9
    const-string v4, "description"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    :cond_a
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGpsLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGpsLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_c

    .line 389
    :cond_b
    const-string v4, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGpsLatitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 392
    :cond_c
    if-eqz p1, :cond_d

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGpsLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGpsLongitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_e

    .line 394
    :cond_d
    const-string v4, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGpsLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 397
    :cond_e
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 398
    :cond_f
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    if-nez v4, :cond_11

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 400
    :cond_10
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 402
    const-string v4, "country"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyCountry;Lcom/parrot/arsdk/aracademy/ARAcademyCountry;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    :cond_11
    :goto_1
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCreationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCreationDate()Ljava/util/Date;

    move-result-object v5

    if-eq v4, v5, :cond_13

    .line 412
    :cond_12
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCreationDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 414
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 415
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCreationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "dateString":Ljava/lang/String;
    const-string v4, "creation_date"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    .end local v0    # "dateString":Ljava/lang/String;
    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_13
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGrade()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGrade()I

    move-result v5

    if-eq v4, v5, :cond_15

    .line 422
    :cond_14
    const-string v4, "grade"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGrade()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 431
    :cond_15
    :goto_2
    return-object v2

    .line 368
    :cond_16
    const-string/jumbo v4, "user"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 406
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_17
    :try_start_1
    const-string v4, "country"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 241
    const/4 v3, 0x0

    .line 245
    .local v3, "model":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    move-object v3, v0

    .line 246
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotId:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotId:I

    .line 248
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    if-eqz v4, :cond_0

    .line 250
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    iput-object v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    .line 252
    :cond_0
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotType:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotType:I

    .line 253
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotName:Ljava/lang/String;

    iput-object v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotName:Ljava/lang/String;

    .line 254
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotDescription:Ljava/lang/String;

    iput-object v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotDescription:Ljava/lang/String;

    .line 255
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLatitude:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLatitude:D

    .line 256
    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLongitude:D

    iput-wide v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLongitude:D

    .line 258
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    if-eqz v4, :cond_1

    .line 260
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    iput-object v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .line 263
    :cond_1
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCreationDate:Ljava/util/Date;

    if-eqz v4, :cond_2

    .line 265
    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCreationDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    iput-object v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCreationDate:Ljava/util/Date;

    .line 267
    :cond_2
    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGrade:I

    iput v4, v3, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGrade:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-object v3

    .line 269
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 279
    const/4 v0, 0x1

    .line 281
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    if-nez v2, :cond_2

    .line 283
    :cond_0
    const/4 v0, 0x0

    .line 338
    :cond_1
    :goto_0
    return v0

    .line 285
    :cond_2
    if-ne p1, p0, :cond_3

    .line 287
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 292
    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;

    .line 293
    .local v1, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getId()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotId:I

    if-eq v2, v3, :cond_4

    .line 295
    const/4 v0, 0x0

    .line 297
    :cond_4
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUser;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 298
    :cond_5
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    if-eqz v2, :cond_7

    .line 300
    :cond_6
    const/4 v0, 0x0

    .line 302
    :cond_7
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getType()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotType:I

    if-eq v2, v3, :cond_8

    .line 304
    const/4 v0, 0x0

    .line 306
    :cond_8
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotName:Ljava/lang/String;

    if-eq v2, v3, :cond_9

    .line 308
    const/4 v0, 0x0

    .line 310
    :cond_9
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotDescription:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    .line 312
    const/4 v0, 0x0

    .line 314
    :cond_a
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGpsLatitude()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLatitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_b

    .line 316
    const/4 v0, 0x0

    .line 318
    :cond_b
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGpsLongitude()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLongitude:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_c

    .line 320
    const/4 v0, 0x0

    .line 322
    :cond_c
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-virtual {v2, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyCountry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 323
    :cond_d
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    move-result-object v2

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    if-eqz v2, :cond_f

    .line 325
    :cond_e
    const/4 v0, 0x0

    .line 327
    :cond_f
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCreationDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 328
    :cond_10
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCreationDate:Ljava/util/Date;

    if-eqz v2, :cond_12

    .line 330
    :cond_11
    const/4 v0, 0x0

    .line 332
    :cond_12
    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->getGrade()I

    move-result v2

    iget v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGrade:I

    if-eq v2, v3, :cond_1

    .line 334
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getCountry()Lcom/parrot/arsdk/aracademy/ARAcademyCountry;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCreationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsLatitude()D
    .locals 2

    .prologue
    .line 176
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLatitude:D

    return-wide v0
.end method

.method public getGpsLongitude()D
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLongitude:D

    return-wide v0
.end method

.method public getGrade()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGrade:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotType:I

    return v0
.end method

.method public getUser()Lcom/parrot/arsdk/aracademy/ARAcademyUser;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsLatitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsLongitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Country: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CreationDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCreationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Grade: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGrade:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCountry(Lcom/parrot/arsdk/aracademy/ARAcademyCountry;)V
    .locals 0
    .param p1, "Country"    # Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCountry:Lcom/parrot/arsdk/aracademy/ARAcademyCountry;

    .line 202
    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "CreationDate"    # Ljava/util/Date;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotCreationDate:Ljava/util/Date;

    .line 212
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "Description"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotDescription:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 1
    .param p1, "GpsLatitude"    # D

    .prologue
    .line 181
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLatitude:D

    .line 182
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 1
    .param p1, "GpsLongitude"    # D

    .prologue
    .line 191
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGpsLongitude:D

    .line 192
    return-void
.end method

.method public setGrade(I)V
    .locals 0
    .param p1, "Grade"    # I

    .prologue
    .line 221
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotGrade:I

    .line 222
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "Id"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotId:I

    .line 132
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "Name"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotName:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "Type"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotType:I

    .line 152
    return-void
.end method

.method public setUser(Lcom/parrot/arsdk/aracademy/ARAcademyUser;)V
    .locals 0
    .param p1, "User"    # Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->hotspotUser:Lcom/parrot/arsdk/aracademy/ARAcademyUser;

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyHotspot{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyHotspot;->membersToString()Ljava/lang/String;

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
