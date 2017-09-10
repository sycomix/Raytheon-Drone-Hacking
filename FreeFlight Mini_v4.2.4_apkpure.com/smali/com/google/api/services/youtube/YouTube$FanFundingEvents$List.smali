.class public Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$FanFundingEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Lcom/google/api/services/youtube/model/FanFundingEventListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "fanFundingEvents"


# instance fields
.field private hl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private maxResults:Ljava/lang/Long;
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

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$FanFundingEvents;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$FanFundingEvents;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 5059
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->this$1:Lcom/google/api/services/youtube/YouTube$FanFundingEvents;

    .line 5060
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$FanFundingEvents;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "GET"

    const-string v3, "fanFundingEvents"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/youtube/model/FanFundingEventListResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5061
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->part:Ljava/lang/String;

    .line 5062
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
    .line 5071
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
    .line 5066
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5203
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->hl:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 5169
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5145
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5120
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 1

    .prologue
    .line 5223
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 1

    .prologue
    .line 5076
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 1

    .prologue
    .line 5081
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setHl(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 0

    .prologue
    .line 5217
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->hl:Ljava/lang/String;

    .line 5218
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 1

    .prologue
    .line 5086
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 0

    .prologue
    .line 5177
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->maxResults:Ljava/lang/Long;

    .line 5178
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 1

    .prologue
    .line 5091
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 0

    .prologue
    .line 5154
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->pageToken:Ljava/lang/String;

    .line 5155
    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 0

    .prologue
    .line 5128
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->part:Ljava/lang/String;

    .line 5129
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 1

    .prologue
    .line 5096
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 1

    .prologue
    .line 5101
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;
    .locals 1

    .prologue
    .line 5106
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 5041
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$FanFundingEvents$List;

    move-result-object v0

    return-object v0
.end method
