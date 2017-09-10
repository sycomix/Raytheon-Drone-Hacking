.class Lcom/google/gdata/data/youtube/YouTubeMediaGroup$1;
.super Ljava/util/AbstractList;
.source "YouTubeMediaGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/data/youtube/YouTubeMediaGroup;->getContents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/google/gdata/data/media/mediarss/MediaContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

.field final synthetic val$contents:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/gdata/data/youtube/YouTubeMediaGroup;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$1;->this$0:Lcom/google/gdata/data/youtube/YouTubeMediaGroup;

    iput-object p2, p0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$1;->val$contents:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/google/gdata/data/media/mediarss/MediaContent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$1;->val$contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/media/mediarss/MediaContent;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$1;->get(I)Lcom/google/gdata/data/media/mediarss/MediaContent;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaGroup$1;->val$contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
