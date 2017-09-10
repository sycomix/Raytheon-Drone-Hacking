.class public Lcom/parrot/freeflight3/ARYoutubeManager;
.super Ljava/lang/Object;
.source "ARYoutubeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight3/ARYoutubeManager$State;,
        Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;
    }
.end annotation


# static fields
.field public static final ARYOUTUBE_MANAGER_MOV:Ljava/lang/String; = ".mov"

.field private static final TAG:Ljava/lang/String; = "ARYoutubeManager"

.field private static final YOUTUBE_URL_BASE:Ljava/lang/String; = "http://www.youtube.com/watch?v="

.field private static youtube:Lcom/google/api/services/youtube/YouTube;


# instance fields
.field private cancelUploadRequested:Z

.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field private videoStream:Ljava/io/BufferedInputStream;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 66
    new-instance v0, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;

    invoke-direct {v0}, Lcom/google/api/client/extensions/android/json/AndroidJsonFactory;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->cancelUploadRequested:Z

    .line 72
    iput-object p1, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight3/ARYoutubeManager;)Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight3/ARYoutubeManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    return-object v0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "extension":Ljava/lang/String;
    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "mimeTypeMap":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "mimeType":Ljava/lang/String;
    return-object v1
.end method

.method private initGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "credential":Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;
    if-eqz p2, :cond_0

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "authList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const-string v2, "https://www.googleapis.com/auth/youtube.readonly"

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    const-string v2, "https://www.googleapis.com/auth/youtube.upload"

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {p1, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v1

    .line 105
    invoke-virtual {v1, p2}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    .line 108
    .end local v0    # "authList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method


# virtual methods
.method public cancelUpload()V
    .locals 2

    .prologue
    .line 282
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->cancelUploadRequested:Z

    .line 283
    iget-object v1, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->videoStream:Ljava/io/BufferedInputStream;

    if-eqz v1, :cond_0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->videoStream:Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getListener()Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    return-object v0
.end method

.method public setListener(Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    .line 78
    return-void
.end method

.method public signIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight3/ARYoutubeManager;->initGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    .line 89
    .local v0, "credential":Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;
    if-eqz v0, :cond_0

    .line 91
    new-instance v1, Lcom/google/api/services/youtube/YouTube$Builder;

    iget-object v2, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->transport:Lcom/google/api/client/http/HttpTransport;

    iget-object v3, p0, Lcom/parrot/freeflight3/ARYoutubeManager;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/api/services/youtube/YouTube$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    invoke-virtual {v1, p3}, Lcom/google/api/services/youtube/YouTube$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/youtube/YouTube$Builder;->build()Lcom/google/api/services/youtube/YouTube;

    move-result-object v1

    sput-object v1, Lcom/parrot/freeflight3/ARYoutubeManager;->youtube:Lcom/google/api/services/youtube/YouTube;

    .line 93
    :cond_0
    return-void
.end method

.method public uploadVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "tagsString"    # Ljava/lang/String;
    .param p5, "isPrivateMedia"    # Z

    .prologue
    .line 125
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->cancelUploadRequested:Z

    .line 127
    const-string v15, "ARYoutubeManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Started uploading of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v3, 0x0

    .line 130
    .local v3, "is":Lcom/google/api/client/http/InputStreamContent;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v11, "videoFile":Ljava/io/File;
    :try_start_0
    new-instance v15, Ljava/io/BufferedInputStream;

    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v15 .. v16}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->videoStream:Ljava/io/BufferedInputStream;

    .line 136
    invoke-static/range {p1 .. p1}, Lcom/parrot/freeflight3/ARYoutubeManager;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, "mimeType":Ljava/lang/String;
    const-string v15, "ARYoutubeManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "uploadVideo:mimeType="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v4, Lcom/google/api/client/http/InputStreamContent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->videoStream:Ljava/io/BufferedInputStream;

    invoke-direct {v4, v5, v15}, Lcom/google/api/client/http/InputStreamContent;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    .end local v3    # "is":Lcom/google/api/client/http/InputStreamContent;
    .local v4, "is":Lcom/google/api/client/http/InputStreamContent;
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/google/api/client/http/InputStreamContent;->setLength(J)Lcom/google/api/client/http/InputStreamContent;

    .line 140
    const/4 v15, 0x1

    invoke-virtual {v4, v15}, Lcom/google/api/client/http/InputStreamContent;->setRetrySupported(Z)Lcom/google/api/client/http/InputStreamContent;

    .line 142
    new-instance v13, Lcom/google/api/services/youtube/model/Video;

    invoke-direct {v13}, Lcom/google/api/services/youtube/model/Video;-><init>()V

    .line 150
    .local v13, "videoObjectDefiningMetadata":Lcom/google/api/services/youtube/model/Video;
    new-instance v8, Lcom/google/api/services/youtube/model/VideoStatus;

    invoke-direct {v8}, Lcom/google/api/services/youtube/model/VideoStatus;-><init>()V

    .line 151
    .local v8, "status":Lcom/google/api/services/youtube/model/VideoStatus;
    if-eqz p5, :cond_2

    .line 153
    const-string v15, "private"

    invoke-virtual {v8, v15}, Lcom/google/api/services/youtube/model/VideoStatus;->setPrivacyStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoStatus;

    .line 159
    :goto_0
    invoke-virtual {v13, v8}, Lcom/google/api/services/youtube/model/Video;->setStatus(Lcom/google/api/services/youtube/model/VideoStatus;)Lcom/google/api/services/youtube/model/Video;

    .line 161
    if-nez p2, :cond_0

    .line 167
    :cond_0
    const/4 v9, 0x0

    .line 168
    .local v9, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p4, :cond_4

    .line 170
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 183
    :goto_1
    new-instance v7, Lcom/google/api/services/youtube/model/VideoSnippet;

    invoke-direct {v7}, Lcom/google/api/services/youtube/model/VideoSnippet;-><init>()V

    .line 184
    .local v7, "snippet":Lcom/google/api/services/youtube/model/VideoSnippet;
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/google/api/services/youtube/model/VideoSnippet;->setTitle(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;

    .line 185
    new-instance v15, Lcom/google/api/client/util/DateTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-direct/range {v15 .. v17}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    invoke-virtual {v7, v15}, Lcom/google/api/services/youtube/model/VideoSnippet;->setPublishedAt(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/model/VideoSnippet;

    .line 186
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/google/api/services/youtube/model/VideoSnippet;->setDescription(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoSnippet;

    .line 188
    invoke-virtual {v7, v9}, Lcom/google/api/services/youtube/model/VideoSnippet;->setTags(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoSnippet;

    .line 199
    invoke-virtual {v13, v7}, Lcom/google/api/services/youtube/model/Video;->setSnippet(Lcom/google/api/services/youtube/model/VideoSnippet;)Lcom/google/api/services/youtube/model/Video;

    .line 200
    sget-object v15, Lcom/parrot/freeflight3/ARYoutubeManager;->youtube:Lcom/google/api/services/youtube/YouTube;

    invoke-virtual {v15}, Lcom/google/api/services/youtube/YouTube;->videos()Lcom/google/api/services/youtube/YouTube$Videos;

    move-result-object v15

    const-string v16, "snippet,statistics,status"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13, v4}, Lcom/google/api/services/youtube/YouTube$Videos;->insert(Ljava/lang/String;Lcom/google/api/services/youtube/model/Video;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/youtube/YouTube$Videos$Insert;

    move-result-object v12

    .line 202
    .local v12, "videoInsert":Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    invoke-virtual {v12}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->getMediaHttpUploader()Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    move-result-object v10

    .line 203
    .local v10, "uploader":Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    const/high16 v15, 0x40000

    invoke-virtual {v10, v15}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setChunkSize(I)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 205
    new-instance v15, Lcom/parrot/freeflight3/ARYoutubeManager$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Lcom/parrot/freeflight3/ARYoutubeManager$1;-><init>(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setProgressListener(Lcom/google/api/client/googleapis/media/MediaHttpUploaderProgressListener;)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 224
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->setDirectUploadEnabled(Z)Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 227
    invoke-virtual {v12}, Lcom/google/api/services/youtube/YouTube$Videos$Insert;->execute()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/youtube/model/Video;

    .line 229
    .local v6, "returnedVideo":Lcom/google/api/services/youtube/model/Video;
    const-string v15, "ARYoutubeManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Video "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " uploaded successfully => id = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lcom/google/api/services/youtube/model/Video;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    if-eqz v15, :cond_1

    .line 232
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http://www.youtube.com/watch?v="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/google/api/services/youtube/model/Video;->getId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 233
    .local v14, "videoUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v15, v0, v1, v14}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerUploadDone(Lcom/parrot/freeflight3/ARYoutubeManager;Ljava/lang/String;Ljava/lang/String;)V

    .end local v14    # "videoUrl":Ljava/lang/String;
    :cond_1
    move-object v3, v4

    .line 274
    .end local v4    # "is":Lcom/google/api/client/http/InputStreamContent;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "returnedVideo":Lcom/google/api/services/youtube/model/Video;
    .end local v7    # "snippet":Lcom/google/api/services/youtube/model/VideoSnippet;
    .end local v8    # "status":Lcom/google/api/services/youtube/model/VideoStatus;
    .end local v9    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "uploader":Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .end local v12    # "videoInsert":Lcom/google/api/services/youtube/YouTube$Videos$Insert;
    .end local v13    # "videoObjectDefiningMetadata":Lcom/google/api/services/youtube/model/Video;
    .restart local v3    # "is":Lcom/google/api/client/http/InputStreamContent;
    :goto_2
    return-void

    .line 157
    .end local v3    # "is":Lcom/google/api/client/http/InputStreamContent;
    .restart local v4    # "is":Lcom/google/api/client/http/InputStreamContent;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v8    # "status":Lcom/google/api/services/youtube/model/VideoStatus;
    .restart local v13    # "videoObjectDefiningMetadata":Lcom/google/api/services/youtube/model/Video;
    :cond_2
    const-string v15, "public"

    invoke-virtual {v8, v15}, Lcom/google/api/services/youtube/model/VideoStatus;->setPrivacyStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoStatus;
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 240
    .end local v8    # "status":Lcom/google/api/services/youtube/model/VideoStatus;
    .end local v13    # "videoObjectDefiningMetadata":Lcom/google/api/services/youtube/model/Video;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 242
    .end local v4    # "is":Lcom/google/api/client/http/InputStreamContent;
    .end local v5    # "mimeType":Ljava/lang/String;
    .local v2, "e":Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;
    .restart local v3    # "is":Lcom/google/api/client/http/InputStreamContent;
    :goto_3
    const-string v15, "ARYoutubeManager"

    const-string v16, "Upload cancelled"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v2}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;->printStackTrace()V

    .line 244
    instance-of v15, v2, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    if-eqz v15, :cond_5

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    check-cast v2, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;

    .end local v2    # "e":Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;
    invoke-virtual {v2}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v15, v0, v1}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerAppShouldBeAllowed(Lcom/parrot/freeflight3/ARYoutubeManager;Landroid/content/Intent;)V

    .line 273
    :cond_3
    :goto_4
    const-string v15, "ARYoutubeManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to upload "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    .end local v3    # "is":Lcom/google/api/client/http/InputStreamContent;
    .restart local v4    # "is":Lcom/google/api/client/http/InputStreamContent;
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v8    # "status":Lcom/google/api/services/youtube/model/VideoStatus;
    .restart local v9    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "videoObjectDefiningMetadata":Lcom/google/api/services/youtube/model/Video;
    :cond_4
    :try_start_2
    const-string v15, "\\s*,\\s*"

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_2
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v9

    goto/16 :goto_1

    .line 248
    .end local v4    # "is":Lcom/google/api/client/http/InputStreamContent;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v8    # "status":Lcom/google/api/services/youtube/model/VideoStatus;
    .end local v9    # "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "videoObjectDefiningMetadata":Lcom/google/api/services/youtube/model/Video;
    .restart local v2    # "e":Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;
    .restart local v3    # "is":Lcom/google/api/client/http/InputStreamContent;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->cancelUploadRequested:Z

    if-nez v15, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerUploadFailed(Ljava/lang/String;)V

    goto :goto_4

    .line 255
    .end local v2    # "e":Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAuthIOException;
    :catch_1
    move-exception v2

    .line 257
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_5
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 258
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->cancelUploadRequested:Z

    if-nez v15, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerUploadFailed(Ljava/lang/String;)V

    goto :goto_4

    .line 263
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 266
    .local v2, "e":Ljava/io/IOException;
    :goto_6
    const-string v15, "ARYoutubeManager"

    const-string v16, "IOException : "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->cancelUploadRequested:Z

    if-nez v15, :cond_3

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parrot/freeflight3/ARYoutubeManager;->mListener:Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/parrot/freeflight3/ARYoutubeManager$ARYoutubeManagerListener;->youtubeManagerUploadFailed(Ljava/lang/String;)V

    goto :goto_4

    .line 263
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "is":Lcom/google/api/client/http/InputStreamContent;
    .restart local v4    # "is":Lcom/google/api/client/http/InputStreamContent;
    .restart local v5    # "mimeType":Ljava/lang/String;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Lcom/google/api/client/http/InputStreamContent;
    .restart local v3    # "is":Lcom/google/api/client/http/InputStreamContent;
    goto :goto_6

    .line 255
    .end local v3    # "is":Lcom/google/api/client/http/InputStreamContent;
    .restart local v4    # "is":Lcom/google/api/client/http/InputStreamContent;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Lcom/google/api/client/http/InputStreamContent;
    .restart local v3    # "is":Lcom/google/api/client/http/InputStreamContent;
    goto :goto_5

    .line 240
    .end local v5    # "mimeType":Ljava/lang/String;
    :catch_5
    move-exception v2

    goto/16 :goto_3
.end method
