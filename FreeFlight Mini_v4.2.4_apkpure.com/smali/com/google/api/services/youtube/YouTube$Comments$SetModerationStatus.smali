.class public Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
.super Lcom/google/api/services/youtube/YouTubeRequest;
.source "YouTube.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/youtube/YouTube$Comments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetModerationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/youtube/YouTubeRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "comments/setModerationStatus"


# instance fields
.field private banAuthor:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private moderationStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/youtube/YouTube$Comments;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/youtube/YouTube$Comments;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 4741
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->this$1:Lcom/google/api/services/youtube/YouTube$Comments;

    .line 4742
    iget-object v1, p1, Lcom/google/api/services/youtube/YouTube$Comments;->this$0:Lcom/google/api/services/youtube/YouTube;

    const-string v2, "POST"

    const-string v3, "comments/setModerationStatus"

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/youtube/YouTubeRequest;-><init>(Lcom/google/api/services/youtube/YouTube;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4743
    const-string v0, "Required parameter id must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->id:Ljava/lang/String;

    .line 4744
    const-string v0, "Required parameter moderationStatus must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->moderationStatus:Ljava/lang/String;

    .line 4745
    return-void
.end method


# virtual methods
.method public getBanAuthor()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 4839
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->banAuthor:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4793
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModerationStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4812
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->moderationStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isBanAuthor()Z
    .locals 2

    .prologue
    .line 4878
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->banAuthor:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->banAuthor:Ljava/lang/Boolean;

    sget-object v1, Lcom/google/api/client/util/Data;->NULL_BOOLEAN:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    .line 4879
    :cond_0
    const/4 v0, 0x0

    .line 4881
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->banAuthor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 1

    .prologue
    .line 4886
    invoke-super {p0, p1, p2}, Lcom/google/api/services/youtube/YouTubeRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 1

    .prologue
    .line 4749
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setAlt(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method

.method public setBanAuthor(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .prologue
    .line 4851
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->banAuthor:Ljava/lang/Boolean;

    .line 4852
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 1

    .prologue
    .line 4754
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setFields(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .prologue
    .line 4801
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->id:Ljava/lang/String;

    .line 4802
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 1

    .prologue
    .line 4759
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setKey(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method

.method public setModerationStatus(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 0

    .prologue
    .line 4817
    iput-object p1, p0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->moderationStatus:Ljava/lang/String;

    .line 4818
    return-object p0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 1

    .prologue
    .line 4764
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 1

    .prologue
    .line 4769
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 1

    .prologue
    .line 4774
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;
    .locals 1

    .prologue
    .line 4779
    invoke-super {p0, p1}, Lcom/google/api/services/youtube/YouTubeRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTubeRequest;
    .locals 1

    .prologue
    .line 4720
    invoke-virtual {p0, p1}, Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/youtube/YouTube$Comments$SetModerationStatus;

    move-result-object v0

    return-object v0
.end method
