.class public final Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
.super Lcom/google/api/client/json/GenericJson;
.source "LiveChatMessageAuthorDetails.java"


# instance fields
.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private channelUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isChatModerator:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isChatOwner:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isChatSponsor:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isVerified:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private profileImageUrl:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 1

    .prologue
    .line 235
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->channelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsChatModerator()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatModerator:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsChatOwner()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatOwner:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsChatSponsor()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatSponsor:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsVerified()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isVerified:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 1

    .prologue
    .line 230
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;

    return-object v0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->channelId:Ljava/lang/String;

    .line 106
    return-object p0
.end method

.method public setChannelUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->channelUrl:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->displayName:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public setIsChatModerator(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatModerator:Ljava/lang/Boolean;

    .line 157
    return-object p0
.end method

.method public setIsChatOwner(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatOwner:Ljava/lang/Boolean;

    .line 174
    return-object p0
.end method

.method public setIsChatSponsor(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isChatSponsor:Ljava/lang/Boolean;

    .line 191
    return-object p0
.end method

.method public setIsVerified(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->isVerified:Ljava/lang/Boolean;

    .line 208
    return-object p0
.end method

.method public setProfileImageUrl(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageAuthorDetails;->profileImageUrl:Ljava/lang/String;

    .line 225
    return-object p0
.end method
