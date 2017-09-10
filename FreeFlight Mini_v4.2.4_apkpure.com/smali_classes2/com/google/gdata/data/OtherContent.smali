.class public Lcom/google/gdata/data/OtherContent;
.super Lcom/google/gdata/data/Content;
.source "OtherContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/OtherContent$AtomHandler;
    }
.end annotation


# instance fields
.field protected bytes:[B

.field protected ext:Lcom/google/gdata/data/Extension;

.field protected lang:Ljava/lang/String;

.field protected mimeType:Lcom/google/gdata/util/ContentType;

.field protected text:Ljava/lang/String;

.field protected xml:Lcom/google/gdata/util/XmlBlob;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/gdata/data/Content;-><init>()V

    .line 194
    return-void
.end method


# virtual methods
.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 7
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 135
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->mimeType:Lcom/google/gdata/util/ContentType;

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "type"

    iget-object v2, p0, Lcom/google/gdata/data/OtherContent;->mimeType:Lcom/google/gdata/util/ContentType;

    invoke-virtual {v2}, Lcom/google/gdata/util/ContentType;->getMediaType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    if-eqz v0, :cond_1

    .line 143
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "content"

    invoke-virtual {p1, v0, v1, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 144
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    invoke-interface {v0, p1, p2}, Lcom/google/gdata/data/Extension;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 145
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "content"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    if-eqz v0, :cond_2

    .line 147
    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "content"

    iget-object v3, p0, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/gdata/util/XmlBlob;->startElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 148
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "content"

    iget-object v2, p0, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    invoke-static {p1, v0, v1, v2}, Lcom/google/gdata/util/XmlBlob;->endElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Lcom/google/gdata/util/XmlBlob;)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->text:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 153
    iget-object v6, p0, Lcom/google/gdata/data/OtherContent;->text:Ljava/lang/String;

    .line 154
    .local v6, "value":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->lang:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 155
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "xml:lang"

    iget-object v2, p0, Lcom/google/gdata/data/OtherContent;->lang:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_3
    :goto_1
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "content"

    invoke-virtual {p1, v0, v1, v4, v6}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->bytes:[B

    if-eqz v0, :cond_5

    .line 158
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->bytes:[B

    invoke-static {v0}, Lcom/google/gdata/util/common/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    .line 159
    .restart local v6    # "value":Ljava/lang/String;
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->lang:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 160
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "xml:lang"

    iget-object v2, p0, Lcom/google/gdata/data/OtherContent;->lang:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 163
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "value":Ljava/lang/String;
    goto :goto_1
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/gdata/data/OtherContent;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 186
    sget-object v0, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "description"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/gdata/data/OtherContent;->text:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/OtherContent;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->bytes:[B

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Lcom/google/gdata/util/ContentType;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->mimeType:Lcom/google/gdata/util/ContentType;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    if-eqz v0, :cond_1

    .line 47
    :cond_0
    const/4 v0, 0x5

    .line 51
    :goto_0
    return v0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->text:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 49
    const/4 v0, 0x4

    goto :goto_0

    .line 51
    :cond_2
    const/4 v0, 0x6

    goto :goto_0
.end method

.method public getXml()Lcom/google/gdata/util/XmlBlob;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    return-object v0
.end method

.method public getXmlContent()Lcom/google/gdata/data/Extension;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    return-object v0
.end method

.method public setBytes([B)V
    .locals 1
    .param p1, "v"    # [B

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    .line 116
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    .line 117
    iput-object p1, p0, Lcom/google/gdata/data/OtherContent;->bytes:[B

    .line 118
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->text:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/gdata/data/OtherContent;->lang:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Lcom/google/gdata/util/ContentType;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/util/ContentType;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/gdata/data/OtherContent;->mimeType:Lcom/google/gdata/util/ContentType;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    .line 104
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    .line 105
    iput-object p1, p0, Lcom/google/gdata/data/OtherContent;->text:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->bytes:[B

    .line 107
    return-void
.end method

.method public setXml(Lcom/google/gdata/util/XmlBlob;)V
    .locals 1
    .param p1, "v"    # Lcom/google/gdata/util/XmlBlob;

    .prologue
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    .line 92
    iput-object p1, p0, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    .line 93
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->text:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->bytes:[B

    .line 95
    return-void
.end method

.method public setXmlContent(Lcom/google/gdata/data/Extension;)V
    .locals 1
    .param p1, "extension"    # Lcom/google/gdata/data/Extension;

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-object p1, p0, Lcom/google/gdata/data/OtherContent;->ext:Lcom/google/gdata/data/Extension;

    .line 80
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->xml:Lcom/google/gdata/util/XmlBlob;

    .line 81
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->text:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/google/gdata/data/OtherContent;->bytes:[B

    .line 83
    return-void
.end method
