.class public Lcom/parrot/freeflight/core/academy/RunInformation;
.super Ljava/lang/Object;
.source "RunInformation.java"


# static fields
.field private static final RUN_ADDRESS:Ljava/lang/String; = "address"

.field private static final RUN_BATTERY:Ljava/lang/String; = "battery"

.field private static final RUN_CAPTURES:Ljava/lang/String; = "captures"

.field public static final RUN_DETAIL_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HHmmss"

.field private static final RUN_NEED_UPDATE_GRADE:Ljava/lang/String; = "need_update_grade"

.field public static final RUN_SUMMARY_DATE_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmss"

.field private static final RUN_TO_DELETE:Ljava/lang/String; = "to_delete"

.field private static final RUN_VIDEOS:Ljava/lang/String; = "videos"

.field private static final TAG:Ljava/lang/String; = "RunInformation"


# instance fields
.field private mAddress:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mBattery:I

.field private final mFileName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mNeedUpdateGrade:Z

.field private mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mToDelete:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runSummary"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 45
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    .line 46
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runDetails"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 45
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    .line 46
    iput-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    .line 59
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    .line 61
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {p0, v0, p2}, Lcom/parrot/freeflight/core/academy/RunInformation;->fillRunSummary(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V

    .line 62
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/academy/RunInformation;->getBattery(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 63
    return-void
.end method

.method public static create(Ljava/io/File;)Lcom/parrot/freeflight/core/academy/RunInformation;
    .locals 5
    .param p0, "summaryJsonFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    invoke-static {p0}, Lcom/parrot/freeflight/core/academy/FileUtils;->fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 68
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_4

    .line 70
    :try_start_0
    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-direct {v3, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;-><init>(Lorg/json/JSONObject;)V

    .line 71
    .local v3, "runSummary":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    new-instance v2, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/parrot/freeflight/core/academy/RunInformation;-><init>(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRun;)V

    .line 72
    .local v2, "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    const-string v4, "address"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "address"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    .line 73
    :cond_0
    const-string v4, "battery"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "battery"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 74
    :cond_1
    const-string/jumbo v4, "to_delete"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "to_delete"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    .line 75
    :cond_2
    const-string v4, "need_update_grade"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "need_update_grade"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v2    # "run":Lcom/parrot/freeflight/core/academy/RunInformation;
    .end local v3    # "runSummary":Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    :cond_3
    :goto_0
    return-object v2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private fillRunSummary(Lcom/parrot/arsdk/aracademy/ARAcademyRun;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V
    .locals 6
    .param p1, "runSummary"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runDetails"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 304
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setUuid(Ljava/lang/String;)V

    .line 305
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 306
    .local v3, "summaryDateFormat":Ljava/text/DateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd\'T\'HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 308
    .local v1, "detailDateFormat":Ljava/text/DateFormat;
    :try_start_0
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 309
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setDate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setProductId(I)V

    .line 314
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setSerialNumber(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setControllerModel(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getControllerApplication()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setControllerApplication(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getProductStyle()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setProductStyle(I)V

    .line 318
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsAvailable()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setGpsAvailable(Z)V

    .line 319
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLatitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setGpsLatitude(D)V

    .line 320
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getGpsLongitude()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setGpsLongitude(D)V

    .line 321
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getRunTime()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setRunTime(I)V

    .line 322
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getTotalRunTime()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setTotalRunTime(I)V

    .line 323
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getCrash()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setCrash(I)V

    .line 324
    invoke-virtual {p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getJump()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setJump(I)V

    .line 325
    return-void

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBattery(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)I
    .locals 8
    .param p1, "runDetails"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    .line 328
    const/4 v1, 0x0

    .local v1, "firstLevel":I
    const/4 v3, 0x0

    .line 330
    .local v3, "lastLevel":I
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 331
    .local v0, "detailData":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v5

    if-eqz v5, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v1

    .line 336
    .end local v0    # "detailData":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    :cond_1
    invoke-static {v1, v6, v7}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v1

    .line 338
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    .line 339
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;->getDetailsData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;

    .line 340
    .restart local v0    # "detailData":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;->getBatteryLevel()I

    move-result v3

    .line 345
    .end local v0    # "detailData":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    :cond_2
    invoke-static {v3, v6, v7}, Lcom/parrot/freeflight/util/Limit;->getLimitedValue(III)I

    move-result v3

    .line 347
    sub-int v4, v1, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    return v4

    .line 338
    .restart local v0    # "detailData":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetailData;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private removeRunDetail()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v0, "detailJson":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 153
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    .line 154
    return-void
.end method

.method private writeCapturesToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 284
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 285
    .local v3, "jsonCaptures":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v1

    .line 286
    .local v1, "captures":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;>;"
    if-eqz v1, :cond_0

    .line 287
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;

    .line 288
    .local v0, "capture":Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;
    invoke-static {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 293
    .end local v0    # "capture":Lcom/parrot/arsdk/aracademy/ARAcademyRunCapture;
    :cond_0
    :try_start_0
    const-string v4, "captures"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_1
    return-void

    .line 294
    :catch_0
    move-exception v2

    .line 295
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private writeVideosToJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 268
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 269
    .local v1, "jsonVideos":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v4}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v3

    .line 270
    .local v3, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;>;"
    if-eqz v3, :cond_0

    .line 271
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;

    .line 272
    .local v2, "video":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    invoke-static {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 277
    .end local v2    # "video":Lcom/parrot/arsdk/aracademy/ARAcademyRunVideo;
    :cond_0
    :try_start_0
    const-string/jumbo v4, "videos"

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBattery()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method getLastModifyDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 197
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v0, "summaryJson":Ljava/io/File;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1
.end method

.method public getRunDetail()Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    if-nez v1, :cond_0

    .line 93
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, "detailJson":Ljava/io/File;
    invoke-static {v0}, Lcom/parrot/freeflight/core/academy/FileUtils;->fileToRunDetails(Ljava/io/File;)Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    .line 95
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    if-nez v1, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 102
    .end local v0    # "detailJson":Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    return-object v1

    .line 97
    .restart local v0    # "detailJson":Ljava/io/File;
    :cond_1
    iget v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    if-gez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunDetails:Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getBattery(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 99
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    goto :goto_0
.end method

.method public getRunDetailFilePath()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunId()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v0

    return v0
.end method

.method public getRunSummary()Lcom/parrot/arsdk/aracademy/ARAcademyRun;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public gradeUpdated()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    .line 193
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 194
    return-void
.end method

.method markToDelete()V
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    .line 159
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->removeRunDetail()V

    .line 160
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 162
    :cond_0
    return-void
.end method

.method public needDetectAddress()Z
    .locals 4

    .prologue
    const-wide v2, 0x407f400000000000L    # 500.0

    .line 177
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGpsLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDownload()Z
    .locals 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->getRunDetailFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToDelete()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    return v0
.end method

.method public needUpdateGrade()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needUpload()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v0}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method refreshWithAcademyRun(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Z
    .locals 3
    .param p1, "academyRun"    # Lcom/parrot/arsdk/aracademy/ARAcademyRun;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    if-eq p1, v1, :cond_6

    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 205
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setId(I)V

    .line 207
    const/4 v0, 0x1

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setUser(Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x1

    .line 215
    :cond_1
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVideos()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setVideos(Ljava/util/ArrayList;)V

    .line 217
    const/4 v0, 0x1

    .line 220
    :cond_2
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 221
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getCaptures()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setCaptures(Ljava/util/ArrayList;)V

    .line 222
    const/4 v0, 0x1

    .line 224
    :cond_3
    iget-boolean v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    if-nez v1, :cond_5

    .line 226
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v2

    if-eq v1, v2, :cond_4

    .line 227
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setVisible(Z)V

    .line 228
    const/4 v0, 0x1

    .line 231
    :cond_4
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 232
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getGrade()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setGrade(I)V

    .line 233
    const/4 v0, 0x1

    .line 237
    :cond_5
    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 238
    iget-object v1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->getAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setAvatar(Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x1

    .line 242
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 244
    :cond_7
    return v0
.end method

.method removeSelf()V
    .locals 3

    .prologue
    .line 144
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .local v0, "summaryJson":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 146
    invoke-direct {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->removeRunDetail()V

    .line 147
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 132
    return-void
.end method

.method public setRunDetails(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V
    .locals 1
    .param p1, "runDetails"    # Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getBattery(Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)I

    move-result v0

    iput v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    .line 107
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 108
    return-void
.end method

.method public setRunId(I)V
    .locals 1
    .param p1, "runId"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setId(I)V

    .line 121
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 122
    return-void
.end method

.method public updateGrade(IZ)V
    .locals 1
    .param p1, "grade"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v0, p1}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setGrade(I)V

    .line 186
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-virtual {v0, p2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->setVisible(Z)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    .line 188
    invoke-virtual {p0}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeSummaryToJson()V

    .line 189
    return-void
.end method

.method writeSummaryToJson()V
    .locals 4

    .prologue
    .line 253
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mRunSummary:Lcom/parrot/arsdk/aracademy/ARAcademyRun;

    invoke-static {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyRun;->generateRequest(Lcom/parrot/arsdk/aracademy/ARAcademyRun;)Lorg/json/JSONObject;

    move-result-object v1

    .line 254
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeVideosToJson(Lorg/json/JSONObject;)V

    .line 255
    invoke-direct {p0, v1}, Lcom/parrot/freeflight/core/academy/RunInformation;->writeCapturesToJson(Lorg/json/JSONObject;)V

    .line 257
    :try_start_0
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mToDelete:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "to_delete"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 258
    :cond_0
    iget-boolean v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mNeedUpdateGrade:Z

    if-eqz v2, :cond_1

    const-string v2, "need_update_grade"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "address"

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 260
    :cond_2
    iget v2, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    if-ltz v2, :cond_3

    const-string v2, "battery"

    iget v3, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mBattery:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_SUMMARY_FILES_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parrot/freeflight/core/academy/RunInformation;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parrot/freeflight/core/academy/FileUtils;->jsonObjectToFile(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 265
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
