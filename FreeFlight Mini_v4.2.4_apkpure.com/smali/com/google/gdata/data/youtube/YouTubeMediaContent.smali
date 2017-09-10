.class public Lcom/google/gdata/data/youtube/YouTubeMediaContent;
.super Lcom/google/gdata/data/media/mediarss/MediaContent;
.source "YouTubeMediaContent.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    isRepeatable = true
    localName = "content"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation


# instance fields
.field private youTubeFormat:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/MediaContent;-><init>()V

    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/google/gdata/data/youtube/YouTubeMediaContent;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 3
    .param p1, "attrsHelper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 65
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaContent;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 66
    const-string v0, "format"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;ZI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaContent;->youTubeFormat:Ljava/lang/Integer;

    .line 67
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaContent;->youTubeFormat:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaContent;->youTubeFormat:Ljava/lang/Integer;

    .line 70
    :cond_0
    return-void
.end method

.method public getYouTubeFormat()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaContent;->youTubeFormat:Ljava/lang/Integer;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/MediaContent;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 55
    iget-object v0, p0, Lcom/google/gdata/data/youtube/YouTubeMediaContent;->youTubeFormat:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 56
    const-string/jumbo v0, "yt:format"

    iget-object v1, p0, Lcom/google/gdata/data/youtube/YouTubeMediaContent;->youTubeFormat:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method public setYouTubeFormat(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "youTubeFormat"    # Ljava/lang/Integer;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/gdata/data/youtube/YouTubeMediaContent;->youTubeFormat:Ljava/lang/Integer;

    .line 80
    return-void
.end method
