.class public Lcom/google/gdata/data/media/mediarss/MediaCopyright;
.super Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;
.source "MediaCopyright.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "copyright"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;-><init>()V

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
    .line 56
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 57
    const-string/jumbo v0, "url"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaCopyright;->url:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public bridge synthetic getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaCopyright;->url:Ljava/lang/String;

    return-object v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 50
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaCopyright;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public bridge synthetic setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractElementWithContent;->setContent(Ljava/lang/String;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaCopyright;->url:Ljava/lang/String;

    .line 45
    return-void
.end method
