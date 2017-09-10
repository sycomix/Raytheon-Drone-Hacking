.class public Lcom/google/gdata/data/TextContent;
.super Lcom/google/gdata/data/Content;
.source "TextContent.java"

# interfaces
.implements Lcom/google/gdata/data/ITextContent;


# instance fields
.field protected content:Lcom/google/gdata/data/TextConstruct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/gdata/data/Content;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/TextConstruct;)V
    .locals 0
    .param p1, "content"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/gdata/data/Content;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/gdata/data/TextContent;->content:Lcom/google/gdata/data/TextConstruct;

    .line 37
    return-void
.end method


# virtual methods
.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/gdata/data/TextContent;->content:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/TextContent;->content:Lcom/google/gdata/data/TextConstruct;

    const-string v1, "content"

    invoke-virtual {v0, p1, v1}, Lcom/google/gdata/data/TextConstruct;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/gdata/data/TextContent;->content:Lcom/google/gdata/data/TextConstruct;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/gdata/data/TextContent;->content:Lcom/google/gdata/data/TextConstruct;

    const-string v1, "description"

    sget-object v2, Lcom/google/gdata/data/TextConstruct$RssFormat;->FULL_HTML:Lcom/google/gdata/data/TextConstruct$RssFormat;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gdata/data/TextConstruct;->generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Ljava/lang/String;Lcom/google/gdata/data/TextConstruct$RssFormat;)V

    .line 94
    :cond_0
    return-void
.end method

.method public bridge synthetic getContent()Lcom/google/gdata/data/ITextConstruct;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/gdata/data/TextContent;->getContent()Lcom/google/gdata/data/TextConstruct;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Lcom/google/gdata/data/TextConstruct;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/data/TextContent;->content:Lcom/google/gdata/data/TextConstruct;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/gdata/data/TextContent;->content:Lcom/google/gdata/data/TextConstruct;

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/TextContent;->content:Lcom/google/gdata/data/TextConstruct;

    invoke-virtual {v0}, Lcom/google/gdata/data/TextConstruct;->getLang()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public setContent(Lcom/google/gdata/data/TextConstruct;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/TextConstruct;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/gdata/data/TextContent;->content:Lcom/google/gdata/data/TextConstruct;

    return-void
.end method
