.class public final Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
.super Lcom/google/api/client/json/GenericJson;
.source "LiveStreamHealthStatus.java"


# instance fields
.field private configurationIssues:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;",
            ">;"
        }
    .end annotation
.end field

.field private lastUpdateTimeSeconds:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    return-void
.end method

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->clone()Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->clone()Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->clone()Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationIssues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->configurationIssues:Ljava/util/List;

    return-object v0
.end method

.method public getLastUpdateTimeSeconds()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->lastUpdateTimeSeconds:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->status:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 1

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    return-object v0
.end method

.method public setConfigurationIssues(Ljava/util/List;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/LiveStreamConfigurationIssue;",
            ">;)",
            "Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;"
        }
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->configurationIssues:Ljava/util/List;

    .line 77
    return-object p0
.end method

.method public setLastUpdateTimeSeconds(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->lastUpdateTimeSeconds:Ljava/math/BigInteger;

    .line 94
    return-object p0
.end method

.method public setStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;->status:Ljava/lang/String;

    .line 111
    return-object p0
.end method
