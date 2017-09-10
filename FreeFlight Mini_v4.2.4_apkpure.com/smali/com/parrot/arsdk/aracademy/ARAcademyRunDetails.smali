.class public Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
.super Ljava/lang/Object;
.source "ARAcademyRunDetails.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ARACADEMY_RUNDETAILS_CONTROLLER_APPLICATION:Ljava/lang/String; = "controller_application"

.field private static final ARACADEMY_RUNDETAILS_CONTROLLER_MODEL:Ljava/lang/String; = "controller_model"

.field private static final ARACADEMY_RUNDETAILS_CRASH:Ljava/lang/String; = "crash"

.field private static final ARACADEMY_RUNDETAILS_DATE:Ljava/lang/String; = "date"

.field private static final ARACADEMY_RUNDETAILS_DETAILS_DATA:Ljava/lang/String; = "details_data"

.field private static final ARACADEMY_RUNDETAILS_GPS_AVAILABLE:Ljava/lang/String; = "gps_available"

.field private static final ARACADEMY_RUNDETAILS_GPS_LATITUDE:Ljava/lang/String; = "gps_latitude"

.field private static final ARACADEMY_RUNDETAILS_GPS_LONGITUDE:Ljava/lang/String; = "gps_longitude"

.field private static final ARACADEMY_RUNDETAILS_HARDWARE_VERSION:Ljava/lang/String; = "hardware_version"

.field private static final ARACADEMY_RUNDETAILS_JUMP:Ljava/lang/String; = "jump"

.field private static final ARACADEMY_RUNDETAILS_NULL:Ljava/lang/String; = "null"

.field private static final ARACADEMY_RUNDETAILS_PRODUCT_ACCESSORY:Ljava/lang/String; = "product_accessory"

.field private static final ARACADEMY_RUNDETAILS_PRODUCT_ID:Ljava/lang/String; = "product_id"

.field private static final ARACADEMY_RUNDETAILS_PRODUCT_NAME:Ljava/lang/String; = "product_name"

.field private static final ARACADEMY_RUNDETAILS_PRODUCT_STYLE:Ljava/lang/String; = "product_style"

.field private static final ARACADEMY_RUNDETAILS_RUN_TIME:Ljava/lang/String; = "run_time"

.field private static final ARACADEMY_RUNDETAILS_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final ARACADEMY_RUNDETAILS_SOFTWARE_VERSION:Ljava/lang/String; = "software_version"

.field private static final ARACADEMY_RUNDETAILS_TAG:Ljava/lang/String; = "ARAcademyRunDetails"

.field private static final ARACADEMY_RUNDETAILS_TOTAL_RUN_TIME:Ljava/lang/String; = "total_run_time"

.field private static final ARACADEMY_RUNDETAILS_UUID:Ljava/lang/String; = "uuid"

.field private static final ARACADEMY_RUNDETAILS_VERSION:Ljava/lang/String; = "version"


# instance fields
.field protected runDetailsControllerApplication:Ljava/lang/String;

.field protected runDetailsControllerModel:Ljava/lang/String;

.field protected runDetailsCrash:I

.field protected runDetailsDate:Ljava/lang/String;

.field protected runDetailsDetailsData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;",
            ">;"
        }
    .end annotation
.end field

.field protected runDetailsGpsAvailable:Z

.field protected runDetailsGpsLatitude:D

.field protected runDetailsGpsLongitude:D

.field protected runDetailsHardwareVersion:Ljava/lang/String;

.field protected runDetailsJump:I

.field protected runDetailsProductAccessory:I

.field protected runDetailsProductId:I

.field protected runDetailsProductName:Ljava/lang/String;

.field protected runDetailsProductStyle:I

.field protected runDetailsRunTime:I

.field protected runDetailsSerialNumber:Ljava/lang/String;

.field protected runDetailsSoftwareVersion:Ljava/lang/String;

.field protected runDetailsTotalRunTime:I

.field protected runDetailsUuid:Ljava/lang/String;

.field protected runDetailsVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    .line 53
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    .line 55
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    .line 56
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    .line 57
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    .line 58
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    .line 59
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    .line 69
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    .line 70
    const-string v3, ""

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    .line 88
    const-string/jumbo v3, "version"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const-string/jumbo v3, "version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    .line 93
    :cond_0
    const-string v3, "date"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 95
    const-string v3, "date"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    .line 98
    :cond_1
    const-string v3, "product_id"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    const-string v3, "product_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductId:I

    .line 103
    :cond_2
    const-string v3, "serial_number"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    const-string v3, "serial_number"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    .line 108
    :cond_3
    const-string v3, "product_name"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 110
    const-string v3, "product_name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    .line 113
    :cond_4
    const-string/jumbo v3, "uuid"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 115
    const-string/jumbo v3, "uuid"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    .line 118
    :cond_5
    const-string v3, "controller_model"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 120
    const-string v3, "controller_model"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    .line 123
    :cond_6
    const-string v3, "controller_application"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 125
    const-string v3, "controller_application"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    .line 128
    :cond_7
    const-string v3, "product_accessory"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 130
    const-string v3, "product_accessory"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductAccessory:I

    .line 133
    :cond_8
    const-string v3, "product_style"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 135
    const-string v3, "product_style"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductStyle:I

    .line 138
    :cond_9
    const-string v3, "gps_available"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 140
    const-string v3, "gps_available"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsAvailable:Z

    .line 143
    :cond_a
    const-string v3, "gps_latitude"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 145
    const-string v3, "gps_latitude"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLatitude:D

    .line 148
    :cond_b
    const-string v3, "gps_longitude"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 150
    const-string v3, "gps_longitude"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLongitude:D

    .line 153
    :cond_c
    const-string v3, "crash"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 155
    const-string v3, "crash"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsCrash:I

    .line 158
    :cond_d
    const-string v3, "jump"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 160
    const-string v3, "jump"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsJump:I

    .line 163
    :cond_e
    const-string v3, "run_time"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 165
    const-string v3, "run_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsRunTime:I

    .line 168
    :cond_f
    const-string/jumbo v3, "total_run_time"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 170
    const-string/jumbo v3, "total_run_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsTotalRunTime:I

    .line 173
    :cond_10
    const-string v3, "hardware_version"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 175
    const-string v3, "hardware_version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    .line 178
    :cond_11
    const-string v3, "software_version"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 180
    const-string v3, "software_version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    .line 183
    :cond_12
    const-string v3, "details_data"

    invoke-static {p1, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->checkJsonValue(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 185
    const-string v3, "details_headers"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 186
    .local v0, "evolHeadersArray":Lorg/json/JSONArray;
    const-string v3, "details_data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 188
    .local v2, "jsonArray":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_13

    .line 191
    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    new-instance v4, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v0    # "evolHeadersArray":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_13
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
    .line 399
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

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    .prologue
    .line 704
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 709
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 710
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const-string/jumbo v4, "version"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    const-string v4, "date"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 714
    const-string v4, "product_id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 716
    const-string v4, "serial_number"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 718
    const-string v4, "product_name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    const-string/jumbo v4, "uuid"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    const-string v4, "controller_model"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 724
    const-string v4, "controller_application"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerApplication()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 726
    const-string v4, "product_accessory"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductAccessory()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 728
    const-string v4, "product_style"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductStyle()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 730
    const-string v4, "gps_available"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsAvailable()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 732
    const-string v4, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLatitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 734
    const-string v4, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 736
    const-string v4, "crash"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getCrash()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 738
    const-string v4, "jump"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getJump()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 740
    const-string v4, "run_time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getRunTime()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 742
    const-string/jumbo v4, "total_run_time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getTotalRunTime()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 744
    const-string v4, "hardware_version"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getHardwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string v4, "software_version"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 750
    .local v1, "item":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    if-eqz v1, :cond_0

    .line 752
    invoke-static {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    .end local v1    # "item":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 763
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-object v2

    .line 755
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    const-string v4, "details_data"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "newModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .param p1, "oldModel"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    .prologue
    .line 575
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 580
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 581
    .local v3, "jsonArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getVersion()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 583
    :cond_0
    const-string/jumbo v4, "version"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDate()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 588
    :cond_2
    const-string v4, "date"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 591
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductId()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductId()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 593
    :cond_4
    const-string v4, "product_id"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 596
    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_7

    .line 598
    :cond_6
    const-string v4, "serial_number"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 601
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductName()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_9

    .line 603
    :cond_8
    const-string v4, "product_name"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 606
    :cond_9
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getUuid()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_b

    .line 608
    :cond_a
    const-string/jumbo v4, "uuid"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerModel()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_d

    .line 613
    :cond_c
    const-string v4, "controller_model"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerApplication()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerApplication()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_f

    .line 618
    :cond_e
    const-string v4, "controller_application"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerApplication()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    :cond_f
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductAccessory()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductAccessory()I

    move-result v5

    if-eq v4, v5, :cond_11

    .line 623
    :cond_10
    const-string v4, "product_accessory"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductAccessory()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 626
    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductStyle()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductStyle()I

    move-result v5

    if-eq v4, v5, :cond_13

    .line 628
    :cond_12
    const-string v4, "product_style"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductStyle()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 631
    :cond_13
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsAvailable()Z

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsAvailable()Z

    move-result v5

    if-eq v4, v5, :cond_15

    .line 633
    :cond_14
    const-string v4, "gps_available"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsAvailable()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 636
    :cond_15
    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_17

    .line 638
    :cond_16
    const-string v4, "gps_latitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLatitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 641
    :cond_17
    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLongitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_19

    .line 643
    :cond_18
    const-string v4, "gps_longitude"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLongitude()D

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 646
    :cond_19
    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getCrash()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getCrash()I

    move-result v5

    if-eq v4, v5, :cond_1b

    .line 648
    :cond_1a
    const-string v4, "crash"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getCrash()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 651
    :cond_1b
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getJump()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getJump()I

    move-result v5

    if-eq v4, v5, :cond_1d

    .line 653
    :cond_1c
    const-string v4, "jump"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getJump()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 656
    :cond_1d
    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getRunTime()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getRunTime()I

    move-result v5

    if-eq v4, v5, :cond_1f

    .line 658
    :cond_1e
    const-string v4, "run_time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getRunTime()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 661
    :cond_1f
    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getTotalRunTime()I

    move-result v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getTotalRunTime()I

    move-result v5

    if-eq v4, v5, :cond_21

    .line 663
    :cond_20
    const-string/jumbo v4, "total_run_time"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getTotalRunTime()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 666
    :cond_21
    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getHardwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getHardwareVersion()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_23

    .line 668
    :cond_22
    const-string v4, "hardware_version"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getHardwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 671
    :cond_23
    if-eqz p1, :cond_24

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_25

    .line 673
    :cond_24
    const-string v4, "software_version"

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 676
    :cond_25
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_26

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 677
    :cond_26
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_29

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 679
    :cond_27
    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_28
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 681
    .local v1, "item":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    if-eqz v1, :cond_28

    .line 683
    invoke-static {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    .end local v1    # "item":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 695
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_29
    :goto_1
    return-object v2

    .line 686
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    :cond_2a
    :try_start_1
    const-string v4, "details_data"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 414
    const/4 v3, 0x0

    .line 418
    .local v3, "model":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    move-object v3, v0

    .line 419
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    .line 420
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    .line 421
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductId:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductId:I

    .line 422
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    .line 423
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    .line 424
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    .line 425
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    .line 426
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    .line 427
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductAccessory:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductAccessory:I

    .line 428
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductStyle:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductStyle:I

    .line 429
    iget-boolean v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsAvailable:Z

    iput-boolean v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsAvailable:Z

    .line 430
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLatitude:D

    iput-wide v6, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLatitude:D

    .line 431
    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLongitude:D

    iput-wide v6, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLongitude:D

    .line 432
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsCrash:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsCrash:I

    .line 433
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsJump:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsJump:I

    .line 434
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsRunTime:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsRunTime:I

    .line 435
    iget v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsTotalRunTime:I

    iput v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsTotalRunTime:I

    .line 436
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    .line 437
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    .line 439
    iget-object v5, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 441
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    .line 443
    iget-object v5, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 445
    .local v4, "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    iget-object v7, v3, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    .end local v4    # "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    :catch_0
    move-exception v2

    .line 451
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 454
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_0
    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 459
    const/4 v0, 0x1

    .line 461
    .local v0, "isEqual":Z
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    if-nez v3, :cond_2

    .line 463
    :cond_0
    const/4 v0, 0x0

    .line 564
    :cond_1
    :goto_0
    return v0

    .line 465
    :cond_2
    if-ne p1, p0, :cond_3

    .line 467
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 472
    check-cast v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    .line 473
    .local v2, "otherModel":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    .line 475
    const/4 v0, 0x0

    .line 477
    :cond_4
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDate()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    .line 479
    const/4 v0, 0x0

    .line 481
    :cond_5
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductId()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductId:I

    if-eq v3, v4, :cond_6

    .line 483
    const/4 v0, 0x0

    .line 485
    :cond_6
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    if-eq v3, v4, :cond_7

    .line 487
    const/4 v0, 0x0

    .line 489
    :cond_7
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    if-eq v3, v4, :cond_8

    .line 491
    const/4 v0, 0x0

    .line 493
    :cond_8
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getUuid()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    if-eq v3, v4, :cond_9

    .line 495
    const/4 v0, 0x0

    .line 497
    :cond_9
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerModel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    if-eq v3, v4, :cond_a

    .line 499
    const/4 v0, 0x0

    .line 501
    :cond_a
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerApplication()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    if-eq v3, v4, :cond_b

    .line 503
    const/4 v0, 0x0

    .line 505
    :cond_b
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductAccessory()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductAccessory:I

    if-eq v3, v4, :cond_c

    .line 507
    const/4 v0, 0x0

    .line 509
    :cond_c
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductStyle()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductStyle:I

    if-eq v3, v4, :cond_d

    .line 511
    const/4 v0, 0x0

    .line 513
    :cond_d
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsAvailable()Z

    move-result v3

    iget-boolean v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsAvailable:Z

    if-eq v3, v4, :cond_e

    .line 515
    const/4 v0, 0x0

    .line 517
    :cond_e
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLatitude()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLatitude:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_f

    .line 519
    const/4 v0, 0x0

    .line 521
    :cond_f
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLongitude()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLongitude:D

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_10

    .line 523
    const/4 v0, 0x0

    .line 525
    :cond_10
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getCrash()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsCrash:I

    if-eq v3, v4, :cond_11

    .line 527
    const/4 v0, 0x0

    .line 529
    :cond_11
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getJump()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsJump:I

    if-eq v3, v4, :cond_12

    .line 531
    const/4 v0, 0x0

    .line 533
    :cond_12
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getRunTime()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsRunTime:I

    if-eq v3, v4, :cond_13

    .line 535
    const/4 v0, 0x0

    .line 537
    :cond_13
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getTotalRunTime()I

    move-result v3

    iget v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsTotalRunTime:I

    if-eq v3, v4, :cond_14

    .line 539
    const/4 v0, 0x0

    .line 541
    :cond_14
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getHardwareVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    if-eq v3, v4, :cond_15

    .line 543
    const/4 v0, 0x0

    .line 545
    :cond_15
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    if-eq v3, v4, :cond_16

    .line 547
    const/4 v0, 0x0

    .line 549
    :cond_16
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_17

    .line 550
    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 552
    :cond_17
    iget-object v3, v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 554
    .local v1, "orgItemDepth0":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    invoke-virtual {v1, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 556
    const/4 v0, 0x0

    .line 558
    goto/16 :goto_0
.end method

.method public getControllerApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    return-object v0
.end method

.method public getControllerModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    return-object v0
.end method

.method public getCrash()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsCrash:I

    return v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailsData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    return-object v0
.end method

.method public getGpsAvailable()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsAvailable:Z

    return v0
.end method

.method public getGpsLatitude()D
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLatitude:D

    return-wide v0
.end method

.method public getGpsLongitude()D
    .locals 2

    .prologue
    .line 319
    iget-wide v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLongitude:D

    return-wide v0
.end method

.method public getHardwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getJump()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsJump:I

    return v0
.end method

.method public getProductAccessory()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductAccessory:I

    return v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductId:I

    return v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getProductStyle()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductStyle:I

    return v0
.end method

.method public getRunTime()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsRunTime:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalRunTime()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsTotalRunTime:I

    return v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected membersToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SerialNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ControllerModel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ControllerApplication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductAccessory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductAccessory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ProductStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsLatitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", GpsLongitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Crash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsCrash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Jump: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsJump:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", RunTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsRunTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", TotalRunTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsTotalRunTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", HardwareVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SoftwareVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DetailsData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setControllerApplication(Ljava/lang/String;)V
    .locals 0
    .param p1, "ControllerApplication"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerApplication:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setControllerModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "ControllerModel"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsControllerModel:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setCrash(I)V
    .locals 0
    .param p1, "Crash"    # I

    .prologue
    .line 334
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsCrash:I

    .line 335
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "Date"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDate:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setDetailsData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "DetailsData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;>;"
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsDetailsData:Ljava/util/List;

    .line 395
    return-void
.end method

.method public setGpsAvailable(Z)V
    .locals 0
    .param p1, "GpsAvailable"    # Z

    .prologue
    .line 304
    iput-boolean p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsAvailable:Z

    .line 305
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 1
    .param p1, "GpsLatitude"    # D

    .prologue
    .line 314
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLatitude:D

    .line 315
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 1
    .param p1, "GpsLongitude"    # D

    .prologue
    .line 324
    iput-wide p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsGpsLongitude:D

    .line 325
    return-void
.end method

.method public setHardwareVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "HardwareVersion"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsHardwareVersion:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setJump(I)V
    .locals 0
    .param p1, "Jump"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsJump:I

    .line 345
    return-void
.end method

.method public setProductAccessory(I)V
    .locals 0
    .param p1, "ProductAccessory"    # I

    .prologue
    .line 284
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductAccessory:I

    .line 285
    return-void
.end method

.method public setProductId(I)V
    .locals 0
    .param p1, "ProductId"    # I

    .prologue
    .line 224
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductId:I

    .line 225
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0
    .param p1, "ProductName"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductName:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setProductStyle(I)V
    .locals 0
    .param p1, "ProductStyle"    # I

    .prologue
    .line 294
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsProductStyle:I

    .line 295
    return-void
.end method

.method public setRunTime(I)V
    .locals 0
    .param p1, "RunTime"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsRunTime:I

    .line 355
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "SerialNumber"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSerialNumber:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setSoftwareVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "SoftwareVersion"    # Ljava/lang/String;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsSoftwareVersion:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setTotalRunTime(I)V
    .locals 0
    .param p1, "TotalRunTime"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsTotalRunTime:I

    .line 365
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "Uuid"    # Ljava/lang/String;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsUuid:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "Version"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->runDetailsVersion:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARAcademyRunDetails{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->membersToString()Ljava/lang/String;

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
