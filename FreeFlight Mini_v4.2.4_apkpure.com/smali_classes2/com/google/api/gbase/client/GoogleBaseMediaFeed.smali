.class public Lcom/google/api/gbase/client/GoogleBaseMediaFeed;
.super Lcom/google/gdata/data/media/MediaFeed;
.source "GoogleBaseMediaFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaFeed",
        "<",
        "Lcom/google/api/gbase/client/GoogleBaseMediaFeed;",
        "Lcom/google/api/gbase/client/GoogleBaseMediaEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/api/gbase/client/GoogleBaseMediaEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/media/MediaFeed;-><init>(Ljava/lang/Class;)V

    .line 30
    return-void
.end method
