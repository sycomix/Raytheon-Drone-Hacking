.class public Lcom/google/gdata/model/atom/Feed$FeedState;
.super Ljava/lang/Object;
.source "Feed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/model/atom/Feed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FeedState"
.end annotation


# instance fields
.field public canPost:Z

.field public service:Lcom/google/gdata/client/Service;

.field public versionId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/model/atom/Feed$FeedState;->canPost:Z

    return-void
.end method
