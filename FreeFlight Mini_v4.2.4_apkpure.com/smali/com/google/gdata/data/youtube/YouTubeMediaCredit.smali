.class public Lcom/google/gdata/data/youtube/YouTubeMediaCredit;
.super Lcom/google/gdata/data/media/mediarss/MediaCredit;
.source "YouTubeMediaCredit.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    isRepeatable = true
    localName = "credit"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;
    }
.end annotation


# instance fields
.field private typeString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/MediaCredit;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "attrsHelper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaCredit;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 97
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->typeString:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public getType()Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v2, p0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->typeString:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 58
    :goto_0
    return-object v1

    .line 56
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->typeString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;->valueOf(Ljava/lang/String;)Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "unknownType":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->typeString:Ljava/lang/String;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaCredit;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 87
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->typeString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    const-string/jumbo v0, "yt:type"

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->typeString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method

.method public setType(Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;

    .prologue
    .line 66
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->typeString:Ljava/lang/String;

    .line 67
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/google/gdata/data/youtube/YouTubeMediaCredit$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTypeString(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeString"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YouTubeMediaCredit;->typeString:Ljava/lang/String;

    .line 81
    return-void
.end method
