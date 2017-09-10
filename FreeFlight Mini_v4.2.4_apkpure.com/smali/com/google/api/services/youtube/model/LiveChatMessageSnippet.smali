.class public final Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "LiveChatMessageSnippet.java"


# instance fields
.field private authorChannelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private displayMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fanFundingEventDetails:Lcom/google/api/services/youtube/model/LiveChatFanFundingEventDetails;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private hasDisplayContent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private liveChatId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private publishedAt:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private textMessageDetails:Lcom/google/api/services/youtube/model/LiveChatTextMessageDetails;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->clone()Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->authorChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->displayMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFanFundingEventDetails()Lcom/google/api/services/youtube/model/LiveChatFanFundingEventDetails;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->fanFundingEventDetails:Lcom/google/api/services/youtube/model/LiveChatFanFundingEventDetails;

    return-object v0
.end method

.method public getHasDisplayContent()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->hasDisplayContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLiveChatId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->liveChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedAt()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->publishedAt:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getTextMessageDetails()Lcom/google/api/services/youtube/model/LiveChatTextMessageDetails;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->textMessageDetails:Lcom/google/api/services/youtube/model/LiveChatTextMessageDetails;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 1

    .prologue
    .line 242
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;

    return-object v0
.end method

.method public setAuthorChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->authorChannelId:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public setDisplayMessage(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->displayMessage:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setFanFundingEventDetails(Lcom/google/api/services/youtube/model/LiveChatFanFundingEventDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->fanFundingEventDetails:Lcom/google/api/services/youtube/model/LiveChatFanFundingEventDetails;

    .line 150
    return-object p0
.end method

.method public setHasDisplayContent(Ljava/lang/Boolean;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->hasDisplayContent:Ljava/lang/Boolean;

    .line 167
    return-object p0
.end method

.method public setLiveChatId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->liveChatId:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setPublishedAt(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->publishedAt:Lcom/google/api/client/util/DateTime;

    .line 201
    return-object p0
.end method

.method public setTextMessageDetails(Lcom/google/api/services/youtube/model/LiveChatTextMessageDetails;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->textMessageDetails:Lcom/google/api/services/youtube/model/LiveChatTextMessageDetails;

    .line 218
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/api/services/youtube/model/LiveChatMessageSnippet;->type:Ljava/lang/String;

    .line 237
    return-object p0
.end method
