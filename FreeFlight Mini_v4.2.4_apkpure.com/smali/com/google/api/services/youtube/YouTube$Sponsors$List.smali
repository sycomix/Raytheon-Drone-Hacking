.class public Lcom/google/api/services/youtube/YouTube$Sponsors$List;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Sponsors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Lcom/google/api/services/youtube/model/SponsorListResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "sponsors"


# instance fields
.field private filter:Ljava/lang/String;
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

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Sponsors;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Sponsors;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 12635
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->this$1:Lcom/google/api/services/youtube/YouTube$Sponsors;

    .line 12636
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Sponsors;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "GET"

    const-string v3, "sponsors"

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/services/youtube/model/SponsorListResponse;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12637
    const-string v0, "Required parameter part must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->part:Ljava/lang/String;

    .line 12638
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
    .line 12647
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
    .line 12642
    invoke-super {p0}, Lcom/google/api/services/youtube/YouTubeRequest;->executeUsingHead()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12715
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 12761
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->maxResults:Ljava/lang/Long;

    return-object v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12737
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->pageToken:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12696
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->part:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 1

    .prologue
    .line 12775
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 1

    .prologue
    .line 12652
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 1

    .prologue
    .line 12657
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method

.method public setFilter(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 0

    .prologue
    .line 12720
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->filter:Ljava/lang/String;

    .line 12721
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 1

    .prologue
    .line 12662
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method

.method public setMaxResults(Ljava/lang/Long;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 0

    .prologue
    .line 12769
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->maxResults:Ljava/lang/Long;

    .line 12770
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 1

    .prologue
    .line 12667
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 0

    .prologue
    .line 12746
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->pageToken:Ljava/lang/String;

    .line 12747
    return-object p0
.end method

.method public setPart(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 0

    .prologue
    .line 12704
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->part:Ljava/lang/String;

    .line 12705
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 1

    .prologue
    .line 12672
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 1

    .prologue
    .line 12677
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;
    .locals 1

    .prologue
    .line 12682
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 12617
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Sponsors$List;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Sponsors$List;

    move-result-object v0

    return-object v0
.end method
