.class public Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "GenericFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/appsforyourdomain/generic/GenericFeed;",
        "Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/gdata/data/appsforyourdomain/generic/GenericEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 33
    return-void
.end method
