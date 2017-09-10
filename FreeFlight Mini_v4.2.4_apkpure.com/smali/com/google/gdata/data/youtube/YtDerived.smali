.class public Lcom/google/gdata/data/youtube/YtDerived;
.super Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;
.source "YtDerived.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "derived"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/youtube/YtDerived$Value;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "derived"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;-><init>(Ljava/lang/String;)V

    .line 56
    return-void
.end method
