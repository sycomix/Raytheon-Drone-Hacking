.class public Lcom/google/gdata/data/media/mediarss/MediaText;
.super Lcom/google/gdata/data/media/mediarss/AbstractTextElement;
.source "MediaText.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "text"
    nsAlias = "media"
    nsUri = "http://search.yahoo.com/mrss/"
.end annotation


# instance fields
.field private end:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

.field private lang:Ljava/lang/String;

.field private start:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;-><init>()V

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
    .line 80
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V

    .line 81
    const-string v0, "start"

    invoke-static {p1, v0}, Lcom/google/gdata/data/media/mediarss/MediaAttributeHelper;->consumeNormalPlayTime(Lcom/google/gdata/data/AttributeHelper;Ljava/lang/String;)Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->start:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    .line 82
    const-string v0, "end"

    invoke-static {p1, v0}, Lcom/google/gdata/data/media/mediarss/MediaAttributeHelper;->consumeNormalPlayTime(Lcom/google/gdata/data/AttributeHelper;Ljava/lang/String;)Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->end:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    .line 83
    const-string v0, "lang"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->lang:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public getEnd()Lcom/google/gdata/data/media/mediarss/NormalPlayTime;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->end:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Lcom/google/gdata/data/media/mediarss/NormalPlayTime;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->start:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    return-object v0
.end method

.method public putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/mediarss/AbstractTextElement;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 68
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->start:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "start"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->start:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    invoke-virtual {v1}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->getNptHhmmssRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->end:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    if-eqz v0, :cond_1

    .line 72
    const-string v0, "end"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->end:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    invoke-virtual {v1}, Lcom/google/gdata/data/media/mediarss/NormalPlayTime;->getNptHhmmssRepresentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_1
    const-string v0, "lang"

    iget-object v1, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public setEnd(Lcom/google/gdata/data/media/mediarss/NormalPlayTime;)V
    .locals 0
    .param p1, "end"    # Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->end:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    .line 55
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->lang:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setStart(Lcom/google/gdata/data/media/mediarss/NormalPlayTime;)V
    .locals 0
    .param p1, "start"    # Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/gdata/data/media/mediarss/MediaText;->start:Lcom/google/gdata/data/media/mediarss/NormalPlayTime;

    .line 63
    return-void
.end method
