.class public final Lcom/google/api/services/youtube/model/LiveStreamStatus;
.super Lcom/google/api/client/json/GenericJson;
.source "LiveStreamStatus.java"


# instance fields
.field private healthStatus:Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private streamStatus:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamStatus;->clone()Lcom/google/api/services/youtube/model/LiveStreamStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamStatus;->clone()Lcom/google/api/services/youtube/model/LiveStreamStatus;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/LiveStreamStatus;
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStreamStatus;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveStreamStatus;->clone()Lcom/google/api/services/youtube/model/LiveStreamStatus;

    move-result-object v0

    return-object v0
.end method

.method public getHealthStatus()Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamStatus;->healthStatus:Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    return-object v0
.end method

.method public getStreamStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveStreamStatus;->streamStatus:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStreamStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveStreamStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamStatus;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveStreamStatus;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveStreamStatus;

    return-object v0
.end method

.method public setHealthStatus(Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;)Lcom/google/api/services/youtube/model/LiveStreamStatus;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamStatus;->healthStatus:Lcom/google/api/services/youtube/model/LiveStreamHealthStatus;

    .line 63
    return-object p0
.end method

.method public setStreamStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveStreamStatus;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveStreamStatus;->streamStatus:Ljava/lang/String;

    .line 78
    return-object p0
.end method
