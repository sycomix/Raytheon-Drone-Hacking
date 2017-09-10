.class public Lcom/google/gdata/data/media/mediarss/MediaPlayer;
.super Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;
.source "MediaPlayer.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "player"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;-><init>()V

    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaPlayer;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method
