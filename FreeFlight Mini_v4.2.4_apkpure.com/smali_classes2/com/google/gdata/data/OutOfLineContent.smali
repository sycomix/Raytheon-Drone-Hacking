.class public Lcom/google/gdata/data/OutOfLineContent;
.super Lcom/google/gdata/data/Content;
.source "OutOfLineContent.java"

# interfaces
.implements Lcom/google/gdata/data/IOutOfLineContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/OutOfLineContent$AtomHandler;
    }
.end annotation


# instance fields
.field protected etag:Ljava/lang/String;

.field protected lang:Ljava/lang/String;

.field protected length:J

.field protected mimeType:Lcom/google/gdata/util/ContentType;

.field protected uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/Content;-><init>()V

    .line 157
    return-void
.end method


# virtual methods
.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 5
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v0, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v1, p0, Lcom/google/gdata/data/OutOfLineContent;->mimeType:Lcom/google/gdata/util/ContentType;

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "type"

    iget-object v3, p0, Lcom/google/gdata/data/OutOfLineContent;->mimeType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v3}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/OutOfLineContent;->uri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 108
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "src"

    iget-object v3, p0, Lcom/google/gdata/data/OutOfLineContent;->uri:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/OutOfLineContent;->etag:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/gdata/client/Service;->getVersion()Lcom/google/gdata/util/Version;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/client/Service$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "gd"

    const-string v3, "etag"

    iget-object v4, p0, Lcom/google/gdata/data/OutOfLineContent;->etag:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/google/gdata/data/OutOfLineContent;->lang:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 117
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "xml:lang"

    iget-object v3, p0, Lcom/google/gdata/data/OutOfLineContent;->lang:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_3
    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "content"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v0, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v1, p0, Lcom/google/gdata/data/OutOfLineContent;->mimeType:Lcom/google/gdata/util/ContentType;

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "type"

    iget-object v3, p0, Lcom/google/gdata/data/OutOfLineContent;->mimeType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v3}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/OutOfLineContent;->uri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 146
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "url"

    iget-object v3, p0, Lcom/google/gdata/data/OutOfLineContent;->uri:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    iget-wide v2, p0, Lcom/google/gdata/data/OutOfLineContent;->length:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 150
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "length"

    iget-wide v4, p0, Lcom/google/gdata/data/OutOfLineContent;->length:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_2
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "enclosure"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/gdata/data/OutOfLineContent;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gdata/data/OutOfLineContent;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/google/gdata/data/OutOfLineContent;->length:J

    return-wide v0
.end method

.method public getMimeType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/gdata/data/OutOfLineContent;->mimeType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x7

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/gdata/data/OutOfLineContent;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/gdata/data/OutOfLineContent;->etag:Ljava/lang/String;

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/gdata/data/OutOfLineContent;->lang:Ljava/lang/String;

    return-void
.end method

.method public setLength(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 77
    iput-wide p1, p0, Lcom/google/gdata/data/OutOfLineContent;->length:J

    return-void
.end method

.method public setMimeType(Lcom/google/gdata/util/ContentType;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/gdata/data/OutOfLineContent;->mimeType:Lcom/google/gdata/util/ContentType;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/gdata/data/OutOfLineContent;->uri:Ljava/lang/String;

    return-void
.end method
