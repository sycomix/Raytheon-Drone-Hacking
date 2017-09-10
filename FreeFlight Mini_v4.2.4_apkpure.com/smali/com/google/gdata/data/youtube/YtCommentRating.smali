.class public Lcom/google/gdata/data/youtube/YtCommentRating;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtCommentRating.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "commentRating"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# instance fields
.field private total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "rating"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 51
    iput p1, p0, Lcom/google/gdata/data/youtube/YtCommentRating;->total:I

    .line 52
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    const-string/jumbo v0, "total"

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/google/gdata/data/youtube/YtCommentRating;->total:I

    .line 74
    return-void
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/gdata/data/youtube/YtCommentRating;->total:I

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 4
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 67
    const-string/jumbo v0, "total"

    iget v1, p0, Lcom/google/gdata/data/youtube/YtCommentRating;->total:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;J)V

    .line 68
    return-void
.end method

.method public setTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/google/gdata/data/youtube/YtCommentRating;->total:I

    .line 57
    return-void
.end method
