.class public final Lcom/google/api/services/youtube/model/FanFundingEventSnippet;
.super Lcom/google/api/client/json/GenericJson;
.source "FanFundingEventSnippet.java"


# instance fields
.field private amountMicros:Ljava/math/BigInteger;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private channelId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private commentText:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private createdAt:Lcom/google/api/client/util/DateTime;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private currency:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private displayString:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supporterDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;
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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->clone()Lcom/google/api/services/youtube/model/FanFundingEventSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->clone()Lcom/google/api/services/youtube/model/FanFundingEventSnippet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/youtube/model/FanFundingEventSnippet;
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;

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
    invoke-virtual {p0}, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->clone()Lcom/google/api/services/youtube/model/FanFundingEventSnippet;

    move-result-object v0

    return-object v0
.end method

.method public getAmountMicros()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->amountMicros:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->commentText:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Lcom/google/api/client/util/DateTime;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->createdAt:Lcom/google/api/client/util/DateTime;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->displayString:Ljava/lang/String;

    return-object v0
.end method

.method public getSupporterDetails()Lcom/google/api/services/youtube/model/ChannelProfileDetails;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->supporterDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/FanFundingEventSnippet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/FanFundingEventSnippet;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/youtube/model/FanFundingEventSnippet;
    .locals 1

    .prologue
    .line 212
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;

    return-object v0
.end method

.method public setAmountMicros(Ljava/math/BigInteger;)Lcom/google/api/services/youtube/model/FanFundingEventSnippet;
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->amountMicros:Ljava/math/BigInteger;

    .line 101
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Lcom/google/api/services/youtube/model/FanFundingEventSnippet;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->channelId:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public setCommentText(Ljava/lang/String;)Lcom/google/api/services/youtube/model/FanFundingEventSnippet;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->commentText:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setCreatedAt(Lcom/google/api/client/util/DateTime;)Lcom/google/api/services/youtube/model/FanFundingEventSnippet;
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->createdAt:Lcom/google/api/client/util/DateTime;

    .line 154
    return-object p0
.end method

.method public setCurrency(Ljava/lang/String;)Lcom/google/api/services/youtube/model/FanFundingEventSnippet;
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->currency:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setDisplayString(Ljava/lang/String;)Lcom/google/api/services/youtube/model/FanFundingEventSnippet;
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->displayString:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public setSupporterDetails(Lcom/google/api/services/youtube/model/ChannelProfileDetails;)Lcom/google/api/services/youtube/model/FanFundingEventSnippet;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/google/api/services/youtube/model/FanFundingEventSnippet;->supporterDetails:Lcom/google/api/services/youtube/model/ChannelProfileDetails;

    .line 207
    return-object p0
.end method
