.class public Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;
.super Ljava/lang/Object;
.source "Pud2JsonTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DOWNLOADING_PREFIX:Ljava/lang/String; = "downloading"


# instance fields
.field private final mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/RunCollection;)V
    .locals 0
    .param p1, "runCollection"    # Lcom/parrot/freeflight/core/academy/RunCollection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    .line 30
    return-void
.end method

.method private getRunDetail(Ljava/io/File;)Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-static {p1}, Lcom/parrot/freeflight/core/academy/FileUtils;->fileToJsonObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 98
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 100
    :try_start_0
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    invoke-direct {v2, v1}, Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 101
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 106
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasEnoughMemory(J)Z
    .locals 9
    .param p1, "length"    # J

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 89
    .local v2, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 91
    .local v0, "availableMemory":J
    const-wide/16 v4, 0x8

    div-long v4, v0, v4

    cmp-long v3, v4, p1

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 35
    new-instance v24, Ljava/io/File;

    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->PUD_FILES_PATH:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    .local v24, "pudFolder":Ljava/io/File;
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v21

    .line 37
    .local v21, "listFiles":[Ljava/io/File;
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_7

    .line 38
    const/4 v9, 0x0

    .line 39
    .local v9, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    const/4 v2, 0x0

    .line 41
    .local v2, "uploader":Lcom/parrot/arsdk/aracademy/ARAcademyUploader;
    :try_start_0
    new-instance v22, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-direct/range {v22 .. v22}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .local v22, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    move-object/from16 v9, v22

    .line 45
    .end local v22    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v9    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :goto_0
    if-eqz v9, :cond_2

    .line 46
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;

    .end local v2    # "uploader":Lcom/parrot/arsdk/aracademy/ARAcademyUploader;
    invoke-direct {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;-><init>()V

    .line 50
    .restart local v2    # "uploader":Lcom/parrot/arsdk/aracademy/ARAcademyUploader;
    :try_start_1
    const-string v3, "192.168.0.1"

    const/16 v4, 0x50

    const-string v5, "temp"

    const-string v6, "temp"

    sget-object v7, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->ACADEMY_FILES_PATH:Ljava/lang/String;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v2 .. v15}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->createUploader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/arsal/ARSALMd5Manager;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderFileProgressListener;Ljava/lang/Object;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderFileCompletionListener;Ljava/lang/Object;Lcom/parrot/arsdk/aracademy/ARAcademyUploaderCompletionListener;Ljava/lang/Object;)V

    .line 51
    sget-object v18, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :try_end_1
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .local v18, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :goto_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_5

    .line 60
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v23, v21, v3

    .line 61
    .local v23, "pudFile":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".pud"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 62
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "downloading"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 63
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".pud"

    const-string v7, ".txt"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 64
    .local v20, "jsonFileName":Ljava/lang/String;
    new-instance v19, Ljava/io/File;

    sget-object v5, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .local v19, "jsonFile":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->buildAcademyFile(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v16

    .line 66
    .local v16, "convertError":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    sget-object v5, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v16

    if-ne v0, v5, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v10, 0x2

    mul-long/2addr v6, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->hasEnoughMemory(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->getRunDetail(Ljava/io/File;)Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;

    move-result-object v25

    .line 69
    .local v25, "runDetails":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    if-eqz v25, :cond_0

    .line 70
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/core/academy/job/Pud2JsonTask;->mRunCollection:Lcom/parrot/freeflight/core/academy/RunCollection;

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Lcom/parrot/freeflight/core/academy/RunCollection;->addRunDetail(Ljava/lang/String;Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;)V

    .line 72
    :cond_0
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 60
    .end local v16    # "convertError":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .end local v19    # "jsonFile":Ljava/io/File;
    .end local v20    # "jsonFileName":Ljava/lang/String;
    .end local v25    # "runDetails":Lcom/parrot/arsdk/aracademy/ARAcademyRunDetails;
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 42
    .end local v18    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .end local v23    # "pudFile":Ljava/io/File;
    :catch_0
    move-exception v17

    .line 43
    .local v17, "e":Lcom/parrot/arsdk/arsal/ARSALException;
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARSALException;->printStackTrace()V

    goto/16 :goto_0

    .line 52
    .end local v17    # "e":Lcom/parrot/arsdk/arsal/ARSALException;
    :catch_1
    move-exception v17

    .line 53
    .local v17, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v18

    .line 54
    .restart local v18    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    goto/16 :goto_1

    .line 56
    .end local v17    # "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    .end local v18    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :cond_2
    sget-object v18, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .restart local v18    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    goto/16 :goto_1

    .line 73
    .restart local v16    # "convertError":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .restart local v19    # "jsonFile":Ljava/io/File;
    .restart local v20    # "jsonFileName":Ljava/lang/String;
    .restart local v23    # "pudFile":Ljava/io/File;
    :cond_3
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-gtz v5, :cond_1

    .line 74
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 78
    .end local v16    # "convertError":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .end local v19    # "jsonFile":Ljava/io/File;
    .end local v20    # "jsonFileName":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 82
    .end local v23    # "pudFile":Ljava/io/File;
    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 83
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->dispose()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 85
    .end local v2    # "uploader":Lcom/parrot/arsdk/aracademy/ARAcademyUploader;
    .end local v9    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .end local v18    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :cond_7
    return-void
.end method
