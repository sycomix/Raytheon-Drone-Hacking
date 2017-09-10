.class public Lorg/mortbay/jetty/HttpSchemes;
.super Ljava/lang/Object;
.source "HttpSchemes.java"


# static fields
.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final HTTPS_BUFFER:Lorg/mortbay/io/Buffer;

.field public static final HTTP_BUFFER:Lorg/mortbay/io/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    const-string v1, "http"

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mortbay/jetty/HttpSchemes;->HTTP_BUFFER:Lorg/mortbay/io/Buffer;

    .line 33
    new-instance v0, Lorg/mortbay/io/ByteArrayBuffer;

    const-string v1, "https"

    invoke-direct {v0, v1}, Lorg/mortbay/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mortbay/jetty/HttpSchemes;->HTTPS_BUFFER:Lorg/mortbay/io/Buffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
