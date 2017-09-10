.class public Lcom/google/gdata/data/youtube/RatingFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "RatingFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#rating"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/youtube/RatingFeed;",
        "Lcom/google/gdata/data/youtube/RatingEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/gdata/data/youtube/RatingEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 33
    const-string v0, "http://gdata.youtube.com/schemas/2007#rating"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .param p1, "base"    # Lcom/google/gdata/data/BaseFeed;

    .prologue
    .line 37
    const-class v0, Lcom/google/gdata/data/youtube/RatingEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 38
    const-string v0, "http://gdata.youtube.com/schemas/2007#rating"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V

    .line 39
    return-void
.end method
