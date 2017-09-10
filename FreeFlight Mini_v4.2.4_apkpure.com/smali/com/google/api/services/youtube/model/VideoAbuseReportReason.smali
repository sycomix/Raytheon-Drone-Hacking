.class public final Lcom/google/api/services/youtube/model/VideoAbuseReportReason;
.super Lcom/google/api/client/json/GenericJson;
.source "VideoAbuseReportReason.java"


# instance fields
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

.field private snippet:Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->clone()Lcom/google/api/services/youtube/model/VideoAbuseReportReason;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->clone()Lcom/google/api/services/youtube/model/VideoAbuseReportReason;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/VideoAbuseReportReason;
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;

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
    .line 34
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->clone()Lcom/google/api/services/youtube/model/VideoAbuseReportReason;

    move-result-object v0

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getSnippet()Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->snippet:Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAbuseReportReason;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAbuseReportReason;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAbuseReportReason;
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoAbuseReportReason;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->etag:Ljava/lang/String;

    .line 80
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoAbuseReportReason;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->id:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoAbuseReportReason;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->kind:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public setSnippet(Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;)Lcom/google/api/services/youtube/model/VideoAbuseReportReason;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReason;->snippet:Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;

    .line 133
    return-object p0
.end method
