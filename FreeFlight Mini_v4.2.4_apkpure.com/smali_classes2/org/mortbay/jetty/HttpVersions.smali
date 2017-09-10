.class public Lorg/mortbay/jetty/HttpVersions;
.super Ljava/lang/Object;
.source "HttpVersions.java"


# static fields
.field public static final CACHE:Lorg/mortbay/io/BufferCache;

.field public static final HTTP_0_9:Ljava/lang/String; = ""

.field public static final HTTP_0_9_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final HTTP_0_9_ORDINAL:I = 0x9

.field public static final HTTP_1_0:Ljava/lang/String; = "HTTP/1.0"

.field public static final HTTP_1_0_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final HTTP_1_0_ORDINAL:I = 0xa

.field public static final HTTP_1_1:Ljava/lang/String; = "HTTP/1.1"

.field public static final HTTP_1_1_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final HTTP_1_1_ORDINAL:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lorg/mortbay/io/BufferCache;

    invoke-direct {v0}, Lorg/mortbay/io/BufferCache;-><init>()V

    sput-object v0, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    .line 40
    sget-object v0, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v1, ""

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpVersions;->HTTP_0_9_BUFFER:Lorg/mortbay/io/Buffer;

    .line 41
    sget-object v0, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v1, "HTTP/1.0"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_0_BUFFER:Lorg/mortbay/io/Buffer;

    .line 42
    sget-object v0, Lorg/mortbay/jetty/HttpVersions;->CACHE:Lorg/mortbay/io/BufferCache;

    const-string v1, "HTTP/1.1"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/io/BufferCache;->add(Ljava/lang/String;I)Lorg/mortbay/io/BufferCache$CachedBuffer;

    move-result-object v0

    sput-object v0, Lorg/mortbay/jetty/HttpVersions;->HTTP_1_1_BUFFER:Lorg/mortbay/io/Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
