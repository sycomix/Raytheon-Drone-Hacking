.class public Lcom/google/gdata/data/youtube/YtGender;
.super Lcom/google/gdata/data/AbstractExtension;
.source "YtGender.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "gender"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/youtube/YtGender$Value;
    }
.end annotation


# instance fields
.field private gender:Lcom/google/gdata/data/youtube/YtGender$Value;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/youtube/YtGender$Value;)V
    .locals 0
    .param p1, "gender"    # Lcom/google/gdata/data/youtube/YtGender$Value;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtGender;->gender:Lcom/google/gdata/data/youtube/YtGender$Value;

    .line 80
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/gdata/data/youtube/YtGender$Value;->fromId(Ljava/lang/String;)Lcom/google/gdata/data/youtube/YtGender$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YtGender;->gender:Lcom/google/gdata/data/youtube/YtGender$Value;

    .line 114
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtGender;->gender:Lcom/google/gdata/data/youtube/YtGender$Value;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/google/gdata/util/ParseException;

    const-string v1, "Unknown gender. It should be m or f."

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    return-void
.end method

.method public getGender()Lcom/google/gdata/data/youtube/YtGender$Value;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtGender;->gender:Lcom/google/gdata/data/youtube/YtGender$Value;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 104
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtGender;->gender:Lcom/google/gdata/data/youtube/YtGender$Value;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YtGender;->gender:Lcom/google/gdata/data/youtube/YtGender$Value;

    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtGender$Value;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public setGender(Lcom/google/gdata/data/youtube/YtGender$Value;)V
    .locals 0
    .param p1, "gender"    # Lcom/google/gdata/data/youtube/YtGender$Value;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YtGender;->gender:Lcom/google/gdata/data/youtube/YtGender$Value;

    .line 98
    return-void
.end method
