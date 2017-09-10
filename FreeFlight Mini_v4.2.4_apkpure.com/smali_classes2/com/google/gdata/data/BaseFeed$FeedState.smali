.class public Lcom/google/gdata/data/BaseFeed$FeedState;
.super Ljava/lang/Object;
.source "BaseFeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/BaseFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FeedState"
.end annotation


# instance fields
.field public adaptable:Lcom/google/gdata/data/Kind$Adaptable;

.field public canPost:Z

.field public etag:Ljava/lang/String;

.field public fields:Ljava/lang/String;

.field public itemsPerPage:I

.field public kind:Ljava/lang/String;

.field public service:Lcom/google/gdata/client/Service;

.field public startIndex:I

.field public totalResults:I

.field public versionId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/BaseFeed$FeedState;->canPost:Z

    .line 149
    iput v1, p0, Lcom/google/gdata/data/BaseFeed$FeedState;->totalResults:I

    .line 152
    iput v1, p0, Lcom/google/gdata/data/BaseFeed$FeedState;->startIndex:I

    .line 155
    iput v1, p0, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I

    .line 158
    new-instance v0, Lcom/google/gdata/data/Kind$AdaptableHelper;

    invoke-direct {v0}, Lcom/google/gdata/data/Kind$AdaptableHelper;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/BaseFeed$FeedState;->adaptable:Lcom/google/gdata/data/Kind$Adaptable;

    return-void
.end method
