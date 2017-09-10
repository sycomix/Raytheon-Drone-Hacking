.class public Lorg/mortbay/jetty/HttpHeaderValues;
.super Lorg/mortbay/io/BufferCache;
.source "HttpHeaderValues.java"


# static fields
.field public static final BYTES:Ljava/lang/String; = "bytes"

.field public static final BYTES_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final BYTES_ORDINAL:I = 0x9

.field public static final CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

.field public static final CHUNKED:Ljava/lang/String; = "chunked"

.field public static final CHUNKED_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final CHUNKED_ORDINAL:I = 0x2

.field public static final CLOSE:Ljava/lang/String; = "close"

.field public static final CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final CLOSE_ORDINAL:I = 0x1

.field public static final CONTINUE:Ljava/lang/String; = "100-continue"

.field public static final CONTINUE_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final CONTINUE_ORDINAL:I = 0x6

.field public static final GZIP:Ljava/lang/String; = "gzip"

.field public static final GZIP_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final GZIP_ORDINAL:I = 0x3

.field public static final IDENTITY:Ljava/lang/String; = "identity"

.field public static final IDENTITY_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final IDENTITY_ORDINAL:I = 0x4

.field public static final KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field public static final KEEP_ALIVE_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final KEEP_ALIVE_ORDINAL:I = 0x5

.field public static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field public static final NO_CACHE_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final NO_CACHE_ORDINAL:I = 0xa

.field public static final PROCESSING:Ljava/lang/String; = "102-processing"

.field public static final PROCESSING_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final PROCESSING_ORDINAL:I = 0x7

.field public static final TE:Ljava/lang/String; = "TE"

.field public static final TE_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final TE_ORDINAL:I = 0x8

.field static class$org$mortbay$jetty$HttpHeaderValues:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 60
    new-instance v6, Lorg/mortbay/jetty/HttpHeaderValues;

    invoke-direct {v6}, Lorg/mortbay/jetty/HttpHeaderValues;-><init>()V

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    .line 63
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "close"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CLOSE_BUFFER:Lorg/mortbay/io/Buffer;

    .line 64
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "chunked"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CHUNKED_BUFFER:Lorg/mortbay/io/Buffer;

    .line 65
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "gzip"

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->GZIP_BUFFER:Lorg/mortbay/io/Buffer;

    .line 66
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "identity"

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->IDENTITY_BUFFER:Lorg/mortbay/io/Buffer;

    .line 67
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "keep-alive"

    const/4 v8, 0x5

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->KEEP_ALIVE_BUFFER:Lorg/mortbay/io/Buffer;

    .line 68
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "100-continue"

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CONTINUE_BUFFER:Lorg/mortbay/io/Buffer;

    .line 69
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "102-processing"

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->PROCESSING_BUFFER:Lorg/mortbay/io/Buffer;

    .line 70
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "TE"

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->TE_BUFFER:Lorg/mortbay/io/Buffer;

    .line 71
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "bytes"

    const/16 v8, 0x9

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->BYTES_BUFFER:Lorg/mortbay/io/Buffer;

    .line 72
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "no-cache"

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->NO_CACHE_BUFFER:Lorg/mortbay/io/Buffer;

    .line 76
    const/16 v2, 0x64

    .line 77
    .local v2, "index":I
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "gzip"

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {v6, v7, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 78
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "gzip,deflate"

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {v6, v7, v3}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 79
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;

    const-string v7, "deflate"

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    invoke-virtual {v6, v7, v2}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 83
    :try_start_0
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->class$org$mortbay$jetty$HttpHeaderValues:Ljava/lang/Class;

    if-nez v6, :cond_0

    const-string v6, "org.mortbay.jetty.HttpHeaderValues"

    invoke-static {v6}, Lorg/mortbay/jetty/HttpHeaderValues;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->class$org$mortbay$jetty$HttpHeaderValues:Ljava/lang/Class;

    :goto_0
    const-string v7, "/org/mortbay/jetty/useragents"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 84
    .local v5, "ua":Ljava/io/InputStream;
    if-eqz v5, :cond_1

    .line 86
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v1, "in":Ljava/io/LineNumberReader;
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "line":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_1

    .line 90
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->CACHE:Lorg/mortbay/jetty/HttpHeaderValues;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :try_start_1
    invoke-virtual {v6, v4, v3}, Lorg/mortbay/jetty/HttpHeaderValues;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    .line 91
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    goto :goto_1

    .line 83
    .end local v1    # "in":Ljava/io/LineNumberReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "ua":Ljava/io/InputStream;
    :cond_0
    :try_start_2
    sget-object v6, Lorg/mortbay/jetty/HttpHeaderValues;->class$org$mortbay$jetty$HttpHeaderValues:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    move v2, v3

    .line 97
    .end local v3    # "index":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "index":I
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    invoke-static {v0}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 95
    .restart local v1    # "in":Ljava/io/LineNumberReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "ua":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    goto :goto_2

    .end local v1    # "in":Ljava/io/LineNumberReader;
    .end local v2    # "index":I
    .end local v4    # "line":Ljava/lang/String;
    .restart local v3    # "index":I
    :cond_1
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/mortbay/io/BufferCache;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 83
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method
