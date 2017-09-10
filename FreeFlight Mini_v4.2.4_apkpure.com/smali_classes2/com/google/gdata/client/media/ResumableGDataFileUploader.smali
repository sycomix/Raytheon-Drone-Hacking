.class public Lcom/google/gdata/client/media/ResumableGDataFileUploader;
.super Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
.source "ResumableGDataFileUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/media/ResumableGDataFileUploader$1;,
        Lcom/google/gdata/client/media/ResumableGDataFileUploader$Builder;,
        Lcom/google/gdata/client/media/ResumableGDataFileUploader$RequestType;
    }
.end annotation


# static fields
.field public static final RESUMABLE_EDIT_MEDIA_REL:Ljava/lang/String; = "resumable-edit-media"


# instance fields
.field private final service:Lcom/google/gdata/client/media/MediaService;


# direct methods
.method private constructor <init>(Ljava/net/URL;Lcom/google/gdata/data/media/MediaFileSource;Lcom/google/gdata/client/media/MediaService;JLjava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;J)V
    .locals 10
    .param p1, "uploadUrl"    # Ljava/net/URL;
    .param p2, "file"    # Lcom/google/gdata/data/media/MediaFileSource;
    .param p3, "service"    # Lcom/google/gdata/client/media/MediaService;
    .param p4, "chunkSize"    # J
    .param p6, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p7, "progressListener"    # Lcom/google/gdata/client/uploader/ProgressListener;
    .param p8, "progressIntervalMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p2}, Lcom/google/gdata/data/media/MediaFileSource;->getMediaFile()Ljava/io/File;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-wide v6, p4

    move-wide/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;-><init>(Ljava/net/URL;Ljava/io/File;Ljava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;JJ)V

    .line 78
    iput-object p3, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader;->service:Lcom/google/gdata/client/media/MediaService;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URL;Lcom/google/gdata/data/media/MediaFileSource;Lcom/google/gdata/client/media/MediaService;JLjava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;JLcom/google/gdata/client/media/ResumableGDataFileUploader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/net/URL;
    .param p2, "x1"    # Lcom/google/gdata/data/media/MediaFileSource;
    .param p3, "x2"    # Lcom/google/gdata/client/media/MediaService;
    .param p4, "x3"    # J
    .param p6, "x4"    # Ljava/util/concurrent/ExecutorService;
    .param p7, "x5"    # Lcom/google/gdata/client/uploader/ProgressListener;
    .param p8, "x6"    # J
    .param p10, "x7"    # Lcom/google/gdata/client/media/ResumableGDataFileUploader$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct/range {p0 .. p9}, Lcom/google/gdata/client/media/ResumableGDataFileUploader;-><init>(Ljava/net/URL;Lcom/google/gdata/data/media/MediaFileSource;Lcom/google/gdata/client/media/MediaService;JLjava/util/concurrent/ExecutorService;Lcom/google/gdata/client/uploader/ProgressListener;J)V

    return-void
.end method


# virtual methods
.method public getResponse(Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/IEntry;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-super {p0}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getResponse()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 93
    .local v0, "response":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/google/gdata/client/media/ResumableGDataFileUploader;->getUploadState()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    if-ne v1, v2, :cond_0

    .line 94
    new-instance v1, Lcom/google/gdata/util/ResumableUploadException;

    const-string v2, "client error"

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ResumableUploadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_0
    if-nez v0, :cond_1

    .line 96
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "No response found"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/google/gdata/client/media/ResumableGDataFileUploader;->service:Lcom/google/gdata/client/media/MediaService;

    sget-object v2, Lcom/google/gdata/util/ContentType;->ATOM:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v1, v0, v2, p1}, Lcom/google/gdata/client/media/MediaService;->parseResumableUploadResponse(Ljava/io/InputStream;Lcom/google/gdata/util/ContentType;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/IEntry;

    goto :goto_0
.end method
