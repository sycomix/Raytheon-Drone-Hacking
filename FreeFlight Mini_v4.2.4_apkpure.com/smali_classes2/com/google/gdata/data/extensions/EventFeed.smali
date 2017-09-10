.class public Lcom/google/gdata/data/extensions/EventFeed;
.super Lcom/google/gdata/data/extensions/BaseEventFeed;
.source "EventFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/g/2005#event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/extensions/BaseEventFeed",
        "<",
        "Lcom/google/gdata/data/extensions/EventFeed;",
        "Lcom/google/gdata/data/extensions/EventEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/gdata/data/extensions/EventEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/extensions/BaseEventFeed;-><init>(Ljava/lang/Class;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    const-class v0, Lcom/google/gdata/data/extensions/EventEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/extensions/BaseEventFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 43
    return-void
.end method
