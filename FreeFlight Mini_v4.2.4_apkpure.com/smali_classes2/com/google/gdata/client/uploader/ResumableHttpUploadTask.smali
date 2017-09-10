.class Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;
.super Ljava/lang/Object;
.source "ResumableHttpUploadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONTENT_LENGTH_HEADER_NAME:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_RANGE_HEADER_NAME:Ljava/lang/String; = "Content-Range"


# instance fields
.field private final resume:Z

.field private final uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

.field private final urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;


# direct methods
.method public constructor <init>(Lcom/google/gdata/client/uploader/UrlConnectionFactory;Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;Z)V
    .locals 0
    .param p1, "urlConnectionFactory"    # Lcom/google/gdata/client/uploader/UrlConnectionFactory;
    .param p2, "uploader"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;
    .param p3, "resume"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    .line 75
    iput-object p2, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    .line 76
    iput-boolean p3, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->resume:Z

    .line 77
    return-void
.end method

.method private getNextByteIndexFromRangeHeader(Ljava/lang/String;)J
    .locals 14
    .param p1, "rangeHeader"    # Ljava/lang/String;

    .prologue
    const-wide/16 v12, 0x1

    const/4 v11, 0x1

    const-wide/16 v8, 0x0

    .line 119
    if-eqz p1, :cond_0

    const/16 v7, 0x2d

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-wide v8

    .line 125
    :cond_1
    const-string v7, "[0-9]+-[0-9]+"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 127
    .local v1, "rangeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, v11}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 134
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const-string v10, "-"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, "rangeParts":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 138
    .local v2, "firstByteIndex":J
    cmp-long v7, v2, v8

    if-nez v7, :cond_0

    .line 143
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 144
    .local v4, "lastByteIndex":J
    iget-object v7, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    add-long v10, v4, v12

    invoke-virtual {v7, v10, v11}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setNumBytesUploaded(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    add-long v8, v4, v12

    goto :goto_0

    .line 146
    .end local v2    # "firstByteIndex":J
    .end local v4    # "lastByteIndex":J
    .end local v6    # "rangeParts":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getNextStartByteFromServer()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    iget-object v2, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getUrl()Ljava/net/URL;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/gdata/client/uploader/UrlConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 98
    .local v0, "connection":Ljava/net/HttpURLConnection;
    iget-object v1, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getHttpRequestMethod()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 99
    const-string v1, "Content-Length"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 102
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x134

    if-eq v1, v2, :cond_0

    .line 103
    const-wide/16 v2, 0x0

    .line 106
    :goto_0
    return-wide v2

    :cond_0
    const-string v1, "Range"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->getNextByteIndexFromRangeHeader(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method private setHeaders(Ljava/net/HttpURLConnection;JJ)V
    .locals 12
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .param p2, "start"    # J
    .param p4, "length"    # J

    .prologue
    .line 159
    iget-object v5, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v5}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getData()Lcom/google/gdata/client/uploader/UploadData;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/gdata/client/uploader/UploadData;->length()J

    move-result-wide v2

    .line 162
    .local v2, "fileSize":J
    const-string v5, "Content-Length"

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-nez v5, :cond_0

    const-string v5, "*/0"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "contentRange":Ljava/lang/String;
    const-string v5, "Content-Range"

    invoke-virtual {p1, v5, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v5, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v5}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 178
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 166
    .end local v0    # "contentRange":Ljava/lang/String;
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-long v8, p2, p4

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 180
    .restart local v0    # "contentRange":Ljava/lang/String;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private upload()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->resume:Z

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->getNextStartByteFromServer()J

    move-result-wide v4

    .line 194
    .local v4, "start":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getUploadState()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    move-result-object v2

    sget-object v9, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->IN_PROGRESS:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v2, v9}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getData()Lcom/google/gdata/client/uploader/UploadData;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/gdata/client/uploader/UploadData;->length()J

    move-result-wide v10

    sub-long/2addr v10, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getChunkSize()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 201
    .local v6, "length":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->urlConnectionFactory:Lcom/google/gdata/client/uploader/UrlConnectionFactory;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v9}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getUrl()Ljava/net/URL;

    move-result-object v9

    invoke-interface {v2, v9}, Lcom/google/gdata/client/uploader/UrlConnectionFactory;->create(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 203
    .local v3, "connection":Ljava/net/HttpURLConnection;
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 204
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getHttpRequestMethod()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 206
    invoke-direct/range {v2 .. v7}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->setHeaders(Ljava/net/HttpURLConnection;JJ)V

    .line 207
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    .local v14, "out":Ljava/io/OutputStream;
    move-object/from16 v9, p0

    move-wide v10, v4

    move-wide v12, v6

    .line 213
    :try_start_0
    invoke-virtual/range {v9 .. v14}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->writeSlice(JJLjava/io/OutputStream;)V

    .line 214
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 218
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    sget-object v9, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->COMPLETE:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v2, v9}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->sendCompletionNotification()V

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getBackoffPolicy()Lcom/google/gdata/client/uploader/BackoffPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/gdata/client/uploader/BackoffPolicy;->reset()V

    .line 268
    new-instance v2, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v2, v9, v10}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;-><init>(ILjava/io/InputStream;)V

    .line 285
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "length":J
    .end local v14    # "out":Ljava/io/OutputStream;
    :goto_1
    return-object v2

    .line 192
    .end local v4    # "start":J
    :cond_1
    const-wide/16 v4, 0x0

    goto/16 :goto_0

    .line 222
    .restart local v3    # "connection":Ljava/net/HttpURLConnection;
    .restart local v4    # "start":J
    .restart local v6    # "length":J
    .restart local v14    # "out":Ljava/io/OutputStream;
    :sswitch_0
    const-string v2, "Range"

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 223
    .local v18, "range":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->getNextByteIndexFromRangeHeader(Ljava/lang/String;)J

    move-result-wide v4

    .line 230
    :goto_2
    const-string v2, "Location"

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 231
    .local v15, "location":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUrl(Ljava/net/URL;)V

    .line 234
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getBackoffPolicy()Lcom/google/gdata/client/uploader/BackoffPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/gdata/client/uploader/BackoffPolicy;->reset()V
    :try_end_0
    .catch Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 271
    .end local v15    # "location":Ljava/lang/String;
    .end local v18    # "range":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 274
    .local v8, "e":Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 275
    invoke-direct/range {p0 .. p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->getNextStartByteFromServer()J

    move-result-wide v4

    goto/16 :goto_0

    .line 226
    .end local v8    # "e":Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;
    .restart local v18    # "range":Ljava/lang/String;
    :cond_3
    add-long/2addr v4, v6

    goto :goto_2

    .line 240
    .end local v18    # "range":Ljava/lang/String;
    :sswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    invoke-direct/range {p0 .. p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->getNextStartByteFromServer()J

    move-result-wide v4

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    neg-long v10, v6

    invoke-virtual {v2, v10, v11}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->addNumBytesUploaded(J)V
    :try_end_1
    .catch Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 249
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getBackoffPolicy()Lcom/google/gdata/client/uploader/BackoffPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/gdata/client/uploader/BackoffPolicy;->getNextBackoffMs()J

    move-result-wide v16

    .line 250
    .local v16, "backoffMs":J
    const-wide/16 v10, -0x1

    cmp-long v2, v16, v10

    if-nez v2, :cond_4

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v2}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->pause()V

    goto/16 :goto_0

    .line 255
    .end local v16    # "backoffMs":J
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 253
    .restart local v16    # "backoffMs":J
    :cond_4
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 277
    .end local v16    # "backoffMs":J
    :catch_2
    move-exception v8

    .line 280
    .local v8, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    sget-object v9, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v2, v9}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V

    goto/16 :goto_0

    .line 285
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "length":J
    .end local v8    # "e":Ljava/io/IOException;
    .end local v14    # "out":Ljava/io/OutputStream;
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 218
    nop

    :sswitch_data_0
    .sparse-switch
        0x134 -> :sswitch_0
        0x1f7 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public call()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->upload()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->call()Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$ResponseMessage;

    move-result-object v0

    return-object v0
.end method

.method writeSlice(JJLjava/io/OutputStream;)V
    .locals 13
    .param p1, "start"    # J
    .param p3, "length"    # J
    .param p5, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v4, 0x0

    .line 312
    .local v4, "numRead":I
    move-wide/from16 v6, p3

    .line 315
    .local v6, "numRemaining":J
    const/high16 v8, 0x10000

    new-array v2, v8, [B

    .line 318
    .local v2, "chunk":[B
    iget-object v8, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v8}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getData()Lcom/google/gdata/client/uploader/UploadData;

    move-result-object v5

    .line 319
    .local v5, "uploadData":Lcom/google/gdata/client/uploader/UploadData;
    invoke-interface {v5, p1, p2}, Lcom/google/gdata/client/uploader/UploadData;->setPosition(J)V

    .line 321
    monitor-enter v5

    .line 322
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    invoke-virtual {v8}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->isPaused()Z

    move-result v8

    if-nez v8, :cond_1

    .line 325
    array-length v8, v2

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_2

    .line 326
    const/4 v8, 0x0

    long-to-int v9, v6

    invoke-interface {v5, v2, v8, v9}, Lcom/google/gdata/client/uploader/UploadData;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 333
    :goto_0
    if-gez v4, :cond_3

    .line 337
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 338
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Ljava/io/OutputStream;->flush()V

    .line 339
    iget-object v8, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    sget-object v9, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;->CLIENT_ERROR:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;

    invoke-virtual {v8, v9}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->setUploadState(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader$UploadState;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v5

    .line 359
    return-void

    .line 328
    :cond_2
    const/4 v8, 0x0

    array-length v9, v2

    invoke-interface {v5, v2, v8, v9}, Lcom/google/gdata/client/uploader/UploadData;->read([BII)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    goto :goto_0

    .line 345
    :cond_3
    const/4 v8, 0x0

    :try_start_3
    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 346
    invoke-virtual/range {p5 .. p5}, Ljava/io/OutputStream;->flush()V

    .line 347
    int-to-long v8, v4

    sub-long/2addr v6, v8

    .line 348
    iget-object v8, p0, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;->uploader:Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    int-to-long v10, v4

    invoke-virtual {v8, v10, v11}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->addNumBytesUploaded(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    goto :goto_1

    .line 354
    :catch_0
    move-exception v3

    .line 355
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v8, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;

    invoke-direct {v8, p0}, Lcom/google/gdata/client/uploader/ResumableHttpUploadTask$ServerException;-><init>(Lcom/google/gdata/client/uploader/ResumableHttpUploadTask;)V

    throw v8

    .line 358
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8
.end method
