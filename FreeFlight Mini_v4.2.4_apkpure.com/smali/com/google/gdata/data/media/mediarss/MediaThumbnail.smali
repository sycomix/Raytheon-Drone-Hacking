.class public Lcom/google/gdata/data/media/mediarss/MediaThumbnail;
.super Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;
.source "MediaThumbnail.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    isRepeatable = true
    localName = "thumbnail"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation


# instance fields
.field private time:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;-><init>()V

    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 1
    .param p1, "attrsHelper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 69
    const-string/jumbo v0, "time"

    invoke-static {p1, v0}, Lcom/google/gdata/data/media/mediarss/MediaAttributeHelper;->consumeNormalPlayTime(Lcom/google/gdata/data/AttributeHelper;Ljava/lang/String;)Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;->time:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    .line 70
    return-void
.end method

.method public getTime()Lcom/google/gdata/data/media/mediarss/NormalPlayTime;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;->time:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generate"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractMediaResource;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 60
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;->time:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    if-eqz v0, :cond_0

    .line 61
    const-string/jumbo v0, "time"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;->time:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    invoke-virtual {v1}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->getNptHhmmssRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    return-void
.end method

.method public setTime(Lcom/google/gdata/data/media/mediarss/NormalPlayTime;)V
    .locals 0
    .param p1, "time"    # Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaThumbnail;->time:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    .line 55
    return-void
.end method
