.class public Lcom/google/gdata/data/youtube/YtPublicationState;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtPublicationState.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "state"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/youtube/YtPublicationState$State;
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private helpUrl:Ljava/lang/String;

.field private reasonCode:Ljava/lang/String;

.field private state:Lcom/google/gdata/data/youtube/YtPublicationState$State;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/youtube/YtPublicationState$State;)V
    .locals 0
    .param p1, "state"    # Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->state:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .line 85
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/youtube/YtPublicationState$State;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Lcom/google/gdata/data/youtube/YtPublicationState$State;
    .param p2, "reasonCode"    # Ljava/lang/String;
    .param p3, "helpUrl"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->state:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .line 78
    iput-object p2, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->reasonCode:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->helpUrl:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->description:Ljava/lang/String;

    .line 81
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 7
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 182
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 184
    const-string v1, "name"

    const/4 v2, 0x1

    const-class v3, Lcom/google/gdata/data/youtube/YtPublicationState$State;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v5}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/AttributeHelper;->consumeEnum(Ljava/lang/String;ZLjava/lang/Class;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtPublicationState$State;

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->state:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .line 186
    const-string v0, "reasonCode"

    invoke-virtual {p1, v0, v6}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->reasonCode:Ljava/lang/String;

    .line 187
    const-string v0, "helpUrl"

    invoke-virtual {p1, v0, v6}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->helpUrl:Ljava/lang/String;

    .line 188
    invoke-virtual {p1, v6}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->description:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getHelpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->helpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->reasonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/google/gdata/data/youtube/YtPublicationState$State;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->state:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 3
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 173
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->state:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    new-instance v2, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;

    invoke-direct {v2}, Lcom/google/gdata/data/AttributeHelper$LowerCaseEnumToAttributeValue;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Enum;Lcom/google/gdata/data/AttributeHelper$EnumToAttributeValue;)V

    .line 174
    const-string v0, "reasonCode"

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->reasonCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "helpUrl"

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->helpUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->description:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setHelpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->helpUrl:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setReasonCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->reasonCode:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setState(Lcom/google/gdata/data/youtube/YtPublicationState$State;)V
    .locals 0
    .param p1, "state"    # Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtPublicationState;->state:Lcom/google/gdata/data/youtube/YtPublicationState$State;

    .line 103
    return-void
.end method
