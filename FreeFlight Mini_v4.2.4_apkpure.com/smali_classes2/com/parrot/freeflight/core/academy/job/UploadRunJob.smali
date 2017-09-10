.class public Lcom/parrot/freeflight/core/academy/job/UploadRunJob;
.super Lcom/parrot/freeflight/core/academy/job/SyncJob;
.source "UploadRunJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/core/academy/job/SyncJob",
        "<",
        "Lcom/parrot/freeflight/core/academy/RunInformation;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACADEMY_SERVER_PORT:I = 0x50

.field private static final ACADEMY_SERVER_URL:Ljava/lang/String; = "academy.ardrone.com"

.field private static final ACADEMY_UPLOADER_SERVER_URI:Ljava/lang/String; = "api3/runs/upload/"

.field private static final TAG:Ljava/lang/String; = "UploadRunTask"


# instance fields
.field private final mPassword:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mUserName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "jobHolder"    # Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "userName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "password"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/core/academy/job/SyncJob;-><init>(Lcom/parrot/freeflight/core/academy/job/IJobHolder;Lcom/parrot/freeflight/core/academy/job/Job$IJobExecutor;)V

    .line 36
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    .line 37
    iput-object p3, p0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mUserName:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mPassword:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method protected onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Integer;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "error"    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 122
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/parrot/freeflight/core/academy/RunInformation;->setRunId(I)V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/SyncJob;->onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 124
    return-void
.end method

.method protected bridge synthetic onFinish(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->onFinish(Lcom/parrot/freeflight/core/academy/RunInformation;Ljava/lang/Integer;Ljava/lang/Exception;)V

    return-void
.end method

.method protected process(Lcom/parrot/freeflight/core/academy/RunInformation;)Ljava/lang/Integer;
    .locals 26
    .param p1, "run"    # Lcom/parrot/freeflight/core/academy/RunInformation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    const/16 v23, -0x1

    .line 51
    .local v23, "runId":I
    const/4 v9, 0x0

    .line 52
    .local v9, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    const/4 v2, 0x0

    .line 54
    .local v2, "uploader":Lcom/parrot/arsdk/aracademy/ARAcademyUploader;
    :try_start_0
    new-instance v21, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;

    invoke-direct/range {v21 .. v21}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;-><init>()V
    :try_end_0
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v9    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .local v21, "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->init()V
    :try_end_1
    .catch Lcom/parrot/arsdk/arsal/ARSALException; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v9, v21

    .line 59
    .end local v21    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v9    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :goto_0
    if-eqz v9, :cond_5

    .line 60
    new-instance v2, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;

    .end local v2    # "uploader":Lcom/parrot/arsdk/aracademy/ARAcademyUploader;
    invoke-direct {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;-><init>()V

    .line 62
    .restart local v2    # "uploader":Lcom/parrot/arsdk/aracademy/ARAcademyUploader;
    :try_start_2
    const-string v3, "academy.ardrone.com"

    const/16 v4, 0x50

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mPassword:Ljava/lang/String;

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

    .line 63
    sget-object v18, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :try_end_2
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_2 .. :try_end_2} :catch_1

    .line 71
    .local v18, "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :goto_1
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->isStopped()Z

    move-result v3

    if-nez v3, :cond_2

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getFileName()Ljava/lang/String;

    move-result-object v19

    .line 73
    .local v19, "fileName":Ljava/lang/String;
    const-string v3, "UploadRunTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start upload file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v20, Ljava/io/File;

    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    const-string v4, ".txt"

    const-string v5, ".gz"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v20, "gzipFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    new-instance v22, Ljava/io/File;

    sget-object v3, Lcom/parrot/freeflight/core/academy/RunOfflineManager;->RUN_DETAILS_FILES_PATH:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v22, "runDetailFile":Ljava/io/File;
    invoke-static/range {v22 .. v22}, Lcom/parrot/freeflight/core/academy/FileUtils;->fileToString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v16

    .line 79
    .local v16, "content":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 80
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->gzipPud(Ljava/lang/String;Ljava/lang/String;)Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 85
    .end local v16    # "content":Ljava/lang/String;
    .end local v22    # "runDetailFile":Ljava/io/File;
    :cond_0
    :goto_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->isStopped()Z

    move-result v3

    if-nez v3, :cond_9

    .line 86
    const/16 v24, 0x0

    .line 87
    .local v24, "runIdString":Ljava/lang/String;
    sget-object v25, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 89
    .local v25, "uploadError":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :try_start_3
    const-string v3, "api3/runs/upload/"

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->uploadPostRun(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 90
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/parrot/arsdk/aracademy/ARAcademyException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v23

    .line 97
    :goto_3
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v25

    if-ne v0, v3, :cond_7

    .line 98
    if-gtz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getCollection()Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    .line 112
    .end local v19    # "fileName":Ljava/lang/String;
    .end local v20    # "gzipFile":Ljava/io/File;
    .end local v24    # "runIdString":Ljava/lang/String;
    .end local v25    # "uploadError":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :cond_2
    :goto_4
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/parrot/arsdk/arsal/ARSALMd5Manager;->dispose()V

    .line 113
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/parrot/arsdk/aracademy/ARAcademyUploader;->dispose()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .line 115
    :cond_4
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_OK:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v18

    if-eq v0, v3, :cond_a

    new-instance v3, Lcom/parrot/arsdk/aracademy/ARAcademyException;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Lcom/parrot/arsdk/aracademy/ARAcademyException;-><init>(Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;)V

    throw v3

    .line 56
    .end local v18    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :catch_0
    move-exception v17

    .line 57
    .local v17, "e":Lcom/parrot/arsdk/arsal/ARSALException;
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/arsal/ARSALException;->printStackTrace()V

    goto/16 :goto_0

    .line 64
    .end local v17    # "e":Lcom/parrot/arsdk/arsal/ARSALException;
    :catch_1
    move-exception v17

    .line 65
    .local v17, "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v18

    .line 66
    .restart local v18    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    goto/16 :goto_1

    .line 68
    .end local v17    # "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    .end local v18    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :cond_5
    sget-object v18, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    .restart local v18    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    goto/16 :goto_1

    .line 82
    .restart local v16    # "content":Ljava/lang/String;
    .restart local v19    # "fileName":Ljava/lang/String;
    .restart local v20    # "gzipFile":Ljava/io/File;
    .restart local v22    # "runDetailFile":Ljava/io/File;
    :cond_6
    const-string v3, "UploadRunTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No content found for file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 91
    .end local v16    # "content":Ljava/lang/String;
    .end local v22    # "runDetailFile":Ljava/io/File;
    .restart local v24    # "runIdString":Ljava/lang/String;
    .restart local v25    # "uploadError":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :catch_2
    move-exception v17

    .line 92
    .restart local v17    # "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->printStackTrace()V

    .line 93
    invoke-virtual/range {v17 .. v17}, Lcom/parrot/arsdk/aracademy/ARAcademyException;->getError()Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-result-object v25

    .line 96
    goto :goto_3

    .line 94
    .end local v17    # "e":Lcom/parrot/arsdk/aracademy/ARAcademyException;
    :catch_3
    move-exception v17

    .line 95
    .local v17, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    .line 100
    .end local v17    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    sget-object v3, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR_UPLOADER_WRONG_JSON_FORMAT:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    move-object/from16 v0, v25

    if-ne v0, v3, :cond_8

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->mRunJobHolder:Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;

    invoke-virtual {v3}, Lcom/parrot/freeflight/core/academy/RunCollection$RunJobHolder;->getCollection()Lcom/parrot/freeflight/core/academy/RunCollection;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/parrot/freeflight/core/academy/RunInformation;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parrot/freeflight/core/academy/RunCollection;->removeRun(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 105
    :cond_8
    const-string v3, "UploadRunTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", upload error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 108
    .end local v24    # "runIdString":Ljava/lang/String;
    .end local v25    # "uploadError":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    :cond_9
    sget-object v18, Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;

    goto/16 :goto_4

    .line 117
    .end local v19    # "fileName":Ljava/lang/String;
    .end local v20    # "gzipFile":Ljava/io/File;
    :cond_a
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3

    .line 56
    .end local v9    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .end local v18    # "error":Lcom/parrot/arsdk/aracademy/ARACADEMY_ERROR_ENUM;
    .restart local v21    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    :catch_4
    move-exception v17

    move-object/from16 v9, v21

    .end local v21    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    .restart local v9    # "md5Manager":Lcom/parrot/arsdk/arsal/ARSALMd5Manager;
    goto/16 :goto_5
.end method

.method protected bridge synthetic process(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    check-cast p1, Lcom/parrot/freeflight/core/academy/RunInformation;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/core/academy/job/UploadRunJob;->process(Lcom/parrot/freeflight/core/academy/RunInformation;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
