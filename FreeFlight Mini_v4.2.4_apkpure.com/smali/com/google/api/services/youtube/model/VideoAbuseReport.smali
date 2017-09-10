.class public final Lcom/google/api/services/youtube/model/VideoAbuseReport;
.super Lcom/google/api/client/json/GenericJson;
.source "VideoAbuseReport.java"


# instance fields
.field private comments:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private language:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private reasonId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private secondaryReasonId:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAbuseReport;->clone()Lcom/google/api/services/youtube/model/VideoAbuseReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAbuseReport;->clone()Lcom/google/api/services/youtube/model/VideoAbuseReport;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/VideoAbuseReport;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoAbuseReport;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/VideoAbuseReport;->clone()Lcom/google/api/services/youtube/model/VideoAbuseReport;

    move-result-object v0

    return-object v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReport;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReport;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReport;->reasonId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondaryReasonId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReport;->secondaryReasonId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/api/services/youtube/model/VideoAbuseReport;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoAbuseReport;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAbuseReport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/VideoAbuseReport;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAbuseReport;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/VideoAbuseReport;
    .locals 1

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/VideoAbuseReport;

    return-object v0
.end method

.method public setComments(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoAbuseReport;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReport;->comments:Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoAbuseReport;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReport;->language:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public setReasonId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoAbuseReport;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReport;->reasonId:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setSecondaryReasonId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoAbuseReport;
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReport;->secondaryReasonId:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public setVideoId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/VideoAbuseReport;
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/api/services/youtube/model/VideoAbuseReport;->videoId:Ljava/lang/String;

    .line 159
    return-object p0
.end method
