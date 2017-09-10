.class public Lcom/google/gdata/data/Link;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Link.java"

# interfaces
.implements Lcom/google/gdata/data/ILink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/Link$AtomHandler;
    }
.end annotation


# instance fields
.field protected content:Lcom/google/gdata/data/Content;

.field protected etag:Ljava/lang/String;

.field protected href:Ljava/lang/String;

.field protected hrefLang:Ljava/lang/String;

.field protected length:J

.field protected rel:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field protected titleLang:Ljava/lang/String;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/gdata/data/Link;->length:J

    .line 88
    iput-object v2, p0, Lcom/google/gdata/data/Link;->content:Lcom/google/gdata/data/Content;

    .line 93
    iput-object v2, p0, Lcom/google/gdata/data/Link;->etag:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rel"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "href"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 83
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/gdata/data/Link;->length:J

    .line 88
    iput-object v2, p0, Lcom/google/gdata/data/Link;->content:Lcom/google/gdata/data/Content;

    .line 93
    iput-object v2, p0, Lcom/google/gdata/data/Link;->etag:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/google/gdata/data/Link;->type:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/Link;->setHref(Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/Link;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 120
    return-void
.end method

.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v5, "nsDecls":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlNamespace;>;"
    iget-object v0, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "rel"

    iget-object v2, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/Link;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 145
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "type"

    iget-object v2, p0, Lcom/google/gdata/data/Link;->type:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 149
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "href"

    iget-object v2, p0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/google/gdata/data/Link;->hrefLang:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 153
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "hreflang"

    iget-object v2, p0, Lcom/google/gdata/data/Link;->hrefLang:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/Link;->title:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 157
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "title"

    iget-object v2, p0, Lcom/google/gdata/data/Link;->title:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_4
    iget-object v0, p0, Lcom/google/gdata/data/Link;->titleLang:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 161
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "xml:lang"

    iget-object v2, p0, Lcom/google/gdata/data/Link;->titleLang:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_5
    iget-wide v0, p0, Lcom/google/gdata/data/Link;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 165
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "length"

    iget-wide v2, p0, Lcom/google/gdata/data/Link;->length:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/google/gdata/data/Link;->etag:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 169
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "gd"

    const-string v2, "etag"

    iget-object v3, p0, Lcom/google/gdata/data/Link;->etag:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_7
    sget-object v2, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "link"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/Link;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 175
    iget-object v0, p0, Lcom/google/gdata/data/Link;->content:Lcom/google/gdata/data/Content;

    if-eqz v0, :cond_8

    .line 176
    iget-object v0, p0, Lcom/google/gdata/data/Link;->content:Lcom/google/gdata/data/Content;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/Content;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 180
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/Link;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 182
    sget-object v0, Lcom/google/gdata/util/Namespaces;->atomNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "link"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public generateRss(Lcom/google/gdata/util/common/xml/XmlWriter;)V
    .locals 7
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .local v0, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v1, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    const-string v2, "enclosure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    iget-object v1, p0, Lcom/google/gdata/data/Link;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 201
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "type"

    iget-object v3, p0, Lcom/google/gdata/data/Link;->type:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 205
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "url"

    iget-object v3, p0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    iget-wide v2, p0, Lcom/google/gdata/data/Link;->length:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 209
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "length"

    iget-wide v4, p0, Lcom/google/gdata/data/Link;->length:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "enclosure"

    invoke-virtual {p1, v1, v2, v0, v6}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 225
    :cond_3
    :goto_0
    return-void

    .line 214
    :cond_4
    const-string v1, "comments"

    iget-object v2, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 215
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "comments"

    iget-object v3, p0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v6, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_5
    const-string v1, "alternate"

    iget-object v2, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 217
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "link"

    iget-object v3, p0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v6, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_6
    const-string v1, "via"

    iget-object v2, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 221
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "url"

    iget-object v3, p0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v1, Lcom/google/gdata/util/Namespaces;->rssNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "source"

    invoke-virtual {p1, v1, v2, v0, v6}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContent()Lcom/google/gdata/data/Content;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gdata/data/Link;->content:Lcom/google/gdata/data/Content;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/gdata/data/Link;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 114
    new-instance v0, Lcom/google/gdata/data/Link$AtomHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/Link$AtomHandler;-><init>(Lcom/google/gdata/data/Link;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getHrefLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/gdata/data/Link;->hrefLang:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/google/gdata/data/Link;->length:J

    return-wide v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "alternate"

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/Link;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/gdata/data/Link;->titleLang:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/gdata/data/Link;->type:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "relToMatch"    # Ljava/lang/String;
    .param p2, "typeToMatch"    # Ljava/lang/String;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/gdata/data/Link;->getRel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/gdata/data/Link;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Lcom/google/gdata/data/Content;)V
    .locals 0
    .param p1, "c"    # Lcom/google/gdata/data/Content;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/gdata/data/Link;->content:Lcom/google/gdata/data/Content;

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/gdata/data/Link;->etag:Ljava/lang/String;

    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/gdata/data/Link;->href:Ljava/lang/String;

    return-void
.end method

.method public setHrefLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/gdata/data/Link;->hrefLang:Ljava/lang/String;

    return-void
.end method

.method public setLength(J)V
    .locals 1
    .param p1, "v"    # J

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/google/gdata/data/Link;->length:J

    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/gdata/data/Link;->rel:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/gdata/data/Link;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitleLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/gdata/data/Link;->titleLang:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/gdata/data/Link;->type:Ljava/lang/String;

    return-void
.end method
