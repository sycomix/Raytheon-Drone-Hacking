.class public interface abstract Lorg/mortbay/jetty/HttpTokens;
.super Ljava/lang/Object;
.source "HttpTokens.java"


# static fields
.field public static final CARRIAGE_RETURN:B = 0xdt

.field public static final CHUNKED_CONTENT:I = -0x2

.field public static final COLON:B = 0x3at

.field public static final CRLF:[B

.field public static final EOF_CONTENT:I = -0x1

.field public static final LINE_FEED:B = 0xat

.field public static final NO_CONTENT:I = 0x0

.field public static final SELF_DEFINING_CONTENT:I = -0x4

.field public static final SEMI_COLON:B = 0x3bt

.field public static final SPACE:B = 0x20t

.field public static final TAB:B = 0x9t

.field public static final UNKNOWN_CONTENT:I = -0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mortbay/jetty/HttpTokens;->CRLF:[B

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method
