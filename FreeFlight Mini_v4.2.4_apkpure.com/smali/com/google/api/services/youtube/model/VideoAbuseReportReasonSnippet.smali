.class public final Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "VideoAbuseReportReasonSnippet.java"


# instance fields
.field private label:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private secondaryReasons:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/VideoAbuseReportSecondaryReason;",
            ">;"
        }
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;->clone()Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;->clone()Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;->clone()Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryReasons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/VideoAbuseReportSecondaryReason;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;->secondaryReasons:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;
    .locals 1

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;->label:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public setSecondaryReasons(Ljava/util/List;)Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/services/youtube/model/VideoAbuseReportSecondaryReason;",
            ">;)",
            "Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;"
        }
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReportReasonSnippet;->secondaryReasons:Ljava/util/List;

    .line 84
    return-object p0
.end method
