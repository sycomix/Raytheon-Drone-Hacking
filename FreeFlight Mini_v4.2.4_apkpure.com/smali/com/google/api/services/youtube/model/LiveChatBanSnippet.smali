.class public final Lcom/google/api/services/youtube/model/LiveChatBanSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "LiveChatBanSnippet.java"


# instance fields
.field private banDurationSeconds:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private bannedUserDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private liveChatId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatBanSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatBanSnippet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/LiveChatBanSnippet;
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatBanSnippet;

    move-result-object v0

    return-object v0
.end method

.method public getBanDurationSeconds()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->banDurationSeconds:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getBannedUserDetails()Lcom/google/api/services/youtube/model/ChannelProfileDetails;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->bannedUserDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    return-object v0
.end method

.method public getLiveChatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->liveChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatBanSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatBanSnippet;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatBanSnippet;
    .locals 1

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;

    return-object v0
.end method

.method public setBanDurationSeconds(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/LiveChatBanSnippet;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->banDurationSeconds:Ljava/math/BigInteger;

    .line 77
    return-object p0
.end method

.method public setBannedUserDetails(Lcom/google/api/services/youtube/model/ChannelProfileDetails;)Lcom/google/api/services/youtube/model/LiveChatBanSnippet;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->bannedUserDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    .line 92
    return-object p0
.end method

.method public setLiveChatId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatBanSnippet;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->liveChatId:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatBanSnippet;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatBanSnippet;->type:Ljava/lang/String;

    .line 126
    return-object p0
.end method
