.class public final Lcom/google/api/services/youtube/model/ChannelSection;
.super Lcom/google/api/client/json/GenericJson;
.source "ChannelSection.java"


# instance fields
.field private contentDetails:Lcom/google/api/services/youtube/model/ChannelSectionContentDetails;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private etag:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private localizations:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/ChannelSectionLocalization;",
            ">;"
        }
    .end annotation
.end field

.field private snippet:Lcom/google/api/services/youtube/model/ChannelSectionSnippet;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private targeting:Lcom/google/api/services/youtube/model/ChannelSectionTargeting;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSection;->clone()Lcom/google/api/services/youtube/model/ChannelSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSection;->clone()Lcom/google/api/services/youtube/model/ChannelSection;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelSection;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/ChannelSection;->clone()Lcom/google/api/services/youtube/model/ChannelSection;

    move-result-object v0

    return-object v0
.end method

.method public getContentDetails()Lcom/google/api/services/youtube/model/ChannelSectionContentDetails;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->contentDetails:Lcom/google/api/services/youtube/model/ChannelSectionContentDetails;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/ChannelSectionLocalization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->localizations:Ljava/util/Map;

    return-object v0
.end method

.method public getSnippet()Lcom/google/api/services/youtube/model/ChannelSectionSnippet;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->snippet:Lcom/google/api/services/youtube/model/ChannelSectionSnippet;

    return-object v0
.end method

.method public getTargeting()Lcom/google/api/services/youtube/model/ChannelSectionTargeting;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/api/services/youtube/model/ChannelSection;->targeting:Lcom/google/api/services/youtube/model/ChannelSectionTargeting;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelSection;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/ChannelSection;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSection;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 1

    .prologue
    .line 212
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/ChannelSection;

    return-object v0
.end method

.method public setContentDetails(Lcom/google/api/services/youtube/model/ChannelSectionContentDetails;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->contentDetails:Lcom/google/api/services/youtube/model/ChannelSectionContentDetails;

    .line 103
    return-object p0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->etag:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->id:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->kind:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setLocalizations(Ljava/util/Map;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/services/youtube/model/ChannelSectionLocalization;",
            ">;)",
            "Lcom/google/api/services/youtube/model/ChannelSection;"
        }
    .end annotation

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->localizations:Ljava/util/Map;

    .line 171
    return-object p0
.end method

.method public setSnippet(Lcom/google/api/services/youtube/model/ChannelSectionSnippet;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->snippet:Lcom/google/api/services/youtube/model/ChannelSectionSnippet;

    .line 190
    return-object p0
.end method

.method public setTargeting(Lcom/google/api/services/youtube/model/ChannelSectionTargeting;)Lcom/google/api/services/youtube/model/ChannelSection;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/api/services/youtube/model/ChannelSection;->targeting:Lcom/google/api/services/youtube/model/ChannelSectionTargeting;

    .line 207
    return-object p0
.end method
