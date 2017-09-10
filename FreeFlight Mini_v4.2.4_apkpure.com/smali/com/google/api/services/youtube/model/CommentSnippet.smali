.class public final Lcom/google/api/services/youtube/model/CommentSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "CommentSnippet.java"


# instance fields
.field private authorChannelId:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private authorChannelUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private authorDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private authorGoogleplusProfileUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private authorProfileImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canRate:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private likeCount:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private moderationStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private publishedAt:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private textDisplay:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private textOriginal:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private updatedAt:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private viewerRating:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentSnippet;->clone()Lcom/google/api/services/youtube/model/CommentSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentSnippet;->clone()Lcom/google/api/services/youtube/model/CommentSnippet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 1

    .prologue
    .line 454
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/CommentSnippet;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentSnippet;->clone()Lcom/google/api/services/youtube/model/CommentSnippet;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorChannelId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorChannelId:Ljava/lang/Object;

    return-object v0
.end method

.method public getAuthorChannelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorGoogleplusProfileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorGoogleplusProfileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorProfileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCanRate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->canRate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->likeCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getModerationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->moderationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedAt()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->publishedAt:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getTextDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->textDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getTextOriginal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->textOriginal:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->updatedAt:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getViewerRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->viewerRating:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CommentSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CommentSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentSnippet;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 1

    .prologue
    .line 449
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/CommentSnippet;

    return-object v0
.end method

.method public setAuthorChannelId(Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorChannelId:Ljava/lang/Object;

    .line 171
    return-object p0
.end method

.method public setAuthorChannelUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorChannelUrl:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public setAuthorDisplayName(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorDisplayName:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setAuthorGoogleplusProfileUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorGoogleplusProfileUrl:Ljava/lang/String;

    .line 222
    return-object p0
.end method

.method public setAuthorProfileImageUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->authorProfileImageUrl:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public setCanRate(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->canRate:Ljava/lang/Boolean;

    .line 256
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->channelId:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public setLikeCount(Ljava/lang/Long;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->likeCount:Ljava/lang/Long;

    .line 292
    return-object p0
.end method

.method public setModerationStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->moderationStatus:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public setParentId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->parentId:Ljava/lang/String;

    .line 328
    return-object p0
.end method

.method public setPublishedAt(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->publishedAt:Lcom/google/api/client/util/DateTime;

    .line 347
    return-object p0
.end method

.method public setTextDisplay(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->textDisplay:Ljava/lang/String;

    .line 368
    return-object p0
.end method

.method public setTextOriginal(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->textOriginal:Ljava/lang/String;

    .line 389
    return-object p0
.end method

.method public setUpdatedAt(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->updatedAt:Lcom/google/api/client/util/DateTime;

    .line 408
    return-object p0
.end method

.method public setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->videoId:Ljava/lang/String;

    .line 425
    return-object p0
.end method

.method public setViewerRating(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentSnippet;
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentSnippet;->viewerRating:Ljava/lang/String;

    .line 444
    return-object p0
.end method
