.class public final Lcom/google/api/services/youtube/model/CommentThreadSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "CommentThreadSnippet.java"


# instance fields
.field private canReply:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isPublic:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private topLevelComment:Lcom/google/api/services/youtube/model/Comment;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private totalReplyCount:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private videoId:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->clone()Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->clone()Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->clone()Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    move-result-object v0

    return-object v0
.end method

.method public getCanReply()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->canReply:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPublic()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->isPublic:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTopLevelComment()Lcom/google/api/services/youtube/model/Comment;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->topLevelComment:Lcom/google/api/services/youtube/model/Comment;

    return-object v0
.end method

.method public getTotalReplyCount()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->totalReplyCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 1

    .prologue
    .line 191
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;

    return-object v0
.end method

.method public setCanReply(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->canReply:Ljava/lang/Boolean;

    .line 97
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->channelId:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public setIsPublic(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->isPublic:Ljava/lang/Boolean;

    .line 133
    return-object p0
.end method

.method public setTopLevelComment(Lcom/google/api/services/youtube/model/Comment;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->topLevelComment:Lcom/google/api/services/youtube/model/Comment;

    .line 150
    return-object p0
.end method

.method public setTotalReplyCount(Ljava/lang/Long;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->totalReplyCount:Ljava/lang/Long;

    .line 167
    return-object p0
.end method

.method public setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/CommentThreadSnippet;
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/google/api/services/youtube/model/CommentThreadSnippet;->videoId:Ljava/lang/String;

    .line 186
    return-object p0
.end method
