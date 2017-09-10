.class public Lcom/google/gdata/util/ServiceExceptionInitializer;
.super Ljava/lang/Object;
.source "ServiceExceptionInitializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/util/ServiceExceptionInitializer$1;,
        Lcom/google/gdata/util/ServiceExceptionInitializer$DebugInfoHandler;,
        Lcom/google/gdata/util/ServiceExceptionInitializer$SendReportHandler;,
        Lcom/google/gdata/util/ServiceExceptionInitializer$ExtendedHelpHandler;,
        Lcom/google/gdata/util/ServiceExceptionInitializer$InternalReasonHandler;,
        Lcom/google/gdata/util/ServiceExceptionInitializer$LocationHandler;,
        Lcom/google/gdata/util/ServiceExceptionInitializer$CodeHandler;,
        Lcom/google/gdata/util/ServiceExceptionInitializer$DomainHandler;,
        Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorHandler;,
        Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorsHandler;
    }
.end annotation


# instance fields
.field private currentException:Lcom/google/gdata/util/ServiceException;

.field private final initialException:Lcom/google/gdata/util/ServiceException;


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/ServiceException;)V
    .locals 1
    .param p1, "se"    # Lcom/google/gdata/util/ServiceException;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    .line 61
    iput-object p1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/google/gdata/util/ServiceExceptionInitializer;)Lcom/google/gdata/util/ServiceException;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/util/ServiceExceptionInitializer;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/gdata/util/ServiceExceptionInitializer;->nextException()Lcom/google/gdata/util/ServiceException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/gdata/util/ServiceExceptionInitializer;)Lcom/google/gdata/util/ServiceException;
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/util/ServiceExceptionInitializer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    return-object v0
.end method

.method private nextException()Lcom/google/gdata/util/ServiceException;
    .locals 8

    .prologue
    .line 149
    iget-object v4, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    if-nez v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    iput-object v4, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    .line 151
    iget-object v4, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    .line 160
    :goto_0
    return-object v4

    .line 156
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    invoke-virtual {v7}, Lcom/google/gdata/util/ServiceException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/util/ServiceException;

    iput-object v4, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    .line 159
    iget-object v4, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    iget-object v5, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;

    invoke-virtual {v4, v5}, Lcom/google/gdata/util/ServiceException;->addSibling(Lcom/google/gdata/util/ServiceException;)Lcom/google/gdata/util/ServiceException;

    .line 160
    iget-object v4, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->currentException:Lcom/google/gdata/util/ServiceException;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "ie":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 163
    .end local v1    # "ie":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v3

    .line 164
    .local v3, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 165
    .end local v3    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 166
    .local v0, "iae":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 167
    .end local v0    # "iae":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 168
    .local v2, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public parse(Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V
    .locals 6
    .param p1, "contentType"    # Lcom/google/gdata/util/ContentType;
    .param p2, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 129
    sget-object v2, Lcom/google/gdata/util/ContentType;->GDATA_ERROR:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v2, p1}, Lcom/google/gdata/util/ContentType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    new-instance v1, Lcom/google/gdata/util/XmlParser;

    invoke-direct {v1}, Lcom/google/gdata/util/XmlParser;-><init>()V

    .line 132
    .local v1, "xp":Lcom/google/gdata/util/XmlParser;
    :try_start_0
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorsHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/gdata/util/ServiceExceptionInitializer$ErrorsHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V

    const-string v4, "http://schemas.google.com/g/2005"

    const-string v5, "errors"

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/gdata/util/XmlParser;->parse(Ljava/io/Reader;Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "xp":Lcom/google/gdata/util/XmlParser;
    :cond_0
    return-void

    .line 134
    .restart local v1    # "xp":Lcom/google/gdata/util/XmlParser;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Impossible parser I/O"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parse(Ljava/net/HttpURLConnection;)V
    .locals 11
    .param p1, "httpConn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v9, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    iput v10, v9, Lcom/google/gdata/util/ServiceException;->httpErrorCodeOverride:I

    .line 79
    iget-object v9, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, v9, Lcom/google/gdata/util/ServiceException;->httpHeaders:Ljava/util/Map;

    .line 83
    new-instance v3, Lcom/google/gdata/util/ContentType;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    .line 85
    .local v3, "responseContentType":Lcom/google/gdata/util/ContentType;
    iget-object v9, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    iput-object v3, v9, Lcom/google/gdata/util/ServiceException;->responseContentType:Lcom/google/gdata/util/ContentType;

    .line 88
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    .line 89
    .local v4, "responseLength":I
    if-gez v4, :cond_2

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v8, "sb":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v9, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    iget v9, v9, Lcom/google/gdata/util/ServiceException;->httpErrorCodeOverride:I

    const/16 v10, 0x190

    if-lt v9, v10, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    .line 101
    .local v6, "responseStream":Ljava/io/InputStream;
    :goto_1
    if-eqz v6, :cond_5

    .line 102
    const-string v9, "gzip"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 103
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v6    # "responseStream":Ljava/io/InputStream;
    .local v7, "responseStream":Ljava/io/InputStream;
    move-object v6, v7

    .line 106
    .end local v7    # "responseStream":Ljava/io/InputStream;
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lcom/google/gdata/util/ContentType;->getAttributes()Ljava/util/Map;

    move-result-object v9

    const-string v10, "charset"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "charset":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 108
    const-string v1, "iso8859-1"

    .line 110
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "responseLine":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 114
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 121
    .end local v1    # "charset":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "responseLine":Ljava/lang/String;
    :catchall_0
    move-exception v9

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    throw v9

    .line 91
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    if-lez v4, :cond_5

    .line 92
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    goto :goto_1

    .line 117
    .restart local v1    # "charset":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "responseLine":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "body":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/gdata/util/ServiceExceptionInitializer;->initialException:Lcom/google/gdata/util/ServiceException;

    iput-object v0, v9, Lcom/google/gdata/util/ServiceException;->responseBody:Ljava/lang/String;

    .line 119
    invoke-virtual {p0, v3, v0}, Lcom/google/gdata/util/ServiceExceptionInitializer;->parse(Lcom/google/gdata/util/ContentType;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 125
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "charset":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "responseLine":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    return-void
.end method
