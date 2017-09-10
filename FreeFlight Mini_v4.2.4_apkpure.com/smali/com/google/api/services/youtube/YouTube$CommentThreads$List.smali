.class public Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$CommentThreads;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Lcom/google/api/services/youtube/model/CommentThreadListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "commentThreads"


# instance fields
.field private allThreadsRelatedToChannelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private moderationStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private order:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private part:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private searchTerms:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private textFormat:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$CommentThreads;

.field private videoId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$CommentThreads;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 3657
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->this$1:Lcom/google/api/services/youtube/YouTube$CommentThreads;

    .line 3658
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$CommentThreads;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "GET"

    const-string v3, "commentThreads"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/youtube/model/CommentThreadListResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3659
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->part:Ljava/lang/String;

    .line 3660
    return-void
.end method


# virtual methods
.method public buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3669
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->buildHttpRequestUsingHead()Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public executeUsingHead()Lcom/google/api/client/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3664
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAllThreadsRelatedToChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->allThreadsRelatedToChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3798
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3875
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getModerationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3933
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->moderationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3984
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3904
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3718
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTerms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->searchTerms:Ljava/lang/String;

    return-object v0
.end method

.method public getTextFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->textFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3822
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 1

    .prologue
    .line 4000
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public setAllThreadsRelatedToChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3781
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->allThreadsRelatedToChannelId:Ljava/lang/String;

    .line 3782
    return-object p0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 1

    .prologue
    .line 3674
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3807
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->channelId:Ljava/lang/String;

    .line 3808
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 1

    .prologue
    .line 3679
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3883
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->id:Ljava/lang/String;

    .line 3884
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 1

    .prologue
    .line 3684
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3860
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->maxResults:Ljava/lang/Long;

    .line 3861
    return-object p0
.end method

.method public setModerationStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3942
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->moderationStatus:Ljava/lang/String;

    .line 3943
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 1

    .prologue
    .line 3689
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public setOrder(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3994
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->order:Ljava/lang/String;

    .line 3995
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3915
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->pageToken:Ljava/lang/String;

    .line 3916
    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3726
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->part:Ljava/lang/String;

    .line 3727
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 1

    .prologue
    .line 3694
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 1

    .prologue
    .line 3699
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public setSearchTerms(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3755
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->searchTerms:Ljava/lang/String;

    .line 3756
    return-object p0
.end method

.method public setTextFormat(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3965
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->textFormat:Ljava/lang/String;

    .line 3966
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 1

    .prologue
    .line 3704
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 3639
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;

    move-result-object v0

    return-object v0
.end method

.method public setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$CommentThreads$List;
    .locals 0

    .prologue
    .line 3830
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$CommentThreads$List;->videoId:Ljava/lang/String;

    .line 3831
    return-object p0
.end method
