.class public Lcom/google/gdata/client/GDataProtocol;
.super Ljava/lang/Object;
.source "GDataProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/client/GDataProtocol$Error;,
        Lcom/google/gdata/client/GDataProtocol$Query;,
        Lcom/google/gdata/client/GDataProtocol$Parameter;,
        Lcom/google/gdata/client/GDataProtocol$Header;,
        Lcom/google/gdata/client/GDataProtocol$Method;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isWeakEtag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "etag"    # Ljava/lang/String;

    .prologue
    .line 300
    if-eqz p0, :cond_0

    const-string v0, "W/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
